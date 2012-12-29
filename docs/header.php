<!DOCTYPE html>
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
    <script src="src/library/jquery-1.8.2.min.js"></script>
    <script src="src/library/jquery.bottom-1.0.js"></script>
    <script src="src/library/underscore.js"></script>
    <script src="src/library/tm.hash-observer.js"></script>

    <?php if ($media == 'smart') { ?>
    <script src="src/mobile-script.js"></script>
    <?php } elseif ($media == 'pc') { ?>
    <script src="src/view.js"></script>
    <script src=src/script.js""></script>
    <?php } ?>

    <!--
        RomerLife

        @version 1.0
        @mail info@geekz-dev.net

        Copyright (c) 2013 Geekz Web Development
    -->

</head>
