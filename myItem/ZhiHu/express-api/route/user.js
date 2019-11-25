// // 创建路由
const router = require('express').Router();

// 创建需要令牌验证的路由
// const {router} = require('../jwt')
// 接口名称
const apiName = 'user';

const db = require('../db');

const md5 = require('md5');
const { md5_key } = require('../config');

// 添加用户
router.post(`/${apiName}`, (req, res) => {
   //   res.json({
   //      "code":100
   //   })

   // 返回JSON 数据
   let nickname = req.body.nickname || '';
   let phone = req.body.phone || '';
   let password = req.body.password || '';
   // 个性签名
   let sign = req.body.sign || "";
   // 头像路径
   let icon = req.body.icon || "";
   // 主页背景图片
   let bgpic = req.body.bgpic || "";
   // 创建时间
   let create_time = new Date();
   // 主页浏览次数
   let browe = req.body.browe || 0;

   if (nickname.length < 2 || nickname.length > 8) {
      res.json({
         "code": 400,
         "error": "用户名必须2到8位"
      })
      return
   }
   if (phone.length < 11 || phone.length > 20) {
      res.json({
         "code": 400,
         "error": "手机号必须11到20位"
      })
      return
   }
   if (password.length < 6 || password.length > 18) {
      res.json({
         "code": 400,
         "error": "密码必须6到18位"
      })
      return
   }

   // 插入数据前判断账号是否已经存在
   let sql1 = 'select * from user where phone = ?'
   db.query(sql1, [phone], (error, results, fields) => {
      if (error) return console.log(error);
      if (results.length > 0) {
         res.json({
            "code": 400,
            "error": "该账号已存在"
         })
      } else {
         // 插入到数据库数据
         let sql2 = 'INSERT INTO user SET ?'

         let data = {
            nickname: nickname,
            password: md5(password + md5_key),
            phone: phone,
            sign: sign,
            icon: icon,
            bgpic: bgpic,
            create_time: create_time,
            browe: browe
         }
         db.query(sql2, data, (error, results, fields) => {
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
      }
   })

});
// // 删除老师
// router.delete(`/${apiName}/:id(\\d+)`, (req, res) => {
//    // res.json({
//    //    "code": 200,
//    //    "message": '删除老师成功！'
//    // })

// })

// // 查询老师多条
// router.get(`/${apiName}`, (req, res) => {
//    res.json({
//       "code": 200,
//       "message": "查询多条记录成功"
//    })
// })

// 查询（id查询）
router.get(`/${apiName}/:id(\\d+)`, (req, res) => {
   let id = req.params.id;
   let sql = 'SELECT id,nickname,phone,sign,icon,bgpic,create_time,browe FROM user WHERE id in(?)';
   db.query(sql, [id], (error, results, fields) => {
      if (error) {
         res.json({
            'code': 400,
            'error': error.message
         })
      } else {
         res.json({
            'code': 200,
            'data': results[0]
         })
      }
   })
})

// 更改老师
router.put(`/${apiName}/:id(\\d+)`, (req, res) => {
   // res.json({
   //    "code": 200,
   //    "message": "修改老师成功！"
   // })
   let sql1 = 'select * from user where id = ?';
   db.query(sql1, [req.params.id], (error, results) => {
      if (error) return console.log(error);


      // 返回JSON 数据
      let nickname = req.body.nickname || results[0].nickname;
      let phone = req.body.phone || results[0].phone;
      let password = req.body.password || results[0].password;
      // 个性签名
      let sign = req.body.sign || results[0].sign;
      // 头像路径
      let icon = req.body.icon || results[0].icon;
      // 主页背景图片
      let bgpic = req.body.bgpic || results[0].bgpic;


      // 定义要修改的数据
      let data = {}
      if (phone) {
         if (phone.length < 11 || phone.length > 20) {
            res.json({
               "code": 400,
               "error": "手机号必须11到20位"
            })
            return
         }
      }
      data.phone = phone;
      data.sign = sign;
      data.icon = icon;
      data.bgpic = bgpic;
      if (nickname) {
         if (nickname.length < 2 || nickname.length > 8) {
            res.json({
               "code": 400,
               "error": "用户名必须2-8位"
            })
            return
         }
         data.nickname = nickname
      }
      data.password = md5(password + md5_key)
      if (req.body.password) {
         if (password.length < 6 || password.length > 18) {
            res.json({
               "code": 400,
               "error": "密码必须6-18位"
            })
            // 退出程序
            return
         }
      }

      // 判断data是否为控
      // if (JSON.stringify(data) == "{}") {
      //    res.json({
      //       "code": 400,
      //       "error": "用户明密码至少修改一项"
      //    })
      //    return
      // }
      let sql = "UPDATE user SET ? WHERE id=?";
      let id = req.params.id;
      // 执行sql
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
})


module.exports = router;