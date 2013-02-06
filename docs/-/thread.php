<?php
/**
 *  RomerLife Thread API
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright 2013 RomerLife Geekz Web Development
*/
require_once '../../classes/API.class.php';
require_once '../../classes/2ch/Api2ch.class.php';
require_once '../../classes/2ch/Thread.class.php';

$res = new Thread();
$res->execute();
