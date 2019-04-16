<?php

return [
    'adminEmail' => 'admin@example.com',
    'year_arr' => getYearArray(),
];

function getYearArray()
{
	$start_year = 2016;
	$end_year = ((int)date('Y'));
	for ($i = $start_year; $i <= $end_year; $i++) { 
		$year_arr[$i] = $i;
	}
	return $year_arr;
}