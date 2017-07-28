<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * @var yii\web\View $this
 * @var app\models\search\RepairExpeSearch $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="repair-expe-search">

	<?php $form = ActiveForm::begin([
		'action' => ['index'],
		'method' => 'get',
	]); ?>

		<?= $form->field($model, 'id') ?>

		<?= $form->field($model, 'repair_id') ?>

		<?= $form->field($model, 'mds_in') ?>

		<?= $form->field($model, 'mds_out') ?>

		<?= $form->field($model, 'date_in') ?>

		<?php // echo $form->field($model, 'date_out') ?>

		<?php // echo $form->field($model, 'flag') ?>

		<div class="form-group">
			<?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
			<?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
		</div>

	<?php ActiveForm::end(); ?>

</div>
