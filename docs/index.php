<?php
/**
 *  RomerLife
 *
 *  @author R.SkuLL
 *  Copyright (c) 2013 Geekz Web Development
*/

$ua = $_SERVER['HTTP_USER_AGENT'];

$os_mobile_list = array(
    '/Windows Phone/',
    '/Windows Phone OS/',
    '/iPhone OS/',
    '/Android/',
    '/BlackBerry/'
);

$media = 'smart';
foreach ($os_mobile_list as $val) {
    if (preg_match($val, $ua)) {
       $media = 'smart';
       break;
    }
}

// Header
require_once 'header.php';

// Body
if ($media == 'smart') {
    require_once 'media/smart.php';
} else {
    require_once 'media/pc.php';
}

