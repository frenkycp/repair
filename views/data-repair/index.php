<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\grid\GridView;


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
            <?= Html::a('<span class="glyphicon glyphicon-plus"></span> ' . 'New', ['create'], ['class' => 'btn btn-success']) ?>
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
            'urlCreator' => function($action, $model, $key, $index) {
                // using the column name as key, not mapping to 'id' like the standard generator
                $params = is_array($key) ? $key : [$model->primaryKey()[0] => (string) $key];
                $params[0] = \Yii::$app->controller->id ? \Yii::$app->controller->id . '/' . $action : $action;
                return Url::toRoute($params);
            },
            'contentOptions' => ['nowrap'=>'nowrap']
        ],
			'no',
			//'pic_prod',
			//'pic_pe',
			[
				'class' => '\kartik\grid\DataColumn',
				'hAlign' => 'center',
				'attribute' => 'in_date',
				'value' => 'in_date',
				'noWrap' => true,
			],
			[
				'class' => '\kartik\grid\DataColumn',
				'hAlign' => 'center',
				'attribute' => 'est_finish_date',
				'value' => function ($model){
					return $model->est_finish_date;
				},
				'noWrap' => true,
			],
			'section',
			[
					'class' => '\kartik\grid\DataColumn',
					'hAlign' => 'center',
					'attribute' => 'priority',
					'format' => 'raw',
					'filterType' => GridView::FILTER_SELECT2,
					'filterWidgetOptions' => [
							'data' => [1 => 'URGENT', 2 => 'NORMAL'],
							'options' => ['placeholder' => 'PRIORITY'],
							'pluginOptions' => ['allowClear' => true],
            		],
					'value' => function ($model){
						return $model->priority == 1 ? '<p class="btn btn-danger">URGENT<p/>' : '<p class="btn btn-info">NORMAL<p/>';
            		},
            ],
            //'model',
            [
            	'class' => '\kartik\grid\DataColumn',
            	'hAlign' => 'center',
            	'attribute' => 'model',
            	'value' => 'model',
            	'noWrap' => true,
            ],
            'dest',
            //'pcb',
            [
            	'class' => '\kartik\grid\DataColumn',
            	'hAlign' => 'center',
            	'attribute' => 'pcb',
            	'value' => 'pcb',
            	'noWrap' => true,
            ],
            //'defect',
            'detail:ntext',
            'cause:ntext',
            'action',
            //'location',
            'status',
            [
	            'class' => '\kartik\grid\DataColumn',
	            'hAlign' => 'center',
	            'attribute' => 'out_date',
	            'value' => 'out_date',
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
