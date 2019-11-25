var arr = document.querySelectorAll('.act-hd-piece');
for (var i = 0; i < arr.length; i++) {
    arr[i].onmouseover = function () {
        // console.log(1);
        this.style.marginTop = -5 + 'px';
        this.style.boxShadow='1px 1px 10px 2px rgb(187, 186, 186)'
    }
    arr[i].onmouseout = function () {
        // console.log(1);
        this.style.marginTop = 0 + 'px';
        this.style.boxShadow='none'
    }
}