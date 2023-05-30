# 建表脚本
# @author <a href="https://github.com/liyupi">程序员鱼皮</a>
# @from <a href="https://yupi.icu">编程导航知识星球</a>

-- 创建库
create database if not exists my_db;

-- 切换库
use my_db;

-- 用户表
create table if not exists user
(
    id           bigint auto_increment comment 'id' primary key,
    userAccount  varchar(256)                           not null comment '账号',
    userPassword varchar(512)                           not null comment '密码',
    unionId      varchar(256)                           null comment '微信开放平台id',
    mpOpenId     varchar(256)                           null comment '公众号openId',
    userName     varchar(256)                           null comment '用户昵称',
    userAvatar   varchar(1024)                          null comment '用户头像',
    userProfile  varchar(512)                           null comment '用户简介',
    userRole     varchar(256) default 'user'            not null comment '用户角色：user/admin/ban',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除',
    index idx_unionId (unionId)
) comment '用户' collate = utf8mb4_unicode_ci;

-- 创建用户表数据
INSERT INTO user (userAccount, userPassword, unionId, mpOpenId, userName, userAvatar, userProfile, userRole, createTime, updateTime, isDelete) VALUES
                                                                                                                                                ('张三', 'pass123', '111111', '222222', '张三', 'https://example.com/avatar1.jpg', '我是一名全栈工程师，热衷于前后端开发。我擅长使用JavaScript和React构建出漂亮且交互丰富的用户界面，同时也具备后端开发的能力，熟悉Node.js和数据库管理。通过不断学习和实践，我不断提升自己的技术水平，追求编写高质量、可扩展和易维护的代码。', 'user', '2023-05-29 10:00:00', '2023-05-29 10:00:00', 0),
                                                                                                                                                ('李小明', 'securepass', '333333', '444444', '李小明', 'https://example.com/avatar2.jpg', '我是一名数据科学家，专注于数据分析和机器学习。我喜欢从数据中发现有意义的模式和洞察，并将它们转化为实际应用。我熟悉Python和R编程语言，经常使用常见的数据科学工具和库，如Pandas、Scikit-learn和TensorFlow。我不断探索新的算法和技术，以应对各种数据挖掘和预测挑战。', 'user', '2023-05-29 11:30:00', '2023-05-29 11:30:00', 0),
                                                                                                                                                ('王晓红', 'password123', '555555', '666666', '王晓红', 'https://example.com/avatar3.jpg', '我是一名移动应用开发者，专注于iOS平台。我热衷于创建用户友好且功能强大的移动应用程序，擅长使用Swift和Xcode进行开发。我注重细节和用户体验，努力提供高质量的应用。同时，我也对跨平台开发框架如React Native和Flutter有所了解，以便更好地满足不同平台的需求。', 'user', '2023-05-29 12:45:00', '2023-05-29 12:45:00', 0),
                                                                                                                                                ('刘伟', 'pass456', '777777', '888888', '刘伟', 'https://example.com/avatar4.jpg', '我是一名后端开发工程师，专注于构建可靠和高性能的服务器端应用。我精通Java和Spring框架，熟悉数据库设计和优化。我喜欢解决复杂的业务逻辑和性能挑战，并通过编写可测试和可扩展的代码来保证系统的稳定性和可维护性。我也对微服务架构和云原生应用有浓厚的兴趣，不断探索新的技术趋势和最佳实践。', 'user', '2023-05-29 14:00:00', '2023-05-29 14:00:00', 0),
                                                                                                                                                ('赵丽', 'pass789', '999999', '000000', '赵丽', 'https://example.com/avatar5.jpg', '我是一名前端工程师，对于构建现代化的Web应用充满激情。我精通HTML、CSS和JavaScript，熟悉常见的前端框架和库，如React和Vue。我注重用户界面的设计和交互体验，并关注前端性能和优化。我积极跟踪前端技术的最新动态，不断学习和尝试新的工具和技术来提升我的开发效率和质量。', 'user', '2023-05-29 15:30:00', '2023-05-29 15:30:00', 0),
                                                                                                                                                ('陈磊', 'password567', '111222', '333444', '陈磊', 'https://example.com/avatar6.jpg', '我是一名网络安全专家，致力于保护系统和数据的安全性。我熟悉常见的安全漏洞和攻击技术，并具备渗透测试和漏洞分析的能力。我善于编写安全性代码和配置安全策略，以保障系统的完整性和机密性。我也关注最新的安全威胁和防护措施，努力保持对网络安全领域的敏锐性和专业知识。', 'user', '2023-05-29 17:00:00', '2023-05-29 17:00:00', 0),
                                                                                                                                                ('宋艳', 'securepass', '333444', '555666', '宋艳', 'https://example.com/avatar7.jpg', '我是一名数据工程师，专注于构建和管理大规模数据处理系统。我熟悉Hadoop生态系统和Spark等大数据技术，擅长设计和优化数据流程和数据仓库。我也具备数据清洗和挖掘的能力，善于从海量数据中提取有价值的信息。我追求数据的准确性和可靠性，并致力于提供高效和可扩展的数据解决方案。', 'user', '2023-05-29 18:30:00', '2023-05-29 18:30:00', 0),
                                                                                                                                                ('吴强', 'password789', '777888', '999000', '吴强', 'https://example.com/avatar8.jpg', '我是一名DevOps工程师，致力于构建自动化和可靠的软件交付流程。我熟悉常见的DevOps工具和技术，如Docker、Kubernetes和Jenkins，能够搭建高效的持续集成和持续交付环境。我注重自动化和监控，以确保应用程序的高可用性和性能。我积极推动团队协作和文化变革，努力实现快速交付和稳定运维。', 'user', '2023-05-29 20:00:00', '2023-05-29 20:00:00', 0),
                                                                                                                                                ('徐静', 'pass123456', '222333', '444555', '徐静', 'https://example.com/avatar9.jpg', '我是一名人工智能工程师，专注于机器学习和深度学习领域。我热衷于训练和优化神经网络模型，解决各种复杂的人工智能任务。我熟悉Python和常见的深度学习框架，如TensorFlow和PyTorch。我也对自然语言处理和计算机视觉有浓厚的兴趣，并致力于将人工智能技术应用于实际场景中。', 'user', '2023-05-29 21:30:00', '2023-05-29 21:30:00', 0),
                                                                                                                                                ('黄强', 'securepass123', '555666', '777888', '黄强', 'https://example.com/avatar10.jpg', '我是一名区块链开发者，专注于构建安全和可靠的分布式应用程序。我熟悉以太坊和超级账本等主流区块链平台，并具备智能合约开发的能力。我关注区块链技术的最新进展，并尝试将其应用于金融、供应链和身份验证等领域。我相信区块链有着巨大的潜力，希望通过我的努力推动区块链技术的发展和应用。', 'user', '2023-05-29 23:00:00', '2023-05-29 23:00:00', 0);


-- 帖子表
create table if not exists post
(
    id         bigint auto_increment comment 'id' primary key,
    title      varchar(512)                       null comment '标题',
    content    text                               null comment '内容',
    tags       varchar(1024)                      null comment '标签列表（json 数组）',
    thumbNum   int      default 0                 not null comment '点赞数',
    favourNum  int      default 0                 not null comment '收藏数',
    userId     bigint                             not null comment '创建用户 id',
    createTime datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete   tinyint  default 0                 not null comment '是否删除',
    index idx_userId (userId)
) comment '帖子' collate = utf8mb4_unicode_ci;

-- 帖子点赞表（硬删除）
create table if not exists post_thumb
(
    id         bigint auto_increment comment 'id' primary key,
    postId     bigint                             not null comment '帖子 id',
    userId     bigint                             not null comment '创建用户 id',
    createTime datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    index idx_postId (postId),
    index idx_userId (userId)
) comment '帖子点赞';

-- 帖子收藏表（硬删除）
create table if not exists post_favour
(
    id         bigint auto_increment comment 'id' primary key,
    postId     bigint                             not null comment '帖子 id',
    userId     bigint                             not null comment '创建用户 id',
    createTime datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    index idx_postId (postId),
    index idx_userId (userId)
) comment '帖子收藏';
