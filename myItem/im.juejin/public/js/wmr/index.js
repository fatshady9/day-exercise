//获取标签
let register = document.querySelector('.register-last');
<<<<<<< HEAD
let last = document.querySelector('.last-select');
=======
let last =  document.querySelector('.last-select');
>>>>>>> 970249c64414e85021dbc3046f051eed7b421bbc
let more = document.querySelector('.more');
//ul
let moreul = document.querySelector('.more-ul');
//li
let moreli = document.querySelector('.more-ul-li');
//div
let alter = document.querySelector('.alter');
//显示下拉
<<<<<<< HEAD
let tli = document.querySelector('.alter-i');
let btn = document.querySelector('.alter-btn');

let cook = document.querySelectorAll('.cook-i');//点击
let cleft = document.querySelectorAll('.cook-last');//显示
let set = document.querySelectorAll('.scott-cook');//最大
for (var i = 0; i < cook.length; i++) {
    // cook[i].setAttribute('index',i);
    cook[i].onclick = function () {
        for (var y = 0; y < cleft.length; y++) {
            // cook[y].removeAttribute('class');
            // cleft[y].style.display = 'none';
            cleft[y].style.display = 'block';
        }
        // this.className = 'active';
        // cleft[this.getAttribute('index')].style.display = 'block';
    }
}
// cook.onclick = function () {
//     if (cleft.style.display == 'none') {
//         cleft.style.display = 'block';
//         self.style.offsetHeight = 249 + 'px';
//     } else {
//         cleft.style.display = 'none';
//         self.style.offsetHeight = 143 + 'px';
//     }
// }

register.onclick = function () {
    if (last.style.display == 'none') {
=======
register.onclick = function () {
    if(last.style.display =='none') {
>>>>>>> 970249c64414e85021dbc3046f051eed7b421bbc
        last.style.display = 'block';
    } else {
        last.style.display = 'none';
    }
}
//显示下拉 2
more.onclick = function () {
<<<<<<< HEAD
    if (moreul.style.display == 'none') {
=======
    if(moreul.style.display =='none') {
>>>>>>> 970249c64414e85021dbc3046f051eed7b421bbc
        moreul.style.display = 'block';
    } else {
        moreul.style.display = 'none';
    }
}
//弹框
moreli.onclick = function () {
<<<<<<< HEAD
    if (alter.style.display == 'none') {
        alter.style.display = 'block';
        document.body.style.overflow = 'hidden';
        moreul.style.display = 'none';
    } else {
        alter.style.display = 'none';
        document.body.style.overflow = 'auto';
    }
}
tli.onclick = function () {
    if (alter.style.display == 'block')
        alter.style.display = 'none';
}
btn.onclick = function () {
    if (alter.style.display == 'block')
        alter.style.display = 'none';
}
//tab切换
var aLi = document.querySelectorAll('.neck-ul a');
var cLi = document.querySelectorAll('.session ');
for (var x = 0; x < aLi.length; x++) {
=======
    if(alter.style.display == 'none') {
        alter.style.display = 'block';
    } else {
        alter.style.display = 'none';
    }
}
//tab切换
var aLi = document.querySelectorAll('.neck-ul a');
var cLi = document.querySelectorAll('.session ');
for (var x= 0; x < aLi.length; x++) {
>>>>>>> 970249c64414e85021dbc3046f051eed7b421bbc
    aLi[x].setAttribute('index', x);
    aLi[x].onclick = function () {
        for (var k = 0; k < cLi.length; k++) {
            aLi[k].removeAttribute('class');
            cLi[k].style.display = 'none';
        }
        this.className = 'active';
        cLi[this.getAttribute('index')].style.display = 'inline-block';
    }
}
<<<<<<< HEAD
$(document).click(function (e) {
    let target = $(e.target);
    if (target.closest('.more').length == 0) {
        $('.more-ul').slideUp();
    }
    if (target.closest('.register-last').length == 0) {
        $('.last-select').slideUp();
    }
})
=======
// $(document).click(function (e) {
//     let target = $(e.target);
//     if (target.closest('.more').length == 0) {
//         $('.more-ul').slideUp();
//     }
//     if (target.closest('.register-last').length == 0) {
//         $('.last-select').slideUp();
//     }
// })
>>>>>>> 970249c64414e85021dbc3046f051eed7b421bbc
//退出
document.querySelector('.select-quit').onclick = function () {
    alert('确定登出吗？每一片贫瘠的土地都需要坚定的挖掘者！');
}
//热门
var oDiv = document.querySelectorAll('.scott-tab');
var aDiv = document.querySelectorAll('.scott-span');
for (var i = 0; i < oDiv.length; i++) {
    oDiv[i].setAttribute('index', i);
    oDiv[i].onmouseover = function () {
        for (var y = 0; y < aDiv.length; y++) {
            aDiv[y].style.display = 'none';
        }
        aDiv[this.getAttribute('index')].style.display = 'inline-block';
    }
    oDiv[i].onmouseout = function () {
        aDiv[this.getAttribute('index')].style.display = 'none';
    }
}
//获取导航 小导航
var header = document.querySelector('.header');
var neck = document.querySelector('.neck');
// 滚动事件
$(window).scroll(function () {
    if (ScollPostion().top > 0) {
        header.style.display = 'none';
        neck.style.top = -20 + 'px';
    } else if (ScollPostion().top == 0) {
        header.style.display = 'inline-block';
        neck.style.top = 46 + 'px';
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