<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use \dmstr\bootstrap\Tabs;
use yii\helpers\ArrayHelper;
use app\models\RepairTime;
use kartik\widgets\DatePicker;
use app\models\DataRepair;
use kartik\widgets\Typeahead;
use kartik\widgets\TypeaheadBasic;
use yii\helpers\Url;

/**
* @var yii\web\View $this
* @var app\models\DataRepair $model
* @var yii\widgets\ActiveForm $form
*/

?>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2>
                <?= $model->no ?>        </h2>
    </div>

    <div class="panel-body">

        <div class="data-repair-form">

            <?php $form = ActiveForm::begin([
            'id' => 'DataRepair',
            'layout' => 'horizontal',
            'enableClientValidation' => true,
            'errorSummaryCssClass' => 'error-summary alert alert-error'
            ]
            );
            ?>

            <div class="">
                <?php $this->beginBlock('main'); ?>

                <p>
                    
			<?php 
			$data_model = ArrayHelper::map(RepairTime::find([
					'select' => 'model',
					'distinct' => true,
			])->orderBy(['model' => SORT_ASC])->asArray()->all(), 'model', 'model');
			
			$data_pcb = ArrayHelper::map(RepairTime::find([
					'select' => 'pcb',
					'distinct' => true,
			])->where(['model' => $model->model])->orderBy(['pcb' => SORT_ASC])->asArray()->all(), 'pcb', 'pcb');
			
			$pic_prod = ArrayHelper::map(DataRepair::find()->select('pic_prod')->distinct()->orderBy('pic_prod ASC')->all(), 'pic_prod', 'pic_prod') ;
			$pic_pe = ArrayHelper::map(DataRepair::find()->select('pic_pe')->distinct()->orderBy('pic_pe ASC')->all(), 'pic_pe', 'pic_pe') ;
			?>
			<?= ''//$form->field($model, 'id')->textInput() ?>
			<?= $form->field($model, 'no')->textInput([
					'maxlength' => true, 
					'readonly' => in_array(Yii::$app->user->identity->role->name, ['Administrator', 'Super Administrator']) ? false : true,
			]) ?>
			<?= $form->field($model, 'section')->textInput([
					'maxlength' => true, 
					'readonly' => in_array(Yii::$app->user->identity->role->name, ['Administrator', 'Super Administrator']) ? false : true,
			]); ?>
			<?= $form->field($model, 'pic_prod')->widget(TypeaheadBasic::className(), [
					'data' => $pic_prod,
					'options' => ['placeholder' => 'Input name ...'],
					'pluginOptions' => ['highlight'=>true],
			]);
			?>
			<?= $form->field($model, 'pic_pe')->widget(TypeaheadBasic::className(), [
					'data' => $pic_pe,
					'options' => ['placeholder' => 'Input name ...'],
					'pluginOptions' => ['highlight'=>true],
			]); ?>
			<?= $form->field($model, 'priority')->dropDownList([2 => 'NORMAL', 1 => 'URGENT'], [
					'disabled' => in_array(Yii::$app->user->identity->username, ['admin', 'superadmin']) ? FALSE : TRUE,
			]) ?>
			<?= $form->field($model, 'in_date')->widget(DatePicker::className(), [
					'options' => ['placeholder' => 'Enter in date ...'],
					'pluginOptions' => [
							'autoclose'=>true,
							'format' => 'yyyy-mm-dd',
							'todayHighlight' => true
					]
			]) ?>
			<?= $form->field($model, 'model')->dropDownList($data_model, [
					'prompt' => 'Select a model ...',
					'onchange' => '$.post( "'.Yii::$app->urlManager->createUrl('data-repair/lists?id=').'"+$(this).val(), function( data ) {
                  		$( "select#pcb" ).html( data );
                	});',
			]) ?>
			
			<?= $form->field($model, 'dest')->textInput(['maxlength' => true]) ?>
			
			<?= $form->field($model, 'pcb')->dropDownList($data_pcb,[
					'id' => 'pcb',
					'prompt' => 'Select a PCB ...',
					'onchange' => '$.post( "'.Yii::$app->urlManager->createUrl('data-repair/estimated-date?model=') . '"+$("#datarepair-model").val()+"&section="+$("#datarepair-section").val()+"&pcb="+$(this).val(), function( data ) {
                  		$( "#estimated_date" ).val( data );
                	});',
			]) ?>
			<?= $form->field($model, 'est_finish_date')->widget(DatePicker::className(), [
					'options' => ['placeholder' => 'Enter in date ...', 'id' => 'estimated_date'],
					'pluginOptions' => [
							'autoclose'=>true,
							'format' => 'yyyy-mm-dd',
							'todayHighlight' => true
					]
			]) ?>
			<?= $form->field($model, 'out_date')->widget(DatePicker::className(), [
					'options' => ['placeholder' => 'Enter out date ...'],
					'pluginOptions' => [
							'autoclose'=>true,
							'format' => 'yyyy-mm-dd',
							'todayHighlight' => true
					]
			]) ?>
			
			<?= $form->field($model, 'defect')->textInput(['maxlength' => true]) ?>
			<?= $form->field($model, 'detail')->textarea(['rows' => 6]) ?>
			<?= $form->field($model, 'cause')->textarea(['rows' => 6]) ?>
			<?= $form->field($model, 'action')->textInput(['maxlength' => true]) ?>
			<?= $form->field($model, 'location')->textInput(['maxlength' => true]) ?>
			<?= $form->field($model, 'status')->dropDownList(['OPEN' => 'OPEN', 'OK' => 'OK', 'RETURN' => 'RETURN', 'SCRAP' => 'SCRAP'], [
					'disabled' => $model->isNewRecord ? true : false,
			]) ?>
			<?= $form->field($model, 'remark')->textarea(['rows' => 6]) ?>
			
			<?= ''//$form->field($model, 'flag')->textInput() ?>
                </p>
                <?php $this->endBlock(); ?>
                
                <?=
    Tabs::widget(
                 [
                   'encodeLabels' => false,
                     'items' => [ [
    'label'   => 'DataRepair',
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
                &nbsp;&nbsp;<?php echo html::a('Cancel', Url::to(['data-repair/index']), ['class' => 'btn btn-danger'])?>

                <?php ActiveForm::end(); ?>

            </div>

        </div>

    </div>

</div>
