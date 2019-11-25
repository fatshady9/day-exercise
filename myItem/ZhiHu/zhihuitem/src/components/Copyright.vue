<template>
  <div class="copyright">
    <!-- 内容 -->
      <userHeader></userHeader>
    <div class="copyright-title">
      <div class="copyright-title-top">
        <h1>开启付费授权功能</h1>
        <div class="copyright-title-content">
          <!-- 功能简介 -->
          <div class="copyright-title-content-a">
            <h2>功能简介</h2>
            <div class="copyright-title-content-p">
              <p>为保护版权，促进作者权益，我们在 Web 端上线了付费授权功能。功能目前处于公测期，暂时仅支持付费转载回答。您可以在阅读并同意本页内容后，选择参加公测：</p>
              <p>1.您的回答将有三种转载权限设置：允许规范转载（对其他用户显示为：作者保留权利）、允许付费转载（对其他用户显示为：申请转载）、禁止转载。您可以随时修改该回答的转载权限设置。</p>
              <p>2.设置为「允许付费转载」的回答，其他用户都可以付费向您发起转载申请，您可以同意或者拒绝授权。同意授权时，授权费将支付给您；拒绝授权或者超过 72 小时未处理，授权费将退还给申请者。</p>
            </div>
          </div>
          <!-- 授权范围与条件 -->
          <div class="copyright-title-content-a">
            <h2>授权范围与条件</h2>
            <div class="copyright-title-content-p">
              <p>1.授权范围仅限网络、报刊杂志的非独占性单次转载；独家转载、影视改编等其他情况，申请者需要与作者单独沟通并获得授权。</p>
              <p>2.申请方需要在转载时保持作品完整，不得歪曲、篡改原意，并遵守转载规范：在文首显著位置标注原文作者（知乎用户名）、原文链接、原文出处（知乎）。</p>
              <p>3.不符合以上条件的使用，将构成侵权。</p>
              <p>4.根据《知乎协议》，知乎有权免费将作者发表的内容用于知乎各种形态的产品和服务上，包括但不限于网站、应用及其他互联网产品。</p>
            </div>
          </div>
          <!-- 版权与责任声明 -->
          <div class="copyright-title-content-a">
            <h2>版权与责任声明</h2>
            <div class="copyright-title-content-p">
              <p>1.对于设置为「允许付费转载」的回答，您需要确认拥有版权，并在授权给申请者使用时没有侵犯他人的合法权益。因侵犯他人合法权益产生的全部法律责任将由您独立承担。</p>
              <p>2.您在知乎有不规范转载、抄袭等违规行为时，知乎可以视情况收回公测资格。</p>
            </div>
          </div>
          <!-- 完善信息 -->
          <div class="copyright-title-content-a perfect">
            <h2>完善信息</h2>
            <div class="copyright-title-content-perfect">
              <i class="el-icon-mobile-phone"></i>
              <span class="copyright-title-content-cell">
                <span>已绑定手机</span>
                <span>151****5574</span>
              </span>
            </div>
          </div>

          <!-- 我已阅读并同意 -->
          <div class="copyright-title-agreement">
            <span class="copyright-title-checkbox">
              <input type="checkbox" name id />
              <span>我已阅读并同意</span>
              <a href>《付费授权功能使用协议》</a>
            </span>
            <button>加入公测</button>
          </div>
        </div>
      </div>
      <i class="el-icon-close"></i>
    </div>
    <!-- 版权 -->
    <div class="copyright-content">
      <span>© 2019 知乎</span>
      <ul>
        <li>刘看山</li>
        <li>· 知乎指南</li>
        <li>· 建议反馈</li>
        <li>· 移动应用</li>
        <li>· 加入知乎</li>
        <li>· 知乎协议</li>
        <li>· 举报投诉</li>
        <li>· 隐私政策</li>
        <li>· 联系我们</li>
      </ul>
    </div>
  </div>
</template>

<script>
import userHeader from "../components/headers/UserHeader";
export default {
  
  components: {
    userHeader
  }
};
</script>

<style>
/* 内容 */
.copyright {
  margin-top: 62px;
}

.copyright-title {
  width: 740px;
  position: relative;
  height: 100%;
  margin: 0 auto;
  background: #ffffff;
  border: 1px solid #eeeeee;
}

.copyright-title i {
  position: absolute;
  top: 10px;
  right: 10px;
}

.copyright-title-top {
  width: 640px;
  margin: 0 auto;
  padding-top: 40px;
  font-size: 14px;
}

.copyright-title-top h1 {
  padding-bottom: 40px;
  text-align: center;
  font-size: 20px;
  color: #222222;
  padding: 0 0 30px;
  margin-bottom: 28px;
  border-bottom: 1px solid #ebebeb;
}

.copyright-title-content-a {
  padding-bottom: 40px;
}

.copyright-title-content-a h2 {
  font-size: 16px;
  font-weight: 700;
}

.copyright-title-content-p p {
  margin-bottom: 20px;
  margin-top: 10px;
  font-size: 14px;
  color: #66667f;
}

/* 完善信息 */
.copyright-title-content-perfect {
  position: relative;
  width: 640px;
  height: 44px;
  background: #fafafa;
  line-height: 44px;
}

.perfect {
  border-bottom: 1px solid #ebebeb;
}

.copyright-title-content-perfect i {
  position: absolute;
  top: 15px;
  left: 15px;
  width: 16px;
  height: 16px;
  color: #33aedd;
}

.copyright-title-content-cell {
  margin-left: 60px;
  font-size: 13px;
  color: #666666;
}

/* 阅读并同意部分 */
.copyright-title-agreement {
  position: relative;
  width: 640px;
  height: 34px;
  padding: 30px 0;
  line-height: 34px;
}

.copyright-title-checkbox span {
  color: #666666;
  font-size: 13px;
}

.copyright-title-checkbox a {
  color: #225599;
  font-size: 13px;
}

.copyright-title-agreement button {
  position: absolute;
  top: 30px;
  right: 0px;
  width: 78px;
  height: 33px;
  text-align: center;
  color: #888888;
  background: #eeeeee;
  border: 1px solid #dddddd;
  border-radius: 3px;
}

/* 版权 */
.copyright-content {
  width: 975px;
  height: 123px;
  line-height: 65px;
  margin: 0 auto;
  margin-top: 70px;
  border-top: 1px solid #cccccc;
  font-size: 13px;
  color: #999999;
}

.copyright-content span {
  float: left;
}

.copyright-content ul {
  float: right;
}

.copyright-content ul > li {
  float: left;
}
</style>