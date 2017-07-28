<?php

namespace app\models;

use \app\models\RepairExpe as BaseRepairExpe;
/**
 * This is the model class for table "repair_expe".
 */
class RepairExpeOut extends BaseRepairExpe
{
	public $repair_status;
	
	public function rules()
	{
		return [
				[['repair_id', 'mds_out'], 'required'],
				[['repair_id', 'flag'], 'integer'],
				[['date_in', 'date_out'], 'safe'],
				[['mds_in'], 'string', 'max' => 10]
		];
	}
}
