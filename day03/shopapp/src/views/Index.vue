<template>
  <!-- 轮播图 -->
  <div class="index">
    <van-swipe :autoplay="3000" indicator-color="blue">
      <van-swipe-item v-for="(item, index) in swipes" :key="index">
        <van-image :src="item.image" />
      </van-swipe-item>
    </van-swipe>
    <!-- 商品分类 -->
    <van-grid>
      <van-grid-item v-for="(item, index) in categories" :key="index" :text="item.cat_name" />
    </van-grid>
    <!-- 商品列表 -->
    <van-list finished-text="我是有底线的~" v-model="loading" :finished="finished" @load="goodsLoad">
      <van-grid :column-num="2">
        <van-grid-item v-for="(item, index) in goods" :key="index">
          <!-- 自定义图标（插槽） -->
          <van-image slot="icon" :src="item.image"></van-image>
          <!-- 自定义文字 -->
          <div slot="text">
            <div class="title">{{item.goods_name}}</div>
            <div class="price">￥{{item.price}}</div>
            <van-button size="small" @click="addToCart(item.id)" type="warning">加入购物车</van-button>
          </div>
        </van-grid-item>
      </van-grid>
    </van-list>
  </div>
</template>

<script>
export default {
  data () {
    return {
      // 轮播图
      swipes: [],
      // 商品分类
      categories: [],
      // 商品列表
      goods: [],
      // 当前页
      page: 1,
      // 一页有多少条数
      per_page: 10,
      // 是否处于加载状态,如果是true就不能在加载
      loading: false,
      // 是否加载完成
      finished: false
    }
  },
  methods: {
    // 滚动条与底部距离小于 offset 时触发
    goodsLoad () {
      this.$http
        .get(`/index_goods?page=${this.page}&per_page=${this.per_page}`)
        .then(res => {
          // 把数据放进goods
          this.goods.push(...res.data.data)
          // 加载状态
          this.loading = false
          // 设置页面最多加载50条数据
          if (this.goods.length >= 16) {
            // 加载完成
            this.finished = true
          } else {
            // 让页数加一
            this.page++
          }
        })
    },
    // 加入购物车
    addToCart (id) {
      /** *********************** 保存id */
      // 从浏览器拿出id (localStorage除非清除数据，否则一直都在)
      let ids = localStorage.getItem('id')
      // 一开始还没点击时还没有id
      if (ids === null) {
      // 就存一个进去
        ids = [id]
      } else {
        // 用的时候用数组
        ids = JSON.parse(ids)
        // 把id加进数组里
        ids.push(id)
        // 去重 ES6新语法 set去重
        ids = Array.from(new Set(ids))
      }
      // 将点击的id存到浏览器 (浏览器只能存字符串)
      localStorage.setItem('id', JSON.stringify(ids))

      /** *********************** 保存cart */
      // cart数组：保存所有的数量和是否勾选（重点：用商品的id作为数组下标）
      // 从浏览器拿出cart
      let cart = localStorage.getItem('cart')
      // 一开始还没点击时还没有id
      if (cart === null) {
      // 先把cart设置成一个数组 否则会报错
        cart = []
        // 没有就先存一个进去
        cart[id] = {
          ischk: false, // 默认不勾选
          count: 1 // 默认为1
        }
      } else {
        // 用的时候用数组
        cart = JSON.parse(cart)
        // 把新选中的商品加进数组里
        cart[id] = {
          ischk: false, // 默认不勾选
          count: 1 // 默认为1
        }

        // 判断商品是否已经存在，存在就数量加1
        if (cart[id] === undefined || cart[id] === null) {
          cart[id] = {
            ischk: false,
            count: 1
          }
        } else {
          cart[id].count++
        }
      }
      // 将点击的商品存到浏览器 (浏览器只能存字符串)
      localStorage.setItem('cart', JSON.stringify(cart))
    }
  },
  created () {
    // 轮播图接口
    this.$http.get('/main_ad_images').then(res => {
      this.swipes = res.data.data
    })
    // 商品分类接口
    this.$http.get('/index_categories').then(res => {
      this.categories = res.data.data
    })
  }
}
</script>

<style>
.index .price {
  color: #ff0121;
  font-size: 12px;
  font-weight: bold;
  margin: 5px 10px;
}
</style>
