<?php
/**
 *  Regist Class
 *  @author R.SkuLL
*/
final class Regist {

    public $Db;

    public function __construct () {
        $this->Db = MDB2::singleton();
    }

    public function addAccount ($twid, $uname, $passwd) {
        if ($this->check($twid)) return;
        $sql = "INSERT INTO user (twitter_id, uname, passwd) VALUES (?, ?, ?)";
        $req = $this->Db->prepare($sql);
        $req->execute(array($twid, $uname, sha1($passwd)));
    }

    public function rmAccount ($id) {
        if (!$this->check($twid)) return;
        $sql = "DELETE FROM user WHERE id = ?";
        $req = $this->Db->prepare($sql);
        $req->execute(array($id));
    }

    private function check ($twid) {
        $sql = "SELECT COUNT(*) FROM user WHERE twitter_id = ?";
        $check = $this->Db->prepare($sql);
        $result = $check->execute(array($twid))->fetchCol();
        return $result[0] ? true : false;
    }

}
