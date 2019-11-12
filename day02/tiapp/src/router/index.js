import Vue from "vue";
import VueRouter from "vue-router";
import Index from "../views/Index.vue";

Vue.use(VueRouter);

const routes = [
  // 首页
  {
    path: "/",
    component: Index
  },
  // 登录页
  {
    path: "/login",
    component: () => import("../views/Login.vue")
  },
  // 注册页
  {
    path: "/regist",
    component: () => import("../views/Regist.vue")
  },
  // 修改密码页
  {
    path: "/password",
    component: () => import("../views/Password.vue")
  },
  // 问题页
  {
    path: "/question",
    component: () => import("../views/Question.vue")
  },
  // 排行榜
  {
    path: "/topn",
    component: () => import("../views/Topn.vue")
  },
  // 我
  {
    path: "/me",
    component: () => import("../views/Me.vue")
  }
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes
});

export default router;
