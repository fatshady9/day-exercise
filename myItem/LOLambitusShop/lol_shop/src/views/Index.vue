<template>
  <div class="index">
    <!-- 轮播图 -->
    <van-swipe :autoplay="3000" indicator-color="white">
      <van-swipe-item v-for="(item, index) in swipes" :key="index">
        <van-image :src="item.image"></van-image>
      </van-swipe-item>
    </van-swipe>

    <!-- 搜索 -->
    <div class="notice">
      <van-icon class="search_icon" @click="$router.push('/search')" name="search" />
      <van-icon class="sort_icon" @click="$router.push('/sort')" name="apps-o" />
    </div>
    <!-- 下拉 -->

    <!-- 分类 -->
    <div class="classify_btns">
      <van-grid>
        <van-grid-item text="全部周边" route to="/sort">
          <van-image
            slot="icon"
            width="44"
            height="44"
            src="https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185711_967521.png"
          />
        </van-grid-item>
        <van-grid-item text="新品尝鲜" route to="/sort?sort=time">
          <van-image
            slot="icon"
            width="44"
            height="44"
            src="https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185735_830332.png"
          />
        </van-grid-item>
        <van-grid-item text="人气爆款" route to="/sort?sort=total_sale">
          <van-image
            slot="icon"
            width="44"
            height="44"
            src="https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185749_703907.png"
          />
        </van-grid-item>
        <van-grid-item text="生活用品" route to="/sort?classify_id=1">
          <van-image
            slot="icon"
            width="44"
            height="44"
            src="https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185806_972677.png"
          />
        </van-grid-item>
      </van-grid>
    </div>
    <!-- 精品推荐 -->
    <van-divider
      :style="{ color: 'black', borderColor: 'black', padding: '0 120px'}"
      class="classify_btn"
    >精品推荐</van-divider>
    <!--精品推荐商品 -->
    <van-grid :column-num="2">
      <van-grid-item
        v-for="(item, index) in goods7List"
        :key="index"
        route
        :to="'/product/'+item.id"
      >
        <!-- 标签 -->
        <div slot="text" class="ico-mall" v-if="item.status == 2 || item.status == 3">
          <span class="mark-txt" v-if="item.status == 2">新品</span>
          <span class="mark-txt" v-if="item.status == 3">限定</span>
        </div>
        <!-- 自定义图标（插槽） -->
        <div slot="icon">
          <van-image :class="item.inventory == 0 ? 'no_goods' : ''" :src="item.path.path"></van-image>
        </div>
        <!-- 自定义文字 -->
        <div slot="text" style="width:100%;padding:10px 10px;box-sizing:border-box">
          <div class="title">{{item.goods_name}}</div>
          <div class="price">
            <span class="now_price">￥{{item.price}}</span>
            <span class="old_price">￥{{item.price}}</span>
          </div>
        </div>
      </van-grid-item>
    </van-grid>

    <!-- 塑料专区 -->
    <van-divider :style="{ color: 'black', borderColor: 'black', padding: '0 120px'}">塑料专区</van-divider>
    <!--手办 -->
    <van-grid :column-num="2">
      <van-grid-item
        v-for="(item, index) in goods2List"
        :key="index"
        route
        :to="'/product/'+item.id"
        border
      >
        <!-- 标签 -->
        <div slot="text" class="ico-mall" v-if="item.status == 2 || item.status == 3">
          <span class="mark-txt" v-if="item.status == 2">新品</span>
          <span class="mark-txt" v-if="item.status == 3">限定</span>
        </div>
        <!-- 自定义图标（插槽） -->
        <div slot="icon">
          <van-image :class="item.inventory == 0 ? 'no_goods' : ''" :src="item.path.path"></van-image>
        </div>
        <!-- 自定义文字 -->
        <div slot="text" style="width:100%;padding:10px 10px;box-sizing:border-box">
          <div class="title">{{item.goods_name}}</div>
          <div class="price">
            <span class="now_price">￥{{item.price}}</span>
            <span class="old_price">￥{{item.price}}</span>
          </div>
        </div>
      </van-grid-item>
    </van-grid>

    <!-- 毛绒专区 -->

    <van-divider :style="{ color: 'black', borderColor: 'black', padding: '0 120px'}">毛绒专区</van-divider>
    <!--毛绒-->
    <van-grid :column-num="2">
      <van-grid-item
        v-for="(item, index) in goods3List"
        :key="index"
        route
        :to="'/product/'+item.id"
      >
        <!-- 标签 -->
        <div slot="text" class="ico-mall" v-if="item.status == 2 || item.status == 3">
          <span class="mark-txt" v-if="item.status == 2">新品</span>
          <span class="mark-txt" v-if="item.status == 3">限定</span>
        </div>
        <!-- 自定义图标（插槽） -->
        <div slot="icon">
          <van-image :class="item.inventory == 0 ? 'no_goods' : ''" :src="item.path.path"></van-image>
        </div>
        <!-- 自定义文字 -->
        <div slot="text" style="width:100%;padding:10px 10px;box-sizing:border-box">
          <div class="title">{{item.goods_name}}</div>
          <div class="price">
            <span class="now_price">￥{{item.price}}</span>
            <span class="old_price">￥{{item.price}}</span>
          </div>
        </div>
      </van-grid-item>
    </van-grid>

    <!-- LPL专区 -->

    <van-divider :style="{ color: 'black', borderColor: 'black', padding: '0 120px'}">LPL周边</van-divider>
    <!--毛绒-->
    <van-grid :column-num="2">
      <van-grid-item
        v-for="(item, index) in goods6List"
        :key="index"
        route
        :to="'/product/'+item.id"
      >
        <!-- 标签 -->
        <div slot="text" class="ico-mall" v-if="item.status == 2 || item.status == 3">
          <span class="mark-txt" v-if="item.status == 2">新品</span>
          <span class="mark-txt" v-if="item.status == 3">限定</span>
        </div>
        <!-- 自定义图标（插槽） -->
        <div slot="icon">
          <van-image :class="item.inventory == 0 ? 'no_goods' : ''" :src="item.path.path"></van-image>
        </div>
        <!-- 自定义文字 -->
        <div slot="text" style="width:100%;padding:10px 10px;box-sizing:border-box">
          <div class="title">{{item.goods_name}}</div>
          <div class="price">
            <span class="now_price">￥{{item.price}}</span>
            <span class="old_price">￥{{item.price}}</span>
          </div>
        </div>
      </van-grid-item>
    </van-grid>

    <!-- 海报 -->

    <van-divider :style="{ color: 'black', borderColor: 'black', padding: '0 120px'}">海报艺术</van-divider>
    <!--毛绒-->
    <van-grid :column-num="2">
      <van-grid-item
        v-for="(item,index) in goods5List"
        :key="index"
        border
        route
        :to="'/product/'+item.id"
      >
        <van-image slot="icon" :src="item.path.path" />
        <div slot="text">
          <div class="goods_name">{{item.goods_name}}</div>
          <div class="price">￥{{item.price}}</div>
        </div>
      </van-grid-item>
      <!-- 查看全部商品 -->
    </van-grid>
    <van-cell title="查看全部商品" is-link route to="/sort" />
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  data () {
    return {
      // current: 0,
      // 轮播图,
      swipes: [
        {
          image:
            'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191120100537_592411.jpg'
        },
        {
          image:
            'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115190059_531554.jpg'
        },
        {
          image:
            'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191114182749_239207.jpg'
        },
        {
          image:
            'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191106100045_579949.jpg'
        },
        {
          image:
            'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191106102513_902144.jpg'
        }
      ],
      // 精品专区
      goods7List: [],
      // 塑料专区
      goods2List: [],
      // 毛绒专区
      goods3List: [],
      // LPL专区
      goods6List: [],
      // 海报艺术
      goods5List: []
    }
  },
  methods: {
    // 获取轮播图
    getSwipes () {
      // this.$http.get('/main_ad_images').then(res => {
      //   this.swipes = res.data.data
      // })
    },
    getGoods (id) {
      this.$http.get(`/classify/${id}`).then(res => {
        console.log(res.data)
        let _this = this
        _this['goods' + id + 'List'] = res.data.data
      })
    },
    // 存储点击的商品id
    toGoods (id) {
      this.$router.push(`/product/${id}`)
    }
  },
  created () {
    this.$emit('getTo', 'home')
    // 精品
    this.getGoods(7)
    // 塑料
    this.getGoods(2)
    // 毛绒
    this.getGoods(3)
    // LPL
    this.getGoods(6)
    // 海报
    this.getGoods(5)
    // 获取轮播图
    this.getSwipes()
  }
}
</script>

<style lang="less" scoped>
.index {
  padding-bottom: 50px;
}
.van-icon-search:before {
  content: "\F0AF";
  padding-left: 8px;
  padding-top: 7px;
}
.notice .van-icon.search_icon {
  border-radius: 50%;
  width: 40px;
  height: 40px;
  background: #00000054;
  color: #f8f8f8;
  position: absolute;
  top: 0.9rem;
  right: 0.9rem;
  font-size: 24px;
  line-height: 26px;
}
.notice .van-icon.sort_icon {
  border-radius: 50%;
  width: 40px;
  height: 40px;
  background: #00000054;
  color: #f8f8f8;
  position: absolute;
  top: 0.9rem;
  left: 0.9rem;
  font-size: 24px;
  line-height: 40px;
  text-align: center;
}
.van-icon-bars:before {
  content: "\F016";
  padding-left: 8px;
  padding-top: 7px;
}
.index .van-image__img {
  width: 175px;
  height: 169.16;
}
.index .van-cell {
  color: #323233;
  padding: 10px 150px;
  text-align: center;
}
.sort {
  background: url(https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185711_967521.png)
    center center no-repeat;
  background-size: 60% auto;
  // width:44px;
  // height: 44px;
  // background-color: aqua;
  // background-image: url(../assets/img/20180418185711_967521.png);
  // background-position: 10px 10px;;
}

.van-grid-item__content--center {
  padding: 0px;
}
.price {
  .now_price {
    font-size: 18px;
    color: #f7606a;
  }
  .old_price {
    color: #999999;
    text-decoration: line-through;
  }
}

.ico-mall {
  position: absolute;
  top: 0;
  right: 10px;
  width: 30px;
  height: 30px;
  font-size: 10px;
  color: #333;
  text-align: center;
  font-weight: 500;
  display: table;
  background: url(/img/ico-mall.3e317044.png);
  background-size: 23rem 32rem;
  background-position: -4.3rem -25.3rem;
  line-height: 23px;
}
.van-divider {
  font-size: 18px;
  margin-top: 20px;
}
.van-grid.van-hairline--top {
  margin-top: 10px;
}
.van-hairline--top::after {
  border: none;
}
</style>

<style scoped>
.index .van-grid-item__content--center {
  padding: 0px;
}
.index .classify_btns .van-grid-item__content::after {
  border: none;
}
.index .van-grid-item__content::after {
  border-width: 1px;
}
.van-grid {
  background: #fff;
}
div.title {
  min-height: 40px;
}
.title,
.price {
  text-align: left;
}
.no_goods::after {
  display: block;
  content: "缺货";
  width: 50px;
  height: 50px;
  text-align: center;
  line-height: 50px;
  color: #111;
  font-size: 14px;
  font-weight: 200;
  border-radius: 50%;
  background-color: rgba(255, 189, 67, 0.692);
  position: absolute;
  left: 50%;
  top: 70px;
  margin-left: -25px;
  z-index: 1;
}
.no_goods::before {
  display: block;
  content: "";
  width: 100%;
  height: 100%;
  position: absolute;
  left: 0px;
  top: 0px;
  background-color: rgba(255, 255, 255, 0.48);
  z-index: 0;
}
</style>
