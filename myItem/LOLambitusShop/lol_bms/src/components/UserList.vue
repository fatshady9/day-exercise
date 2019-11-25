<template>
  <div class="user">
    <!-- 面包屑导航 -->
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>用户管理</el-breadcrumb-item>
      <el-breadcrumb-item>用户列表</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- card卡片 -->
    <el-card class="box-card">
      <!-- 搜索框 -->
      <el-row :gutter="20">
        <!-- 搜索 -->
        <el-col :span="10">
          <el-input placeholder="搜索用户" v-model="queryInfo.search">
            <el-button slot="append" icon="el-icon-search" @click="getUserList"></el-button>
          </el-input>
        </el-col>
      </el-row>

      <el-table style="width: 100%" :data="userList">
        <el-table-column type="index" width="50"></el-table-column>
        <el-table-column label="用户名称" width="100">
          <template slot-scope="scope">
            <el-popover trigger="hover" placement="top">
              <img style="width:150px" :src="scope.row.path" alt="">
              <div slot="reference" class="name-wrapper">
                {{scope.row.username}}
              </div>
            </el-popover>
          </template>
        </el-table-column>
        <el-table-column label="手机号" prop="phone"></el-table-column>
        <el-table-column label="电子邮箱">
          <template slot-scope="scope">
            <span style="margin-left: 10px" v-if="scope.row.email">{{scope.row.email}}</span>
            <el-tag v-else type="info">未设置</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="性别">
          <template slot-scope="scope">
            <span style="margin-left: 10px" v-if="scope.row.sex">{{scope.row.sex}}</span>
            <el-tag v-else type="info">未设置</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="余额" prop="money"></el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button size="mini" type="danger" @click="removeUser(scope.row.id)">注销用户</el-button>
          </template>
        </el-table-column>
      </el-table>

      <!-- 分页 -->
      <el-pagination
        background
        @current-change="handleCurrentChange"
        @size-change="handleSizeChange"
        :current-page="queryInfo.pagenum"
        :page-sizes="[2,5, 10, 20]"
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
      // 用户数据
      userList: [],
      // 用户总条数
      total: 0,
      // 用户请求参数
      queryInfo: {
        search: "",
        pagenum: 1,
        pagesize: 5
      }
    };
  },
  methods: {
    async getUserList() {
      let { data: res } = await this.$http.get("/user", {
        params: this.queryInfo
      });
      if (res.status != 200)
        return this.$message.error("未知错误，获取数据失败");
      if (res.status == 200) {
        this.cateData = res.classlist;
        this.userList = res.userList;
        this.total = res.user_total;
      }
    },
    //  页面显示多少条数据之后触发
    handleSizeChange(size) {
      this.queryInfo.pagesize = size;
      this.queryInfo.pagenum = 1;
      this.getUserList();
    },
    //  页码发生变化时触发
    handleCurrentChange(num) {
      this.queryInfo.pagenum = num;
      this.getUserList();
    },
    //  删除
    async removeUser(id) {
      const removeResult = await this.$confirm(
        "此操作将永久删除该用户, 是否继续?",
        "提示",
        {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }
      ).catch(error => error);
      if (removeResult == "cancel") {
        return this.$message.error("已取消删除");
      }
      const { data: res } = await this.$http.delete(`/user/${id}`);
      if (res.status != 200) {
        return this.$message.error("删除数据失败");
      }
      this.$message.success("删除成功");
      this.getUserList();
    }
  },
  created() {
    this.getUserList();
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
</style>

