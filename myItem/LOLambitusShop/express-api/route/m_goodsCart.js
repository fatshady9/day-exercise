// 创建路由
const router = require('express').Router()
// 引入数据库
const db = require('../db')

// 查询商品
router.get(`/goodsCart`, (req, res) => {
    // 查询所有商品数据
    let sql = `SELECT * FROM goods limit 4`
    db.query(sql, (error, data1) => {
      if (error) {
        res.json({
          'ok': 0,
          'error': error
        })
      } else {
        // 查询所有商品图片数据
        let sql = `SELECT * FROM goods_img`
        db.query(sql, (error, data2) => {
          if (error) {
            res.json({
              'ok': 0,
              'error': error
            })
          } else {
            res.json({
              'ok': 1,
              'goods': data1,
              'img': data2,
            })
          }
        })
      }
    })
})

router.get('/uploads/:pic_name', (req, res) => {
  res.sendFile(path.join(__dirname, "/../uploads/", req.params.pic_name))
})


// 暴露路由
module.exports = router