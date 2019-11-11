// 引入框架
const express = require('express');
// 引入配置文件
const config = require('./config');

// 创建框架对象
const app = express();

// 引入bodyParser
const bodyParser = require('body-parser');
// 注入body-parser来解决body中的参数 （post请求）
app.use(bodyParser.urlencoded({extended: true}));

// 引入老师路由
const teacherRouter = require('./routers/teachers');
// 将老师路由注册到app上 
app.use('/api/v1', teacherRouter);

// 注册登录路由
app.use('/api/v1', require('./routers/access_tokens'))

// 启动服务器
// 参数一：端口
// 参数二：ip 0.0.0.0： 绑定到本机所有ip上
// 参数三：回调
app.listen(config.server.port, config.server.ip, () => console.log(`启动,监听端口：${config.server.ip}:${config.server.port}!`));