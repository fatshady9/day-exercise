module.exports = {
  // 控制webpack-dev-server的配置
  devServer: {
    // 自动打开浏览器
    open: true,
    // 热更新
    hot: true
  },
  baseUrl: '/',
  chainWebpack:(config)=>{
    config.plugins.delete('fork-ts-checker') // 禁用fork-ts-checker
  }
}