<?php

namespace app\models\base;

use Yii;

/**
 * This is the base-model class for table "repair_expe".
 *
 * @property integer $id
 * @property integer $repair_id
 * @property string $mds_in
 * @property string $mds_out
 * @property string $date_in
 * @property string $date_out
 * @property integer $flag
 *
 * @property \app\models\DataRepair $repair
 */
class RepairExpe extends \yii\db\ActiveRecord
{

	public $repair_no;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'repair_expe';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['repair_id'], 'required'],
            [['repair_id', 'flag'], 'integer'],
            [['date_in', 'date_out'], 'safe'],
            [['mds_in', 'mds_out'], 'string', 'max' => 10]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'repair_id' => 'Repair ID',
            'mds_in' => 'Mds In',
            'mds_out' => 'Mds Out',
            'date_in' => 'Date In',
            'date_out' => 'Date Out',
            'flag' => 'Flag',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRepair()
    {
        return $this->hasOne(\app\models\DataRepair::className(), ['id' => 'repair_id']);
    }




}
