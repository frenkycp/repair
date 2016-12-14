<?php

use yii\helpers\Html;

/**
 * @var yii\web\View $this
 * @var app\models\RepairTime $model
 */

$this->title = 'Repair Time ' . $model->model . ' ' . $model->pcb . ', ' . 'Edit';
$this->params['breadcrumbs'][] = ['label' => 'Repair Times', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => (string)$model->id_time, 'url' => ['view', 'id_time' => $model->id_time]];
$this->params['breadcrumbs'][] = 'Edit';
?>
<div class="giiant-crud repair-time-update">

    <p>
        <?= Html::a('<span class="glyphicon glyphicon-eye-open"></span> ' . 'View', ['view', 'id_time' => $model->id_time], ['class' => 'btn btn-default']) ?>
    </p>

	<?php echo $this->render('_form', [
		'model' => $model,
	]); ?>

</div>
