<template>
  <!-- 书店 -->
  <div class="bookstore">
    <el-container>
      <!-- 顶部 -->
      <userHeader></userHeader>
      
      <!-- 内容 -->
      <el-main>
        <div class="bookstore-content">
          <!-- 精选推荐 -->
          <div class="recommendation">
            <!-- 精选推荐-标题 -->
            <div class="recommendation-title">
              <span class="recommendation-title-left">精选推荐</span>
              <!-- 查看全部书目 -->
              <span class="recommendation-title-rigth">
                <a href="javascript:;">
                  查看全部书目
                  <i class="el-icon-arrow-right"></i>
                </a>
              </span>
            </div>
            <!-- 精选推荐-内容 -->
            <ul class="recommendation-content">
              <li>
                <a href="javascript:;">
                  <div class="recommendation-content-image">
                    <img src="../assets/img/bookstore/classify/ia_200000000.webp" alt />
                  </div>
                  <div class="recommendation-content-title">危险的维纳斯</div>
                  <div class="recommendation-content-author">东野圭吾</div>
                  <div class="recommendation-content-price">￥22.50</div>
                </a>
              </li>
              <li>
                <a href="javascript:;">
                  <div class="recommendation-content-image">
                    <img src="../assets/img/bookstore/classify/ia_200000001.webp" alt />
                  </div>
                  <div class="recommendation-content-title">摆渡人</div>
                  <div class="recommendation-content-author">克莱儿.麦克福尔</div>
                  <div class="recommendation-content-price">￥9.99</div>
                </a>
              </li>
              <li>
                <a href="javascript:;">
                  <div class="recommendation-content-image">
                    <img src="../assets/img/bookstore/classify/ia_200000002.webp" alt />
                  </div>
                  <div class="recommendation-content-title">摆渡人 2：重返荒原</div>
                  <div class="recommendation-content-author">克莱儿·麦克福尔</div>
                  <div class="recommendation-content-price">￥19.98</div>
                </a>
              </li>
              <li>
                <a href="javascript:;">
                  <div class="recommendation-content-image">
                    <img src="../assets/img/bookstore/classify/ia_200000003.webp" alt />
                  </div>
                  <div class="recommendation-content-title">OKR：源于英特尔和谷歌的目标管理利器</div>
                  <div class="recommendation-content-author">保罗 R. 尼文 等</div>
                  <div class="recommendation-content-price">￥25.00</div>
                </a>
              </li>
              <li>
                <a href="javascript:;">
                  <div class="recommendation-content-image">
                    <img src="../assets/img/bookstore/classify/ia_200000004.webp" alt />
                  </div>
                  <div class="recommendation-content-title">那不勒斯的萤火</div>
                  <div class="recommendation-content-author">马西 等</div>
                  <div class="recommendation-content-price">￥9.99</div>
                </a>
              </li>
            </ul>
          </div>
          <!-- 分类 -->
          <div class="bookstore-classify">
            <el-tabs v-model="activeName" @tab-click="handleClick">
              <!-- 分类 -->
              <el-tab-pane label="分类" name="first">
                <div class="bookstore-frees">
                  <!-- 分类标题 -->
                  <div class="bookstore-frees-subTabs">
                    <a href>人文社科</a>
                    <a href>职场成长</a>
                    <a href>生活方式</a>
                    <!-- 下拉列表 -->
                    <div class="bookstore-frees-subTabs-list">
                      <el-row class="block-col-2">
                        <el-col :span="12">
                          <el-dropdown trigger="click">
                            <span class="el-dropdown-link">
                              技能习得
                              <i class="el-icon-arrow-down el-icon--right"></i>
                            </span>
                            <el-dropdown-menu slot="dropdown">
                              <el-dropdown-item>科技科普</el-dropdown-item>
                              <el-dropdown-item>商业经济</el-dropdown-item>
                              <el-dropdown-item>文学</el-dropdown-item>
                              <el-dropdown-item>小说</el-dropdown-item>
                              <el-dropdown-item>心理情感</el-dropdown-item>
                              <el-dropdown-item>历史</el-dropdown-item>
                              <el-dropdown-item>互联网</el-dropdown-item>
                              <el-dropdown-item>计算机</el-dropdown-item>
                              <el-dropdown-item>艺术</el-dropdown-item>
                              <el-dropdown-item>教育</el-dropdown-item>
                              <el-dropdown-item>医学健康</el-dropdown-item>
                              <el-dropdown-item>知乎出品</el-dropdown-item>
                            </el-dropdown-menu>
                          </el-dropdown>
                        </el-col>
                      </el-row>
                    </div>
                  </div>
                  <!-- 分类内容 -->
                  <div class="bookstore-frees-content">
                    <ul class="recommendation-content">
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000005.webp" alt />
                          </div>
                          <div class="recommendation-content-title">自学日语：从五十音到 N2</div>
                          <div class="recommendation-content-author">小岩井</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000006.webp" alt />
                          </div>
                          <div class="recommendation-content-title">为什么你的爱情总是不尽人意？</div>
                          <div class="recommendation-content-author">简单心理</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000007.webp" alt />
                          </div>
                          <div class="recommendation-content-title">在哥伦比亚丛林中：我与游击队员的一周</div>
                          <div class="recommendation-content-author">刘骁骞</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000008.webp" alt />
                          </div>
                          <div class="recommendation-content-title">我们为什么上班？</div>
                          <div class="recommendation-content-author">张佳玮 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000009.webp" alt />
                          </div>
                          <div class="recommendation-content-title">加勒比往事 1：大西洋的尽头</div>
                          <div class="recommendation-content-author">十一点半</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000261.webp" alt />
                          </div>
                          <div class="recommendation-content-title">鲁迅：「这句话不是我说的」 N2</div>
                          <div class="recommendation-content-author">张佳玮 等</div>
                          <div class="recommendation-content-price">￥0.01</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000273.webp" alt />
                          </div>
                          <div class="recommendation-content-title">李白那年三十整</div>
                          <div class="recommendation-content-author">周白之白</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000285.webp" alt />
                          </div>
                          <div class="recommendation-content-title">十万个是什么・格调篇</div>
                          <div class="recommendation-content-author">知乎电子书 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000296.webp" alt />
                          </div>
                          <div class="recommendation-content-title">你的第一本英文学术写作指导书</div>
                          <div class="recommendation-content-author">Luyao Zou</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000308.webp" alt />
                          </div>
                          <div class="recommendation-content-title">不一样的宫崎骏</div>
                          <div class="recommendation-content-author">TOTOLO 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000331.webp" alt />
                          </div>
                          <div class="recommendation-content-title">互联网洞见者</div>
                          <div class="recommendation-content-author">ponyma 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000342.webp" alt />
                          </div>
                          <div class="recommendation-content-title">读书会特刊 | 找对方法好学习</div>
                          <div class="recommendation-content-author">知乎电子书 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000353.webp" alt />
                          </div>
                          <div class="recommendation-content-title">中国的人口和城市</div>
                          <div class="recommendation-content-author">chenqin</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000365.webp" alt />
                          </div>
                          <div class="recommendation-content-title">暗网（日常与疯狂，只隔着一道深不可测的暗网）</div>
                          <div class="recommendation-content-author">杰米•巴特利特</div>
                          <div class="recommendation-content-price">￥16.98</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000377.webp" alt />
                          </div>
                          <div class="recommendation-content-title">阿拉伯帝国的落日</div>
                          <div class="recommendation-content-author">男爵兔</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000399.webp" alt />
                          </div>
                          <div class="recommendation-content-title">怪哉 005：原来童话如此黑暗</div>
                          <div class="recommendation-content-author">往来社</div>
                          <div class="recommendation-content-price">￥6.00</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000411.webp" alt />
                          </div>
                          <div class="recommendation-content-title">冰与火的游戏</div>
                          <div class="recommendation-content-author">凯岩城永不陷落 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000422.webp" alt />
                          </div>
                          <div class="recommendation-content-title">看懂世界格局的第一本书</div>
                          <div class="recommendation-content-author">王伟</div>
                          <div class="recommendation-content-price">￥17.98</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000434.webp" alt />
                          </div>
                          <div class="recommendation-content-title">十万个是什么・正义篇</div>
                          <div class="recommendation-content-author">知乎电子书 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000445.webp" alt />
                          </div>
                          <div class="recommendation-content-title">性别与暴力</div>
                          <div class="recommendation-content-author">龙窝里的倪纳 等</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000467.webp" alt />
                          </div>
                          <div class="recommendation-content-title">大唐时尚指南</div>
                          <div class="recommendation-content-author">王一凡</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000479.webp" alt />
                          </div>
                          <div class="recommendation-content-title">江湖再见，再见江湖</div>
                          <div class="recommendation-content-author">马家辉 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000490.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | 戛纳影事</div>
                          <div class="recommendation-content-author">阿郎 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000501.webp" alt />
                          </div>
                          <div class="recommendation-content-title">日本人居然这样吃日料</div>
                          <div class="recommendation-content-author">碗丸</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000513.webp" alt />
                          </div>
                          <div class="recommendation-content-title">人类砍头小史</div>
                          <div class="recommendation-content-author">弗朗西斯·拉尔森</div>
                          <div class="recommendation-content-price">￥14.99</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000535.webp" alt />
                          </div>
                          <div class="recommendation-content-title">哲学家们都干了些什么？</div>
                          <div class="recommendation-content-author">林欣浩</div>
                          <div class="recommendation-content-price">￥10.21</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000547.webp" alt />
                          </div>
                          <div class="recommendation-content-title">留学申请实用指南：USC 学长经验谈</div>
                          <div class="recommendation-content-author">胖子邓</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000559.webp" alt />
                          </div>
                          <div class="recommendation-content-title">失独家庭的后半生</div>
                          <div class="recommendation-content-author">腾讯《活着》栏目 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000570.webp" alt />
                          </div>
                          <div class="recommendation-content-title">华杉讲透《孙子兵法》</div>
                          <div class="recommendation-content-author">华杉</div>
                          <div class="recommendation-content-price">￥29.42</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000582.webp" alt />
                          </div>
                          <div class="recommendation-content-title">人间情爱（2017 知乎日报故事精选）</div>
                          <div class="recommendation-content-author">真实故事计划 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000602.webp" alt />
                          </div>
                          <div class="recommendation-content-title">美国陷阱</div>
                          <div class="recommendation-content-author">弗雷德里克· 皮耶鲁齐 等</div>
                          <div class="recommendation-content-price">￥24.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000614.webp" alt />
                          </div>
                          <div class="recommendation-content-title">乌合之众：大众心理研究</div>
                          <div class="recommendation-content-author">古斯塔夫·勒庞</div>
                          <div class="recommendation-content-price">￥6.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000626.webp" alt />
                          </div>
                          <div class="recommendation-content-title">全球枪械大图解</div>
                          <div class="recommendation-content-author">经纬智库</div>
                          <div class="recommendation-content-price">￥35.94</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000638.webp" alt />
                          </div>
                          <div class="recommendation-content-title">从零开始写故事：一个南方周末记者的特稿笔记</div>
                          <div class="recommendation-content-author">叶伟民</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000650.webp" alt />
                          </div>
                          <div class="recommendation-content-title">我从来不会假装：太宰治和他的四部文学作品</div>
                          <div class="recommendation-content-author">李牧</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000673.webp" alt />
                          </div>
                          <div class="recommendation-content-title">1967：摇滚乐最灿烂的一年</div>
                          <div class="recommendation-content-author">JohnnyZhu</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000685.webp" alt />
                          </div>
                          <div class="recommendation-content-title">真是搞不懂地球了</div>
                          <div class="recommendation-content-author">河森堡 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000696.webp" alt />
                          </div>
                          <div class="recommendation-content-title">新千年性爱备忘录</div>
                          <div class="recommendation-content-author">离线</div>
                          <div class="recommendation-content-price">￥4.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000708.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | 超级英雄，集结！</div>
                          <div class="recommendation-content-author">丧心病狂刘老湿 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000719.webp" alt />
                          </div>
                          <div class="recommendation-content-title">畅销书之外：你不了解的村上春树</div>
                          <div class="recommendation-content-author">Palomar</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000741.webp" alt />
                          </div>
                          <div class="recommendation-content-title">中国缺什么，日本缺什么</div>
                          <div class="recommendation-content-author">近藤大介</div>
                          <div class="recommendation-content-price">￥10.50</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000753.webp" alt />
                          </div>
                          <div class="recommendation-content-title">枪炮、病菌与钢铁：人类社会的命运（修订版）</div>
                          <div class="recommendation-content-author">贾雷德·戴蒙德</div>
                          <div class="recommendation-content-price">￥17.98</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000765.webp" alt />
                          </div>
                          <div class="recommendation-content-title">重返魔法世界</div>
                          <div class="recommendation-content-author">雲绯 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000776.webp" alt />
                          </div>
                          <div class="recommendation-content-title">月亮与六便士</div>
                          <div class="recommendation-content-author">毛姆</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000788.webp" alt />
                          </div>
                          <div class="recommendation-content-title">先审合同再开工：普通人也能学会的合同审查技巧</div>
                          <div class="recommendation-content-author">倪修智</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000810.webp" alt />
                          </div>
                          <div class="recommendation-content-title">牛津通识读本：佛学概论（中文版）</div>
                          <div class="recommendation-content-author">关大眠</div>
                          <div class="recommendation-content-price">￥7.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000822.webp" alt />
                          </div>
                          <div class="recommendation-content-title">乌合之众：群体心理研究</div>
                          <div class="recommendation-content-author">古斯塔夫·勒庞</div>
                          <div class="recommendation-content-price">￥14.00</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000834.webp" alt />
                          </div>
                          <div class="recommendation-content-title">你在怕什么：与死亡有关的六幅画</div>
                          <div class="recommendation-content-author">陈诺</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000846.webp" alt />
                          </div>
                          <div class="recommendation-content-title">走，去度个假</div>
                          <div class="recommendation-content-author">知乎电子书 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/classify/ia_200000857.webp" alt />
                          </div>
                          <div class="recommendation-content-title">围观考古现场</div>
                          <div class="recommendation-content-author">项木咄</div>
                          <div class="recommendation-content-price">￥9.99</div>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </el-tab-pane>
              <!-- 特价 -->
              <el-tab-pane label="特价" name="second">
                <ul class="recommendation-content">
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000781.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">骂观众（《自我控诉》+《骂观众》）（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥15.00</span>
                        <span class="original">￥25.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000782.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">彼得·汉德克：经典作品合集（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥108.00</span>
                        <span class="original">￥180.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000783.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">左撇子女人（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥17.40</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000784.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">去往第九王国（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥17.40</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000785.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">缓慢的归乡（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥17.40</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000786.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">形同陌路的时刻（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥17.40</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000787.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">试论疲倦（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥15.00</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000788.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">守门员面对罚点球时的焦虑（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥15.00</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000789.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">守门员面对罚点球时的焦虑（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥17.40</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000790.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">无欲的悲歌（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥17.40</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/bargains/ia_100000000801.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">永不放弃</div>
                      <div class="recommendation-content-author">唐纳德·特朗普 等</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥8.99</span>
                        <span class="original">￥19.98</span>
                      </div>
                    </a>
                  </li>
                </ul>
              </el-tab-pane>
              <!-- 免费 -->
              <el-tab-pane label="免费" name="third">
                <ul class="recommendation-content">
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000830.webp" alt />
                      </div>
                      <div class="recommendation-content-title">定义她的模样</div>
                      <div class="recommendation-content-author">李银河 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000831.webp" alt />
                      </div>
                      <div class="recommendation-content-title">同情者</div>
                      <div class="recommendation-content-author">阮清越</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000832.webp" alt />
                      </div>
                      <div class="recommendation-content-title">低欲望社会：「丧失大志时代」的新·国富论</div>
                      <div class="recommendation-content-author">大前研一</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000833.webp" alt />
                      </div>
                      <div class="recommendation-content-title">下流社会：一个新社会阶层的出现</div>
                      <div class="recommendation-content-author">三浦展</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000834.webp" alt />
                      </div>
                      <div class="recommendation-content-title">至暗时刻：力挽狂澜的丘吉尔</div>
                      <div class="recommendation-content-author">安东尼·麦卡滕</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <!-- 二 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000835.webp" alt />
                      </div>
                      <div class="recommendation-content-title">《如何培养高财商孩子》导读手册</div>
                      <div class="recommendation-content-author">陈昱</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000836.webp" alt />
                      </div>
                      <div class="recommendation-content-title">读书会特刊 | 旅行，拒绝打卡</div>
                      <div class="recommendation-content-author">刘骁骞 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000837.webp" alt />
                      </div>
                      <div class="recommendation-content-title">你好中国·问答 70 年</div>
                      <div class="recommendation-content-author">龙牙 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000838.webp" alt />
                      </div>
                      <div class="recommendation-content-title">硬核赏月指南</div>
                      <div class="recommendation-content-author">天才琪露诺 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000839.webp" alt />
                      </div>
                      <div class="recommendation-content-title">孩子们喜爱的民俗故事</div>
                      <div class="recommendation-content-author">毛晓青</div>
                      <div class="recommendation-content-price">￥9.59</div>
                    </a>
                  </li>
                  <!-- 三 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000847.webp" alt />
                      </div>
                      <div class="recommendation-content-title">孩子们喜爱的民间故事</div>
                      <div class="recommendation-content-author">毛晓青</div>
                      <div class="recommendation-content-price">￥9.59</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000851.webp" alt />
                      </div>
                      <div class="recommendation-content-title">伟大的磨难：华为启示录</div>
                      <div class="recommendation-content-author">王永昌</div>
                      <div class="recommendation-content-price">￥29.90</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000852.webp" alt />
                      </div>
                      <div class="recommendation-content-title">小学生思维导图作文课</div>
                      <div class="recommendation-content-author">王明欢 等</div>
                      <div class="recommendation-content-price">￥23.92</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000853.webp" alt />
                      </div>
                      <div class="recommendation-content-title">再见啦夏天</div>
                      <div class="recommendation-content-author">Lens 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000854.webp" alt />
                      </div>
                      <div class="recommendation-content-title">地球好忙</div>
                      <div class="recommendation-content-author">Mandelbrot 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <!-- 四 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000855.webp" alt />
                      </div>
                      <div class="recommendation-content-title">知乎观影团 | 哪吒：我不信命</div>
                      <div class="recommendation-content-author">导演饺子 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000856.webp" alt />
                      </div>
                      <div class="recommendation-content-title">管理视野18</div>
                      <div class="recommendation-content-author">复旦大学管理学院 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000857.webp" alt />
                      </div>
                      <div class="recommendation-content-title">去地府瞧瞧</div>
                      <div class="recommendation-content-author">蓝风幸 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000858.webp" alt />
                      </div>
                      <div class="recommendation-content-title">鲜读-米尔顿·科特勒传：奋斗或死亡</div>
                      <div class="recommendation-content-author">米尔顿•科特勒</div>
                      <div class="recommendation-content-price">￥0.10</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000859.webp" alt />
                      </div>
                      <div class="recommendation-content-title">鲜读-让财报说话：世界 500 强 CFO 带你轻松读财报</div>
                      <div class="recommendation-content-author">郑永强</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <!-- 五 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000868.webp" alt />
                      </div>
                      <div class="recommendation-content-title">鲜读-专业主义</div>
                      <div class="recommendation-content-author">大卫·梅斯特</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000869.webp" alt />
                      </div>
                      <div class="recommendation-content-title">小胖君的蘑菇手记</div>
                      <div class="recommendation-content-author">小胖君</div>
                      <div class="recommendation-content-price">￥15.05</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000870.webp" alt />
                      </div>
                      <div class="recommendation-content-title">光荣与道路：中国大时代的精英记忆</div>
                      <div class="recommendation-content-author">《三联生活周刊》编著</div>
                      <div class="recommendation-content-price">￥22.78</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000871.webp" alt />
                      </div>
                      <div class="recommendation-content-title">太平洋战争. 三， 不宣而战</div>
                      <div class="recommendation-content-author">青梅煮酒</div>
                      <div class="recommendation-content-price">￥14.14</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000872.webp" alt />
                      </div>
                      <div class="recommendation-content-title">咖啡店事件簿 3，扰人心神的咖啡</div>
                      <div class="recommendation-content-author">冈崎琢磨</div>
                      <div class="recommendation-content-price">￥8.63</div>
                    </a>
                  </li>
                  <!-- 六 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000873.webp" alt />
                      </div>
                      <div class="recommendation-content-title">神经双探</div>
                      <div class="recommendation-content-author">马拓</div>
                      <div class="recommendation-content-price">￥9.42</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000874.webp" alt />
                      </div>
                      <div class="recommendation-content-title">中原大战：民国军阀的终极逐鹿</div>
                      <div class="recommendation-content-author">关河五十州</div>
                      <div class="recommendation-content-price">￥3.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000875.webp" alt />
                      </div>
                      <div class="recommendation-content-title">中国人的人性与人生</div>
                      <div class="recommendation-content-author">梁晓声</div>
                      <div class="recommendation-content-price">￥8.83</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000876.webp" alt />
                      </div>
                      <div class="recommendation-content-title">大时代</div>
                      <div class="recommendation-content-author">林黎胜</div>
                      <div class="recommendation-content-price">￥9.53</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000877.webp" alt />
                      </div>
                      <div class="recommendation-content-title">虎部队：国民党抗日王牌七十四军</div>
                      <div class="recommendation-content-author">关河五十州</div>
                      <div class="recommendation-content-price">￥9.59</div>
                    </a>
                  </li>
                  <!-- 七 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000890.webp" alt />
                      </div>
                      <div class="recommendation-content-title">星际争霸：新版争霸战</div>
                      <div class="recommendation-content-author">刘慈欣</div>
                      <div class="recommendation-content-price">￥11.77</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000891.webp" alt />
                      </div>
                      <div class="recommendation-content-title">三国全史上卷</div>
                      <div class="recommendation-content-author">南门太守</div>
                      <div class="recommendation-content-price">￥25.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000892.webp" alt />
                      </div>
                      <div class="recommendation-content-title">中国人的日常</div>
                      <div class="recommendation-content-author">梁晓声</div>
                      <div class="recommendation-content-price">￥8.83</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000893.webp" alt />
                      </div>
                      <div class="recommendation-content-title">走出晚清：大师们的涅槃时代</div>
                      <div class="recommendation-content-author">汪兆骞</div>
                      <div class="recommendation-content-price">￥8.63</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000894.webp" alt />
                      </div>
                      <div class="recommendation-content-title">人体秘密手册</div>
                      <div class="recommendation-content-author">李雷 等</div>
                      <div class="recommendation-content-price">免费</div>
                    </a>
                  </li>
                  <!-- 八 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000895.webp" alt />
                      </div>
                      <div class="recommendation-content-title">柴荣是个好皇帝-被湮没的后周和五代十国往事</div>
                      <div class="recommendation-content-author">姜狼</div>
                      <div class="recommendation-content-price">￥12.57</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000896.webp" alt />
                      </div>
                      <div class="recommendation-content-title">花雨满天</div>
                      <div class="recommendation-content-author">季羡林</div>
                      <div class="recommendation-content-price">￥10.45</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000897.webp" alt />
                      </div>
                      <div class="recommendation-content-title">君子如玉</div>
                      <div class="recommendation-content-author">季羡林</div>
                      <div class="recommendation-content-price">￥10.65</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000898.webp" alt />
                      </div>
                      <div class="recommendation-content-title">真话无价</div>
                      <div class="recommendation-content-author">季羡林</div>
                      <div class="recommendation-content-price">￥9.21</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000899.webp" alt />
                      </div>
                      <div class="recommendation-content-title">民国总理段祺瑞</div>
                      <div class="recommendation-content-author">关河五十州</div>
                      <div class="recommendation-content-price">￥7.50</div>
                    </a>
                  </li>
                  <!-- 九 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000905.webp" alt />
                      </div>
                      <div class="recommendation-content-title">血战天下 : 战国全史</div>
                      <div class="recommendation-content-author">醉罢君山</div>
                      <div class="recommendation-content-price">￥5.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000906.webp" alt />
                      </div>
                      <div class="recommendation-content-title">人生十讲</div>
                      <div class="recommendation-content-author">季羡林</div>
                      <div class="recommendation-content-price">￥9.64</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000907.webp" alt />
                      </div>
                      <div class="recommendation-content-title">总有一种柔软让人生坚定从容</div>
                      <div class="recommendation-content-author">梁晓声</div>
                      <div class="recommendation-content-price">￥12.57</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000908.webp" alt />
                      </div>
                      <div class="recommendation-content-title">金吾卫之风起金陵</div>
                      <div class="recommendation-content-author">柳三笑</div>
                      <div class="recommendation-content-price">￥6.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000909.webp" alt />
                      </div>
                      <div class="recommendation-content-title">火烧圆明园</div>
                      <div class="recommendation-content-author">关河五十州</div>
                      <div class="recommendation-content-price">￥15.70</div>
                    </a>
                  </li>
                  <!-- 十 -->
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000913.webp" alt />
                      </div>
                      <div class="recommendation-content-title">湘军崛起</div>
                      <div class="recommendation-content-author">关河五十州</div>
                      <div class="recommendation-content-price">￥14.92</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000914.webp" alt />
                      </div>
                      <div class="recommendation-content-title">被封印的唐史 : 盛大帝国的朝野死角</div>
                      <div class="recommendation-content-author">魏风华</div>
                      <div class="recommendation-content-price">￥19.63</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000915.webp" alt />
                      </div>
                      <div class="recommendation-content-title">事物的味道，我尝得太早了</div>
                      <div class="recommendation-content-author">石川啄木</div>
                      <div class="recommendation-content-price">￥18.05</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000916.webp" alt />
                      </div>
                      <div class="recommendation-content-title">太平洋战争. 四， 艰难时刻</div>
                      <div class="recommendation-content-author">青梅煮酒</div>
                      <div class="recommendation-content-price">￥26.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/free/ia_100000000917.webp" alt />
                      </div>
                      <div class="recommendation-content-title">左右对称</div>
                      <div class="recommendation-content-author">誉田哲也</div>
                      <div class="recommendation-content-price">￥15.71</div>
                    </a>
                  </li>
                </ul>
              </el-tab-pane>
              <!-- 榜单 -->
              <el-tab-pane label="榜单" name="bangdan">
                <ul class="recommendation-content">
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001111.webp" alt />
                      </div>
                      <div class="recommendation-content-title">活着</div>
                      <div class="recommendation-content-author">余华</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001112.webp" alt />
                        <span class="BargainsSale">SALE</span>
                      </div>
                      <div class="recommendation-content-title">痛苦的中国人（2019 诺贝尔文学奖图书）</div>
                      <div class="recommendation-content-author">[奥地利] 彼得·汉德克</div>
                      <div class="recommendation-content-price">
                        <span class="classify">￥17.40</span>
                        <span class="original">￥29.00</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001113.webp" alt />
                      </div>
                      <div class="recommendation-content-title">沉默的大多数</div>
                      <div class="recommendation-content-author">王小波</div>
                      <div class="recommendation-content-price">￥7.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001114.webp" alt />
                      </div>
                      <div class="recommendation-content-title">大脑通讯员：认识你的神经递质</div>
                      <div class="recommendation-content-author">赵思家</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001115.webp" alt />
                      </div>
                      <div class="recommendation-content-title">你的第一本「初夜」手册：事前准备、临场应对和事后功课</div>
                      <div class="recommendation-content-author">马虫 医生</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001119.webp" alt />
                      </div>
                      <div class="recommendation-content-title">在细雨中呼喊</div>
                      <div class="recommendation-content-author">余华</div>
                      <div class="recommendation-content-price">￥8.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001117.webp" alt />
                      </div>
                      <div class="recommendation-content-title">哈尔滨 1910：晚清东北大鼠疫纪实</div>
                      <div class="recommendation-content-author">眠眠</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001118.webp" alt />
                      </div>
                      <div class="recommendation-content-title">带团队的第一年：从「会工作」到「会管理」</div>
                      <div class="recommendation-content-author">王盐 等</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001132.webp" alt />
                      </div>
                      <div class="recommendation-content-title">猫、爱因斯坦和密码学：我也能看懂的量子通信</div>
                      <div class="recommendation-content-author">神们自己</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001120.webp" alt />
                      </div>
                      <div class="recommendation-content-title">爱你就像爱生命</div>
                      <div class="recommendation-content-author">王小波</div>
                      <div class="recommendation-content-price">￥6.99</div>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img
                          src="../assets/img/bookstore/business/v2-03c6d6082c3e6ed4de0b7fc627603909_200x0.webp"
                          alt
                        />
                      </div>
                      <div class="recommendation-content-title">不止代码：程序员的进阶之路</div>
                      <div class="recommendation-content-author">程墨Morgan</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001136.webp" alt />
                      </div>
                      <div class="recommendation-content-title">写得一手好公文：体制内新人必备技能</div>
                      <div class="recommendation-content-author">你一直在玩儿</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001137.webp" alt />
                      </div>
                      <div class="recommendation-content-title">许三观卖血记</div>
                      <div class="recommendation-content-author">余华</div>
                      <div class="recommendation-content-price">￥9.90</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001130.webp" alt />
                      </div>
                      <div class="recommendation-content-title">一只特立独行的猪</div>
                      <div class="recommendation-content-author">王小波</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001131.webp" alt />
                      </div>
                      <div class="recommendation-content-title">公务员考试：五大难题一个对策</div>
                      <div class="recommendation-content-author">暮白 等</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001134.webp" alt />
                      </div>
                      <div class="recommendation-content-title">黄金时代</div>
                      <div class="recommendation-content-author">王小波</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001133.webp" alt />
                      </div>
                      <div class="recommendation-content-title">房地产投资岗入门指南</div>
                      <div class="recommendation-content-author">牧诗</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img
                          src="../assets/img/bookstore/business/v2-a6d016767e4be6489298f6a67745f924_200x0.webp"
                          alt
                        />
                      </div>
                      <div class="recommendation-content-title">不列颠摇滚乐微型指南</div>
                      <div class="recommendation-content-author">柴斯卡</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001138.webp" alt />
                      </div>
                      <div class="recommendation-content-title">法医现场笔记</div>
                      <div class="recommendation-content-author">死者代言人</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <div class="recommendation-content-image">
                        <img src="../assets/img/bookstore/business/ia_100000001135.webp" alt />
                      </div>
                      <div class="recommendation-content-title">好好分手：学会走出失恋阴霾</div>
                      <div class="recommendation-content-author">安慰记店长</div>
                      <div class="recommendation-content-price">￥9.99</div>
                    </a>
                  </li>
                </ul>
              </el-tab-pane>
              <!-- 知乎产品 -->
              <el-tab-pane label="知乎产品" name="fourth">
                <div class="bookstore-frees">
                  <!-- 分类标题 -->
                  <div class="bookstore-frees-subTabs">
                    <a href>知乎周刊</a>
                    <a href>一小时</a>
                    <a href>知乎 · 盐</a>
                  </div>
                  <!-- 分类内容 -->
                  <div class="bookstore-frees-content">
                    <ul class="recommendation-content">
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000006.webp" alt />
                          </div>
                          <div class="recommendation-content-title">有时迷茫</div>
                          <div class="recommendation-content-author">KnowYourself 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000007.webp" alt />
                          </div>
                          <div class="recommendation-content-title">定义她的模样</div>
                          <div class="recommendation-content-author">李银河 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000008.webp" alt />
                          </div>
                          <div class="recommendation-content-title">读书会特刊 | 旅行，拒绝打卡</div>
                          <div class="recommendation-content-author">刘骁骞 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000009.webp" alt />
                          </div>
                          <div class="recommendation-content-title">你好中国·问答 70 年</div>
                          <div class="recommendation-content-author">龙牙 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000010.webp" alt />
                          </div>
                          <div class="recommendation-content-title">硬核赏月指南</div>
                          <div class="recommendation-content-author">天才琪露诺 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000011.webp" alt />
                          </div>
                          <div class="recommendation-content-title">再见啦夏天</div>
                          <div class="recommendation-content-author">Lens 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000012.webp" alt />
                          </div>
                          <div class="recommendation-content-title">地球好忙</div>
                          <div class="recommendation-content-author">Mandelbrot 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000013.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | 哪吒：我不信命</div>
                          <div class="recommendation-content-author">导演饺子 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000014.webp" alt />
                          </div>
                          <div class="recommendation-content-title">去地府瞧瞧</div>
                          <div class="recommendation-content-author">蓝风幸 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000015.webp" alt />
                          </div>
                          <div class="recommendation-content-title">人体秘密手册</div>
                          <div class="recommendation-content-author">李雷 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000016.webp" alt />
                          </div>
                          <div class="recommendation-content-title">如何科学地约会</div>
                          <div class="recommendation-content-author">KnowYourself 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000017.webp" alt />
                          </div>
                          <div class="recommendation-content-title">相亲故事集</div>
                          <div class="recommendation-content-author">每日人物 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000018.webp" alt />
                          </div>
                          <div class="recommendation-content-title">我当警察这些年</div>
                          <div class="recommendation-content-author">弦歌 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000019.webp" alt />
                          </div>
                          <div class="recommendation-content-title">职场新人，报到！</div>
                          <div class="recommendation-content-author">小红拖拉机 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000020.webp" alt />
                          </div>
                          <div class="recommendation-content-title">自己的那点小心思</div>
                          <div class="recommendation-content-author">简单心理 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000021.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | X 战警：不说再见</div>
                          <div class="recommendation-content-author">网易体育 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000022.webp" alt />
                          </div>
                          <div class="recommendation-content-title">大学，从现在开始</div>
                          <div class="recommendation-content-author">路人丁 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000023.webp" alt />
                          </div>
                          <div class="recommendation-content-title">成为酷爸爸</div>
                          <div class="recommendation-content-author">识广君 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000024.webp" alt />
                          </div>
                          <div class="recommendation-content-title">童年想知道</div>
                          <div class="recommendation-content-author">张佳玮 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000025.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | 戛纳影事</div>
                          <div class="recommendation-content-author">阿郎 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000026.webp" alt />
                          </div>
                          <div class="recommendation-content-title">TA 的心思你别猜</div>
                          <div class="recommendation-content-author">覃宇辉 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000027.webp" alt />
                          </div>
                          <div class="recommendation-content-title">读书会特刊 | 从现在开始，理财！</div>
                          <div class="recommendation-content-author">Li Carly 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000028.webp" alt />
                          </div>
                          <div class="recommendation-content-title">冰与火的游戏</div>
                          <div class="recommendation-content-author">凯岩城永不陷落 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000029.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | 超级英雄，集结！</div>
                          <div class="recommendation-content-author">丧心病狂刘老湿 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000030.webp" alt />
                          </div>
                          <div class="recommendation-content-title">失独家庭的后半生</div>
                          <div class="recommendation-content-author">腾讯《活着》栏目 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000031.webp" alt />
                          </div>
                          <div class="recommendation-content-title">读书会特刊 | 打开异世界大门</div>
                          <div class="recommendation-content-author">知乎电子书 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000032.webp" alt />
                          </div>
                          <div class="recommendation-content-title">「肝」的困惑</div>
                          <div class="recommendation-content-author">知乎电子书 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000033.webp" alt />
                          </div>
                          <div class="recommendation-content-title">游戏人生</div>
                          <div class="recommendation-content-author">Clark 杨佳阳 等 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000034.webp" alt />
                          </div>
                          <div class="recommendation-content-title">走，去度个假</div>
                          <div class="recommendation-content-author">知乎电子书 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000035.webp" alt />
                          </div>
                          <div class="recommendation-content-title">读书会特刊 | 找对方法好学习</div>
                          <div class="recommendation-content-author">知乎电子书 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000036.webp" alt />
                          </div>
                          <div class="recommendation-content-title">低成本健身</div>
                          <div class="recommendation-content-author">跑步学院 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000037.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | 就是爱科幻</div>
                          <div class="recommendation-content-author">人神共奋 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000038.webp" alt />
                          </div>
                          <div class="recommendation-content-title">我们为什么上班？</div>
                          <div class="recommendation-content-author">张佳玮 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000039.webp" alt />
                          </div>
                          <div class="recommendation-content-title">读书会特刊 | 如何发明爱情？</div>
                          <div class="recommendation-content-author">李银河 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000040.webp" alt />
                          </div>
                          <div class="recommendation-content-title">春节特刊 | 有钱没钱，回家过年</div>
                          <div class="recommendation-content-author">蔓玫 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000041.webp" alt />
                          </div>
                          <div class="recommendation-content-title">人生「小事」（2018 知乎日报故事精选）</div>
                          <div class="recommendation-content-author">黄秋古 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000042.webp" alt />
                          </div>
                          <div class="recommendation-content-title">2018：知乎日报年度精选</div>
                          <div class="recommendation-content-author">阿拉斯加猫 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000043.webp" alt />
                          </div>
                          <div class="recommendation-content-title">成为爸妈的第一年</div>
                          <div class="recommendation-content-author">李昕 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000044.webp" alt />
                          </div>
                          <div class="recommendation-content-title">2018 年度 300 问 | 生活：花花世界</div>
                          <div class="recommendation-content-author">yang yang 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000045.webp" alt />
                          </div>
                          <div class="recommendation-content-title">2018 年度 300 问 | 经济： 偶尔也爱钱</div>
                          <div class="recommendation-content-author">司马懿 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000046.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | 「逆浪游泳」的阿米尔·汗</div>
                          <div class="recommendation-content-author">千里 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000047.webp" alt />
                          </div>
                          <div class="recommendation-content-title">2018 年度 300 问 | 成长：从前我不懂</div>
                          <div class="recommendation-content-author">一苒 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000048.webp" alt />
                          </div>
                          <div class="recommendation-content-title">2018 年度 300 问 | 新知：人类七分熟</div>
                          <div class="recommendation-content-author">小侯飞氘 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000049.webp" alt />
                          </div>
                          <div class="recommendation-content-title">读书会特刊 | 当文字成为影像</div>
                          <div class="recommendation-content-author">李淼 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000050.webp" alt />
                          </div>
                          <div class="recommendation-content-title">不一样的宫崎骏</div>
                          <div class="recommendation-content-author">TOTOLO 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>

                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000051.webp" alt />
                          </div>
                          <div class="recommendation-content-title">知乎观影团 | 贝托鲁奇：唯一的真实在镜头里</div>
                          <div class="recommendation-content-author">Lens 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000052.webp" alt />
                          </div>
                          <div class="recommendation-content-title">冬天，就要喝点暖的</div>
                          <div class="recommendation-content-author">DimLau 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000053.webp" alt />
                          </div>
                          <div class="recommendation-content-title">互联网洞见者</div>
                          <div class="recommendation-content-author">ponyma 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000054.webp" alt />
                          </div>
                          <div class="recommendation-content-title">重返魔法世界</div>
                          <div class="recommendation-content-author">雲绯 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                      <li>
                        <a href="javascript:;">
                          <div class="recommendation-content-image">
                            <img src="../assets/img/bookstore/manufacture/ia_500000055.webp" alt />
                          </div>
                          <div class="recommendation-content-title">读书会特刊 | 以工作的名义，好好学习</div>
                          <div class="recommendation-content-author">Andy Lee 等</div>
                          <div class="recommendation-content-price">免费</div>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </el-tab-pane>
            </el-tabs>
            <!-- 我的书架 -->
            <button class="bookstore-classify-my">
              <i class="el-icon-s-data"></i>
              我的书架
            </button>
          </div>
        </div>
      </el-main>
    </el-container>
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

<style lang="less">
.el-main {
  width: 100%;
  height: 100%;
  background-color: #f3f3f3;
  color: #333;
}
/* 书店内容 */
.bookstore-content {
  width: 1000px;
  height: 100%;
  margin: 0 auto;
  margin-top: 62px;
}
/* 精选推荐 */
.recommendation {
  clear: both;
  width: 100%;
  height: 405px;
  border: 1px solid #ebebeb;
  margin-bottom: 10px;
  background-color: #ffffff;
}

/* 精选推荐-标题 */
.recommendation-title {
  height: 50px;
  padding: 0 20px;
  border-bottom: 1px solid #f6f6f6;
  text-align: center;
  line-height: 50px;
}

/* 精选推荐-标签-左边 */
.recommendation-title-left {
  float: left;
  font-size: 16px;
  font-weight: 600;
}

/* 精选推荐-标签-右边 */
.recommendation-title-rigth {
  float: right;
  font-size: 14px;
  font-weight: 400;
  color: #8590a6;
}

.recommendation-title-rigth a,
i {
  color: #8590a6;
}

/* 精选推荐-内容 */
.bookstore-frees-content {
  clear: both;
}

.recommendation-content {
  overflow: hidden;
  width: 100%;
  height: 100%;
  margin: 0 20px;
}

.recommendation-content li {
  float: left;
  width: 150px;
  height: 329px;
  margin-right: 42px;
  margin: 20px 50px 20px 0;
  font-size: 14px;
  color: #8590a6;
}

.recommendation-content-image {
  position: relative;
  display: inline-block;
  width: 150px;
  height: 200px;
  overflow: hidden;
}
.recommendation-content-image img {
  width: 150px;
  height: 200px;
  border-radius: 6px;
}

.BargainsSale {
  position: absolute;
  top: 0px;
  right: 0px;
  width: 98px;
  height: 30px;
  font-size: 12px;
  text-align: center;
  font-weight: 400;
  color: #ffffff;
  background: #fe6270;
  line-height: 30px;
  transform: rotate(45deg) translate(51%, 58%);
  transform-origin: top right;
}

.recommendation-content-title {
  margin-top: 14px;
  margin-bottom: 9px;
  font-weight: 500;
  font-size: 16px;
  line-height: 22px;
  color: #222222;
}

.recommendation-content-author {
  margin-bottom: 10px;
  font-size: 14px;
  color: #8590a6;
}

.recommendation-content-price {
  font-size: 12px;
  color: #8590a6;
}

.recommendation-content-price .classify {
  color: #f7567e;
  margin-right: 5px;
}

.recommendation-content-price .original {
  text-decoration: line-through;
}

/* tab分类 */
.bookstore-classify {
  position: relative;
  background-color: #ffffff;
}

.bookstore-classify /deep/ .el-tabs--top .el-tabs__item.is-top:nth-child(2) {
  padding-left: 20px;
}

.bookstore-classify-my {
  position: absolute;
  left: 880px;
  top: 2px;
  width: 105px;
  height: 33px;
  margin: 0;
  padding: 0;
  border: 1px solid #0084ff; //自定义边框
  background-color: #ffffff;
  outline: none; //消除默认点击蓝色边框效果
  color: #0084ff;
}

.bookstore-classify-my i {
  color: #0084ff;
}

// 分类标题
.bookstore-frees-subTabs {
  margin: 0 4px;
  padding: 12px 0;
  font-size: 15px;
}

.bookstore-frees-subTabs a {
  padding: 0 20px;
  font-weight: 400;
}

.bookstore-frees-subTabs-list {
  display: inline-block;
  width: 130px;
  height: 40px;
  vertical-align: middle;
}

.bookstore-frees-subTabs-list /deep/ .block-col-2 {
  width: 130px;
  height: 40px;
  border: 1px solid #8590a6;
  border-radius: 2px;
}

.bookstore-frees-subTabs-list /deep/ .el-col {
  width: 88px;
  height: 38px;
  margin: 0 20px;
  line-height: 38px;
}

// 分类标题-下拉列表
.el-dropdown-link {
  cursor: pointer;
  color: #8590a6;
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
</style>
