//获取导航 小导航
var header = document.querySelector('.header');
// 推荐导航栏
var neck = document.querySelector('.guide');
// 推荐关注列表
var list = document.querySelector('.atten-list')
// 滚动事件
$(window).scroll(function () {
  // 如果滚动条长度大于0，就让小导航和推荐导航固定
  if (ScollPostion().top > 0) {
    header.style.position = 'fixed';
    neck.style.position = 'fixed';
    header.style.zIndex = 10;
    neck.style.zIndex = 10;
    neck.style.marginTop = 61 + 'px';
    // 否则不固定
  } else {
    header.style.position = 'relative';
    neck.style.position = 'relative';
    header.style.zIndex = 1;
    neck.style.zIndex = 1;
    neck.style.marginTop = 0 + 'px';
  }

  // 如果滚动条长度大于200，让小导航隐藏
  if (ScollPostion().top > 200) {
    header.style.display = 'none';
    neck.style.marginTop = 0 + 'px';
    // 否则显示
  } else {
    header.style.display = 'inline-block';
  }
});

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