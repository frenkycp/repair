<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use \dmstr\bootstrap\Tabs;
use yii\helpers\ArrayHelper;
use app\models\RepairTime;
use kartik\widgets\TypeaheadBasic;

/**
* @var yii\web\View $this
* @var app\models\RepairTime $model
* @var yii\widgets\ActiveForm $form
*/

?>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2>
                <?= '';//$model->id_time ?>        </h2>
    </div>

    <div class="panel-body">

        <div class="repair-time-form">

            <?php $form = ActiveForm::begin([
	            'id' => 'RepairTime',
	            'layout' => 'horizontal',
	            'enableClientValidation' => true,
	            'errorSummaryCssClass' => 'error-summary alert alert-error',
	            'fieldConfig' => [
	            		'horizontalCssClasses' => [
	            				'label' => 'col-sm-2',
	            				'wrapper' => 'col-sm-4',
	            		],
            	],
            ]
            );
            ?>

            <div class="">
                <?php $this->beginBlock('main'); ?>

                <p>
                    
			<?php 
			$data_model = ArrayHelper::map(RepairTime::find()->select(['model'])->distinct(true)->orderBy('model ASC')->all(), 'model', 'model') ;
			$data_pcb = $data_model = ArrayHelper::map(RepairTime::find()->select(['pcb'])->distinct(true)->orderBy('pcb ASC')->all(), 'pcb', 'pcb') ;
			?>
			<?= ''//$form->field($model, 'id_time')->hiddenInput()->label(false) ?>
			<?= $form->field($model, 'model')->widget(TypeaheadBasic::className(), [
					'data' => $data_model,
					'options' => ['placeholder' => 'Input model name ...'],
					'pluginOptions' => ['highlight'=>true],
			]); ?>'
			<?= $form->field($model, 'pcb')->widget(TypeaheadBasic::className(), [
					'data' => $data_model,
					'options' => ['placeholder' => 'Input PCB name ...'],
					'pluginOptions' => ['highlight'=>true],
			]); ?>
			<?= $form->field($model, 'est_time')->textInput(['maxlength' => true]) ?>
                </p>
                <?php $this->endBlock(); ?>
                
                <?=
    Tabs::widget(
                 [
                   'encodeLabels' => false,
                     'items' => [ [
    'label'   => 'RepairTime',
    'content' => $this->blocks['main'],
    'active'  => true,
], ]
                 ]
    );
    ?>
                <hr/>
                <?php echo $form->errorSummary($model); ?>
                <?= Html::submitButton(
                '<span class="glyphicon glyphicon-check"></span> ' .
                ($model->isNewRecord ? 'Create' : 'Save'),
                [
                    'id' => 'save-' . $model->formName(),
                    'class' => 'btn btn-success'
                ]
                );
                ?>

                <?php ActiveForm::end(); ?>

            </div>

        </div>

    </div>

</div>
