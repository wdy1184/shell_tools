#!/usr/bin/php
<?php
$opts = getopt('h::s:');
if (!empty($opts['h'])) {
    echo sprintf('-s input date string'.PHP_EOL);
    die;
}
if (empty($opts['s']) && empty($argv[1])) {
    echo sprintf('opt s is empty, please input date string');
    die;
}

if (!empty($opts['s'])) {
    $dateStr = $opts['s'];
} else {
    $dateStr = $argv[1];
}

echo sprintf('input str is : %s%soutput time is : %s'.PHP_EOL, $dateStr, PHP_EOL, strtotime($dateStr));
