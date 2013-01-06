<?php
/**
 *  Api2ch Abstract Class
 *
 *  @author R.SkuLL
 *  Copyright (c) 2013 RomerLife Geekz Web Development
*/
abstract class Api2ch extends API {

    // 初期ドメイン
    const DOMAIN = '2ch.net';

    // ドメイン
    protected $domain;

    // サブドメイン
    protected $sub_domain;

    // 板名
    protected $board;

    // Dat id
    protected $dat;

    public function __construct () {
        $parms = $this->getGetParm();
        $this->domain = self::DOMAIN;
        if (!empty($parms['d'])) {
            $this->domain = $parms['d'];
        }
        $this->sub_domain = $parms['sd'];
        $this->board = $parms['board'];
        $this->dat = $parms['dat'];
    }

    protected function getGetParm ($key = null) {
        if (!isset($key)) return $_GET;
        return $_GET[$key];
    }

    private function getFile () {
        $file = @mb_convert_encoding(file_get_contents($this->getURL()), 'UTF-8', 'SJIS');
        if (!$file) {
            $this->ErrorMessage('{"Error":"Get file error"}');
        }
        return $file;
    }

    protected function CheckParm () {
        if (empty($this->sub_domain) || empty($this->board)) {
            $this->ErrorMessage('{"Error":"Parmerter is not set"}');
        } else
        if (!preg_match('/(2ch.net|pinkbbs.com)/', $this->domain)) {
            $this->ErrorMessage('{"Error":"Request url is 2ch only"}');
        }
    }

    public function execute () {
        $this->CheckParm();
        $file = $this->getFile();
        $this->PrintJson($this->CreateArray($file));
    }

    abstract public function CreateArray ($conte);

    abstract public function getURL ();

}
