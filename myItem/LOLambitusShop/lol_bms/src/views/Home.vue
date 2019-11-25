<template>
  <div class="home">
    <el-container>
      <el-header ref="header">
        <div class="sjx"></div>
        <div ref="logo" class="logo"></div>
        <!-- <span>LOL周边商城后台管理系统</span> -->
        <button @click="quitLogin">
          <i class="el-icon-switch-button"></i>
        </button>
        <img class="tx" src="../assets/images/timg.jpg" alt />
      </el-header>

      <el-container>
        <el-aside width="210px">
          <el-menu
            :router="true"
            default-active="1"
            class="el-menu-vertical-demo"
            background-color="#1110"
            text-color="#fbfbfb"
            active-text-color="#e5cb80"
          >
            <el-submenu index="1">
              <template slot="title">
                <i class="el-icon-menu"></i>
                <span>商品管理</span>
              </template>
              <el-menu-item-group>
                <el-menu-item index="/goodsadd">
                  <template slot="title">
                    <i class="el-icon-circle-plus"></i>
                    <span>添加商品</span>
                  </template>
                </el-menu-item>
                <el-menu-item index="goods">
                  <template slot="title">
                    <i class="el-icon-s-data"></i>
                    <span>商品列表</span>
                  </template>
                </el-menu-item>
                <el-menu-item index="/goods_attrs">
                  <template slot="title">
                    <i class="el-icon-s-opportunity"></i>
                    <span>商品属性</span>
                  </template>
                </el-menu-item>
              </el-menu-item-group>
            </el-submenu>
            <el-submenu index="2">
              <template slot="title">
                <i class="el-icon-s-claim"></i>
                <span>订单管理</span>
              </template>
              <el-menu-item-group>
                <el-menu-item index="/goodsorder">
                  <template slot="title">
                    <i class="el-icon-s-data"></i>
                    <span>订单列表</span>
                  </template>
                </el-menu-item>
              </el-menu-item-group>
            </el-submenu>
            
            <!-- <el-menu-item index="2">
              <i class="el-icon-s-claim"></i>
              <span slot="title">订单管理</span>
            </el-menu-item> -->
            <el-menu-item index="/userlist">
              <i class="el-icon-s-custom"></i>
              <span slot="title">用户管理</span>
            </el-menu-item>
          </el-menu>
          <div class="under_text">
            <div class="sjx"></div>
            <div class="under_content">
              <div class="text_1">&nbsp;&nbsp;英雄联盟周边商城</div>
              <div class="text_2">&nbsp;后台管理系统</div>
            </div>
          </div>
        </el-aside>
        <el-main>
          <!--内容 -->
      
          <router-view />
        </el-main>
      </el-container>
    </el-container>
  </div>
</template>
<script>
export default {
  data() {
    return {
      // 左侧菜单 数据
      menusData: [],
      // 图标
      fontsList: [
        "el-icon-user-solid",
        "el-icon-message-solid",
        "el-icon-s-goods",
        "el-icon-s-platform",
        "el-icon-s-order",
        "el-icon-s-data"
      ]
    };
  },
  methods: {
    // 退出
    quitLogin() {
      window.sessionStorage.removeItem("token");
      this.$router.push("/");
    }
  },
  created() {

    // this.$refs.header.style.backgroudColor = "red"
    // document.getElementsByClassName('el-header')[0].style.backgroudColor = "red"
    // window.console.log(this.$refs.header)
    this.$router.push('/main')
  }
};
</script>
<style lang="less" scoped>
.home {
  width: 100%;
  height: 100%;
  background-color: #fff;
  .el-container {
    height: 100%;
  }
}
.el-menu {
  border: none;
}
.el-aside {
  background-color: #2a2a2a;
  position: relative;
}
.el-submenu {
  i {
    background-image: linear-gradient(to right, #ffefaf, #c9b464);
    -webkit-background-clip: text;
    color: transparent;
  }
}
.el-menu-item i {
  // background-image: linear-gradient(to right, #fff, #ffb21e);
  background-image: linear-gradient(to right, #ffefaf, #c9b464);
  -webkit-background-clip: text;
  color: transparent;
}
.el-header {
  background-image: linear-gradient(
    to right,
    #0c0c0c,
    #181818,
    #060606,
    #2d2d2d,
    #444444,
    #5c5c5c,
    #6f6f6f
  );
  background: #616161;
  padding: 0px;
  padding-right: 20px;

  span {
    color: #fff;
    font-size: 24px;
    line-height: 51px;
    margin-left: 14px;
    float: left;
  }
  .logo {
    width: 300px;
    height: 35px;
    float: left;
    margin-top: 12px;
    background-image: url("../assets/images/ico-menu.png");
    background-position: 0px 262px;
  }
  .sjx {
    float: left;
    width: 0px;
    height: 0px;
    border-top: 43px solid #f9e193;
    border-bottom: 25px solid #786a3c;
    border-left: 38px solid #c8b055;
    border-right: 14px solid #9b801f;
    margin-right: 20px;
  }
  img {
    float: right;
    margin-top: 13px;
    width: 35px;
    height: 35px;
    border-radius: 50%;
    margin-right: 20px;
  }
  button {
    padding: 0px;
    margin: 0px;
    border: none;
    margin-top: 13px;
    float: right;
    font-size: 20px;
    width: 35px;
    height: 34px;
    line-height: 30px;
    text-align: center;
    background-image: linear-gradient(
      to right bottom,
      #efe572,
      #f7d76f,
      #ad933f
    );
    color: #fff;
    border-radius: 50%;
  }
}

.under_text {
  position: absolute;
  bottom: 0px;
  left: 0px;
  cursor: pointer;
  .sjx {
    float: left;
    width: 0px;
    height: 0px;
    border-top: 25px solid #ebd692;
    border-bottom: 25px solid #95844c;
    border-left: 15px solid #d4bb5f;
    border-right: 15px solid #c0a74e;
  }
  .under_content {
    float: left;
    height: 50px;
    background-image: linear-gradient(to right, #e9dfbf, #efefef);
    color: #303030;
    font-style: italic;
    font-size: 17px;
    font-weight: 200;
    line-height: 22px;
    padding-top: 3px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    padding-right: 5px;
    z-index: 999;
    margin-right: 0px;
    position: relative;
    width: 180px;
    padding-left: 5px;
  }
}
.under_content::after {
  content: "";
  display: block;
  clear: both;
}
.el-menu-item-group__title {
  padding: 0;
}
</style>


