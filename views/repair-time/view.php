<?php

use dmstr\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use yii\widgets\DetailView;
use yii\widgets\Pjax;
use dmstr\bootstrap\Tabs;

/**
* @var yii\web\View $this
* @var app\models\RepairTime $model
*/

$this->title = 'Repair Time ' . $model->model . ' ' . $model->pcb;
$this->params['breadcrumbs'][] = ['label' => 'Repair Times', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => (string)$model->model . ' ' . $model->pcb, 'url' => ['view', 'id_time' => $model->id_time]];
$this->params['breadcrumbs'][] = 'View';
?>
<div class="giiant-crud repair-time-view">

    <!-- menu buttons -->
    <p class='pull-left'>
        <?= Html::a('<span class="glyphicon glyphicon-pencil"></span> ' . 'Edit', ['update', 'id_time' => $model->id_time],['class' => 'btn btn-info']) ?>
        <?= Html::a('<span class="glyphicon glyphicon-plus"></span> ' . 'New', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <p class="pull-right">
        <?= ''; //Html::a('<span class="glyphicon glyphicon-list"></span> ' . 'List RepairTimes', ['index'], ['class'=>'btn btn-default']) ?>
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
                <?= '';//$model->id_time ?>            </h2>
        </div>

        <div class="panel-body">



    <?php $this->beginBlock('app\models\RepairTime'); ?>

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
            //'id_time',
        'model',
        'pcb',
        'est_time',
    ],
    ]); ?>

    <hr/>

    <?= Html::a('<span class="glyphicon glyphicon-trash"></span> ' . 'Delete', ['delete', 'id_time' => $model->id_time],
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
    'label'   => '<b class=""># '.$model->model . ' ' . $model->pcb.'</b>',
    'content' => $this->blocks['app\models\RepairTime'],
    'active'  => true,
], ]
                 ]
    );
    ?>
        </div>
    </div>
</div>
