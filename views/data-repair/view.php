<?php

use dmstr\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use yii\widgets\DetailView;
use yii\widgets\Pjax;
use dmstr\bootstrap\Tabs;

/**
* @var yii\web\View $this
* @var app\models\DataRepair $model
*/

$this->title = 'Data Repair ' . $model->no;
$this->params['breadcrumbs'][] = ['label' => 'Data Repairs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => (string)$model->no, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'View';
?>
<div class="giiant-crud data-repair-view">

    <!-- menu buttons -->
    <p class='pull-left'>
        <?= Html::a('<span class="glyphicon glyphicon-pencil"></span> ' . 'Edit', ['update', 'id' => $model->id],['class' => 'btn btn-info']) ?>
        <?= Html::a('<span class="glyphicon glyphicon-plus"></span> ' . 'New', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <p class="pull-right">
        <?= Html::a('<span class="glyphicon glyphicon-list"></span> ' . 'List DataRepairs', ['index'], ['class'=>'btn btn-default']) ?>
    </p>

    <div class="clearfix"></div>

    <!-- flash message -->
    <?php if (\Yii::$app->session->getFlash('deleteError') !== null) : ?>
        <span class="alert alert-info alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span></button>
            <?= \Yii::$app->session->getFlash('deleteError') ?>
        </span>
    <?php endif; ?>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h2>
                <?= $model->no ?>            </h2>
        </div>

        <div class="panel-body">



    <?php $this->beginBlock('app\models\DataRepair'); ?>
	
	<div class="row">
		<div class="col-md-6">
			<?= DetailView::widget([
    'model' => $model,
	'template' => '<tr><th style="width : 30%;">{label}</th><td>{value}</td></tr>',
    'attributes' => [
            //'id',
        'no',
        'section',
    	'priorityStr',
        'pic_prod',
        'pic_pe',
        'in_date',
        'model',
    	'pcb',
    	'est_finish_date',
    	'out_date',
        'dest',
        'defect',
        'detail:ntext',
        'cause:ntext',
        'action:ntext',
        'location',
        'status',
        'remark:ntext',
        //'flag',
    ],
    ]); ?>
		</div>
		<div class="col-md-6">
		
		</div>
	</div>

    

    <hr/>

    <?= Html::a('<span class="glyphicon glyphicon-trash"></span> ' . 'Delete', ['delete', 'id' => $model->id],
    [
    'class' => 'btn btn-danger',
    'data-confirm' => '' . 'Are you sure to delete this item?' . '',
    'data-method' => 'post',
    ]); ?>
    <?php $this->endBlock(); ?>


    
    <?= Tabs::widget(
                 [
                     'id' => 'relation-tabs',
                     'encodeLabels' => false,
                     'items' => [ [
    'label'   => '<b class=""># '.$model->id.'</b>',
    'content' => $this->blocks['app\models\DataRepair'],
    'active'  => true,
], ]
                 ]
    );
    ?>
        </div>
    </div>
</div>
