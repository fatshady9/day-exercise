// 创建路由
const router = require('express').Router();
// 接口名称
const apiName = 'question';
// 引入数据库
const db = require('../db');

// 添加
router.post(`/${apiName}`, (req, res) => {

   /* 接口数据并验证 */
   let question = req.body.question || ''; // 问题名称
   let discribe = req.body.discribe || ''; // 问题描述
   let user_id = req.body.user_id || ''; // 提问者id
   let time = new Date(); // 提问时间
   // let browe = req.body.browe || ''; // 浏览次数

   if (question.length < 2 || question.length > 100) {
      res.json({
         "code": 400,
         "error": "问题名称必须 2 到 100 位"
      })
      return
   }

   /** 插入到数据库中 */
   let sql1 = "INSERT INTO question SET ?";
   let data = {
      question: question,
      discribe: discribe,
      user_id: user_id,
      time: time
      // browe: browe
   }
   db.query(sql1, data, (error, results, fields) => {
      if (error) {
         res.json({
            "code": 400,
            "error": "添加失败！"
         })
      }
      // 获取最后一个问题，刚提的问题
      let sql2 = 'select * from question order by time desc limit 1';
      db.query(sql2, (error2, results2, fields) => {
         if (error2) return console.log(error2);

         res.json({
            "code": 200,
            "ques_id": results2[0].id
         })
      })
   })
})

// 查询问题通过id
router.get(`/${apiName}/:id(\\d+)`, (req, res) => {
   let id = req.params.id;

   let user_id = req.query.user_id;
   let sql = `select * from question where id = ?`;
   // 获取所有目标问题id的问题
   db.query(sql, id, (error, results, fields) => {
      if (error || results.length == 0) {
         res.json({
            "code": 400
         })
         return
      }
      let browe = results[0].browe + 1;
      // 获取问题浏览数
      let sql2 = `UPDATE question SET browe = ${browe} WHERE id = ${id}`;
      db.query(sql2, (error, results2, fields) => {
         if (error) {
            res.json({
               "code": 400,
               "error": error.message
            })
            return
         }
         let sql3 = `select * from ques_attention where user_id = ${user_id} and ques_id = ${id}`
         // 判断用户是否关注该问题
         db.query(sql3, (error, results3, fields) => {
            if (error) return console.log(error);
            let isAttention = false;
            if (results3.length > 0) {
               isAttention = true;
            }
            res.json({
               "code": 200,
               "data": results,
               "isAttention": isAttention
            })
         })
      })
   })
})

// 根据某个字段排序查询问题
router.get(`/${apiName}_waiting`, (req, res) => {
   let order = req.query.order || "id";
   let limit = req.query.limit || 10;
   let sql = `select * from question order by ${order} desc limit ${limit}`;
   db.query(sql, (error, results, fields) => {
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


// 搜索问题
router.get(`/${apiName}/search`, (req, res) => {
   // 接收查询参数
   let page = req.query.page || 1;
   let per_page = req.query.per_page || 5;
   let sortby = req.query.sortby || 'id';
   let sortway = req.query.sortway || 'asc';
   let name = req.query.name || '';

   /** 根据查询参数拼 SQL 语句 */
   let where = '';
   let data = [];
   if (name) {
      where = `WHERE question LIKE ?`
      data[0] = `%${name}%`
   }

   // 排序
   let order = `ORDER BY id ${sortway}`;

   // 翻页
   let offset = (page - 1) * per_page;
   let limit = `LIMIT ${offset},${per_page}`;

   // 查询总的记录数
   let sql1 = `SELECT count(*) total FROM question ${where}`
   db.query(sql1, data, (err, results, fields) => {
      // 总的记录数
      let total = results[0].total;

      // 查询数据
      let sql2 = `SELECT id,question FROM question ${where} ${order} ${limit}`
      db.query(sql2, data, (err, results, fields) => {
         res.json({
            "code": 200,
            "total": total,
            "data": results
         })
      })
   })
})

// 根据用户id查询问题
router.get(`/${apiName}_user/:id(\\d+)`, (req, res) => {
   let id = req.params.id;

   let sql = `select * from question where user_id = ?`;
   // 获取所有目标问题id的问题
   db.query(sql, id, (error, results, fields) => {
      if (error) {
         console.log(error);
         res.json({
            "code": 400
         })
         return
      }
      res.json({
         "code": 200,
         "data": results
      })
   })
})


module.exports = router;