<template>
  <!-- 编辑个人资料 -->
  <div class="useredit">
    <userHeader></userHeader>
    <div class="profile_header">
      <div class="card">
        <!-- 封面图片 -->
        <div class="cover">
          <div class="cover_editor">
            <label>
              <button>
                <svg
                  viewBox="0 0 20 16"
                  class="Icon Icon--camera Icon--left"
                  width="14"
                  height="16"
                  aria-hidden="true"
                  style="height: 16px; width: 14px;"
                >
                  <title />
                  <g>
                    <path
                      d="M18.094 2H15s-1-2-2-2H7C6 0 5 2 5 2H2C0 2 0 3.967 0 3.967V14c0 2 2.036 2 2.036 2H17c3 0 3-1.983 3-1.983V4c0-2-1.906-2-1.906-2zM10 12c-1.933 0-3.5-1.567-3.5-3.5S8.067 5 10 5s3.5 1.567 3.5 3.5S11.933 12 10 12zm0 1.5c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm7.5-8c-.552 0-1-.448-1-1s.448-1 1-1 1 .448 1 1-.448 1-1 1z"
                      fill-rule="evenodd"
                    />
                  </g>
                </svg>编辑封面图片
              </button>
            </label>
            <div class="cover_img">
              <img src="../assets/img/wxy/cover1.jpg" alt="封面图片" />
            </div>
          </div>
        </div>
        <!-- 个人资料 -->
        <div class="wrapper">
          <div class="wmain">
            <!-- 头像 -->
            <div class="avatar">
              <div class="user_avatar">
                <img  src="../assets/touxiang.jpg" alt="头像" />
              </div>
            </div>
            <!-- 修改 -->
            <div class="content">
              <div class="contentHead">
                <!-- 昵称 -->
                <h1 class="title">
                  <div class="editable" @mouseover="Opcshow" @mouseleave="Opchide">
                    <span class="name">{{nickname}}</span>
                    <button
                      type="button"
                      class="button edit-button opc0"
                      @click="editNickname = true"
                      v-show="Opc"
                    >
                      <svg
                        viewBox="0 0 12 12"
                        class="Icon ModifyButton-icon Icon--modify"
                        width="12"
                        height="16"
                        aria-hidden="true"
                        style="height: 16px; width: 12px;"
                      >
                        <title />
                        <g>
                          <path
                            d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z"
                            fill-rule="evenodd"
                          />
                        </g>
                      </svg>修改
                    </button>
                  </div>
                </h1>
                <!-- 返回主页 -->
                <div class="ProfileHeader-expandActions ProfileEdit-expandActions">
                  <a type="button" class="Button Buttonplain" @click="goUser">
                    返回我的主页
                    <svg
                      viewBox="0 0 10 6"
                      class="Icon ProfileEdit-arrowIcon Icon--arrow"
                      width="10"
                      height="16"
                      aria-hidden="true"
                      style="height: 16px; width: 10px;"
                    >
                      <title />
                      <g>
                        <path
                          d="M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z"
                        />
                      </g>
                    </svg>
                  </a>
                </div>
              </div>
              <div class="fields">
                <form class="field">
                  <h3 class="field-label">一句话介绍</h3>
                  <div class="field-content">
                    <div style="display: block">
                      <span class="field-text">
                        <span class="ztext">{{sign}}</span>
                      </span>
                      <button
                        type="button"
                        class="button edit-button btnmg"
                        @click="editSign = true"
                      >
                        <svg
                          viewBox="0 0 12 12"
                          class="Icon ModifyButton-icon Icon--modify"
                          width="12"
                          height="16"
                          aria-hidden="true"
                          style="height: 16px; width: 12px;"
                        >
                          <title />
                          <g>
                            <path
                              d="M.423 10.32L0 12l1.667-.474 1.55-.44-2.4-2.33-.394 1.564zM10.153.233c-.327-.318-.85-.31-1.17.018l-.793.817 2.49 2.414.792-.814c.318-.328.312-.852-.017-1.17l-1.3-1.263zM3.84 10.536L1.35 8.122l6.265-6.46 2.49 2.414-6.265 6.46z"
                              fill-rule="evenodd"
                            />
                          </g>
                        </svg>修改
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 修改呢称 -->
    <el-dialog title="修改呢称" :visible.sync="editNickname" width="30%">
      <el-form
        :model="editRolesForm"
        :rules="editRolesFormRules"
        ref="editRolesFormRef"
        label-width="80px"
      >
        <el-form-item label="昵称" prop="nickname">
          <el-input v-model="editRolesForm.nickname"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="editNickname = false">取 消</el-button>
        <el-button type="primary" @click="updateRoles">确 定</el-button>
      </span>
    </el-dialog>

    <!-- 修改签名 -->
    <el-dialog title="签名" :visible.sync="editSign" width="30%">
      <el-form
        :model="editSignForm"
        :rules="editSignFormRules"
        ref="editSignFormRef"
        label-width="80px"
      >
        <el-form-item label="介绍" prop="sign">
          <el-input v-model="editSignForm.sign"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="editSign = false">取 消</el-button>
        <el-button type="primary" @click="updateEditSign">确 定</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
import userHeader from "./headers/UserHeader";
export default {
  data() {
    return {
      Opc: false,
      OpcSign: false,
      nickname: "",
      sign: "",
      editSign: false,
      editNickname: false,
      // 编辑数据对象
      editRolesForm: {
        nickname: ""
      },
      editSignForm: {
        sign: ""
      },
      // 校验
      editRolesFormRules: {
        nickname: [
          { required: true, message: "请输入昵称", trigger: "blur" },
          {
            min: 1,
            max: 12,
            message: "昵称长度在 1 到 12 个字符",
            trigger: "blur"
          }
        ]
      },
      editSignFormRules: {
        sign: [
          { required: true, message: "请输入介绍", trigger: "blur" },
          {
            min: 1,
            max: 50,
            message: "昵称长度在 1 到 50 个字符",
            trigger: "blur"
          }
        ]
      }
    };
  },
  methods: {
    Opcshow() {
      this.Opc = true;
    },
    Opchide() {
      this.Opc = false;
    },
    async getUser() {
      let user = window.sessionStorage.getItem("user");
      user = JSON.parse(user);
      const { data: res } = await this.$http.get(`/user/${user.id}`);
      // console.log(res.data.nickname);
      this.nickname = res.data.nickname;
      this.sign = res.data.sign;
    },
    goUser() {
      this.$router.push(`/user`);
    },
    // 更新数据信息
    updateRoles() {
      this.$refs.editRolesFormRef.validate(async valid => {
        //  console.log(valid);
        // 验证没有通过 那么就让程序立即停止
        if (!valid) return;
        let user = window.sessionStorage.getItem("user");
        user = JSON.parse(user);
        // 保存数据
        var params = new URLSearchParams();
        params.append("nickname", this.editRolesForm.nickname);
        const { data: res } = await this.$http.put(`user/${user.id}`, params);
        user.nickname = this.editRolesForm.nickname;
        // window.sessionStorage.removeItem("user");
        // window.sessionStorage.setItem("user",user);
        // console.log(user.id);
        this.editNickname = false;
        this.getUser();
      });
    },
    // 更新介绍
    updateEditSign(){
       this.$refs.editSignFormRef.validate(async valid => {
        // 验证没有通过 那么就让程序立即停止
        if (!valid) return;
        let user = window.sessionStorage.getItem("user");
        user = JSON.parse(user);
        // 保存数据
        var params = new URLSearchParams();
        params.append("sign", this.editSignForm.sign);
        const { data: res } = await this.$http.put(`user/${user.id}`, params);
        // console.log(user.id);
        this.editSign = false;
        this.getUser();
      });
    }
  },
  created() {
    this.getUser();
  },
  components: {
    userHeader
  }
};
</script>

<style lang="less" scoped>
.Icon {
  vertical-align: text-bottom;
  fill: currentColor;
}

.profile_header {
  position: relative;
  width: 1000px;
  padding: 0 16px;
  margin: 62px auto 0px;

  .cover_editor {
    position: relative;

    label {
      cursor: pointer;

      button {
        position: absolute;
        top: 24px;
        right: 24px;
        z-index: 2;
        color: hsla(0, 0%, 100%, 0.42);
        border: 1px solid hsla(0, 0%, 100%, 0.24);
        background-color: transparent;
        outline: none; // 去除默认点击蓝框
        display: inline-block;
        padding: 0 16px;
        font-size: 14px;
        line-height: 32px;
        text-align: center;
        cursor: pointer;
        border-radius: 3px;
      }

      .Icon--left {
        margin-right: 6px;
      }
    }

    .cover_img {
      position: relative;
      height: 240px;
      overflow: hidden;
      background: #f6f6f6;
      border-top-right-radius: 1px;
      border-top-left-radius: 1px;

      img {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
    }
  }

  .wrapper {
    position: relative;
    width: 100%;
    background: #fff;
    box-sizing: border-box;

    .wmain {
      position: relative;
      margin: 0 20px 24px;

      .avatar {
        position: absolute;
        top: -13px;
        left: 0;
        z-index: 1;
        text-align: left;
        cursor: pointer;

        .user_avatar img {
          display: inline-block;
          width: 160px;
          height: 160px;
          overflow: hidden;
          vertical-align: top;
          background-color: #fff;
          border: 4px solid #fff;
          border-radius: 8px;
        }
      }
    }
  }

  .button {
    display: inline-block;
    padding: 0 16px;
    font-size: 14px;
    line-height: 32px;
    color: #8590a6;
    text-align: center;
    cursor: pointer;
    background: none;
    border: 1px solid;
    border-radius: 3px;
  }

  .content {
    padding-top: 16px;
    padding-left: 32px;
    border-left: 164px solid transparent;

    .edit-button {
      font-weight: 400;
      position: absolute;
      margin-left: 16px;
      margin-top: 9px;
      line-height: inherit;
      transition: opacity 0.1s;
      font-size: 15px;
      color: #175199;
      height: auto;
      padding: 0;
      background-color: transparent;
      border: none;
      border-radius: 0;
      outline: none; // 去除默认点击蓝框
    }

    .contentHead {
      position: relative;
      padding-right: 106px;
      margin-bottom: 16px;

      .title {
        flex: 1 1;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;

        .editable {
          display: inline-block;
          padding-right: 80px;

          .name {
            display: inline-block;
            height: 30px;
            max-width: 400px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-size: 26px;
            font-weight: 600;
            line-height: 30px;
          }

          //   .opc0 {
          //     opacity: 1;
          //   }

          .ModifyButton-icon {
            margin-right: 4px;
            fill: currentColor;
          }

          .Icon {
            vertical-align: text-bottom;
            fill: currentColor;
          }
        }
      }

      .ProfileEdit {
        width: 1000px;
        padding: 0 16px;
        margin: 14px auto;
        font-size: 15px;
        color: #1a1a1a;
      }

      .Buttonplain {
        height: auto;
        padding: 0;
        line-height: inherit;
        background-color: transparent;
        border: none;
        border-radius: 0;
      }

      .Button {
        display: inline-block;
        font-size: 14px;
        color: #8590a6;
        text-align: center;
        cursor: pointer;
        background: none;
      }

      .ProfileEdit-expandActions {
        bottom: auto;
      }

      .Buttonplain {
        position: absolute;
        top: 8px;
        right: 0;
      }
    }

    .fields {
      padding-bottom: 100px;
      margin-top: 10px;

      .field-content {
        padding: 0 64px 0 140px;
        line-height: 36px;
      }

      .btnmg {
        margin: 0px;
        display: none;
        margin-left: 16px;
      }

      .ztext {
        word-break: break-word;
        line-height: 1.6;
      }

      .field {
        padding: 30px 0;
        border-bottom: 1px solid #ebebeb;

        .field-label {
          position: absolute;
          font-size: 15px;
          font-weight: 600;
          line-height: 36px;
          color: #444;
          margin: 0;
        }

        .field-content {
          padding: 0 64px 0 140px;
          line-height: 36px;
        }
      }
    }
    .fields:hover {
      button {
        display: inline;
      }
    }
  }
}

.card {
  margin-bottom: 10px;
  background: #fff;
  overflow: hidden;
  border-radius: 2px;
  box-shadow: 0 1px 3px rgba(26, 26, 26, 0.1);
  box-sizing: border-box;
}

.el-tab-pane {
  margin-bottom: 10px;
}
</style>