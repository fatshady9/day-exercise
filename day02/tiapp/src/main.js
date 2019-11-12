import Vue from "vue";
import App from "./App.vue";
import router from "./router";

Vue.config.productionTip = false;

// 引入vant
import Vant from "vant";
import "vant/lib/index.css";
Vue.use(Vant);

// 引入mock.js
import "./mock.js";

// 配置axios
import axios from "axios";
axios.defaults.baseURL = "http://localhost:9999/api/v1";
Vue.prototype.$http = axios;

new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
