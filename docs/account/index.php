<?php
/**
 *  アカウント作成
 *
 *  @author R.SkuLL
 *  @version 1.0
 *
 * Copyright (c) 2013 RomerLife Geekz Web Development
*/
session_start();

require_once '../../library/twitteroauth/twitteroauth.php';
require_once '../../config/twitter.conf.php';

$access_token = $_SESSION['access_token'];
$oauth_key = $access_token['oauth_token'];
$oauth_secret = $access_token['oauth_token_secret'];

if (empty($oauth_key) || empty($oauth_secret)) {
    header('Location: ./logout.php');
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>RomerLife</title>
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>

    <form action="./regist.php" method="post">
        <p>Password<input type="text" name="passwd" value=""></p>
        <p>確認<input type="text" value=""></p>
        <input type="submit">
    </form>

</body>
</html>