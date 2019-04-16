<?php

namespace app\models;

use Yii;
use \app\models\base\DataRepair as BaseDataRepair;

/**
 * This is the model class for table "data_repair".
 */
class DataRepair extends BaseDataRepair
{
	
	public $repairStatusId;
	public $inDate1, $inDate2, $year, $period;
	
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
				'repair_status.id' => 'Status',
				'repairStatusId' => 'Status',
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
