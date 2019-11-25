function animates(elem, obj, fn) {
  // 清除定时器
  clearInterval(elem.timer);
  // 声明定时器
  elem.timer = setInterval(function () {
    // 默认所有属性都达到了目标值
    var flag = true;
    // 遍历对象
    for (var attr in obj) {
      // 判断是不是opacity
      if (attr == 'opacity') {
        // 获取当前的opacity的值
        //(它的值大多数为小数,防止出现精度问题,当前值和目标值乘100,结果再除以100)
        var current = getStyle(elem, attr) * 100;
        // 获取目标值
        var target = obj[attr] * 100;
        // 声明步进值(越来越小)
        var step = (target - current) / 10;
        // 判断步进值
        step = step > 0 ? Math.ceil(step) : Math.floor(step);
        // 累加
        current += step;
        // 赋值(opacity没有px)
        elem.style[attr] = current / 100;
        // 判断是不是zIndex
      } else if (attr == 'zIndex') {
        // zIndex没有过渡 直接赋值
        elem.style[attr] = obj[attr];
        // (判断是不是其他属性)
      } else {
        // 获取属性初始值
        var current = parseInt(getStyle(elem, attr));
        // 获取最终值
        var target = obj[attr];
        // 声明步进值(越来越小)
        var step = (target - current) / 10;
        // 判断步进值
        step = step > 0 ? Math.ceil(step) : Math.floor(step);
        // 累加
        current += step;
        // 赋值
        elem.style[attr] = current + 'px';
      }
      // 判断是不是每个属性都达到了目标值,没有达到,让flag为false
      if (current != target) {
        flag = false;
      }
    }
    // 如果为true,都达到了目标值,停止定时器
    if (flag) {
      clearInterval(elem.timer);
      // 如果停了函数还有回调函数,那继续执行回调函数的代码
      if (fn) {
        fn();
      }
    }
  }, 10)
}



// 获取属性的初始值
function getStyle(elem, attr) {
  if (window.getComputedStyle) {
    return window.getComputedStyle(elem, null)[attr];
  }
}