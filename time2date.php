#!/usr/bin/php
<?php
$opts = getopt('h::t:');
if (!empty($opts['h'])) {
    echo sprintf('-t input unix time'.PHP_EOL);
    die;
}
if (empty($opts['t']) && empty($argv[1])) {
    echo sprintf('opt t is empty, please input unix time');
    die;
}

if (!empty($opts['t'])) {
    $time = $opts['t'];
} else {
    $time = $argv[1];
}

echo sprintf('input str is : %s%soutput format date is : %s'.PHP_EOL, $time, PHP_EOL, date("Y-m-d H:i:s", $time));
