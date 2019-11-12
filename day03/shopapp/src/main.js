import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

// 配置axios
import axios from 'axios'

// 配置vant
import Vant from 'vant'
import 'vant/lib/index.css'

// 引入mock.js
// import './mock'

Vue.config.productionTip = false
axios.defaults.baseURL = 'http://127.0.0.1:9999/api/v1'
Vue.prototype.$http = axios

Vue.use(Vant)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
