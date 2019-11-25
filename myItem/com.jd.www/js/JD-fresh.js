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

// 2.搜素栏 '橙子'

 // 获取搜索框
 var txt = document.querySelector(".d-searchs input");
 // 给搜索框获取焦点事件(onfocus)
 txt.onfocus = function () {
   //如果文本框内为"请输入搜索内容"
   if (this.value == "橙子") {
     //清空文本框
     this.value = "";
   }
 }
 // 给搜索框失去焦点事件
 txt.onblur = function () {
   //如果文本框内为""
   if (this.value == "") {
     //恢复文本框
     this.value = "橙子";
     //让value的内容还原为黑色
     this.style.color = "gray";
   }
 }


//   4.轮播图 '新鲜水果' 鼠标移上内容 
$('.d-view-fruit').mouseover(function () {
  $('.d-fruit-hover').show();
  $(this).css('backgroundColor','#fff');
})
$('.d-fruit-hover').mouseover(function () {
  $('.d-fruit-hover').show();
  $('.d-view-fruit').css('backgroundColor','#fff');
})
$('.d-view-fruit').mouseout(function () {
  $('.d-fruit-hover').hide();
  $(this).css('backgroundColor','');
})
$('.d-fruit-hover').mouseout(function () {
  $('.d-fruit-hover').hide();
  $('.d-view-fruit').css('backgroundColor','');
})

//   4.轮播图 '海鲜水产' 鼠标移上内容 
$('.d-view-sea').mouseover(function () {
  $('.d-sea-hover').show();
  $(this).css('backgroundColor','#fff');
})
$('.d-sea-hover').mouseover(function () {
  $('.d-sea-hover').show();
  $('.d-view-sea').css('backgroundColor','#fff');
})
$('.d-view-sea').mouseout(function () {
  $('.d-sea-hover').hide();
  $(this).css('backgroundColor','');
})
$('.d-sea-hover').mouseout(function () {
  $('.d-sea-hover').hide();
  $('.d-view-sea').css('backgroundColor','');
})

//   4.轮播图 '精选肉类' 鼠标移上内容 
$('.d-view-meet').mouseover(function () {
  $('.d-meet-hover').show();
  $(this).css('backgroundColor','#fff');
})
$('.d-meet-hover').mouseover(function () {
  $('.d-meet-hover').show();
  $('.d-view-meet').css('backgroundColor','#fff');
})
$('.d-view-meet').mouseout(function () {
  $('.d-meet-hover').hide();
  $(this).css('backgroundColor','');
})
$('.d-meet-hover').mouseout(function () {
  $('.d-meet-hover').hide();
  $('.d-view-meet').css('backgroundColor','');
})

//   4.轮播图 '冷饮速冻' 鼠标移上内容 
$('.d-view-ice').mouseover(function () {
  $('.d-ice-hover').show();
  $(this).css('backgroundColor','#fff');
})
$('.d-ice-hover').mouseover(function () {
  $('.d-ice-hover').show();
  $('.d-view-ice').css('backgroundColor','#fff');
})
$('.d-view-ice').mouseout(function () {
  $('.d-ice-hover').hide();
  $(this).css('backgroundColor','');
})
$('.d-ice-hover').mouseout(function () {
  $('.d-ice-hover').hide();
  $('.d-view-ice').css('backgroundColor','');
})

//   4.轮播图 '蔬菜蛋类' 鼠标移上内容 
$('.d-view-egg').mouseover(function () {
  $('.d-egg-hover').show();
  $(this).css('backgroundColor','#fff');
})
$('.d-egg-hover').mouseover(function () {
  $('.d-egg-hover').show();
  $('.d-view-egg').css('backgroundColor','#fff');
})
$('.d-view-egg').mouseout(function () {
  $('.d-egg-hover').hide();
  $(this).css('backgroundColor','');
})
$('.d-egg-hover').mouseout(function () {
  $('.d-egg-hover').hide();
  $('.d-view-egg').css('backgroundColor','');
})


// 4. 轮播图
function bb(){
var view = document.querySelector('.d-view-center');
var viewWidth = view.offsetWidth;
var oUl = document.querySelector('.d-view-center ul');
var firstLi = document.querySelector('.d-view-first')
oUl.appendChild(firstLi.cloneNode(true));
var oLeft = document.querySelector('.d-view-lbt-left');
var oRight = document.querySelector('.d-view-lbt-right');
var num = 0;

 oRight.onclick = function () {
  if (num == oUl.children.length - 1) {
    num = 0;
    oUl.style.left = 0 + 'px';
  }
  num++;
  animate(oUl, -num * viewWidth);
}
oLeft.onclick = function () {
  if (num == 0) {
    num = oUl.children.length - 1;
    oUl.style.left = -num * viewWidth + 'px';
  }
  num--;
  animate(oUl, -num * viewWidth);
}

var timer = setInterval(function () {
  if (num == oUl.children.length - 1) {
    num = 0;
    oUl.style.left = 0 + 'px';
  }
  num++;
  animate(oUl, -num * viewWidth);
}, 3000)


view.onmouseover = function () {
  clearInterval(timer);
}

view.onmouseout = function () {
  timer = setInterval(function () {
    if (num == oUl.children.length - 1) {
      num = 0;
      oUl.style.left = 0 + 'px';
    }
    num++;
    animate(oUl, -num * viewWidth);
  }, 3000)
}

}

bb();

// 5. 定时器
    // 获取函数
function countTime() {
  // 获取当前时间
  var date = new Date();
  // 设置截止时间(月份为0-11代表12个月,所有0代表1月)
  var end = new Date("2019/2/11,12:40:00");
  // 获取差值
  var leftTime = end - date;
  // 声明 天数,小时,分钟,秒
  var  h, m, s;
  // 如果差值>=0,则继续获取
  if (leftTime >= 0) {
    // 毫秒->秒->分钟->小时->天数除不尽余下的为小时
    h = Math.floor(leftTime / 1000 / 60 / 60 % 24);
    // 毫秒->秒->分钟->小时除不尽余下的为分钟
    m = Math.floor(leftTime / 1000 / 60 % 60);
    // 毫秒->秒->分钟除不尽余下的为秒
    s = Math.floor(leftTime / 1000 % 60);
  }
  h = h > 9 ? h : "0" + h;
  m = m > 9 ? m : "0" + m;
  s = s > 9 ? s : "0" + s;
  // 拼接字符串把内容插入div
  document.querySelector('.d-timer-hour').innerHTML = h;
  document.querySelector('.d-timer-min').innerHTML = m;
  document.querySelector('.d-timer-sed').innerHTML = s;
  // 设置定时器让函数一秒走一次
  setTimeout(countTime, 1000);
}
// 调用函数
countTime();


// 5.定时器里的轮播图

// 获取按钮
var leftTwo = document.querySelector('.d-time-view-left');
var rightTwo = document.querySelector('.d-time-view-right');
// 获取view
var viewTwo = document.querySelector('.d-timer-squ');
// 获取view的宽度
var viewWidthTwo = viewTwo.offsetWidth;
// 获取ul
var ulTwo = document.querySelector('.d-time-view');
// 获取第一个li
var firstLiTwo = document.querySelector('#d-time-first');
// 把第一个li添加w为ul的最后一个子元素(复制第一个li)
ulTwo.appendChild(firstLiTwo.cloneNode(true));
// 声明一个计数变量
var num = 0;

// 给右按钮添加点击事件,让图片向左走
rightTwo.onclick = function () {
  // 判断计数变量是不是为最后一张图片的索引值
  if (num == ulTwo.children.length - 1) {
    // 让num为0(回到第一张图片)
    num = 0;
    // 让ul的left为0
    ulTwo.style.left = 0 + 'px';
  }
  // 计数变量累加
  num++;
  // 让ul移动
  animate(ulTwo, -num * viewWidthTwo);
}

// 给左按钮添加点击事件,让图片向右走
leftTwo.onclick = function () {
  // 判断计数变量是不是为第一张图片的索引值
  if (num == 0) {
    // 让num为aLi.length - 1(回到最后一张图片,因为图片是向右走的)
    num = ulTwo.children.length - 1;
    // 让ul的left为 -num * viewWidth
    ulTwo.style.left = -num * viewWidthTwo + 'px';
  }
  // 计数变量自减
  num--;
  // 让ul移动
  animate(ulTwo, -num * viewWidthTwo);
}


// 7.身临食感 tab切换

$('.d-tab-head a').click(function () {
  $(this).addClass('d-tab-active').siblings('.d-tab-head a').removeClass('d-tab-active');
  $('.d-tab-nav-son-one').eq($(this).index()).addClass('d-tab-selected').siblings('.d-tab-nav-son-one').removeClass('d-tab-selected')
})



// 9. 食鲜者说 评论轮播图 
function cc() {
   // 获取ul
   var speakUl = document.querySelector('.d-speak-view-ul');
   // 获取第一个li
   var speakLi = document.querySelector('.d-speak-frist-li');
   // 把第一个li复制插入到ul的后面
   speakUl.appendChild(speakLi.cloneNode(true));
   // 获取左右按钮
   var speakLeft = document.querySelector('.d-speak-btn-left');
   var speakRight = document.querySelector('.d-speak-btn-right');
   // 获取view
   var speakView = document.querySelector('.d-speak-view');
   // 获取view的宽度
   var speakViewWidth = speakView.offsetWidth;
   // 声明计数变量(代表索引)
   var num = 0;

   // 给右按钮添加点击事件,让图片向左走
   speakRight.onclick = function () {
     // 判断num是不是等于最后一张图片的索引
     if (num == speakUl.children.length - 1) {
       // 是的话让它为0
       num = 0;
       // ul为0(回到第一张图片的位置)
       speakUl.style.left = 0 + 'px';
     }
     // 计数变量累加
     num++;
     // 让ul移动
     animated(speakUl, -num * speakViewWidth);
   }

   // 给左按钮添加点击事件,让图片向右走
   speakLeft.onclick = function () {
     // 判断num是不是等于0
     if (num == 0) {
       // 是的话让它为最后一张图片的索引
       num = speakUl.children.length - 1;
       // ul为 -num * 图片的宽度
       speakUl.style.left = -num * speakViewWidth + 'px';
     }
     // 计数变量自减
     num--;
     // 让ul移动
     animated(speakUl, -num * speakViewWidth);
   }


   // 让图片自己播放
   // 声明定时器
   var timId = setInterval(function () {
     // 判断图片是不是为最后一个li的索引
     if (num == speakUl.children.length - 1) {
       // 是的话让它为0
       num = 0;
       // ul为0(回到第一张图片的位置)
       speakUl.style.left = 0 + 'px';
     }
     // 计数变量累加
     num++;
     // 让ul移动
     animated(speakUl, -num * speakViewWidth);
   }, 3000)


   //鼠标移入view,让轮播图停止播放
   speakView.onmouseover = function () {
     clearInterval(timId);
   }
   //鼠标移出,继续轮播
   speakView.onmouseout = function () {
     timId = setInterval(function () {
       // 判断图片是不是为最后一个li的索引
       if (num == speakUl.children.length - 1) {
         // 是的话让它为0
         num = 0;
         // ul为0(回到第一张图片的位置)
         speakUl.style.left = 0 + 'px';
       }
       // 计数变量累加
       num++;
       // 让ul移动
       animated(speakUl, -num * speakViewWidth);
     }, 3000)
   }
}
   
cc();


// 11.固定栏  '顶部'

window.onload = function () {
  var oUl = document.querySelector('.d-fixed'); 
  var obtn = document.querySelector('.d-fixed-top'); //获取回到顶部按钮的ID
  var clientHeight = document.documentElement.clientHeight; //获取可视区域的高度
  var timer = null; //定义一个定时器
  var isTop = true; //定义一个布尔值，用于判断是否到达顶部

  window.onscroll = function () { //滚动条滚动事件
      //获取滚动条的滚动高度
      var osTop = document.documentElement.scrollTop || document.body.scrollTop;
      if (osTop >= clientHeight) { //如果滚动高度大于可视区域高度，则显示回到顶部按钮
          obtn.style.display = 'block';
          oUl.style.display = 'block';
      } else { //否则隐藏
          obtn.style.display = 'none';
          oUl.style.display = 'none';
      }
      //主要用于判断当 点击回到顶部按钮后 滚动条在回滚过程中，若手动滚动滚动条，则清除定时器
      if (!isTop) {
          clearInterval(timer);
      }
      isTop = false;
  }
  obtn.onclick = function () { //回到顶部按钮点击事件
      //设置一个定时器
      timer = setInterval(function () {
          //获取滚动条的滚动高度
          var osTop = document.documentElement.scrollTop || document.body.scrollTop;
          //用于设置速度差，产生缓动的效果
          var speed = Math.floor(-osTop / 6);
          document.documentElement.scrollTop = document.body.scrollTop = osTop + speed;
          isTop = true; //用于阻止滚动事件清除定时器
          if (osTop == 0) {
              clearInterval(timer);
          }
      }, 20);
  }
}
