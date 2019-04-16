<?php
use yii\helpers\Html;
use yii\helpers\Url;
use miloschuman\highcharts\Highcharts;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */

$this->title = 'Home';
?>
<section class="content-header">
	<h1>
		Dashboard
		<small>Control panel</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Dashboard</li>
	</ol>
</section>
<section class="content">
	<div class="row">
	
		<div class="col-lg-3 col-xs-6">
			<div class="small-box bg-red">
				<div class="inner center-text">
					<h3><?= $rep_open; ?></h3>
					<p>OPEN</p>
				</div>
				<?= Html::a('More Info ', Url::to(['data-repair/index','index_type' => 'open']), ['target' => '_blank', 'class' => 'small-box-footer']); ?>
			</div>
		</div>
		
		<div class="col-lg-3 col-xs-6">
			<div class="small-box bg-teal">
				<div class="inner center-text">
					<h3><?= $rep_return; ?></h3>
					<p>RETURN</p>
				</div>
				<?= Html::a('More Info ', Url::to(['data-repair/index','index_type' => 'return']), ['target' => '_blank', 'class' => 'small-box-footer']); ?>
			</div>
		</div>
		
		<div class="col-lg-3 col-xs-6">
			<div class="small-box bg-yellow">
				<div class="inner center-text">
					<h3><?= $rep_scrap; ?></h3>
					<p>SCRAP</p>
				</div>
				<?= Html::a('More Info ', Url::to(['data-repair/index','index_type' => 'scrap']), ['target' => '_blank', 'class' => 'small-box-footer']); ?>
			</div>
		</div>
		
		<div class="col-lg-3 col-xs-6">
			<div class="small-box bg-green">
				<div class="inner center-text">
					<h3><?= $rep_ok; ?></h3>
					<p>OK</p>
				</div>
				<?= Html::a('More Info ', Url::to(['data-repair/index','index_type' => 'ok']), ['target' => '_blank', 'class' => 'small-box-footer']); ?>
			</div>
		</div>
	</div>
	<div class="box box-primary box-solid">
		<div class="box-header">
			<h3 class="box-title">Last Update : <?= date('Y-m-d H:i:s'); ?></h3>
			<div class="pull-right">
				<?php $form = ActiveForm::begin([
				    'method' => 'get',
				    'layout' => 'horizontal',
				    'action' => Url::to(['site/index']),
				]); ?>

				<?= Html::dropDownList('year', $year, \Yii::$app->params['year_arr'], [
		            'class' => 'form-control',
		            'onchange'=>'this.form.submit()'
		        ]); ?>

		        <?php ActiveForm::end(); ?>
			</div>
		</div>
		<div class="box-body">
			<?php
            echo Highcharts::widget([
                'scripts' => [
                    //'modules/exporting',
                    'themes/grid-light',
                    //'themes/sand-signika',
                    //'themes/dark-unica',
                ],
                'options' => [
                    'chart' => [
                        'type' => 'column',
                        'style' => [
                            'fontFamily' => 'Source Sans Pro'
                        ],
                    ],
                    'title' => [
                        'text' => null
                    ],
                    'credits' => [
                        'enabled' => false
                    ],
                    'xAxis' => [
                        'categories' => $categories,
                    ],
                    'yAxis' => [
                    	'stackLabels' => [
                    		'enabled' => true,
                    	],
                        'title' => [
                            'text' => 'Qty'
                        ],
                        'min' => 0,
                        //'max' => 100,
                    ],
                    'plotOptions' => [
                        'column' => [
                        	'stacking' => 'normal',
                            'dataLabels' => [
                                'enabled' => true,
                                'allowOverlap' => true
                            ],
                        ],
                    ],
                    'series' => $data
                ],
            ]);
            ?>
		</div>
	</div>
	
</section>