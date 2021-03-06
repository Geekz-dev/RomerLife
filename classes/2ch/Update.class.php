<?php
/**
 *  Update API Class
 *
 *  @author R.SkuLL
 *  Copyright (c) 2013 RomerLife Geekz Web Development
*/
final class Update extends Thread {

    private $maxId;

    public function __construct () {

        parent::__construct();
        $this->maxId = $this->getGetParm('maxId');

    }

    public function CreateArray ($conte) {

        $res = parent::CreateArray($conte);
        unset($res['title']);
        array_splice($res['contents'], 0, $this->maxId);

        $status = 'no update';
        if (count($res['contents']) > 0) {
            $status = 'update ok';
        }
        $res['Status'] = $status;

        return $res;

   }

    public function CheckParm () {

        $maxId = $this->maxId;
        if (empty($maxId) || !is_numeric($maxId)) {
            $this->ErrorMessage('{"Error":"maxId is not set"}');
        }
        parent::CheckParm();

    }

}
