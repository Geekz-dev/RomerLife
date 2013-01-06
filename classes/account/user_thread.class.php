<?php
/**
 *  User Thread Class
 *
 *  @author R.SkuLL
 *  Copyright (c) 2013 RomerLife Geekz Web Development
*/
final class UserThread extends API {

    private $Db;
    private $id;
    private $session;

    public function __construct ($sessid) {
        $this->Db = MDB2::singleton();
        $this->session = new Session();
        $this->id = $this->session->isLogin($sessid);
        if (!$this->id) $this->ErrorMessage('{"Status":"Error"}');
    }

    public function getThread () {
        $thread = array();
        $sql = "SELECT * FROM thread WHERE uid = ?";
        $req = $this->Db->prepare($sql);
        $result = $req->execute(array($this->id));
        while ($row = $result->fetchRow(MDB2_FETCHMODE_ASSOC)) {
            $thread[] = array(
                'id' => $row['id'],
                'url' => 'http://'.$row['sd'].'.2ch.net/'.$row['board'].'/dat/'.$row['dat'].'.dat',
                'json' => $row['json']
            );
        }
        $this->PrintJson($thread);
    }

    public function deleteThread () {
    }

}
