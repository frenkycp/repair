<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\grid\GridView;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use app\models\RepairTime;


/**
* @var yii\web\View $this
* @var yii\data\ActiveDataProvider $dataProvider
* @var app\models\search\DataRepairSearch $searchModel
*/

$this->title = 'Data Repairs';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="giiant-crud data-repair-index">

    <?php //     echo $this->render('_search', ['model' =>$searchModel]);
    ?>

    <div class="clearfix">
        <p class="pull-left">
            <?= in_array(Yii::$app->user->identity->role_id, [2, 3]) ? '' : Html::a('<span class="glyphicon glyphicon-plus"></span> ' . 'New', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

        <div class="pull-right">

                        
            <?= '';
            
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

        <!-- <div class="panel panel-default">
            <div class="panel-heading">
                <h2>
                    <i><?= 'Data Repairs' ?></i>
                </h2>
            </div>

            <div class="panel-body">  -->

                <!-- <div class="table-responsive">  -->
                <?= GridView::widget([
                //'layout' => '{summary}{pager}{items}{pager}',
                		'panel' => [
                				'type' => 'primary',
                				'heading' => 'Data Repair',
                				'before' => ' ',
                				'after' => false,
                		],
                'dataProvider' => $dataProvider,
                'filterRowOptions'=>['class'=>'kartik-sheet-style'],
                'responsive' => true,
                'pager'        => [
                    'class'          => yii\widgets\LinkPager::className(),
                    'firstPageLabel' => 'First',
                    'lastPageLabel'  => 'Last'                ],
                'filterModel' => $searchModel,
                'tableOptions' => ['class' => 'table table-striped table-bordered table-hover'],
                'headerRowOptions' => ['class'=>'center-text'],
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
            				'contentOptions' => ['nowrap'=>true]
        ],
			'no',
			//'pic_prod',
			//'pic_pe',
			[
				'class' => '\kartik\grid\DataColumn',
				'hAlign' => 'center',
				'format' => ['date', 'php:d-M-Y'],
				'attribute' => 'in_date',
				'value' => 'in_date',
				'filterType' => GridView::FILTER_DATE,
				'filterWidgetOptions' => $filterOptions,
				'noWrap' => true,
			],
			[
				'class' => '\kartik\grid\DataColumn',
				'hAlign' => 'center',
				'format' => ['date', 'php:d-M-Y'],
				'attribute' => 'est_finish_date',
				'value' => function ($model){
					return $model->est_finish_date;
				},
				'filterType' => GridView::FILTER_DATE,
				'filterWidgetOptions' => $filterOptions,
				'noWrap' => true,
			],
			//'section',
			[
					'class' => '\kartik\grid\DataColumn',
					'hAlign' => 'center',
					'attribute' => 'priority',
					'format' => 'raw',
					'filter' => [1 => 'URGENT', 2 => 'NORMAL'],
					//'filter' => Html::dropDownList('priority', null, [1 => 'URGENT', 2 => 'NORMAL'],['class'=>'form-control','prompt' => '']),
					/* 'filterType' => GridView::FILTER_SELECT2,
					'filterWidgetOptions' => [
							'data' => [1 => 'URGENT', 2 => 'NORMAL'],
							'options' => ['placeholder' => 'Priority'],
							'pluginOptions' => ['allowClear' => true],
            		], */
					'value' => function ($model){
						return $model->priority == 1 ? '<div class="bg-red">URGENT</div>' : '<div class="bg-green">NORMAL</div>';
            		},
            ],
            //'model',
            [
            	'class' => '\kartik\grid\DataColumn',
            	'hAlign' => 'center',
            	'attribute' => 'model',
            	'filterType' => GridView::FILTER_SELECT2,
            	'filterWidgetOptions' => [
            			'data' => $data_model,
            			'options' => ['placeholder' => 'Model'],
            			'pluginOptions' => ['allowClear' => true],
            	],
            	'value' => 'model',
            	'noWrap' => true,
            ],
            
            //'pcb',
            [
            	'class' => '\kartik\grid\DataColumn',
            	'hAlign' => 'center',
            	'attribute' => 'pcb',
            		'filterType' => GridView::FILTER_SELECT2,
            		'filterWidgetOptions' => [
            				'data' => $data_pcb,
            				'options' => ['placeholder' => 'PCB'],
            				'pluginOptions' => ['allowClear' => true],
            		],
            	'value' => 'pcb',
            	'noWrap' => true,
            ],
            'dest',
            //'defect',
            'detail:ntext',
            //'cause:ntext',
            'action',
            //'location',
            [
            	'class' => '\kartik\grid\DataColumn',
            	'hAlign' => 'center',
            	'format' => 'raw',
            	'attribute' => 'status',
            	'value' => function ($model){
            		if($model->status == 'OPEN')
            		{
            			$bg_class = 'bg-red';
            		}else if($model->status == 'Return'){
            			$bg_class = 'bg-teal';
            		}else if($model->status == 'Scrap'){
            			$bg_class = 'bg-yellow';
            		}else if($model->status == 'OK'){
            			$bg_class = 'bg-green';
            		}
            		return '<div class="' . $bg_class . '">' . $model->status . '</div>';
           		},
            	'filter' => [
            			'Open' => 'Open',
            			'Return' => 'Return',
            			'Scrap' => 'Scrap',
            			'OK' => 'OK'
            	]
            ],
            [
	            'class' => '\kartik\grid\DataColumn',
	            'hAlign' => 'center',
	            'attribute' => 'out_date',
            	'format' => ['date', 'php:d-M-Y'],
	            //'value' => 'out_date',
            	'value' => function($model){
            		return $model->out_date == '0000-00-00' ? NULL : $model->out_date;
            	},
            	'filterType' => GridView::FILTER_DATE,
            	'filterWidgetOptions' => $filterOptions,
	            'noWrap' => true,
            ],
			//'remark:ntext',
			/*'priority'*/
			/*'flag'*/
                ],
            ]); ?>
                <!-- </div>  -->

            <!-- </div>

        </div>  -->

        <?php \yii\widgets\Pjax::end() ?>

    
</div>
