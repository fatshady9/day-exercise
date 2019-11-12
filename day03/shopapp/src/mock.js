import Mock from 'mockjs'

// 商品列表接口
// \d 1个数字
// * 0~多个数字
// ? 0~1个
// + 1~多个  如ab+  代表1个a和1个或多个b
Mock.mock(/http:\/\/127.0.0.1:9999\/api\/v1\/index_goods\?page=\d+&per_page=\d+/, 'get', {
  'ok': 1,
  'data|10': [
    {
      'id|+1': 1,
      'goods_name': '@ctitle',
      'price': '@integer(20,1000)',
      'image': '@dataImage(130x130)'
    }
  ]
})
