<template>
  <div class="cart">
    <van-nav-bar title="购物车" />
    <van-checkbox :label-disabled="true" v-for="(item, index) in goods" :key="index" v-model="cart[item.id].ischk">
      <van-card :price="item.price" :title="item.goods_name" :thumb="item.image" >
        <!-- 自定义数量部分 -->
        <van-stepper slot="num" v-model="cart[item.id].count" />
        <!-- 自定义小计 -->
        <div slot="footer">小计：￥{{(cart[item.id].count * item.price)}}</div>
      </van-card>
    </van-checkbox>
    <!-- 提交订单栏 -->
    <van-submit-bar
  :price="totalPrice"
  button-text="提交订单"
>
  <van-checkbox v-model="allChk">全选</van-checkbox>
  <span slot="tip">
    你的收货地址不支持同城送, <span>修改地址</span>
  </span>
</van-submit-bar>
  </div>
</template>

<script>
export default {
  data () {
    return {
      // 获取浏览器里保存的id
      id: JSON.parse(localStorage.getItem('id')),
      // 获取浏览器商品数量和是否勾选
      cart: JSON.parse(localStorage.getItem('cart')),
      // 商品数组
      goods: []
    }
  },
  created () {
    // 如果浏览器有商品id就调用购物车接口
    if (this.id.length > 0) {
      // 购物车接口 join() 将数组中所有元素放进一个字符串
      this.$http.get('/goods?id=' + this.id.join(',')).then(res => {
        this.goods = res.data.data
      })
    }
  },
  // 计算属性
  computed: {
    totalPrice: function () {
      let sum = 0
      // 循环所有商品
      this.goods.forEach(v => {
        // 如果勾选就把价格加到总价上
        if (this.cart[v.id].ischk) {
          sum += v.price * this.cart[v.id].count
        }
      })
      // 返回结果 (默认是分为单位，所有转化成元 *100)
      return sum * 100
    },

    // 是否全选
    allChk: {
      // get 获取
      // set 设置
      get: function () {
        // 遍历商品
        for (let i = 0; i < this.cart.length; i++) {
          // 商品为null就跳过
          if (this.cart[i] === null) continue
          // 只要有一个没勾选就返回 false
          if (this.cart[i].ischk === false) {
            return false
          }
        }
        // 否则返回true
        return true
      },
      // 每当点击全选按钮这个函数就被调用 有一个参数：勾选之后的值
      set: function (newValue) {
        this.cart.forEach(v => {
          // 判断商品不为null时修改勾选状态的值
          if (v !== null) {
            v.ischk = newValue
          }
        })
      }
    }
  },
  // 监听器 监听一个变量，当这个变量的值发生改变时触发
  // 注意：监听对象时要深度监听
  watch: {
    // 防止刷新页面勾选数量和是否勾选清空
    cart: {
      deep: true, // 深度监听
      handler: function () {
        // 把cart写进浏览器
        localStorage.setItem('cart', JSON.stringify(this.cart))
      }
    }
  }
}
</script>

<style>
.cart {
  padding-bottom: 85px;
}
.cart .van-nav-bar {
  background-color: #dd5145;
}
.cart .van-checkbox__label {
  width: 100%;
}
.cart .van-checkbox {
  background-color: #fafafa;
  margin-bottom: 5px;
}
.cart .van-checkbox__icon {
  margin-left: 6px;
}
.cart .van-submit-bar {
  margin-bottom: 50px;
}
</style>
