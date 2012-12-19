<?php
/**
 *  RomerLife Update API
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright (c) 2013 Geekz Web Development
*/

require_once '../../classes/2ch/API.class.php';
require_once '../../classes/2ch/Thread.class.php';
require_once '../../classes/2ch/Update.class.php';

$update = new Update();
$update->execute();

