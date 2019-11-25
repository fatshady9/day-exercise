// 创建路由
const router = require('express').Router();
// 引入数据库
const db = require('../db');
// 接口名称
const apiName = 'user_attention';


// 添加关注作者
router.post(`/${apiName}`, (req, res) => {
  // 获取 主体参数
  let be_atten_id = req.body.be_atten_id;
  let atten_id = req.body.atten_id;
  let time = req.body.time;
  // 数据
  let data = {
    be_atten_id,
    atten_id,
    time
  }
  // sql语句
  let sql = 'INSERT INTO user_attention SET ?';
  // 执行sql
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

// 删除关注作者
router.delete(`/${apiName}/:id(\\d+)`, (req, res) => {
  // 获取id
  let id = req.params.id;
  // sql语句
  let sql = 'DELETE FROM user_attention WHERE id = ?'
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

// 查询关注作者
router.get(`/${apiName}/num`, (req, res) => {
  // 获取id
  let id = Number(req.query.id);
  // sql语句
  let sql = "select count(*) as total from user_attention where be_atten_id = ?"
  db.query(sql, [id], (error, results, fieds) => {
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


// 查询我关注的人
router.get(`/${apiName}/atten`, (req, res) => {
  let atten_id = req.query.atten_id;
  let sql = 'select * from user where id in (select be_atten_id from user_attention where atten_id = ?)';
  db.query(sql, [atten_id], (error, results) => {
    if (error) {
      res.json({
        'code': 400,
        'error': error.message
      })
      console.log(error);
    } else {
      res.json({
        'code': 200,
        'data': results
      })
    }
  })
})

// 查询关注我的人
router.get(`/${apiName}/be_atten`, (req, res) => {
  let be_atten_id = req.query.be_atten_id;
  let sql = 'select * from user where id in (select atten_id from user_attention where be_atten_id = ?)';
  db.query(sql, [be_atten_id], (error, results) => {
    if (error) {
      res.json({
        'code': 400,
        'error': error.message
      })
      console.log(error);
    } else {
      res.json({
        'code': 200,
        'data': results
      })
    }
  })
})

// 查询关注的问题
router.get(`/${apiName}/problem`, (req, res) => {
  let user_id = req.query.user_id;
  let sql = 'select * from question where id in (select ques_id from ques_attention where user_id = ?)';
  db.query(sql, [user_id], (error, results) => {
    if (error) {
      res.json({
        'code': 400,
        'error': error.message
      })
      console.log(error);
    } else {
      res.json({
        'code': 200,
        'data': results
      })
    }
  })
})

// 导出路由
module.exports = router;