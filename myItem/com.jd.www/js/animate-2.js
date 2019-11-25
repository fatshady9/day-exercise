/**
 * 
 * @param {*} elem 元素
 * @param {*} target 距离
 */
function animated(elem, target) {
  // 初始化定时器
  var timer = null;
  // 清除定时器
  clearInterval(elem.timer);
  // 获取元素的当前位置
  var current = elem.offsetLeft;
  // 声明定时器
  elem.timer = setInterval(function () {
    // 设置步进值(让步进值越来越小)
    var step = (target - current) / 10;
    // 判断步进值
    step = step > 0 ? Math.ceil(step) : Math.floor(step);
    // 累加
    current += step;
    // 赋值
    elem.style.left = current + 'px';
    // 如果当前值==目标值,清除定时器
    if (current == target) {
      clearInterval(elem.timer);
    }
  }, 10)
}
