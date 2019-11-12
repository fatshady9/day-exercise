<template>
  <div class="index">
    <van-nav-bar title="选择题目分类" />
    <van-grid>
      <van-grid-item
        v-for="(item, index) in categories"
        :key="index"
        :text="item.cat_name"
        :to="'/question?id=' + item.id + '&cat_name=' + item.cat_name"
      />
    </van-grid>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // 所有分类数组
      categories: []
    };
  },
  methods: {},
  created() {
    // 渲染分类数据
    this.$http.get("/categories").then(res => {
      // console.log(res);
      this.categories = res.data.data;
    });
  }
};
</script>
