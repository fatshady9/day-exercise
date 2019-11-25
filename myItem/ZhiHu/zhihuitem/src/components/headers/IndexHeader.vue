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
            <li id="nav_index" class="active-link">
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
              <el-button type="primary" id="ques-button" @click="dialogVisible = true">提问</el-button>
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
            <li id="index_logo">
              <a href>
                <img
                  width="70px"
                  style="display:block;margin-top:8px"
                  src="../../assets/IndexLogo.png"
                  alt
                />
              </a>
            </li>
            <li id="index_recommend" class="active">
              <a class="active" href="/">推荐</a>
            </li>
            <li id="index_hot">
              <a href="/hot">热榜</a>
            </li>
          </ul>
          <ul class="nav-right down_list">
            <li id="index_ques">
              <el-button type="primary" id="ques-button">提问</el-button>
            </li>
            <li id="index_search">
              <el-input placeholder="搜索你感兴趣的内容..." v-model="searchStr" class="input-with-select">
                <el-button slot="append" icon="el-icon-search"></el-button>
              </el-input>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- 提问框 -->
    <el-dialog title :visible.sync="dialogVisible" width="40%">
      <el-form :model="questionForm">
        <div class="quiz">
          <a href>
            <img src="../../assets/img/table/ia_100000000.jpg" alt height="40px" width="40px" />
          </a>

          <textarea
            class="quiz-text"
            required
            maxlength="50"
            rows="1"
            placeholder="写下你的问题，准确的描述问题更容易得到解答"
            v-model="questionForm.question"
          ></textarea>
        </div>
        <div class="describe">
          <textarea
            name
            id="textea"
            cols="46"
            rows="7"
            placeholder="输入问题背景、条件等详细信息（选填）"
            v-model="questionForm.discribe"
          ></textarea>
        </div>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button type="primary" @click="showQuestion">发布问题</el-button>
      </span>
    </el-dialog>
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
      rollStatus: "down",
      dialogVisible: false,
      // 添加提问
      questionForm: {
        question: "",
        discribe: ""
      }
    };
  },
  methods: {
    pullDown() {
      let that = this;
      window.addEventListener("scroll", function() {
        let nowY = document.documentElement.scrollTop;
        let beforeY = that.beforeY;
        // 差值
        let differ = nowY - beforeY;
        // 最大差值
        let maxDif = 60;
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
    },
    handleClose(done) {
      this.$confirm("确认关闭？")
        .then(_ => {
          done();
        })
        .catch(_ => {});
    },

    async showQuestion() {
      console.log(this.questionForm);

      this.dialogVisible = !this.dialogVisible;
      let user = window.sessionStorage.getItem("user");
      user = JSON.parse(user);
      // console.log(user);
      let user_id = user.id;
      let question = this.questionForm.question;
      let discribe = this.questionForm.discribe;
      var params = new URLSearchParams();
      params.append("user_id", user_id);
      params.append("question", question);
      params.append("discribe", discribe);
      const { data: res } = await this.$http.post("question", params);
      console.log(res);
      if (res.code != 200) {
        return this.$message.error("添加失败！");
      } else {
        this.questionForm.question = "";
        this.questionForm.discribe = "";
        window.location.href = `/question/${res.ques_id}`;
        return;
      }
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
  z-index: 2005;
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
  .nav-left.down_list {
    font-size: 16px;

    a {
      color: #444;
    }

    a.active {
      color: #0084ff;
    }
  }
  .nav-right.down_list {
    height: 52px;
    line-height: 52px;
  }
  .down_list li .active {
    color: #0084ff;
  }
  li#index_search {
    margin-right: 20px;
  }
}

.el-form .quiz {
  margin-top: -60px;
  padding-bottom: 20px;
  .quiz-text {
    font-size: 18px;
    border-style: none;
    overflow: hidden;
    width: 415px;
    outline: none;
    line-height: 53px;
    padding-left: 8px;
    // font-weight: bold;
    color: #8e98ac;
    font-family: "Microsoft YaHei";
  }
}
.el-form .describe {
  height: 103px;
  overflow: hidden;
}
.el-form #textea {
  border-radius: 3px;
  font-size: 18px;
  color: #8590a6;
  font-family: "Microsoft YaHei";
  padding-top: 9px;
  padding-left: 14px;
  width: 100%;
  box-sizing: border-box;
  height: 100%;
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