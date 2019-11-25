// 创建路由
const router = require('express').Router();
// 引入数据库
const db = require('../db');
// 接口名称
const apiName = 'ques_attention';

// 添加关注
router.post(`/${apiName}`, (req, res) => {
  // 获取 主体参数
  let ques_id = req.body.ques_id;
  let user_id = req.body.user_id;
  // sql语句
  let sql = 'INSERT INTO ques_attention SET ?';
  // 数据
  let data = {
    ques_id,
    user_id
  }

  // let sql2 = `select * from ques_attention where ques_id = ${data.ques_id} and
  //  user_id in(select user_id from  ques_attention where ques_id= ${data.ques_id})`;
  // db.query(sql2, (error, results, fields) => {
  // })

  // 执行sql语句
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

// 删除关注
router.delete(`/${apiName}/:id(\\d+)`, (req, res) => {
  // 获取 id
  let id = req.params.id;
  // sql语句
  let sql = 'DELETE FROM ques_attention WHERE ID = ?';
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


// 根据user_id查询关注问题
router.get(`/${apiName}`, (req, res) => {
  let user_id = req.query.user_id;

  let sql = 'select * from question where id in (select id from ques_attention where user_id = ?)';
  db.query(sql, [user_id], (error, results) => {
    if (error) return console.log(error);

    res.json({
      'data': results

    })
  })
})

// 根据问题id查询关注人数
router.get(`/${apiName}/num`, (req, res) => {
  let ques_id = req.query.ques_id;

  let sql = 'select * from ques_attention where ques_id = ?';
  db.query(sql, [ques_id], (error, results) => {
    if (error) return console.log(error);
    res.json({
      "data":results,
      'total': results.length
    })
  })
})


// 导出路由
module.exports = router;