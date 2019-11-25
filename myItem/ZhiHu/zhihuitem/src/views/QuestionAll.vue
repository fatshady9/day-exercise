
<template>
  <div class="questionAll">
    <!-- 标题容器 头部 -->
    <questionHeader :headerTittle="question.question"></questionHeader>
    <div class="header">
      <div class="common clearfix">
        <div class="title">
          <h1>{{question.question}}</h1>
          <p>{{question.discribe}}</p>
          <el-button type="primary" @click="addConcern" v-if="!isAtten">关注问题</el-button>
          <el-button type="info" v-else>已关注</el-button>
          <el-button plain class="reply" @click="Writeanswer">
            <i class="el-icon-edit" style="color:#409EFF"></i>写回答
          </el-button>
          <el-button plain icon="el-icon-user-solid" class="invite">邀请回答</el-button>
          <!-- 评论 -->
          <a>
            <i class="el-icon-chat-round"></i>&nbsp;评论
          </a>
          <!-- 分享 -->
          <a>
            <i class="el-icon-s-promotion"></i>
            分享
          </a>
          <!-- 举报 -->
          <a>
            <i class="el-icon-s-flag"></i>
            举报
          </a>
          <a class="el-icon-more"></a>
        </div>
        <!-- 标题右侧 -->
        <div class="QuestionHeader-side clearfix">
          <!-- 关注浏览 -->
          <div class="questionAttentionBrowse">
            <div class="Attention">
              <div>关注者</div>
              <strong>{{attentionNum}}</strong>
            </div>
            <div class="Browse">
              <div>被浏览</div>
              <strong>{{question.browe}}</strong>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 头部结束 -->
    <!-- 主题内容左边 -->
    <div class="mainBody">
      <div class="common clearfix">
        <!-- 内容左边 -->
        <div class="mainBody-left">
          <!-- 回答 -->
          <!-- 回答输入框 -->

          <div class="Writeanswer" v-if="isShow">
            <div class="WriteUser clearfix">
              <span class="userImg">
                <img src="../assets/touxiang.jpg" alt />
              </span>
              <div class="userNameSign">
                <div class="WriteName">
                  <span>{{newUser.nickname}}</span>
                </div>
                <br />
                <div class="WriteSign">
                  <div>{{newUser.sign}}</div>
                </div>
              </div>

              <!-- 富文本编辑器 -->
            </div>
            <div class="editor">
              <!-- 富文本编辑器 -->
              <quill-editor v-model="addGoodsList.content" ref="myQuillEditor"></quill-editor>
            </div>

            <el-button type="primary" size="small" @click="subAnswer">提交回答</el-button>
          </div>
          <!-- 原回答标签 top -->
          <!-- 回答总数 -->
          <div class="answer-num">
            <div class="answer-box">
              <span>{{questionList.length}}个回答</span>
              <div class="answer-sort">
                默认排序
                <i class="el-icon-sort"></i>
              </div>
            </div>
          </div>
          <!-- 发表问题div 隐藏  发表后出现-->
          <div class="userAnswer-content" v-if="isNew">
            <!-- 内边距 -->
            <div class="userAnswer-box">
              <a href="javascript:;" class="portrait">
                <img src="../assets/touxiang.jpg" alt />
              </a>

              <!-- 用户昵称丶用户签名 -->

              <div class="user_info">
                <span class="nickname">{{userList.nickname}}</span>
                <br />
                <span class="sign">{{userList.sign}}</span>
              </div>
              <!-- ***** -->

              <!-- 回答内容 -->
              <!-- 回答内容 -->
              <div class="answer" v-html="newQuestionList.content"></div>
              <!-- 发表时间 -->
              <!-- 发表时间 -->
              <div class="ContentItem-time">
                <el-tooltip
                  class="item"
                  effect="dark"
                  content="发布于 2019-08-14 17:31"
                  placement="top-start"
                >
                  <a href="javascript:;">
                    发布与
                    <time>16:27</time>
                  </a>
                </el-tooltip>
              </div>
              <!-- 修改 -->
              <div class="userCondent-edit">
                <a href class="cri el-icon-edit">&nbsp;修改</a>
              </div>
              <!-- 功能区 -->
              <!-- 点赞行 -->
              <div class="one-bottom-zan">
                <span>
                  <button class="but-one" type="button">
                    <span id="zan-top" class="el-icon-caret-top"></span>
                    赞同
                  </button>

                  <a href="javascript:;" class="cri el-icon-s-comment" id="comment">&nbsp;860 条评论</a>
                  <a href class="cri el-icon-s-promotion">&nbsp;分享</a>
                  <a href class="cri el-icon-star-on">&nbsp;收藏</a>
                  <a href class="cri el-icon-s-tools">&nbsp;设置</a>
                </span>
              </div>
              <!-- 功能区end -->
            </div>
          </div>

          <!-- 内容 -->
          <div class="QuestionAnswer-content" v-for="(item,index) in questionList" :key="index">
            <div class="view-comment clearfix">
              <!-- 头像 -->

              <a :href="'/user/'+item.user_id" id="userid" style="color: #1a1a1a" class="portrait">
                <img src="../assets/touxiang.jpg" alt />
              </a>
              <!-- 用户昵称丶用户签名 -->

              <div class="user_info">
                <a
                  :href="'/user/'+item.user_id"
                  id="userid"
                  style="color: #1a1a1a"
                  class="nickname"
                >{{item.nickname}}&nbsp;</a>
                <!-- <br />
                <span class="sign">{{userList.sign}}</span>-->
              </div>
              <!-- 赞同 -->
              <div class="applaud">
                <a>{{item.agree}}</a>人赞同了该回答
              </div>

              <!-- 回答内容 -->
              <div class="answer" v-html="item.content"></div>

              <!-- 发表时间 -->
              <div class="ContentItem-time">
                <template>
                  <el-tooltip
                    class="item"
                    effect="dark"
                    :content="item.time|dateTime2"
                    placement="top-start"
                  >
                    <a href="javascript:;">
                      发布于
                      <time>{{item.time|dateTime}}</time>
                    </a>
                  </el-tooltip>
                </template>
              </div>
              <!-- 打赏 -->
              <!-- <div class="give">
                <div>予人玫瑰,手有余香</div>
                <el-button size="mini" type="danger" class="giveBtn">赞赏</el-button>
                <p>1人已赞赏</p>
              </div>-->
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
          <!-- 回答全部 end -->
        </div>

        <!-- 内容右边 -->
        <div class="mainBody-right">
          <!-- 广告 -->
          <div class="advertising">
            <img src="../assets/img/questionAll/python.jpeg" alt />
          </div>
          <!-- 关于作者 -->
          <!-- <div class="AboutBlogger">
            <div class="writerTitle">关于作者</div>
            <div class="Card-section">
              <div class="writerAbout clearfix">
                <img src="../assets/touxiang.jpg" alt />
                <div class="nameSign">
                  <a>{{userList.nickname}}</a>
                  <div>{{userList.sign}}</div>
                </div>
              </div>
            </div>
            <div class="Card-section">
              <div class="writerData">
          回答
         <div class="Attention">
                  <div>回答</div>
                  <strong>267</strong>
                </div>
          文章-->
          <!-- <div class="Attention">
                  <div>文章</div>
                  <strong>1</strong>
                </div>

          关注者-->
          <!-- <div class="Attention">
                  <div>关注者</div>
                  <strong>{{this.userAcctionList.total}}</strong>
                </div>
              </div>
              <div class="writerAdd">
                <el-button type="primary" size="small" icon="el-icon-plus" class="guanzhu">关注他</el-button>
          私信-->
          <!-- <el-button size="small" class="sixin" icon="el-icon-s-comment">发私信</el-button>
              </div>
            </div>
          </div>-->
          <!-- 被收藏 -->
          <div class="collect">
            <div class="collTitle">
              被收藏
              <a>62</a>次
            </div>
            <div class="Card-section">
              <!-- 创建 -->
              <div class="setup">
                <div class="nickname clearfix">
                  <a>天下归元</a>
                  <div>1人关注</div>
                </div>
                <div class="usercj">
                  <a>吉赫兹</a>&nbsp;创建
                </div>
              </div>
              <!-- 2 -->
              <div class="setup">
                <div class="nickname clearfix">
                  <a>天下归元</a>
                  <div>1人关注</div>
                </div>
                <div class="usercj">
                  <a>吉赫兹</a>&nbsp;创建
                </div>
              </div>
              <!-- 3 -->
              <div class="setup">
                <div class="nickname clearfix">
                  <a>天下归元</a>
                  <div>1人关注</div>
                </div>
                <div class="usercj">
                  <a>吉赫兹</a>&nbsp;创建
                </div>
              </div>
              <!-- 4 -->
              <div class="setup">
                <div class="nickname clearfix">
                  <a>天下归元</a>
                  <div>1人关注</div>
                </div>
                <div class="usercj">
                  <a>吉赫兹</a>&nbsp;创建
                </div>
              </div>
              <!-- 5 -->
              <div class="setup">
                <div class="nickname clearfix">
                  <a>天下归元</a>
                  <div>1人关注</div>
                </div>
                <div class="usercj">
                  <a>吉赫兹</a>&nbsp;创建
                </div>
              </div>
            </div>
          </div>
          <!-- 收藏end -->

          <!-- 相关问题 -->
          <div class="collect">
            <div class="collTitle">相关问题</div>
            <div class="Card-section">
              <!-- 创建 -->
              <div class="setup">
                <div class="usercj">
                  <a>如何客观评价赵丽颖的长相和气质？</a>&nbsp;24个回答
                </div>
              </div>
              <!-- 2 -->
              <div class="setup">
                <div class="usercj">
                  <a>相亲经历，现在很苦恼。请大家给点建议？</a>&nbsp;15个回答
                </div>
              </div>
              <!-- 3 -->
              <div class="setup">
                <div class="usercj">
                  <a>相亲男说，你很好，但是我就是喜欢不起来你？</a>&nbsp;30个回答
                </div>
              </div>
              <!-- 4 -->
              <div class="setup">
                <div class="usercj">
                  <a>你们为了逃避相亲都曾做过哪些不可思议（难以理解）的事？</a>&nbsp;24个回答
                </div>
              </div>
            </div>
          </div>
          <!-- 相关问题end -->

          <!-- 相关推荐 -->

          <div class="collect">
            <div class="collTitle">相关推荐</div>
            <div class="Card-section">
              <!-- 创建 -->
              <div class="book clearfix">
                <img src="../assets/img/questionAll/book1.jpg" alt />
                <el-tooltip class="item" effect="dark" content="女生呵护指南" placement="top-start">
                  <div class="bookName">女生呵护指南</div>
                </el-tooltip>

                <br />
                <div>六层楼</div>
                <div class="num">
                  319人读过
                  <div class="icon el-icon-notebook-2">阅读</div>
                </div>
              </div>
              <!--  -->
              <!-- 创建 -->
              <div class="book clearfix">
                <img src="../assets/img/questionAll/book2.jpg" alt />
                <el-tooltip class="item" effect="dark" content="相亲故事集" placement="top-start">
                  <div class="bookName">相亲故事集</div>
                </el-tooltip>

                <br />
                <div>六层楼</div>
                <div class="num">
                  319人读过
                  <div class="icon el-icon-notebook-2">阅读</div>
                </div>
              </div>
              <!--  -->
              <!-- 创建 -->
              <div class="book clearfix">
                <img src="../assets/img/questionAll/book3.jpg" alt />
                <el-tooltip class="item" effect="dark" content="婚姻治疗师）" placement="top-start">
                  <div class="bookName">婚姻治疗师（全2册）</div>
                </el-tooltip>

                <br />
                <div>六层楼</div>
                <div class="num">
                  319人读过
                  <div class="icon el-icon-notebook-2">阅读</div>
                </div>
              </div>
            </div>
          </div>
          <!-- 推荐end -->
          <!-- 相关 -->
          <div class="related">
            <div class="footer">
              <footer class="Footer">
                <a class="Footer-item" href="#">刘看山</a>
                <span class="Footer-dot"></span>
                <a class="Footer-item" href="#">知乎指南</a>
                <span class="Footer-dot"></span>
                <a class="Footer-item" href="#">知乎协议</a>
                <span class="Footer-dot"></span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a
                  class="Footer-item"
                  href="#"
                >知乎隐私保护指引</a>
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
          <!-- 相关end -->
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import questionHeader from "../components/headers/QuestionHeader";
export default {
  data() {
    return {
      // 编辑器显示与隐藏

      // 富文本
      addGoodsList: {
        // 回答的问题id
        ques_id: 1,
        // 用户id
        user_id: 1,
        // 回答的内容
        content: "",
        // 赞同数量
        agree: 0,
        // 不赞成回答
        disagree: 0
      },
      isShow: false,
      isNew: false,
      count: 0,
      // 问题数组
      questionList: [{}],
      // 获取用户信息
      userList: [],
      // 获取关注人数
      queryInfo: {
        id: 1
      },
      // 关注列表
      userAcctionList: [],

      questionTotal: 0,
      infoList: {
        page: 1,
        per_page: 1000,
        ques_id: this.$route.params.qid,
        sortway: "asc"
      },
      //
      // 添加后第一条回答
      newQuestionList: {},
      // 问题id 主页传来

      qid: this.$route.params.qid,
      // 查询的问题结果
      question: [],
      // seeetion拿到的用户数据
      newUser: [],
      // 关注问题人数
      attention_info: {
        ques_id: 1
      },
      // 获取关注人数
      attentionNum: [],
      // 关注按钮
      isAtten: true,
      user_id: 1
    };
  },
  methods: {
    // 获取问题
    async getquestion() {
      let user = window.sessionStorage.getItem("user");
      user = JSON.parse(user);

      const { data: res } = await this.$http.get(`/question/${this.qid}`, {
        params: {
          user_id: user.id
        }
      });
      console.log(res);
      this.isAtten = res.isAttention;
      if (res.code != 200) {
        // return this.$message.error("获取问题列表失败");
        return this.$router.push("/error");
      } else {
        this.question = res.data[0];
        // console.log(this.question);
        let user = window.sessionStorage.getItem("user");
        user = JSON.parse(user);
        // console.log();

        this.newUser = user;
        console.log(this.newUser);
        //
        this.getQues_attention();
        // 问题回答
        this.getquestionList();

        document.title = res.data[0].question + " - 知乎";
      }
    },
    // 获取问题关注人数
    async getQues_attention() {
      const { data: res } = await this.$http.get("/ques_attention/num", {
        params: this.attention_info
      });

      this.attentionNum = res.total;
    },

    // 获取问题答案
    async getquestionList(sortway) {
      const { data: res } = await this.$http.get("/answer", {
        params: this.infoList
      });

      if (res.code != 200) {
        // return this.$message.error("获取问题列表失败");
        return this.$router.push("/error");
      } else {
        res.data.filter(item => {
          item.isShow = false;
          item.commShow = false;
          // 赞同
          item.isAgree = false;
          item.isDisagree = false;
        });
        this.questionList = res.data;
        this.questionTotal = res.total;

        // this.getuserList();
      }
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
      answer.inputContent = "";
    },
    // 添加赞同
    async addAgree(item) {
      item.isAgree = true;

      let id = item.id;
      let agree = item.agree + 1;
      var params = new URLSearchParams();
      params.append("agree", agree);
      let { data: res } = await this.$http.put(`/answer/${id}`, params);
    },

    // 获取用户
    // async getuserList() {
    //   var userId = [];

    //   const { data: res } = await this.$http.get(
    //     `/user/${this.questionList[0].user_id}`
    //   );
    //   if (res.code != 200) {
    //     return this.$message.error("获取用户失败！");
    //   } else {
    //     this.userList = res.data;
    //   }
    // },
    // 获取用户关注人数
    async getuserattennList() {
      const { data: res } = await this.$http.get(`/user_attention`, {
        params: this.queryInfo
      });
      this.userAcctionList = res.data[0];
    },
    // 添加回答

    async subAnswer() {
      let user = window.sessionStorage.getItem("user");
      user = JSON.parse(user);

      // 富文本传来的数据
      var params = new URLSearchParams();
      params.append("user_id", user.id);
      params.append("ques_id", this.qid);
      params.append("content", this.addGoodsList.content);
      params.append("agree", this.addGoodsList.agree);
      params.append("disagree", this.addGoodsList.disagree);
      params.append("question", this.question.question);
      params.append("nickname", this.newUser.nickname);

      const { data: res } = await this.$http.post("/answer", params);
      if (res.code != 200) {
        return this.$message.error("添加回答失败");
      } else {
        this.$message.success("添加回答成功！");
        this.isNew = true;
        this.isShow = false;
        this.addGoodsList.content = "";

        window.location.href = `/question/${this.qid}/answer/${res.answer_id}`;
      }
    },
    // 获取新添加问题回答
    async getnewQuestion() {
      const { data: res } = await this.$http.get(`/answer/1`);

      this.newQuestionList = res.data;
    },

    Writeanswer() {
      this.isShow = !this.isShow;
    },
    // 关注
    async addConcern() {
      let user = window.sessionStorage.getItem("user");
      user = JSON.parse(user);

      var params = new URLSearchParams();
      params.append("ques_id", this.question.id);
      params.append("user_id", user.id);

      const { data: res } = await this.$http.post("/ques_attention", params);

      this.attentionNum++;
      this.isAtten = true;
      // this.getquestionList();
    }

    // 查看全部
  },
  created() {
    this.getquestion();
  },
  components: {
    questionHeader
  }
};
</script>

<style lang="less" scoped>
.header {
  background-color: #fff;
  padding-top: 60px;
  padding-bottom: 15px;
  -webkit-tap-highlight-color: rgba(26, 26, 26, 0);
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
}
.common {
  width: 1000px;
  margin: 0 auto;
}
/* 清楚浮动 */
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}

.user_info {
  margin-left: 47px;
}

.title {
  float: left;
  width: 667px;
  height: 100%;
  background-color: #fff;

  // background-color: #ccc;
  h1 {
    font-size: 22px;
  }
  p {
    color: #1a1a1a;
    font-size: 15px;
    cursor: pointer;
  }
  p:hover {
    color: #646464;
  }
  a {
    font-size: 14px;
    color: #8590a6;
    cursor: pointer;
    margin-left: 10px;

    a:hover {
      color: #76839b;
    }
    i {
      font-style: normal;
    }
  }
}
// 个人发表问题
.userAnswer-content {
  width: 100%;
  // height: 300px;
  background-color: #fff;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);

  // 边距盒子
  .userAnswer-box {
    width: 95%;
    margin: 0 auto;
    height: 90%;
    // background-color: #ccc;
    padding-top: 10px;

    .portrait {
      margin-top: 10px;
      margin-bottom: 5px;
      img {
        float: left;
        width: 35px;
        height: 35px;
      }
    }

    // 用户信息
    .user_info {
      .nickname {
        font-weight: 600;
        font-size: 14px;
        cursor: pointer;
        margin-bottom: 10px;
      }
      // 个性签名
      .sign {
        font-size: 14px;
        color: #8590a6;
      }
    }
    // 时间
    .ContentItem-time {
      margin-top: 10px;
      margin-bottom: 5px;
      a {
        font-size: 14px;
        color: #8590a6;
      }
    }
    // 修改
    .userCondent-edit {
      margin-bottom: 10px;
      color: #175199;
      font-size: 14px;
      a {
        color: #175199;
      }
    }
    // 回答内容
    .answer {
      p {
        font-size: 14px;
        margin: 1.4em 0;
      }
    }

    // 功能区css
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
      padding-bottom: 14px;
    }

    .one-bottom-zan > span .but-one {
      line-height: 26px;
      padding: 0 12px;
      padding-left: 20px;
      color: #80c2ff;
      background: #f2f9ff;
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
    // 功能区cssend
  }
}

//end 个人发标问题

.QuestionHeader-side {
  float: right;
  width: 312.95px;
  // background-color: #0084ff;
  // 关注浏览
  .questionAttentionBrowse {
    // background-color: blanchedalmond;
    width: 293px;
    height: 50px;
    float: right;
    margin-top: 15px;
    line-height: 1.6;
    // 回答左边
    .Attention {
      border-right: 1px solid#ebebeb;
      float: left;
      padding-right: 20px;
      text-align: center;
      div {
        font-size: 14px;
        color: #8590a6;
      }
      .All-card {
        text-align: center;
        .el-card__body {
          text-align: center;
        }
      }
    }
    // 回答右边
    .Browse {
      float: left;
      margin-left: 20px;
      text-align: center;
      div {
        font-size: 14px;
        color: #8590a6;
      }
    }
  }
}

.reply {
  border: 1px solid #0084ff;
  color: #0084ff;
}

// 内容左边
.mainBody {
  .QuestionAnswer-content {
    width: 100%;
    /* margin-bottom: 10px; */
    background-color: #fff;
    margin: 0px auto;
    border-top: 1px solid transparent;
    border-bottom: 1px solid transparent;
    box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
  }

  .mainBody-left {
    width: 693.99px;
    // height: 100px;
    // background-color: #0084ff;
    margin-top: 10px;
    margin-bottom: 10px;
    // background: #fff;
    overflow: hidden;
    border-radius: 2px;

    // box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
    float: left;
    // 回答输入框！！！！！

    // 回答总数
    .answer-num {
      width: 100%;
      height: 50px;
      background-color: #fff;

      .answer-box {
        border-bottom: 1px solid #ccc;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: space-between;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        height: 50px;
        margin: 0 20px;
        border-bottom: 1px solid #f6f6f6;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        span {
          font-weight: 600;
          color: black;
        }
        .answer-sort {
          cursor: pointer;
          padding: 0;
          border: 1px solid transparent;
          font-size: 14px;
          color: #a7afbe;
          text-align: left;
        }
      }
    }

    .Writeanswer {
      position: relative;
      .el-button {
        position: absolute;
        margin-top: 85px;
        right: 20px;
      }
      //  transition: opacity 3.5s;
      width: 100%;
      // height: 279px;
      height: 390px;
      background-color: #ffff;

      // 富文本
      .editor {
        width: 100%;

        // background-color: red;

        .quill-editor {
          height: 180px;
        }
      }
      // 用户信息
      .WriteUser {
        // display: flex;
        padding: 16px 20px;
        //
        height: 43.75px;
        width: 100%;
        .userImg {
          float: left;
          margin-right: 6px;
        }
        img {
          width: 38px;
          height: 38px;
        }
        .WriteName {
          width: 149px;
          height: 0px;

          font-size: 15px;
          font-weight: 600;
        }
        .WriteSign {
          font-size: 14px;
          color: #646464;
        }
      }
    }
    .All-card {
      width: 100%;
      height: 50px;
      margin-top: 10px;
      margin-bottom: 10px;
      background: #fff;
      overflow: hidden;
      border-radius: 2px;
      line-height: 50px;
      box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
      font-size: 15px;
      color: #8590a6;
      box-sizing: border-box;
      text-align: center;
      a {
        color: #8590a6;
      }
    }

    a:hover {
      color: #175199;
    }
    .portrait img {
      width: 35px;
      height: 35px;
    }

    .view-comment {
      margin: 19px;
      margin-top: 9px;
      margin-bottom: 15px;
      line-height: 23px;
      color: #111;
      a {
        text-decoration: none;
        outline-color: none;
        color: #000000;
        margin-top: 5px;
      }
      .portrait {
        float: left;
      }
      .user_info {
        // float: left;
        height: 50px;
        .nickname {
          font-weight: 600;
          font-size: 14px;
          cursor: pointer;
        }
        .sign {
          font-size: 14px;
          color: #8590a6;
        }
      }
      .applaud {
        cursor: pointer;
        color: #76839b;
        font-size: 14px;
        margin-bottom: 7px;
        a {
          color: #76839b;
        }
      }
      .answer {
        margin-bottom: 7px;
        p {
          font-size: 14px;
          margin: 1.4em 0;
        }
      }
      .ContentItem-time {
        font-size: 14px;
        a {
          color: #8590a6;
        }

        time {
          color: #8590a6;
        }
      }
      .give {
        div {
          margin-top: 60px;
          color: #808080;
          font-size: 14px;
          text-align: center;
          margin-bottom: 20px;
        }
        .giveBtn {
          margin-left: 46%;
        }
        p {
          text-align: center;
          font-size: 14px;
          color: #808080;
          margin-bottom: 20px;
        }
      }
      // 功能区  start
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
        color: #0084ff;
        background-color: #e5f2ff;
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
      // 功能区end
      // 回答
      .viewAll {
        color: #9590ae;
      }
    }
  }
  .mainBody-right {
    width: 295.99px;
    float: right;
    // box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
    // height: 100px;
    // background-color: #0084ff;
    .advertising {
      margin-top: 10px;
      width: 295.99px;
      height: 246.65px;
      img {
        width: 295.99px;
        height: 246.65px;
      }
    }
    // 关于作者
    .AboutBlogger {
      width: 100%;
      margin-top: 20px;
      background-color: #fff;
      height: 273.04px;
      box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
      // 头部
      .Card-section {
        padding: 16px 20px;
        position: relative;
        border-bottom: 1px solid#f6f6f6;
      }
      .writerTitle {
        height: 45px;
        margin-left: 10px;
        font-weight: 600;
        line-height: 45px;
        border-bottom: 1px solid #f6f6f6;
        font-size: 14px;
      }
      .writerAbout {
        img {
          float: left;
          width: 60px;
          height: 60px;
        }
        .nameSign {
          margin-left: 75px;
          a {
            cursor: pointer;
            font-size: 20px;
            font-weight: 600;
            font-synthesis: style;
            line-height: 30px;
            color: #1a1a1a;
          }
          div {
            word-break: break-word;
            line-height: 1.6;
          }
        }
      }
      .writerData {
        .Attention {
          width: 85.33px;
          float: left;
          margin-bottom: 25px;

          div {
            cursor: pointer;
            color: #8590a6;
            font-size: 14px;
            margin-bottom: 5px;
          }
        }
      }
      .writerAdd {
        .el-button {
          width: 120px;
        }
      }
    }

    // 被收藏
    .collect {
      .Card-section {
        padding: 16px 20px;
        position: relative;
        border-bottom: 1px solid #ccc;
      }
      font-size: 14px;
      margin-top: 15px;
      width: 295.99px;
      // height: 100px;
      box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
      background-color: #fff;
      .collTitle {
        margin-left: 15px;
        border-bottom: 1px solid#fbfbfb;
        height: 50px;
        line-height: 50px;
        font-weight: 600;
        a {
          color: #175199;
        }
      }
      .book {
        cursor: pointer;
        margin-bottom: 5px;
        width: 100%;
        height: 100%;
        border-bottom: 1px solid #d3d3d3;

        img {
          float: left;
          width: 80px;
          height: 64px;
          margin-right: 10px;
          margin-bottom: 10px;
        }
        div {
          color: #646464;
        }
        .bookName:hover {
          color: #175199;
        }
        .bookName {
          cursor: pointer;
          color: #000000;
          font-weight: 600;
          float: left;
        }
        .num {
          position: relative;
          color: #8590a6;
          .icon {
            cursor: pointer;
            color: #fff;
            border-radius: 10%;
            width: 45px;
            height: 20px;
            position: absolute;
            right: 0;
            top: 0;
            line-height: 18px;

            background-color: #0084ff;
          }
        }
      }

      .setup {
        height: 66px;
        border-bottom: 1px solid #fcfcfc;
        .nickname {
          cursor: pointer;
          a {
            color: #4271ac;
            float: left;
          }
          a:hover {
            text-decoration: underline;
            color: #76839b;
          }
          div {
            color: #8c96ab;
            float: right;
          }
        }
        .usercj {
          cursor: pointer;
          color: #8992a6;
          a {
            color: #255b9f;
          }
          a:hover {
            text-decoration: underline;
          }
        }
      }
    }
    // 收藏end

    // 相关
    .Footer {
      padding: 10px 0 10px 5px;
      font-size: 12px;
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
  }
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