import Vue from 'vue'
import Router from 'vue-router'
// import Login from './views/Login.vue'
import Home from './views/Home.vue'
import Main from './components/Main.vue'
Vue.use(Router)

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    // 首页
    {
      path: '/',
      name: 'Login',
      component: Home
    },
    {
      path: "/home",
      component: Home,
      children: [
        {
          path: '/main',
          component: Main
        },
        // 商品列表/商品管理
        {
          path: '/goods',
          component: () => import('./components/Goods.vue')
        },
        // 商品添加
        {
          path: '/goodsadd',
          component: () => import('./components/GoodsAdd.vue')
        },
        // 商品属性
        {
          path: '/goods_attrs',
          component: () => import('./components/GoodsAttrs.vue')
        },
        // 订单列表
        {
          path: '/goodsorder',
          component: () => import('./components/GoodsOrder.vue')
        },
        // 用户列表
        {
          path: '/userlist',
          component: () => import('./components/UserList.vue')
        }
      ]
    },
    {
      path:'/login',
      component:() => import('./views/Login.vue')
    }
  ]
})
router.beforeEach((to, from, next) => {
  // 判断 所去的目标是否是 login
  if (to.path == "/login") {
    // 放行
    return next();
  }
  // 获取 token
  const tokenStr = window.sessionStorage.getItem("token");
  if (!tokenStr) return next("/login");
  // 直接放行
  next();
  
})

window.document.title = '英雄联盟周边商城 - 后台管理系统'

export default router;