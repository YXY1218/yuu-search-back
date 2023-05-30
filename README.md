# 项目介绍
🔍An aggregated search platform based on the computer industry 
此项目是一个聚合搜索平台，是一个计算机学习的交流平台，用户可以搜索文章、图片、平台用户信息。
🚀这是项目的后端部分。

## SpringBoot 
本项目基于 Java SpringBoot 的项目初始模板二次开发。

## 功能特点
1.基本数据源的增删改查
2.实现多类数据源的整体搜索
使用门面模式在后端对各类数据源的搜索结果进行聚合，统返回给前端，减少了前端请求次数 (N 次到 1 次) 以及前端开发复杂度。
3.使用爬虫技术实现数据源获取
a.使用 HttpClient 请求 离线 获取外部网站的文章，并使用 Hutool 的JSONUtil 解析和预外理文章，最终入库。
b.使用isoup 实时 请求 bing 搜索接口获取图片，并使用 CSS Selector 语法解析和预处理图片信息，最终返回给前端.

## 使用技术
- Spring Boot
- Spring MVC
- MyBatis + MyBatis Plus 数据访问
- Spring Boot 调试工具和项目处理器
- Spring AOP 切面编程
- Spring Scheduler 定时任务
- Spring 事务注解

### 数据存储
- MySQL 数据库
- Redis 内存数据库

### 工具类

- Easy Excel 表格处理
- Hutool 工具库
- Gson 解析库
- Apache Commons Lang3 工具类
- Lombok 注解

### 业务特性
- Spring Session Redis 分布式登录
- 全局请求响应拦截器（记录日志）
- 全局异常处理器
- 自定义错误码
- 封装通用响应类
- Swagger + Knife4j 接口文档
- 自定义权限注解 + 全局校验
- 全局跨域处理
- 长整数丢失精度解决
- 多环境配置



