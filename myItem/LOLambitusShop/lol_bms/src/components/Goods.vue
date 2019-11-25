<template>
  <div class="goods">
    <!-- 面包屑导航 -->
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>商品管理</el-breadcrumb-item>
      <el-breadcrumb-item>商品列表</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- card卡片 -->
    <el-card class="box-card">
      <!-- 搜索框 -->
      <el-row :gutter="20">
        <!-- 搜索 -->
        <el-col :span="10">
          <el-input placeholder="请输入内容" v-model="queryInfo.search">
            <el-button slot="append" icon="el-icon-search" @click="getGoodsList"></el-button>
          </el-input>
          <el-button type="primary" class="sales">按销量排行</el-button>
        </el-col>
      </el-row>

      <el-table style="width: 100%" :data="goodsData">
        <el-table-column type="index" width="50"></el-table-column>
        <el-table-column label="商品名称">
          <template slot-scope="scope">
            <div slot="reference" class="name-wrapper">
              <el-tag size="medium">{{scope.row.goods_name}}</el-tag>
            </div>
          </template>
        </el-table-column>
        <el-table-column label="商品价格" prop="price"></el-table-column>
        <el-table-column label="商品库存" prop="inventory"></el-table-column>
        <el-table-column label="所属分类" prop="class_name"></el-table-column>
        <el-table-column label="商品销量" prop="total_sale"></el-table-column>
        <el-table-column label="商品上架日期">
          <template slot-scope="scope">
            <i class="el-icon-time"></i>
            <span style="margin-left: 10px">{{scope.row.time}}</span>
          </template>
        </el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button size="mini" @click="echoData(scope.row,scope.row.id)">修改</el-button>
            <el-button size="mini" type="danger" @click="removeGoods(scope.row.id)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>

      <!-- 修改抽屉 -->
      <el-drawer
        title="修改商品 !"
        :visible.sync="dialog"
        direction="rtl"
        custom-class="demo-drawer"
        ref="drawer"
      >
        <div class="demo-drawer__content">
          <el-form :model="goodsUpData" :rules="goodsUprules" ref="goodsUpref">
            <el-form-item label="商品名称" label-width="100px" prop="goods_name">
              <el-input v-model="goodsUpData.goods_name"></el-input>
            </el-form-item>
            <el-form-item label="商品价格" label-width="100px" prop="price">
              <el-input v-model="goodsUpData.price"></el-input>
            </el-form-item>
            <el-form-item label="商品库存" label-width="100px" prop="inventory">
              <el-input v-model="goodsUpData.inventory"></el-input>
            </el-form-item>
          </el-form>
          <div class="demo-drawer__footer">
            <el-button @click="dialog = false">取 消</el-button>
            <el-button type="primary" @click="updateData">确定修改</el-button>
          </div>
        </div>
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
      // 分类数据
      cateData: [],
      // 商品数据
      goodsData: [],
      // 商品总条数
      total: 0,
      // 商品请求参数
      queryInfo: {
        search: "",
        pagenum: 1,
        pagesize: 5
      },
      // 修改抽屉
      rtl: "rtl",
      dialog: false,
      // 修改
      goodsUpData: {
        goods_name: "",
        price: 0,
        inventory: 0
      },
      // 校验
      goodsUprules: {
        goods_name: [
          { required: true, message: "请输入商品名称", trigger: "blur" }
        ],
        price: [
          {
            required: true,
            message: "请按正确格式输入商品价格",
            trigger: "blur"
          }
        ],
        inventory: [
          {
            required: true,
            message: "请按正确格式输入商品数量",
            trigger: "blur"
          }
        ]
      },
      updataId: 0
    };
  },
  methods: {
    async getGoodsList() {
      window.console.log(this.queryInfo[0])
      let { data: res } = await this.$http.get("/goods", {
        params: this.queryInfo
      });
      window.console.log(res);
      if (res.status != 200)
        return this.$message.error("未知错误！获取数据失败");
      if (res.status == 200) {
        this.cateData = res.classlist;
        this.goodsData = res.goodsData;
        this.total = res.goods_total;
        this.goodsData.forEach(item => {
          let index = this.cateData.findIndex(item2 => {
            return item.classify_id == item2.id;
          });
          item.class_name = this.cateData[index].class_name;
        });
      }
    },
    //  页面显示多少条数据之后触发
    handleSizeChange(size) {
      this.queryInfo.pagesize = size;
      this.getGoodsList();
    },
    //  页码发生变化时触发
    handleCurrentChange(num) {
      this.queryInfo.pagenum = num;
      this.getGoodsList();
    },
    //  删除
    async removeGoods(id) {
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
      const { data: res } = await this.$http.delete(`/goods/${id}`);
      if (res.status != 200) {
        return this.$message.error("删除数据失败");
      }
      this.$message.success("删除成功");
      this.getGoodsList();
    },
    // 修改
    // 回显数据
    echoData(data, id) {
      this.updataId = id;
      this.dialog = true;
      this.goodsUpData.goods_name = data.goods_name;
      this.goodsUpData.price = data.price;
      this.goodsUpData.inventory = data.inventory;
    },
    // 数据更新
    async updateData() {
      this.$refs.goodsUpref.validate(async valid => {
        if (!valid) return this.$message.error("请把数据填写完整");
        let { data: res } = await this.$http.put(
          `/goods/${this.updataId}`,
          this.goodsUpData
        );
        // window.console.log(res);
        if (res.status != 200)
          return this.$message.error("未知错误！！修改失败");

        if (res.status == 200) {
          this.$message.success("修改商品成功");
          this.getGoodsList();
          this.dialog = false;
          this.$refs.goodsUpref.resetFields();
        }
      });
    }
  },
  created() {
    this.getGoodsList();
  }
};
</script>

<style lang="less" scoped>
.el-card,
.el-table {
  margin-top: 20px;
}
.el-card {
  margin-bottom: 100px;
}
.el-table {
  margin-bottom: 20px;
}
.demo-drawer__footer {
  margin-left: 33px;
}
.demo-drawer__content {
  padding-right: 25px;
  padding-top: 30px;
}
.sales{
  position: absolute;
  right: 55px;
  top:0px
}
</style>

