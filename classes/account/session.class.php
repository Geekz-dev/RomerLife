<?php
/**
 *  Session Class
 *
 *  @author R.SkuLL
 *  Copyright 2013 RomerLife Geekz Web Development
*/
final class Session {

    public $Db;

    public function __construct () {
        $this->Db = MDB2::singleton();
    }

    public function login ($uname, $passwd) {
        $sql = "SELECT id FROM user WHERE uname = ? AND passwd = ?";
        $req = $this->Db->prepare($sql);
        $result = $req->execute(array($uname, sha1($passwd)))->fetchCol();
        if (!empty($result[0])) {
            $this->deleteSession($result[0]);
            return $this->getSession($result[0]);
        }
        return false;
    }

    public function isLogin ($sess) {
        $sql = "SELECT COUNT(*) FROM session WHERE session = ?";
        $req = $this->Db->prepare($sql);
        $result = $req->execute(array($sess))->fetchCol();
        if (!empty($result[0])) {
            return true;
        }
        return false;
    }

    private function getSession ($id) {
        $sql = "SELECT session FROM session WHERE uid = ?";
        $req = $this->Db->prepare($sql);
        $result = $req->execute(array($id))->fetchCol();
        if (!empty($result[0])) {
            return $result[0];
        }
        return $this->makeSession($id);
    }

    public function deleteSession ($id) {
        $sql = "DELETE FROM session WHERE uid = $id";
        $this->Db->query($sql);
        setCookie('RLSESSID', '', time() - 9999999);
    }

    private function makeSession ($id) {
        $session = md5(uniqid(mt_rand(), true));
        $sql = "INSERT INTO session (uid, session) VALUES ($id, '$session')";
        $this->Db->query($sql);
        setCookie('RLSESSID', $session, time() + 60 * 60 * 24 * 30 * 3);
        return $session;
    }

}
