<template>
  <div class="vessel">
    <!-- 导航栏 -->
    <div class="nav">
      <indexHeader></indexHeader>
    </div>
    <!-- 内容部分 -->
    <div class="content">
      <el-container id="containera">
        <el-main id="maina">
          <div class="m-one">
            <!-- 上半部分 -->
            <div class="m-one-top">
              <a href="/">推荐</a>
              <a href="#" class="active">热榜</a>
            </div>
            <!-- 下半部分 -->
            <div class="m-one-bottom clearfix">
              <!-- 文字部分 -->
              <div class="unfold clearfix" v-for="(item,index) in quesList" :key="index">
                <!-- 序号 -->
                <div class="number">
                  <span v-if="index+1<3" style="color:orange">{{index+1}}</span>
                  <span v-else style="color:gray">{{index+1}}</span>
                </div>
                <!-- 文字 -->
                <div class="share">
                  <a :href="'question/'+item.id" class="alliance">{{item.question}}</a>
                  <p class="character">{{item.describe}}</p>
                  <div class="heat">
                    <span>
                      <img src="../assets/img/bmz/h.png" alt />
                      {{item.browe}}&nbsp;热度
                    </span>
                    <a href="javasxript:;" class="el-icon-s-promotion">分享</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </el-main>
        <el-aside id="asidea">
          <div class="asd-one">
            <!-- 右边第一行 -->
            <div class="asd-one-top">
              <a href class="clearfix">
                <i class="el-icon-tickets"></i>
                <span>写回答</span>
              </a>
              <a href class="clearfix">
                <i class="el-icon-edit-outline"></i>
                <span>写文章</span>
              </a>
              <a href class="clearfix">
                <i class="el-icon-edit"></i>
                <span>写想法</span>
              </a>
            </div>
            <!-- 稍后答 -->
            <div class="asd-one-content">
              <a href class="el-icon-time">&nbsp;我的稍后答</a>
            </div>
            <div class="asd-one-content">
              <a href class="el-icon-s-shop">&nbsp;我的草稿</a>
            </div>
          </div>
          <!-- 第二个 -->
          <div class="asd-two">
            <div class="asd-one-top">
              <a href class="clearfix">
                <i class="el-icon-s-opportunity"></i>
                <span>Live</span>
              </a>
              <a href class="clearfix">
                <i class="el-icon-s-management"></i>
                <span>书店</span>
              </a>
              <a href class="clearfix">
                <i class="el-icon-orange"></i>
                <span>圆桌</span>
              </a>
            </div>
            <div class="asd-one-top">
              <a href class="clearfix">
                <i class="el-icon-s-tools"></i>
                <span>专栏</span>
              </a>
              <a href class="clearfix">
                <i class="el-icon-s-finance"></i>
                <span class="fufei">付费咨询</span>
              </a>
            </div>
          </div>
          <!-- 第三个 -->
          <div class="right">
            <div class="personal">
              <ul>
                <li onclick="window.location.href='/community'">
                  <i class="el-icon-question"></i>
                  &nbsp;站务中心
                </li>
                <li onclick="window.location.href='/copyright'">
                  <i class="el-icon-info"></i>
                  &nbsp;版权服务中心
                </li>
              </ul>
            </div>
            <div class="footer">
              <footer class="Footer">
                <a class="Footer-item" href="#">刘看山</a>
                <span class="Footer-dot"></span>
                <a class="Footer-item" href="#">知乎指南</a>
                <span class="Footer-dot"></span>
                <a class="Footer-item" href="#">知乎协议</a>
                <span class="Footer-dot"></span>
                <a class="Footer-item" href="#">知乎隐私保护指引</a>
                <br />
                <a class="Footer-item" href="#">应用</a>
                <span class="Footer-dot"></span>
                <a class="Footer-item" href="#">工作</a>
                <span class="Footer-dot"></span>
                <button type="button" class="orgCreatebutton">申请开通知乎机构号</button>
                <br />
                <a class="Footer-item" href="#">侵权举报</a>
                <span class="Footer-dot"></span>
                <a class="Footer-item" href="#">网上有害信息举报专区</a>
                <br />
                <a class="Footer-item" href="#">京 ICP 证 110745 号</a>
                <br />
                <a class="Footer-item" href="#">
                  <img src="../assets/img/wxy/guohui.png" />京公网安备 11010802010035 号
                </a>
                <br />
                <span class="Footer-item">违法和不良信息举报：010-82716601</span>
                <br />
                <a class="Footer-item" href="#">儿童色情信息举报专区</a>
                <br />
                <a class="Footer-item" href="#">证照中心</a>
                <br />
                <a class="Footer-item" href="#">联系我们</a>
                <span>© 2019 知乎</span>
              </footer>
            </div>
          </div>
        </el-aside>
      </el-container>
    </div>
  </div>
</template>

<script>
import indexHeader from "../components/headers/IndexHeader";
export default {
  data() {
    return {
      quesList: []
    };
  },
  methods: {
    async getQuestion() {
      let { data: res } = await this.$http.get("/question_waiting", {
        params: {
          order: "browe",
          limit: 10
        }
      });
      console.log(res);
      this.quesList = res.data;
    }
  },
  created() {
    this.getQuestion();
    document.title = "热榜 - 知乎"
  },
  components: {
    indexHeader
  }
};
</script>


<style lang="less" scoped>
html a {
  color: #1a1a1a;
}
// 下拉
.el-dropdown-link {
  cursor: pointer;
  color: #409eff;
}
.el-icon-arrow-down {
  font-size: 12px;
}
.demonstration {
  display: block;
  color: #8492a6;
  font-size: 14px;
  margin-bottom: 20px;
}
.vessel {
  background-color: #f6f6f6;
  height: 2000px;
}
.el-dropdown-link {
  color: #8492a6;
}
.el-aside {
  color: #333;
  //   text-align: center;
  //   line-height: 200px;
}

.el-main {
  //   background-color: #ffffff;
  color: #333;
  text-align: center;
  // line-height: 160px;
  text-align: end;
  // line-height: 0px;
}

body > .el-container {
  margin-bottom: 40px;
}
#containera {
  width: 1000px;
  margin: 0 auto;
  margin-top: 60px;
}
#maina {
  margin-right: 10px;
  width: 585px;
  padding: 0px;
  //   box-shadow: 1px
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
  overflow: hidden;
}
#asidea {
  width: 405px;
}
.m-one-top {
  height: 50px;
  text-align: left;
  line-height: 50px;
  padding-left: 20px;
  background-color: #ffffff;
  margin-bottom: 2px;
  background-color: #ffffff;
}
.m-one-top a {
  margin-right: 40px;
}
.m-one-top a.active {
  color: #0084ff;
}
.m-one-top a:hover {
  color: #175199;
}
.m-one-bottom {
  // height: 340px;
  text-align: left;
  padding: 0px;
  background-color: #ffffff;
}
.m-one-bottom > span {
  font-weight: bold;
}
.one-bottom-img {
  padding: 20px 7px 5px 0px;
}
.one-bottom-img > a img {
  display: inline-block;
  border-radius: 4px;
}
.one-bottom-img > p {
  display: inline-block;
}
.one-bottom-img-right {
  float: right;
  width: 445px;
  height: 100px;
}
.one-bottom-img-right > p {
  display: block;
  line-height: 26px;
  margin-top: 2px;
  font-size: 15px;
  a {
    color: #3772b9;
  }
}

.one-bottom-zan {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  margin: 0 0px -10px;
  color: #646464;
  background: #fff;
  clear: both;
}
.one-bottom-zan > span {
}
.one-bottom-zan > span .but-one {
  line-height: 26px;
  padding: 0 12px;
  padding-left: 20px;
  color: #0084ff;
  background: rgba(0, 132, 255, 0.1);
  border-color: transparent;
  display: inline-block;
  font-size: 14px;
  text-align: center;
  cursor: pointer;
  border-radius: 3px;
  position: relative;
  margin-right: 5px;
}
#zan-top {
  display: block;
  width: 10px;
  height: 10px;
  position: absolute;
  left: 7px;
  top: 8px;
  background-image: url(../assets/img/Ly/zan-top.png);
  background-size: 10px;
}

.one-bottom-zan > span .but-two {
  color: #0084ff;
  background: rgba(0, 132, 255, 0.1);
  border-color: transparent;
  display: inline-block;
  cursor: pointer;
  border-radius: 3px;
  height: 30px;
  width: 32px;
  position: relative;
  left: 0px;
  top: 7px;
  margin-right: 20px;
}
#zan-but {
  display: block;
  width: 10px;
  height: 10px;
  position: absolute;
  left: 9px;
  top: 9px;
  background-image: url(../assets/img/Ly/zan-but.png);
  background-size: 10px;
}
.one-bottom-zan > span > .cri {
  color: #8590a6;
  font-size: 13px;
  margin: 0px 10px;
  margin-right: 15px;
}
.asd-one {
  width: 100%;
  height: 200px;
  background-color: #ffffff;
  overflow: hidden;
  margin-bottom: 10px;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
}
.asd-one-top {
  width: 260px;
  height: 80px;
  margin: 0px auto;
}
.asd-one-top > a {
  float: left;
  width: 80px;
  height: 100%;
  position: relative;
  margin-right: 5px;
  color: #8590a6;
}
.asd-one-top:nth-child(1) > a:nth-child(1):hover {
  span {
    color: #ffcf00;
  }
}
.asd-one-top:nth-child(1) > a:nth-child(2):hover {
  span {
    color: #43d480;
  }
}
.asd-one-top:nth-child(1) > a:nth-child(3):hover {
  span {
    color: #0084ff;
  }
}
.asd-one-top:nth-child(2) > a:nth-child(1):hover {
  span {
    color: #0f88eb;
  }
}
.asd-one-top:nth-child(2) > a:nth-child(2):hover {
  span {
    color: #5478f0;
  }
}

.asd-one-top > a > i {
  position: absolute;
  left: 32px;
  top: 27px;
  color: #8590a6;
  font-size: 20px;
}

.asd-one-top > a > span {
  position: absolute;
  left: 16px;
  top: 51px;
}
.asd-one-content {
  width: 260px;
  height: 50px;
  margin: 0px auto;
  line-height: 40px;
  margin-top: 10px;
  border-bottom: 1px solid #f0f2f7;
  a {
    color: #8590a6;
    font-size: 14px;
    margin-left: 9px;
  }
}

.asd-two {
  width: 100%;
  height: 180px;
  background-color: #ffffff;
  margin-bottom: 10px;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
}

.asd-two a > .el-icon-s-opportunity {
  color: #ffcf00;
}

.asd-two a > .el-icon-s-management {
  color: #43d480;
}

.asd-two a > .el-icon-s-tools {
  color: #0f88eb;
}
.asd-two a > .el-icon-orange {
  color: #0084ff;
}
.asd-two a > span {
  left: 25px;
  top: 51px;
}
.asd-two a > .el-icon-s-finance {
  color: #5478f0;
}
.asd-two a > .fufei {
  left: 13px;
  top: 51px;
}
.asd-there {
  width: 100%;
  height: 220px;
  background-color: #ffffff;
}

.asd-there > ul li {
  list-style: none;
}
.right {
  width: 300px;
  float: right;
}
.personal {
  width: 100%;
  padding: 8px 0px;
  background-color: #fff;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
  ul {
    margin: 0;
    padding: 0;
    list-style: none;
    color: #8590a6;

    li {
      height: 40px;
      line-height: 40px;
      padding: 0px 20px;
      font-size: 14px;
      cursor: pointer;
    }

    li:hover {
      background-color: #f6f6f6;
    }
  }
}
.Footer {
  padding: 10px 0 10px 5px;
  font-size: 13px;
  line-height: 2;
  color: #8590a6;

  .Footer-item {
    display: inline-flex;
    align-items: center;
    color: #8590a6;
  }

  .Footer-dot:after {
    margin: 0 5px;
    content: "\B7";
  }

  a:hover {
    color: #175199;
  }

  .orgCreatebutton {
    display: inline-block;
    padding: 0;
    font-size: 14px;
    line-height: 32px;
    color: #8590a6;
    text-align: center;
    cursor: pointer;
    background: none;
    border: none;
    border-radius: 3px;
  }
}

// 清除浮动
.clearfix:after {
  content: "";
  display: block;
  clear: both;
}

// 热榜css
.unfold {
  width: 100%;
  border-bottom: 1px solid #ebebeb;
  padding: 0px 0 0 0px;
  padding: 18px 2px;
  padding-bottom: 5px;
}
.number {
  width: 40px;
  height: 105px;
  // background-color: lightgreen;
  float: left;
}
.number span {
  color: #ff9607;
  font-size: 18px;
  margin-left: 15px;
  font-weight: 600;
}
.share {
  width: 617px;
  float: left;
}
.uimg {
  width: 190px;
  height: 105px;
  background-color: moccasin;
  float: left;
}
.alliance {
  display: block;
  width: 100%;
  font-size: 18px;
  font-weight: 600;
}
.heat {
  width: 100%;
  height: 30px;
  span {
    margin-right: 22px;
    color: #8590a6;
    font-size: 14px;
  }
  a {
    color: #8590a6;
    font-size: 14px;
  }
}
.heat img {
  position: relative;
  top: 2px;
}
.character {
  width: 100%;
  margin-top: 9px;
}
</style>