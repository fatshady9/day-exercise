<template>
  <!-- 付费咨询 -->
  <div class="PaidConsulting">
      <userHeader></userHeader>
    <div class="pay-tab">
      <el-tabs v-model="activeName" @tab-click="handleClick">
        <el-tab-pane label="答主" name="first">
          <!-- 选择栏 -->
          <div class="selectionbar">
            <div class="selectionbar-a">
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000000.png" alt />
                </div>
                <div>职场</div>
              </div>
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000001.png" alt />
                </div>
                <div>教育</div>
              </div>
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000002.png" alt />
                </div>
                <div>心理学</div>
              </div>
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000003.png" alt />
                </div>
                <div>法律</div>
              </div>
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000004.png" alt />
                </div>
                <div>科技</div>
              </div>
            </div>
            <div class="selectionbar-a">
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000005.png" alt />
                </div>
                <div>健康</div>
              </div>
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000006.png" alt />
                </div>
                <div>情感</div>
              </div>
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000007.png" alt />
                </div>
                <div>金融</div>
              </div>
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000008.png" alt />
                </div>
                <div>母婴</div>
              </div>
              <div class="selectionbar-a-options">
                <div>
                  <img src="../assets/img/pay/answerer/ia_500000009.png" alt />
                </div>
                <div>更多</div>
              </div>
            </div>
          </div>
          <!-- 最新答主 -->
          <div class="newest">
            <div class="newest-title">
              <div class="newest-title-zx">
                <div>最新答主</div>
                <div class="newest-title-zy">根据你关注关系推荐的知友</div>
                <div class="newest-title-qb">
                  全部
                  <i class="el-icon-arrow-right"></i>
                </div>
              </div>
            </div>
            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000010.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>一颗牙</div>
                      <div>47690 人关注</div>
                    </div>
                    <div class="newest-content-ask">￥51 咨询</div>
                  </div>
                  <div class="newest-content-js">略懂吃货</div>
                </div>
              </div>
            </div>
            <div class="newest-content">
              <img src="../assets/img/pay/answerer/ia_500000011.jpg" alt />
              <div>
                <div class="newest-content-yhm">
                  <div class="newest-content-detail">
                    <div>史蒂芬</div>
                    <div>170426 人关注</div>
                  </div>
                  <div class="newest-content-ask">￥199 咨询</div>
                </div>
                <div class="newest-content-js">不接受iPhone用户知乎App提问(苹果30%手续费)，请用网页版打开提问。安卓用户不受影响。</div>
              </div>
            </div>
          </div>
          <!-- 热门答主 -->
          <div class="hot">
            <div class="hot-border">
              <div class="hot-title">热门答主</div>
            </div>
            <!-- 热门内容 -->
            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000012.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>魏嘉毅</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        23 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥19 咨询</div>
                  </div>
                  <div class="newest-content-js">一个戏剧自媒体人，知晓排戏演戏和戏剧行业的大小事</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000013.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>呆叔</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        262 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥8 咨询</div>
                  </div>
                  <div class="newest-content-js">HR，香港中文大学硕士，IT行当混迹十余年，面人无数，对面试和职业规划有些心得</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000014.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>袁大道</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        5737 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥7 咨询</div>
                  </div>
                  <div class="newest-content-js">情感纠葛、人生选择、道理分析以及事件解读有一定的处理经验。值乎推送有一定的延迟，望您理解，谢谢！</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000015.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>马虫医生</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        2877 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥46 咨询</div>
                  </div>
                  <div
                    class="newest-content-js"
                  >三甲医院泌尿科医生，医学博士，《一本书读懂前列腺》作者，诊疗早泄、阳痿、前列腺炎、尿频等泌尿男科，强调规范诊疗和情绪疏导</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000016.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>田吉顺</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        1348 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥76 咨询</div>
                  </div>
                  <div class="newest-content-js">我是 田吉顺，略懂 妇产科。问吧！</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000017.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>孙亚飞</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        1703 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥103 咨询</div>
                  </div>
                  <div class="newest-content-js">我是孙亚飞，清华大学化学系博士，科普工作志愿者，目前运营一个高科技产业化项目。</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000018.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>夏安</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        2654 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥25 咨询</div>
                  </div>
                  <div
                    class="newest-content-js"
                  >感染科医生，博士。懂点艾滋的知识。提问请避开min gan词，请用拼音或者缩写。否则会被系统删除。多谢。</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000019.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>咖喱鸡</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        4166 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥39 咨询</div>
                  </div>
                  <div
                    class="newest-content-js"
                  >我是 咖喱鸡，南京某知名三甲医院整形外科医生，懂整形，美容，也懂医学，医生。美容咨询请附高清素颜正侧面照片。</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000020.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>Steve Shi</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        4545 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥89 咨询</div>
                  </div>
                  <div class="newest-content-js">心理咨询师，心理学领域答者，畅销书《假性亲密关系》作者，知乎盐club演讲嘉宾。</div>
                </div>
              </div>
            </div>

            <div class="newest-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000021.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>小红拖拉机</div>
                      <div>
                        <i class="el-icon-circle-check"></i>
                        219 次咨询
                        <div class="newest-content-detail-pf">
                          <i class="el-icon-star-on"></i>
                          5.0
                        </div>
                      </div>
                    </div>
                    <div class="newest-content-ask">￥71 咨询</div>
                  </div>
                  <div class="newest-content-js">心理学硕士，职场、人力资源、心理学话题优秀答主</div>
                </div>
              </div>
            </div>
          </div>
        </el-tab-pane>
        <el-tab-pane label="问题" name="second">
          <div class="issue">
            <!-- 问题内容 -->
            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000022.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>Linda咨询 回答了问题</div>
                      <div>曾经创业、公募基金分析师、VC投资经理、商业银行对公客户经理，目前TOP10银行投行部，擅长金融职业规划、商业计划书</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div class="newest-content-js">我想咨询一下关于创始人股权转让的问题，以及后续融资需要注意的一些问题。</div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000023.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>墨鱼 回答了问题</div>
                      <div>笔记本电脑选购，咨询。（如果误操作或有问题请截图值乎私信我，若值乎无法提问请备注付费咨询加V：719704812）</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div class="newest-content-js">
                    你好，我打算买一个戴尔的笔记本，7000左右。
                    平时需要轻量的视频及图片处理，打算玩全面战争及模拟人生。希望笔记本在不玩游戏的情况下（只视频，打字，做ppt之类的）续航时间七八个小时，轻便，屏幕好一点，接口方面没什么要求，望推荐。如果游戏与之后的条件无法兼顾的话，优先考虑后面的。
                    一定要是戴尔的，不用提其他牌子了
                  </div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000024.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>夏蒙 回答了问题</div>
                      <div>分享购机心得，帮助电脑小白。请说明使用需求及预算。</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div class="newest-content-js">
                    您好，我是一名法学生。除了用电脑写写论文以外，还偶尔有画画、ps、视频编辑的需求。目前有三款中意的电脑：
                    1.惠普envy15翻转屏带独显
                    2.yoga730
                    3.thinkpad x390 yoga
                    请问您推荐我买哪款呢？
                  </div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000025.png" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>MMODSAJ DSAD 回答了问题</div>
                      <div>无锡沐米宠物有限公司 沐米猫舍 投资人 五年宠物英短猫舍创办人 英短喂养和繁育专家 美国爱猫协会CFA成员猫舍</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div class="newest-content-js">如何将我CFA证书转让给他人，所有人的名字及猫舍，还有猫名字，如图，一共需要多少美金</div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000026.png" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>Linda咨询 回答了问题</div>
                      <div>曾经创业、公募基金分析师、VC投资经理、商业银行对公客户经理，目前TOP10银行投行部，擅长金融职业规划、商业计划书</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div class="newest-content-js">我想咨询一下关于创始人股权转让的问题，以及后续融资需要注意的一些问题。</div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000031.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>慕名情感 回答了问题</div>
                      <div>《完美图解恋爱心理学》畅销书作家，恋爱技巧，挽回女友，狙击女神，代追前女友专业心理咨询师</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div class="newest-content-js">女生对我爱搭不理，该怎么办？喜欢1个女生，聊天的时候总是对我爱搭不理，请问到底是什么原因呢</div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000027.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>Linda咨询 回答了问题</div>
                      <div>曾经创业、公募基金分析师、VC投资经理、商业银行对公客户经理，目前TOP10银行投行部，擅长金融职业规划、商业计划书</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div class="newest-content-js">我想咨询一下关于创始人股权转让的问题，以及后续融资需要注意的一些问题。</div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000028.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>SDOKS 回答了问题</div>
                      <div>五年招聘HR，聚焦职场困惑、简历指导、面试辅导、职业定位。为获得精准建议，请咨询时介绍下背景情况</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div
                    class="newest-content-js"
                  >Sophia：好～ 本人，一只0职业规划的职场“野生动物”。本科纯艺术系，毕业后任性北漂，随缘入职一家小而美广告公司，出于开心干了三年，期间读了营销传播专业在职研究生，后遇公司经营管理不善拖欠工资+负债200余万。机缘巧合下，与另三位同事合伙接手了公司，七成努力三成运气，扭亏为盈业绩喜人，又三年进入平台期，虽做到年盈利500万+但倍感迷茫，合伙人间方向分歧日益严重，遂任性离开。且更任性地gap了两年。现有意回归职场，求问本人这般条件是否为诸多大厂HR所不能接受？有没有能将这手奇葩牌型打好的沟通策略？如果的确不适合往这个方向发展，没有好的建议也没关系，更希望听到你对于我这款求职者的真实感受😄</div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000029.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>Sophios1021 回答了问题</div>
                      <div>五年招聘HR，聚焦职场困惑、简历指导、面试辅导、职业定位。为获得精准建议，请咨询时介绍下背景情况</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div
                    class="newest-content-js"
                  >Sophia：好～ 本人，一只0职业规划的职场“野生动物”。本科纯艺术系，毕业后任性北漂，随缘入职一家小而美广告公司，出于开心干了三年，期间读了营销传播专业在职研究生，后遇公司经营管理不善拖欠工资+负债200余万。机缘巧合下，与另三位同事合伙接手了公司，七成努力三成运气，扭亏为盈业绩喜人，又三年进入平台期，虽做到年盈利500万+但倍感迷茫，合伙人间方向分歧日益严重，遂任性离开。且更任性地gap了两年。现有意回归职场，求问本人这般条件是否为诸多大厂HR所不能接受？有没有能将这手奇葩牌型打好的沟通策略？如果的确不适合往这个方向发展，没有好的建议也没关系，更希望听到你对于我这款求职者的真实感受😄</div>
                </div>
              </div>
            </div>

            <div class="issue-title">
              <div class="newest-content">
                <img src="../assets/img/pay/answerer/ia_500000030.jpg" alt />
                <div>
                  <div class="newest-content-yhm">
                    <div class="newest-content-detail">
                      <div>ail10 回答了问题</div>
                      <div>没事别老问，默默花9块钱买一个月会员，多去刷我的免费攻防live，蟹蟹老铁了～</div>
                    </div>
                    <div class="newest-content-ask">￥1 旁听</div>
                  </div>
                  <div
                    class="newest-content-js"
                  >老哥你好，我是哈工大威海一名大一计算机专业学生，我以后想从事网络空间安全专业相关的工作，就是想问问就业前景如何啊？今天我朋友给我发过来一个报告说中国人工智能人才缺口500w......把我吓的有点迷茫。。。本身是比较喜欢网络空间安全这个专业的。。。我该咋办？该专业就业前景如何？</div>
                </div>
              </div>
            </div>
          </div>
        </el-tab-pane>
      </el-tabs>
    </div>
  </div>
</template>

<script>
import userHeader from "../components/headers/UserHeader";
export default {
  data() {
    return {
      activeName: "first"
    };
  },
  methods: {
    handleClick(tab, event) {
      console.log(tab, event);
    }
  },
  components: {
    userHeader
  }
};
</script>

<style>
div {
  display: block;
}

.PaidConsulting {
  width: 640px;
  height: 100%;
  margin: 0 auto;
}

.pay-tab {
  width: 100%;
  height: 1000px;
  margin-top: 62px;
}

.pay-tab /deep/ .el-tabs__nav {
  width: 640px;
  height: 23px;
}

.pay-tab .el-tabs__item {
  width: 320px;
  height: 23px;
  padding: 0px;
  text-align: center;
  line-height: 0px;
  font-weight: 400;
  font-size: 16px;
}

.pay-tab /deep/ .el-tabs__header {
  margin: 0px;
}

.pay-tab /deep/ .el-tabs__nav {
  background: #ffffff;
}
/* <!-- 选择栏 --> */
.selectionbar {
  height: 176px;
  background-color: #ffffff;
  padding: 24px 80px 0;
  border-bottom: 10px solid #f6f6f6;
}

.selectionbar-a {
  margin-bottom: 24px;
}

.selectionbar-a-options {
  display: inline-block;
  width: 95px;
  height: 52px;
  text-align: center;
}

.selectionbar-a-options img {
  width: 30px;
  height: 25px;
  margin-bottom: 5px;
}

/* <!-- 最新答主 --> */
.newest {
  width: 100%;
  height: 265px;
  background-color: #ffffff;
  border-bottom: 10px solid #f6f6f6;
}

.newest-title {
  border-bottom: 1px solid #f6f6f6;
}

.newest-title-zx {
  position: relative;
  padding: 18px 14px;
}

.newest-title-zx > div:first-child {
  font-size: 16px;
  font-weight: 600;
  color: #1a1a1a;
}

.newest-title-zy {
  font-size: 14px;
  color: #999999;
}

.newest-title-qb {
  display: inline-block;
  position: absolute;
  top: 27px;
  right: 10px;
  font-size: 14px;
  color: #999999;
}

.newest-content {
  padding: 18px 14px;
  display: flex;
}

.newest-content img {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  margin-right: 15px;
}

.newest-content-yhm {
  display: flex;
  width: 550px;
  position: relative;
}

.newest-content-detail > div:first-child {
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 5px;
}

.newest-content-detail > div:last-child {
  width: 455px;
  font-size: 13px;
  color: #999999;
  word-break: keep-all; /* 不换行 */
  white-space: nowrap; /* 不换行 */
  overflow: hidden; /* 内容超出宽度时隐藏超出部分的内容 */
  text-overflow: ellipsis; /* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
}

.newest-content-ask {
  position: absolute;
  top: 0px;
  right: 0px;
  width: 70px;
  height: 14px;
  font-size: 12px;
  font-weight: 600;
  padding: 9px;
  line-height: 1.2;
  text-align: center;
  background: #ebf5ff;
  border-radius: 17px;
  color: #0084ff;
}

.newest-content-js {
  width: 550px;
  word-break: keep-all; /* 不换行 */
  white-space: nowrap; /* 不换行 */
  overflow: hidden; /* 内容超出宽度时隐藏超出部分的内容 */
  text-overflow: ellipsis; /* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
  font-size: 14px;
  color: #444492;
}

/* <!-- 热门答主 --> */
.hot-border {
  border-bottom: 1px solid #f6f6f6;
}

.hot {
  width: 100%;
  height: 100%;
  background: #ffffff;
}

.hot-title {
  font-size: 17px;
  font-weight: 600;
  padding: 16px 14px;
}

.newest-content-detail-pf {
  float: right;
  font-weight: 600;
  font-size: 14px;
  color: #ff9607;
}

.newest-content-detail-pf i {
  color: #ff9607;
}

/* 问题 */
.issue {
  width: 100%;
  height: 100%;
  background: #ffffff;
}

.issue-title {
  border-bottom: 5px solid #f6f6f6;
}
</style>