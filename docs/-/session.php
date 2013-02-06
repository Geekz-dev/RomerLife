<?php
/**
 *  ログイン認証をするAPI
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright 2013 RomerLife Geekz Web Development
*/
require_once '../../classes/account/session.class.php';
require_once '../../config/database.conf.php';

// PEAR MDB2
MDB2::connect($dsn);

$sessid = $_COOKIE['RLSESSID'];
//$uname = $_PSOT['uname'];
//$passwd = $_PSOT['passwd'];
$uname = $_GET['uname'];
$passwd = $_GET['passwd'];

$Session = new Session();

if ($_GET['mode'] == 'delete') {
    setCookie('RLSESSID', '', time() - 9999999);
    echo 'Logout';
    exit();
}

if (!empty($uname) && !empty($passwd)) {

    if ($sess = $Session->login($uname, $passwd)) {
        echo $sess;
    } else {
        echo 'Login Error';
    }

} else
if (!empty($sessid)) {

    if ($Session->isLogin($sessid)) {
        echo 'ok';
    } else {
        echo 'Old Session Error';
    }

} else {

    echo 'Unauthorized';

}
