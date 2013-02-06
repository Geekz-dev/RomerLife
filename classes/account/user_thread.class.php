<?php
/**
 *  User Thread Class
 *
 *  @author R.SkuLL
 *  Copyright (c) 2013 RomerLife Geekz Web Development
*/
final class UserThread extends API {

    // Database
    private $Db;

    // User id
    private $id;

    // Session id
    private $session;

    // Thread id
    private $tid;

    public function __construct ($sessid) {
        $this->Db = MDB2::singleton();
        $this->session = new Session();
        $this->id = $this->session->isLogin($sessid);
        $this->tid = $this->getGetParm('id');
        if (!$this->id) $this->ErrorMessage('{"Status":"Error"}');
    }

    public function execute () {
        if (is_numeric($this->tid)) {
            $this->getThread();
        } else {
            $this->getList();
        }
    }

    private function getList () {
        $thread = array();
        $sql = "SELECT * FROM thread WHERE uid = ?";
        $req = $this->Db->prepare($sql);
        $result = $req->execute(array($this->id));
        while ($row = $result->fetchRow(MDB2_FETCHMODE_ASSOC)) {
            $thread[] = array(
                'id' => $row['id'],
                'info' => array(
                    'url' => 'http://'.$row['sd'].'.2ch.net/'.$row['board'].'/dat/'.$row['dat'].'.dat',
                    'title' => $row['title']
                )
            );
        }
        $this->PrintJson($thread);
    }

    private function getThread () {
        $thread = null;
        $sql = "SELECT * FROM thread WHERE id = ?";
        $req = $this->Db->prepare($sql);
        $result = $req->execute(array($this->tid));
        while ($row = $result->fetchRow(MDB2_FETCHMODE_ASSOC)) {
            $thread = array(
                'id' => $row['id'],
                'json' => $row['json']
            );
        }
        if (!$thread) {
            $thread = array('Status' => 'Thread is not found');
        }
        $this->PrintJson($thread);
    }

}
