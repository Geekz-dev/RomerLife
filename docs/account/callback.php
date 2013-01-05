<?php
/**
 *  Callback
*/
session_start();

require_once '../../library/twitteroauth/twitteroauth.php';
require_once '../../config/twitter.conf.php';

if (isset($_REQUEST['oauth_token']) && $_SESSION['oauth_token'] !== $_REQUEST['oauth_token']) {
  $_SESSION['oauth_status'] = 'oldtoken';
  header('Location: ./logout.php');
}

$connect = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $_SESSION['oauth_token'], $_SESSION['oauth_token_secret']);
$access_token = $connect->getAccessToken($_REQUEST['oauth_verifier']);

$_SESSION['access_token'] = $access_token;
unset($_SESSION['oauth_token']);
unset($_SESSION['oauth_token_secret']);

if (200 == $connect->http_code) {
  $_SESSION['status'] = 'verified';
  header('Location: ./index.php');
} else {
  header('Location: ./logout.php');
}
