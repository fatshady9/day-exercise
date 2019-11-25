<template>
  <div class="waiting">
    <waitingHeader></waitingHeader>
    <div class="area clear">
      <div class="left">
        <div class="ques_classify">
          <el-button round size="small" icon="el-icon-odometer" @click="tab(1)">人气问题</el-button>
          <el-button round size="small" icon="el-icon-date" @click="tab(2)">新问题</el-button>
          <el-button round size="small" icon="el-icon-user" @click="tab(3)">人人答</el-button>
        </div>
        <div class="questions">
          <ul class="infinite-list" v-infinite-scroll="load" style="overflow:auto">
            <li v-for="(i,index) in quesList" :key="index" class="infinite-list-item">
              <div class="question-box">
                <div class="ques_title">
                  <span @click="goPage(i.id)">{{i.question}}</span>
                  <a href="#" class="close_icon" @click="closeBox(i.id)">×</a>
                </div>
                <div class="ques_operations clear">
                  <ul class="opera_left clear">
                    <li class="write_answer">
                      <i class="el-icon-edit"></i>&nbsp;写回答
                    </li>
                    <li>
                      <i class="el-icon-circle-plus-outline"></i>&nbsp;关注问题
                    </li>
                    <li>
                      <i class="el-icon-timer"></i>&nbsp;稍后答
                    </li>
                  </ul>
                  <div class="opera_right">{{i.answer}} 个回答 · {{i.browe}} 个浏览</div>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="right">
        <div class="personal">
          <ul>
            <li onclick="window.location.href='/community'">
              <i class="el-icon-question"></i>
              &nbsp;站务中心
            </li>
            <li onclick="window.location.href='/copyright'">
              <i class="el-icon-question"></i>
              &nbsp;版权服务中心
            </li>
          </ul>
        </div>
        <div class="footer">
          <footer class="Footer">
            <a class="Footer-item" href="#">刘看山</a>
            <span class="Footer-dot"></span>
            <a class="Footer-item" href="#">知乎指南</a>
            <span class="Footer-dot"></span>
            <a class="Footer-item" href="#">知乎协议</a>
            <span class="Footer-dot"></span>
            <a class="Footer-item" href="#">知乎隐私保护指引</a>
            <br />
            <a class="Footer-item" href="#">应用</a>
            <span class="Footer-dot"></span>
            <a class="Footer-item" href="#">工作</a>
            <span class="Footer-dot"></span>
            <button type="button" class="orgCreatebutton">申请开通知乎机构号</button>
            <br />
            <a class="Footer-item" href="#">侵权举报</a>
            <span class="Footer-dot"></span>
            <a class="Footer-item" href="#">网上有害信息举报专区</a>
            <br />
            <a class="Footer-item" href="#">京 ICP 证 110745 号</a>
            <br />
            <a class="Footer-item" href="#">
              <img src="../assets/img/wxy/guohui.png" />京公网安备 11010802010035 号
            </a>
            <br />
            <span class="Footer-item">违法和不良信息举报：010-82716601</span>
            <br />
            <a class="Footer-item" href="#">儿童色情信息举报专区</a>
            <br />
            <a class="Footer-item" href="#">证照中心</a>
            <br />
            <a class="Footer-item" href="#">联系我们</a>
            <span>© 2019 知乎</span>
          </footer>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import waitingHeader from "../components/headers/WaitingHeader";
export default {
  data() {
    return {
      quesList: [],
      order: "browe",
      limit: 10
    };
  },
  methods: {
    async tab(index) {
      let request = "";
      switch (index) {
        case 1:
          this.order = "browe";
          break;

        case 2:
          this.order = "time";
          break;

        case 3:
          this.order = "id";
          break;
      }
      let { data: res } = await this.$http.get("/question_waiting", {
        params: {
          order: this.order,
          limit: this.limit
        }
      });
      console.log(res);
      this.quesList = res.data;
    },
    load() {
      this.rqNum += 2;
    },
    closeBox(id) {
      let theId = this.quesList.findIndex(item => item.id == id);
      this.quesList.splice(theId, 1);
    },
    goPage(id) {
      window.location.href = `/question/${id}`;
      return false;
    }
  },
  components: {
    waitingHeader
  },
  async created() {
    document.title = "等你来答 - 知乎";
    let { data: res } = await this.$http.get("/question_waiting", {
      params: {
        order: this.order,
        limit: this.limit
      }
    });
    console.log(res);
    this.quesList = res.data;
  }
};
</script>

<style scoped lang='less'>
.clear::after {
  display: block;
  content: "";
  clear: both;
}
.area {
  width: 1000px;
  margin: 62px auto;
}
.left {
  width: 696px;
  float: left;
  background-color: #fff;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
}
.ques_classify {
  height: 70px;
  width: 100%;
  border-bottom: 1px solid #f6f6f6;
  line-height: 70px;

  .el-button {
    margin-left: 20px;
    // border:none;
    background-color: #f0f2f4;
  }
}

.right {
  width: 294px;
  float: right;
}
.personal {
  width: 100%;
  padding: 8px 0px;
  background-color: #fff;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
  ul {
    margin: 0;
    padding: 0;
    list-style: none;
    color: #8590a6;

    li {
      height: 40px;
      line-height: 40px;
      padding: 0px 20px;
      font-size: 14px;
      cursor: pointer;
    }

    li:hover {
      background-color: #f6f6f6;
    }
  }
}
.Footer {
  padding: 10px 0 10px 5px;
  font-size: 13px;
  line-height: 2;
  color: #8590a6;

  .Footer-item {
    display: inline-flex;
    align-items: center;
    color: #8590a6;
  }

  .Footer-dot:after {
    margin: 0 5px;
    content: "\B7";
  }

  a:hover {
    color: #175199;
  }

  .orgCreatebutton {
    display: inline-block;
    padding: 0;
    font-size: 14px;
    line-height: 32px;
    color: #8590a6;
    text-align: center;
    cursor: pointer;
    background: none;
    border: none;
    border-radius: 3px;
  }
}
.questions {
  padding: 0px 20px;
}
.question-box {
  padding: 20px 0px;
  border-bottom: 1px solid #f6f6f6;

  .ques_title {
    font-size: 18px;
    font-weight: 550;
    span {
      cursor: pointer;
    }

    .close_icon {
      font-size: 24px;
      font-weight: 500;
      color: #8590a6;
      float: right;
      line-height: 20px;
      display: none;
    }
  }

  .ques_operations {
    margin-top: 20px;
    color: #8590a6;
    font-size: 14px;

    .opera_left {
      list-style: none;
      margin: 0;
      float: left;
      padding: 0;

      li {
        float: left;
        width: 96px;
        height: 30px;
        margin-right: 10px;
        line-height: 30px;
        text-align: center;
        cursor: pointer;
      }

      li.write_answer {
        border: 1px solid #0084ff;
        color: #0084ff;
        border-radius: 2px;
        box-sizing: border-box;
        margin-right: 20px;
        i {
          color: #0084ff;
        }
      }

      li.write_answer:hover {
        background-color: #f0f8ff;
      }
    }

    .opera_right {
      float: right;
    }
  }
}
.question-box:hover {
  .close_icon {
    display: block;
  }
}
</style>