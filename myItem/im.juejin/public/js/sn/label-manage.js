
var followedBtn = document.querySelectorAll(".tag-ul li a");followedBtn
console.log(followedBtn);
for (var i = 0; i < followedBtn.length; i++) {
  // 3.给a标签添加点击事件
  followedBtn[i].onclick = function () {
    var attention = document.querySelector('.attention');
    var con = attention.getAttribute('cont'); 
    document.getElementById(con).style.display = "none";
    attention.removeAttribute('class');
    this.className = 'attention';
    var cont = this.getAttribute('cont');
    document.getElementById(cont).style.display = 'block';
  }

}




// 标签分类
var focustabBtn = document.querySelectorAll(".fenlei>li>a");
console.log(focustabBtn);
for (var i = 0; i < focustabBtn.length; i++) {
  // 3.给a标签添加点击事件
  focustabBtn[i].onclick = function () {
    console.log(23)
    var focustab = document.querySelector('.focustab');
    var con = focustab.getAttribute('cont'); 
    document.getElementById(con).style.display = "none";
    focustab.removeAttribute('class');
    this.className = 'focustab';
    var cont = this.getAttribute('cont');
    document.getElementById(cont).style.display = 'block';
  }

}