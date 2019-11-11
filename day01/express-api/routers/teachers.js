// 创建路由
const express = require('express');
const router = express.Router();

// 引入md5加密
const md5 = require('md5');
// 引入密钥
const { md5_key } = require('../config');

// 引入数据库
const db = require('../db');

// 接口名称
const apiName = 'teachers'

// 添加老师接口  用 ${api}代替teachers 反引号代替引号
router.post(`/${apiName}`, (req, res) => {
  /************** 接口数据并验证 */
  // 接收主体参数
  let username = req.body.username || '';
  let password = req.body.password || '';

  // 判断用户名长度
  if (username.length < 2 || username.length > 8) {
    // 返回json数据
    res.json({
      "code": 400,
      "error": "用户名必须是 2~8 位"
    })
    // 退出程序
    return
  }

  // 判断密码长度
  if (password.length < 6 || password.length > 18) {
    res.json({
      "code": 400,
      "error": "密码必须是 6~18 位"
    })
    // 退出程序
    return
  }

  // 插入到数据库中
  let sql = 'INSERT INTO st_teachers SET ?'
  let data = {
    username,  // 相当于 username: username
    // 密码加密
    password: md5(password + md5_key)  //把密码加密保存到数据库中
  }

  // 执行sql语句：
  // error：执行sql出错
  // results: 执行sql返回的结果
  // fields：执行sql返回的字段的结果
  db.query(sql, data, (error, results, fields) => {
    if (error) {
      res.json({
        "code": 400,
        "error": error.message
      })
    } else {
      res.json({
        "code": 200
      })
    }
  })
})

// 删除  (\\d+) 正则 表示一个id
router.delete(`/${apiName}/:id(\\d+)`, (req, res) => {
  // 接收 路径参数
  let id = req.params.id
  let sql = 'DELETE FROM st_teachers WHERE id = ?'
  // 执行sql语句
  db.query(sql, id, (error, results, fields) => {
    if (error) {
      res.json({
        "code": 400,
        "error": error.message
      })
    } else {
      res.json({
        "code": 200
      })
    }
  })
})

// 修改
router.put(`/${apiName}/:id(\\d+)`, (req, res) => {
  // 接收 主体参数
  let username = req.body.username
  let password = req.body.password

  // 定义要修改的数据
  let data = {}

  // 判断提交用户名格式是否正确
  if (username) {
    if (username.length < 2 || username.length > 8) {
      res.json({
        "code": 400,
        "error": "用户名必须2 ~ 8 位"
      })
      // 退出程序
      return
    }
    // 添加到data中
    data.username = username;
  }

  // 判断提交密码格式是否正确
  if (password) {
    if (password.length < 6 || password.length > 18) {
      res.json({
        "code": 400,
        "error": "密码必须是 6~18 位"
      })
      // 退出程序
      return
    }
    // 添加到data
    data.password = md5(password + md5_key);
  }

  // 判断data是否为空
  if (JSON.stringify(data) == "{}") {
    res.json({
      "code": 400,
      "error": "用户名和密码至少要修改一项"
    })
    // 退出程序
    return
  }

  // 将数据修改到数据库中
  let sql = 'UPDATE st_teachers SET ? WHERE id = ?'
  let id = req.params.id

  // 执行sql语句
  db.query(sql, [data, id], (error, results, fields) => {
    if (error) {
      res.json({
        "code": 400,
        "error": error.message
      })
    } else {
      res.json({
        "code": 200
      })
    }
  })
})

// 查询多个老师
router.get(`/${apiName}`, (req, res) => {
  // 接收查询参数
  let page = req.query.page || 1;
  let per_page = req.query.per_page || 1;
  let sortby = req.query.sortby || 'id';  // 根据id排序
  let sortway = req.query.sortway || 'asc';  // 排序方式默认升序
  let name = req.query.name || ''

  // 根据查询参数拼接sql语句
  let where = '';
  let data = [];
  if (name) {
    where = `WHERE username LIKE ?`
    // 模糊查询
    data[0] = `%${name}%`
  }

  // 排序
  let order = `ORDER BY id ${sortway}`

  // 翻页
  let offset = (page - 1) * per_page
  let limit = `LIMIT ${offset}, ${per_page}`

  // 查询总记录数
  let sql1 = `SELECT COUNT(*) total FROM st_teachers ${where}`
  db.query(sql1, data, (error, results, fields) => {

    // 总的记录数
    let total = results[0].total

    // 查询数据
    let sql2 = `SELECT id, username FROM st_teachers ${where} ${order} ${limit}`
    db.query(sql2, data, (error, results, fields) => {
      res.json({
        "code": 200,
        "total": total,
        "data": results
      })
    })
  })
})

// 查询一个老师
router.get(`/${apiName}/:id(\\d+)`, (req, res) => {
  // 接收 路径参数
  let id = req.params.id
  // sql语句
  let sql = 'SELECT id, username FROM st_teachers WHERE id = ?'
  // 执行sql语句
  db.query(sql, id, (error, results, fields) => {
    if (error) {
      res.json({
        "code": 400,
        "error": error.message
      })
    } else {
      res.json({
        "code": 200,
        "data": results[0]
      })
    }
  })
})

// 导出路由
module.exports = router;