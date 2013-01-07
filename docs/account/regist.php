<?php
/**
 *  アカウント作成
 *
 *  @author Goma.Manoha
 *  @version 1.0
 *
 * Copyright (c) 2013 RomerLife Geekz Web Development
*/
session_start();

require_once '../../library/twitteroauth/twitteroauth.php';
require_once '../../config/twitter.conf.php';
require_once '../../config/database.conf.php';
require_once '../../classes/account/regist.class.php';

//PasswdSet
$passwd = $_POST["passwd"];

if (empty($passwd) || !preg_match('/[\w]{4,16}/', $passwd)) {
    header('Location: ./index.php');
}

//Twitter認証
$access_token = $_SESSION['access_token'];
$oauth_key = $access_token['oauth_token'];
$oauth_secret = $access_token['oauth_token_secret'];

if (empty($oauth_key) || empty($oauth_secret)) {
    header('Location: ./logout.php');
}

$connect = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $oauth_key, $oauth_secret);
$content = $connect->get('account/verify_credentials');

$id = $content->id_str;
$screen_name = $content->screen_name;

if(!empty($passwd)) {
    
    MDB2::connect($dsn);
    
    //ID作成
    $Regist = new Regist();
    $Regist->addAccount($id, $screen_name, $passwd);
    
}