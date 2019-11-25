-- 创建数据库
create database juejin;
-- 使用数据库
use juejin;
-- 创建注册表
create table zhuce(
    zhu_id int primary key auto_increment comment '注册用户id',
    zhu_username varchar(255) not null comment'注册用户名',
    zhu_password varchar(255) not null comment'注册密码',
    zhu_phonum varchar(255) not null comment'注册手机号',
    zhu_email varchar(255) not null comment'注册邮箱'
);
-- 插入数据
insert into zhuce values
(null,'王明仁','123456','17681358594','123456@qq.com'),
(null,'朱碧莹','654321','12320569704','654321@qq.com'),
(null,'贾炅辉','111111','13389259491','111111@qq.com');

-- 创建个人资料表
-- create table datum (
--     zhu_id int auto_increment comment '注册用户id',
--     dat_avatar varchar(255) default,
--     dat_name varchar(255) not null comment '用户名',
--     dat_profession varchar(255) not null comment '职位',
--     dat_firm varchar(255) not null comment '公司',
--     dat_self varchar(255) not null comment '个人介绍',
--     dat_homepage varchar(255) not null comment '个人主页'
-- );
