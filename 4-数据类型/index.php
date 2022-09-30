<?php

// print($a);

// $a = 123;
// print($a);

// ➜  learning_of_lua git:(main) ✗ php 4-数据类型/index.php
// PHP Warning:  Undefined variable $a in /Users/huangbaoyin/Documents/Code/lua/learning_of_lua/4-数据类型/index.php on line 3

// Warning: Undefined variable $a in /Users/huangbaoyin/Documents/Code/lua/learning_of_lua/4-数据类型/index.php on line 3
// 123%                                                                                                                               
// ➜  learning_of_lua git:(main) ✗ 

$a = 123;
$ret = gettype($a);
var_dump($ret);

$arr = ['a','b','c'];
var_dump(gettype($arr));

var_dump(is_int($a));
var_dump(is_array($arr));

// 输出结果
// string(7) "integer"
// string(5) "array"
// bool(true)
// bool(true)

$arr = [
    'key1' => "val1",
    'key2' =>"val2",
    "val3"
];

foreach ($arr as $key => $value) {
    echo $key . ':' . $value . PHP_EOL;
}

// 输出结果：
// key1:val1
// key2:val2
// 0:val3