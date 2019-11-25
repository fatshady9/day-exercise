// 5. 海洋酒水专场  定时器
    // 获取函数
    function countTime() {
      // 获取当前时间
      var date = new Date();
      // 设置截止时间(月份为0-11代表12个月,所有0代表1月)
      var end = new Date("2019/1/25,12:40:00");
      // 获取差值
      var leftTime = end - date;
      // 声明 天数,小时,分钟,秒
      var d, h, m, s;
      // 如果差值>=0,则继续获取
      if (leftTime >= 0) {
        d = Math.floor(leftTime / 1000 / 60 / 60 / 24);
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
      document.querySelector(".p-drink-more").innerHTML = "剩余" + d + "天" + h + "时" + m + "分" + s + "秒";
      // 设置定时器让函数一秒走一次
      setTimeout(countTime, 1000);
    }
    // 调用函数
    countTime();