<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\DataRepair;

/**
* DataRepairSearch represents the model behind the search form about `app\models\DataRepair`.
*/
class DataRepairSearch extends DataRepair
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id', 'priority', 'flag'], 'integer'],
            [['no', 'section', 'pic_prod', 'pic_pe', 'in_date', 'model', 'dest', 'pcb', 'defect', 'detail', 'cause', 'action', 'location', 'status', 'out_date', 'remark', 'est_finish_date'], 'safe'],
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
	$query = DataRepair::find()->innerJoin('repair_status', 'status = name')->where(['flag' => 1])->orderBy(['priority' => SORT_ASC, 'no' => SORT_ASC]);
	if(\Yii::$app->user->identity->username == 'adminfa')
	{
		$query->andFilterWhere(['section' => 'FA']);
	}else if(\Yii::$app->user->identity->username == 'adminpcb'){
		$query->andFilterWhere(['section' => 'PCB']);
	}
	
	if($params['index_type'] == 'open'){
		$query->andFilterWhere(['status' => 'OPEN']);
	}else if($params['index_type'] == 'return'){
		$query->andFilterWhere(['status' => 'Return']);
	}else if($params['index_type'] == 'scrap'){
		$query->andFilterWhere(['status' => 'Scrap']);
	}else if($params['index_type'] == 'ok'){
		$query->andFilterWhere(['status' => 'OK']);
	}

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
            'in_date' => $this->in_date,
            'out_date' => $this->out_date,
            'priority' => $this->priority,
            'est_finish_date' => $this->est_finish_date,
            'flag' => $this->flag,
        ]);

        $query->andFilterWhere(['like', 'no', $this->no])
            ->andFilterWhere(['like', 'section', $this->section])
            ->andFilterWhere(['like', 'pic_prod', $this->pic_prod])
            ->andFilterWhere(['like', 'pic_pe', $this->pic_pe])
            ->andFilterWhere(['like', 'model', $this->model])
            ->andFilterWhere(['like', 'dest', $this->dest])
            ->andFilterWhere(['like', 'pcb', $this->pcb])
            ->andFilterWhere(['like', 'defect', $this->defect])
            ->andFilterWhere(['like', 'detail', $this->detail])
            ->andFilterWhere(['like', 'cause', $this->cause])
            ->andFilterWhere(['like', 'action', $this->action])
            ->andFilterWhere(['like', 'location', $this->location])
            ->andFilterWhere(['like', 'status', $this->status])
            ->andFilterWhere(['like', 'remark', $this->remark]);

	return $dataProvider;
}
}