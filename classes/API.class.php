<?php
/**
 *  API Class
 *
 *  @author R.SkuLL
 *  Copyright 2013 RomerLife Geekz Web Development
*/
class API {

    protected function getGetParm ($key = null) {
        if (!isset($key)) return $_GET;
        return $_GET[$key];
    }

    protected function getPostParm ($key = null) {
        if (!isset($key)) return $_GET;
        return $_POST[$key];
    }

    protected function JsonHeader () {
        header('Content-Type: text/javascript; charset=utf-8');
    }

    protected function  SuccessHeader () {
        header('HTTP/1.1 200 OK');
    }

    protected function ErrorMessage ($message) {
        $this->SuccessHeader();
        $this->JsonHeader();
        die($message);
    }

    protected function PrintJson ($array) {
        $this->SuccessHeader();
        $this->JsonHeader();
        echo json_encode($array);
    }

}
