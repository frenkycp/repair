<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\grid\GridView;

/**
* @var yii\web\View $this
* @var yii\data\ActiveDataProvider $dataProvider
* @var app\models\search\RepairTimeSearch $searchModel
*/

$this->title = 'Repair Times';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="giiant-crud repair-time-index">

    <?php //     echo $this->render('_search', ['model' =>$searchModel]);
    ?>

    <div class="clearfix">
        <p class="pull-left">
            <?= Yii::$app->user->identity->username == 'guest' ? '' : Html::a('<span class="glyphicon glyphicon-plus"></span> ' . 'New', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

        <div class="pull-right">

                        
            <?= '';
            if(Yii::$app->user->identity->role_id == 3) //Guest
            {
            	$template = '{view}';
            }else if(Yii::$app->user->identity->role_id == 4 || Yii::$app->user->identity->role_id == 5){ //Admin FA or PCB
            	$template = '{view} {update}';
            }else if(Yii::$app->user->identity->role_id ==14 || Yii::$app->user->identity->role_id == 2){ //Admin or Superadmin
            	$template = '{view} {update} {delete}';
            }
            /* \yii\bootstrap\ButtonDropdown::widget(
                [
                    'id'       => 'giiant-relations',
                    'encodeLabel' => false,
                    'label'    => '<span class="glyphicon glyphicon-paperclip"></span> ' . 'Relations',
                    'dropdown' => [
                        'options'      => [
                            'class' => 'dropdown-menu-right'
                        ],
                        'encodeLabels' => false,
                        'items'        => []
                    ],
                    'options' => [
                        'class' => 'btn-default'
                    ]
                ]
            ); */
            ?>        </div>
    </div>

    
        <?php \yii\widgets\Pjax::begin(['id'=>'pjax-main', 'enableReplaceState'=> false, 'linkSelector'=>'#pjax-main ul.pagination a, th a', 'clientOptions' => ['pjax:success'=>'function(){alert("yo")}']]) ?>

        <!-- <div class="panel panel-default">  -->
            <!-- <div class="panel-heading">
                <h2>
                    <i><?= ''; //Repair Times' ?></i>
                </h2>
            </div>  -->

            <!-- <div class="panel-body">  -->

                <div class="table-responsive">
                <?= GridView::widget([
                'layout' => '{summary}{pager}{items}{pager}',
                'panel' => [
             			'type' => 'primary',
                		'heading' => '',
                		'before' => ' ',
                		'after' => false,
                ],
                'dataProvider' => $dataProvider,
                'pager'        => [
                    'class'          => yii\widgets\LinkPager::className(),
                    'firstPageLabel' => 'First',
                    'lastPageLabel'  => 'Last'                ],
                'filterModel' => $searchModel,
                'tableOptions' => ['class' => 'table table-striped table-bordered table-hover'],
                'headerRowOptions' => ['class'=>'x'],
                'columns' => [

                        [
            'class' => 'yii\grid\ActionColumn',
                        		'template' => $template,
            'urlCreator' => function($action, $model, $key, $index) {
                // using the column name as key, not mapping to 'id' like the standard generator
                $params = is_array($key) ? $key : [$model->primaryKey()[0] => (string) $key];
                $params[0] = \Yii::$app->controller->id ? \Yii::$app->controller->id . '/' . $action : $action;
                return Url::toRoute($params);
            },
            'contentOptions' => ['nowrap'=>'nowrap']
        ],
			//'model',
			[
					'attribute' => 'model',
					'value' => 'model',
					'hAlign' => 'center',
					'filterType' => GridView::FILTER_SELECT2,
					'filterWidgetOptions' => [
							'data' => $data_model,
							'options' => ['placeholder' => 'Model'],
							'pluginOptions' => ['allowClear' => true],
					],
					'noWrap' => true,
            ],
			//'pcb',
			[
			'attribute' => 'pcb',
			'value' => 'pcb',
			'hAlign' => 'center',
			'filterType' => GridView::FILTER_SELECT2,
			'filterWidgetOptions' => [
					'data' => $data_pcb,
					'options' => ['placeholder' => 'PCB'],
					'pluginOptions' => ['allowClear' => true],
			],
			'noWrap' => true,
			],
			//'est_time',
			[
				'attribute' => 'est_time',
				'value' => 'est_time',
				'hAlign' => 'center',
					'headerOptions' => ['width' => '100px'],
            ],
                ],
            ]); ?>
                </div>

            <!-- </div>  -->

        <!-- </div>  -->

        <?php \yii\widgets\Pjax::end() ?>

    
</div>
