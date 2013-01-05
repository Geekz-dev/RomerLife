<?php
/**
 *  Ridirect
*/
session_start();

require_once '../../library/twitteroauth/twitteroauth.php';
require_once '../../config/twitter.conf.php';

$connect = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET);
$request_token = $connect->getRequestToken(OAUTH_CALLBACK);

$_SESSION['oauth_token'] = $token = $request_token['oauth_token'];
$_SESSION['oauth_token_secret'] = $request_token['oauth_token_secret'];

switch ($connect->http_code) {
  case 200:
    $url = $connect->getAuthorizeURL($token);
    header('Location: ' . $url); 
    break;
  default:
    echo 'Could not connect to Twitter. Refresh the page or try again later.';
}
