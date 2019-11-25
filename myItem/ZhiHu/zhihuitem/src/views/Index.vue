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
              <a href="#" class="active">推荐</a>
              <a href="/hot">热榜</a>
            </div>
            <!-- 下半部分 -->
            <div class="m-one-bottom" id="example" v-for="(item,index) in answerList" :key="index">
              <span @click="goAnswer(item.ques_id,item.id)">{{item.question}}</span>

              <div class="one-bottom-img">
                <template v-if="!item.isShow">
                  <div class="hideBg">
                    <p class="summary">
                      <a
                        :href="'/user/'+item.user_id"
                        id="userid"
                        style="color: #1a1a1a"
                      >{{item.nickname}}:&nbsp;</a>
                      {{item.smallContent}}...
                      <a
                        href="#"
                        id="zanHide"
                        style="color:#175199"
                        @click.stop.prevent="onShow(item)"
                      >
                        阅读全文&nbsp;
                        <!-- 向下的角箭头符号，用css画 -->
                        <span class="downArrow"></span>
                      </a>
                    </p>
                    <!-- <div class="showBtn"> -->
                    <!-- 绑定点击事件onShow，点击展开全文 -->

                    <!-- </div> -->
                  </div>
                </template>
                <template v-else>
                  <!-- 显示完整内容的画面 -->
                  <div class="userLie">
                    <img src="../assets/touxiang.jpg" alt />
                    <a
                      :href="'/user/'+item.user_id"
                      id="userid"
                      style="color: #1a1a1a"
                    >{{item.nickname}}&nbsp;</a>
                  </div>
                  <i id="pracount">{{item.agree}}人赞同了该回答</i>
                  <div class="showBg">
                    <p class="article" v-html="item.content"></p>
                    <div class="hideBtn clearfix">
                      <!-- 绑定点击事件onHide，点击收起内容 -->
                      <a href="#" @click.stop.prevent="onHide(item)">
                        收起&nbsp;
                        <!-- 向上的角箭头符号 -->
                        <span class="upArrow"></span>
                      </a>
                    </div>
                  </div>
                </template>
              </div>
              <i id="pracount">
                <el-tooltip
                  class="item"
                  effect="dark"
                  :content="item.time | dateTime2"
                  placement="top-end"
                >
                  <span>发布于&nbsp;{{item.time | dateTime}}</span>
                </el-tooltip>
              </i>
              <!-- 点赞行 -->
              <div class="one-bottom-zan">
                <span>
                  <button
                    class="but-one"
                    type="button"
                    v-if="!item.isAgree"
                    @click="addAgree(item)"
                  >
                    <span id="zan-top" class="el-icon-caret-top"></span>
                    赞同&nbsp;{{item.agree}}
                  </button>
                  <!-- 点赞以后 -->
                  <button class="but-one" id="hend" type="button" v-else>
                    <span id="zan-top" class="el-icon-caret-top"></span>
                    已赞同&nbsp;{{item.agree+1}}
                  </button>

                  <button
                    type="button"
                    class="but-two"
                    v-if="!item.isDisagree || item.isAgree"
                    @click="item.isDisagree=true"
                  >
                    <span id="zan-but" class="el-icon-caret-bottom"></span>
                  </button>

                  <button
                    type="button"
                    class="but-two"
                    id="hend"
                    v-else
                    @click="item.isDisagree = false"
                  >
                    <span id="zan-but" class="el-icon-caret-bottom"></span>
                  </button>

                  <a
                    href="javascript:;"
                    class="cri el-icon-s-comment"
                    id="comment"
                    @click="showComm(item)"
                    v-if="!item.commShow"
                  >&nbsp;查看评论</a>
                  <a
                    href="javascript:;"
                    class="cri el-icon-s-comment"
                    id="comment"
                    @click="item.commShow = false"
                    v-else
                  >&nbsp;收起评论</a>
                  <a href class="cri el-icon-s-promotion">&nbsp;分享</a>
                  <a href class="cri el-icon-star-on">&nbsp;收藏</a>
                  <a href class="cri el-icon-s-opportunity">&nbsp;感谢</a>
                  <a href="javascript:;" class>
                    <el-dropdown trigger="click">
                      <a class="el-dropdown-link cri el-icon-more"></a>
                      <el-dropdown-menu slot="dropdown">
                        <el-dropdown-item>没有帮助</el-dropdown-item>
                        <el-dropdown-item>举报</el-dropdown-item>
                        <el-dropdown-item>不感兴趣</el-dropdown-item>
                        <el-dropdown-item>也就那样</el-dropdown-item>
                      </el-dropdown-menu>
                    </el-dropdown>
                  </a>
                </span>
              </div>
              <!-- 评论弹出框 -->
              <div class="commentShow" v-if="item.commShow">
                <div class="countPin">
                  <span v-if="item.commList.length==0">还没有评论</span>
                  <span v-else>{{item.commList.length}}&nbsp;条评论</span>
                  <a href class="clearfix">
                    <i class="el-icon-sort"></i> 切换为时间排序
                  </a>
                </div>
                <!-- 评论 -->
                <div class="discuss" v-for="(item2,index2) in item.commList" :key="index2">
                  <ul>
                    <!-- 第一条评论 -->
                    <li>
                      <ol>
                        <li>
                          <img src="../assets/touxiang.jpg" alt />

                          <a
                            :href="'/user/'+item2.user_id"
                            id="userid"
                            style="color: #1a1a1a"
                          >{{item2.nickname}}&nbsp;</a>
                          <span class="clearfix">{{item2.time | dateTime3}}</span>
                        </li>
                        <li>{{item2.content}}</li>
                        <li>
                          <a href class="el-icon-s-opportunity">&nbsp;赞</a>
                        </li>
                      </ol>
                    </li>
                  </ul>
                </div>
                <!-- 评论框 -->
                <div class="pinFrame">
                  <el-form>
                    <el-form-item prop="content">
                      <el-input placeholder="写下你的评论..." v-model="item.inputContent"></el-input>
                      <el-button
                        type="primary"
                        :disabled="!item.inputContent"
                        @click="addComment(item)"
                      >发布</el-button>
                    </el-form-item>
                  </el-form>
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
              <a href="/live" class="clearfix">
                <i class="el-icon-s-opportunity"></i>
                <span>Live</span>
              </a>
              <a href="/bookstore" class="clearfix">
                <i class="el-icon-s-management"></i>
                <span>书店</span>
              </a>
              <a href="/table" class="clearfix">
                <i class="el-icon-orange"></i>
                <span>圆桌</span>
              </a>
            </div>
            <div class="asd-one-top">
              <a href="/write" class="clearfix">
                <i class="el-icon-s-tools"></i>
                <span>专栏</span>
              </a>
              <a href="/paid" class="clearfix">
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
import $ from "jquery";
export default {
  data() {
    return {
      show: false,
      isShow: false,
      // 查询回答参数对象
      queryInfo: {
        page: 1,
        per_page: 5,
        ques_id: 1
      },
      // 问题列表
      answerList: [],
      limit: 30
    };
  },
  created() {
    this.getanswerList();
    document.title = "首页 - 知乎";
  },
  methods: {
    // 显示评论
    showComm: async function(answer) {
      let { data: res } = await this.$http.get("/answer_comment", {
        params: {
          answer_id: answer.id,
          limit: 10
        }
      });
      console.log(res);
      answer.commList = res.data;
      answer.commShow = !answer.commShow;
    },
    // 获取首页回答
    async getanswerList() {
      const { data: res } = await this.$http.get("/answer_index", {
        params: {
          limit: this.limit
        }
      });

      if (res.code !== 200) return this.$message.error("获取数据失败");
      res.data.filter(item => {
        // 文本缩放
        item.smallContent = item.content.replace(/<.*?>/gi, "");
        item.smallContent = item.smallContent.substring(0, 60);
        item.isShow = false;
        item.commShow = false;
        // 赞同
        item.isAgree = false;
        item.isDisagree = false;
      });

      this.answerList = res.data;
    },
    // 跳转到问题页
    goAnswer(ques_id, answer_id) {
      window.location.href = `/question/${ques_id}/answer/${answer_id}`;
    },
    // 展示回答全部
    onShow: function(answer) {
      answer.isShow = true;
    },
    onHide: function(answer) {
      answer.isShow = false;
    },
    // 添加评论
    async addComment(answer) {
      let user = window.sessionStorage.getItem("user");
      user = JSON.parse(user);
      console.log(user);
      let user_id = user.id;
      let answer_id = answer.id;
      let nickname = user.nickname;
      let content = answer.inputContent;
      var params = new URLSearchParams();
      params.append("user_id", user_id);
      params.append("answer_id", answer_id);
      params.append("content", content);
      params.append("nickname", nickname);
      const { data: res } = await this.$http.post("answer_comment", params);
      console.log(res);
      this.showComm(answer);
      answer.inputContent = "";
    },
    // 添加赞同
    async addAgree(item) {
      let id = item.id;
      let agree = item.agree + 1;
      var params = new URLSearchParams();
      params.append("agree", agree);
      let { data: res } = await this.$http.put(`/answer/${id}`, params);
      item.isAgree = true;
      console.log(res);
    }
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
#userid {
  font-size: 16px;
}
#zanHide {
  font-size: 14px;
}

/* 摘要背景板 */
.hideBg {
  // padding: 1.5rem;
  padding-bottom: 0; /* 方便渐变层遮挡 */
  position: relative; /* 用于子元素定位 */
  padding-top: 0px;

  p {
    margin-top: 10px;
    margin-bottom: -2px;
    font-size: 15px;
  }
}

.userLie {
  height: 24px;
  width: 100%;
  line-height: 24px;
  margin-top: 13px;
}
.userLie > a {
  position: relative;
  top: -5px;
  left: 11px;
  font-weight: bold;
}
.userLie > img {
  width: 24px;
  height: 24px;
}
#pracount {
  font-style: normal;
  display: block;
  margin-top: 10px;
  font-size: 14px;
  span {
    cursor: pointer;
  }
}
/* 全文背景板，基本与摘要相同 */
.showBg {
  // padding: 1.5rem;
  position: relative;
  p {
    margin-top: 10px;
    margin-bottom: 5px;
  }
}
/* 摘要内容 */
.summary {
  overflow: hidden; /* 隐藏溢出内容 */
  text-overflow: clip; /* 修剪文本 */
  display: -webkit-box; /* 弹性布局 */
  -webkit-box-orient: vertical; /* 从上向下垂直排列子元素 */
  -webkit-line-clamp: 3; /* 限制文本仅显示前三行 */
}
#example p {
  // text-indent: 2em;
  line-height: 25px;
}
/* 展开按钮 */
.showBtn {
  width: 100%; /* 与背景宽度一致 */
  height: 2rem;
  position: absolute; /* 相对父元素定位 */
  top: 1rem; /* 刚好遮挡在最后两行 */
  left: 0;
  z-index: 0; /* 正序堆叠，覆盖在p元素上方 */
  text-align: center;
  background: linear-gradient(
    rgba(233, 236, 239, 0.5),
    white
  ); /* 背景色半透明到白色的渐变层 */
  padding-top: 3rem;
}
/* 收起按钮 */
.hideBtn {
  margin-left: 70px;
  position: absolute;
  bottom: -58px;
  right: 25px;
  font-size: 14px;
  color: #8590a6;
}
#example a {
  text-decoration: none; /* 清除链接默认的下划线 */
  color: #8492a6;
}
#example {
  margin-bottom: 2px;
}
/* 向下角箭头 */
.downArrow {
  display: inline-block;
  width: 7px; /* 尺寸不超过字号的一半为宜 */
  height: 7px;
  border-right: 1px solid; /* 画两条相邻边框 */
  border-bottom: 1px solid;
  transform: rotate(45deg); /* 顺时针旋转45° */
  margin-bottom: 3px;
}
.upArrow {
  display: inline-block;
  width: 7px;
  height: 7px;
  border-left: 1px solid;
  border-top: 1px solid;
  transform: rotate(45deg);
  margin-top: 3px;
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
  padding: 20px 0px 14px 20px;
  background-color: #ffffff;
}
.m-one-bottom > span {
  font-weight: bold;
  font-size: 18px;
  cursor: pointer;
}
.one-bottom-img {
  padding: 0px 7px 0px 0px;
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
  margin: 4px 3px 0px 23px;
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
  margin-bottom: 5px;
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

#hend {
  color: white;
  background-color: #0084ff;
}

#zan-top {
  display: block;
  width: 10px;
  height: 10px;
  position: absolute;
  left: 4px;
  top: 6px;
  font-size: 17px;
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
  left: 5px;
  top: 5px;
  font-size: 17px;
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
#comment {
}
.commentShow {
  width: 640px;
  // height: 200px;
  margin-top: 12px;
  border: 1px solid #f0f2f7;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
}
.countPin {
  width: 96%;
  height: 50px;
  border-bottom: 1px solid #f6f6f6;
  line-height: 50px;
  padding: 0px 14px;
}
.countPin > span {
  font-weight: bold;
}

.countPin > a {
  float: right;
  color: #8d9dbb;
}

.countPin > a > i {
  font-size: 17px;
  font-weight: bold;
}

.discuss {
  width: 96%;
  border-bottom: 1px solid #f6f6f6;
  padding: 0px 14px;
}
.discuss > ul li {
  display: block;
  padding-top: 5px;
}
.discuss > ul ol {
  padding: 0px;
}
.discuss > ul ol > li:nth-child(1) {
  position: relative;
}
.discuss > ul ol > li:nth-child(1) > img {
  width: 24px;
  border-radius: 1px;
  margin-right: 6px;
}
.discuss > ul ol > li:nth-child(1) > a {
  position: absolute;
  left: 34px;
  top: 6px;
}
.discuss > ul ol > li:nth-child(1) > span {
  float: right;
  color: #8590a6;
}

.discuss > ul ol > li:nth-child(2) {
  margin-left: 33px;
  margin-bottom: 19px;
}

.discuss > ul ol > li:nth-child(3) {
  margin-left: 32px;
  margin-bottom: 11px;
}
.discuss > ul ol > li:nth-child(3) > a {
  color: #8590a6;
  margin-right: 22px;
}

.pinFrame {
  width: 96%;
  padding: 0px 14px;
  margin-top: 23px;
}

.pinFrame > .input {
  width: 445px;
  height: 35px;
  border: 1px solid #ebebeb;
  border-radius: 5px;
  border-top-width: 1px;
  font-size: 16px;
  padding-left: 13px;
  /* margin-top: 10px; */
  margin: 16px;
  margin-right: 33px;
}

.pinFrame .el-input {
  position: relative;
  font-size: 14px;
  display: inline-block;
  width: 84%;
  margin-right: 24px;
}
// 清除浮动
.clearfix:after {
  content: "";
  display: block;
  clear: both;
}
</style>