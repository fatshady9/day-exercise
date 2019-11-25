import Vue from 'vue'
import App from './App.vue'
import router from './router'

import './assets/css/base.css'
Vue.config.productionTip = false
// 引入jquery
import "jquery"
// 
// 配置elementUi
import ElementUI from "element-ui"
import "element-ui/lib/theme-chalk/index.css"


import "./assets/css/base.css"
Vue.use(ElementUI);

// 引入富文本编辑器
import VueQuillEditor from 'vue-quill-editor'
// 富文本编辑器样式
import 'quill/dist/quill.core.css'
import 'quill/dist/quill.snow.css'
import 'quill/dist/quill.bubble.css'

Vue.use(VueQuillEditor);




// 引入全局css
import "./assets/css/base.css"

// 配置axios
import Axios from 'axios';
Vue.prototype.$http = Axios;
Axios.defaults.baseURL = "http://127.0.0.1:9999/api/v1/";

// 年-月-日
Vue.filter('dateTime', (original) => {
  let date = new Date(original);
  let year = date.getFullYear();
  let month = (date.getMonth() + 1).toString().padStart(2, '0');
  let day = date.getDate().toString().padStart(2, '0');
  return `${year}-${month}-${day}`
})

// 年-月-日 时-分-秒
Vue.filter('dateTime2', (original) => {
  let date = new Date(original);
  let year = date.getFullYear();
  let month = (date.getMonth() + 1).toString().padStart(2, '0');
  let day = date.getDate().toString().padStart(2, '0');
  let h = date.getHours();
  let s = date.getMinutes()
  return `${year}-${month}-${day} ${h}:${s}`
})

// 多长时间之前
Vue.filter('dateTime3', (original) => {
  let time = new Date(original).getTime();
  let nowTime = new Date().getTime();

  let differ = Math.ceil((nowTime - time) / 1000);
  let res = 0;

  if (differ < 60) {
    res = differ + "秒前"
  } else if (differ < 3600) {
    res = Math.floor(differ / 60) + "分钟前"
  } else if (differ < 3600 * 24) {
    res = Math.floor(differ / 3600) + "小时前"
  } else {
    res = Math.floor(differ / 3600 / 24) + "天前"
  }

  return res;
})

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')