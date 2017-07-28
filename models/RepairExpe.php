<?php

namespace app\models;

use \app\models\base\RepairExpe as BaseRepairExpe;

/**
 * This is the model class for table "repair_expe".
 */
class RepairExpe extends BaseRepairExpe
{
	
	
	public function rules()
	{
		return [
				[['repair_id', 'mds_in'], 'required'],
				[['repair_id', 'flag'], 'integer'],
				[['date_in', 'date_out'], 'safe'],
				[['mds_out'], 'string', 'max' => 10]
		];
	}
	
	public function attributeLabels()
	{
		return [
				'id' => 'ID',
				'repair_id' => 'Repair ID',
				'mds_in' => 'MDS No (In)',
				'mds_out' => 'MDS No (Out)',
				'date_in' => 'Date In',
				'date_out' => 'Date Out',
				'flag' => 'Flag',
				'repair_no' => 'Repair No'
		];
	}
	
}
