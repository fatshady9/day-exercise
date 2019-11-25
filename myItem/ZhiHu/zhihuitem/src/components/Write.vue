<template>
  <div>
      <userHeader></userHeader>
    <div class="ColumnHomeTop">
        <div class="a"></div>
      <h1 class="ColumnHomeTop-logo">知乎专栏</h1>
      <h2 class="ColumnHomeTop-subTitle">随心写作，自由表达</h2>
      <a type="button" class="ColumnHomeTop-writeButton">开始写文章</a>
      <a type="button" class="Button--plain">申请开通专栏 ></a>
    </div>
    <div class="ColumnHomeRecommendation">
      <h3 class="ColumnHomeTitle">
        <div class="ColumnHomeTitle-text">专栏 · 发现</div>
      </h3>
      <ul class="cardContainer">
        <li>
          <div class="img">
            <img src="../assets/img/write/ia_400000000.jpg" alt />
          </div>
          <div class="title">一带一路一故事</div>
          <div
            class="description"
          >以鲜明的观点，置疑的眼光，深度的调查分析，独立和全球化的视角获取读者的信任，创办的目的是参与一场新丝路推动全球化的变革和挑战阻碍我们进步的胆怯无知，读者定位为富有独立见解和批判精神的行业精英。（微信公众号请搜索:探索新丝路/ Email: newsilkroaddiscovery@gmail.com）</div>
          <div class="meta">1,800 人关注 | 80 篇文章</div>
          <div class="Button--green">进入专栏</div>
        </li>

        <li>
          <div class="img">
            <img src="../assets/img/write/ia_400000001.jpg" alt />
          </div>
          <div class="title">Alfred数据室</div>
          <div class="description">用数据看世界</div>
          <div class="meta">294 人关注 | 21 篇文章</div>
          <div class="Button--green">进入专栏</div>
        </li>

        <li>
          <div class="img">
            <img src="../assets/img/write/ia_400000002.jpg" alt />
          </div>
          <div class="title">制琴师的书架</div>
          <div class="description"></div>
          <div class="meta">1,711 人关注 | 74 篇文章</div>
          <div class="Button--green">进入专栏</div>
        </li>

        <li>
          <div class="img">
            <img src="../assets/img/write/ia_400000003.jpg" alt />
          </div>
          <div class="title">儿童学画画</div>
          <div class="description">画画牛逼，育儿也稳得一匹的 “戏精” 妈妈。</div>
          <div class="meta">901 人关注 | 89 篇文章</div>
          <div class="Button--green">进入专栏</div>
        </li>
      </ul>

      <ul class="cardContainer">
        <li>
          <div class="img">
            <img src="../assets/img/write/ia_400000004.jpg" alt />
          </div>
          <div class="title">AI+X</div>
          <div
            class="description"
          >此专栏会关注AI领域的最新进展，代码复现，交叉学科应用:探索新丝路/ Email: newsilkroaddiscovery@gmail.com）</div>
          <div class="meta">2,500 人关注 | 53 篇文章</div>
          <div class="Button--green">进入专栏</div>
        </li>

        <li>
          <div class="img">
            <img src="../assets/img/write/ia_400000005.jpg" alt />
          </div>
          <div class="title">爱生活爱眼睛</div>
          <div class="description">愿你有一颗热爱生活的心和一双不老的眼睛！</div>
          <div class="meta">294 人关注 | 21 篇文章</div>
          <div class="Button--green">进入专栏</div>
        </li>

        <li>
          <div class="img">
            <img src="../assets/img/write/ia_400000006.jpg" alt />
          </div>
          <div class="title">ELSE</div>
          <div class="description">坐标上海，专注前端，基于Node全栈开发，欢迎加入我们！【https://ctripfe.github.io/】</div>
          <div class="meta">1,429 人关注 | 168 篇文章</div>
          <div class="Button--green">进入专栏</div>
        </li>

        <li>
          <div class="img">
            <img src="../assets/img/write/ia_400000007.jpg" alt />
          </div>
          <div class="title">Travel星辰大海--旅游行业进阶之路</div>
          <div class="description">许义 公众号:Travel星辰大海 长期关注新旅游创业/旅游互联网</div>
          <div class="meta">2,315 人关注 | 46 篇文章</div>
          <div class="Button--green">进入专栏</div>
        </li>
      </ul>
    </div>

    <div class="HomeBttom">
      <h3 class="ColumnHomeBottom-title">在知乎创作</h3>
      <a type="button" class="ColumnHomeBottom-requestButton">申请专栏</a>
      <footer class="ColumnHomeBottom-footer">
        <span>
          ©
          <!-- -->
          2019
          <!-- -->
          知乎
        </span>
        <span>·</span>
        <a>知乎专栏</a>
        <span>·</span>
        <a>知乎圆桌</a>
        <span>·</span>
        <a>发现</a>
        <span>·</span>
        <a>移动应用</a>
        <span>·</span>
        <a>使用机构帐号登录</a>
        <span>·</span>
        <a>联系我们</a>
        <span>·</span>
        <a>来知乎工作</a>
        <br />
        <a>京 ICP 证 110745 号</a>
        <span>·</span>
        <a>
          <img src="../assets/img/write/v2-d0289dc0a46fc5b15b3363ffa78cf6c7.png" />京公网安备 11010802010035 号
        </a>
        <span>·</span>
        <a>出版物经营许可证</a>
      </footer>
    </div>
  </div>
</template>

<script>
import userHeader from "../components/headers/UserHeader";
export default {
  components: {
    userHeader
  }};
</script>

<style>
.ColumnHomeTop {
  background: url("../assets/img/write/patterns.c72a480c.png") 50% no-repeat;

  height: 470px;
  position: relative;
    margin-top: 54px;
}
.ColumnHomeTop-logo {
  background: url("../assets/img/write/logo.84666bea.png") 50% no-repeat;
  background-size: 129px 179px;
  height: 0;
  left: 50%;
  margin: 0 0 0 -65px;
  overflow: hidden;
  padding-top: 179px;
  position: absolute;
  top: 152px;
  width: 129px;
}
.ColumnHomeTop-subTitle {
  color: #1a1a1a;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 0.5em;
  line-height: 24px;
  margin: 0;
  position: absolute;
  text-align: center;
  top: 350px;
  width: 100%;
}
.ColumnHomeTop-writeButton {
  cursor: pointer;
  border: 1px solid #444;
  padding-left: 23px;
  box-sizing: border-box;
  color: #444;
  height: 38px;
  left: 50%;
  line-height: 36px;
  margin-left: -51px;
  position: absolute;
  top: 413px;
  width: 120px;
  background-color: #fbfbfb;
  border: 1px solid;
  border-radius: 3px;
  font-size: 14px;
}
.ColumnHomeTop-writeButton:hover {
  background-color: #f5f5f7;
}

.Button--plain {
  cursor: pointer;
  font-size: 14px;
  color: #109c62;
  left: 50%;
  line-height: 12px;
  margin-left: -36px;
  position: absolute;
  top: 466px;
}
.ColumnHomeRecommendation {
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -ms-flex-direction: column;
  flex-direction: column;
  margin: 48px auto 0;
  width: 919px;
  height: 790px;
}
.ColumnHomeTitle {
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  margin: 0 3px 32px;
  width: 100%;
}
.ColumnHomeTitle-text {
  color: #1a1a1a;
  font-size: 14px;
  line-height: 22px;
  margin: 0 16px;
  font-weight: 600;
  font-synthesis: style;
}
.cardContainer {
  overflow: hidden;
  width: 100%;
  height: 300px;
  margin-top: 20px;
}
.cardContainer li {
  float: left;
  position: relative;
  margin-left: 20px;
  background-color: #fff;
  width: 206px;
  height: 100%;
  list-style: none;
  box-shadow: 0 8px 18px rgba(0, 0, 0, 0.06);
}
.img {
  border-radius: 50%;
  margin-top: 25px;
  margin-left: 76px;
  width: 50px;
  height: 50px;
}
.img img {
  border-radius: 50%;
}
.title {
  margin-top: 14px;
  margin-left: -9px;
  text-overflow: ellipsis;
  overflow: hidden;
  font-weight: 600;
  text-align: center;
}
.description {
  color: grey;
  font-size: 14px;
  line-height: 21px;
  margin-top: 22px;
  text-align: center;
  word-break: break-all;
  display: -webkit-box;
  text-overflow: ellipsis;
  overflow: hidden;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.meta {
  color: grey;
  font-size: 14px;
  position: absolute;
  left: 30px;
  top: 193px;
}
.Button--green {
  cursor: pointer;
  position: absolute;
  top: 214px;
  width: 90px;
  height: 34px;
  border: 1px solid #11a668;
  color: #11a668;
  text-align: center;
  line-height: 31px;
  margin-left: 59px;
  margin-top: 29px;
  font-size: 14px;
  border: 1px solid;
  border-radius: 3px;
}
.Button--green:hover {
  background-color: #f1faf6;
}
.HomeBttom {
  margin-top: 48px;
  height: 478px;
  width: 100%;
  align-items: center;
  background: url("../assets/img/write/bg@2x.033e5b2d.png") repeat-x;
  background-size: 20px 450px;
  display: -ms-flexbox;
  display: flex;
  flex-direction: column;
  padding-top: 134px;
}
.ColumnHomeBottom-title {
  border: solid #97ffd8;
  border-width: 1px 0;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 14px;
  padding: 26px 0;
  text-align: center;
  white-space: nowrap;
  width: 345px;
}
.ColumnHomeBottom-requestButton {
  cursor: pointer;
  border: 1px solid #444;
  font-size: 14px;
  text-align: center;
  box-sizing: border-box;
  color: #444;
  line-height: 36px;
  margin-top: 40px;
  height: 38px;
  width: 120px;
}
.ColumnHomeBottom-footer {
    color: grey;
    font-size: 12px;
    line-height: 22px;
    margin: 80px 0 60px;
    padding: 0 12px;
    text-align: center;
}
.a{
    width: 100%;
    height: 500px;
          background: url("/img/bg@2x.033e5b2d.033e5b2d.png") repeat-x;
      background-size: 20px 450px;
}
</style>