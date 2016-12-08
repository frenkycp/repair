<?php

namespace app\models\base;

use Yii;

/**
 * This is the base-model class for table "repair_time".
 *
 * @property integer $id_time
 * @property string $model
 * @property string $pcb
 * @property string $est_time
 * @property integer $flag
 */
class RepairTime extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'repair_time';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['flag'], 'integer'],
            [['model'], 'string', 'max' => 200],
            [['pcb'], 'string', 'max' => 100],
            [['est_time'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_time' => 'Id Time',
            'model' => 'Model',
            'pcb' => 'Pcb',
            'est_time' => 'Est Time',
            'flag' => 'Flag',
        ];
    }




}
