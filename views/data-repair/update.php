<?php

use yii\helpers\Html;

/**
 * @var yii\web\View $this
 * @var app\models\DataRepair $model
 */

$this->title = 'Data Repair ' . $model->no . ', ' . 'Edit';
$this->params['breadcrumbs'][] = ['label' => 'Data Repairs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => (string)$model->no, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Edit';
?>
<div class="giiant-crud data-repair-update">

    <p>
        <?= Html::a('<span class="glyphicon glyphicon-eye-open"></span> ' . 'View', ['view', 'id' => $model->id], ['class' => 'btn btn-default']) ?>
    </p>

	<?php echo $this->render('_form', [
		'model' => $model,
	]); ?>

</div>
