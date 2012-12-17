<?php


class res extends Abstract2chAPI {

    public function CreateArray ($conte) {

        $res = array();

        $dat = explode("\n", $conte);
        array_pop($dat);

        // dat落ち
        if (preg_match('/!DOCTYPE/', $dat[0]))
            $this->SuccessMessage('{"Status":"Dat not found"}');

        // スレッド1000オーバー
        if (preg_match('/Over 1000 Thread/', $dat[2])) {
            $title = explode('<>', $dat[0]);
            $url = explode(' <br> ', $title[3]);
            $status = json_encode(array(
                'Status' => 'Over 1000 Thread',
                'part' => array(
                    'title' => $title[4],
                    'url' => $url[1]
                )
            ));
            $this->SuccessMessage($status);
        }

        $title = explode('<>', $dat[0]);
        $res['Status'] = 'ok';
        $res['title'] = $title[4];

        foreach ($dat as $key=>$val) {

            list($name, $dummy, $dateId, $conte) = explode('<>', $val);

            // 日時・ID分割して代入
            list($ymd, $date, $id) = explode(' ', $dateId);
            $id = str_replace('ID:', '', $id);

            // 日付分割
            $ymd = explode('/', $ymd); 
            $ymd = "$ymd[0]年$ymd[1]月$ymd[2]";

            // 時間分割
            $his = explode(':', $date);
            $sms = explode('.', $his[2]);
            $time = "$ymd $his[0]時$his[1]分$sms[0]秒$sms[1]";

            // 配列作成
            $res['contents'][] = array(
                'resid' => $key + 1,
                'name' => $name,
                'id' => $id,
                'createdAt' => $time,
                'res' => $conte
            );
        }

        return $res;

    }

    public function CheckParm () {
        if (!preg_match('/[0-9]+/', $this->dat))
            $this->ErrorMessage('{"Error":"dat id is not found"}');
    }

    public function getURL () {
        $url = 'http://'.$this->sub_domain.'.'.$this->domain.'/'.$this->bord.'/dat/'.$this->dat.'.dat';
        return $url;
    }

}

