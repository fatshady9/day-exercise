import Vue from 'vue'
import Router from 'vue-router'
import Home from './components/BookStore'
import ElementUI from "element-ui";
import "element-ui/lib/theme-chalk/index.css";
Vue.use(ElementUI);

// 引入全局css
import "../src/assets/css/base.css";


Vue.use(Router)

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    // 首页
    {
      path: '/',
      name: 'home',
      component: () => import('./views/Index.vue'),

    },
    // 发现页面
    {
      path: '/explore',
      component: () => import('./views/Explore.vue')
    },
    // 等你来答
    {
      path: '/waiting',
      component: () => import('./views/Waiting.vue')
    },
    // 问题页
    //     // 含所有答案的问题页面
    {
      path: '/question/:qid',
      component: () => import('./views/QuestionAll.vue')
    },
    // 指定答案的问题页面
    {
      path: '/question/:qid/answer/:aid',
      component: () => import('./views/QuestionAnswer.vue')
    },
    // 设置页
    {
      path: '/setting',
      component: () => import("./views/Setting.vue")
    },
    // 个人主页
    {
      path: '/user',
      component: () => import('./views/User.vue')
    },
    // 编辑个人资料
    {
      path: '/user/edit',
      component: () => import('./components/UserEdit.vue')
    },
    // 登录页面
    {
      path: '/login',
      component: () => import('./views/Login.vue')
    },
    // 圆桌
    {
      path: '/table',
      component: () => import('./components/RoundTable.vue')
    },
    // 书店
    {
      path: '/bookstore',
      component: () => import('./components/BookStore.vue')
    },
    // 热榜
    {
      path: '/hot',
      component: () => import('./views/Hot.vue')
    },
    // live
    {
      path: '/live',
      component: () => import('./views/Live.vue')
    },
    {
      path: '/hot',
      component: () => import('./views/Hot.vue')
    },
    // 写作
    {
      path: '/write',
      component: () => import('./components/Write.vue')
    },
    // 付费咨询
    {
      path: '/paid',
      component: () => import('./components/PaidConsulting.vue')
    },
    // 版权服务中心
    {
      path: '/copyright',
      component: () => import('./components/Copyright.vue')
    },
    // 报错时
    {
      path: "/error",
      component: () => import('./views/Error.vue')
    },
    // 站服中心
    {
      path:"/community",
      component: () => import('./components/Community.vue')
    },
    // 查看其他用户页面
    {
      path:"/user/:id",
      component:() => import('./views/OtherUser.vue')
    }

  ]
})

// 路由导航守卫
router.beforeEach((to, from, next) => {
  // 如果是退出
  if (to.path == "/exit") {
    window.sessionStorage.removeItem("token");
    window.sessionStorage.removeItem("user");
    next("/login")
  }
  // 如果是登录 直接放行
  if (to.path == "/login") return next();
  // 如果是别的页面，判断是否登录
  const token = window.sessionStorage.getItem("token");
  // 如果没登录 去登录页面
  if (!token) return next("/login");
  // 否则放行
  next();
})

// 导出路由
export default router;