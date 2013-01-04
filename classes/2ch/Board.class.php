<?php
/**
 *  Board API Class
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright (c) 2013 Geekz Web Development
*/

final class Board extends API {

    public function CreateArray ($conte) {

        // HTMLが返ってきたらエラーを出す
        if (preg_match('/^<html>/', $conte)) {
            $this->ErrorMessage('{"Error":"No such found"}');
        }

        $contents = explode("\n", $conte);
        array_pop($contents);

        $thread['Status'] = 'ok';
        $thread['board'] = $this->getBoardName($this->board);

        foreach ($contents as $key=>$val) {

            preg_match('/([0-9]+)\.dat<>(.+) .([0-9]+)/', $val, $match);
            list($dummy, $id, $title, $all) = $match;
            $thread['thread'][$key] = array(
                'title' => $title,
                'url' => $this->getDatURL($id),
                'all' => $all,
                'createdAt' => $this->getCreateTime($id)
            );

        }

        // タイトルが入ってない場合は取得できてないのでエラー
        if ( $thread['thread'][0]['title'] == null ) {
            $this->ErrorMessage('{"Error":"File get error"}');
        }

        return $thread;

    }

    private function getBoardName ($key) {
        $json = @file_get_contents('../../classes/2ch/list.json');
        $list = json_decode($json, true);
        return $list[$key];
    }

    private function getCreateTime ($id) {
        $unix = "@$id";
        $date = new DateTime($unix);
        $date->setTimezone(new DateTimeZone('Asia/Tokyo'));
        return $date->format('Y年m月d日 h時i分s秒');
    }

    private function getDatURL ($id) {
        $url = 'http://'.$this->sub_domain.'.'.$this->domain.'/'.$this->board.'/dat/'.$id.'.dat';
        return $url;
    }

    public function getURL () {
        $url = 'http://'.$this->sub_domain.'.'.$this->domain.'/'.$this->board.'/subject.txt';
        return $url;
    }

}

