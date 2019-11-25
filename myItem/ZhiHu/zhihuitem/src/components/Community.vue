<template>
  <div>
    <userHeader></userHeader>
    <div class="Community-ContentLayout-mainColumn">
      <div class="Community">
        <el-tabs v-model="activeName" @tab-click="handleClick">
          <el-tab-pane label="我的举报" name="first">
            <div class="Report-tip">截止今日，您累计举报 0 次，其中 0 次被采纳。</div>
            <div class="EmptyState">
              <img src="../assets/img/community/Snipaste_2019-10-17_17-51-39.png" alt />
            </div>
          </el-tab-pane>
          <el-tab-pane label="违规记录" name="second">
            <div class="EmptyState1">
              <img src="../assets/img/community/Snipaste_2019-10-17_17-59-59.png" alt />
            </div>
          </el-tab-pane>
        </el-tabs>
      </div>
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
    handleClick(tab, event) {}
  },
  components: {
    userHeader
  }
};
</script>

<style>
.Community-ContentLayout-mainColumn {
  width: 1000px;
  height: 600px;
  margin: 10px auto;
  border: 1px solid #fff;
  box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1);
  border-radius: 2px;
  margin-top: 62px;
}
.Community {
  min-height: 600px;
  background: #fff;
  position: relative;
  padding-left: 15px;
}
.Report-tip {
  font-size: 12px;
  line-height: 17px;
  color: #999;
  padding: 20px 0 12px 20px;
}
.EmptyState {
  width: 133px;
  height: 133px;
  position: relative;
  left: 450px;
  top: 225px;
}
.Community /deep/ .el-tab-pane {
  width: 100%;
  height: 500px;
}
.EmptyState1 {
  width: 250px;
  height: 250px;
  position: relative;
  left: 408px;
  top: 251px;
}
</style>