/**
 *  RomerLife
 *  Mobile Script
 *
 *  @author R.SkuLL
 *  @version 1.0
 *
 *  Copyright (c) 2013 Geekz Web Development
*/
(function () {

    var w = window, d = document,
    ss = sessionStorage, ls = localStorage,
    nw = navigator.onLine;

    // API
    var BOARD_API ='/-/board.php',
    THREAD_API = '/-/thread.php',
    UPDATE_API ='/-/update.php';

    /**
     *  Debug Mode
     *  0: off
     *  1: use json file
     *  2: storage is not used
     *  3: 1 and 2
    */
    var mode = 1;
    if ( mode !== 0 ) {
        if ( mode != 2 ) {
            BOARD_API ='./debug/board.json',
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

            if ( !nw ) $( '#offline' ).show();

            $( 'html, body' ).animate( { scrollTop: 1 }, 'fast' );
            view.init();
            view.loading();

            var hash = getHash( true );

            if ( hash[ 0 ] != '' ) {
                $( '#header' ).show();
                $( '#menu' ).show();
            }

            // TOP
            if ( hash[ 0 ] == '' )  {

                $( '#top' ).show();
                var temp = './template/smart/category.tpl';
                templateModel.loadTemplate( temp, 'category', function ( tpl ) {
                    json = null;
                    view.top( json, tpl );
                    view.loading( false );

                    // Favorite and History Delete Event
                    $$( '.boardFavo' ).doubleTap(function () {
                        if (confirm( '削除しますか？' )) {
                            var key = $$( this ).data( 'key' );
                            $$( this ).remove();
                            favoriteModel.deleteData( 'board', key );
                            view.message( 'お気に入りから削除しました。', true );
                        }
                        return;
                    });
                    $$( '.thFavo' ).doubleTap(function () {
                        if (confirm( '削除しますか？' )) {
                            var key = $$( this ).data( 'key' );
                            $$( this ).remove();
                            favoriteModel.deleteData( 'thread', key );
                            view.message( 'お気に入りから削除しました。', true );
                        }
                        return;
                    });
                    $$( '.boardHis' ).doubleTap(function () {
                        if (confirm( '削除しますか？' )) {
                            var key = $$( this ).data( 'key' );
                            $$( this ).remove();
                            historyModel.deleteData( 'board', key );
                            view.message( '履歴から削除しました。', true );
                        }
                        return;
                    });
                    $$( '.thHis' ).doubleTap(function () {
                        if (confirm( '削除しますか？' )) {
                            var key = $$( this ).data( 'key' );
                            $$( this ).remove();
                            historyModel.deleteData( 'thread', key );
                            view.message( '履歴から削除しました。', true );
                        }
                        return;
                    });

                });

            } else
            if ( hash[ 0 ] == 'view' ) {

                // スレッド詳細
                if ( hash[ 3 ] != null ) {

                    $( '#thread' ).html( '' );
                    $( '#thread' ).show();
                    var temp = './template/smart/thread.tpl';
                    templateModel.loadTemplate( temp, 'res', function ( tpl ) {
                        var param = { sd: hash[ 1 ], board: hash[ 2 ], dat: hash[ 3 ] }
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

                    $( '#board' ).html( '' );
                    $( '#board' ).show();
                    var temp = './template/smart/board.tpl';
                    templateModel.loadTemplate( temp, 'board', function ( tpl ) {
                        var param = { sd: hash[ 1 ], board: hash[ 2 ] }
                        apiModel.loadJson( BOARD_API, param, function ( json ) {

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
                temp = './template/smart/thread.tpl';
                templateModel.loadTemplate( temp, 'thread', function ( tpl ) {
                    var lastId = parseInt( $( '.res-num:last' ).text() ),
                    param = { sd: hash[ 1 ], board: hash[ 2 ], dat: hash[ 3 ], maxId: lastId }
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
                temp = './template/smart/board.tpl';
                templateModel.loadTemplate( temp, 'board', function ( tpl ) {
                    var param = { sd: hash[ 1 ], board: hash[ 2 ], dat: hash[ 3 ] }
                    apiModel.loadJson( BOARD_API, param, function ( json ) {

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
        },

        favorite: function ( type ) {
            var key = type  + '-history',
            cachekey = storage.cacheKey(),
            his = storage.getData( ls, 'json', key ),
            data = his[ cachekey ];
            if ( data ) {
                favoriteModel.setData( type, { key: cachekey, title: data.title, url: data.url } );
                view.message( 'お気に入りに登録しました！', true );
            } else {
                view.message( '登録できませんでした！', true );
            }
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
                type = 'board', title = json.board;
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

        deleteData: function ( type, delkey ) {
            var key = type + '-' + 'history';
            storage.deleteProp( ls, key, delkey );
        },

        length: function ( obj ) {
            var len = 0;
            for ( key in obj ) len++;
            return len;
        },

        history: {}

    }

    /**
     *  Favorite Model
    */
    var favoriteModel = {

        setData: function ( type, data ) {
            var key = type + '-' + 'favorite',
            favo = this.createJson( type, data );
            if( ls ) {
                storage.setData( ls, 'json', favo, key );
                console.log( 'ストレージに履歴を保存' );
            } else {
                return false;
            }
        },

        getData: function ( type ) {
            var key = type + '-' + 'favorite';
            if ( ls ) return storage.getData( ls, 'json', key );
        },

        createJson: function ( type, data ) {
            var favo = this.getData( type );
            if ( !favo ) {
                var newFavo = {}
                newFavo[data.key] = { title: data.title, url: data.url }
                return newFavo;
            }
            if ( !favo[ data.key ] ) {
                favo[ data.key ] = { title: data.title, url: data.url };
            }
            return favo;
        },

        deleteData: function ( type, delkey ) {
            var key = type + '-' + 'favorite';
            storage.deleteProp( ls, key, delkey );
        }

    }


    /**
     *  View
    */
    var view = {

        init: function () {
            $( '#message' ).hide();
            $( '#direct' ).hide();
            $( '#top' ).hide();
            $( '#board' ).hide();
            $( '#thread' ).hide();
        },

        loading: function ( flg ) {
            var loading = $( '#loading' );
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

        top: function ( json, tpl ) {
            $( '#category' ).html( tpl );
            //$( '#header' ).html( 'RomerLife' );
            view.boardHistory();
            view.thHistory();
            view.boardFavorite();
            view.thFavorite();
        },

        thread: function ( json, tpl, limit ) {

            var compiled = _.template( tpl );
            $( '#header' ).text( json.board );
            $.each( json.thread, function( i, val ) {
                html = compiled({
                    title: val.title,
                    url: apiModel.makeHash( val.url ),
                    all: val.all,
                    createdAt: val.createdAt
                });
                $( '#board' ).append( html );
                //if ( i == 20 ) return false;
            });

        },

        res: function ( json, tpl, update ) {

            var compiled = _.template( tpl );
            if ( !update ) $( '#header' ).text( json.title );
            $.each( json.contents, function ( i, val ) {
                html = compiled({
                    resNum: val.resid,
                    userName: val.name,
                    resText: view.toImage(val.res),
                    createdAt: val.createdAt,
                    userId: val.id
                });
                if ( update ) apiModel.margeRes( json );
                $( '#thread' ).append( html );
            });

        },

        boardHistory: function () {

            var boardHis = historyModel.getData( 'board' ),
            list = $( '<ul></ul>' );
            $.each( boardHis, function ( i, val ) {
                var html = '<li><a href="' + val.url + '" class="boardHis" data-key="' + i + '">' + val.title + '</a></li>'
                list.prepend( html );
            });
            $( '#his-board' ).html( list );
            if ( $( '#his-board li' ).size() > 2 ) {
                $( '#his-board li:gt(1)' ).hide();
                $( '#his-board' ).append( '<a href="#" id="board-all">すべて表示</a>' );
                $( '#board-all' ).toggle(function () {
                    $( '#his-board li' ).fadeIn();
                    $( this ).html( '閉じる' );
                }, function () {
                    $( '#his-board li:gt(1)' ).fadeOut();
                    $( this ).html( 'すべて表示' );
                });
            }

        },

        thHistory: function () {

            var thHis = historyModel.getData( 'thread' ),
            list = $( '<ul></ul>' );
            $.each( thHis, function ( i, val ) {
                var html = '<li><a href="' + val.url + '" class="thHis" data-key="' + i + '">' + val.title + '</a></li>'
                list.prepend( html );
            });
            $( '#his-thread' ).html( list );

            if ( $( '#his-thread li' ).size() > 2 ) {
                $( '#his-thread li:gt(1)' ).hide();
                $( '#his-thread' ).append( '<a href="#" id="th-all">すべて表示</a>' );
                $( '#th-all' ).toggle(function () {
                    $( '#his-thread li' ).fadeIn();
                    $( this ).html( '閉じる' );
                }, function () {
                    $( '#his-thread li:gt(1)' ).fadeOut();
                    $( this ).html( 'すべて表示' );
                });
            }

        },

        boardFavorite: function () {

            var boardFavo = favoriteModel.getData( 'board' ),
            list = $( '<ul></ul>' );
            $.each( boardFavo, function ( i, val ) {
                var html = '<li><a href="' + val.url + '" class="boardFavo" data-key="' + i + '">' + val.title + '</a></li>'
                list.prepend( html );
            });
            $( '#favo-board' ).html( list );
            /*
            if ( $( '#his-board li' ).size() > 2 ) {
                $( '#his-board li:gt(1)' ).hide();
                $( '#his-board' ).append( '<a href="#" id="board-all">すべて表示</a>' );
                $( '#board-all' ).toggle(function () {
                    $( '#his-board li' ).fadeIn();
                    $( this ).html( '閉じる' );
                }, function () {
                    $( '#his-board li:gt(1)' ).fadeOut();
                    $( this ).html( 'すべて表示' );
                });
            }
            */

        },

        thFavorite: function () {

            var thFavo = favoriteModel.getData( 'thread' ),
            list = $( '<ul></ul>' );
            $.each( thFavo, function ( i, val ) {
                var html = '<li><a href="' + val.url + '" class="thFavo" data-key="' + i + '">' + val.title + '</a></li>'
                list.prepend( html );
            });
            $( '#favo-thread' ).html( list );
            /*
            if ( $( '#his-thread li' ).size() > 2 ) {
                $( '#his-thread li:gt(1)' ).hide();
                $( '#his-thread' ).append( '<a href="#" id="th-all">すべて表示</a>' );
                $( '#th-all' ).toggle(function () {
                    $( '#his-thread li' ).fadeIn();
                    $( this ).html( '閉じる' );
                }, function () {
                    $( '#his-thread li:gt(1)' ).fadeOut();
                    $( this ).html( 'すべて表示' );
                });
            }
            */
        },

        toImage: function ( data ) {
            var ptn = /(http:\/\/([\w\.\/\-_]+)\.(jpg|png|gif))/gi,
            re = '<div class="dummy" data-image="$1">画像</div>';
            return data.replace( ptn, re );
        }

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

        deleteProp: function ( st, key, delkey ) {
            var data = this.getData( st, 'json', key );
            delete data[ delkey ];
            this.setData( st, 'json', data, key );
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

    $( d ).ready(function () {

        // init
        router.loadPage();

        // Bottom Event
        $( w ).bottom();
        $( w ).bind('bottom', function () {
        });

        // Hash Event
        tm.HashObserver.enable();
        d.addEventListener( 'changehash', function ( e ) {
            router.loadPage( getHash( true ) );
        });

        // Update Event
        $( '.update' ).click(function () {
            router.update();
        });

        // Delete Event
        $( '.delete' ).click(function () {
            var st = $( this ).data( 'storage' ),
            key = $( this ).data( 'key' ) || null;
            router.deleteData( st, key );
        });

        // Favorite Event
        $( '.favo-board' ).click(function () {
            router.favorite( 'board' );
        });
        $( '.favo-thread' ).click(function () {
            router.favorite( 'thread' );
        });

        // Image
        $( '.dummy' ).live('touchstart', function () {
            var $this = $( this ),
            url = $this.data( 'image' );
            $this.removeClass( 'dummy' );
            $this.click(function () {
                $this.html( '画像' );
                $this.addClass( 'dummy' );
            });
            $this.html( '<img src="' + url + '">' );
        });

    });

})();
