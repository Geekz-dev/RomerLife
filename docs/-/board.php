<?php
/**
 *  RomerLife Bord API
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright (c) 2013 Geekz Web Development
*/

require_once '../../classes/2ch/API.class.php';
require_once '../../classes/2ch/Board.class.php';

$res = new Board();
$res->execute();
