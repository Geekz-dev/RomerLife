/**
 *  RomerLife
 *  Mobile Script
 *
 *  @author R.SkuLL
 *  @version 1.0
 *
 *  Copyright 2013 RomerLife Geekz Web Development
*/
(function () {

    var w = window, d = document,
    ss = sessionStorage, ls = localStorage,
    appCache = w.applicationCache, network = navigator.onLine;

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
    var mode = 0;
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

            view.init();
            var hash = getHash( true );

            // TOP
            if ( hash[ 0 ] == '' ) {

                // Request
                templateModel.request( 'category' ).success(function ( tpl ) {
                    view.top( null, tpl );
                    view.loading( false );
                });

            } else
            if ( hash[ 0 ] == 'view' ) {

                // View Thread
                if ( hash[ 3 ] != null  ) {

                    // Request
                    var param = { sd: hash[ 1 ], board: hash[ 2 ], dat: hash[ 3 ] }
                    templateModel.request( 'thread' ).success(function ( tpl ) {
                        apiModel.request( THREAD_API, param).success(function ( json ) {

                            if ( json.Status == 'ok' ) {
                                historyModel.setData( 'thread', json.title );
                                view.thread( json, tpl );
                                view.loading( false );
                            }

                        });
                    });

                } else // View Board List
                if ( hash[ 2 ] != null ) {

                    // Request
                    var param = { sd: hash[ 1 ], board: hash[ 2 ] }
                    templateModel.request( 'board' ).success(function ( tpl ) {
                        apiModel.request( BOARD_API, param).success(function ( json ) {

                            if ( json.Status == 'ok' ) {
                                historyModel.setData( 'board', json.board );
                                view.board( json, tpl );
                            } else {
                                view.message( '落ちてるっぽいっす…' );
                            }

                            view.loading( false );
                        });
                    });

                } else {
                    view.message( 'ページが存在しません！' );
                    view.loading( false );
                }

            } else {
                view.message( 'ページが存在しません！' );
                view.loading( false );
            }

        }

    }

    /**
     *  API Model
    */
    var apiModel = {

        jsons: {},

        request: function ( api, param, load ) {

            var data = this.getData();

            if ( load || !data ) {

                return $.ajax({
                    type: 'GET',
                    url : api,
                    cache: false,
                    data: param,
                    dataType: 'json',
                    success: function ( json ) {
                        console.log( 'サーバからJSONを取得しました。' );
                        apiModel.setData( json );
                    },
                    error: function ( err ) {
                        console.log( err );
                        view.message( 'エラーが発生しました。' );
                    }
                });

            } else {
                console.log( 'ローカルからJSONを取得しました。' );
                return { success: function ( callback ) { callback( data ); } }
            }

        },

        getData: function ( key ) {
            var key = key || storage.cacheKey(),
            data = this.jsons[ key ] || false;
            if ( ss ) {
                return storage.getData( ss, key );
            }
            return data;
        },

        setData: function ( data, key ) {
            var key = key || storage.cacheKey();
            this.jsons[ key ] = data;
            if ( ss ) {
                storage.setData( ss, data );
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

        templates: {},

        request: function ( key ) {

            var path = './template/smart/' + key + '.tpl',
            tpl = this.getData( key );

            if ( !tpl ) {
                return $.ajax({
                    type: 'GET',
                    url: path,
                    success: function ( tpl ) {
                        console.log( 'サーバからテンプレートを取得しました。' );
                        templateModel.setData( tpl, key );
                    },
                    error: function ( err ) {
                        console.log( err );
                        view.message( 'テンプレートが取得できなかったよ！' );
                    }
                });

            } else {
                console.log( 'ローカルからテンプレートを呼び出しました。' );
                return { success: function ( callback ) { callback( tpl ); } }
            }


        },

        getData: function ( key ) {
            var key = key || storage.cacheKey(),
            data = this.templates[ key ] || false;
            if ( ss ) {
                return storage.getData( ss, key );
            }
            return data;
        },

        setData: function ( data, key ) {
            var key = key || storage.cacheKey();
            this.templates[ key ] = data;
            if ( ss ) {
                console.log( 'セッションストレージにテンプレートを保存しました。' );
                storage.setData( ss, data, key );
            }
        },

    }

    /**
     *  History Model
    */
    var historyModel = {

        history: {},

        setData: function ( type, data ) {
            var key = type + '-' + 'history',
            his = this.createJson( type, data );
            this.history[ key ] = his;
            if ( ls ) {
                storage.setData( ls, his, key );
                console.log( 'ストレージに履歴を保存' );
            }
        },

        getData: function ( key ) {
            var key = key + '-' + 'history',
            data = this.history[ key ] || false;
            if ( ls ) {
                return storage.getData( ls, key );
            }
            return data;
        },

        createJson: function ( type, data ) {
            var his = this.getData( type ),
            key = storage.cacheKey();
            if ( !his ) {
                var newHis = {}
                newHis[ key ] = { title: data, url: getHash() }
                return newHis;
            }
            if ( his[ key ] ) delete his[ key ];
            if ( this.length( his ) >= 6 ) for ( k in his ) { delete his[ k ]; break; }
            his[ key ] = { title: data, url: getHash() };
            return his;
        },

        deleteData: function ( key, delkey ) {
            var key = key + '-' + 'history';
            storage.deleteProp( ls, key, delkey );
        },

        length: function ( obj ) {
            var len = 0;
            for ( key in obj ) len++;
            return len;
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

        setData: function ( st, data, key ) {
            var key = key || this.cacheKey();
            if ( typeof data == 'object' ) {
                data = JSON.stringify( data );
                data[ 'getTime' ] = this.getTime();
            }
            st.setItem( key, data );
        },

        getData: function ( st, key ) {
            var key = key || this.cacheKey(),
            data = st.getItem( key );
            if ( typeof data == 'string' && data.match(/^[{|\[].+[}|\]]$/) ) {
                data = JSON.parse( data );
            }
            return data || false;
        },

        deleteProp: function ( st, key, delkey ) {
            var data = this.getData( st, key );
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

    /**
     *  View
    */
    var view = {

        init: function () {
            this.loading();
            $( '#message' ).hide();
            $( '#direct' ).hide();
            $( '#top' ).hide();
            $( '#board' ).hide();
            $( '#thread' ).hide();
            $( 'html, body' ).animate( { scrollTop: 1 }, 'fast' );
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
            $( '#top' ).show();
            $( '#category' ).html( tpl );
            this.boardHistory();
            this.thHistory();
            //this.boardFavorite();
            //this.thFavorite();
        },

        board: function ( json, tpl, limit ) {

            $( '#board' ).html( '' ).show();
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

        thread: function ( json, tpl, update ) {

            $( '#thread' ).html( '' ).show();
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

        thFavorite: function () {
            var thFavo = favoriteModel.getData( 'thread' ),
            list = $( '<ul></ul>' );
            $.each( thFavo, function ( i, val ) {
                var html = '<li><a href="' + val.url + '" class="thFavo" data-key="' + i + '">' + val.title + '</a></li>'
                list.prepend( html );
            });
            $( '#favo-thread' ).html( list );
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

        toImage: function ( data ) {
            var ptn = /(http:\/\/([\w\.\/\-_]+)\.(jpg|png|gif))/gi,
            re = '<div class="dummy" data-image="$1">画像</div>';
            return data.replace( ptn, re );
        }

    }

    $( d ).ready(function () {

        // init
        router.loadPage();

        // Hash Event
        tm.HashObserver.enable();
        d.addEventListener( 'changehash', function ( e ) {
            router.loadPage( getHash( true ) );
        });

        // NetWork Check
        w.addEventListener('offline', function () {
        });
        w.addEventListener('online', function () {
            appCache.update();
        });

        // Application Cache Check
        /*
        if ( network ) appCache.update();
        appCache.addEventListener('updateready', function () {
            if (confirm( '新しいバーションがあります。アップデートしますか？' )) {
                appCache.swapcache();
                location.reload();
            }
        });
        */

    });

})();
