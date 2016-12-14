<?php

namespace app\models;

use Yii;
use \app\models\base\DataRepair as BaseDataRepair;

/**
 * This is the model class for table "data_repair".
 */
class DataRepair extends BaseDataRepair
{
	
	public function attributeLabels()
	{
		return [
				'id' => 'ID',
				'no' => 'No',
				'section' => 'Section',
				'pic_prod' => 'PIC Prod',
				'pic_pe' => 'PIC PE',
				'in_date' => 'In Date',
				'model' => 'Model',
				'dest' => 'Dest',
				'pcb' => 'PCB',
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
				'flag' => 'Flag',
				'priorityStr' => 'Priority',
		];
	}
	
	public function rules()
	{
		return [
				[['no'], 'required'],
				[['in_date', 'out_date', 'est_finish_date'], 'safe'],
				[['detail', 'cause', 'remark'], 'string'],
				[['priority', 'flag'], 'integer'],
				[['no'], 'string', 'max' => 20],
				[['section'], 'string', 'max' => 5],
				[['pic_prod', 'pic_pe', 'model', 'dest', 'pcb'], 'string', 'max' => 100],
				[['defect', 'action', 'location'], 'string', 'max' => 200],
				[['status'], 'string', 'max' => 50]
		];
	}
	
	public function getPriorityStr()
	{
		if($this->priority == 1)
		{
			return 'URGENT';
		}else {
			return 'NORMAL';
		}
	}
}
