import Vue from 'vue';
import App from './App.vue';
import router from './router';
import ElementUI from 'element-ui';
// 引入Elementui样式
import 'element-ui/lib/theme-chalk/index.css';
import VueQuillEditor from 'vue-quill-editor'
import tableTree from "vue-table-with-tree-grid";
import echarts from 'echarts'

// 引入echarts
Vue.prototype.$echarts = echarts 
Vue.component("table-tree", tableTree);

// var _ = require('lodash');
// 富文本编辑器样式
import 'quill/dist/quill.core.css'
import 'quill/dist/quill.snow.css'
import 'quill/dist/quill.bubble.css'

Vue.use(VueQuillEditor)
Vue.config.productionTip = false;
// 引入Element-Ui
// 使用 ElementUI
Vue.use(ElementUI);

// 配置axios
import Axios from "axios";
Vue.prototype.$http = Axios;
Axios.defaults.baseURL = "http://127.0.0.1:9999/api/v2";


// 时间过滤器
Vue.filter('dateFormat', (original) => {
  let date = new Date(original*1000);
  let year = date.getFullYear();
  let month = (date.getMonth() + 1).toString().padStart(2, '0');
  let day = date.getDate().toString().padStart(2, '0');
  let hour = date.getHours().toString().padStart(2, '0');
  let minutes = date.getMinutes().toString().padStart(2, '0');
  let result = `${year}-${month}-${day} ${hour}:${minutes}`
  return result
})

// 请求拦截器
Axios.interceptors.request.use(function (config) {
  config.headers.Authorization = window.sessionStorage.getItem("token");
  return config;
}, function (error) {
  // Do something with request error
  return Promise.reject(error);
});

// 引入全局CSS
import './assets/css/global.css'

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
