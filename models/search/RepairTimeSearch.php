<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\RepairTime;

/**
* RepairTimeSearch represents the model behind the search form about `app\models\RepairTime`.
*/
class RepairTimeSearch extends RepairTime
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id_time'], 'integer'],
            [['model', 'pcb', 'est_time'], 'safe'],
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
$query = RepairTime::find();

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
            'id_time' => $this->id_time,
        ]);

        $query->andFilterWhere(['like', 'model', $this->model])
            ->andFilterWhere(['like', 'pcb', $this->pcb])
            ->andFilterWhere(['like', 'est_time', $this->est_time]);

return $dataProvider;
}
}