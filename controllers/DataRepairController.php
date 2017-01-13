<?php

namespace app\controllers;

use app\models\DataRepair;
use app\models\search\DataRepairSearch;
use yii\web\Controller;
use yii\web\HttpException;
use yii\helpers\Url;
use yii\filters\AccessControl;
use dmstr\bootstrap\Tabs;
use app\models\SectionCount;
use app\models\RepairTime;
use yii\helpers\ArrayHelper;

/**
 * DataRepairController implements the CRUD actions for DataRepair model.
 */
class DataRepairController extends Controller
{
    /**
     * @var boolean whether to enable CSRF validation for the actions in this controller.
     * CSRF validation is enabled only when both this property and [[Request::enableCsrfValidation]] are true.
     */
    public $enableCsrfValidation = false;
    
    public function behaviors()
    {
    	//apply role_action table for privilege (doesn't apply to super admin)
    	return \app\models\Action::getAccess($this->id);
    }
    
    public function getRepairTimeId($sp_model, $sp_pcb)
    {
    	$repairtime = RepairTime::find()->where(['model' => $sp_model, 'pcb' => $sp_pcb])->one();
    	return $repairtime->id_time;
    }

	
	/**
	 * Lists all DataRepair models.
	 * @return mixed
	 */
	public function actionIndex()
	{
		//different template for different user
		$roleid = \Yii::$app->user->identity->role_id;
		if($roleid == 3) //Guest
		{
			$template = '{view}';
		}else if($roleid == 4 || $roleid == 5){ //Admin FA or PCB
			$template = '{view} {update}';
		}else if($roleid ==14 || $roleid == 2){ //Admin or Superadmin
			$template = '{view} {update} {delete}';
		}
		
		//for datepicker filter
		$filterOptions = [
				'pickerButton' => false,
				'readonly' => true,
				'size' => 'sm',
				'pluginOptions' => [
						'autoclose'=>true,
						'format' => 'yyyy-mm-dd',
						'todayHighlight' => true,
				],
		];
		
		$data_model = ArrayHelper::map(RepairTime::find()->select('model')->distinct(true)->orderBy('model')->all(), 'model', 'model');
		$data_pcb = ArrayHelper::map(RepairTime::find()->select('pcb')->distinct(true)->orderBy('pcb')->all(), 'pcb', 'pcb');
		
		$searchModel  = new DataRepairSearch;
		$dataProvider = $searchModel->search($_GET);

		Tabs::clearLocalStorage();

        Url::remember();
        \Yii::$app->session['__crudReturnUrl'] = null;

		return $this->render('index', [
			'dataProvider' => $dataProvider,
			'searchModel' => $searchModel,
			'template' => $template,
			'filterOptions' => $filterOptions,
			'data_model' => $data_model,
			'data_pcb' => $data_pcb,
		]);
	}
	
	public function actionEstimatedDate($model, $pcb)
	{
		$data_repair = DataRepair::find()->where(['status' => 'OPEN'])->orderBy(['est_finish_date' => SORT_DESC])->one();
		$repair_time = RepairTime::find()->where(['model' => $model, 'pcb' => $pcb])->one();
		if(empty($repair_time))
		{
			$day_add = 0;
		}else{
			$day_add = $repair_time->est_time < 1 ? 1 : $repair_time->est_time;
		}
		
		$last_date = empty($data_repair) ? new \DateTime(date('Y-m-d')) : new \DateTime($data_repair->est_finish_date);
		$last_date->modify('+' . $day_add . ' day');
		echo $last_date->format('Y-m-d');
		//echo date('Y-m-d');
	}

	/**
	 * Displays a single DataRepair model.
	 * @param integer $id
     *
	 * @return mixed
	 */
	public function actionView($id)
	{
        \Yii::$app->session['__crudReturnUrl'] = Url::previous();
        Url::remember();
        Tabs::rememberActiveState();

        return $this->render('view', [
			'model' => $this->findModel($id),
		]);
	}
	
	public function actionLists($id)
	{
		$pcb = RepairTime::find()->where(['model' => $id])->orderBy('pcb')->all();
		echo "<option value>Select a PCB ...</option>";
		foreach ($pcb as $item)
		{
			echo "<option value='".$item->pcb."'>".$item->pcb."</option>";
		}
	}

	/**
	 * Creates a new DataRepair model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 * @return mixed
	 */
	public function actionCreate()
	{
		$model = new DataRepair;
		if(!$model->load($_POST))
		{
			$model->in_date = date('Y-m-d');
		}else{
			$model->repair_time_id = self::getRepairTimeId($model->model, $model->pcb);
		}
		
		if(\Yii::$app->user->identity->role->name == 'Admin FA')
		{
			$section_count = SectionCount::find()->where(['section' => 'FA'])->one();
			$new_no = 'F' . str_pad($section_count->total_count+1, 4, '0', STR_PAD_LEFT);
			$model->no = $new_no;
			$model->section = "FA";
		}else if(\Yii::$app->user->identity->role->name == 'Admin PCB'){
			$section_count = SectionCount::find()->where(['section' => 'PCB'])->one();
			$new_no = 'P' . str_pad($section_count->total_count+1, 4, '0', STR_PAD_LEFT);
			$model->no = $new_no;
			$model->section = "PCB";
		}
		$model->status = 'OPEN';
		$model->priority = 2;

		try {
            if ($model->load($_POST) && $model->save()) {
            	$section_count->total_count = $section_count->total_count + 1;
            	$section_count->save();
                return $this->redirect(Url::previous());
            } elseif (!\Yii::$app->request->isPost) {
                $model->load($_GET);
            }
        } catch (\Exception $e) {
            $msg = (isset($e->errorInfo[2]))?$e->errorInfo[2]:$e->getMessage();
            $model->addError('_exception', $msg);
		}
        return $this->render('create', ['model' => $model]);
	}

	/**
	 * Updates an existing DataRepair model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id
	 * @return mixed
	 */
	public function actionUpdate($id)
	{
		$model = $this->findModel($id);
		$model->repair_time_id = self::getRepairTimeId($model->model, $model->pcb);

		if ($model->load($_POST)) {
			
			if($model->priority == 1 && $model->oldAttributes['priority'] == 2)
			{
				//$model->est_finish_date = NULL;
				$days = RepairTime::find()->select('est_time')->where(['model' => $model->model, 'pcb' => $model->pcb])->one();
				$dataOpen = DataRepair::find()->where(['status' => 'OPEN', 'priority' => 2])->all();
				
				if(!empty($dataOpen)){
					
					foreach ($dataOpen as $dataRepair)
					{
						$est = $dataRepair->est_finish_date;
						if($est == NULL)
						{
							$est = date('Y-m-d');
						}
						$dataRepair->est_finish_date = date('Y-m-d', strtotime($est. ' + ' . $days->est_time . ' days'));
						$dataRepair->save();
					}
				}
			}
			if($model->save())
			{
				return $this->redirect(Url::previous());
			}
			else
			{
				return $model->errors;
			}
            
		} else {
			return $this->render('update', [
				'model' => $model,
			]);
		}
	}

	/**
	 * Deletes an existing DataRepair model.
	 * If deletion is successful, the browser will be redirected to the 'index' page.
	 * @param integer $id
	 * @return mixed
	 */
	public function actionDelete($id)
	{
        try {
        	$model = $this->findModel($id);
        	$model->flag = 0;
        	$model->save();
        } catch (\Exception $e) {
            $msg = (isset($e->errorInfo[2]))?$e->errorInfo[2]:$e->getMessage();
            \Yii::$app->getSession()->setFlash('error', $msg);
            return $this->redirect(Url::previous());
        }

        // TODO: improve detection
        $isPivot = strstr('$id',',');
        if ($isPivot == true) {
            return $this->redirect(Url::previous());
        } elseif (isset(\Yii::$app->session['__crudReturnUrl']) && \Yii::$app->session['__crudReturnUrl'] != '/') {
			Url::remember(null);
			$url = \Yii::$app->session['__crudReturnUrl'];
			\Yii::$app->session['__crudReturnUrl'] = null;

			return $this->redirect($url);
        } else {
            return $this->redirect(['index']);
        }
	}

	/**
	 * Finds the DataRepair model based on its primary key value.
	 * If the model is not found, a 404 HTTP exception will be thrown.
	 * @param integer $id
	 * @return DataRepair the loaded model
	 * @throws HttpException if the model cannot be found
	 */
	protected function findModel($id)
	{
		if (($model = DataRepair::findOne($id)) !== null) {
			return $model;
		} else {
			throw new HttpException(404, 'The requested page does not exist.');
		}
	}
}
