<?php
/**
 *  API Class
 *
 *  @author R.SkuLL
 *  Copyright (c) 2013 RomerLife Geekz Web Development
*/
class API {

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
