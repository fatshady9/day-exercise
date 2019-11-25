
/*左右tab栏切换*/

$('#la').click(function () {
    $('.a-cw').css('color', '#E4393C')
    $('#ra').css('color', '#666')
    $('#li-show').css('display', 'block');
    $('#old-li').css('display', 'none');
})
$('#ra').click(function () {
    $('#ra').css('color', '#E4393C').css('font-weight', 'bold')
    $('.a-cw').css('color','#666')
    $('#li-show').css('display','none' );
    $('#old-li').css('display', 'block');
})


var t1 = document.querySelector('#text1');
var t2 = document.querySelector('#text2');
var lab1 = documnet.querySelector('#lab1');
var lab2 = documnet.querySelector('#lab2');
t1.onclick = function () {
    lab1.style.backgroundColor = "#e8e8e8";
    lab2.style.backgroundColor = " ";
}
t2.onclick = function () {
    lab1.style.backgroundColor = "";
    lab2.style.backgroundColor = " #e8e8e8";
}