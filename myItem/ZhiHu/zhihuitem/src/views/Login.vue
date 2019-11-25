<template>
  <div class="index">
    <img src="../assets/img/zby/zhihu-logo.png" alt />
    <!-- 登录/注册 -->
    <el-tabs v-model="activeName" @tab-click="handleClick">
      <el-tab-pane label="注册" name="first">
        <el-form
          :model="registerForm"
          :rules="rules"
          ref="registerRef"
          label-width="75px"
          class="demo-ruleForm"
          label-position="left"
        >
          <el-form-item label="昵称" prop="nickname" class="nickname">
            <el-input placeholder="请输入您的昵称" v-model="registerForm.nickname"></el-input>
          </el-form-item>

          <el-form-item label="手机号" prop="phone">
            <el-input placeholder="请输入您的手机号" v-model="registerForm.phone"></el-input>
          </el-form-item>

          <el-form-item label="密码" prop="password">
            <el-input
              type="password"
              show-password
              placeholder="请输入您的密码"
              v-model="registerForm.password"
            ></el-input>
          </el-form-item>

          <el-button class="register-btn" type="primary" @click="registerBtn">注册</el-button>
        </el-form>
      </el-tab-pane>
      <el-tab-pane label="登录" name="second">
        <el-form
          :model="loginForm"
          :rules="rules"
          ref="loginFef"
          label-width="75px"
          class="demo-ruleForm"
          label-position="left"
        >
          <el-form-item label="账号" prop="phone" class="phone">
            <el-input placeholder="请输入您的账号" v-model="loginForm.phone"></el-input>
          </el-form-item>

          <el-form-item label="密码" prop="password">
            <el-input
              type="password"
              show-password
              placeholder="请输入您的密码"
              v-model="loginForm.password"
            ></el-input>
          </el-form-item>

          <el-button class="login-btn" type="primary" @click="loginBtn">登录</el-button>
        </el-form>
      </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // tab切换
      activeName: "first",
      // 注册表单
      registerForm: {
        nickname: "",
        phone: "",
        password: ""
      },
      // 登录表单
      loginForm: {
        phone: "",
        password: ""
      },
      rules: {
        nickname: [
          { required: true, message: "请输入您的用户名", trigger: "blur" },
          { min: 2, max: 8, message: "长度在 2 到 8 个字符", trigger: "blur" }
        ],
        phone: [
          { required: true, message: "请输入您的手机号码", trigger: "blur" },
          {
            min: 11,
            max: 20,
            message: "长度在 11 到 20 个字符",
            trigger: "blur"
          }
        ],
        password: [
          { required: true, message: "请输入您的密码", trigger: "blur" },
          { min: 6, max: 18, message: "长度在 6 到 18 个字符", trigger: "blur" }
        ]
      }
    };
  },
  methods: {
    // tabs切换
    handleClick() {},

    // 登录按钮
    loginBtn() {
      this.$refs.loginFef.validate(async valid => {
        // 如果校验失败 直接return
        if (!valid) return false;
        // post传参方式
        var params = new URLSearchParams();
        params.append("phone", this.loginForm.phone);
        params.append("password", this.loginForm.password);
        let { data: res } = await this.$http.post("access_tokens", params);
        console.log(res);

        // 如果登录失败
        if (res.code == 400) {
          // 删除令牌
          window.sessionStorage.removeItem("token");
          // 弹出登录失败的消息
          return this.$message.error(res.error);
        }

        // 登录成功
        if (res.code == 200) {
          // 删除原有令牌
          window.sessionStorage.removeItem("token");
          window.sessionStorage.removeItem("user");

          // 生成令牌
          window.sessionStorage.setItem("token", res.token);
          // 传数据id 转json格式
          window.sessionStorage.setItem("user", JSON.stringify(res.data));
          // 跳转首页
          this.$router.push("/");
        }
      });
    },

    // 注册按钮
    registerBtn() {
      this.$refs.registerRef.validate(async valid => {
        // 如果校验没通过直接return
        if (!valid) return false;
        // post 传参
        var params = new URLSearchParams();
        params.append("nickname", this.registerForm.nickname);
        params.append("phone", this.registerForm.phone);
        params.append("password", this.registerForm.password);

        // post请求添加数据
        const { data: res } = await this.$http.post("user", params);
        console.log(res);
        // 添加失败
        if (res.code !== 200) {
          return this.$message.error(res.error);
        } else {
          // 注册成功
          this.$message.success("注册成功");
          // 去登录
          this.activeName = "second";
        }
      });
    }
  },
  created() {
    document.title = "知乎 - 有问题，上知乎"
  }
};
</script>

<style lang="less" scoped>
// 登录背景图
.index {
  background-image: url("../assets/img/zby/zhihu-back.png");
  background-repeat: no-repeat;
  background-color: #b8e5f8;
  background-size: cover;
  width: 100%;
  height: 100%;
  overflow: auto;
  img {
    width: 128px;
    margin: auto;
    display: block;
    margin-top: 163px;
  }
}

// 登录/注册
.el-tabs {
  width: 360px;
  margin: 0 auto;
  background-color: #fff;
  padding: 25px;
  border-radius: 3px;
  position: relative;
  margin-top: 50px;
  padding-top: 13px;
}

.register-btn,
.login-btn {
  width: 100%;
}

.phone {
  margin-top: 15px;
}
</style>