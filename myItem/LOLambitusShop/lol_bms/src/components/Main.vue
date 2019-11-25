<template>
  <div class="main">
    <div class="co-left" width="20%">
      <el-card class="box-card" width="20%">
        <div class="circle">
          <el-image
            style="width: 40px; height: 40px"
            src="https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185735_830332.png"
          ></el-image>
        </div>
        <div class="cart">
          <span>成交订单</span>
          <p>{{order_num}}&nbsp;笔</p>
        </div>
      </el-card>

      <el-card class="box-card box-card2" width="20%">
        <div class="circle">
          <el-image
            style="width: 40px; height: 40px"
            src="https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185711_967521.png"
          ></el-image>
        </div>
        <div class="cart">
          <span>营业总额</span>
          <p>￥{{order_price}}</p>
        </div>
      </el-card>

      <!-- 用户 -->
      <el-card class="box-card box-card3" width="20%">
        <div class="circle">
          <el-image
            style="width: 40px; height: 40px"
            src="https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185749_703907.png"
          ></el-image>
        </div>
        <div class="cart">
          <span>商城用户</span>
          <p>{{user_num}}&nbsp;位</p>
        </div>
      </el-card>
    </div>

    <div class="right">
      <el-card class="left">
        <el-image
          style="width: 40px; height: 40px"
          src="https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185749_703907.png"
        ></el-image> <span class="xiao">&nbsp;&nbsp;&nbsp;&nbsp;商品销量排行</span>
        <el-table :data="goodsData" class="tables"  style="width: 100%">
          <el-table-column type="index" width="50"></el-table-column>
          <el-table-column label="商品图片" prop="path">
            <template slot-scope="scoped">
              <div class="demo-image">
                <el-image style="width: 70px; height: 65px" :src="scoped.row.path" fit="fill"></el-image>
              </div>
            </template>
          </el-table-column>
          <el-table-column label="商品名" prop="goods_name"></el-table-column>
          <el-table-column label="商品单价" prop="price"></el-table-column>
          <el-table-column label="商品销量" prop="total_sale"></el-table-column>
        </el-table>
      </el-card>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      user_num: 0,
      order_num: 0,
      order_price: 0,
      url:
        "https://game.gtimg.cn/images/daojushop/zb/ad/201804/20180418185735_830332.png",
      goodsData: [],
      imgList: []
    };
  },
  methods: {
    getShopping() {
      this.$http.get("/shopping").then(res => {
        window.console.log(res.data.data[0]);
        this.order_num = res.data.data[0].order_num;
        this.order_price = res.data.data[0].order_price;
        this.user_num = res.data.user_num[0].user_num;
      });
    },
    async getGoodsList() {
      let { data: res } = await this.$http.get("/goods_main");
      window.console.log(res);
      this.goodsData = res.goodsData;
      this.imgList = res.goodsImg;
      this.goodsData.forEach(item => {
        let index = this.imgList.findIndex(item2 => {
          return item.id == item2.goods_id;
        });
          // window.console.log();
        item.path = this.imgList[index].path;
      });
      window.console.log(this.goodsData)
    }
  },
  created() {
    this.getShopping();
    this.getGoodsList();
  }
};
</script>

<style lang="less" scoped>
#app {
    .el-card {
    box-shadow: 2px 2px 6px 0 rgba(0, 0, 0, 0.28);
    border:none;
  }
}
.left {
  float: left;
  width: 100%;
  margin-top: 4px;
}
.box-card {
  margin-bottom: 40px;
  width: 500px;
  background-color: #2dce89;


}
.box-card2 {
  background-color: #5e72e4;
}
.box-card3 {
  background-color: #f5365c;
}
.circle {
  float: left;
  width: 60px;
  height: 60px;
  border: 1px solid #ffffff;
  border-radius: 50%;
}
.cart {
  float: left;
  margin-left: 40px;
  color: #ffffff;
  p {
    margin-top: 10px;
    font-weight: bold;
    font-size: 24px;
  }
}
.el-image {
  margin-left: 10px;
  margin-top: 10px;
}
.co-left {
  float: left;
  margin-top: 38px;
  margin-left: 40px;
}
.right {
  float: left;
  width: 55%;
  margin-top: 35px;
  margin-left:50px;
}
.xiao{
  position: relative;
  top:-15px;
  font-weight: bold
}
</style>
