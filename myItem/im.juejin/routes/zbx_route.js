// 1.引入express
const express = require('express');
// 2.使用express的Router来创建路由
const router = express.Router();
//3.引入 控制器
const indexCtrl = require('../controllers/zbx_contr');

// 4.1 显示首页
router.get('/login', indexCtrl.login);



// 5.暴露路由
module.exports = router;