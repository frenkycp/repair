<?php

namespace app\models\base;

use Yii;

/**
 * This is the base-model class for table "data_repair".
 *
 * @property integer $id
 * @property string $no
 * @property string $section
 * @property string $pic_prod
 * @property string $pic_pe
 * @property string $in_date
 * @property string $model
 * @property string $dest
 * @property string $pcb
 * @property string $defect
 * @property string $detail
 * @property string $cause
 * @property string $action
 * @property string $location
 * @property string $status
 * @property string $out_date
 * @property string $remark
 * @property integer $priority
 * @property string $est_finish_date
 * @property integer $repair_time_id
 * @property integer $flag
 *
 * @property \app\models\RepairExpe[] $repairExpes
 */
class DataRepair extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'data_repair';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['no'], 'required'],
            [['in_date', 'out_date', 'est_finish_date'], 'safe'],
            [['detail', 'cause', 'action', 'remark'], 'string'],
            [['priority', 'repair_time_id', 'flag'], 'integer'],
            [['no'], 'string', 'max' => 20],
            [['section'], 'string', 'max' => 5],
            [['pic_prod', 'pic_pe', 'model', 'dest', 'pcb'], 'string', 'max' => 100],
            [['defect', 'location'], 'string', 'max' => 200],
            [['status'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'no' => 'No',
            'section' => 'Section',
            'pic_prod' => 'Pic Prod',
            'pic_pe' => 'Pic Pe',
            'in_date' => 'In Date',
            'model' => 'Model',
            'dest' => 'Dest',
            'pcb' => 'Pcb',
            'defect' => 'Defect',
            'detail' => 'Detail',
            'cause' => 'Cause',
            'action' => 'Action',
            'location' => 'Location',
            'status' => 'Status',
            'out_date' => 'Out Date',
            'remark' => 'Remark',
            'priority' => 'Priority',
            'est_finish_date' => 'Est Finish Date',
            'repair_time_id' => 'Repair Time ID',
            'flag' => 'Flag',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRepairExpes()
    {
        return $this->hasMany(\app\models\RepairExpe::className(), ['repair_id' => 'id']);
    }




}
