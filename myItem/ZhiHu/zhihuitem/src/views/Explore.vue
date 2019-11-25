<template>
  <div class="home">
    <!-- 导航栏 -->
    <div class="nov">
      <exportHeader></exportHeader>
    </div>
    <!-- 导航栏 -->
    <!-- 公共部分 -->
    <div class="common">
      <!-- 专题栏 -->
      <div class="special">
        <h2>
          <i class="el-icon-s-order" id="newest"></i>最新专题
        </h2>
        <ul class="special-ul">
          <li>
            <!-- 左边 -->
            <div class="special-left">
              <!-- 图片 -->
              <div class="spimg">
                <img src="../assets/img/bmz/x1.png" alt />
              </div>
              <!-- 公共部分 -->
              <div class="cordcommon">
                <!-- 中间文字 -->
                <div class="aptext">
                  <p class="football">足球萌新的主队选择指南</p>
                  <span class="update">6天前更新</span>
                  <span class="update">1,578,464 浏览</span>
                  <button class="button">关注专题</button>
                </div>
                <!-- 最下面的标签 -->
                <div class="splabel">
                  <div class="first">
                    <a href="#" class="flourishing">英超盛世</a>
                    <a href="#">「红魔」曼联</a>
                  </div>
                  <div class="first">
                    <a href="#" class="flourishing">西甲英雄</a>
                    <a href="#">皇家马德里</a>
                  </div>
                  <div class="first">
                    <a href="#" class="flourishing">逐鹿亚平宁</a>
                    <a href="#">尤文图斯</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- 右边 -->
            <div class="special-right">
              <!-- 图片 -->
              <div class="spimg">
                <img src="../assets/img/bmz/x2.png" alt />
              </div>
              <!-- 公共部分 -->
              <div class="cordcommon">
                <!-- 中间文字 -->
                <div class="aptext">
                  <p class="football">雪莉逝去的痛与黑暗</p>
                  <span class="update">19 小时前更新</span>
                  <span class="update">162,089,192 浏览</span>
                  <button class="button">关注专题</button>
                </div>
                <!-- 最下面的标签 -->
                <div class="splabel">
                  <div class="first">
                    <a href="#" class="flourishing">雪莉之死</a>
                    <a href="#">原 f(x) 成员崔雪莉确认身亡，事情的真相如何？</a>
                  </div>
                  <div class="first">
                    <a href="#" class="flourishing">雪莉其人</a>
                    <a href="#">韩国艺人崔雪莉是谁？她有什么代表作？</a>
                  </div>
                  <div class="first">
                    <a href="#" class="flourishing" id="tong">背后的「痛」</a>
                    <a href="#">录制《恶评之夜》综艺是否造成了对雪莉心理上...</a>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li>
            <!-- 左边的 -->
            <div class="special-left">
              <!-- 图片 -->
              <div class="spimg">
                <img src="../assets/img/bmz/3.jpg" alt />
              </div>
              <!-- 公共部分 -->
              <div class="cordcommon">
                <!-- 中间文字 -->
                <div class="aptext">
                  <p class="football" id="molt">
                    莫雷推特引发地震，NBA 就此退出
                    <br />中国市场？
                  </p>
                  <span class="update">6天前更新</span>
                  <span class="update">1,578,464 浏览</span>
                  <button class="button" id="gzzt">关注专题</button>
                </div>

                <!-- 最下面的标签 -->
                <div class="splabel">
                  <div class="first">
                    <a href="#" class="flourishing" id="mlt">风起青萍之末</a>
                    <a href="#">莫雷发布涉港推特</a>
                  </div>
                  <div class="first">
                    <a href="#" class="flourishing" id="mlt">事态逐渐恶化</a>
                    <a href="#">莫雷与 NBA 官方发布澄清声明</a>
                  </div>
                  <div class="first">
                    <a href="#" class="flourishing" id="mlt">后续影响如何</a>
                    <a href="#">如果 NBA 退出中国市场</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="special-right">
              <!-- 图片 -->
              <div class="spimg">
                <img src="../assets/img/bmz/x3.png" alt />
              </div>
              <!-- 公共部分 -->
              <div class="cordcommon">
                <!-- 中间文字 -->
                <div class="aptext">
                  <p class="football">无锡高架侧翻背后的「责任链条」</p>
                  <span class="update">4 天前更新</span>
                  <span class="update">40,860,657 浏览</span>
                  <button class="button">关注专题</button>
                </div>
                <!-- 最下面的标签 -->

                <div class="splabel">
                  <div class="first">
                    <a href="#" class="flourishing">事故聚焦</a>
                    <a href="#">如何看待 10 月 10 日无锡 312 国道高架垮塌事故...</a>
                  </div>
                  <div class="first">
                    <a href="#" class="flourishing">超载之问</a>
                    <a href="#">大货车不超载就亏本到底真的假的？</a>
                  </div>
                  <div class="first">
                    <a href="#" class="flourishing">谁该担责？</a>
                    <a href="#">货车超载为什么这么难治理？大货车超载背后有哪...</a>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <a href="#" class="examine">查看更多专题 ></a>
        </ul>
      </div>
      <!-- 专题栏 -->
      <!-- 圆桌讨论 -->
      <div class="special">
        <h2>
          <i class="el-icon-chat-line-square" id="newest"></i>圆桌讨论
        </h2>
        <ul class="special-ul">
          <li>
            <!-- 左边 -->
            <div class="special-left" id="jias">
              <!-- 上面的div -->
              <div class="sptop" id="sptopone">
                <div class="cordcommon">
                  <div class="toptext">
                    <a class="drive">与你有关的驾驶安全</a>
                    <a
                      href="#"
                      class="traffic"
                    >交通事故不是看热闹，知乎汽车发起本次圆桌，希望帮助大家正确认识驾驶，从各类交通事故中总结经验和教训，安全出行，平安到家。</a>
                  </div>
                  <div class="pic">
                    <img src="../assets/img/bmz/xt1.jpg" alt id="xt" />
                    <img src="../assets/img/bmz/xt2.jpg" alt id="xt" />
                    <img src="../assets/img/bmz/xt3.jpg" alt id="xt" />
                    <span>2 万嘉宾参与&nbsp; |</span>
                    <span>&nbsp; 633 人关注</span>
                    <button class="button" id="table">关注圆桌</button>
                  </div>
                </div>
              </div>

              <!-- 下面的div -->
              <div class="spbottom">
                <ol>
                  <li id="mirli">
                    <div class="miracle">
                      <a href="javascript:;">你经历过的奇葩或难忘的交通事故是怎样的？</a>
                      <span>1,214 个回答</span>
                    </div>
                  </li>
                  <li id="mirli">
                    <div class="miracle">
                      <a href="javascript:;">你坐车的后面会系安全带吗？</a>
                      <span>304 个回答</span>
                    </div>
                  </li>
                  <li id="mirli">
                    <div class="miracle">
                      <a href="javascript:;">哪些汽车安全配置是购车过程中如果有预算就尽量去满足的？</a>
                      <span>57 个回答</span>
                    </div>
                  </li>
                </ol>
              </div>
            </div>

            <!-- 右边 -->
            <div class="special-right" id="jias">
              <div class="special-left" id="jias">
                <!-- 上面的div -->
                <div class="sptop" id="stopsecond">
                  <div class="cordcommon">
                    <div class="toptext">
                      <a class="drive">数据分析入门指南</a>
                      <a
                        href="#"
                        class="traffic"
                      >在这个靠数据说话的时代，数据分析对于企业也变得越来越不可或缺，数据分析一时火热。那么数据分析行业目前的发展究竟如何？新人又该如何入...</a>
                    </div>
                    <div class="pic">
                      <img src="../assets/img/bmz/xt4.jpg" alt id="xt" />
                      <img src="../assets/img/bmz/xt5.jpg" alt id="xt" />
                      <img src="../assets/img/bmz/xt6.jpg" alt id="xt" />
                      <span>5 位嘉宾参与&nbsp; |</span>
                      <span>&nbsp;516 人关注</span>
                      <button class="button" id="table">关注圆桌</button>
                    </div>
                  </div>
                </div>

                <!-- 下面的div -->
                <div class="spbottom">
                  <ol>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">做数据分析不得不看的书有哪些？</a>
                        <span>97 个回答</span>
                      </div>
                    </li>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">什么岗位适合转行做数据分析？</a>
                        <span>1 个回答</span>
                      </div>
                    </li>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">女生入行数据分析，该如何进行职业规划？</a>
                        <span>1 个回答</span>
                      </div>
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </li>
          <li style="height: 530px;">
            <div class="special-left" id="jias">
              <div class="special-left" id="jias">
                <!-- 上面的div -->
                <div class="sptop" id="stopthree">
                  <div class="cordcommon">
                    <div class="toptext">
                      <a class="drive">国货正当潮</a>
                      <a
                        href="#"
                        class="traffic"
                      >随着科研与生产技术更新，很多国货出口海外，在国内也备受关注。在日常生活中，越来越多的国货被大家关注，哪些是真正好用的国货之光，哪些...</a>
                    </div>
                    <div class="pic">
                      <img src="../assets/img/bmz/xt7.jpg" alt id="xt" />
                      <img src="../assets/img/bmz/xt8.jpg" alt id="xt" />
                      <img src="../assets/img/bmz/xt9.jpg" alt id="xt" />
                      <span>30 位嘉宾参与&nbsp; |</span>
                      <span>&nbsp; 5,304 人关注</span>
                      <button class="button" id="table">关注圆桌</button>
                    </div>
                  </div>
                </div>

                <!-- 下面的div -->
                <div class="spbottom">
                  <ol>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">有没有什么便宜好用的国产护肤品？</a>
                        <span>113 个回答</span>
                      </div>
                    </li>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">你用国产手机哪个功能拍过特别满意的照片？</a>
                        <span>6 个回答</span>
                      </div>
                    </li>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">如何看待高通 CEO ：原以为中国 5G 会晚 5 年，甚至 10 年？</a>
                        <span>155 个回答</span>
                      </div>
                    </li>
                  </ol>
                </div>
              </div>
            </div>
            <div class="special-right" id="jias">
              <div class="special-left" id="jias">
                <!-- 上面的div -->
                <div class="sptop" id="sptofore">
                  <div class="cordcommon">
                    <div class="toptext">
                      <a class="drive">直击 S9 全球总决赛</a>
                      <a
                        href="#"
                        class="traffic"
                      >在经历 2018 的「梦幻一年」后，我们的身份已从「挑战者」变成了「守城人」。季中赛爆冷出局，洲际赛首次止步亚军，在这一整年最关键的一战...</a>
                    </div>
                    <div class="pic">
                      <img src="../assets/img/bmz/xt10.jpg" alt id="xt" />
                      <img src="../assets/img/bmz/xt11.jpg" alt id="xt" />
                      <img src="../assets/img/bmz/xt12.jpg" alt id="xt" />
                      <span>4 位嘉宾参与&nbsp; |</span>
                      <span>&nbsp; 4,365 人关注</span>
                      <button class="button" id="table">关注圆桌</button>
                    </div>
                  </div>
                </div>

                <!-- 下面的div -->
                <div class="spbottom">
                  <ol>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">如何评价 S9 小组赛 B 组收官排名战 FPX 1:0 复仇 Splyce 以小组第一出线？</a>
                        <span>41 个回答</span>
                      </div>
                    </li>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">S9 小组赛第二轮 FPX 爆冷不敌 Splyce，如何评价这场比赛？</a>
                        <span>351 个回答</span>
                      </div>
                    </li>
                    <li id="mirli">
                      <div class="miracle">
                        <a href="javascript:;">S9 小组赛第二轮 Splyce 1:0 翻盘击败 GAM，提前锁定小组出线，如何评价这场比赛？</a>
                        <span>14 个回答</span>
                      </div>
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </li>
          <a href="#" class="examine">查看圆桌讨论</a>
        </ul>
      </div>
      <!-- 圆桌讨论 -->
      <div class="special">
        <h2>
          <i class="el-icon-star-on" id="newest"></i>热门收藏夹
        </h2>
        <ul class="special-ul">
          <li>
            <div class="special-left">
              <div class="cordcommon">
                <div class="abroad">
                  <a href="javascript:;">留学/移民</a>
                  <div class="joey">
                    <img src="../assets/img/bmz/l1.jpg" alt />
                    <span id="Joey">Joey</span>
                    <span>创建&nbsp; | &nbsp;13,158 人关注</span>
                    <button class="gzsc">关注收藏夹</button>
                  </div>
                  <div class="sq">
                    <div class="ym">
                      <a>去美国留学怎样可以省钱呢？</a>
                      <span id="seconds">杨喵：来美国第二次了，去过4个城市，洛杉矶，旧金山，密苏里</span>
                      <span id="answer">回答</span>
                      <span>
                        3 赞同
                        0 评论
                      </span>
                    </div>
                    <div class="ym">
                      <a>去美国留学怎样可以省钱呢？</a>
                      <span id="seconds">杨喵：来美国第二次了，去过4个城市，洛杉矶，旧金山，密苏里</span>
                      <span id="answer">回答</span>
                      <span>
                        3 赞同
                        0 评论
                      </span>
                    </div>
                    <div id="content">
                      <a href="javascript:;">已收藏 555 条内容 &nbsp; ></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="special-right">
              <div class="cordcommon">
                <div class="abroad">
                  <a href="javascript:;">历史研究</a>
                  <div class="joey">
                    <img src="../assets/img/bmz/lx2.jpg" alt />
                    <span id="Joey">桃先生哟</span>
                    <span>创建&nbsp; | &nbsp;176 人关注</span>
                    <button class="gzsc">关注收藏夹</button>
                  </div>
                  <div class="sq">
                    <div class="ym">
                      <a>什么身价开得起保时捷？</a>
                      <span id="seconds">小纯洁：刚提了一周的帕拉梅拉，之前的一直开雅阁开了9年，雅...</span>
                      <span id="answer">回答</span>
                      <span>
                        244 赞同
                        65 评论
                      </span>
                    </div>
                    <div class="ym">
                      <a>什么身价开得起保时捷？</a>
                      <span id="seconds">杨耀宗：评论区一个个都大言不惭的说着保时捷如何如何便宜，...</span>
                      <span id="answer">回答</span>
                      <span>
                        181 赞同
                        150 评论
                      </span>
                    </div>
                    <div id="content">
                      <a href="javascript:;">已收藏 10,977 条内容 &nbsp; ></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li>
            <div class="special-left">
              <div class="cordcommon">
                <div class="abroad">
                  <a href="javascript:;">！！！！！！。！</a>
                  <div class="joey">
                    <img src="../assets/img/bmz/lx3.jpg" alt />
                    <span id="Joey">许池</span>
                    <span>创建&nbsp; | &nbsp;115 人关注</span>
                    <button class="gzsc">关注收藏夹</button>
                  </div>
                  <div class="sq">
                    <div class="ym">
                      <a>你见过哪些大神级的建筑表现图？</a>
                      <span id="seconds">合创研造社：拖了好久，承接Edison的回答。原文链接来自我们...</span>
                      <span id="answer">回答</span>
                      <span>
                        202 赞同
                        6 评论
                      </span>
                    </div>
                    <div class="ym">
                      <a>VRay是不是要凉凉了，是不是用Vray的人越来...</a>
                      <span id="seconds">皇朝：凉不凉不知道。说自己，只要vray还能跟上max，sketch</span>
                      <span id="answer">回答</span>
                      <span>
                        2 赞同
                        0 评论
                      </span>
                    </div>
                    <div id="content">
                      <a href="javascript:;">已收藏 823 条内容 &nbsp; ></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="special-right">
              <div class="cordcommon">
                <div class="abroad">
                  <a href="javascript:;">人世之事，非人世所可尽。</a>
                  <div class="joey">
                    <img src="../assets/img/bmz/lx4.jpg" alt />
                    <span id="Joey">青天河</span>
                    <span>创建&nbsp; | &nbsp;209 人关注</span>
                    <button class="gzsc">关注收藏夹</button>
                  </div>
                  <div class="sq">
                    <div class="ym">
                      <a>如何看待某位复旦学生在某软件上所言：我们只...</a>
                      <span id="seconds">安立桐：大多数复旦硕士，不管他这种本科生认不认，人家也几...</span>
                      <span id="answer">回答</span>
                      <span>
                        764 赞同
                        112 评论
                      </span>
                    </div>
                    <div class="ym">
                      <a>为什么有的人年纪轻轻却思想深度远高于常人？</a>
                      <span id="seconds">留学生日报：曾经有一群平均年龄29岁的年轻人，想创造一个新...</span>
                      <span id="answer">回答</span>
                      <span>
                        2,402 赞同
                        142 评论
                      </span>
                    </div>
                    <div id="content">
                      <a href="javascript:;">已收藏 6,875 条内容 &nbsp; ></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <a href="#" class="examine">查看更多收藏夹 ></a>
        </ul>
      </div>
      <!-- 热门收藏夹 -->
      <!-- 专栏 -->
      <!-- 专题栏 -->
      <div class="special" id="ztl">
        <h2>
          <i class="el-icon-s-order" id="newest"></i>专栏
        </h2>
        <div class="star">
          <div class="startcommon">
            <div class="stars">
              <img src="../assets/img/bmz/l2.jpg" alt />
              <a href="javascript:;" id="xlbl">上外星星西语老板娘</a>
              <span id="greay">1,008 关注115 文章</span>
              <span id="cxss">此去经年，与西语长相厮守</span>
              <button id="zl">进入专栏</button>
            </div>
          </div>
        </div>
        <!--  -->
        <div class="star">
          <div class="startcommon">
            <div class="stars">
              <img src="../assets/img/bmz/zl2.jpg" alt />
              <a href="javascript:;" id="xlbl">闲话投资</a>
              <span id="greay">10,237 关注304 文章</span>
              <span id="cxss">各式各样的投资idea，只用大白话说</span>
              <button id="zl">进入专栏</button>
            </div>
          </div>
        </div>
        <!--  -->
        <div class="star">
          <div class="startcommon">
            <div class="stars">
              <img src="../assets/img/bmz/zl3.jpg" alt />
              <a href="javascript:;" id="xlbl">7号汽车</a>
              <span id="greay">1,105 关注169 文章</span>
              <span id="cxss">汽车新技术/随想/新闻</span>
              <button id="zl">进入专栏</button>
            </div>
          </div>
        </div>
        <!--  -->
        <div class="star">
          <div class="startcommon">
            <div class="stars">
              <img src="../assets/img/bmz/zl4.jpg" alt />
              <a href="javascript:;" id="xlbl">电竞GO</a>
              <span id="greay">17,882 关注1,426 文章</span>
              <span id="cxss">DOTA2赛事比分、数据资讯：esgo.com</span>
              <button id="zl">进入专栏</button>
            </div>
          </div>
        </div>
      </div>
      <!-- 专栏 -->
      <!-- 底部 -->
      <div class="foot">
        <a href="#" class="examine">查看更多专栏 ></a>
        <a href="javascript:;" id="lks">
          刘看山
          知乎指南
          知乎协议
          应用
          工作
          联系我们
          © 2019 知乎
        </a>
      </div>
      <!-- 底部 -->
    </div>
    <!-- 公共部分 -->
  </div>
</template>

<script>
import exportHeader from "../components/headers/ExploreHeader";
export default {
  components: {
    exportHeader
  },
  created() {
    document.title = "发现 - 知乎"
  }
};
</script>

<style lang="less" scoped>
html,
body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}
.home {
  margin: 0;
  padding: 0;
}
.nov {
  width: 100%;
  height: 52px;
  background-color: #111;
}
// 公共部分
.common {
  width: 1000px;
  margin: 0 auto;
}
// 最新专题
h2 {
  font-size: 25px;
}
#newest {
  color: #0084ff;
  font-size: 30px;
  position: relative;
  top: 3px;
  margin-right: 10px;
}
.special-ul {
  list-style: none;
  margin: 0px 0px;
  padding: 0px 0px;
}
.special-ul li {
  height: 406px;
}
.special-left {
  width: 488px;
  height: 384px;
  // border: 1px solid;
  float: left;
  border-radius: 5px;
  background-color: #ffffff;
}
.special-right {
  width: 488px;
  height: 384px;
  // border: 1px solid;
  float: right;
  border-radius: 5px;
}
.special-right {
  background-color: #fff;
}
.spimg {
  width: 100%;
  height: 132px;
  background-color: cadetblue;
}
.aptext {
  width: 100%;
  height: 76px;
  margin-top: 34px;
  border-bottom: 1px solid #ebebeb;
}
.splabel {
  width: 100%;
  height: 110px;
  margin-top: 19px;
}
.football {
  font-size: 20px;
  font-weight: 600;
  height: 6px;
}
// 小的公共部分
.cordcommon {
  width: 440px;
  margin: 0 auto;
}
.update {
  font-size: 12px;
  color: #999999;
}
.button {
  width: 103px;
  height: 35px;
  background-color: #ebf5ff;
  border: 1px solid #ebf5ff;
  border-radius: 3px;
  color: #0084ff;
  font-weight: 600;
  float: right;
  margin-top: -18px;
}
.first {
  width: 100%;
}
.flourishing {
  width: 64px;
  height: 20px;
  font-size: 12px;
  background-color: #f6f6f6;
  display: inline-block;
  text-align: center;
  line-height: 20px;
  color: #8590a6;
  border-radius: 2px;
  margin-right: 10px;
  margin-bottom: 15px;
}
#tong {
  width: 78px;
}
#molt {
  margin-bottom: 45px;
}
#gzzt {
  margin-top: -44px;
}
#mlt {
  width: 90px;
}
.examine {
  display: block;
  text-align: center;
  width: 160px;
  height: 44px;
  line-height: 44px;
  border-radius: 24px;
  margin-left: 424px;
  background-color: #fff;
  color: #8590a6;
  font-weight: 600;
  margin-bottom: 43px;
}
.sptop {
  width: 100%;
  height: 240px;
  background-color: darkseagreen;
}
.traffic {
  display: block;
  width: 352px;
  color: white;
  padding-top: 80px;
}
.drive {
  font-size: 20px;
  font-weight: 600;
  color: white;
  position: relative;
  top: 67px;
}
.pic {
  margin-top: 15px;
}
.pic span {
  font-size: 12px;
  color: #ffe59a;
}
#table {
  color: #ffbf00;
}
ol > li {
  list-style: none;
}
.miracle a {
  display: block;
}
.miracle span {
  font-size: 12px;
  color: #999999;
}
.miracle li {
  display: block;
  height: 30px;
}
#mirli {
  height: 60px;
}
#jias {
  height: 440px;
  margin: 0 0 25px 0px;
}
.abroad {
  width: 100%;
  height: 85px;
  margin-top: 15px;
}
.abroad a {
  font-size: 20px;
  font-weight: 600;
}
.abroad img {
  width: 30px;
  height: 30px;
  position: relative;
  top: 8px;
}
.abroad span {
  margin-left: 10px;
  color: #9999b3;
  font-size: 14px;
}
#Joey {
  color: #111;
}
.gzsc {
  width: 103px;
  height: 35px;
  background-color: #ebf5ff;
  border: 1px solid #ebf5ff;
  border-radius: 3px;
  color: #0084ff;
  font-weight: 600;
  position: relative;
  left: 119px;
  top: -29px;
}
.ym {
  height: 65px;
  margin-top: 35px;
}
.ym a {
  display: block;
}
#seconds {
  display: block;
  margin: 5px 0px 5px 0px;
  color: #111;
}
#answer {
  margin: 0;
  display: initial;
  width: 30px;
  height: 20px;
  background-color: #f6f6f6;
}
#content {
  color: #8590a6;
  margin-top: 25px;
}
#content a {
  font-size: 14px;
  color: #8590a6;
}
.star {
  width: 235px;
  height: 313px;
  float: left;
  margin: 0 15px 0px 0px;
  background-color: #fff;
}
.startcommon {
  width: 168px;
  margin: 0 auto;
}
.stars img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  margin-left: 35px;
  margin-top: 35px;
}
#zl {
  width: 103px;
  height: 35px;
  background-color: #ebf5ff;
  border: 1px solid #ebf5ff;
  border-radius: 3px;
  color: #0084ff;
  font-weight: 600;
  margin-left: 30px;
}
#xlbl {
  display: block;
  margin-top: 15px;
  font-size: 16px;
  font-weight: 600;
  text-align: center;
}
#greay {
  display: block;
  margin-top: 5px;
  font-size: 13px;
  text-align: center;
}
#cxss {
  display: block;
  font-size: 14px;
  margin-top: 18px;
  text-align: center;
  height: 60px;
}
#ztl {
  height: 405px;
}
.foot {
  width: 100%;
  height: 500px;
}
#lks {
  color: #8590a6;
  font-size: 13px;
  margin-left: 342px;
}
.spimg img {
  width: 100%;
  height: 132px;
  border-radius: 5px;
}
#sptopone {
  background-image: url("../assets/img/bmz/b1.png");
  background-repeat: no-repeat;
  background-position: -122px 0;
}
#stopsecond {
  background-image: url("../assets/img/bmz/b2.png");
  background-repeat: no-repeat;
  background-position: -123px -58px;
}
#stopthree {
  background-image: url("../assets/img/bmz/b3.png");
  background-repeat: no-repeat;
  background-position: -119px -56px;
}
#sptofore {
  background-image: url("../assets/img/bmz/b4.png");
  background-repeat: no-repeat;
  background-position: -119px -56px;
}
#xt {
  width: 30px;
  height: 29px;
  margin-right: 7px;
  position: relative;
  top: 8px;
}
ol {
  margin-top: 12px;
}
</style>