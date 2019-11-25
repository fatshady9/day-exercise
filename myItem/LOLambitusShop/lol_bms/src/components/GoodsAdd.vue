<template>
  <div class="goodsAdd">
    <!-- 面包屑导航 -->
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>商品管理</el-breadcrumb-item>
      <el-breadcrumb-item>添加商品</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- 卡片 -->
    <el-card class="box-card">
      <!--标题栏  -->
      <el-alert title="添加商品信息" type="info" center show-icon :closable="false"></el-alert>
      <!-- 步骤条 -->
      <el-steps :active="activeName-0" finish-status="success" align-center>
        <el-step title="基本信息"></el-step>
        <el-step title="商品属性"></el-step>
        <el-step title="商品图片"></el-step>
        <el-step title="详情图片"></el-step>
        <el-step title="完成"></el-step>
      </el-steps>

      <!-- tabs标签页 -->
      <el-form
        label-width="100px"
        class="demo-ruleForm"
        label-position="top"
        :model="addGoodsList"
        :rules="addGoodsRules"
        ref="addGoodsRef"
      >
        <el-tabs tab-position="left" v-model="activeName" :before-leave="handleBeforeLeave">
          <el-tab-pane label="基本信息" name="0">
            <!-- from表单 -->
            <el-form-item label="商品名称" prop="goods_name">
              <el-input v-model="addGoodsList.goods_name"></el-input>
            </el-form-item>

            <el-form-item label="商品价格" prop="price">
              <el-input type="number" v-model.number="addGoodsList.price"></el-input>
            </el-form-item>
            <el-form-item label="商品数量" prop="inventory">
              <el-input type="number" v-model.number="addGoodsList.inventory"></el-input>
            </el-form-item>
            <el-form-item label="商品分类">
              <el-select v-model="cateId" placeholder="请选择">
                <el-option
                  v-for="item in categoryList"
                  :key="item.id"
                  :label="item.class_name"
                  :value="item.id"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-tab-pane>
          <!-- <el-tab-pane label="商品属性" name="1">
            <el-form-item label="商品属性" prop="property">
              <el-input v-model="addGoodsList.property"></el-input>
            </el-form-item>
          </el-tab-pane> -->
          <el-tab-pane label="商品图片" name="2">
            <el-upload
              action="http://127.0.0.1:9999/api/v2/uploads"
              :on-preview="handlePreview"
              :on-remove="handleRemove"
              :on-success="handleSuccess"
              list-type="picture-card"
            >
              <i class="el-icon-plus"></i>
            </el-upload>
            <!-- 商品图片对话框 -->
            <el-dialog title="图片预览" :visible.sync="imgDialog" width="50%">
              <img :src="imgUrl" alt style="width:100%" />
            </el-dialog>
          </el-tab-pane>

          <el-tab-pane label="详情图片" name="3">
            <el-upload
              action="http://127.0.0.1:9999/api/v2/uploadsall"
              list-type="picture-card"
              :on-preview="handlePictureCardPreview"
              :on-remove="handleRemoveAll"
              :on-success="handleSuccessAll"
            >
              <i class="el-icon-plus"></i>
            </el-upload>
            <el-dialog :visible.sync="dialogVisible">
              <img width="100%" :src="dialogImageUrl" alt />
            </el-dialog>
            <el-button type="primary" style="margin-top: 15px;" @click="addGoodsClick">添加商品</el-button>
          </el-tab-pane>
        </el-tabs>
      </el-form>
    </el-card>
  </div>
</template>
<script>
export default {
  data() {
    return {
      activeName: "0",
      //   详情图片
      dialogImageUrl: "",
      dialogVisible: false,
      //  商品分类数组
      categoryList: [],
      //   分类id
      cateId: "",
      // 添加商品的表单
      addGoodsList: {
        goods_name: "",
        price: 0,
        inventory: 0,
        pics: [],
        picsall: []
      },
      // 添加商品的校验规则
      addGoodsRules: {
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
      //设置上传的请求头部
      uploadToken: {
        Authorization: window.sessionStorage.getItem("token")
      },
      // 上传图片路径
      uploadUrl: "http://127.0.0.1:9999/api/v2/uploads",
      // 图片对话框
      imgDialog: false,
      // 图片路径
      imgUrl: ""
    };
  },
  methods: {
    handleBeforeLeave(next, prev) {
      window.console.log(next, prev);
      // 如果prev是0 且没有分类id 那么就不让跳转 直接return false
      if (this.activeName == 0 && this.categoryId == null) {
        this.$message.error("请选择分类");
        return false;
      }
    },

    // 商品图片
    // 文件上传成功时触发
    handleSuccess(response, file, fileList) {
      // 将上传图片的路径存起来
      this.addGoodsList.pics.push({
        pic: response.path
      });
      // window.console.log(this.addGoodsList.pics);
    },
    // 点击文件列表中已上传的文件时触发
    handlePreview(file) {
      window.console.log(file.url);
      // window.console.log(file.response.path);
      this.imgUrl = file.url;
      this.imgDialog = true;
    },
    // 文件移除时触发
    handleRemove(file, fileList) {
      // window.console.log(file, fileList);
      // 获取移除的那个文件的路径
      let path = file.response.path;
      //  window.console.log(path);
      // 找到存到pics中的那个文件路径
      let i = this.addGoodsList.pics.findIndex(v => v.pic == path);
      // 根据索引删除它
      this.addGoodsList.pics.splice(i, 1);
      this.$message.error("取消上传");
      // window.console.log(this.addGoodsList.pics);
    },
    // 商品图片上传end--------------------------------------------------------------------------------------

    //   详情图片
    // 点击文件列表中已上传的文件时触发
    handlePictureCardPreview(file) {
      this.dialogImageUrl = file.url;
      this.dialogVisible = true;
    },
    handleSuccessAll(response, file, fileList) {
      window.console.log(response,file);
      // 将上传图片的路径存起来
      this.addGoodsList.picsall.push({
        pic: response.path
      });
      // window.console.log(this.addGoodsList.picsall)
    },
    // 文件移除时触发
    handleRemoveAll(file, fileList) {
      // window.console.log(file, fileList);
      // 获取移除的那个文件的路径
      let path = file.response.path;
      //  window.console.log(path);
      // 找到存到pics中的那个文件路径
      let i = this.addGoodsList.pics.findIndex(v => v.pic == path);
      // 根据索引删除它
      this.addGoodsList.picsall.splice(i, 1);
      this.$message.error("取消上传");
      // window.console.log(this.addGoodsList.picsall);
    },
    // 详情图片上传end------------------------------------------------------------------------

    // =========================================================================
    //   上传图片
    SetArticleCover: function() {
      var PicData = new FormData();
      PicData.append("Content", this.$refs.selectfile.files[0]);
      this.$http
        .post("/UploadImg", PicData)
        .then(function(req) {
          window.console.log(req.status);
        })
        .catch(function(error) {
          window.console.log(error);
        });
    },
    // 商品分类数据
    async getCateData() {
      let { data: res } = await this.$http.get("/categorys");
      if (res.status != 200) return false;
      this.categoryList = res.data;
      //   window.console.log(this.categoryList);
    },
    // 添加商品
    async addGoodsClick() {
      this.$refs.addGoodsRef.validate(async valid => {
        if (!valid) return this.$message.error("请把数据填写完整");
        //   插入分类id
        this.addGoodsList.classify_id = this.cateId;
        window.console.log(this.addGoodsList);
        const { data: res } = await this.$http
          .post("/goods", this.addGoodsList)
          .catch(error => error);
        //   window.console.log(res)
        if (res.status != 200) return this.$message.error("商品创建失败");

        this.$message.success("商品创建成功");
        this.$router.push("/goods");
      });
    }
  },
  created() {
    this.getCateData();
    // window.console.log(this.categoryId)
  },
  computed: {
    categoryId: function() {
      if (this.cateId != "") {
        return this.cateId;
      }
      return null;
    }
  }
};
</script>

<style lang="less" scoped>
.el-steps,
.el-tabs {
  margin-top: 15px;
}
.el-card {
  margin: 20px 0px;
}
</style>

<style lang="less">
.goodsAdd {
  // .el-step__head.is-success {
  //   color: #f8be01;
  //   border-color: #797979;
  // }
  .el-tabs__item:hover {
    color: #505050;
    cursor: pointer;
  }
  .el-tabs__item.is-active {
    color: #484848;
  }
  .el-tabs__item {
    color: #cbcbcb;
  }
  .el-tabs__active-bar {
    background-color: #dad7cb;
  }
  .el-step__title.is-success {
    color: #797979;
  }
  .el-button--primary {
    color: #907f63;
    background-color: #f4e6ab;
    // background-image: -webkit-gradient(
    //   linear,
    //   left top,
    //   right bottom,
    //   from(#f2df8e),
    //   color-stop(#f0de8a),
    //   color-stop(#fdecad),
    //   color-stop(#fdf5dc),
    //   to(#fffae5)
    // );
    // background-image: linear-gradient(
    //   to right bottom,
    //   #f2df8e,
    //   #f0de8a,
    //   #fdecad,
    //   #fdf5dc,
    //   #fffae5
    // );
    border-color: #ffffff;
  }
}
</style>