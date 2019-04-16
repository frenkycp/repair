<?php

namespace app\models\base;

use Yii;

/**
 * This is the base-model class for table "repair_monthly_view".
 *
 * @property integer $year
 * @property integer $period
 * @property string $total_open
 * @property string $total_ok
 * @property string $total_return
 * @property string $total_scrap
 * @property string $total_expe
 */
class RepairMonthlyView extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'repair_monthly_view';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['year', 'period'], 'integer'],
            [['total_open', 'total_ok', 'total_return', 'total_scrap', 'total_expe'], 'number']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'year' => 'Year',
            'period' => 'Period',
            'total_open' => 'Total Open',
            'total_ok' => 'Total Ok',
            'total_return' => 'Total Return',
            'total_scrap' => 'Total Scrap',
            'total_expe' => 'Total Expe',
        ];
    }




}
