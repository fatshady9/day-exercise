<template>
  <main>
    <div class="profile_header">
      <userHeader></userHeader>
      <div class="card">
        <!-- 封面图片 -->
        <div class="cover">
          <div class="cover_editor">
            <label></label>
            <div class="cover_img">
              <img src="../assets/img/wxy/cover1.jpg" alt="封面图片" />
            </div>
          </div>
        </div>
        <!-- 个人资料 -->
        <div class="wrapper">
          <div class="wmain">
            <!-- 头像 -->
            <div class="avatar">
              <div class="user_avatar">
                <img src="../assets/touxiang.jpg" alt="头像" />
              </div>
            </div>
            <!-- 显示个人资料 -->
            <div class="content">
              <div class="contenHead">
                <h1 class="contenHead_title">
                  <span class="contenHead_name">{{nickname}}</span>
                  <span class="contenHead_headline">{{sign}}</span>
                </h1>
              </div>
              <div class="contenBody">
                <div class="contenBody_detail">
                  <div class="contenBody_detailItem">
                    <span class="contenBody_detailLabel">所在行业</span>
                    <div class="contenBody_detailValue">互联网</div>
                  </div>
                </div>
              </div>
              <div class="contenFooter">
                <button class="contenFooter_btn1">
                  <svg
                    viewBox="0 0 10 6"
                    class="Icon ProfileHeader-arrowIcon is-active Icon--arrow"
                    width="10"
                    height="16"
                    aria-hidden="true"
                    style="height: 16px; width: 10px;"
                  >
                    <title />
                    <g>
                      <path
                        d="M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z"
                      />
                    </g>
                  </svg>
                  详细资料
                </button>
                <div class="contenFooter_btn2"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="profile_main">
      <div class="profile_mainColumn">
        <el-card class="profile_card">
          <!-- <el-tabs v-model="activeName" @tab-click="handleClick"> -->
          <el-tabs v-model="activeName">
            <!-- <el-tab-pane label="动态" name="first">动态</el-tab-pane> -->
            <el-tab-pane label="回答" name="second">
              <div class="list-header">
                <h4 style="margin-top:0;margin-bottom:12px">我的回答</h4>
              </div>
              <div
                class="m-one-bottom"
                id="example"
                v-for="(item,index) in answerList"
                :key="index"
              >
                <span @click="goAnswer(item.ques_id,id)">{{item.question}}</span>

                <div class="one-bottom-img">
                  <template v-if="!item.isShow">
                    <div class="hideBg">
                      <p class="summary">
                        <a href id="userid" style="color: #1a1a1a">{{item.nickname}}:&nbsp;</a>
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
                  </template>
                </div>
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
                            <!-- <a :href="'/user/'+item2.user_id" id="userid" style="color: #1a1a1a"> -->
                            <img src="../assets/touxiang.jpg" alt />
                            <!-- </a> -->

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
            </el-tab-pane>
            <el-tab-pane label="提问" name="third">
              <div class="list-header">
                <h4 style="margin-top:0;margin-bottom:12px">我的提问</h4>
              </div>
              <div>
                <div class="List-item" v-for="(item,index) in questionData" :key="index">
                  <div class="contentItem answerItem">
                    <h2 class="contentItem-title">
                      <div>
                        <a :href="'/question/'+item.id">{{item.question}}</a>
                      </div>
                    </h2>
                    <div class="contentItem-status">
                      <span class="contentItem-statusItem">{{item.time | dateTime}}</span>
                      <!-- <span class="contentItem-statusItem">{{item.answer}} 个回答</span> -->
                      <!-- <span class="contentItem-statusItem">1 个关注</span> -->
                    </div>
                  </div>
                </div>
              </div>
            </el-tab-pane>
            <el-tab-pane label="关注" name="fourth">
              <el-tabs v-model="activeName1">
                <el-tab-pane label="我关注的人" name="fourth_one">
                  <!-- 我关注的人 -->
                  <div>
                    <div class="List-item" v-for="(item1,index1) in attenData" :key="index1">
                      <div class="contentItem">
                        <div class="contentItem-main">
                          <!-- 关注的人的头像 -->
                          <div class="contentItem-image">
                            <span class="userLink userItem-avatar">
                              <div class="popover">
                                <div>
                                  <a class="userLink-link" href="javascript:;">
                                    <img
                                      class="avatar avatar-large userLink-avatar"
                                      width="60"
                                      height="60"
                                      src="../assets/touxiang.jpg"
                                      alt="winningman"
                                    />
                                  </a>
                                </div>
                              </div>
                            </span>
                          </div>
                          <!-- 关注的人的头像end -->

                          <!-- 关注的人的信息 -->
                          <div class="contentItem-head">
                            <h2 class="contentItem-title">
                              <div class="userItem-title">
                                <span class="userLink userItem-name">
                                  <div class="popover">
                                    <div>
                                      <a
                                        class="userLink-link"
                                        href="JavaScript:;"
                                      >{{item1.nickname}}</a>
                                    </div>
                                  </div>
                                </span>
                              </div>
                            </h2>
                            <div class="contentItem-meta">
                              <div>
                                <div class="ztext">优秀回答者</div>

                                <div class="contentItem-status">
                                  <span class="contentItem-statusItem">{{item1.sign}}</span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- 关注的人的信息end -->

                          <!-- 关注的人的状态 -->
                          <div class="contentItem-extra">
                            <button
                              type="button"
                              class="button followButton button-primary button-grey"
                            >已关注</button>
                          </div>
                          <!-- 关注的人的状态end -->
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--  -->
                </el-tab-pane>
                <el-tab-pane label="关注我的人" name="fourth_two">
                  <!-- 关注我的人 -->
                  <div>
                    <div class="List-item" v-for="(item2,index2) in beAttenData" :key="index2">
                      <div class="contentItem">
                        <div class="contentItem-main">
                          <!-- 关注的人的头像 -->
                          <div class="contentItem-image">
                            <span class="userLink userItem-avatar">
                              <div class="popover">
                                <div>
                                  <a class="userLink-link" href="javascript:;">
                                    <img
                                      class="avatar avatar-large userLink-avatar"
                                      width="60"
                                      height="60"
                                      src="../assets/touxiang.jpg"
                                      alt="winningman"
                                    />
                                  </a>
                                </div>
                              </div>
                            </span>
                          </div>
                          <!-- 关注的人的头像end -->

                          <!-- 关注的人的信息 -->
                          <div class="contentItem-head">
                            <h2 class="contentItem-title">
                              <div class="userItem-title">
                                <span class="userLink userItem-name">
                                  <div class="popover">
                                    <div>
                                      <a
                                        class="userLink-link"
                                        href="JavaScript:;"
                                      >{{item2.nickname}}</a>
                                    </div>
                                  </div>
                                </span>
                              </div>
                            </h2>
                            <div class="contentItem-meta">
                              <div>
                                <div class="ztext">优秀回答者</div>

                                <div class="contentItem-status">
                                  <span class="contentItem-statusItem">{{item2.sign}}</span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- 关注的人的信息end -->

                          <!-- 关注的人的状态 -->
                          <div class="contentItem-extra">
                            <button
                              type="button"
                              class="button followButton button-primary button-grey"
                            >已关注</button>
                          </div>
                          <!-- 关注的人的状态end -->
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--  -->
                </el-tab-pane>
                <el-tab-pane label="我关注的问题" name="fourth_three">
                  <!-- <hr /> -->
                  <div>
                    <div class="List-item" v-for="(item4,index4) in problemData" :key="index4">
                      <div class="contentItem answerItem">
                        <h2 class="contentItem-title">
                          <div>
                            <a :href="'/question/'+item4.id">{{item4.question}}</a>
                          </div>
                        </h2>
                        <div class="contentItem-status">
                          <span class="contentItem-statusItem">{{item4.time | dateTime}}</span>
                          <!-- <span class="contentItem-statusItem">{{item4.answer}} 个回答</span> -->
                          <!-- <span class="contentItem-statusItem">1 个关注</span> -->
                        </div>
                      </div>
                    </div>
                  </div>
                </el-tab-pane>
              </el-tabs>
            </el-tab-pane>
          </el-tabs>
        </el-card>
      </div>
      <!-- 侧边栏 -->
      <div class="profile_asideColumn">
        <div class="FollowshipCard card">
          <div class="NumberBoard">
            <a class="NumberBoard-item" style="border-right: 1px solid #ebebeb" href="JavaScript:;">
              <div class="NumberBoard-itemInner">
                <div class="NumberBoard-itemName">关注了</div>
                <strong class="NumberBoard-itemValue" title>{{pAto}}</strong>
              </div>
            </a>
            <a class="NumberBoard-item" href="JavaScript:;">
              <div class="NumberBoard-itemInner">
                <div class="NumberBoard-itemName">关注者</div>
                <strong class="NumberBoard-itemValue" title>{{pAout}}</strong>
              </div>
            </a>
          </div>
        </div>
        <!-- <div class="lightList">
          <a href="JavaScript:;" class="Profile-lightItem">
            <span class="Profile-lightItemName">关注的话题</span>
            <span class="Profile-lightItemValue">1</span>
          </a>
          <a href="JavaScript:;" class="Profile-lightItem">
            <span class="Profile-lightItemName">关注的专栏</span>
            <span class="Profile-lightItemValue">1</span>
          </a>
          <a href="JavaScript:;" class="Profile-lightItem">
            <span class="Profile-lightItemName">关注的问题</span>
            <span class="Profile-lightItemValue">1</span>
          </a>
          <a href="JavaScript:;" class="Profile-lightItem">
            <span class="Profile-lightItemName">关注的收藏夹</span>
            <span class="Profile-lightItemValue">1</span>
          </a>
        </div>-->
        <div class="Profile-footerOperations">个人主页被浏览 {{browe}} 次</div>
        <footer class="Footer">
          <a class="Footer-item" href="JavaScript:;">刘看山</a>
          <span class="Footer-dot"></span>
          <a class="Footer-item" href="JavaScript:;">知乎指南</a>
          <span class="Footer-dot"></span>
          <a class="Footer-item" href="JavaScript:;">知乎协议</a>
          <span class="Footer-dot"></span>
          <a class="Footer-item" href="JavaScript:;">知乎隐私保护指引</a>
          <br />
          <a class="Footer-item" href="JavaScript:;">应用</a>
          <span class="Footer-dot"></span>
          <a class="Footer-item" href="JavaScript:;">工作</a>
          <span class="Footer-dot"></span>
          <button type="button" class="orgCreatebutton">申请开通知乎机构号</button>
          <br />
          <a class="Footer-item" href="JavaScript:;">侵权举报</a>
          <span class="Footer-dot"></span>
          <a class="Footer-item" href="JavaScript:;">网上有害信息举报专区</a>
          <br />
          <a class="Footer-item" href="JavaScript:;">京 ICP 证 110745 号</a>
          <br />
          <a class="Footer-item" href="JavaScript:;">
            <img src="../assets/img/wxy/guohui.png" />京公网安备 11010802010035 号
          </a>
          <br />
          <span class="Footer-item">违法和不良信息举报：010-82716601</span>
          <br />
          <a class="Footer-item" href="JavaScript:;">儿童色情信息举报专区</a>
          <br />
          <a class="Footer-item" href="JavaScript:;">证照中心</a>
          <br />
          <a class="Footer-item" href="JavaScript:;">联系我们</a>
          <span>© 2019 知乎</span>
        </footer>
      </div>
      <!--  -->
    </div>
  </main>
</template>

<script>
import userHeader from "../components/headers/UserHeader";
export default {
  data() {
    return {
      activeName: "second",
      activeName1: "fourth_one",
      nickname: "",
      sign: "",
      // querinfo:{
      //   id:''
      // },
      id: 1,
      // 问题列表
      questionData: [],
      // 关注的人的列表
      attenData: [],
      // 关注了的人数
      pAto: "",
      // 关注者的列表
      beAttenData: [],
      // 关注者人数
      pAout: "",
      // 关注的问题
      problemData: [],
      // 浏览主页数
      browe: "",
      // 显示与隐藏
      show: false,
      isShow: false,
      // 问题列表
      answerList: [],
      limit: 10,
      nowUser: {}
    };
  },
  methods: {
    // 渲染用户及用户信息
    async getUser() {
      let user_id = this.$route.params.id;
      console.log(user_id);
      const { data: res } = await this.$http.get(`/user/${user_id}`);
      this.nickname = res.data.nickname;
      this.sign = res.data.sign;
      this.browe = res.data.browe;
      
      document.title = this.nickname;
    },
    // 渲染问题
    async getQusetion() {
      let user = this.nowUser;
      let user_id = this.$route.params.id;

      const { data: res } = await this.$http.get(`/question_user/${user_id}`);
      console.log(111, res);
      this.questionData = res.data;
    },
    // 跳转到编辑个人资料
    editUser() {
      let user = this.nowUser;

      this.$router.push(`/user/edit`);
    },
    // 渲染我关注的人
    async getAtten() {
      let user_id = this.$route.params.id;

      const { data: res } = await this.$http.get(`/user_attention/atten`, {
        params: { atten_id: user_id }
      });
      this.pAto = res.data.length;
      this.attenData = res.data;
    },
    // 渲染关注我的人
    async getBeAtten() {
      let user = this.nowUser;
      let user_id = this.$route.params.id;

      const { data: res } = await this.$http.get(`/user_attention/be_atten`, {
        params: { be_atten_id: user_id }
      });
      // console.log(res.data);
      this.pAout = res.data.length;
      this.beAttenData = res.data;
    },
    // 渲染关注的问题
    async getProblem() {
      let user = this.nowUser;
      let user_id = this.$route.params.id;

      const { data: res } = await this.$http.get(`/user_attention/problem`, {
        params: { user_id: user_id }
      });
      // console.log(res.data);
      // this.pAout = res.data.length;
      this.problemData = res.data;
    },
    // 显示评论
    showComm: async function(answer) {
      let { data: res } = await this.$http.get("/answer_comment", {
        params: {
          answer_id: answer.id,
          limit: 10
        }
      });

      answer.commList = res.data;
      answer.commShow = !answer.commShow;
    },
    // 获取首页回答
    async getanswerList() {
      let user = this.nowUser;
      let user_id = this.$route.params.id;

      const { data: res } = await this.$http.get(`/answer_user/${user_id}`);

      console.log(res);
      if (res.code !== 200) return this.$message.error("获取数据失败");
      res.data.filter(item => {
        // 文本缩放
        item.content = item.content.replace(/<.*?>/gi, "");
        item.smallContent = item.content.substring(0, 60);
        // console.log(item.content.substring(0, 60));
        item.isShow = false;
        item.commShow = false;
        // 赞同
        item.isAgree = false;
        item.isDisagree = false;
      });

      this.answerList = res.data;
      // console.log(this.answerList);
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
      this.showComm(answer);
    },
    // 添加赞同
    async addAgree(item) {
      item.isAgree = true;

      let id = item.id;
      let agree = item.agree + 1;
      var params = new URLSearchParams();
      params.append("agree", agree);
      let { data: res } = await this.$http.put(`/answer/${id}`, params);
      console.log(res);
    },
    // 跳转到问题页
    goAnswer(ques_id, answer_id) {
      window.location.href = `/question/${ques_id}/answer/${answer_id}`;
    }
  },
  created() {
    this.getUser();
    this.getQusetion();
    this.getAtten();
    this.getBeAtten();
    this.getProblem();
    this.getanswerList();
  },
  components: {
    userHeader
  }
};
</script>

<style lang="less" scoped>
.profile_header {
  position: relative;
  width: 1000px;
  padding: 0 16px;
  margin: 62px auto 0px;

  .cover_editor {
    position: relative;

    label {
      cursor: pointer;

      button {
        position: absolute;
        top: 24px;
        right: 24px;
        z-index: 2;
        color: hsla(0, 0%, 100%, 0.42);
        border: 1px solid hsla(0, 0%, 100%, 0.24);
        background-color: transparent;
        outline: none; // 去除默认点击蓝框
        display: inline-block;
        padding: 0 16px;
        font-size: 14px;
        line-height: 32px;
        text-align: center;
        cursor: pointer;
        border-radius: 3px;
      }

      .Icon {
        vertical-align: text-bottom;
        fill: currentColor;
      }

      .Icon--left {
        margin-right: 6px;
      }
    }

    .cover_img {
      position: relative;
      height: 240px;
      overflow: hidden;
      background: #f6f6f6;
      border-top-right-radius: 1px;
      border-top-left-radius: 1px;

      img {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
    }
  }

  .wrapper {
    position: relative;
    width: 100%;
    background: #fff;
    box-sizing: border-box;

    .wmain {
      position: relative;
      margin: 0 20px 24px;

      .avatar {
        position: absolute;
        top: -13px;
        left: 0;
        z-index: 1;
        text-align: left;
        cursor: pointer;

        .user_avatar img {
          display: inline-block;
          width: 160px;
          height: 160px;
          overflow: hidden;
          vertical-align: top;
          background-color: #fff;
          border: 4px solid #fff;
          border-radius: 8px;
        }
      }
    }
  }

  .content {
    padding-top: 16px;
    padding-left: 32px;
    border-left: 164px solid transparent;

    .contenHead {
      position: relative;
      padding-right: 106px;
      margin-bottom: 16px;

      .contenHead_title {
        margin: 0;
        font: inherit;

        .contenHead_name {
          font-size: 26px;
          font-weight: 600;
          line-height: 30px;
        }

        .contenHead_headline {
          margin-left: 12px;
          font-size: 18px;
          white-space: nowrap;
        }
      }
    }

    .contenBody {
      position: relative;
      width: 524px;
      overflow: hidden;
      height: 43px;

      .contenBody_detail {
        width: 100%;
        font-size: 14px;
        line-height: 1.8;
        color: #1a1a1a;

        .contenBody_detailItem {
          display: flex;
          margin-bottom: 18px;

          .contenBody_detailLabel {
            width: 60px;
            margin-right: 37px;
            font-weight: 600;
          }

          .contenBody_detailValue {
            flex: 1 1;
            overflow: hidden;
          }
        }
      }
    }

    .contenFooter {
      position: relative;
      padding-top: 8px;

      .contenFooter_btn1 {
        line-height: 1;
        height: auto;
        padding: 0;
        line-height: inherit;
        background-color: transparent;
        border: none;
        border-radius: 0;
        display: inline-block;
        font-size: 14px;
        color: #8590a6;
        text-align: center;
        cursor: pointer;
        background: none;
        outline: none; // 去除默认点击蓝框

        .Icon {
          margin: 0 16px 0 4px;
          vertical-align: text-bottom;
          fill: currentColor;
        }
      }

      .contenFooter_btn2 {
        position: absolute;
        right: 0;
        bottom: 0;

        button {
          color: #0084ff;
          border-color: #0084ff;
          display: inline-block;
          padding: 0 16px;
          font-size: 14px;
          line-height: 32px;
          text-align: center;
          cursor: pointer;
          background: none;
          border: 1px solid;
          border-radius: 3px;
          outline: none; // 去除默认点击蓝框
        }

        button:hover {
          background-color: #f0f8ff;
        }
      }
    }
  }
}

.card {
  margin-bottom: 10px;
  background: #fff;
  overflow: hidden;
  border-radius: 2px;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
  box-sizing: border-box;
}

.profile_main {
  display: flex;
  width: 1000px;
  min-height: 100vh;
  padding: 0 16px;
  margin: 10px auto;
  justify-content: space-between;
  align-items: flex-start;

  .profile_card {
    width: 694px;
  }

  .profile_asideColumn {
    width: 296px;
    color: #646464;

    .FollowshipCard {
      font-size: 14px;

      .NumberBoard {
        display: flex;

        .NumberBoard-item {
          border: 0;
          line-height: unset;
          font-size: unset;
          flex: 1 1;

          .NumberBoard-itemInner {
            text-align: center;
            line-height: 1.6;
            padding: 12px 0;

            .NumberBoard-itemName {
              font-size: 14px;
              color: #8590a6;
            }

            .NumberBoard-itemValue {
              display: inline-block;
              font-size: 18px;
              color: #1a1a1a;
              font-weight: 600;
            }
          }
        }
      }
    }

    .lightList {
      font-size: 14px;

      .Profile-lightItem {
        padding-left: 5px;
        display: flex;
        align-items: center;
        height: 46px;
        font-size: 14px;
        border-top: 1px solid #ebebeb;

        .Profile-lightItemName {
          flex-grow: 1;
        }
        .Profile-lightItemValue {
          font-size: 14px;
          color: #8590a6;
        }
      }

      .Profile-lightItem:hover {
        color: #175199;
      }

      .Profile-lightItem:last-child {
        border-bottom: 1px solid #ebebeb;
      }
    }

    .Profile-footerOperations {
      width: 100%;
      color: #8590a6;
      padding: 10px 0 10px 5px;
      box-sizing: border-box;
      margin-top: 6px;
      font-size: 14px;
      line-height: 1.8;
      text-align: left;
      border-bottom: 1px solid #ebebeb;
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
  }
}

.List-item {
  position: relative;
  // padding: 16px 20px;
  padding: 15px 0px;
  border-top: 1px solid #f6f6f6;
  box-sizing: border-box;

  .contentItem-main {
    display: flex;
  }

  .contentItem-title {
    font-size: 18px;
    font-weight: 600;
    line-height: 1.6;
    color: #1a1a1a;
    margin-top: -4px;
    margin-bottom: -4px;
  }

  .contentItem-meta {
    margin-top: 6px;
  }

  .answerItem-authorInfo {
    margin-top: 10px;
  }

  .authorInfo {
    display: flex;
    align-items: center;
  }

  .contentItem-meta {
    font-size: 15px;
    color: #646464;
  }

  .popover {
    position: relative;
    display: inline-block;
  }

  .authorInfo-avatar {
    vertical-align: top;
  }

  .avatar {
    background: #fff;
    border-radius: 2px;
  }

  .authorInfo-content {
    -webkit-box-flex: 1;
    flex: 1 1;
    margin-left: 14px;
    overflow: hidden;
  }

  .authorInfo-head {
    display: flex;
    align-items: center;
    font-size: 15px;
    line-height: 1.1;
    flex-shrink: 0;
  }

  .authorInfo-name {
    font-weight: 600;
    color: #444;
  }

  .popover {
    position: relative;
    display: inline-block;
  }

  .authorInfo-detail {
    overflow: hidden;
  }

  .authorInfo-badge {
    display: flex;
    align-items: center;
    margin-top: 2px;
    font-size: 14px;
  }

  .authorInfo-badgeText {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    color: #646464;
  }

  .contentItem-status {
    margin-top: 5px;
    color: #8590a6;
    font-size: 14px;
  }

  .contentItem-status {
    margin-top: 5px;
    color: #8590a6;
    font-size: 14px;
  }

  .contentItem-status {
    margin-top: 5px;
    color: #8590a6;
    font-size: 14px;
  }

  .contentItem-statusItem:not(:first-child):before {
    margin: 0 5px;
    content: "\B7";
  }

  .contentItem-status {
    margin-top: 5px;
    color: #8590a6;
    font-size: 14px;
  }

  .contentItem-image {
    float: left;
    margin-right: 16px;
  }

  .userItem-avatar .avatar,
  .userItem-avatar .popover {
    display: block;
  }

  .avatar-large {
    border-radius: 4px;
  }
  .avatar {
    background: #fff;
    border-radius: 2px;
  }
  .contentItem-head {
    flex: 1 1;
    overflow: hidden;
    margin-right: 6px;

    .ContentItem-title + .ContentItem-meta {
      margin-top: 6px;
    }
  }

  .contentItem-title {
    font-size: 18px;
    font-weight: 600;
    line-height: 1.6;
    color: #1a1a1a;
    margin-top: -4px;
    margin-bottom: -4px;
  }

  .userItem-name,
  .userItem-name .userLink-badge,
  .userItem-title {
    display: flex;
  }
  .userItem-title {
    align-items: center;
  }
  .contentItem-extra {
    align-self: center;
  }

  .button-primary.button-grey {
    color: #fff;
    background-color: #8590a6;
  }

  .followButton {
    min-width: 96px;
  }
  .button-grey {
    color: #8590a6;
    border-color: #8590a6;
  }

  .button {
    display: inline-block;
    padding: 0 16px;
    font-size: 14px;
    line-height: 32px;
    text-align: center;
    cursor: pointer;
    background: none;
    border: 1px solid;
    border-radius: 3px;
  }
}

.List-item:first-child {
  border: none;
  padding-top: 5px;
}

// LY 模板
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
  height: 2000px;
}
.el-dropdown-link {
  color: #8492a6;
}
.m-one-bottom {
  text-align: left;
  /* padding: 20px 0px 14px 20px; */
  background-color: #ffffff;
  padding: 15px 0px;
  border-top: 1px solid #f6f6f6;
}
.m-one-bottom:last-child {
  padding-bottom: 0px;
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
  margin-top: 10px;
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
// 评论
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

  a {
    text-decoration: none; /* 清除链接默认的下划线 */
    color: #8492a6;
  }
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
</style>