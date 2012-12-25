<script>
$(function () {
    // Category
    $( '#category > ul' ).hide();
    $( '#category > h3' ).click(function () {
        $( this ).next().slideToggle();
    });
});
</script>
<!--[ History ]-->
<h2>最近の履歴</h2>
<div id="history">
    <div id="his-cate"></div>
    <div id="his-thread"></div>
</div>
<!--[ End History ]-->

<!--[ CheckThread ]-->
<h2>チェックスレッド</h2>
<div id="check-thread"></div>
<!--[ End CheckThrad ]-->

<!--[ Category ]-->
<div id="category">

    <h2>カテゴリ</h2>
    <!--[ 地震 ]-->
    <h3>地震</h3>
    <ul>
        <li><a href="#view/headline/bbynamazu">地震headline</a></li>
        <li><a href="#view/anago/namazuplus">地震速報</a></li>
        <li><a href="#view/hayabusa/eq">臨時地震</a></li>
        <li><a href="#view/hayabusa2/eqplus">臨時地震+</a></li>
        <li><a href="#view/uni/lifeline">緊急自然災害</a></li>
        <li><a href="#view/ikura/trafficinfo">交通情報</a></li>
    </ul>

    <!--[ おすすめ ]-->
    <h3>おすすめ</h3>
    <ul>
        <li><a href="#view/ikura/trafficinfo">交通情報</a></li>
        <li><a href="#view/ikura/bento">弁当・駅弁</a></li>
        <li><a href="#view/kohada/fish">釣り</a></li>
        <li><a href="#view/ikura/photo">写真撮影</a></li>
        <li><a href="#view/uni/sousai">冠婚葬祭</a></li>
    </ul>

    <!--[ be ]-->
    <h3>be</h3>
    <ul>
        <li><a href="#view/kohada/be">面白ネタnews</a></li>
        <li><a href="#view/ikura/nandemo">なんでも質問</a></li>
        <li><a href="#view/ikura/argue">朝生</a></li>
    </ul>

    <!--[ ニュース ]-->
    <h3>ニュース</h3>
    <ul>
        <li><a href="#view/headline/bbynews">速報headline</a></li>
        <li><a href="#view/newsnavi/">2NN+</a></li>
        <li><a href="#view/anago/bizplus">ビジネスnews+</a></li>
        <li><a href="#view/uni/newsplus">ニュース速報+</a></li>
        <li><a href="#view/uni/lifeline">緊急自然災害</a></li>
        <li><a href="#view/anago/wildplus">ニュース二軍+</a></li>
        <li><a href="#view/anago/moeplus">萌えニュース+</a></li>
        <li><a href="#view/awabi/mnewsplus">芸スポ速報+</a></li>
        <li><a href="#view/anago/femnewsplus">ほのぼのnews+</a></li>
        <li><a href="#view/anago/dqnplus">痛いニュース+</a></li>
        <li><a href="#view/anago/scienceplus">科学ニュース+</a></li>
        <li><a href="#view/anago/owabiplus">お詫び+</a></li>
        <li><a href="#view/kohada/liveplus">ニュース実況+</a></li>
        <li><a href="#view/hayabusa3/news">ニュース速報</a></li>
        <li><a href="#view/ikura/trafficinfo">交通情報</a></li>
        <li><a href="#view/ikura/musicnews">芸能音楽速報</a></li>
        <li><a href="#view/engawa/comicnews">アニメ漫画速報</a></li>
        <li><a href="#view/awabi/gamenews">ゲーム速報</a></li>
        <li><a href="#view/kohada/pcnews">PCニュース</a></li>
        <li><a href="#view/ikura/news7">私のニュース</a></li>
        <li><a href="#view/ikura/archives">懐かしニュース</a></li>
        <li><a href="#view/toro/news2">ニュース議論</a></li>
        <li><a href="#view/anago/asia">ニュース極東</a></li>
        <li><a href="#view/ikura/bakanews">バカニュース</a></li>
        <li><a href="#view/engawa/editorial">社説</a></li>
        <li><a href="#view/uni/wikileaks">WikiLeaks</a></li>
    </ul>

    <!--[ 世界情勢 ]-->
    <h3>世界情勢</h3>
    <ul>
        <li><a href="#view/uni/kokusai">国際情勢</a></li>
        <li><a href="#view/engawa/war">戦争・国防</a></li>
        <li><a href="#view/awabi/news4plus">東アジアnews+</a></li>
        <li><a href="#view/ikura/news5">イスラム情勢</a></li>
        <li><a href="#view/uni/iraq">イラク情勢</a></li>
        <li><a href="#view/awabi/africa">アフリカ情勢</a></li>
        <li><a href="#view/awabi/europa">欧州・CIS情勢</a></li>
        <li><a href="#view/anago/news5plus">ニュース国際+</a></li>
        <li><a href="#view/uni/dejima">dejima</a></li>
    </ul>

    <!--[ 案内 ]-->
    <h3>案内</h3>
    <ul>
        <li><a href="#view/ikura/entrance">ラウンジ</a></li>
        <li><a href="#view/uni/entrance2">ﾗｳﾝｼﾞｸﾗｼｯｸ</a></li>
        <li><a href="#view/ikura/qa">初心者の質問</a></li>
        <li><a href="#view/kohada/pcqa">PC初心者</a></li>
        <li><a href="#view/info/wiki">2chプロジェクト</a></li>
        <li><a href="#view/ikura/goods">グッズリスト</a></li>
        <li><a href="#view/anago/gline">ガイドライン</a></li>
        <li><a href="#view/ikura/event">イベント企画</a></li>
        <li><a href="#view/uni/2chse">2ch証券取引所</a></li>
        <li><a href="#view/info/rank">いろいろランク</a></li>
        <li><a href="#view/ikura/dataroom">資料室</a></li>
        <li><a href="#view/kohada/vote">投票所</a></li>
        <li><a href="#view/uni/sato">忍者の里</a></li>
    </ul>

    <!--[ 運営 ]-->
    <h3>運営</h3>
    <ul>
        <li><a href="#view/qb5/operate">2ch運用情報</a></li>
        <li><a href="#view/uni/operatex">運用情報臨時</a></li>
        <li><a href="#view/qb5/sec2ch">2ch規制情報</a></li>
        <li><a href="#view/qb5/sec2chd">2ch規制議論</a></li>
        <li><a href="#view/qb5/saku2ch">削除要請</a></li>
        <li><a href="#view/qb5/saku">削除整理</a></li>
        <li><a href="#view/qb5/sakud">削除議論</a></li>
        <li><a href="#view/qb5/sakukb">削除知恵袋</a></li>
    </ul>

    <!--[ 馴れ合い ]-->
    <h3>馴れ合い</h3>
    <ul>
        <li><a href="#view/toro/intro">自己紹介</a></li>
        <li><a href="#view/kohada/honobono">ほのぼの</a></li>
        <li><a href="#view/kohada/yume">夢・独り言</a></li>
        <li><a href="#view/kohada/offmatrix">大規模OFF</a></li>
        <li><a href="#view/engawa/offreg">定期OFF</a></li>
        <li><a href="#view/toro/offevent">突発OFF</a></li>
    </ul>

    <!--[ AA ]-->
    <h3>AA</h3>
    <ul>
        <li><a href="#view/toro/aasaloon">AAサロン</a></li>
        <li><a href="#view/toro/mona">モナー</a></li>
        <li><a href="#view/engawa/nida">ニダー</a></li>
        <li><a href="#view/toro/aastory">AA長編</a></li>
        <li><a href="#view/toro/kao">顔文字</a></li>
    </ul>

    <!--[ 社会 ]-->
    <h3>社会</h3>
    <ul>
        <li><a href="#view/anago/mass">マスコミ</a></li>
        <li><a href="#view/anago/youth">少年犯罪</a></li>
        <li><a href="#view/uni/disaster">自然災害</a></li>
        <li><a href="#view/anago/119">消防救急防災</a></li>
        <li><a href="#view/toro/gender">男性論女性論</a></li>
        <li><a href="#view/awabi/giin">議員・選挙</a></li>
        <li><a href="#view/ikura/manifesto">政治家語録</a></li>
        <li><a href="#view/uni/police">警察</a></li>
        <li><a href="#view/anago/court">裁判・司法</a></li>
        <li><a href="#view/engawa/saibanin">裁判員制度</a></li>
        <li><a href="#view/uni/soc">社会・世評</a></li>
        <li><a href="#view/anago/atom">環境・電力</a></li>
        <li><a href="#view/uni/energy">エネルギー</a></li>
        <li><a href="#view/anago/river">河川・ダム等</a></li>
        <li><a href="#view/uni/traf">運輸・交通</a></li>
        <li><a href="#view/engawa/way">道路・高速道路</a></li>
        <li><a href="#view/anago/develop">都市計画</a></li>
        <li><a href="#view/uni/recruit">就職</a></li>
        <li><a href="#view/kohada/job">転職</a></li>
        <li><a href="#view/uni/volunteer">ボランティア</a></li>
        <li><a href="#view/anago/welfare">介護・福祉</a></li>
        <li><a href="#view/uni/mayor">地方自治知事</a></li>
        <li><a href="#view/engawa/ftax">ふるさと納税</a></li>
        <li><a href="#view/uni/jsdf">自衛隊</a></li>
        <li><a href="#view/toro/nenga">郵便・郵政</a></li>
        <li><a href="#view/engawa/lifework">生涯学習</a></li>
        <li><a href="#view/anago/regulate">通信行政</a></li>
    </ul>

    <!--[ 会社・職業 ]-->
    <h3>会社・職業</h3>
    <ul>
        <li><a href="#view/uni/venture">ベンチャー</a></li>
        <li><a href="#view/toro/manage">経営学</a></li>
        <li><a href="#view/engawa/management">店舗運営</a></li>
        <li><a href="#view/engawa/estate">賃貸不動産</a></li>
        <li><a href="#view/uni/koumu">公務員</a></li>
        <li><a href="#view/engawa/shikaku">法律勉強相談</a></li>
        <li><a href="#view/ikura/lic">資格全般</a></li>
        <li><a href="#view/engawa/haken">派遣業界</a></li>
        <li><a href="#view/anago/hoken">保険業界</a></li>
        <li><a href="#view/toro/tax">税金経理会計</a></li>
        <li><a href="#view/kohada/exam">会計全般試験</a></li>
        <li><a href="#view/anago/hosp">病院・医者</a></li>
        <li><a href="#view/anago/bio">医療業界</a></li>
        <li><a href="#view/anago/hikari">光通信</a></li>
        <li><a href="#view/engawa/dtp">DTP・印刷</a></li>
        <li><a href="#view/kohada/part">アルバイト</a></li>
        <li><a href="#view/anago/koukoku">広告業界</a></li>
        <li><a href="#view/anago/agri">農林水産業</a></li>
        <li><a href="#view/engawa/build">建設住宅業界</a></li>
        <li><a href="#view/engawa/industry">製造業界</a></li>
        <li><a href="#view/ikura/peko">食品業界・問題</a></li>
    </ul>

    <!--[ 裏社会 ]-->
    <h3>裏社会</h3>
    <ul>
        <li><a href="#view/awabi/company">ちくり裏事情</a></li>
        <li><a href="#view/uni/bouhan">防犯・詐欺対策</a></li>
        <li><a href="#view/toro/antispam">架空請求・spam</a></li>
        <li><a href="#view/anago/ihou">薬・違法</a></li>
        <li><a href="#view/anago/ihan">違反の潰し方</a></li>
    </ul>

    <!--[ 文化 ]-->
    <h3>文化</h3>
    <ul>
        <li><a href="#view/ikura/expo">万博・地方博</a></li>
        <li><a href="#view/engawa/subcal">サブカル</a></li>
        <li><a href="#view/toro/bun">創作文芸</a></li>
        <li><a href="#view/engawa/mitemite">創作発表</a></li>
        <li><a href="#view/toro/poem">詩・ポエム</a></li>
        <li><a href="#view/anago/rongo">名言・格言</a></li>
        <li><a href="#view/awabi/movie">映画一般・8mm</a></li>
        <li><a href="#view/awabi/cinema">映画作品・人</a></li>
        <li><a href="#view/uni/rmovie">懐かし邦画</a></li>
        <li><a href="#view/uni/kinema">懐かし洋画</a></li>
        <li><a href="#view/toro/occult">オカルト</a></li>
        <li><a href="#view/ikura/esp">超能力</a></li>
        <li><a href="#view/toro/sfx">特撮！</a></li>
        <li><a href="#view/uni/rsfx">昭和特撮</a></li>
        <li><a href="#view/awabi/drama">演劇・舞台役者</a></li>
        <li><a href="#view/awabi/siki">宝塚・四季</a></li>
        <li><a href="#view/engawa/fortune">占い</a></li>
        <li><a href="#view/engawa/uranai">占術理論実践</a></li>
        <li><a href="#view/ikura/kyoto">神社・仏閣</a></li>
        <li><a href="#view/awabi/gallery">美術鑑賞</a></li>
        <li><a href="#view/awabi/rakugo">伝統芸能</a></li>
        <li><a href="#view/anago/ruins">世界遺産</a></li>
        <li><a href="#view/anago/emperor">皇室・王侯貴族</a></li>
    </ul>

    <!--[ 学問・理系 ]-->
    <h3>学問・理系</h3>
    <ul>
        <li><a href="#view/uni/rikei">理系全般</a></li>
        <li><a href="#view/uni/sci">物理</a></li>
        <li><a href="#view/uni/life">生物</a></li>
        <li><a href="#view/ikura/bake">化学</a></li>
        <li><a href="#view/ikura/kikai">機械・工学</a></li>
        <li><a href="#view/uni/denki">電気・電子</a></li>
        <li><a href="#view/uni/robot">ロボット技術</a></li>
        <li><a href="#view/ikura/infosys">情報システム</a></li>
        <li><a href="#view/uni/informatics">情報学</a></li>
        <li><a href="#view/ikura/sim">シミュレート</a></li>
        <li><a href="#view/ikura/nougaku">農学</a></li>
        <li><a href="#view/ikura/sky">天文・気象</a></li>
        <li><a href="#view/uni/galileo">宇宙</a></li>
        <li><a href="#view/engawa/doctor">医歯薬看護</a></li>
        <li><a href="#view/uni/kampo">東洋医学</a></li>
        <li><a href="#view/uni/math">数学</a></li>
        <li><a href="#view/ikura/doboku">土木・建築</a></li>
        <li><a href="#view/ikura/material">材料物性</a></li>
        <li><a href="#view/toro/space">航空・船舶</a></li>
        <li><a href="#view/uni/future">未来技術</a></li>
        <li><a href="#view/uni/wild">野生生物</a></li>
        <li><a href="#view/uni/earth">地球科学</a></li>
    </ul>

    <!--[ 学問・文系 ]-->
    <h3>学問・文系</h3>
    <ul>
        <li><a href="#view/awabi/psycho">心理学</a></li>
        <li><a href="#view/awabi/gengo">言語学</a></li>
        <li><a href="#view/anago/dialect">方言</a></li>
        <li><a href="#view/awabi/pedagogy">教育学</a></li>
        <li><a href="#view/awabi/sociology">社会学</a></li>
        <li><a href="#view/awabi/economics">経済学</a></li>
        <li><a href="#view/toro/book">文学</a></li>
        <li><a href="#view/toro/poetics">詩文学</a></li>
        <li><a href="#view/awabi/history">日本史</a></li>
        <li><a href="#view/awabi/history2">日本近代史</a></li>
        <li><a href="#view/awabi/whis">世界史</a></li>
        <li><a href="#view/awabi/archeology">考古学</a></li>
        <li><a href="#view/awabi/min">民俗・神話学</a></li>
        <li><a href="#view/awabi/kobun">古文・漢文</a></li>
        <li><a href="#view/awabi/english">ENGLISH</a></li>
        <li><a href="#view/awabi/usa">アメリカ</a></li>
        <li><a href="#view/awabi/korea">ハングル</a></li>
        <li><a href="#view/awabi/china">中国</a></li>
        <li><a href="#view/awabi/taiwan">台湾</a></li>
        <li><a href="#view/awabi/geo">地理・人類学</a></li>
        <li><a href="#view/ikura/chiri">地理お国自慢</a></li>
        <li><a href="#view/awabi/gogaku">外国語</a></li>
        <li><a href="#view/awabi/art">芸術デザイン</a></li>
        <li><a href="#view/awabi/philo">哲学</a></li>
        <li><a href="#view/awabi/jurisp">法学</a></li>
        <li><a href="#view/kohada/shihou">司法試験</a></li>
    </ul>

    <!--[ 家電製品 ]-->
    <h3>家電製品</h3>
    <ul>
        <li><a href="#view/awabi/kaden">家電製品</a></li>
        <li><a href="#view/ikura/wm">ポータブルAV</a></li>
        <li><a href="#view/ikura/vcamera">ビデオカメラ</a></li>
        <li><a href="#view/ikura/bakery">調理家電</a></li>
        <li><a href="#view/ikura/toilet">シャワートイレ</a></li>
        <li><a href="#view/awabi/sony">ソニー</a></li>
        <li><a href="#view/engawa/apple2">Apple</a></li>
        <li><a href="#view/awabi/phs">携帯・ＰＨＳ</a></li>
        <li><a href="#view/awabi/keitai">携帯機種</a></li>
        <li><a href="#view/anago/smartphone">スマートフォン</a></li>
        <li><a href="#view/anago/iPhone">iPhone</a></li>
        <li><a href="#view/anago/android">Android</a></li>
        <li><a href="#view/awabi/chakumelo">携帯コンテンツ</a></li>
        <li><a href="#view/hayabusa3/appli">携帯電話ゲー</a></li>
        <li><a href="#view/anago/applism">スマホアプリ</a></li>
        <li><a href="#view/awabi/dgoods">デジタルモノ</a></li>
        <li><a href="#view/awabi/camera">カメラ</a></li>
        <li><a href="#view/toro/dcamera">デジカメ</a></li>
        <li><a href="#view/toro/av">AV機器</a></li>
        <li><a href="#view/awabi/pav">ピュアAU</a></li>
        <li><a href="#view/uni/battery">電池等</a></li>
    </ul>


    <!--[ 政治経済 ]-->
    <h3>政治経済</h3>
    <ul>
        <li><a href="#view/toro/seiji">政治</a></li>
        <li><a href="#view/anago/diplomacy">外交政策</a></li>
        <li><a href="#view/anago/trafficpolicy">交通政策</a></li>
        <li><a href="#view/kohada/eco">経済</a></li>
        <li><a href="#view/anago/stock">株式</a></li>
        <li><a href="#view/engawa/stockb">株個別銘柄</a></li>
        <li><a href="#view/kohada/market">投資一般</a></li>
        <li><a href="#view/hayabusa3/livemarket1">市況1</a></li>
        <li><a href="#view/hayabusa3/livemarket2">市況2</a></li>
        <li><a href="#view/engawa/deal">先物</a></li>
        <li><a href="#view/anago/koumei">創価・公明</a></li>
        <li><a href="#view/toro/kyousan">共産党</a></li>
        <li><a href="#view/anago/sisou">政治思想</a></li>
        <li><a href="#view/anago/kova">ゴーマニズム</a></li>
        <li><a href="#view/engawa/money">金融</a></li>
    </ul>

    <!--[ 食文化 ]-->
    <h3>食文化</h3>
    <ul>
        <li><a href="#view/ikura/food">食べ物</a></li>
        <li><a href="#view/ikura/candy">お菓子</a></li>
        <li><a href="#view/ikura/juice">ソフトドリンク</a></li>
        <li><a href="#view/ikura/pot">お茶・珈琲</a></li>
        <li><a href="#view/ikura/cook">料理</a></li>
        <li><a href="#view/anago/okome">米・米加工品</a></li>
        <li><a href="#view/engawa/yasai">野菜・果物</a></li>
        <li><a href="#view/uni/kinoko">きのこ</a></li>
        <li><a href="#view/ikura/salt">調味料</a></li>
        <li><a href="#view/toro/ramen">ラーメン</a></li>
        <li><a href="#view/ikura/nissin">インスタント麺</a></li>
        <li><a href="#view/ikura/jnoodle">そば・うどん</a></li>
        <li><a href="#view/ikura/sushi">おすし</a></li>
        <li><a href="#view/ikura/don">丼</a></li>
        <li><a href="#view/ikura/curry">カレー</a></li>
        <li><a href="#view/ikura/bread">パン</a></li>
        <li><a href="#view/ikura/pasta">パスタ・ピザ</a></li>
        <li><a href="#view/ikura/kbbq">焼肉</a></li>
        <li><a href="#view/ikura/konamono">たこ焼き等</a></li>
        <li><a href="#view/ikura/toba">珍味</a></li>
        <li><a href="#view/ikura/gurume">グルメ外食</a></li>
        <li><a href="#view/ikura/famires">ファミレス</a></li>
        <li><a href="#view/ikura/jfoods">Ｂ級グルメ</a></li>
        <li><a href="#view/ikura/bento">弁当・駅弁</a></li>
        <li><a href="#view/toro/sake">お酒・Bar</a></li>
        <li><a href="#view/ikura/wine">ワイン</a></li>
        <li><a href="#view/ikura/drunk">居酒屋</a></li>
        <li><a href="#view/ikura/recipe">レシピ</a></li>
        <li><a href="#view/ikura/patissier">製菓・製パン</a></li>
        <li><a href="#view/ikura/supplement">健康食・サプリ</a></li>
    </ul>

    <!--[ 生活 ]-->
    <h3>生活</h3>
    <ul>
        <li><a href="#view/uni/lifesaloon">生活サロン</a></li>
        <li><a href="#view/kohada/kankon">生活全般</a></li>
        <li><a href="#view/uni/okiraku">その日暮らし</a></li>
        <li><a href="#view/uni/homealone">一人暮らし</a></li>
        <li><a href="#view/uni/countrylife">田舎暮らし</a></li>
        <li><a href="#view/anago/debt">借金生活</a></li>
        <li><a href="#view/uni/inpatient">入院生活</a></li>
        <li><a href="#view/uni/sportsclub">スポーツクラブ</a></li>
        <li><a href="#view/awabi/bath">お風呂・銭湯</a></li>
        <li><a href="#view/uni/anniversary">記念日</a></li>
        <li><a href="#view/uni/sousai">冠婚葬祭</a></li>
        <li><a href="#view/toro/baby">育児</a></li>
        <li><a href="#view/uni/kagu">家具</a></li>
        <li><a href="#view/awabi/diy">DIY</a></li>
        <li><a href="#view/kohada/shop">通販・買い物</a></li>
        <li><a href="#view/anago/hcenter">家電等量販店</a></li>
        <li><a href="#view/engawa/used">中古リサイクル</a></li>
        <li><a href="#view/anago/rental">レンタル</a></li>
        <li><a href="#view/uni/trend">流行</a></li>
        <li><a href="#view/anago/ticketplus">Walker+</a></li>
        <li><a href="#view/uni/model">モデル</a></li>
        <li><a href="#view/toro/fashion">ファッション</a></li>
        <li><a href="#view/engawa/underwear">下着</a></li>
        <li><a href="#view/uni/shoes">靴</a></li>
        <li><a href="#view/uni/female">化粧</a></li>
        <li><a href="#view/kohada/diet">美容</a></li>
        <li><a href="#view/awabi/mensbeauty">男の美容・化粧</a></li>
        <li><a href="#view/anago/aroma">香水芳香消臭</a></li>
        <li><a href="#view/uni/seikei">美容整形</a></li>
        <li><a href="#view/uni/shapeup">ダイエット</a></li>
        <li><a href="#view/uni/world">一般海外生活</a></li>
        <li><a href="#view/uni/northa">北米海外生活</a></li>
        <li><a href="#view/uni/credit">クレジット</a></li>
        <li><a href="#view/awabi/point">ポイント・マイル</a></li>
        <li><a href="#view/ikura/cafe30">３０代</a></li>
        <li><a href="#view/toro/cafe40">４０代</a></li>
        <li><a href="#view/ikura/cafe50">５０代以上</a></li>
        <li><a href="#view/anago/cafe60">６０歳以上</a></li>
        <li><a href="#view/awabi/live">家庭</a></li>
        <li><a href="#view/uni/souji">掃除全般</a></li>
        <li><a href="#view/uni/goki">害虫害獣対策</a></li>
        <li><a href="#view/uni/radiation">放射能</a></li>
        <li><a href="#view/engawa/kechi2">ドケチ</a></li>
        <li><a href="#view/uni/chance">懸賞</a></li>
        <li><a href="#view/uni/cigaret">たばこ</a></li>
        <li><a href="#view/uni/megane">めがね</a></li>
        <li><a href="#view/uni/yuusen">マイライン</a></li>
        <li><a href="#view/uni/conv">コンビニ</a></li>
        <li><a href="#view/uni/sale">バーゲン</a></li>
        <li><a href="#view/awabi/stationery">文房具</a></li>
        <li><a href="#view/uni/class">習い事</a></li>
    </ul>

    <!--[ ネタ雑談 ]-->
    <h3>ネタ雑談</h3>
    <ul>
        <li><a href="#view/toro/shar">新シャア専用</a></li>
        <li><a href="#view/kohada/x3">旧シャア専用</a></li>
        <li><a href="#view/ikura/denpa">電波・お花畑</a></li>
        <li><a href="#view/anago/owarai">お笑い小咄</a></li>
        <li><a href="#view/kohada/2chbook">同人ノウハウ</a></li>
        <li><a href="#view/kohada/uwasa">噂話</a></li>
        <li><a href="#view/kohada/charaneta">キャラネタ</a></li>
        <li><a href="#view/kohada/charaneta2">なりきりネタ</a></li>
        <li><a href="#view/ikura/mascot">マスコットキャラ</a></li>
        <li><a href="#view/uni/senji">戦時</a></li>
    </ul>

    <!--[ カテゴリ雑談 ]-->
    <h3>カテゴリ雑談</h3>
    <ul>
        <li><a href="#view/toro/lovesaloon">恋愛サロン</a></li>
        <li><a href="#view/toro/ex">カップル</a></li>
        <li><a href="#view/uni/x1">×１</a></li>
        <li><a href="#view/kohada/gaysaloon">同性愛サロン</a></li>
        <li><a href="#view/engawa/nohodame">のほほんダメ</a></li>
        <li><a href="#view/kohada/dame">無職・だめ</a></li>
        <li><a href="#view/uni/loser">負け組</a></li>
        <li><a href="#view/ikura/hikky">ヒッキー</a></li>
        <li><a href="#view/toro/mental">メンヘルサロン</a></li>
        <li><a href="#view/ikura/single">独身貴族</a></li>
        <li><a href="#view/engawa/wom">女性</a></li>
        <li><a href="#view/engawa/sfe">独身女性限定</a></li>
        <li><a href="#view/kohada/wmotenai">もてない女</a></li>
        <li><a href="#view/ikura/ms">既婚女性</a></li>
        <li><a href="#view/awabi/male">独身男性</a></li>
        <li><a href="#view/ikura/motetai">もてたい男</a></li>
        <li><a href="#view/toro/motenai">モテない男性</a></li>
        <li><a href="#view/uni/alone">孤独な男性</a></li>
        <li><a href="#view/engawa/tomorrow">既婚男性</a></li>
        <li><a href="#view/kohada/employee">リーマン</a></li>
        <li><a href="#view/ikura/campus">大学生活</a></li>
        <li><a href="#view/uni/student">大学学部・研究</a></li>
        <li><a href="#view/engawa/otaku">おたく</a></li>
        <li><a href="#view/ikura/nendai">年代別</a></li>
        <li><a href="#view/uni/sepia">セピア</a></li>
        <li><a href="#view/kohada/gag">駄洒落</a></li>
        <li><a href="#view/kohada/575">しりとり</a></li>
        <li><a href="#view/kohada/tanka">五七五・短歌</a></li>
        <li><a href="#view/kohada/4649">アウトロー</a></li>
        <li><a href="#view/engawa/hidari">左利き</a></li>
    </ul>

    <!--[ 実況ch ]-->
    <h3>実況ch</h3>
    <ul>
        <li><a href="#view/headline/bbylive">実況headline</a></li>
        <li><a href="#view/epg/tv2chwiki">テレビ番組欄</a></li>
        <li><a href="#view/hayabusa/livesaturn">なんでも実況S</a></li>
        <li><a href="#view/hayabusa/livevenus">なんでも実況V</a></li>
        <li><a href="#view/hayabusa/livejupiter">なんでも実況J</a></li>
        <li><a href="#view/kohada/liveuranus">なんでも実況U</a></li>
        <li><a href="#view/hayabusa/endless">実況ch</a></li>
        <li><a href="#view/hayabusa2/weekly">番組ch</a></li>
        <li><a href="#view/hayabusa2/livewkwest">番組ch(西日本)</a></li>
        <li><a href="#view/hayabusa2/livenhk">番組ch(NHK)</a></li>
        <li><a href="#view/hayabusa2/liveetv">番組ch(教育)</a></li>
        <li><a href="#view/hayabusa2/liventv">番組ch(NTV)</a></li>
        <li><a href="#view/hayabusa2/livetbs">番組ch(TBS)</a></li>
        <li><a href="#view/hayabusa2/livecx">番組ch(フジ)</a></li>
        <li><a href="#view/hayabusa2/liveanb">番組ch(朝日)</a></li>
        <li><a href="#view/hayabusa2/livetx">番組ch(TX)</a></li>
        <li><a href="#view/hayabusa2/livebs">BS実況(NHK)</a></li>
        <li><a href="#view/hayabusa/livebs2">BS実況(無料)</a></li>
        <li><a href="#view/hayabusa2/livewowow">BS実況(有料)</a></li>
        <li><a href="#view/hayabusa2/liveskyp">スカパー実況</a></li>
        <li><a href="#view/hayabusa2/liveradio">ラジオ実況</a></li>
        <li><a href="#view/hayabusa/liveanime">アニメ特撮実況</a></li>
        <li><a href="#view/hayabusa/kokkai">議会選挙実況</a></li>
        <li><a href="#view/hayabusa/dome">スポーツch</a></li>
        <li><a href="#view/hayabusa/livebase">野球ch</a></li>
        <li><a href="#view/hayabusa/livefoot">サッカーch</a></li>
        <li><a href="#view/hayabusa/oonna">五輪実況(女)</a></li>
        <li><a href="#view/hayabusa/ootoko">五輪実況(男)</a></li>
        <li><a href="#view/hayabusa/dancesite">芸能ch</a></li>
        <li><a href="#view/hayabusa/festival">お祭りch</a></li>
        <li><a href="#view/kohada/liveplus">ニュース実況+</a></li>
        <li><a href="#view/uni/jasmine">streaming実況</a></li>
        <li><a href="#view/hayabusa3/livemarket1">市況1</a></li>
        <li><a href="#view/hayabusa3/livemarket2">市況2</a></li>
    </ul>

    <!--[ 受験・学校 ]-->
    <h3>受験・学校</h3>
    <ul>
        <li><a href="#view/engawa/edu">教育・先生</a></li>
        <li><a href="#view/kohada/jsaloon">大学受験サロン</a></li>
        <li><a href="#view/kohada/kouri">大学受験</a></li>
        <li><a href="#view/engawa/juku">学習塾・予備校</a></li>
        <li><a href="#view/engawa/ojyuken">お受験</a></li>
        <li><a href="#view/engawa/senmon">専門学校</a></li>
        <li><a href="#view/engawa/design">美術系学校</a></li>
        <li><a href="#view/engawa/musicology">音楽系学校</a></li>
        <li><a href="#view/kohada/govexam">公務員試験</a></li>
    </ul>

    <!--[ 趣味 ]-->
    <h3>趣味</h3>
    <ul>
        <li><a href="#view/awabi/hobby">趣味一般</a></li>
        <li><a href="#view/ikura/magic">手品・曲芸</a></li>
        <li><a href="#view/awabi/card">トランプ</a></li>
        <li><a href="#view/ikura/puzzle">パズル</a></li>
        <li><a href="#view/awabi/craft">ハンドクラフト</a></li>
        <li><a href="#view/toro/toy">おもちゃ</a></li>
        <li><a href="#view/awabi/zoid">ゾイド</a></li>
        <li><a href="#view/awabi/watch">時計・小物</a></li>
        <li><a href="#view/awabi/smoking">煙草銘柄・器具</a></li>
        <li><a href="#view/ikura/knife">刃物</a></li>
        <li><a href="#view/awabi/doll">お人形</a></li>
        <li><a href="#view/awabi/engei">園芸</a></li>
        <li><a href="#view/engawa/dog">犬猫大好き</a></li>
        <li><a href="#view/engawa/pet">ペット大好き</a></li>
        <li><a href="#view/awabi/aquarium">アクアリウム</a></li>
        <li><a href="#view/ikura/goldenfish">日本の淡水魚</a></li>
        <li><a href="#view/ikura/insect">昆虫・節足動物</a></li>
        <li><a href="#view/ikura/cat">生き物苦手</a></li>
        <li><a href="#view/anago/bike">バイク</a></li>
        <li><a href="#view/kohada/car">車</a></li>
        <li><a href="#view/engawa/kcar">軽自動車</a></li>
        <li><a href="#view/kohada/auto">車種・メーカー</a></li>
        <li><a href="#view/engawa/usedcar">中古車</a></li>
        <li><a href="#view/engawa/truck">大型・特殊車両</a></li>
        <li><a href="#view/toro/army">軍事</a></li>
        <li><a href="#view/awabi/radio">無線</a></li>
        <li><a href="#view/toro/train">鉄道総合</a></li>
        <li><a href="#view/toro/rail">鉄道路線・車両</a></li>
        <li><a href="#view/engawa/jnr">鉄道懐かし</a></li>
        <li><a href="#view/ikura/ice">鉄道(海外)</a></li>
        <li><a href="#view/ikura/gage">鉄道模型</a></li>
        <li><a href="#view/engawa/bus">バス・バス路線</a></li>
        <li><a href="#view/awabi/airline">エアライン</a></li>
        <li><a href="#view/awabi/mokei">模型・プラモ</a></li>
        <li><a href="#view/ikura/radiocontrol">RC（ラジコン)</a></li>
        <li><a href="#view/awabi/gun">サバゲー</a></li>
        <li><a href="#view/ikura/fireworks">花火</a></li>
        <li><a href="#view/engawa/warhis">三国志・戦国</a></li>
        <li><a href="#view/ikura/chinahero">中国英雄</a></li>
        <li><a href="#view/ikura/sengoku">戦国時代</a></li>
        <li><a href="#view/ikura/nanminhis">歴史難民</a></li>
        <li><a href="#view/awabi/dance">ダンス</a></li>
        <li><a href="#view/awabi/bird">野鳥観察</a></li>
        <li><a href="#view/awabi/collect">コレクション</a></li>
        <li><a href="#view/ikura/photo">写真撮影</a></li>
    </ul>

    <!--[ スポーツ一般 ]-->
    <h3>スポーツ一般</h3>
    <ul>
        <li><a href="#view/engawa/sposaloon">スポーツサロン</a></li>
        <li><a href="#view/engawa/sports">スポーツ</a></li>
        <li><a href="#view/engawa/rsports">懐かしスポーツ</a></li>
        <li><a href="#view/engawa/stadium">スポーツ施設</a></li>
        <li><a href="#view/kohada/athletics">陸上競技</a></li>
        <li><a href="#view/engawa/gymnastics">体操・新体操</a></li>
        <li><a href="#view/engawa/muscle">ウエイトトレ</a></li>
        <li><a href="#view/engawa/noroma">運動音痴</a></li>
        <li><a href="#view/engawa/wsports">冬スポーツ</a></li>
        <li><a href="#view/engawa/ski">スキースノボ</a></li>
        <li><a href="#view/toro/skate">スケート</a></li>
        <li><a href="#view/engawa/swim">水泳</a></li>
        <li><a href="#view/engawa/msports">マリンスポーツ</a></li>
        <li><a href="#view/engawa/boat">船スポーツ</a></li>
        <li><a href="#view/engawa/birdman">空スポーツ</a></li>
        <li><a href="#view/kohada/fish">釣り</a></li>
        <li><a href="#view/engawa/bass">バス釣り</a></li>
        <li><a href="#view/kohada/bicycle">自転車</a></li>
        <li><a href="#view/engawa/equestrian">乗馬・馬術</a></li>
        <li><a href="#view/engawa/f1">ﾓｰﾀｰｽﾎﾟｰﾂ</a></li>
        <li><a href="#view/engawa/olympic">オリンピック</a></li>
        <li><a href="#view/engawa/bullseye">的スポーツ</a></li>
        <li><a href="#view/engawa/parksports">公園スポーツ</a></li>
        <li><a href="#view/engawa/amespo">アメスポ</a></li>
        <li><a href="#view/engawa/cheerleading">チア</a></li>
        <li><a href="#view/engawa/xsports">xsports</a></li>
    </ul>

    <!--[ 球技 ]-->
    <h3>球技</h3>
    <ul>
        <li><a href="#view/uni/base">プロ野球</a></li>
        <li><a href="#view/kohada/npb">球界改革議論</a></li>
        <li><a href="#view/uni/meikyu">野球殿堂</a></li>
        <li><a href="#view/awabi/mlb">野球総合</a></li>
        <li><a href="#view/kohada/hsb">高校野球</a></li>
        <li><a href="#view/kohada/kyozin">アンチ球団</a></li>
        <li><a href="#view/ikura/soccer">国内サッカー</a></li>
        <li><a href="#view/kohada/eleven">日本代表蹴球</a></li>
        <li><a href="#view/uni/wc">ワールドカップ</a></li>
        <li><a href="#view/ikura/football">海外サッカー</a></li>
        <li><a href="#view/kohada/basket">バスケット</a></li>
        <li><a href="#view/engawa/tennis">テニス</a></li>
        <li><a href="#view/engawa/volley">バレーボール</a></li>
        <li><a href="#view/engawa/ovalball">ラグビー</a></li>
        <li><a href="#view/engawa/pingpong">卓球</a></li>
        <li><a href="#view/engawa/gutter">ボウリング</a></li>
        <li><a href="#view/engawa/golf">ゴルフ</a></li>
        <li><a href="#view/engawa/billiards">ビリヤード</a></li>
        <li><a href="#view/engawa/ballgame">その他球技</a></li>
    </ul>

    <!--[ 格闘技 ]-->
    <h3>格闘技</h3>
    <ul>
        <li><a href="#view/kohada/k1">格闘技</a></li>
        <li><a href="#view/kohada/wres">プロレス</a></li>
        <li><a href="#view/engawa/budou">武道・武芸</a></li>
        <li><a href="#view/kohada/boxing">ボクシング</a></li>
        <li><a href="#view/engawa/sumou">相撲</a></li>
        <li><a href="#view/engawa/jyudo">伝統武術</a></li>
    </ul>

    <!--[ 旅行・外出 ]-->
    <h3>旅行・外出</h3>
    <ul>
        <li><a href="#view/ikura/oversea">海外旅行</a></li>
        <li><a href="#view/anago/21oversea">危ない海外</a></li>
        <li><a href="#view/ikura/travel">国内旅行</a></li>
        <li><a href="#view/ikura/hotel">ホテル･旅館</a></li>
        <li><a href="#view/ikura/localfoods">土産物・特産物</a></li>
        <li><a href="#view/ikura/tropical">トロピカル</a></li>
        <li><a href="#view/ikura/onsen">温泉</a></li>
        <li><a href="#view/toro/park">遊園地</a></li>
        <li><a href="#view/ikura/zoo">動物園・水族館</a></li>
        <li><a href="#view/ikura/museum">博物館・美術館</a></li>
        <li><a href="#view/ikura/out">登山キャンプ</a></li>
    </ul>

    <!--[ テレビ等 ]-->
    <h3>テレビ等</h3>
    <ul>
        <li><a href="#view/anago/tvsaloon">テレビサロン</a></li>
        <li><a href="#view/uni/kouhaku">年末年始番組</a></li>
        <li><a href="#view/toro/tv">テレビ番組</a></li>
        <li><a href="#view/ikura/natsutv">懐かしテレビ</a></li>
        <li><a href="#view/awabi/tvd">テレビドラマ</a></li>
        <li><a href="#view/kohada/nhkdrama">大河ドラマ</a></li>
        <li><a href="#view/ikura/natsudora">懐かしドラマ</a></li>
        <li><a href="#view/anago/kin">時代劇</a></li>
        <li><a href="#view/anago/am">ラジオ番組</a></li>
        <li><a href="#view/uni/rradio">懐かしラジオ</a></li>
        <li><a href="#view/anago/tv2">海外テレビ</a></li>
        <li><a href="#view/uni/hanryu">韓流</a></li>
        <li><a href="#view/anago/cs">ケーブル放送</a></li>
        <li><a href="#view/anago/skyp">スカパー</a></li>
        <li><a href="#view/anago/bs">デジタル放送</a></li>
        <li><a href="#view/anago/nhk">NHK</a></li>
        <li><a href="#view/anago/cm">広告・ＣＭ</a></li>
    </ul>

    <!--[ 芸能 ]-->
    <h3>芸能</h3>
    <ul>
        <li><a href="#view/anago/geino">芸能</a></li>
        <li><a href="#view/anago/celebrity">海外芸能人</a></li>
        <li><a href="#view/uni/4sama">アジアエンタメ</a></li>
        <li><a href="#view/anago/kyon2">懐かし芸能人</a></li>
        <li><a href="#view/anago/actor">男性俳優</a></li>
        <li><a href="#view/anago/actress">女優</a></li>
        <li><a href="#view/anago/geinoj">U-15タレント</a></li>
        <li><a href="#view/toro/geinin">お笑い芸人</a></li>
        <li><a href="#view/kohada/ana">アナウンサー</a></li>
        <li><a href="#view/anago/ami">あみ＆あゆ</a></li>
        <li><a href="#view/anago/apple">椎名林檎</a></li>
        <li><a href="#view/anago/ainotane">モ娘（羊）</a></li>
        <li><a href="#view/anago/zurui">モ娘（鳩）</a></li>
        <li><a href="#view/anago/mendol">男性アイドル</a></li>
        <li><a href="#view/kohada/idol">女性アイドル</a></li>
        <li><a href="#view/awabi/akb">地下アイドル</a></li>
        <li><a href="#view/uni/ske">ローカルアイドル</a></li>
        <li><a href="#view/anago/jan">ジャニーズ</a></li>
        <li><a href="#view/anago/smap">スマップ</a></li>
        <li><a href="#view/anago/jr">ジャニーズ２</a></li>
        <li><a href="#view/anago/jr2">ジャニーズJr</a></li>
    </ul>

    <!--[ ギャンブル ]-->
    <h3>ギャンブル</h3>
    <ul>
        <li><a href="#view/anago/mj">麻雀・他</a></li>
        <li><a href="#view/kohada/pachi">パチンコサロン</a></li>
        <li><a href="#view/kohada/pachij">パチンコ店情報</a></li>
        <li><a href="#view/kohada/pachik">パチンコ機種等</a></li>
        <li><a href="#view/kohada/slot">スロットサロン</a></li>
        <li><a href="#view/kohada/slotj">スロット店情報</a></li>
        <li><a href="#view/anago/slotk">スロット機種</a></li>
        <li><a href="#view/awabi/keiba">競馬</a></li>
        <li><a href="#view/kohada/uma">競馬２</a></li>
        <li><a href="#view/engawa/keirin">競輪</a></li>
        <li><a href="#view/kohada/kyotei">競艇</a></li>
        <li><a href="#view/engawa/autorace">オートレース</a></li>
        <li><a href="#view/engawa/gamble">ギャンブル</a></li>
        <li><a href="#view/engawa/loto">宝くじ</a></li>
    </ul>

    <!--[ ゲーム ]-->
    <h3>ゲーム</h3>
    <ul>
        <li><a href="#view/toro/gsaloon">ゲームサロン</a></li>
        <li><a href="#view/awabi/gamenews">ゲーム速報</a></li>
        <li><a href="#view/kohada/gameover">家ゲー攻略</a></li>
        <li><a href="#view/kohada/goveract">家ゲACT攻略</a></li>
        <li><a href="#view/kohada/goverrpg">家ゲRPG攻略</a></li>
        <li><a href="#view/toro/gamerpg">家ゲーRPG</a></li>
        <li><a href="#view/kohada/ff">FF・ドラクエ</a></li>
        <li><a href="#view/kohada/gamesrpg">家ゲーSRPG</a></li>
        <li><a href="#view/toro/gamerobo">ロボットゲー</a></li>
        <li><a href="#view/toro/gal">ギャルゲー</a></li>
        <li><a href="#view/kohada/gboy">女向ゲー大人</a></li>
        <li><a href="#view/kohada/ggirl">女向ゲー一般</a></li>
        <li><a href="#view/kohada/gamespo">スポーツ・RACE</a></li>
        <li><a href="#view/kohada/gamehis">歴史ゲーム</a></li>
        <li><a href="#view/kohada/otoge">音ゲー</a></li>
        <li><a href="#view/ikura/gamefight">格闘ゲーム</a></li>
        <li><a href="#view/kohada/gamestg">シューティング</a></li>
        <li><a href="#view/kohada/gamef">PCアクション</a></li>
        <li><a href="#view/kohada/fly">フライトシム</a></li>
        <li><a href="#view/toro/famicom">家庭用ゲーム</a></li>
        <li><a href="#view/anago/zgame">家ゲーZ区分</a></li>
        <li><a href="#view/kohada/retro">レトロゲーム</a></li>
        <li><a href="#view/kohada/retro2">家ゲーレトロ</a></li>
        <li><a href="#view/kohada/game90">レトロ32bit以上</a></li>
        <li><a href="#view/toro/arc">アーケード</a></li>
        <li><a href="#view/anago/rarc">アケゲーレトロ</a></li>
        <li><a href="#view/kohada/amusement">メダル・プライズ</a></li>
        <li><a href="#view/kohada/gecen">ゲーセン</a></li>
        <li><a href="#view/anago/game">PCゲーム</a></li>
        <li><a href="#view/engawa/gameama">同人ゲーム</a></li>
        <li><a href="#view/uni/gameswf">ブラウザゲーム</a></li>
        <li><a href="#view/kohada/cgame">卓上ゲーム</a></li>
        <li><a href="#view/anago/tcg">TCG</a></li>
        <li><a href="#view/toro/bgame">将棋・チェス</a></li>
        <li><a href="#view/kohada/gamestones">囲碁・オセロ</a></li>
        <li><a href="#view/kohada/quiz">クイズ雑学</a></li>
        <li><a href="#view/anago/ghard">ハード・業界</a></li>
        <li><a href="#view/kohada/gameurawaza">裏技・改造</a></li>
        <li><a href="#view/kohada/gamechara">ゲームキャラ</a></li>
        <li><a href="#view/kohada/gamemusic">ゲーム音楽</a></li>
    </ul>

    <!--[ 携帯型ゲーム ]-->
    <h3>携帯型ゲーム</h3>
    <ul>
        <li><a href="#view/toro/handygame">携帯ゲーソフト</a></li>
        <li><a href="#view/kohada/handygover">携帯ゲー攻略</a></li>
        <li><a href="#view/toro/handygrpg">携帯ゲーRPG</a></li>
        <li><a href="#view/kohada/poke">ポケモン</a></li>
        <li><a href="#view/kohada/wifi">Wi-Fi</a></li>
        <li><a href="#view/kohada/rhandyg">携帯ゲーレトロ</a></li>
        <li><a href="#view/kohada/pokechara">携帯ゲーキャラ</a></li>
    </ul>

    <!--[ ネットゲーム ]-->
    <h3>ネットゲーム</h3>
    <ul>
        <li><a href="#view/engawa/mmonews">ネトゲ速報</a></li>
        <li><a href="#view/kohada/mmoqa">ネトゲ質問</a></li>
        <li><a href="#view/awabi/ogame">ネトゲ実況</a></li>
        <li><a href="#view/awabi/ogame2">ネトゲ実況2</a></li>
        <li><a href="#view/awabi/ogame3">ネトゲ実況3</a></li>
        <li><a href="#view/kohada/mmosaloon">ネトゲサロン</a></li>
        <li><a href="#view/toro/netgame">ネットゲーム</a></li>
        <li><a href="#view/toro/mmo">大規模MMO</a></li>
        <li><a href="#view/kohada/mmominor">小規模MMO</a></li>
    </ul>

    <!--[ 漫画・小説等 ]-->
    <h3>漫画・小説等</h3>
    <ul>
        <li><a href="#view/engawa/comicnews">アニメ漫画速報</a></li>
        <li><a href="#view/awabi/asaloon">アニメサロン</a></li>
        <li><a href="#view/uni/anime4vip">アニメサロンex</a></li>
        <li><a href="#view/toro/anime">アニメ</a></li>
        <li><a href="#view/ikura/anime2">アニメ２</a></li>
        <li><a href="#view/engawa/anime3">アニメ新作情報</a></li>
        <li><a href="#view/engawa/ranime">懐アニ昭和</a></li>
        <li><a href="#view/engawa/ranimeh">懐アニ平成</a></li>
        <li><a href="#view/kohada/animovie">アニメ映画</a></li>
        <li><a href="#view/engawa/anichara">アニキャラ総合</a></li>
        <li><a href="#view/ikura/anichara2">アニキャラ個別</a></li>
        <li><a href="#view/kohada/cosp">コスプレ</a></li>
        <li><a href="#view/uni/voice">声優総合</a></li>
        <li><a href="#view/ikura/voiceactor">声優個人</a></li>
        <li><a href="#view/kohada/doujin">同人</a></li>
        <li><a href="#view/uni/comiket">同人イベント</a></li>
        <li><a href="#view/kohada/csaloon">漫画サロン</a></li>
        <li><a href="#view/kohada/comic">漫画</a></li>
        <li><a href="#view/kohada/rcomic">懐かし漫画</a></li>
        <li><a href="#view/kohada/ymag">少年漫画</a></li>
        <li><a href="#view/ikura/wcomic">週刊少年漫画</a></li>
        <li><a href="#view/kohada/gcomic">少女漫画</a></li>
        <li><a href="#view/kohada/4koma">４コマ漫画</a></li>
        <li><a href="#view/kohada/cchara">漫画キャラ</a></li>
        <li><a href="#view/engawa/sakura">CCさくら</a></li>
        <li><a href="#view/engawa/eva">エヴァ</a></li>
        <li><a href="#view/kohada/cartoon">海外アニメ漫画</a></li>
        <li><a href="#view/kohada/iga">アニメ漫画業界</a></li>
        <li><a href="#view/toro/bookall">文芸書籍サロン</a></li>
        <li><a href="#view/toro/magazin">ライトノベル</a></li>
        <li><a href="#view/toro/mystery">ミステリー</a></li>
        <li><a href="#view/toro/sf">SF・FT・ホラー</a></li>
        <li><a href="#view/uni/litechara">文芸キャラ</a></li>
        <li><a href="#view/toro/zassi">雑誌</a></li>
        <li><a href="#view/toro/books">一般書籍</a></li>
        <li><a href="#view/uni/ebooks">電子書籍</a></li>
        <li><a href="#view/toro/ehon">絵本</a></li>
        <li><a href="#view/toro/juvenile">児童書</a></li>
        <li><a href="#view/toro/illustrator">イラストレーター</a></li>
    </ul>

    <!--[ 音楽 ]-->
    <h3>音楽</h3>
    <ul>
        <li><a href="#view/ikura/musicnews">芸能音楽速報</a></li>
        <li><a href="#view/awabi/msaloon">音楽サロン</a></li>
        <li><a href="#view/awabi/mjsaloon">邦楽サロン</a></li>
        <li><a href="#view/awabi/musicj">邦楽</a></li>
        <li><a href="#view/awabi/musicjm">邦楽男性ソロ</a></li>
        <li><a href="#view/awabi/musicjf">邦楽女性ソロ</a></li>
        <li><a href="#view/toro/musicjg">邦楽グループ</a></li>
        <li><a href="#view/uni/natsumeloj">懐メロ邦楽</a></li>
        <li><a href="#view/awabi/enka">演歌</a></li>
        <li><a href="#view/awabi/mesaloon">洋楽サロン</a></li>
        <li><a href="#view/awabi/musice">洋楽</a></li>
        <li><a href="#view/ikura/natsumeloe">懐メロ洋楽</a></li>
        <li><a href="#view/awabi/music">音楽一般</a></li>
        <li><a href="#view/uni/beatles">ビートルズ</a></li>
        <li><a href="#view/anago/visual">ヴィジュサロン</a></li>
        <li><a href="#view/toro/visualb">ヴィジュバンド</a></li>
        <li><a href="#view/awabi/dj">ＤＪ・クラブ</a></li>
        <li><a href="#view/awabi/disco">ディスコ</a></li>
        <li><a href="#view/awabi/randb">R&amp;B・SOUL</a></li>
        <li><a href="#view/awabi/punk">パンク</a></li>
        <li><a href="#view/awabi/hrhm">HR・HM</a></li>
        <li><a href="#view/awabi/hiphop">HIPHOP</a></li>
        <li><a href="#view/awabi/techno">TECHNO</a></li>
        <li><a href="#view/awabi/progre">プログレ</a></li>
        <li><a href="#view/ikura/healmusic">ヒーリング音楽</a></li>
        <li><a href="#view/awabi/wmusic">ワールド音楽</a></li>
        <li><a href="#view/anago/reggae">レゲエ</a></li>
        <li><a href="#view/awabi/classic">ジャズ</a></li>
        <li><a href="#view/ikura/fusion">フュージョン</a></li>
        <li><a href="#view/awabi/classical">クラシック</a></li>
        <li><a href="#view/awabi/contemporary">現代音楽</a></li>
        <li><a href="#view/awabi/nika">エレクトロニカ</a></li>
        <li><a href="#view/awabi/suisou">吹奏楽</a></li>
        <li><a href="#view/ikura/chorus">合唱</a></li>
        <li><a href="#view/awabi/doyo">童謡・唱歌</a></li>
        <li><a href="#view/kohada/asong">アニソン等</a></li>
        <li><a href="#view/ikura/soundtrack">サントラ</a></li>
        <li><a href="#view/awabi/karaok">カラオケ</a></li>
        <li><a href="#view/awabi/legend">伝説の</a></li>
        <li><a href="#view/awabi/minor">インディーズ</a></li>
        <li><a href="#view/ikura/band">バンド</a></li>
        <li><a href="#view/awabi/compose">楽器・作曲</a></li>
        <li><a href="#view/ikura/piano">鍵盤楽器</a></li>
    </ul>

    <!--[ 心と身体 ]-->
    <h3>心と身体</h3>
    <ul>
        <li><a href="#view/uni/healing">癒し</a></li>
        <li><a href="#view/uni/jinsei">人生相談</a></li>
        <li><a href="#view/uni/psy">心と宗教</a></li>
        <li><a href="#view/uni/body">身体・健康</a></li>
        <li><a href="#view/uni/stretch">マッサージ等</a></li>
        <li><a href="#view/engawa/handicap">ハンディキャップ</a></li>
        <li><a href="#view/engawa/cancer">癌・腫瘍</a></li>
        <li><a href="#view/uni/nanbyou">難病</a></li>
        <li><a href="#view/ikura/infection">新型感染症</a></li>
        <li><a href="#view/toro/hiv">HIVサロン</a></li>
        <li><a href="#view/uni/atopi">アトピー</a></li>
        <li><a href="#view/uni/allergy">アレルギー</a></li>
        <li><a href="#view/uni/hage">ハゲ・ズラ</a></li>
        <li><a href="#view/toro/pure">純情恋愛</a></li>
        <li><a href="#view/toro/furin">不倫・浮気</a></li>
        <li><a href="#view/toro/gay">同性愛</a></li>
        <li><a href="#view/toro/utu">メンタルヘルス</a></li>
        <li><a href="#view/toro/break">失恋</a></li>
    </ul>

    <!--[ PC等 ]-->
    <h3>PC等</h3>
    <ul>
        <li><a href="#view/engawa/pc2nanmin">PCサロン</a></li>
        <li><a href="#view/kohada/pcnews">PCニュース</a></li>
        <li><a href="#view/toro/win">Windows</a></li>
        <li><a href="#view/engawa/jobs">旧・mac</a></li>
        <li><a href="#view/anago/mac">新・mac</a></li>
        <li><a href="#view/kohada/os">OS</a></li>
        <li><a href="#view/toro/desktop">デスクトップ</a></li>
        <li><a href="#view/kohada/pc">パソコン一般</a></li>
        <li><a href="#view/anago/notepc">ノートPC</a></li>
        <li><a href="#view/anago/jisaku">自作PC</a></li>
        <li><a href="#view/kohada/printer">プリンタ</a></li>
        <li><a href="#view/toro/hard">ハードウェア</a></li>
        <li><a href="#view/toro/cdr">CD-R,DVD</a></li>
        <li><a href="#view/anago/software">ソフトウェア</a></li>
        <li><a href="#view/anago/mobile">モバイル</a></li>
        <li><a href="#view/toro/bsoft">ビジネスsoft</a></li>
        <li><a href="#view/toro/unix">UNIX</a></li>
        <li><a href="#view/toro/db">データベース</a></li>
        <li><a href="#view/engawa/linux">Linux</a></li>
        <li><a href="#view/kohada/prog">プログラマー</a></li>
        <li><a href="#view/toro/tech">プログラム</a></li>
        <li><a href="#view/toro/cg">ＣＧ</a></li>
        <li><a href="#view/anago/dtm">DTM</a></li>
        <li><a href="#view/toro/avi">DTV</a></li>
        <li><a href="#view/toro/swf">FLASH</a></li>
        <li><a href="#view/toro/gamedev">ゲ製作技術</a></li>
        <li><a href="#view/ikura/i4004">昔のPC</a></li>
    </ul>

    <!--[ ネット関係 ]-->
    <h3>ネット関係</h3>
    <ul>
        <li><a href="#view/toro/internet">インターネット</a></li>
        <li><a href="#view/awabi/download">Download</a></li>
        <li><a href="#view/toro/hp">Web制作</a></li>
        <li><a href="#view/toro/affiliate">Web収入</a></li>
        <li><a href="#view/toro/hosting">レンタル鯖</a></li>
        <li><a href="#view/engawa/mysv">自宅サーバ</a></li>
        <li><a href="#view/kohada/php">WebProg</a></li>
        <li><a href="#view/toro/hack">ネットワーク</a></li>
        <li><a href="#view/kohada/sec">セキュリティ</a></li>
        <li><a href="#view/engawa/network">通信技術</a></li>
        <li><a href="#view/ipv6/ipv6">IPv6</a></li>
        <li><a href="#view/toro/friend">ポスペ・irc</a></li>
        <li><a href="#view/engawa/isp">プロバイダー</a></li>
        <li><a href="#view/engawa/netspot">ネットカフェ</a></li>
        <li><a href="#view/kohada/nifty">Nifty</a></li>
        <li><a href="#view/toro/google">Google</a></li>
        <li><a href="#view/engawa/mmag">メルマガ</a></li>
        <li><a href="#view/kohada/nanmin">難民</a></li>
        <li><a href="#view/engawa/ad">宣伝掲示板</a></li>
        <li><a href="#view/toro/esite">ネットサービス</a></li>
        <li><a href="#view/anago/streaming">YouTube</a></li>
        <li><a href="#view/engawa/mstreaming">携帯動画</a></li>
        <li><a href="#view/awabi/mdis">音楽配信</a></li>
        <li><a href="#view/hayabusa/netradio">ネットラジオ等</a></li>
        <li><a href="#view/toro/blog">ブログ</a></li>
        <li><a href="#view/anago/sns">ソーシャルネット</a></li>
        <li><a href="#view/awabi/net">ネットwatch</a></li>
        <li><a href="#view/uni/twwatch">ツイッター観察</a></li>
        <li><a href="#view/anago/yahoo">オークション</a></li>
        <li><a href="#view/kohada/nntp">nntp</a></li>
    </ul>

    <!--[ 雑談系２ ]-->
    <h3>雑談系２</h3>
    <ul>
        <li><a href="#view/ikura/bobby">おいらロビー</a></li>
        <li><a href="#view/anago/lobby">ロビー</a></li>
        <li><a href="#view/ikura/maru">●</a></li>
        <li><a href="#view/awabi/mog2">なんでもあり</a></li>
        <li><a href="#view/ikura/mukashi">昔</a></li>
        <li><a href="#view/toro/kitchen">厨房！</a></li>
        <li><a href="#view/anago/tubo">最悪</a></li>
        <li><a href="#view/ikura/joke">学歴</a></li>
        <li><a href="#view/anago/shugi">主義・主張</a></li>
        <li><a href="#view/anago/rights">人権問題</a></li>
        <li><a href="#view/engawa/accuse">2ch批判要望</a></li>
        <li><a href="#view/hayabusa3/morningcoffee">モ娘（狼）</a></li>
        <li><a href="#view/engawa/ranking">格付け</a></li>
        <li><a href="#view/anago/record">新記録・珍記録</a></li>
        <li><a href="#view/toro/siberia">シベリア超速報</a></li>
        <li><a href="#view/hayabusa/news4vip">ニュー速VIP</a></li>
        <li><a href="#view/hayabusa3/news4viptasu">ニュー速VIP+</a></li>
        <li><a href="#view/engawa/poverty">ニュー速(嫌儲)</a></li>
        <li><a href="#view/anago/heaven4vip">天国</a></li>
        <li><a href="#view/anago/neet4vip">ニー速</a></li>
        <li><a href="#view/engawa/aniki">ガチホモ</a></li>
    </ul>

</div>
<!--[ End Category ]-->
