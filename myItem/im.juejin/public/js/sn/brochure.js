


//  tab 切换

// 1.获取所有a标签
var aBtn = document.querySelectorAll(".navtab li a");
// console.log(aBtn);
// 2.遍历每个a标签
for (var i = 0; i < aBtn.length; i++) {
  // 3.给a标签添加点击事件
  aBtn[i].onclick = function () {
    // 4. 让a标签对应的section让它隐藏 让有active的a标签 没有active 
    // 4.1 获取含有active的class的a标签
    var activeA = document.querySelector('.active');
    // 4.2 获取上面a标签身上的cont属性的值
    var con = activeA.getAttribute('cont'); // 'gn'
    // console.log(con);
    // 4.3 通过上面获取的值 找到对应的section 让它隐藏
    document.getElementById(con).style.display = "none";
    // 4.4 移除a标签上的active类名
    activeA.removeAttribute('class');
    // 5.让点击的那个a标签加一个active的class   让点击的a标签对应的那个section显示
    // 5.1 给点击的那个a标签设置一个class为active
    this.className = 'active';
    // 5.2 获取点击的那个a标签上的cont属性的值
    var cont = this.getAttribute('cont');
    // 5.3 根据cont属性的值获取对应的section 让其 显示
    document.getElementById(cont).style.display = 'block';
  }

}


//  导航栏固定
// 浏览器兼容问题
function getScroll() {
  return {
    top: window.document.body.scrollTop || window.document.documentElement.scrollTop || window.pageYOffset || 0,
    left: window.document.body.scrollLeft || window.document.documentElement.scrollLeft || window.pageXOffset || 0
  }
}

// 封装的函数，获得网页高度
function getScroll() {
  return {
    top: window.document.body.scrollTop || window.document.documentElement.scrollTop || window.pageYOffset || 0,
    left: window.document.body.scrollLeft || window.document.documentElement.scrollLeft || window.pageXOffset || 0,
  }
}

// 获取我要固顶的导航栏
var navtab = document.querySelector('.navtab');

// 获取以上的部分
var upperPart = document.querySelector('.navbar');

// 下部分
var nextPart = document.querySelector('.content');
// 添加滚动事件
window.onscroll = function () {
  if (getScroll().top > upperPart.offsetHeight) {
    // 给要固定的导航栏加fix-nav 类名
    navtab.className = 'navtab fix-nav';
    nextPart.style.margintop = navtab.offsetHeight + 'px';
    upperPart.className = 'navtab topmove'
  } else {
    navtab.className = 'navtab';
    nextPart.style.margintop = '10px';
    upperPart.className='navtab';
  }


}

