<template>
  <div class="ordes">
    <!-- 面包屑导航 -->
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>订单管理</el-breadcrumb-item>
      <el-breadcrumb-item>订单列表</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- card卡片 -->
    <el-card class="box-card">
      <!-- 搜索框 -->
      <!-- 2.1 搜索框 -->
      <el-row>
        <el-col :span="8">
          <el-input placeholder="请输入内容" v-model="queryInfo.search">
            <el-button slot="append" icon="el-icon-search " @click="getOrderData"></el-button>
          </el-input>
        </el-col>
      </el-row>
      <template>
        <el-table style="width: 100%" :data="oredrData">
          <el-table-column type="index" width="50"></el-table-column>
          <el-table-column type="expand">
            <template slot-scope="props">
              <el-form label-position="left" inline class="demo-table-expand">
                <el-form-item label="收货人姓名">
                  <span>{{props.row.shr_name}}</span>
                </el-form-item>
                <el-form-item label="收货人电话">
                  <span>{{props.row.shr_phone}}</span>
                </el-form-item>
                <el-form-item label="下订单时间">
                  <span>{{props.row.addtime | dateFormat}}</span>
                </el-form-item>
                <el-form-item label="邮政编号">
                  <span>{{props.row.shr_zipcode}}</span>
                </el-form-item>
                <el-form-item label="省份">
                  <span>{{props.row.shr_province}}</span>
                </el-form-item>
                <el-form-item label="市">
                  <span>{{props.row.shr_city}}</span>
                </el-form-item>
                <el-form-item label="区/县">
                  <span>{{props.row.shr_area}}</span>
                </el-form-item>
                <el-form-item label="详细地址">
                  <span>{{props.row.shr_address}}</span>
                </el-form-item>
              </el-form>
              <el-button type="primary" class="look-goods" @click="lookGoods(props.row.id)">查看本订单商品</el-button>
            </template>
          </el-table-column>
          <el-table-column label="订单号" prop="order_sn"></el-table-column>
          <el-table-column label="订单金额" prop="total_price">
            <template slot-scope="scope">
              <div slot="reference" class="name-wrapper">
                <el-tag size="medium">￥ {{ scope.row.total_price }}</el-tag>
              </div>
            </template>
          </el-table-column>
          <el-table-column label="订单状态" prop="status">
            <template slot-scope="scope">
              <div slot="reference" class="name-wrapper">
                <el-tag type="danger" size="medium" v-if="scope.row.status==0">未支付</el-tag>
                <el-tag type="warning" size="medium" v-if="scope.row.status==1">已支付！待发货</el-tag>
                <el-tag size="medium" v-if="scope.row.status==2">已发货！待签收</el-tag>
                <el-tag size="medium" v-if="scope.row.status==3">已签收！待评论</el-tag>
                <el-tag type="success" size="medium" v-if="scope.row.status==4">订单完成</el-tag>
              </div>
            </template>
          </el-table-column>
          <el-table-column label="是否发货">
            <template slot-scope="scoped">
              <el-switch
                @change="userSwitch(scoped.row,scoped.row.id)"
                v-model="scoped.row.switch"
                active-color="#13ce66"
                inactive-color="#eaecf0"
              ></el-switch>
            </template>
          </el-table-column>
          <el-table-column label="订单客户" prop="username"></el-table-column>

          <el-table-column label="操作" prop="desc">
            <template slot-scope="scope">
              <el-button
                type="primary"
                icon="el-icon-edit"
                circle
                @click="echoData(scope.row,scope.row.id)"
              ></el-button>
              <el-button
                type="danger"
                icon="el-icon-delete"
                circle
                @click="removeOrder(scope.row.id)"
              ></el-button>
            </template>
          </el-table-column>
        </el-table>
      </template>
      <!-- 修改抽屉 -->
      <el-drawer
        title="修改订单 !"
        :visible.sync="dialogOrder"
        direction="rtl"
        custom-class="demo-drawer"
        ref="drawer"
      >
        <div class="demo-drawer__content">
          <el-form :model="oredrUpData" :rules="orderUprules" ref="orderUpref">
            <el-form-item label="收货人" label-width="100px" prop="shr_name">
              <el-input v-model="oredrUpData.shr_name"></el-input>
            </el-form-item>
            <el-form-item label="收货人电话" label-width="100px" prop="shr_phone">
              <el-input v-model="oredrUpData.shr_phone"></el-input>
            </el-form-item>
            <el-form-item label="邮政编号" label-width="100px" prop="shr_zipcode">
              <el-input v-model="oredrUpData.shr_zipcode"></el-input>
            </el-form-item>
            <el-form-item label="详细地址" label-width="100px" prop="shr_address">
              <el-input v-model="oredrUpData.shr_address"></el-input>
            </el-form-item>
          </el-form>
          <div class="demo-drawer__footer">
            <el-button @click="dialogOrder = false">取 消</el-button>
            <el-button type="primary" @click="updateData">确定修改</el-button>
          </div>
        </div>
      </el-drawer>

      <!-- 查看订单商品抽屉 -->
      <el-drawer title="订单详情" :visible.sync="drawerGoods" :direction="ttb" size="60%">
        <template>
          <el-table :data="detailsData" class="tables" height="220" style="width: 100%">
            <el-table-column type="index" width="50"></el-table-column>
            <el-table-column label="商品图片" prop="goods_image">
              <template slot-scope="scoped">
                <div class="demo-image">
                  <el-image
                    style="width: 70px; height: 65px"
                    :src="scoped.row.goods_image"
                    fit="fill"
                  ></el-image>
                </div>
              </template>
            </el-table-column>
            <el-table-column label="商品名" prop="goods_name"></el-table-column>
            <el-table-column label="商品单价" prop="price"></el-table-column>
            <el-table-column label="购买数量" prop="buy_count"></el-table-column>
          </el-table>
        </template>
      </el-drawer>

      <!-- 分页 -->
      <el-pagination
        background
        @current-change="handleCurrentChange"
        :current-page="queryInfo.pagenum"
        :page-sizes="[5, 10, 20, 30]"
        :page-size="queryInfo.pagesize"
        layout="total, sizes, prev, pager, next, jumper"
        :total="total"
      ></el-pagination>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      //  订单数据
      oredrData: [],
      //  用户数据
      userData: [],
      // 订单商品数据
      orderGoodsData: [],
      // 商品请求参数
      queryInfo: {
        search: "",
        pagenum: 1,
        pagesize: 5
      },
      total: 0,
      // 修改抽屉
      rtl: "rtl",
      dialogOrder: false,
      // 修改
      oredrUpData: {
        shr_name: "",
        shr_phone: "",
        shr_zipcode: 0,
        shr_address: ""
      },
      // 校验
      orderUprules: {
        shr_name: [
          { required: true, message: "请输入收货人名称", trigger: "blur" }
        ],
        shr_phone: [
          {
            required: true,
            message: "请输入收货人电话",
            trigger: "blur"
          }
        ],
        shr_zipcode: [
          {
            required: true,
            message: "请按正确格式输入邮政编码",
            trigger: "blur"
          }
        ],
        shr_address: [
          {
            required: true,
            message: "请输入详细地址",
            trigger: "blur"
          }
        ]
      },
      updataId: 0,
      ttb: "ttb",
      drawerGoods: false,
      detailsData: [],
      switch_sta: false
    };
  },
  methods: {
    //  请求订单接口
    async getOrderData() {
      let { data: res } = await this.$http.get("/order", {
        params: this.queryInfo
      });
      //   window.console.log(res);
      if (res.status != 200)
        return this.$message.error("未知错误！获取订单信息失败");
      this.userData = res.userData;
      this.oredrData = res.ordersList;
      this.orderGoodsData = res.goods_orderlist;
      this.total = res.goods_total;
      //   window.console.log(this.userData);
      //   window.console.log(this.oredrData);
      this.oredrData.forEach(item => {
        let index = this.userData.findIndex(item2 => {
          return item.user_id == item2.id;
        });

        item.username = this.userData[index].username;
      });
      this.oredrData.forEach(item => {
        if (item.status == 0 || item.status == 1) {
          item.switch = false;
        } else {
          item.switch = true;
        }
      });
    },
    //  页面显示多少条数据之后触发
    handleSizeChange(size) {
      this.queryInfo.pagesize = size;
      this.getOrderData();
    },
    //  页码发生变化时触发
    handleCurrentChange(num) {
      this.queryInfo.pagenum = num;
      this.getOrderData();
    },

    // 修改
    // 回显数据
    echoData(data, id) {
      window.console.log(data, id);

      this.updataId = id;
      this.dialogOrder = true;
      this.oredrUpData.shr_name = data.shr_name;
      this.oredrUpData.shr_phone = data.shr_phone;
      this.oredrUpData.shr_zipcode = data.shr_zipcode;
      this.oredrUpData.shr_address = data.shr_address;
    },
    // 数据更新
    async updateData() {
      this.$refs.orderUpref.validate(async valid => {
        if (!valid) return this.$message.error("请把数据填写完整");
        let { data: res } = await this.$http.put(
          `/order/${this.updataId}`,
          this.oredrUpData
        );
        // window.console.log(res);
        if (res.status != 200)
          return this.$message.error("未知错误！！修改失败");

        if (res.status == 200) {
          this.$message.success("修改订单成功");
          this.getOrderData();
          this.dialogOrder = false;
          this.$refs.orderUpref.resetFields();
        }
      });
    },
    //  删除
    async removeOrder(id) {
      const removeResult = await this.$confirm(
        "此操作将永久删除该文件, 是否继续?",
        "提示",
        {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }
      ).catch(error => error);
      // console.log(removeResult);
      if (removeResult == "cancel") {
        return this.$message.error("已取消删除");
      }
      const { data: res } = await this.$http.delete(`/order/${id}`);
      if (res.status != 200) {
        return this.$message.error("删除数据失败");
      }
      this.$message.success("删除成功");
      this.getOrderData();
    },

    async lookGoods(id) {
      this.drawerGoods = true;
      window.console.log(id);
      let { data: res } = await this.$http.get(`/ordergoods/${id}`);
      if (res.status != 200)
        return this.$message.error("未知错误！获取数据失败");
      this.detailsData = res.data;
      window.console.log(this.detailsData);
    },

    // 是否发货
    async userSwitch(data, id) {
      window.console.log(data, id);
      if (data.status == 0) {
        this.$message.error(
          "亲！此订单还未付款！小本生意，经不起折腾！不准发货"
        );
      } else if (data.status == 1) {
        let or_status = 2;
        const shipments = await this.$confirm(
          "将为该订单执行出库流程！是否同意！",
          {
            confirmButtonText: "确定",
            cancelButtonText: "取消",
            type: "warning"
          }
        ).catch(error => error);
        if (shipments == "cancel") {
          return this.$message.error('已取消发货')
        }
        let { data: res } = await this.$http.put(`/orderdely/${id}`, {
            status: or_status
          });
          // window.console.log(res);
          this.switch_sta = true;
          this.$message.success(
            "叮！发货成功！亲=====(￣▽￣*)！您明天的晚饭有着落了哦@"
          );
          this.getOrderData();
      } else {
        this.$message.error("亲！此订单已发货！看看您的钱包再决定是否重复发货");
      }
    }
  },
  created() {
    this.getOrderData();
  }
};
</script>  

<style lang="less" scoped>
.input-with-select {
  width: 480px;
  height: 40px;
}
.el-table {
  margin-top: 20px;
}
.el-table {
  margin-bottom: 20px;
}
.el-card {
  margin: 25px 0px;
}
</style>

<style>
.demo-table-expand {
  font-size: 0;
  margin-left: 60px;
}
.demo-table-expand label {
  width: 100px;
  color: #99a9bf;
  font-weight: bold;
  font-size: 17px;
}
.demo-table-expand .el-form-item {
  margin-right: 0;
  margin-bottom: 0;
  width: 100%;
  font-weight: bold;
}
.demo-drawer__footer {
  margin-left: 33px;
}
.demo-drawer__content {
  padding-right: 25px;
  padding-top: 30px;
}
.look-goods {
  position: absolute;
  right: 110px;
  bottom: 26px;
}
.tables {
  padding: 0px 20px;
}
</style>