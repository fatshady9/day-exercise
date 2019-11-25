// 创建路由
const router = require('express').Router();
// 引入数据库
const db = require('../db');
// 接口名称
const apiName = 'answer_comment';



// 增加回答评论
router.post(`/${apiName}`, (req, res) => {
  // 获取主体参数
  let user_id = req.body.user_id //评论者id
  let answer_id = req.body.answer_id //评论者回答id
  let content = req.body.content // 评论内容
  let nickname = req.body.nickname // 评论时间

  // sql语句
  let sql = 'INSERT INTO answer_comment SET ?'

  // 数据
  let data = {
    user_id,
    answer_id,
    content,
    nickname
  }

  // 执行sql语句
  // error: 返回错误的信息   results: 执行sql返回的结果   fileds: 执行sql返回字段的结果
  db.query(sql, data, (error, results, fields) => {
    // 如果错误 返回错误信息
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

// 根据回答id查询评论
router.get(`/${apiName}`, (req, res) => {
  // 获取查询参数
  let limit = Number(req.query.limit);
  let answer_id = Number(req.query.answer_id);
  // 查询
  let sql = `select * from answer_comment where answer_id = ?`;
  db.query(sql,[answer_id,limit], (error, results, fields) => {
    if (error) {
      res.json({
        "code": 400,
        "error": error.message
      })
    } else {
      res.json({
        "code": 200,
        "data": results
      })
    }
  })
})




// 导出路由
module.exports = router;