<?php
/**
 *  ログイン認証をするAPI
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright (c) 2013 RomerLife Geekz Web Development
*/
require_once '../../classes/account/session.class.php';
require_once '../../config/database.conf.php';

// PEAR MDB2
MDB2::connect($dsn);

$sessid = $_GET['sessid'];
$uname = $_GET['uname'];
$passwd = $_GET['passwd'];

$Session = new Session();

if (!empty($uname) && !empty($passwd)) {

    if ($sess = $Session->login($uname, $passwd)) {
        echo $sess;
    } else {
        echo 'Unauthorized';
    }

} else
if (!empty($sessid)) {

    if ($Session->isLogin($sessid)) {
        echo 'ok';
    } else {
        echo 'Unauthorized';
    }

} else {

    echo 'Error';

}
