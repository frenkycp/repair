<?php

namespace app\controllers;

//use app\components\NodeLogger;
use app\components\RoleAccessBehaviour;
use app\models\Action;
use app\models\RegisterForm;
use app\models\User;
use Yii;
use yii\db\Expression;
use yii\web\Controller;
use app\models\LoginForm;
use app\models\ContactForm;
use yii\web\UploadedFile;
use app\models\DataRepair;
use app\models\RepairMonthlyView;

class SiteController extends Controller
{

    public function behaviors()
    {
        //NodeLogger::sendLog(Action::getAccess($this->id));
        //apply role_action table for privilege (doesn't apply to super admin)
        return Action::getAccess($this->id);
    }

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {
        $year = date('Y');
        $categories = [];

        if (\Yii::$app->request->get('year') !== null) {
            $year = \Yii::$app->request->get('year');
        }

    	$rep_open = DataRepair::find()->where(['flag' => 1, 'status' => 'OPEN', 'EXTRACT(YEAR FROM in_date)' => $year]);
    	$rep_return = DataRepair::find()->where(['flag' => 1, 'status' => 'Return', 'EXTRACT(YEAR FROM in_date)' => $year]);
    	$rep_scrap = DataRepair::find()->where(['flag' => 1, 'status' => ['Scrap', 'EX-PE'], 'EXTRACT(YEAR FROM in_date)' => $year]);
    	$rep_ok = DataRepair::find()->where(['flag' => 1, 'status' => 'OK', 'EXTRACT(YEAR FROM in_date)' => $year]);
    	
    	if(\Yii::$app->user->identity->role_id == 4) //admin FA
    	{
    		$rep_open->andFilterWhere(['section' => 'FA']);
    		$rep_return->andFilterWhere(['section' => 'FA']);
    		$rep_scrap->andFilterWhere(['section' => 'FA']);
    		$rep_ok->andFilterWhere(['section' => 'FA']);

            $tmp_db_repair = RepairMonthlyView::find()
            ->where([
                'year' => $year,
                'section' => 'FA',
            ])
            ->asArray()
            ->all();
    	}else if(\Yii::$app->user->identity->role_id == 5) //admin PCB
    	{
    		$rep_open->andFilterWhere(['section' => 'PCB']);
    		$rep_return->andFilterWhere(['section' => 'PCB']);
    		$rep_scrap->andFilterWhere(['section' => 'PCB']);
    		$rep_ok->andFilterWhere(['section' => 'PCB']);

            $tmp_db_repair = RepairMonthlyView::find()
            ->where([
                'year' => $year,
                'section' => 'PCB',
            ])
            ->asArray()
            ->all();
    	} else {
            $tmp_db_repair = RepairMonthlyView::find()
            ->select([
                'year',
                'period',
                'total_open' => 'SUM(total_open)',
                'total_return' => 'SUM(total_return)',
                'total_scrap' => 'SUM(total_scrap)',
                'total_ok' => 'SUM(total_ok)',
            ])
            ->where([
                'year' => $year
            ])
            ->groupBy('year, period')
            ->asArray()
            ->all();
        }
    	
        for ($i = 1; $i <= 12; $i++) {
            $tmp_month = str_pad($i, 2, '0', STR_PAD_LEFT);
            $period = $year . $tmp_month;
            $categories[] = $period;

            $total_open = null;
            $total_return = null;
            $total_scrap = null;
            $total_ok = null;
            foreach ($tmp_db_repair as $key => $value) {
                if ($value['period'] == $period) {
                    $total_open = (int)$value['total_open'] == 0 ? null : (int)$value['total_open'];
                    $total_return = (int)$value['total_return'] == 0 ? null : (int)$value['total_return'];
                    $total_scrap = (int)$value['total_scrap'] == 0 ? null : (int)$value['total_scrap'];
                    $total_ok = (int)$value['total_ok'] == 0 ? null : (int)$value['total_ok'];
                }
            }
            $data['open'][] = [
                'y' => $total_open,
            ];
            $data['return'][] = [
                'y' => $total_return,
            ];
            $data['scrap'][] = [
                'y' => $total_scrap,
            ];
            $data['ok'][] = [
                'y' => $total_ok,
            ];
        }

        $final_data = [
            [
                'name' => 'OPEN',
                'data' => $data['open'],
                'color' => '#dd4b39',
            ],
            [
                'name' => 'RETURN',
                'data' => $data['return'],
                'color' => '#39cccc',
            ],
            [
                'name' => 'SCRAP',
                'data' => $data['scrap'],
                'color' => '#f39c12',
            ],
            [
                'name' => 'OK',
                'data' => $data['ok'],
                'color' => '#00a65a',
            ],
        ];
    	
        return $this->render('index', [
        		'rep_open' => $rep_open->count(),
        		'rep_return' => $rep_return->count(),
        		'rep_scrap' => $rep_scrap->count(),
        		'rep_ok' => $rep_ok->count(),
                'data' => $final_data,
                'categories' => $categories,
                'year' => $year
        ]);
    }

    public function actionProfile()
    {
        $model = User::find()->where(["id"=>Yii::$app->user->id])->one();
        $oldMd5Password = $model->password;
        $oldPhotoUrl = $model->photo_url;

        $model->password = "";

        if ($model->load($_POST)){
            //password
            if($model->password != ""){
                $model->password = md5($model->password);
            }else{
                $model->password = $oldMd5Password;
            }

            # get the uploaded file instance
            $image = UploadedFile::getInstance($model, 'photo_url');
            if ($image != NULL) {
                # store the source file name
                $model->photo_url = $image->name;
                $arr = explode(".", $image->name);
                $extension = end($arr);

                # generate a unique file name
                $model->photo_url = Yii::$app->security->generateRandomString() . ".{$extension}";

                # the path to save file
                $path = Yii::getAlias("@app/web/uploads/") . $model->photo_url;
                $image->saveAs($path);
            }else{
                $model->photo_url = $oldPhotoUrl;
            }

            if($model->save()){
                Yii::$app->session->addFlash("success", "Profile successfully updated.");
            }else{
                Yii::$app->session->addFlash("danger", "Profile cannot updated.");
            }
            return $this->redirect(["profile"]);
        }
        return $this->render('profile', [
            'model' => $model,
        ]);
    }

    public function actionRegister()
    {
        $this->layout = "main-login";

        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new RegisterForm();
        if ($model->load(Yii::$app->request->post()) && $model->register()) {
            Yii::$app->session->addFlash("success", "Register success, please login");
            return $this->redirect(["site/login"]);
        }
        return $this->render('register', [
            'model' => $model,
        ]);
    }

    public function actionLogin()
    {
        $this->layout = "main-login";

        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {

            //log last login column
            $user = Yii::$app->user->identity;
            $user->last_login = new Expression("NOW()");
            $user->save();

            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    public function actionLogout()
    {
        //log last login column
        $user = Yii::$app->user->identity;
        $user->last_logout = new Expression("NOW()");
        $user->save();

        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    public function actionAbout()
    {
        return $this->render('about');
    }
}
