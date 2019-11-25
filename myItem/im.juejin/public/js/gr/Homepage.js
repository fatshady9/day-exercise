// 获取 小导航栏
var tab = document.querySelector('.top-nav');
// 获取隐藏栏
var nav = document.querySelector('.top-nav-none');
// 获取 关注框
var atten = document.querySelector('attention');

// 固定右边导航栏
$(window).scroll(function () {
    // 如果滚动高度大于 230，让隐藏栏显示，并固定
    if (ScollPostion().top > 230) {
        nav.style.display = "inline-block";
        nav.style.position = "fixed";
        // atten.style.position = 'fixed';
    } else {
        // 否则隐藏
        nav.style.display = "none";
    }

    if (ScollPostion().top > 320) {
        tab.style.display = "none";
        nav.style.marginTop = -75 + 'px';
    } else {
        tab.style.display = "inline-block";
        nav.style.marginTop = 0 + 'px';
    }
})





function ScollPostion() { //滚动条位置
    var t, l, w, h;
    if (document.documentElement && document.documentElement.scrollTop) {
        t = document.documentElement.scrollTop;
        l = document.documentElement.scrollLeft;
        w = document.documentElement.scrollWidth;
        h = document.documentElement.scrollHeight;
    } else if (document.body) {
        t = document.body.scrollTop;
        l = document.body.scrollLeft;
        w = document.body.scrollWidth;
        h = document.body.scrollHeight;
    }
    return {
        top: t,
        left: l,
        width: w,
        height: h
    };
}