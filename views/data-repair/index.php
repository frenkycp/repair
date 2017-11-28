<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\grid\GridView;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use app\models\RepairTime;
use app\models\RepairStatus;


/**
* @var yii\web\View $this
* @var yii\data\ActiveDataProvider $dataProvider
* @var app\models\search\DataRepairSearch $searchModel
*/

$this->title = 'Data Repairs';
$this->params['breadcrumbs'][] = $this->title;

$colWidth = ["75px", "100px", "150px", "200px"];

$columns = [
    [
        'class' => 'yii\grid\ActionColumn',
        'template' => $template,
        'buttons' => [
            'urgent' => function ($url, $model, $key) {
                return strtolower($model->status) == 'open' && !(in_array(strtolower(Yii::$app->user->identity->role->name), ['guest'])) ? Html::a('<span class="glyphicon glyphicon-refresh"></span>',
                    ['urgent', 'id'=>$model->id],
                    [
                                    'title'=>'Change Priority',
                                    'data-confirm' => Yii::t('yii', 'Are you sure you want to change the priority of this item?'),
                    ]
                ) : '';
            },
            'expe-in' => function ($url, $model, $key) {
            return $model->getRepairExpes()->one() == NULL ? Html::a('<span class="glyphicon glyphicon-import"></span>',
                ['repair-expe/expe-in', 'repair_id'=>$model->id],
                [
                    'title'=>'Transfer to Ex-PE',
                    'data-confirm' => Yii::t('yii', 'Are you sure to transfer this part to Ex-PE?'),
                ]
                ) : '<span class="glyphicon glyphicon-import" style="color: rgba(60, 141, 188, 0.48);"></span>';
            },
        ],
	'urlCreator' => function($action, $model, $key, $index) {
            // using the column name as key, not mapping to 'id' like the standard generator
            $params = is_array($key) ? $key : [$model->primaryKey()[0] => (string) $key];
            $params[0] = \Yii::$app->controller->id ? \Yii::$app->controller->id . '/' . $action : $action;
            return Url::toRoute($params);
        },
        'contentOptions' => ['nowrap'=>true]
    ], 
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'no',
        'value' => 'no',
        'noWrap' => true,
        'headerOptions' => ['class' => 'text-center', 'style' => 'min-width: ' . $colWidth[0]],
        //'width' => '100px',
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'pic_prod',
        'value' => 'pic_prod',
                        'hidden' => true,
        'noWrap' => true,
        'width' => '100px',
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'pic_pe',
        'value' => 'pic_pe',
                        'hidden' => true,
        'noWrap' => true,
        'width' => '100px',
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'format' => ['date', 'php:d-M-Y'],
        'attribute' => 'in_date',
        'value' => 'in_date',
        'filterType' => GridView::FILTER_DATE,
        'filterWidgetOptions' => $filterOptions,
        'noWrap' => true,
        'headerOptions' => ['class' => 'text-center', 'style' => 'min-width: ' . $colWidth[1]],
    ],
    /* [
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
            'enableSorting' => true,
    ], */
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'priority',
        'format' => 'raw',
        'filter' => [1 => 'URGENT', 2 => 'NORMAL'],
        'value' => function ($model){
                return $model->priority == 1 ? '<div class="bg-red" style="width: 100%;">URGENT</div>' : '<div class="bg-green" style="width: 100%;">NORMAL</div>';
        },
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[1]],
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'model',
        'filterType' => GridView::FILTER_SELECT2,
        'filterWidgetOptions' => [
            'data' => $data_model,
            'options' => ['placeholder' => 'Model'],
            'pluginOptions' => ['allowClear' => true],
        ],
        'value' => 'model',
        'noWrap' => true,
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[2]],
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'dest',
        'value' => 'dest',
        'noWrap' => true,
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[0]],
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'pcb',
        'filterType' => GridView::FILTER_SELECT2,
        'filterWidgetOptions' => [
                        'data' => $data_pcb,
                        'options' => ['placeholder' => 'PCB'],
                        'pluginOptions' => ['allowClear' => true],
        ],
        'value' => 'pcb',
        'noWrap' => true,
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[1]],
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'defect',
        'value' => 'defect',
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[2]],
        //'noWrap' => true,
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'detail',
        'value' => 'detail',
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[1]],
        //'noWrap' => true,
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'cause',
        'value' => 'cause',
        'hidden' => true,
        //'noWrap' => true,
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'action',
        'value' => 'action',
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[1]],
        //'noWrap' => true,
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'location',
        'value' => 'location',
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[1]],
            //'hidden' => true,
        //'noWrap' => true,
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'format' => 'raw',
        'attribute' => 'repairStatusId',
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[0]],
        'value' => function ($model){
            if(strtoupper($model->status) == 'OPEN')
            {
                    $bg_class = 'bg-red';
            }else if(strtoupper($model->status) == 'RETURN'){
                    $bg_class = 'bg-teal';
            }else if(strtoupper($model->status) == 'SCRAP'){
                    $bg_class = 'bg-yellow';
            }else if($model->status == 'OK'){
                    $bg_class = 'bg-green';
            }
            return '<div class="' . $bg_class . '">' . $model->status . '</div>';
        },
        'filter' => $filter_status
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'out_date',
        'format' => ['date', 'php:d-M-Y'],
        //'value' => 'out_date',
        'value' => function($model){
            return $model->out_date == '0000-00-00' ? NULL : $model->out_date;
        },
        'filterType' => GridView::FILTER_DATE,
        'filterWidgetOptions' => $filterOptions,
        'noWrap' => true,
        'headerOptions' => ['style' => 'min-width: ' . $colWidth[1]],
    ],
    [
        'class' => '\kartik\grid\DataColumn',
        'hAlign' => 'center',
        'vAlign' => 'middle',
        'attribute' => 'remark',
        'value' => 'remark',
        'hidden' => true,
        //'noWrap' => true,
    ],
];
?>

<div class="giiant-crud data-repair-index">

    <?php      //echo $this->render('_search', ['model' =>$searchModel]);
	$filter_status = ArrayHelper::map(RepairStatus::find()->all(), 'id', 'name');
	
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
                		'pjax'=>true,
                'pager'        => [
                    'class'          => yii\widgets\LinkPager::className(),
                    'firstPageLabel' => 'First',
                    'lastPageLabel'  => 'Last'                ],
                'filterModel' => $searchModel,
                'tableOptions' => ['class' => 'table table-striped table-bordered table-hover'],
                'headerRowOptions' => ['class'=>'center-text'],
                		'exportConfig' => [
                				
                				GridView::EXCEL => [
                						'filename' => 'Data Repair ' . date('Y-m-d H:i:s'),
                				],
                		],
                'columns' => $columns,
            ]); ?>
                <!-- </div>  -->

            <!-- </div>

        </div>  -->

        <?php \yii\widgets\Pjax::end() ?>

    
</div>
