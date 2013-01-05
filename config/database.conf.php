<?php
/**
 *  MDB2 Config
**/

// PEAR MDB2
require_once 'MDB2.php';

//エラーハンドラ設定
PEAR::setErrorHandling(PEAR_ERROR_CALLBACK, 'isError');
function isError ($error) {
    echo $error->getMessage();
}

//データベースに接続設定
$dsn = array(
    'phptype'  => 'mysql',
    'username' => 'root',
    'password' => '12345',
    'hostname' => 'localhost',
    'database' => 'romerlife',
    'charset'  => 'utf8'
);

