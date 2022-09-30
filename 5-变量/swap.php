<?php

$a = 'a';
$b = 'b';

list($a, $b) = [$b, $a];
var_dump($a, $b);
// string(1) "b"
// string(1) "a"