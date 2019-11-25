// 1.导航 "北京" 鼠标移上效果 

// 给 .d-bj 按钮添加鼠标移入事件
$('.d-nav-left .d-bj').mouseover(function () {
  $('.d-bj-hover').show();
  $(this).css('backgroundColor','#fff');
})

// 给.d-bj-hover 添加鼠标移入事件
$('.d-bj-hover').mouseover(function () {
  $('.d-bj-hover').show();
  $('.d-nav-left .d-bj').css('backgroundColor','#fff');
  // 移出 隐藏
}).mouseout(function () {
  $('.d-bj-hover').hide();
  $('.d-nav-left .d-bj').css('backgroundColor','');
})

// 给 .d-bj 按钮添加鼠标移出事件
$('.d-nav-left .d-bj').mouseout(function () {
  // 隐藏 .d-bj-hover
  $('.d-bj-hover').hide();
  $(this).css('backgroundColor','');
})


// 1.导航  我的京东 鼠标移上效果

// 鼠标移上 d-main-jd, .d-main-jd-hover显示
$('.d-div-jd').mouseover(function () {
  $(this).css('backgroundColor','#fff');
  $('.d-main-jd-hover').show();
})
$('.d-main-jd-hover').mouseover(function () {
  $('.d-nav-right .d-div-jd').css('backgroundColor','#fff');
  $('.d-main-jd-hover').show();
})
$('.d-main-jd-hover').mouseout(function () {
  $('.d-nav-right .d-div-jd').css('backgroundColor','');
  $('.d-main-jd-hover').hide();
})
$('.d-div-jd').mouseout(function () {
  $(this).css('backgroundColor','');
  $('.d-main-jd-hover').hide();
})

// 1.导航  企业采购 鼠标移上效果
$('.d-comp-div').mouseover(function () {
  $(this).css('backgroundColor','#fff');
  $('.d-comp-hover').show();
})
$('.d-comp-hover').mouseover(function () {
  $('.d-nav-right .d-comp-div').css('backgroundColor','#fff');
  $('.d-comp-hover').show();
})
$('.d-comp-hover').mouseout(function () {
  $('.d-nav-right .d-comp-div').css('backgroundColor','');
  $('.d-comp-hover').hide();
})
$('.d-comp-div').mouseout(function () {
  $(this).css('backgroundColor','');
  $('.d-comp-hover').hide();
})

// 1.导航 客服服务 鼠标移上效果
$('.d-serve-div').mouseover(function () {
  $(this).css('backgroundColor','#fff');
  $('.d-nav-right .d-serve-hover').show();
})
$('.d-nav-right .d-serve-hover').mouseover(function () {
  $('.d-nav-right .d-serve-div').css('backgroundColor','#fff');  
  $('.d-nav-right .d-serve-hover').show();
})
$('.d-serve-div').mouseout(function () {
  $(this).css('backgroundColor','');
  $('.d-nav-right .d-serve-hover').hide();
})
$('.d-nav-right .d-serve-hover').mouseout(function () {
  $('.d-nav-right .d-serve-div').css('backgroundColor','');  
  $('.d-nav-right .d-serve-hover').hide();
})

// 1.导航 网站导航 鼠标移上效果
$('.d-web-div').mouseover(function () {
  $(this).css('backgroundColor','#fff');
  $('.d-nav-right .d-web-hover').show();
})
$('.d-nav-right .d-web-hover').mouseover(function () {
  $('.d-nav-right .d-web-div').css('backgroundColor','#fff');  
  $('.d-nav-right .d-web-hover').show();
})
$('.d-web-div').mouseout(function () {
  $(this).css('backgroundColor','');
  $('.d-nav-right .d-web-hover').hide();
})
$('.d-nav-right .d-web-hover').mouseout(function () {
  $('.d-nav-right .d-web-div').css('backgroundColor','');  
  $('.d-nav-right .d-web-hover').hide();
})

// 1.导航 手机京东 鼠标移上效果
$('.d-phone-div').mouseover(function () {
  $('.d-phone-hover').show();
})
$('.d-phone-hover').mouseover(function () {
  $('.d-phone-hover').show();
})
$('.d-phone-hover').mouseout(function () {
  $('.d-phone-hover').hide();
})
$('.d-phone-div').mouseout(function () {
  $('.d-phone-hover').hide();
})



// 3. 固定中间导航栏

    // 获取topPart
    var topPart = document.querySelector('.y-search');
    // 获取navBar
    var navBar = document.querySelector('.y-list');
    // 获取mainPart
    var mainPart = document.querySelector('.y-coupon');
    // 给window添加onscroll事件
    window.onscroll = function () {
      // 判断 window的scrollTop 是否大于等于 topPart的offsetHeight
      if (getScroll().top >= topPart.offsetHeight) {
        // 如果是给导航添加一个fixed的类名
        navBar.className = 'y-list fixed';
        // 给mainPart添加一个margintop对应navBar的高度
        //(因为navBar固定的时候脱离了文档流,防止mainPart直接跳到navBar的位置)
        mainPart.style.marginTop = navBar.offsetHeight + 'px';
      } else {
        // 如果不是,删除导航的fixed类名
        navBar.className = 'y-list';
        // 给mainPart设置一个原有的margintop 10px
        mainPart.style.marginTop = 10 + 'px';
      }
    }



    // 兼容性问题
    function getScroll() {
      return {
        // 所有浏览器都不支持则让其输出0,不让它报错,让输出0
        left: window.document.body.scrollLeft || window.document.documentElement.scrollLeft || window.pageXOffset || 0,
        top: window.document.body.scrollTop || window.document.documentElement.scrollTop || window.pageYOffset || 0
      };
    }