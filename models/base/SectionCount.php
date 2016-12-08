<?php

namespace app\models\base;

use Yii;

/**
 * This is the base-model class for table "section_count".
 *
 * @property integer $count_id
 * @property string $section
 * @property integer $total_count
 * @property integer $flag
 */
class SectionCount extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'section_count';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['section'], 'required'],
            [['total_count', 'flag'], 'integer'],
            [['section'], 'string', 'max' => 10]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'count_id' => 'Count ID',
            'section' => 'Section',
            'total_count' => 'Total Count',
            'flag' => 'Flag',
        ];
    }




}
