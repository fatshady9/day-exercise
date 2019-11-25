// 引入express 文件
const express = require('express')
// 引入配置文件
const config = require('./config')
// 创建框架对象
// 配置body-parser
const bodyParser = require('body-parser')
const app = express()

app.use(bodyParser.urlencoded({
   extended: false
}))
// 引入用户路由
const userRouter = require('./route/user')



// app.all('*', function (req, res, next) {
//    res.header("Access-Control-Allow-Origin", "*");
//    res.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
//    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
//    res.header("X-Powered-By", ' 3.2.1')
//    if (req.method == "OPTIONS") res.send(200);/*让options请求快速返回*/
//    else next();
// });

// 跨域
var cors = require('cors');
app.use(cors({
   origin: ['http://localhost:8080','http://192.168.86.61:8080'], // 指定接收的地址
   methods: ['GET', 'POST', 'PUT', 'DELETE'], // 指定接收的请求类型
   alloweHeaders: ['Content-Type', 'Authorization'] // 指定header
}));


// 注册用户路由
app.use('/api/v1', userRouter);
// 注册问题路由
app.use('/api/v1', require('./route/question'));

// 注册回答路由
app.use('/api/v1', require('./route/answer'));

// 注册点赞路由
app.use('/api/v1', require('./route/agree'));

// 注册 回答评论路由
app.use('/api/v1', require('./route/answer_comment'));
// 注册登录路由
// app.use('/api/v1', require('./route/access_token'));

// 注册 关注问题路由
app.use('/api/v1', require('./route/ques_attention'));

// 注册 问题评论路由
app.use('/api/v1', require('./route/ques_comment'));

// 注册 关注用户路由
app.use('/api/v1', require('./route/user_attention'));

// 注册登录路由
app.use('/api/v1', require('./route/access_tokens'));

// 配置路由
// app.get('/', (req, res) => {
//    res.send('hello world')
// });

// 参数1：端口
// 参数2 ：ip地址
// 参数3：回调函数
app.listen(config.server.port, config.server.ip, function () {
   console.log(`启动端口:${config.server.ip}:${config.server.port}!`);

})