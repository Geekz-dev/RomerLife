/**
 *  RomerLife
 *  Mobile Script
 *
 *  @version 1.0
 *  @author R.SkuLL
 *
 *  Copyright (c) 2013 Geekz Web Development
*/
(function () {

    var ss = sessionStorage, ls = localStorage;

    // API
    var BORD_API ='/-/bord.php',
    THREAD_API = '/-/thread.php',
    UPDATE_API ='/-/update.php';

    /**
     *  Debug Mode
     *  0: off
     *  1: use json file
     *  2: storage is not used
     *  3: 1 and 2
    */
    var mode = 0;
    if ( mode !== 0 ) {
        if ( mode != 2 ) {
            BORD_API ='./debug/bord.json',
            THREAD_API = './debug/thread.json',
            UPDATE_API ='./debug/update.json';
        }
        if ( mode == 2 || mode == 3 ) {
            ss = false, ls = false;
        }
    }

    // Get Hash
    var getHash = function ( split ) {

        var url = location.hash;
        if ( split ) url = url.substr( 1 ).split( '/' );
        return url;

    }

    /**
     *  Router
    */
    var router = {

        loadPage: function () {

            $( window ).scrollTop( 0 );
            $( '#message' ).hide();
            $( '#menu' ).hide();
            $( '#tophome' ).hide();
            $( '#category' ).hide();
            $( '#threads' ).hide();
            $( '#thread' ).hide();

            view.loading();
            var hash = getHash( true );

            if ( hash[ 0 ] != '' ) $( '#menu' ).show();

            // TOP
            if ( hash[ 0 ] == '' ) {

                $( '#menu' ).show();
                $( '#tophome' ).show();
                var temp = './template/topHome/topHome.tpl';
                templateModel.loadTemplate( temp, 'topHome', function ( tpl ) {
                    json = null;
                    view.topHome( json, tpl );
                    view.loading( false );
                });

            } else // Category
            if ( hash[ 0 ] == 'cate' )  {

                $( '#category' ).show();
                var temp = './template/category/category.tpl';
                templateModel.loadTemplate( temp, 'category', function ( tpl ) {
                    json = null;
                    view.category( json, tpl );
                    view.loading( false );
                });

            } else
            if ( hash[ 0 ] == 'view' ) {

                // スレッド詳細
                if ( hash[ 3 ] != null ) {

                    $( '#thread' ).show();
                    var temp = './template/res/res.tpl';
                    templateModel.loadTemplate( temp, 'res', function ( tpl ) {
                        var param = { sd: hash[ 1 ], bord: hash[ 2 ], dat: hash[ 3 ] }
                        apiModel.loadJson( THREAD_API, param, function ( json ) {

                            if ( json.Status == 'ok' ) {
                                view.res( json, tpl );
                            } else
                            if ( json.Status == 'over 1000 Thread' ) {
                                view.message( 'スレッドが1000を越えました', true );
                            } else
                            if ( json.Status == 'Dat not found' ) {
                                view.message( 'ダット落ちしています', true );
                            } else {
                                view.message( '取得できませんでした', true );
                            }
                            view.loading( false );

                        });
                    });

                } else // スレッド一覧
                if ( hash[ 2 ] != null ){

                    $( '#threads' ).show();
                    var temp = './template/thread/thread.tpl';
                    templateModel.loadTemplate( temp, 'thread', function ( tpl ) {
                        var param = { sd: hash[ 1 ], bord: hash[ 2 ] }
                        apiModel.loadJson( BORD_API, param, function ( json ) {

                            if ( json.Status == 'ok' ) {
                                view.thread( json, tpl, 20 );
                            } else {
                                view.message( '取得できませんでした', true );
                            }
                            view.loading( false );

                        });
                    });

                } else {
                    // Error
                    view.message( 'ページがありません！' );
                    view.loading( false );
                }

            } else {
                // Error
                view.message( 'ページがありません！' );
                view.loading( false );
            }

        },

        update: function () {

            var hash = getHash( true );

            if ( hash[ 3 ] != null ) {

                view.loading();
                temp = './template/mobile/res.tpl';
                templateModel.loadTemplate( temp, 'res', function ( tpl ) {
                    var lastId = parseInt( $( '.res-num:last' ).text() ),
                    param = { sd: hash[ 1 ], bord: hash[ 2 ], dat: hash[ 3 ], maxId: lastId }
                    apiModel.loadJson( UPDATE_API, param, function ( json ) {

                        if ( json.Status == 'update ok' ) {
                            view.res( json, tpl, true );
                            view.message( '更新しました', true );
                        } else
                        if ( json.Status == 'no update' ) {
                            view.message( '更新なし', true );
                        } else {
                            view.message( '更新中にエラーが発生しました。', true );
                        }
                        view.loading( false );

                    }, true);
                });

            } else
            if ( hash[ 2 ] != null ) {

                view.loading();
                temp = './template/mobile/thread.tpl';
                templateModel.loadTemplate( temp, 'thread', function ( tpl ) {
                    var param = { sd: hash[ 1 ], bord: hash[ 2 ], dat: hash[ 3 ] }
                    apiModel.loadJson( BORD_API, param, function ( json ) {

                        if ( json.Status == 'ok' ) {
                            view.thread( json, tpl );
                            view.message( '更新しました', true );
                            view.loading( false );
                        } else {
                            view.message( '取得できませんでした', true );
                            view.loading( false );
                        }

                    }, true);

                });
            }

        },

        deleteData: function ( st, key ) {
            storage.deleteData( st, key );
            view.message( 'ストレージからデータを削除しました。', true );
        }

    }

    /**
     * API Model
    */
    var apiModel = {

        loadJson: function ( api, param, callback, load ) {

            var data = this.getData();

            if ( load || !data ) {
                $.ajax({
                    type: 'GET',
                    url: api,
                    cache: false,
                    data: param,
                    dataType: 'json',
                    success: function ( json ) {
                        console.log( 'サーバからJSONを取得しました。' );
                        apiModel.callback( json, callback );
                    },
                    error: function () {
                        view.message( 'エラーが発生しました。', true );
                        view.loading( false );
                    }
                });
            } else {
                console.log( 'ローカルからJSONを取得しました。' );
                this.callback( data, callback );
            }

        },

        callback: function ( json, callback ) {

            if ( json.Status == 'ok' ) {
                var hashURL = getHash(), key = storage.cacheKey(),
                type = 'cate', title = json.bord;
                if ( json.contents ) type = 'thread', title = json.title;
                apiModel.setData( json );
                historyModel.setData( type, { key: key, title: title, url: hashURL } );
            }
            callback( json );

        },

        jsons: {},

        getJson: function ( key ) {
            var key = key || storage.cacheKey();
            return this.jsons[ key ] || false;
        },

        setJson: function ( data, key ) {
            var key = key || storage.cacheKey();
            this.jsons[ key ] = data;
        },

        // public
        setData: function ( data, key ) {
            if ( ss ) {
                storage.setData( ss, 'json', data );
                console.log( 'セッションストレージにJSONを保存しました。' );
            } else {
                this.setJson( data, key );
                console.log( 'ObjectにJSONを保存しました。' );
            }
        },

        // public
        getData: function ( key ) {
            if ( ss ) {
                return storage.getData( ss, 'json', key );
            } else {
                return this.getJson( key );
            }
        },

        makeHash: function ( url ) {
            var keys = url.match( /http:\/\/(\w+)\.2ch\.net\/(\w+)\/dat\/?([0-9]+)?/ ),
            hash = '#view/' + keys[ 1 ] + '/' + keys[ 2 ] + '/' + keys[ 3 ];
            return hash;
        },

        margeRes: function ( json ) {
            var data = this.getData();
            if ( data ) {
                console.log( '更新分をマージ' );
                [].push.apply( data[ 'contents' ], json[ 'contents' ] );
                this.setData( data );
            } else {
                // レスを再取得
                console.log( 'キャッシュがなかったので再取得' );
                router.loadPage();
            }
        }

    }

    /**
     *  Template Model
    */
    var templateModel = {

        loadTemplate: function ( url, key, callback ) {
            var tpl = this.getData( key );
            if ( !tpl ) {
                $.ajax({
                    type: 'GET',
                    url: url,
                    success: function ( tpl ) {
                        console.log( 'サーバからテンプレートを取得しました。' );
                        templateModel.setData( tpl, key );
                        callback( tpl );
                    }
                });
            } else {
                console.log( 'ローカルからテンプレートを呼び出しました。' );
                callback( tpl );
            }
        },

        templates: {},

        // template getter
        getTemplate: function ( key ) {
            return this.templates[ key ] || false;
        },

        // template setter
        setTemplate: function ( data, key ) {
            this.templates[ key ] = data;
        },

        // public
        setData: function ( data, key ) {
            if ( ss ) {
                storage.setData( ss, 'str', data, key );
                console.log( 'セッションストレージにテンプレートを保存しました。' );
            } else {
                this.setTemplate( data, key );
                console.log( 'Objectにテンプレートを保存しました。' );
            }
        },

        // public
        getData: function ( key ) {
            if ( ss ) {
                return storage.getData( ss, 'str', key );
            } else {
                return this.getTemplate( key );
            }
        }

    }

    /**
     *  History Model
    */
    var historyModel = {

        setData: function ( type, data ) {
            var key = type + '-' + 'history',
            his = this.createJson( type, data );
            if( ls ) {
                storage.setData( ls, 'json', his, key );
                console.log( 'ストレージに履歴を保存' );
            } else {
                this.setHistory( his, key );
                console.log( 'Objectに履歴を保存' );
            }
        },

        getData: function ( type ) {
            var key = type + '-' + 'history';
            if ( ls ) {
                return storage.getData( ls, 'json', key );
            } else {
                return this.getHistory( key );
            }
        },

        createJson: function ( type, data ) {
            var his = this.getData( type );
            if ( !his ) {
                var newHis = {}
                newHis[data.key] = { title: data.title, url: data.url }
                return newHis;
            }
            if ( his[ data.key ] ) delete his[ data.key ];
            if ( this.length( his ) >= 6 ) for ( key in his ) { delete his[ key ]; break; }
            his[ data.key ] = { title: data.title, url: data.url };
            return his;
        },

        setHistory: function ( data, key ) {
            this.history[ key ] = data;
        },

        getHistory: function ( key ) {
            return this.history[ key ] || false;
        },

        deleteData: function ( type, eq ) {
            var key = type + '-' + 'history';
            // 番号がなければすべて削除
            if ( eq == '' ) {
                if ( ls ) {
                    storage.delete( ls, key );
                } else {
                    delete this.history[ key ];
                }
            } else {
                var his = this.getData( key );
            }
        },

        length: function ( obj ) {
            var len = 0;
            for ( key in obj ) len++;
            return len;
        },

        history: {}

    }

    /**
     *  View
    */
    var view = {

        loading: function ( flg ) {
            var loading = $( '#loading1' );
            if ( flg == null ) loading.show();
            if ( flg == false ) loading.hide();
        },

        message: function ( msg, hide ) {
            $( '#message' ).html( msg ).slideDown( 'fast' );
            if ( hide === true ) {
                setTimeout(function () {
                    $( '#message' ).slideUp( 'fast' );
                }, 1500);
            }
        },

        topHome: function ( json, tpl ) {
            $( '#tophome' ).html( tpl );
        },

        category: function ( json, tpl ) {
            $( '#category' ).html( tpl );
            $( '#header' ).html( 'RomerLife' );
            view.cateHistory();
            view.thHistory();
        },

        thread: function ( json, tpl, limit ) {

            var compiled = _.template( tpl );
            $( '#header' ).text( json.bord );
            $.each( json.thread, function( i, val ) {
                html = compiled({
                    title: val.title,
                    url: apiModel.makeHash( val.url ),
                    all: val.all,
                    createdAt: val.createdA
                });
                $( '#threads' ).append( html );
                if ( i >= limit ) return false;
            });

        },

        res: function ( json, tpl, update ) {

            var compiled = _.template( tpl );
            if ( !update ) $( '#header' ).text( json.title );
            $.each( json.contents, function ( i, val ) {
                html = compiled({
                    resNum: val.resid,
                    userName: val.name,
                    resText: val.res,
                    createdAt: val.createdAt,
                    userId: val.id
                });
                if ( update ) apiModel.margeRes( json );
                $( '#thread' ).append( html );
            });

        },

        cateHistory: function () {

            var cateHis = historyModel.getData( 'cate' ),
            list = $( '<ul></ul>' );

            $.each( cateHis, function ( i, val ) {
                var html = '<li><a href="' + val.url + '">' + val.title + '</a></li>'
                list.prepend( html );
            });

            $( '#his-cate' ).html( list );

        },

        thHistory: function () {

            var thHis = historyModel.getData( 'thread' ),
            list = $( '<ul></ul>' );

            $.each( thHis, function ( i, val ) {
                var html = '<li><a href="' + val.url + '">' + val.title + '</a></li>'
                list.prepend( html );
            });

            $( '#his-thread' ).html( list );

        },

    }

    /**
     *  Storage
    */
    var storage = {

        cacheKey: function () {
            var hash = getHash( true ),
            key = hash[ 1 ] + hash[ 2 ];
            if ( hash[ 3 ] ) key += hash[ 3 ];
            return key;
        },

        setData: function ( st, type, data, key ) {
            var key = key || this.cacheKey();
            if ( type == 'json' ) {
                data = JSON.stringify( data );
                data[ 'getTime' ] = this.getTime();
            }
            st.setItem( key, data );
        },

        getData: function ( st, type, key ) {
            var key = key || this.cacheKey(),
            data = st.getItem( key );
            if ( type == 'json' ) {
                data = JSON.parse( data );
            }
            return data || false;
        },

        deleteData: function ( st, key ) {
            key ? st.removeItem( key ) : st.clear();
        },

        list: function ( st ) {
            return st;
        },

        getTime: function () {
            var date = new Date(),
            ymd = new Array(
                date.getFullYear(),
                date.getMonth() + 1,
                date.getDate()
            ),
            his = new Array(
                date.getHours(),
                date.getMinutes(),
                date.getSeconds()
            );
            return ymd.join( '/' ) + ' ' + his.join( ':' );
        }

    }

    $(document).ready(function () {

        // init
        router.loadPage();

        // Bottom Event
        $(window).bottom();

        // Hash Event
        tm.HashObserver.enable();
        document.addEventListener( 'changehash', function ( e ) {
            router.loadPage( getHash( true ) );
        });

        // Update Event
        $( '.update' ).click(function () {
            router.update();
        });

        // Delete Event
        $( '.delete' ).click(function () {
            router.deleteData( ss );
            router.deleteData( ls );
        });

        // Load

    });

})();
