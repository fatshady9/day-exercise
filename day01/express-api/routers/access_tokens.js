// 引入md5 加密
const md5 = require('md5');
const { md5_key } = require('../config');
// 引入令牌
const jwt = require('jsonwebtoken');

// 引入数据库
const db = require('../db');
// 创建路由
const router = require('express').Router();

// 配置登录路由
router.post('/access_tokens', (req, res) => {
  // 测试是否登录成功：
  // res.json({
  //   "code": "登录"
  // })

  /**1. 接收用户名和密码 */
  const username = req.body.username;
  const password = req.body.password;

  /**2.使用 用户名在数据库查询账号 */
  let sql = 'SELECT * FROM st_teachers WHERE username = ?'
  db.query(sql, username, (err, results, fields) => {
    // console.log(results);

    // 判断账号是否存在
    if (results[0]) {

      /**3. 判断提交密码是否与数据库一致 */

      // 判断密码 (把用户密码加密并和数据库中的对比)
      if (md5(password + md5_key) == results[0].password) {
        // 登录成功 生成令牌 expiresIn过期时间
        jwt.sign({
          id: 100,
          username: 'jack',
          isAdmin: true
        }, md5_key, { expiresIn: '2h' })
      } else {
        res.json({
          "code": 400,
          "error": "密码错误！"
        })
      }
      
      /**4.登录成功 把用户名和密码保存到令牌并返回 */
      res.json(results[0])

    } else {
      res.json({
        "code": 400,
        "error": "用户名不存在！"
      })
    }

  })
})

// 导出路由
module.exports = router