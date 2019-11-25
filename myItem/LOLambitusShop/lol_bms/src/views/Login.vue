<template>
  <div class="login-container">
    <el-card class="box-card">
      <!-- 头像 -->
      <!-- 头像 -->
      <div class="login-pic">
        <img src="../assets/images/timg.jpg" alt />
      </div>
      <!-- 账号密码 -->
      <el-form
        :model="loginForm"
        :rules="loginFormRules"
        ref="loginRef"
        label-width="100px"
        class="demo-ruleForm"
      >
        <el-form-item prop="username">
          <el-input v-model="loginForm.username" placeholder="请输入用户名">
            <i slot="prefix" class="el-icon-s-custom"></i>
          </el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input v-model="loginForm.password" placeholder="请输入密码">
            >
            <i slot="prefix" class="el-icon-lock"></i>
          </el-input>
        </el-form-item>

        <el-form-item>
          <el-button type="info" @click="resetForm">重置</el-button>
          <el-button type="primary" @click="submitForm">提交</el-button>
        </el-form-item>
      </el-form>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      loginForm: {
        username: "admin",
        password: "123456"
      },
      // 登陆数据源 验证
      loginFormRules: {
        // 用户名
        username: [
          {
            required: true,
            message: "请输入用户名",
            trigger: "blur"
          }
        ],
        // 密码
        password: [
          {
            required: true,
            message: "请输入密码",
            trigger: "blur"
          }
        ]
      }
    };
  },
  methods: {
    // 重置表单
    resetForm() {
      this.$refs.loginRef.resetFields();
    },
    // 登录
    submitForm() {
      // 判断验证 是否正确
      this.$refs.loginRef.validate(async valid => {
        if (!valid) return;
        // 登陆
         window.console.log(this.loginForm);
        const { data: res } = await this.$http.post("/abmlogin", this.loginForm);
      
        window.console.log(res);
        // console.log(res);
        if (res.status != 200) {
          // 清除 tokenrem
          window.sessionStorage.removeItem("token");
          this.$message.error("您请输入的用户名或密码错误！");
        } else {
          // 创建 token
         window.console.log(res.token);

          window.sessionStorage.setItem("token", res.token);
          // 跳转页面
          this.$message.success("登录成功");
          return this.$router.push("/home");
        }
      });
    }
  }
};
</script>

<style lang="less" scoped>
.login-container {
  width: 100%;
  height: 100%;
  background-color: #d6d6d6;
  .box-card {
    width: 438px;
    height: 296px;
    background-color: #fff;
    border-radius: 10px;
    overflow: initial;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
  }
  .login-pic {
    width: 140px;
    height: 140px;
    background-color: #fff;
    border: 1px solid #eee;
    border-radius: 50%;
    padding: 2px;
    box-shadow: 0 0 10px #eee;
    position: absolute;
    left: 50%;
    top: 10%;
    transform: translateX(-50%) translateY(-70%);
    img {
      width: 100%;
      height: 100%;
      border-radius: 50%;
      background: #eee;
    }
  }
  .el-form {
    margin-left: -98px;
    margin-top: 88px;
  }
  .el-input {
    width: 400px;
  }
  .el-button + .el-button {
    margin-left: 256px;
  }
}
</style>