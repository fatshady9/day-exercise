// 创建router
const router = require('express').Router();
// 引入数据库
const db = require('../db');
// 接口名称
const apiName = 'ques_comment';

// 添加问题评论
router.post(`/${apiName}`, (req, res) => {
  // 获取 主体参数
  let user_id = req.body.user_id;
  let ques_id = req.body.ques_id;
  let content = req.body.content;
  let time = req.body.time;
  // 数据
  let data = {
    user_id,
    ques_id,
    content,
    time
  }
  // sql语句
  let sql = 'INSERT INTO ques_comment SET ?';
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

// 删除评论
router.delete(`/${apiName}/:id(\\d+)`, (req, res) => {
  // 获取id
  let id = req.params.id;
  // sql语句
  let sql = 'DELETE FROM ques_comment WHERE id = ?';
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

// 修改评论
router.put(`/${apiName}/:id(\\d+)`, (req, res) => {
  // 获取 主体参数
  let content = req.body.content;
  // 定义数据
  let data = {}
  // 将修改后的数据添加进data
  data.content = content;

  // 判断 data是否为空  JSON.stringify--将对象转换成字符串
  if (JSON.stringify(data) == "{}") {
    res.json({
      "code": 400,
      "error": "请修改评论"
    })
    // 退出程序
    return
  }

  // sql语句
  let sql = 'UPDATE ques_comment SET ? WHERE id = ?'
  // 获取id
  let id = req.params.id;
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

// 导出路由
module.exports = router;