<template>
  <div>
    <errorHeader></errorHeader>
    <div class="area">
      <ul>
        <li class="line1">请求错误</li>
        <li class="line2">无法访问当前页面</li>
        <li class="line3">
          <el-button type="primary" size="small" onclick="window.location.href='/'">去往首页</el-button>
        </li>
      </ul>
      <div class="img">
        <img src="../assets/img/error/liukanshan_wire.e7247fbf.svg" alt />
      </div>
    </div>
  </div>
</template>

<script>
import errorHeader from "../components/headers/UserHeader";
export default {
  data() {
    return {};
  },
  methods: {
  },
  components: {
    errorHeader
  },
  created(){
    document.title = "Error - 知乎"
  }
};
</script>

<style scoped lang="less">
html {
  background-color: #fff;
}
.area {
  width: 1000px;
  margin: auto;
  position: relative;
  ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
    position: absolute;
    top: 222px;
    left: 175px;

    li {
      margin-top: 9px;
    }
    .line1 {
      font-size: 41px;
      font-weight: 550;
      color: #646464;
    }
    .line3 {
      margin-top: 18px;
    }
  }

  div.img {
    width: 220px;
    height: 220px;
    position: absolute;
    top: 189px;
    right: 144px;
  }
}
</style>