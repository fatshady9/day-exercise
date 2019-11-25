// 0.0 页面右侧导航栏

// 功能1 鼠标点击li时 字体白色 背景#333
// 1. 获取多个li
// var cSidenavLi = document.querySelectorAll(".c-sidenav-copy li");
// // console.log(cSidenavLi);
// // 2. 遍历
// for (var i = 0; i < cSidenavLi.length; i++) {
//     cSidenavLi[i].onclick = function () {
//         for (var j = 0; j < cSidenavLi.length; j++) {
//             cSidenavLi[j].style.backgroundColor = "#fff";
//             cSidenavLi[j].style.color = "#333";
//         }
//         this.style.backgroundColor = "#333";
//         this.style.color = "#fff";
//     }
// }

// 11.固定栏  '顶部'

// window.onload = function () {
var cTopnav = document.querySelector("#c-topnav");
var cSearch = document.querySelector("#c-search");
var cW = document.querySelector("#c-w");
var cMidnav = document.querySelector("#c-midnav");
var cSlide = document.querySelector("#c-slide");

var cTopnavWid = cTopnav.offsetHeight;
var cSearchWid = cSearch.offsetHeight;
var cWWid = cW.offsetHeight;
var cMidnavWid = cMidnav.offsetHeight;
var cReusrt = cTopnavWid + cSearchWid + cWWid;
var oUl = document.querySelector('.c-sidenav');
var obtn = document.querySelector('.c-sidenav-two'); //获取回到顶部按钮的ID
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


    if (getScroll().top >= cReusrt) {
        cMidnav.className = "c-midnav c-midnav-fixed";
        cSlide.style.marginTop = cMidnavWid + 'px';
    } else {
        cMidnav.className = "c-midnav";
        cSlide.style.marginTop = 0 + 'px';
    }
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

// }

// 3. 京东时尚分类
// 1. 获取顶部导航 获取搜索栏部分  京东时尚分类

// 随着浏览器滚动条的滚动 当到某一个距离的时候让导航固定
// 2. 给window添加onscroll事件
// window.onscroll = function () {

function getScroll() {
    // var obj = ;
    // obj.left = 
    // obj.top = 
    // 匿名对象
    return {
        left: window.document.body.scrollLeft || window.document.documentElement.scrollLeft || window.pageXOffset || 0,
        top: window.document.body.scrollTop || window.document.documentElement.scrollTop || window.pageYOffset || 0
    };
}
// }


// 4. 风格尚选导航栏
// 第1个li
$("#c-midnav-copy-one").mouseover(function () {
    $("#c-style").show();
})

$("#c-midnav-copy-one").mouseout(function () {
    $("#c-style").hide();
})

// 第2个li
$("#c-midnav-copy-two").mouseover(function () {
    $("#c-man").show();
})

$("#c-midnav-copy-two").mouseout(function () {
    $("#c-man").hide();
})

// 第3个li
$("#c-midnav-copy-three").mouseover(function () {
    $("#c-woman").show();
})

$("#c-midnav-copy-three").mouseout(function () {
    $("#c-woman").hide();
})

// 第4个li
$("#c-midnav-copy-four").mouseover(function () {
    $("#c-bra").show();
})

$("#c-midnav-copy-four").mouseout(function () {
    $("#c-bra").hide();
})


// 第5个li
$("#c-midnav-copy-five").mouseover(function () {
    $("#c-nvxie").show();
})

$("#c-midnav-copy-five").mouseout(function () {
    $("#c-nvxie").hide();
})


// 第6个li
$("#c-midnav-copy-six").mouseover(function () {
    $("#c-nanxie").show();
})

$("#c-midnav-copy-six").mouseout(function () {
    $("#c-nanxie").hide();
})

// 第7个li
$("#c-midnav-copy-seven").mouseover(function () {
    $("#c-sport").show();
})

$("#c-midnav-copy-seven").mouseout(function () {
    $("#c-sport").hide();
})

// 第8个li
$("#c-midnav-copy-eight").mouseover(function () {
    $("#c-outdoor").show();
})

$("#c-midnav-copy-eight").mouseout(function () {
    $("#c-outdoor").hide();
})

// 第9个li
$("#c-midnav-copy-nine").mouseover(function () {
    $("#c-bead").show();
})

$("#c-midnav-copy-nine").mouseout(function () {
    $("#c-bead").hide();
})

// 第10个li
$("#c-midnav-copy-ten").mouseover(function () {
    $("#c-luggage").show();
})

$("#c-midnav-copy-ten").mouseout(function () {
    $("#c-luggage").hide();
})

// 第11个li
$("#c-midnav-copy-eleven").mouseover(function () {
    $("#c-watches").show();
})

$("#c-midnav-copy-eleven").mouseout(function () {
    $("#c-watches").hide();
})

// 第12个li
$("#c-midnav-copy-twelve").mouseover(function () {
    $("#c-ACC").show();
})

$("#c-midnav-copy-twelve").mouseout(function () {
    $("#c-ACC").hide();
})

// 第13个li
$("#c-midnav-copy-thirteen").mouseover(function () {
    $("#c-shoe").show();
})

$("#c-midnav-copy-thirteen").mouseout(function () {
    $("#c-shoe").hide();
})

// 第14个li
$("#c-midnav-copy-fourteen").mouseover(function () {
    $("#c-wasteful").show();
})

$("#c-midnav-copy-fourteen").mouseout(function () {
    $("#c-wasteful").hide();
})

// 第15个li
$("#c-midnav-copy-fiveteen").mouseover(function () {
    $("#c-original").show();
})

$("#c-midnav-copy-fiveteen").mouseout(function () {
    $("#c-original").hide();
})








// 5. 轮播图
// $("#c-slide-copy").mouseover(function () {
//     $("#c-slide-prev").show().css("vackgroundColor","rgba(44,36,38,.6)");
//     $("#c-slide-next").show().css("vackgroundColor","rgba(44,36,38,.6)");
// })

// $("#c-slide-copy").mouseout(function () {
//     $("#c-slide-prev").hide();
//     $("#c-slide-next").hide();
// })

// 左右焦点无缝连接
// 1. 获取c-slide-tran
var oCslidetran = document.querySelector(".c-slide-tran");
// 2. 获取它的宽度
var oCslidetranWidth = oCslidetran.offsetWidth;
// 3. 获取ul
var oClidecopy = document.querySelector("#c-slide-copy");
// 4. 获取第一个li
var oClidecopyFitst = document.querySelector(".c-silde-one");
// 5. 克隆
oClidecopy.appendChild(oClidecopyFitst.cloneNode(true));
// 6. 获取左右按钮
var oCslideprev = document.querySelector("#c-slide-prev");
var oCslidenext = document.querySelector("#c-slide-next");
// 7. 声明一个计数变量
var num = 0;
// 8. 声明一个定时器
// var timeId = setInterval(fn, 1500);


// 小点导航
// 1. 创建ol元素
var oCslideol = document.createElement("ol");
// 2. 把小点导航插入到view里面
oCslidetran.appendChild(oCslideol);
// 3. 遍历ul中的所有li  ul中有几个li  ol就要创建几个
for (var i = 0; i < oClidecopy.children.length - 1; i++) {
    // 4. 创建ol中的li
    var aCslideolli = document.createElement("li");
    // 5. 设置li的内容
    // aCslideolli.innerHTML = i + 1;
    // 6. 设置li的自定义属性index
    aCslideolli.setAttribute("index", i);
    oCslideol.appendChild(aCslideolli);
}
oCslideol.children[0].className = "active";


// 8. 点击左边按钮 轮播图向左移动
oCslideprev.onclick = function () {
    if (num == oClidecopy.children.length - 1) {
        num = 0;
        oClidecopy.style.left = 0 + 'px';
    }
    num++;
    animate(oClidecopy, -num * oCslidetranWidth);

    // 点击左边按钮 让对应的ol li高亮
    if (num > oCslideol.children.length - 1) {
        oCslideol.children[oCslideol.children.length - 1].className = "";
        // 让第一个选中
        oCslideol.children[0].className = "active";
    } else {
        for (var j = 0; j < oCslideol.children.length; j++) {
            oCslideol.children[j].removeAttribute("class");
        }
        oCslideol.children[num].className = "active";
    }
}




// 9. 点击右边按钮 轮播图向右移动
oCslidenext.onclick = function () {
    if (num == 0) {
        num = oClidecopy.children.length - 1;
        oClidecopy.style.left = -num * oCslidetranWidth + 'px';
    }
    num--;
    animate(oClidecopy, -num * oCslidetranWidth);


    // 点击右边按钮 让对应的ol li高亮
    for (var j = 0; j < oCslideol.children.length; j++) {
        oCslideol.children[j].removeAttribute("class");
    }
    oCslideol.children[num].className = "active";
}




// 6. 秒杀进行中
function countTime() {
    // 获取当前时间
    var date = new Date();
    // 设置截至时间
    var future = new Date(2019, 0, 12, 0, 0, 0);
    // 获取差值
    var lastTime = future - date;
    var h, m, s, lastTimeh, lastTimem, lastTimes;
    if (lastTime >= 0) {
        h = Math.floor(lastTime / 1000 / 60 / 60 % 24);
        lastTimeh = h > 9 ? h : "0" + h;
        m = Math.floor(lastTime / 1000 / 60 % 60);
        lastTimem = m > 9 ? m : "0" + m;
        s = Math.floor(lastTime / 1000 % 60);
        lastTimes = s > 9 ? s : "0" + s;
    }
    document.querySelector("#c-seck-son1-dv4").innerHTML = lastTimeh + ":" + lastTimem + ":" + lastTimes;
    setTimeout(countTime, 1000);
}
countTime();


// 7. 闪购
$("#c-light-mid-one-list").mouseover(function () {
    $("#c-light-bo1-two").show();
})
$("#c-light-mid-one-list").mouseout(function () {
    $("#c-light-bo1-two").hide();
})

$("#c-light-mid-one-list2").mouseover(function () {
    $("#c-light-bo2-two").show();
})
$("#c-light-mid-one-list2").mouseout(function () {
    $("#c-light-bo2-two").hide();
})


// 9. 自营精选
// 1. 获取所有li
var cSiftTab = document.querySelectorAll(".c-sift-tab-nav li");
// 2. 遍历每个li
for (var i = 0; i < cSiftTab.length; i++) {
    cSiftTab[i].onmouseover = function () {
        // 获取含有active的类名的标签
        var cSiftactive = document.querySelector(".c-sift-tab-nav-active");
        var cSiftCont = cSiftactive.getAttribute("cont");
        document.getElementById(cSiftCont).style.display = "none";
        cSiftactive.removeAttribute("class");
        this.className = "c-sift-tab-nav-active";
        var cSiftCon = this.getAttribute("cont");
        document.getElementById(cSiftCon).style.display = "block";
    }
}


// 10. 男装内衣
$("#c-top-left-one-a1").mouseover(function () {
    $("#c-top-left-one-b1").show();
})
$("#c-top-left-one-a1").mouseout(function () {
    $("#c-top-left-one-b1").hide();
})
$("#c-top-left-one-a2").mouseover(function () {
    $("#c-top-left-one-b2").show();
})
$("#c-top-left-one-a2").mouseout(function () {
    $("#c-top-left-one-b2").hide();
})

// 11.女装内衣
$("#c-nvzhuang-top-left-one-a1").mouseover(function () {
    $("#c-nvzhuang-top-left-one-b1").show();
})
$("#c-nvzhuang-top-left-one-a1").mouseout(function () {
    $("#c-nvzhuang-top-left-one-b1").hide();
})
$("#c-nvzhuang-top-left-one-a2").mouseover(function () {
    $("#c-nvzhuang-top-left-one-b2").show();
})
$("#c-nvzhuang-top-left-one-a2").mouseout(function () {
    $("#c-nvzhuang-top-left-one-b2").hide();
})

// 12. 精品鞋靴
$("#c-xiexue-top-left-one-a1").mouseover(function () {
    $("#c-xiexue-top-left-one-b1").show();
})
$("#c-xiexue-top-left-one-a1").mouseout(function () {
    $("#c-xiexue-top-left-one-b1").hide();
})

// 13. 精品运动
$("#c-yundong-top-left-one-a1").mouseover(function () {
    $("#c-yundong-top-left-one-b1").show();
})
$("#c-yundong-top-left-one-a1").mouseout(function () {
    $("#c-yundong-top-left-one-b1").hide();
})

// 14. 户外大牌
$("#c-huwai-top-left-one-a1").mouseover(function () {
    $("#c-huwai-top-left-one-b1").show();
})
$("#c-huwai-top-left-one-a1").mouseout(function () {
    $("#c-huwai-top-left-one-b1").hide();
})

// 15. 精品箱包
$("#c-xiangbao-top-left-one-a1").mouseover(function () {
    $("#c-xiangbao-top-left-one-b1").show();
})
$("#c-xiangbao-top-left-one-a1").mouseout(function () {
    $("#c-xiangbao-top-left-one-b1").hide();
})

//16.珠宝配饰
$("#c-zhubao-top-left-one-a1").mouseover(function () {
    $("#c-zhubao-top-left-one-b1").show();
})
$("#c-zhubao-top-left-one-a1").mouseout(function () {
    $("#c-zhubao-top-left-one-b1").hide();
})
$("#c-zhubao-top-left-one-a2").mouseover(function () {
    $("#c-zhubao-top-left-one-b2").show();
})
$("#c-zhubao-top-left-one-a2").mouseout(function () {
    $("#c-zhubao-top-left-one-b2").hide();
})

// 17. 童装童鞋
$("#c-tongzhuang-top-left-one-a1").mouseover(function () {
    $("#c-tongzhuang-top-left-one-b1").show();
})
$("#c-tongzhuang-top-left-one-a1").mouseout(function () {
    $("#c-tongzhuang-top-left-one-b1").hide();
})

// 18. 奢品大牌
$("#c-shepinda-top-left-one-a1").mouseover(function () {
    $("#c-shepinda-top-left-one-b1").show();
})
$("#c-shepinda-top-left-one-a1").mouseout(function () {
    $("#c-shepinda-top-left-one-b1").hide();
})

// 19. 典藏腕表
$("#c-wanbiao-top-left-one-a1").mouseover(function () {
    $("#c-wanbiao-top-left-one-b1").show();
})
$("#c-wanbiao-top-left-one-a1").mouseout(function () {
    $("#c-wanbiao-top-left-one-b1").hide();
})
