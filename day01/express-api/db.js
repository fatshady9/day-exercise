// 引入数据库
const mysql = require('mysql');
// 引入配置文件
const config = require('./config');
// 连接数据库
const connection = mysql.createConnection(config.db);
connection.connect();

// 导出 connection
module.exports = connection