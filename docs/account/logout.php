<?php
/**
 *  Logout
*/
session_start();
session_destroy();
header('Location: ./connect.php');
