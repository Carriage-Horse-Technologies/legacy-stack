<?php
ini_set('max_execution_time', 0);
require_once(__DIR__ . "/../vendor/autoload.php");
require_once(__DIR__ . "/../SmartyHelper.php");

function bubble_sort($array)
{
    // 要素数回繰り返し
    for($i = 0; $i < count($array); $i++)
    {
        // 要素数-1回繰り返し
        for($n = 1; $n < count($array); $n++)
        {
            // 隣接要素を比較し大小が逆なら入替える
            if($array[$n-1] > $array[$n])
            {
                $temp = $array[$n];
                $array[$n] = $array[$n-1];
                $array[$n-1] = $temp;
            }
        }
    }
    return $array;
}

// (1) 完全にシャッフルされた配列
$array_shuffled = range(1, 10000);
shuffle($array_shuffled);

$sorted = bubble_sort($array_shuffled);
