const express = require('express')
const app = express()

// 配置body-parser
const bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({ extended: true }))

// cors解决跨域
const cors = require('cors')
app.use(cors())

// 引入数据库
const myslq = require('mysql')
// 创建一个新连接对象
const db = myslq.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'fullstackshop'
})
// 连接mysql
db.connect()

// 轮播图接口
app.get('/api/v1/main_ad_images', (req, res) => {
  // sql语句
  let sql = 'SELECT image, link FROM shop_swipe_image'
  // 使用sql语句
  db.query(sql, (error, data) => {
    // 如果错误，返回错误信息
    if (error) {
      res.json({
        'ok': 0,
        'error': error
      })
    } else {
      res.json({
        'ok': 1,
        'data': data
      })
    }
  })
})

// 商品分类接口
app.get('/api/v1/index_categories', (req, res) => {
  // sql语句
  let sql = 'SELECT * FROM shop_categories'
  // 使用sql语句
  db.query(sql, (error, data) => {
    // 如果错误，返回错误信息
    if (error) {
      res.json({
        'ok': 0,
        'error': error
      })
    } else {
      res.json({
        'ok': 1,
        'data': data
      })
    }
  })
})

// 商品列表接口  (问号后的参数用 query接收))
app.get('/api/v1/index_goods', (req, res) => {
  // 接收查询参数
  let page = req.query.page || 1
  let per_page = req.query.per_page || 20
  // 翻页  limit x，y
  // x：开始取的记录的下标  y：一共取多少个
  // 第n页每页10条： （n-1）*10，10
  // 计算开始下标
  let offset = (page - 1) * per_page
  let limit = `LIMIT ${offset}, ${per_page}`

  // 查询数据
  let sql = `SELECT * FROM shop_goods_list ${limit}`
  db.query(sql, (error, data) => {
    if (error) {
      res.json({
        'ok': 0,
        'error': error
      })
    } else {
      res.json({
        'ok': 1,
        'data': data
      })
    }
  })
})

// 获取购物车数据接口
app.get('/api/v1/goods', (req, res) => {
  // 获取id
  let id = req.query.id
  // 把id转成数组
  id = id.split(',')
  // 保存 ？ 的数组
  let wenhao = []
  // 循环id获取有几个 ？
  id.forEach(v => {
    wenhao.push('?')
  });
  // 把问号数组转成字符串
  wenhao = wenhao.join(',')
  let sql = `SELECT * FROM shop_goods_list WHERE id IN(${wenhao})`
  // 执行sql语句
  db.query(sql, id, (error, data) => {
    if (error) {
      res.json({
        'ok': 0,
        'error': error
      })
    } else {
      res.json({
        'ok': 1,
        'data': data
      })
    }
  })
})

// 启动服务器
app.listen(9999, () => {
  console.log("服务器启动、监听：127.0.0.1:9999")
})