<template>
  <div class="question">
    <van-nav-bar
      :title="$route.query.cat_name"
      left-text="返回"
      left-arrow
      @click-left="$router.back()"
    />
    <!-- 在标签指定name属性的情况下，v-model的值为当前标签的name -->
    <van-tabs v-model="type">
      <van-tab name="all" :title="`全部(${total})`"></van-tab>
      <van-tab name="right" :title="'答对的(' + right + ')'"></van-tab>
      <van-tab name="wrong" :title="'答错的(' + wrong + ')'"></van-tab>
      <van-tab name="undo" :title="'没做过的(' + undo + ')'"></van-tab>
    </van-tabs>
    <div class="ti">
      <van-button
        v-if="questions.length == 0"
        type="primary"
        @click="getQuestion"
        >开始答题</van-button
      >
      <div v-else>
        <h2>题目：{{ questions[now_ques].title }}</h2>
        <!-- .split(',')" 将字符串按照逗号分割成数组 -->
        <van-radio-group v-model="answer">
          <van-radio
            v-for="(item, index) in questions[now_ques].options.split(',')"
            :key="index"
            :name="index"
            >{{ alph[index] }}. {{ item }}</van-radio
          >
        </van-radio-group>
        <van-button class="info" type="info">提交，进入下一题</van-button>
        <van-button
          @click="showAnswer = !showAnswer"
          class="warning"
          type="warning"
          >查看答案</van-button
        ><br />
        <van-tag color="#ffce45" class="tag" v-if="showAnswer"
          >正确答案：{{ alph[questions[now_ques].right] }}</van-tag
        >
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      questions: [],
      total: 0,
      right: 0,
      wrong: 0,
      undo: 0,
      // tab切换时 all全部题 right对题 wrong错题 undo未做的题
      type: "all",
      // 当前是第几道题，默认第一道
      now_ques: 0,
      // 勾选的答案
      answer: "",
      // 定义数组，实现答案转换成 A，B，C，D
      alph: ["A", "B", "C", "D"],
      // 判断答案的显示与隐藏
      showAnswer: false
    };
  },
  created() {
    this.$http
      .get(`/categories/${this.$route.query.id}/question_count_info`)
      .then(res => {
        this.total = res.data.data.total;
        this.right = res.data.data.right;
        this.wrong = res.data.data.wrong;
        this.undo = res.data.data.undo;
      });
  },
  methods: {
    // 开始答题按钮
    getQuestion() {
      this.$http
        .get(`/categories/${this.$route.query.id}/questions?type=${this.type}`)
        .then(res => {
          this.questions = res.data.data;
        });
    }
  }
};
</script>

<style>
.question .ti {
  padding: 15px;
}
.question .van-radio {
  margin-bottom: 10px;
}
.info,
.warning {
  margin-left: 15px;
  margin-top: 10px;
}
.tag {
  margin-left: 15px;
  margin-top: 10px;
}
</style>
