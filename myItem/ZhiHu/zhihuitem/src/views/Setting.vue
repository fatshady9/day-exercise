<template>
  <div class="setting clearfix">
    <div class="set common">
      <!-- 顶部导航 -->
      <settingHeader class="settingHerder"></settingHeader>
      <!-- tab栏 -->
      <div class="set-left">
        <el-tabs type="border-card" tabPosition="left">
          <!-- 账号与密码 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-user-solid"></i> 账号与密码
            </span>
            <div class="user-pass">
              <div class="user-pass-son1">
                <h3>账号与密码</h3>
                <p>账号设置/个性域名</p>
              </div>

              <div class="user-pass-son2">
                <h4>账号设置</h4>
                <p>
                  绑定手机和邮箱，并设置密码，账号更安全
                  <br />注意：为保证账号安全，需进行二次验证。
                </p>
              </div>

              <div class="user-pass-son3">
                <div class="up-son3-left">
                  <div>修改昵称</div>
                  <p>未修改</p>
                </div>
                <div class="up-son3-right">
                  <el-button type="text" @click="userBtn">编辑</el-button>

                  <!-- 修改用户名弹框 -->
                  <el-dialog title="修改昵称" :visible.sync="userDialog" width="30%">
                    <span>为了保护你的账号安全，请验证身份，验证成功后进行下一步操作</span>
                    <el-form
                      :model="userForm"
                      :rules="rules"
                      ref="userFormRef"
                      label-width="75px"
                      class="demo-ruleForm"
                    >
                      <el-form-item label="昵称" prop="nickname">
                        <el-input placeholder="请输入昵称" v-model="userForm.nickname"></el-input>
                      </el-form-item>
                    </el-form>
                    <span slot="footer" class="dialog-footer">
                      <el-button type="primary" @click="editUser">确定</el-button>
                    </span>
                  </el-dialog>
                </div>
              </div>

              <div class="user-pass-son4">
                <div class="up-son4-left">
                  <div>修改密码</div>
                  <p>未修改</p>
                </div>
                <div class="up-son4-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>

              <div class="user-pass-son5">
                <div class="up-son5-left">
                  <div>个性域名</div>
                  <p>
                    个人主页的地址，个性域名只可更改一次
                    <br />zhuihu.com/people/fatshady-71
                  </p>
                </div>
                <div class="up-son5-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>
            </div>
          </el-tab-pane>
          <!-- 消息与邮件 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-message-solid"></i> 消息与邮件
            </span>

            <div class="info-email">
              <div class="info-email-son1">
                <h3>消息与邮件</h3>
                <p>私信设置/邀请设置/赞同与赞赏/关注/邮件设置</p>
              </div>

              <div class="info-email-son2">
                <div class="ie-son2-left">
                  <div>私信设置</div>
                  <p>允许谁给我发私信</p>
                </div>
                <div class="ie-son2-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>

              <div class="info-email-son3">
                <div class="ie-son3-left">
                  <div>邀请/评论消息设置</div>
                  <p>有人对我发出邀请时，我会收到消息通知</p>
                </div>
                <div class="ie-son3-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>

              <div class="info-email-son4">
                <div class="ie-son4-left">
                  <div>赞同/赞赏消息设置</div>
                  <p>有人对我赞同或赞赏时，我会收到消息通知</p>
                </div>
                <div class="ie-son4-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>

              <div class="info-email-son5">
                <div class="ie-son5-left">
                  <div>关注消息设置</div>
                  <p>我的关注有新消息时，我会收到消息通知</p>
                </div>
                <div class="ie-son5-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>

              <div class="info-email-son6">
                <div class="ie-son6-left">
                  <div>邮件设置</div>
                  <p>重要事件发生时，我将会收到邮件提醒</p>
                </div>
                <div class="ie-son6-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>
            </div>
          </el-tab-pane>
          <!-- 屏蔽 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-error"></i> 屏蔽
            </span>

            <div class="shield">
              <div class="shield-son1">
                <h3>屏蔽</h3>
                <p>用户黑名单/话题黑名单/不看他的动态</p>
              </div>

              <div class="shield-son2">
                <div class="shield-son2-left">
                  <div>用户黑名单</div>
                  <p>查看或撤销已屏蔽用户</p>
                  <p class="none">无用户</p>
                </div>
                <div class="shield-son2-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>

              <div class="shield-son3">
                <div class="shield-son3-left">
                  <div>话题黑名单</div>
                  <p>查看或撤销已屏蔽话题</p>
                  <p class="none">无话题</p>
                </div>
                <div class="shield-son3-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>

              <div class="shield-son4">
                <div class="shield-son4-left">
                  <div>不看他的动态</div>
                  <p>屏蔽已关注用户的动态</p>
                  <p class="none">无用户</p>
                </div>
                <div class="shield-son4-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>
            </div>
          </el-tab-pane>
          <!-- 隐私 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-s-goods"></i> 隐私
            </span>

            <div class="privacy">
              <div class="privacy-son1">
                <h3>隐私</h3>
                <p>隐私保护</p>
              </div>

              <div class="privacy-son2">
                <div class="privacy-son2-left">
                  <div>隐私保护</div>
                </div>
                <div class="privacy-son2-right">
                  <a href="javascript:;">编辑</a>
                </div>
              </div>

              <div class="privacy-son3">
                <div class="privacy-son3-left">
                  <div>在站外隐藏个人信息</div>
                </div>
                <div class="privacy-son3-right">
                  <el-switch v-model="value1" active-color="#0084ff" inactive-color="#ebebeb"></el-switch>
                </div>
              </div>
            </div>
          </el-tab-pane>
          <!-- 偏好设置 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-s-tools"></i> 偏好设置
            </span>

            <div class="hobby">
              <div class="hobby-son1">
                <h3>偏好设置</h3>
                <p>图片水印</p>
              </div>
            </div>

            <div class="hobby-son2">
              <div class="hobby-son2-left">
                <div>图片水印</div>
                <p>在我上传的图片上显示水印</p>
              </div>
              <div class="hobby-son2-right">
                <a href="javascript:;">编辑</a>
              </div>
            </div>

            <div class="hobby-son3">
              <div class="hobby-son3-left">
                <h4>快捷键</h4>
                <p>更方便地浏览知乎，按 ?（Shift + /）查看所有快捷键</p>
              </div>
              <div class="hobby-son3-right">
                <el-switch v-model="value2" active-color="#0084ff" inactive-color="#ebebeb"></el-switch>
              </div>
            </div>
          </el-tab-pane>
        </el-tabs>
      </div>

      <!-- 常见问题 -->
      <div class="set-right">
        <h3>常见问题</h3>
        <h4>账号与密码</h4>
        <p @click="question1">1.为什么要进行二次校验</p>
        <div class="question1">二次验证可以有效防止盗号，维护号主自身权益。在修改密码，换绑手机，换绑邮箱前需统一验证，通过后30分钟内无需再次验证</div>
        <p>2.二次验证的手机/邮箱不可用?</p>
        <p>3.忘记密码怎么办?</p>
        <p>4.手机丢失，手机号不可用怎么办?</p>
        <p>5.我要绑定的手机号提示我已经注册了，怎么办?</p>
        <h4>其他问题</h4>
        <p>
          6.网站出现了问题?
          <a href="javascript:;">问题反馈</a>
        </p>
      </div>
    </div>
  </div>
</template>

<script>
import settingHeader from "../components/headers/ExploreHeader";
export default {
  data() {
    return {
      // switch开关
      value1: false,
      value2: true,
      // 用户名弹框
      userDialog: false,
      // 修改用户名字段
      userForm: {
        nickname: ""
      },
      // 校验规则
      rules: {
        nickname: [
          { required: true, message: "请输入您的用户名", trigger: "blur" },
          { min: 3, max: 5, message: "长度在 2 到 8 个字符", trigger: "blur" }
        ],
        password: [
          { required: true, message: "请输入您的密码", trigger: "blur" },
          { min: 3, max: 5, message: "长度在 6 到 18 个字符", trigger: "blur" }
        ]
      }
    };
  },
  methods: {
    // 常见问题 显示与隐藏
    question1() {
      const question1 = document.querySelector(".question1");
      if (question1.style.display == "block") {
        question1.style.display = "none";
      } else {
        question1.style.display = "block";
      }
    },

    // 修改昵称回显
    async userBtn() {
      // 让弹框出现
      this.userDialog = true;
      // 接收session数据
      let user = window.sessionStorage.getItem("user");
      // 转成对象
      user = JSON.parse(user);
      // console.log(user.id);
      const { data: res } = await this.$http.get(`user/${user.id}`);
      console.log(res);
      if (res.code !== 200) {
        return this.$message.error("获取用户信息失败");
      }
      // 把数据赋值给 userForm
      this.userForm = res.data;
    },

    // 修改昵称完成
    editUser() {
      this.$refs.userFormRef.validate(async valid => {
        // 如果校验没通过就阻止继续
        if (!valid) return false;
        // 获取数据
        var params = new URLSearchParams();
        params.append("nickname", this.userForm.nickname);

        const { data: res } = await this.$http.put(
          `user/${this.userForm.id}`,
          params
        );
        console.log(res);
        // 修改失败
        if (res.code !== 200) {
          return this.$message.error("昵称修改失败");
        }

        // 关闭弹框
        this.userDialog = false;
        // 成功时的响应
        // this.$message.success("昵称修改成功");
      });
    }
  },
  created() {
    document.title = "账号与密码 - 知乎"
  },
  components: {
    settingHeader
  }
};
</script>

<style lang="less" scoped>
.common {
  position: relative;
  width: 1000px;
  margin: 0 auto;
}

.clearfix::after {
  content: "";
  display: block;
  clear: both;
}

.set {
  margin-top: 65px;
}

.set-left {
  float: left;
}

.el-tabs {
  width: 726px;
  height: 656px;
}

.font {
  font-size: 15px;
}

// 账号与密码
.user-pass-son1,
.user-pass-son2,
.user-pass-son3,
.user-pass-son4 {
  border-bottom: 1px solid #eee;

  h3,
  h4,
  p {
    text-align: left;
  }
}
.user-pass-son1 p,
.user-pass-son2 p {
  color: #8c96ab;
  font-size: 14px;
}

.up-son3-left,
.up-son4-left,
.up-son5-left {
  padding-left: 20px;
}

.up-son3-left div,
.up-son4-left div,
.up-son5-left div {
  padding-top: 15px;
}

.up-son3-left div,
p {
  font-size: 14px;
  text-align: left;
}

.up-son4-left div,
p {
  font-size: 14px;
  text-align: left;
}

.up-son5-left div,
p {
  font-size: 14px;
  text-align: left;
}

.up-son3-left p {
  color: #a0a4b3;
}

.up-son4-left p {
  color: #a0a4b3;
}

.up-son5-left p {
  color: #a0a4b3;
}

.up-son3-right,
.up-son4-right,
.up-son5-right {
  position: absolute;
  right: 20px;
}

.up-son3-right {
  top: 255px;
}

.up-son4-right {
  top: 335px;
}

.up-son5-right {
  top: 420px;
}

.up-son3-right a {
  text-decoration: none;
  color: #0f8bff;
  font-size: 14px;
}

.up-son4-right a {
  text-decoration: none;
  color: #0f8bff;
  font-size: 14px;
}

.up-son5-right a {
  text-decoration: none;
  color: #0f8bff;
  font-size: 14px;
}

// 消息与邮件
.info-email-son1,
.info-email-son2,
.info-email-son3,
.info-email-son4,
.info-email-son5 {
  border-bottom: 1px solid #eee;

  h3 {
    text-align: left;
  }
}

.info-email-son1 p,
.info-email-son2 p,
.info-email-son3 p,
.info-email-son4 p,
.info-email-son5 p,
.info-email-son6 p {
  color: #8c96ab;
}

.ie-son2-left,
.ie-son3-left,
.ie-son4-left,
.ie-son5-left,
.ie-son6-left {
  font-size: 14px;

  div {
    text-align: left;
    margin-top: 15px;
  }
}

.ie-son2-right {
  position: absolute;
  font-size: 14px;
  right: 20px;
  top: 140px;
}

.ie-son3-right {
  position: absolute;
  font-size: 14px;
  right: 20px;
  top: 220px;
}

.ie-son4-right {
  position: absolute;
  font-size: 14px;
  right: 20px;
  top: 305px;
}

.ie-son5-right {
  position: absolute;
  font-size: 14px;
  right: 20px;
  top: 390px;
}

.ie-son6-right {
  position: absolute;
  font-size: 14px;
  right: 20px;
  top: 475px;
}

.ie-son2-right a,
.ie-son3-right a,
.ie-son4-right a,
.ie-son5-right a,
.ie-son6-right a {
  color: #3f96ff;
}

// 屏蔽
.shield-son1,
.shield-son2,
.shield-son3 {
  border-bottom: 1px solid #eee;
  h3 {
    text-align: left;
  }
}

.shield-son1 p,
.shield-son2 p,
.shield-son3 p,
.shield-son4 p {
  color: #8c96ab;
}

.shield-son2-left div,
.shield-son3-left div,
.shield-son4-left div {
  font-size: 14px;
  text-align: left;
  margin-top: 15px;
}

.shield-son2-right {
  font-size: 14px;
  position: absolute;
  right: 20px;
  top: 145px;
}

.shield-son2-left .none,
.shield-son3-left .none,
.shield-son4-left .none {
  padding-left: 20px;
}

.shield-son3-right {
  font-size: 14px;
  position: absolute;
  right: 20px;
  top: 250px;
}

.shield-son4-right {
  font-size: 14px;
  position: absolute;
  right: 20px;
  top: 375px;
}

.shield-son2-right a,
.shield-son4-right a {
  color: #8dc7ff;
}

.shield-son3-right a {
  color: #0084ff;
}

// 隐私
.privacy-son1,
.privacy-son2 {
  border-bottom: 1px solid #eee;
  h3 {
    text-align: left;
  }
}

.privacy-son1 p {
  font-size: 14px;
  color: #8c96ab;
}

.privacy-son2,
.privacy-son3 {
  padding: 20px;
}

.privacy-son2-left,
.privacy-son3-left {
  font-size: 14px;
  div {
    text-align: left;
  }
}

.privacy-son2-right {
  position: absolute;
  right: 20px;
  top: 130px;
  font-size: 14px;
}

.privacy-son2-right a {
  color: #0084ff;
}

.privacy-son3-right {
  position: absolute;
  right: 20px;
  top: 190px;
}

// 偏好设置
.hobby-son1,
.hobby-son2 {
  border-bottom: 1px solid #eee;
  h3 {
    text-align: left;
  }
}

.hobby-son2-left {
  font-size: 14px;
}

.hobby-son1 p,
.hobby-son2-left p,
.hobby-son3-left p {
  color: #8c96ab;
}

.hobby-son2-right {
  position: absolute;
  right: 20px;
  top: 140px;
  font-size: 14px;
}

.hobby-son2-right a {
  color: #0084ff;
}

.hobby-son2-left div {
  text-align: left;
  margin-top: 15px;
}

.hobby-son3-left h4 {
  text-align: left;
}

.hobby-son3-right {
  position: absolute;
  right: 20px;
  top: 230px;
  font-size: 14px;
}

// 常见问题
.set-right {
  float: right;
  width: 218px;
  height: 385px;
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.12), 0 0 6px 0 rgba(0, 0, 0, 0.04);
  background-color: #fff;
  padding: 20px;

  h3 {
    padding: 0;
    margin: 0;
  }

  h3,
  h4,
  p {
    text-align: left;
  }

  p {
    color: #8c96ab;
    cursor: pointer;
    font-size: 14px;
  }

  p:hover {
    color: #0084ff;
  }

  a {
    color: #4171ac;
    font-size: 14px;
  }
}

// 常见问题显示与隐藏
.question1 {
  display: none;
  color: #6a6a6a;
  font-size: 14px;
}

// 用户名验证
.el-dialog {
  span {
    color: #8a99b0;
  }
  .el-form-item {
    margin-top: 30px;
  }
  .el-button {
    width: 200px;
    margin-right: 100px;
  }
}
</style>
