// 发布内容框背景颜色
$('.textbox').on('focus',function () {
  $(this).css('backgroundColor','#fff');
  $(this).css('border','1px solid #007fff')
})

$('.textbox').on('blur',function () {
  $(this).css('backgroundColor','#f9fafb');
  $(this).css('border','1px solid #e5e6e7')
})

// 发布按钮
$('.textbox').on('click', function () {
  var text = $('.textbox').val();
  if (text == null || text == '') {
    $('.issue-btn').css('cursor','not-allowed');
    $('.issue-btn').css('backgroundColor','#cce5ff');
  } else {
    $('.issue-btn').css('cursor','pointer');
    $('.issue-btn').css('backgroundColor','#027fff');
  }
  console.log($('.textbox').val())
})



//获取导航 小导航
var header = document.querySelector('.header');
// 推荐导航栏
var neck = document.querySelector('.recommend');
// 获取中间部分
var center = document.querySelector('.publish');
// 获取右边部分
var right = document.querySelector('.userinfo');
// 获取如何玩转沸点
var how = document.querySelector('.user-how');
// 滚动事件
$(window).scroll(function () {
  // 如果滚动高度小于500，让小导航固定
  if (ScollPostion().top < 500) {
    header.style.position = 'fixed';
    header.style.zIndex = 10;
  } else {
    // 否则不固定
    header.style.position = 'relative';
    header.style.zIndex = 1;
  }

  // 如果滚动高度大于500，让小导航隐藏
  if (ScollPostion().top > 500) {
    header.style.display = 'none';
    neck.style.top = 10 + 'px';
    // 否则滚动高度为0时，让小导航显示
  } else if (ScollPostion().top == 0) {
    header.style.display = 'inline-block';
    neck.style.top = 80 + 'px';
    center.style.marginTop = 80 + 'px';
    right.style.marginTop = 80 + 'px';
  }
  // 如果滚动高度大于510，让玩转沸点固定
  if (ScollPostion().top > 510) {
    how.style.position = 'fixed';
    how.style.marginTop = -572 + 'px';
    // 否则让它不固定
  } else if (ScollPostion().top < 510) {
    how.style.position = 'relative';
    how.style.marginTop = 10 + 'px';
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