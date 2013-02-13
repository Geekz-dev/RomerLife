<!DOCTYPE html>
<!--<html lang="ja" manifest="romerlife.appcache">-->
<html lang="ja">
<head>

    <title>RomerLife</title>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="keywords" content="">

    <?php if ($media == 'smart') { ?>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <meta name="format-detection" content="telephone=no">
    <link rel="apple-touch-icon-precomposed" href="images/apple-icon.png">
    <link rel="stylesheet" href="css/reset.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/mobile-style.css">
    <?php } ?>

    <?php if ($media == 'pc') { ?>
    <link rel="stylesheet" href="css/reset.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <?php } ?>

    <!--<link rel="shortcut icon" href="../images/favicon.ico">-->
    <script src="src/library/librarys.js"></script>

    <?php if ($media == 'smart') { ?>
    <script src="src/mobile-script2.js"></script>
    <?php } elseif ($media == 'pc') { ?>
    <script src=src/script.js""></script>
    <?php } ?>

    <!--
        RomerLife Mobile

        @version 1.0
        @mail <info@geekz-dev.net>

        Copyright 2013 RomerLife Geekz Web Development
    -->

</head>
