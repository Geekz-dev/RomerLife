<?php
/**
 *  RomerLife Update API
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright (c) 2013 RomerLife Geekz Web Development
*/
require_once '../../classes/API.class.php';
require_once '../../classes/2ch/Api2ch.class.php';
require_once '../../classes/2ch/Thread.class.php';
require_once '../../classes/2ch/Update.class.php';

$update = new Update();
$update->execute();
