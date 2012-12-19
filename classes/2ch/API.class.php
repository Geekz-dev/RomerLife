<?php
/**
 *  API Abstract Class
 *
 *  @author R.SkuLL
 *  Copyright (c) 2013 Geekz Web Development
*/

abstract class API {

    const DOMAIN = '2ch.net';

    protected $domain;
    protected $sub_domain;
    protected $bord;
    protected $dat;

    public function __construct () {

        $parms = $this->getGetParm();
        $this->domain = self::DOMAIN;
        if (!empty($parms['d'])) {
            $this->domain = $parms['d'];
        }
        $this->sub_domain = $parms['sd'];
        $this->bord = $parms['bord'];
        $this->dat = $parms['dat'];

    }

    protected function getGetParm ($key = null) {

        if (!isset($key)) return $_GET;
        return $_GET[$key];

    }

    private function JsonHeader () {

        header('Content-Type: text/javascript; charset=utf-8');

    }

    private function SuccessHeader () {

        header('HTTP/1.1 200 OK');

    }

    protected function SuccessMessage ($message) {

        $this->SuccessHeader();
        $this->JsonHeader();
        die($message);

    }

    protected function ErrorMessage ($message) {

        // 仕様変更：さくら鯖だとエラー画面がでてしまうので200にする。
        //header('HTTP', true, 400);
        $this->SuccessHeader();
        $this->JsonHeader();
        die($message);

    }

    private function getFile () {

        $file = @mb_convert_encoding(file_get_contents($this->getURL()), 'UTF-8', 'SJIS');
        if (!$file) {
            $this->ErrorMessage('{"Error":"Get file error"}');
        }
        return $file;

    }

    private function PrintJson ($array) {

        echo json_encode($array);

    }

    protected function CheckParm () {

        if (empty($this->sub_domain) || empty($this->bord)) {
            $this->ErrorMessage('{"Error":"Parmerter is not set"}');
        } else
        if (!preg_match('/(2ch.net|pinkbbs.com)/', $this->domain)) {
            $this->ErrorMessage('{"Error":"Request url is 2ch only"}');
        }

    }

    public function execute () {

        $this->CheckParm();
        $file = $this->getFile();
        $this->SuccessHeader();
        $this->JsonHeader();
        $this->PrintJson($this->CreateArray($file));

    }

    abstract public function CreateArray ($conte);

    abstract public function getURL ();

}

