<template>
  <div class="topn">
    <van-tabs>
      <van-tab title="标签 1">
        <van-row type="flex" justify="center">
          <van-col span="8">span: 6</van-col>
          <van-col span="8">span: 6</van-col>
          <van-col span="8">span: 6</van-col>
        </van-row>
      </van-tab>
      <van-tab title="标签 2">内容 2</van-tab>
      <van-tab title="标签 3">内容 3</van-tab>
      <van-tab title="标签 4">内容 4</van-tab>
    </van-tabs>
  </div>
</template>

<script>
export default {};
</script>

<style>
.topn .van-row {
  margin-top: 20px;
}
.topn .van-col {
  padding: 5px 30px;
  background-color: lightblue;
}
</style>
