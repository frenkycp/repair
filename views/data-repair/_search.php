<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\DatePicker;

/**
 * @var yii\web\View $this
 * @var app\models\search\DataRepairSearch $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="data-repair-search">

	<?php $form = ActiveForm::begin([
		'action' => ['index'],
		'method' => 'get',
	]); ?>

		<?= '';//$form->field($model, 'id') ?>

		<?= '';//$form->field($model, 'no') ?>

		<?= '';//$form->field($model, 'section') ?>

		<?= '';//$form->field($model, 'pic_prod') ?>

		<?= '';//$form->field($model, 'pic_pe') ?>
		<div class="row">
			<div class="col-md-6">
				<?php  echo $form->field($model, 'inDate1')->widget(DatePicker::className(), [
						'options' => ['placeholder' => 'Enter start date ...'],
						'pluginOptions' => [
								'autoclose'=>true,
								'format' => 'yyyy-mm-dd',
								'todayHighlight' => true
						]
				]) ?>
			</div>
			<div class="col-md-6">
				<?php  echo $form->field($model, 'inDate2')->widget(DatePicker::className(), [
						'options' => ['placeholder' => 'Enter end date ...'],
						'pluginOptions' => [
								'autoclose'=>true,
								'format' => 'yyyy-mm-dd',
								'todayHighlight' => true
						]
				]) ?>
			</div>
		</div>
		
		

		<?php // echo $form->field($model, 'model') ?>

		<?php // echo $form->field($model, 'dest') ?>

		<?php // echo $form->field($model, 'pcb') ?>

		<?php // echo $form->field($model, 'defect') ?>

		<?php // echo $form->field($model, 'detail') ?>

		<?php // echo $form->field($model, 'cause') ?>

		<?php // echo $form->field($model, 'action') ?>

		<?php // echo $form->field($model, 'location') ?>

		<?php // echo $form->field($model, 'status') ?>

		<?php // echo $form->field($model, 'out_date') ?>

		<?php // echo $form->field($model, 'remark') ?>

		<?php // echo $form->field($model, 'priority') ?>

		<?php // echo $form->field($model, 'est_finish_date') ?>

		<?php // echo $form->field($model, 'flag') ?>

		<div class="form-group">
			<?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
			<?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
		</div>

	<?php ActiveForm::end(); ?>

</div>
