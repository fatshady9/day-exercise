// 引入md5
const md5 = require('md5');
const { md5_key } = require('../config');
// 引入数据库
const db = require('../db');
// 引入令牌
const jwt = require('../jwt');

// 创建路由
const router = require('express').Router();

// 登录
router.post('/access_tokens', (req, res) => {
  // res.json({
  //   "code":200,
  //   "message": "登录成功"
  // })

  // 获取 用户昵称和密码
  let phone = req.body.phone;
  let password = req.body.password;

  // sql语句
  let sql = 'SELECT * FROM user WHERE phone = ?';

  db.query(sql, [phone], (error, results, fields) => {
    if (error) return console.log(error);
    // 判断用户昵称是否存在
    if (results[0]) {
      // 判断密码是否正确
      if (md5(password + md5_key) == results[0].password) {
        results[0].password = '';
        res.json({
          "code": 200,
          "message": "登录成功",
          "data": results[0],
          "token": jwt.makeJWT({
            id: results[0].id
          })
        })
        return
      } else {
        res.json({
          "code": 400,
          "error": "密码错误"
        })
        return
      }
    } else {
      res.json({
        "code": 400,
        "error": "用户名不存在"
      })
      return
    }
  })
})

module.exports = router;