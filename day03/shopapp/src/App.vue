<template>
  <div class="app">
    <router-view></router-view>
    <van-tabbar :route="true">
      <van-tabbar-item to="/" icon="home-o">首页</van-tabbar-item>
      <van-tabbar-item icon="search">分类</van-tabbar-item>
      <van-tabbar-item to="/cart" :info="5" icon="shopping-cart-o">购物车</van-tabbar-item>
      <van-tabbar-item icon="manager-o">我的</van-tabbar-item>
    </van-tabbar>
  </div>
</template>

<style>
  .app {
    padding-bottom: 50px;
  }
</style>
