<?php

namespace app\controllers;

use app\models\RepairTime;
use app\models\search\RepairTimeSearch;
use yii\web\Controller;
use yii\web\HttpException;
use yii\helpers\Url;
use dmstr\bootstrap\Tabs;
use yii\helpers\ArrayHelper;

/**
 * RepairTimeController implements the CRUD actions for RepairTime model.
 */
class RepairTimeController extends Controller
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
	
	/**
	 * Lists all RepairTime models.
	 * @return mixed
	 */
	public function actionIndex()
	{
		$searchModel  = new RepairTimeSearch;
		$dataProvider = $searchModel->search($_GET);
		
		$data_model = ArrayHelper::map(RepairTime::find()->select('model')->distinct(true)->orderBy('model')->all(), 'model', 'model');
		$data_pcb = ArrayHelper::map(RepairTime::find()->select('pcb')->distinct(true)->orderBy('pcb')->all(), 'pcb', 'pcb');

		Tabs::clearLocalStorage();

        Url::remember();
        \Yii::$app->session['__crudReturnUrl'] = null;

		return $this->render('index', [
			'dataProvider' => $dataProvider,
			'searchModel' => $searchModel,
			'data_model' => $data_model,
			'data_pcb' => $data_pcb,
		]);
	}

	/**
	 * Displays a single RepairTime model.
	 * @param integer $id_time
     *
	 * @return mixed
	 */
	public function actionView($id_time)
	{
        \Yii::$app->session['__crudReturnUrl'] = Url::previous();
        Url::remember();
        Tabs::rememberActiveState();

        return $this->render('view', [
			'model' => $this->findModel($id_time),
		]);
	}

	/**
	 * Creates a new RepairTime model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 * @return mixed
	 */
	public function actionCreate()
	{
		$model = new RepairTime;

		try {
            if ($model->load($_POST) && $model->save()) {
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
	 * Updates an existing RepairTime model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id_time
	 * @return mixed
	 */
	public function actionUpdate($id_time)
	{
		$model = $this->findModel($id_time);

		if ($model->load($_POST) && $model->save()) {
            return $this->redirect(Url::previous());
		} else {
			return $this->render('update', [
				'model' => $model,
			]);
		}
	}

	/**
	 * Deletes an existing RepairTime model.
	 * If deletion is successful, the browser will be redirected to the 'index' page.
	 * @param integer $id_time
	 * @return mixed
	 */
	public function actionDelete($id_time)
	{
        try {
            $model = $this->findModel($id_time);
            $model->flag = 0;
            $model->save();
        } catch (\Exception $e) {
            $msg = (isset($e->errorInfo[2]))?$e->errorInfo[2]:$e->getMessage();
            \Yii::$app->getSession()->setFlash('error', $msg);
            return $this->redirect(Url::previous());
        }

        // TODO: improve detection
        $isPivot = strstr('$id_time',',');
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
	 * Finds the RepairTime model based on its primary key value.
	 * If the model is not found, a 404 HTTP exception will be thrown.
	 * @param integer $id_time
	 * @return RepairTime the loaded model
	 * @throws HttpException if the model cannot be found
	 */
	protected function findModel($id_time)
	{
		if (($model = RepairTime::findOne($id_time)) !== null) {
			return $model;
		} else {
			throw new HttpException(404, 'The requested page does not exist.');
		}
	}
}
