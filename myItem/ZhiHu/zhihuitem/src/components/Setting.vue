<template>
  <div class="setting">
      <userHeader></userHeader>
    <div class="set">
      <!-- tab -->
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
                  <div>密码</div>
                  <p>未设置</p>
                </div>
                <div class="up-son3-right">
                  <a href>编辑</a>
                </div>
              </div>

            </div>
          </el-tab-pane>
          <!-- 消息与邮件 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-message-solid"></i> 消息与邮件
            </span>
            消息与邮件
          </el-tab-pane>
          <!-- 屏蔽 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-error"></i> 屏蔽
            </span>
            屏蔽
          </el-tab-pane>
          <!-- 隐私 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-s-goods"></i> 隐私
            </span>
            隐私
          </el-tab-pane>
          <!-- 偏好设置 -->
          <el-tab-pane>
            <span class="font" slot="label">
              <i class="el-icon-s-tools"></i> 偏好设置
            </span>
            偏好设置
          </el-tab-pane>
        </el-tabs>
      </div>
      <div class="set-right"></div>
    </div>
  </div>
</template>

<script>
import userHeader from "../components/headers/UserHeader";
export default {
  data() {
    return {};
  },
  components: {
    userHeader
  }
};
</script>

<style lang="less" scoped>
.set {
  width: 1000px;
  margin: 0 auto;
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
.user-pass-son1, .user-pass-son2, .user-pass-son3 {
  border-bottom: 1px solid #eee;
}
.user-pass-son1 p {
  color: #8c96ab;
  font-size: 14px;
}

.user-pass-son2 p {
  color: #8c96ab;
  font-size: 14px;
}

.el-tabs__item.is-left {
  border: 1px solid transparent !important;
  margin: 20px 0 -1px -1px !important;
}
</style>>
