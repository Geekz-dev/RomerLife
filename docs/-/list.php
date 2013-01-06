<?php
/**
 *  保存したスレ一覧を取得するAPI
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright (c) 2013 RomerLife Geekz Web Development
*/
require_once '../../classes/API.class.php';
require_once '../../classes/account/session.class.php';
require_once '../../classes/account/user_thread.class.php';
require_once '../../config/database.conf.php';

// PEAR MDB2
MDB2::connect($dsn);

$sessid = $_COOKIE['RLSESSID'];
$Thread = new UserThread($sessid);
$Thread->getThread();
