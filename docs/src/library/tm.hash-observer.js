/**
 * phi
 */

var w = window, d = document, tm = tm || {};

(function(){

    tm.HashObserver = {};
    tm.HashObserver.timerID = null;
    tm.HashObserver.FPS     = 100;

    tm.HashObserver.enable = function()
    {
        var prevHash = w.location.hash;
        tm.HashObserver.timerID = setInterval(function(){
            if (prevHash != w.location.hash) {
                var e = d.createEvent("HTMLEvents");
                e.initEvent("changehash", true, false);
                e.hash      = w.location.hash;
                e.prevHash  = prevHash;
                d.dispatchEvent(e);
            }
            prevHash = w.location.hash;
        }, tm.HashObserver.FPS);
    };

    tm.HashObserver.disable = function()
    {
        clearInterval(tm.HashObserver.timerID);
    };

})();


(function(){

    tm.FormObserver = {};

    tm.FormObserver.observe = function(elm, fps)
    {
        fps = fps || 100;

        var prevValue   = elm.value;
        var timerID     = null;

        var observeForm = function() {
            if (elm.value != prevValue) {
                var e = d.createEvent("HTMLEvents");
                e.initEvent("change", true, false);
                elm.dispatchEvent(e);
            }
            prevValue = elm.value;
        };

        elm.addEventListener("focus", function() { timerID = setInterval(observeForm, fps); });
        elm.addEventListener("blur", function() { clearInterval(timerID); });
    };

    tm.FormObserver.observeAll = function(className)
    {
        className = className || "tm-form-observer";
        var targetList = d.getElementsByClassName(className);

        for (var i=0,len=targetList.length; i<len; ++i) {
            this.observe(targetList[i]);
        }
    }

})();
