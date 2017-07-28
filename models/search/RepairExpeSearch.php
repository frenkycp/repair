<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\RepairExpe;

/**
* RepairExpeSearch represents the model behind the search form about `app\models\RepairExpe`.
*/
class RepairExpeSearch extends RepairExpe
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id', 'repair_id', 'flag'], 'integer'],
            [['mds_in', 'mds_out', 'date_in', 'date_out'], 'safe'],
];
}

/**
* @inheritdoc
*/
public function scenarios()
{
// bypass scenarios() implementation in the parent class
return Model::scenarios();
}

/**
* Creates data provider instance with search query applied
*
* @param array $params
*
* @return ActiveDataProvider
*/
public function search($params)
{
$query = RepairExpe::find();

$dataProvider = new ActiveDataProvider([
'query' => $query,
]);

$this->load($params);

if (!$this->validate()) {
// uncomment the following line if you do not want to any records when validation fails
// $query->where('0=1');
return $dataProvider;
}

$query->andFilterWhere([
            'id' => $this->id,
            'repair_id' => $this->repair_id,
            'date_in' => $this->date_in,
            'date_out' => $this->date_out,
            'flag' => $this->flag,
        ]);

        $query->andFilterWhere(['like', 'mds_in', $this->mds_in])
            ->andFilterWhere(['like', 'mds_out', $this->mds_out]);

return $dataProvider;
}
}