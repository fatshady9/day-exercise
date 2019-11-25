<template>
  <!-- 顶部导航栏 -->
  <div id="top-nav">
    <div class="nav-area">
      <div class="nav-area-inner" ref="nav_area">
        <!-- 导航栏变化前显示的 -->
        <div class="nav-area1 clear">
          <ul class="nav-left">
            <li id="nav_logo">
              <a href="/">
                <img
                  width="70px"
                  style="display:block;margin-top:8px"
                  src="../../assets/IndexLogo.png"
                  alt
                />
              </a>
            </li>
            <li id="nav_index">
              <a href="/">首页</a>
            </li>
            <li id="nav_explore">
              <a href="/explore">发现</a>
            </li>
            <li id="nav_waiting">
              <a href="/waiting">等你来答</a>
            </li>
            <li id="nav_search">
              <el-input placeholder="搜索你感兴趣的内容..." v-model="searchStr" class="input-with-select">
                <el-button slot="append" icon="el-icon-search"></el-button>
              </el-input>
            </li>
            <li id="nav_ques">
              <el-button type="primary" id="ques-button">提问</el-button>
            </li>
          </ul>
          <ul class="nav-right">
            <li id="nav_user">
              <el-popover placement="bottom" width="40" trigger="click">
                <div class="user_vatitor" slot="reference">
                  <img src="../../assets/logo.png" alt width="25px" style="border-radius:50%" />
                </div>
                <ul class="user_operation">
                  <li>
                    <a href="/user">
                      <i class="el-icon-user-solid"></i>&nbsp;
                      我的主页
                    </a>
                  </li>
                  <li>
                    <a href="/setting">
                      <i class="el-icon-s-tools"></i>
                      设置
                    </a>
                  </li>
                  <li>
                    <a href="/exit">
                      <i class="el-icon-switch-button"></i>
                      退出
                    </a>
                  </li>
                </ul>
              </el-popover>
            </li>
          </ul>
        </div>

        <!-- 导航栏变化后显示的 -->
        <!-- 在这里输入你想要的内容 -->
        <div class="nav-area2 clear">
          <ul class="nav-left down_list">
            <li id="nav_logo">
              <span v-html="headerTittle"></span>
            </li>
          </ul>
          <ul class="nav-right down_list">
            <li id="down_nav_answer">
              <el-button icon="el-icon-edit">写回答</el-button>
            </li>
            <li id="down_nav_attention">
              <el-button type="primary">关注问题</el-button>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchStr: "",
      // 顶部滚动之前的y轴距离
      beforeY: 0,
      // 滚动状态
      rollStatus: "down"
    };
  },
  props:["headerTittle"],
  methods: {
    pullDown() {
      let that = this;
      window.addEventListener("scroll", function() {
        let nowY = document.documentElement.scrollTop;
        let beforeY = that.beforeY;
        // 差值
        let differ = nowY - beforeY;
        // 最大差值
        let maxDif = 200;
        // console.log(nowY + "----" + beforeY + "====" + differ);
        // 当下滑(nowY > beforeY)时，且显示状态也是下滑时，beforeY值变为nowY
        if (nowY > beforeY && that.rollStatus == "down") {
          that.beforeY = nowY;
          return;
        }
        // 当下滑(nowY < beforeY)时，且显示状态也是上滑时，beforeY值变为nowY
        if (nowY < beforeY && that.rollStatus == "up") {
          that.beforeY = nowY;
          return;
        }
        // 当下滑(nowY > beforeY)时，但显示状态是上滑时
        if (nowY > beforeY && that.rollStatus == "up") {
          if (differ > maxDif) {
            // console.log("改变状态至---下滑");
            that.rollStatus = "down";
            that.$refs.nav_area.style.top = "-52px";
          }
          return;
        }
        // 当下滑(nowY < beforeY)时，但显示状态是下滑时
        if (nowY < beforeY && that.rollStatus == "down") {
          let differ = nowY - beforeY;
          if (differ < -maxDif) {
            // console.log("改变状态至+++上滑");
            that.rollStatus = "up";
            that.$refs.nav_area.style.top = "0px";
          }
          return;
        }
      });
    }
  },
  created() {
    this.pullDown();
  }
};
</script>

<style scoped lang="less">
#top-nav {
  position: fixed;
  top: 0px;
  left: 0px;
  width: 100%;
  // height: 52px;
  // overflow: hidden;
  z-index: 99;
  background-color: #fff;
  box-shadow: 0px -3px 5px rgb(0, 0, 0);
  font-size: 15px;
}

.clear::after {
  content: "";
  display: block;
  clear: both;
}

.nav-area {
  width: 1000px;
  height: 52px;
  margin: auto;
  position: relative;
  overflow: hidden;

  .nav-area-inner {
    position: absolute;
    top: 0px;
    left: 0px;
    transition: 300ms;
    width: 100%;
  }

  ul.nav-left {
    height: 100%;
    float: left;
    list-style: none;
    margin: 0;
    padding: 0;

    li {
      float: left;
      height: 52px;
      line-height: 52px;
      margin: 0 17px;
      color: #8590a6;

      a {
        display: block;
        height: 100%;
        color: #8590a6;
      }
    }

    li.active-link {
      font-weight: 550;
      color: #111;
      border-bottom: 3px #0084ff solid;
      box-sizing: border-box;

      a {
        color: #111;
      }
    }

    li:hover {
      a {
        color: #444444;
      }
    }

    li#nav_logo {
      margin-left: 0;
    }

    li#nav_ques {
      margin-left: 20px;
    }
    li#nav_search {
      margin-right: 0px;
      width: 300px;
    }

    // .el-select .el-input {
    // width: 200px;
    // }
    .input-with-select .el-input-group__prepend {
      background-color: #fff;
    }

    .el-button#ques-button {
      height: 40px;
      line-height: 0;
    }
  }

  ul.nav-right {
    height: 100%;
    float: right;
    list-style: none;
    margin: 0;
    padding: 0;

    li {
      float: right;
    }

    div.user_vatitor {
      width: 25px;
      height: 25px;
      margin-top: 15px;
      overflow: hidden;
      cursor: pointer;
    }
  }
}
.nav-area2 {
  .nav-left.down_list li span{
    font-size: 22px;
    font-weight: 550;
    color: #111;
    cursor: pointer;
  }
  .nav-right.down_list {
    height: 52px;
    line-height: 52px;

    #down_nav_answer {
      margin-left: 20px;
    }
    #down_nav_answer .el-button {
      color:#0084ff;
      border:1px solid #0084ff;
    }
  }
}
div.user_vatitor {
  width: 25px;
  height: 25px;
  margin-top: 15px;
  overflow: hidden;
  cursor: pointer;
  padding-bottom: 10px;
}
.user_operation {
  li {
    text-align: left;
    text-indent: 10px;
    line-height: 36px;
    height: 36px;
    color: #8590a6;
    font-size: 14px;
    cursor: pointer;
  }
  li:hover {
    background-color: #f6f6f6;
  }
}
</style>
<style>
.el-popover {
  min-width: 130px;
  padding: 5px 0px;
}
</style>