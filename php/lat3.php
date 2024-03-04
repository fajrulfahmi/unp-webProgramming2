<?php
$x = 25;
$y = 75;
function penjumlahan()
{
    $GLOBALS['z'] = $GLOBALS['x'] + $GLOBALS['y'];
}
penjumlahan();
echo $z;
