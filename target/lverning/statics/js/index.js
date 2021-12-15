/**
 *  鍏ュ彛鏂囦欢绱㈠紩
 *  浣跨敤璇存槑锛氬皢姝ゆ枃浠跺紩鍏ュ埌椤甸潰涓紝鍙湪script鏍囩涓婂畾涔変竴涓猟ata-main=""灞炴€э紝
 *  姝ゅ睘鎬ф寚瀹氶〉闈㈠叆鍙ｆ枃浠躲€�
 *
**/
(function () {

    var entry,
        // 閰嶇疆鎵€鏈夊簲鐢ㄧ殑鍏ュ彛鏂囦欢锛岀▼搴忓皢浼氭寜鐓ata-main灞炴€т腑璁剧疆鐨勫€艰繘琛岀储寮曟煡鎵�
        // 濡傛灉浣犲湪寮曞叆姝よ剼鏈殑script鏍囩涓婃病鏈夎缃甦ata-main灞炴€э紝绋嬪簭灏嗕細榛樿璁块棶home.js鏂囦欢
        app = {
            home : '{/}home',
            login : '{/}login'
        };

    (function(){

        var dataMain, scripts = document.getElementsByTagName('script'),
            eachScripts = function(el){
                dataMain = el.getAttribute('data-main');
                if(dataMain){
                    entry = dataMain;
                }
            };

        [].slice.call(scripts).forEach(eachScripts);

    })();

    layui.config({
        base: 'assets/lay/modules/'
    }).extend(app).use(entry || 'home');

})();