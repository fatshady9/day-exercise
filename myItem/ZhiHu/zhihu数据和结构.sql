/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : zhihu

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 21/10/2019 09:10:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agree
-- ----------------------------
DROP TABLE IF EXISTS `agree`;
CREATE TABLE `agree`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '赞同id',
  `answer_id` int(10) NOT NULL COMMENT '赞同的回答id',
  `user_id` int(10) NOT NULL COMMENT '赞同者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '赞同时间',
  `status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '状态(赞同 0，反对 1)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `赞同的回答id`(`answer_id`) USING BTREE,
  INDEX `赞同者id`(`user_id`) USING BTREE,
  CONSTRAINT `赞同的回答id` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `赞同者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '回答id',
  `ques_id` int(255) NOT NULL COMMENT '回答的问题id',
  `question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题名称',
  `user_id` int(10) NOT NULL COMMENT '回答者id',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答者昵称',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答内容',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回答时间',
  `agree` int(10) NOT NULL DEFAULT 0 COMMENT '赞同数',
  `disagree` int(10) NOT NULL DEFAULT 0 COMMENT '不赞同数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `回答的问题id`(`ques_id`) USING BTREE,
  INDEX `回答者id`(`user_id`) USING BTREE,
  CONSTRAINT `回答的问题id` FOREIGN KEY (`ques_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `回答者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (22, 25, '\nS9 小组赛 SKT 有没有存在打假赛，故意抬一手的嫌疑？', 9, '薛佳昊', '<p>要说嫌疑，那有，肯定有，但谈论这个有什么意义吗？也就是rng粉丝多，这个问题都能提出来，还有这么多人关注</p><p>第一，要不是rng被skt双杀会有这么多事？</p><p>第二，skt演完，你rng把fnc赢了不就完事？</p><p>第三，去年小组赛三星就是被rng演死的，提这个不是搬着石头砸自己脚？当时你们是怎么洗的？“实力强还怕演？”“能赢还怕演？”“rng能赢三星，有必要演？凭什么演？需要演？”，现在这些话还给你们啊</p><p><br></p><p><br></p><p>作者：superjj</p><p>链接：https://www.zhihu.com/question/351525979/answer/863195922</p><p>来源：知乎</p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p>', '2019-10-20 14:03:42', 7, 7);
INSERT INTO `answer` VALUES (23, 26, '为什么有很多名人让人们警惕人工智能？', 9, '薛佳昊', '<p><span style=\"color: rgb(26, 26, 26);\">朝闻道 ，夕死可矣 。</span></p><p><span style=\"color: rgb(26, 26, 26);\">如果能亲眼见证人工智能挑战人类，那也死而无憾了。</span></p>', '2019-10-20 14:18:07', 2, 2);
INSERT INTO `answer` VALUES (24, 29, '你知道的最冷的冷知识是什么？', 9, '薛佳昊', '<p>《火星救援》里面有这么一段。</p><p>很多人看电影的时候当做小趣闻就此一带而过了，我回来之后感兴趣就查了一下。</p><p>这件事儿发生在1939年，是加州理工学院一个叫“火箭小组”的组织在宿舍做实验的时候火箭主体爆炸，把宿舍墙炸出了一个洞。</p><p>然后学校把他们赶出了宿舍，为他们找了一块河谷作为实验基地，这块建在河谷上的实验基地就是现在NASA著名的“喷气推进实验室”。</p><p>“火箭小组”的最初五个成员就是喷气推进实验室的创始人。</p><p>在这个成立于1937年的“火箭小组”的最初创始人的五人名单里，我发现了一个名字：</p><p><br></p><p>钱学森。</p><p><br></p><p><br></p><p>作者：鱼容</p><p>链接：https://www.zhihu.com/question/51459956/answer/258679498</p><p>来源：知乎</p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p>', '2019-10-20 14:33:51', 4, 4);
INSERT INTO `answer` VALUES (25, 28, '年轻人如何在独居时有效地保持自律？', 9, '薛佳昊', '<p>坚持</p>', '2019-10-20 14:38:50', 2, 2);
INSERT INTO `answer` VALUES (26, 30, '有哪些令人感觉全身发凉的脑洞故事？', 9, '薛佳昊', '<p><br></p><p>排队进了考场，过了安检。在考场坐下后，卷子拿到手里，上面就一道题，把自己杀死。死掉之后的尸体会被送到大二学生的考场里做解剖，他们的期末考试题目是答出该具尸体的致死原因。所以我们上午考，他们下午。</p><p> 旁边的同学思考了三分钟后就纷纷开始答题了，有的人直奔楼顶，有的人拿头就往墙上撞。撞得狠的，直接就能交了答卷，没能下定决心的，晕在地上，五六分钟后又爬了起来，懊恼的叹气，然后接着撞。还有人走到洗手间，放一池子水，把头埋进去，鼻子里咕嘟几个气泡后，也交了答卷。 三个小时过去后，考场里的人越来越少。</p><p>我他妈的怕疼，下不了手，焦急万分。一认识的同学从我身边走过，大概是心里有了办法，自信满满，我准备交卷了，他跟我说。他找个墙角背靠着，把刀扎进了自己的心脏。 </p><p>我说我这道题不会写啊老师，老师说快点吧，都中午了，我还得回去给我儿子做饭了。</p><p>此时考场里只剩下我一个人，老师大概是看出了我的绝望，也不忍心让我挂科，做出了让步。 </p><p>这样吧，半死不活也算你过，不过得不了满分，最多八十五。</p><p> 好好好。 我心想这下再也没有任何理由了。</p><p> 我把指甲在地上来回磨，磨尖了之后，抹了脖子。血一股股的往外冒，温热粘稠的液体流满全身，几分钟后，扑通一声倒地。恍惚中，看到老师在成绩单上写下八十五。 </p><p>太好了，这学期没挂科。我想。 </p><p>过了不知多久，我醒了过来。身边的尸体大多都已被清走，放在小推车里，被拉去大二的考场。也能看到远处，工作人员将挂在高处的尸体取下来，嘴里还嘟噜着，不就上个吊么，挂那么高。</p><p> 正午的太阳，热的毒辣，身上的血还没完全凝固，黏黏的，不太舒服。 我撑着扶手走下教学楼大门前的台阶。 </p><p>我是两三千人中，唯一一个活着从这里走出去的人，因为我没得一百分，我得了八十五。 </p><p>昨晚做的梦，记录于49路公交车。</p>', '2019-10-20 14:39:47', 1, 1);
INSERT INTO `answer` VALUES (27, 33, '出国后，你有哪些既有认知被打破？', 10, '刘硕', '<p>快来回答</p>', '2019-10-20 14:44:44', 0, 0);
INSERT INTO `answer` VALUES (28, 32, '有哪些不起眼却非常赚钱的行业？', 10, '刘硕', '<p>大家来啊</p>', '2019-10-20 14:45:04', 2, 2);
INSERT INTO `answer` VALUES (29, 34, '如何看待朋友圈刷屏的《凌晨三点不回家，成年人的世界是你想不到的心酸》这篇文章？', 10, '刘硕', '<p>毒鸡汤。</p><p><br></p><p>真实的世界里，你电脑蓝屏PPT没保存换来的不是第二天“恭喜你转正”的短信，而是被老板骂的狗血淋头拎包走人。</p><p>真实世界里，你长期忙于工作疏忽男友换来的也不是男友午夜求婚，而是大家“默契”的从此失联。</p><p>真实世界里，你不回家照顾孩子安抚丈夫换来的也不是女儿自动痊愈，而是女儿重病不愈的同时老公还跟你撕逼吵架。</p><p>很可惜，这就是真实的世界诶....</p><p>然而，我更好奇的是，为什么仿佛所有人都对这种所谓的“拼搏”感到理所当然？却没有人质疑，为何我们生活在一个”大家都要靠熬夜才能做好工作”的环境里？</p><p>一个正常的系统，应该是各安其职，有理由条，有秩有序。加班，说明系统里出了意外，意外可以理解，但是如果天天都是意外，只能说系统本身有问题吧。</p><p><br></p><p>希望更多人能通过不健康的现状来改变系统，而不是鼓励这种行为。</p><p><br></p>', '2019-10-20 14:52:20', 1, 1);
INSERT INTO `answer` VALUES (30, 35, '有哪些有用的人际交往小常识？', 10, '刘硕', '<p>首答</p>', '2019-10-20 14:54:21', 2, 2);
INSERT INTO `answer` VALUES (31, 36, '有哪些书看完后会让人很后悔没有早看到？', 10, '刘硕', '<p>首答</p>', '2019-10-20 14:54:56', 0, 0);
INSERT INTO `answer` VALUES (32, 34, '如何看待朋友圈刷屏的《凌晨三点不回家，成年人的世界是你想不到的心酸》这篇文章？', 10, '刘硕', '<p>我的回答</p>', '2019-10-20 15:39:29', 1, 1);
INSERT INTO `answer` VALUES (33, 34, '如何看待朋友圈刷屏的《凌晨三点不回家，成年人的世界是你想不到的心酸》这篇文章？', 10, '刘硕', '<p>更多的回答</p>', '2019-10-20 15:39:38', 1, 1);
INSERT INTO `answer` VALUES (34, 34, '如何看待朋友圈刷屏的《凌晨三点不回家，成年人的世界是你想不到的心酸》这篇文章？', 10, '刘硕', '<p>在美国南方还是种植园农奴制度的时候，黑奴过着牛马不如的生活，稍有违逆便会被白人老爷暴打。</p><p>当然打多了也会有人反抗，白人老爷只好花钱雇人看管黑奴。后来精明的白人想出了一个办法。</p><p>这个办法就是，他们每周进行一次“优秀黑奴”的评选，把那些最听话干活儿最卖力的黑奴选出来，颁发给他们一点小奖励和额外的食物。</p><p>从此以后，每个黑奴都渴望在周末得到那一点额外的小奖励和食物，变得个个格外努力地干活儿和听主人话。</p><p>白人用很少的钱，给黑奴创造了一个叫“愿景”的概念，以极小的概率发给其中的偶然幸运儿，进而让每个黑奴都充满了侥幸心理拼命努力以期待被主子奖励。从此就再也不反抗了，并为自己拼命干活儿得来的奖励，在自己的同伴面前沾沾自喜，互相倾轧。</p>', '2019-10-20 15:39:50', 1, 1);
INSERT INTO `answer` VALUES (35, 25, '\nS9 小组赛 SKT 有没有存在打假赛，故意抬一手的嫌疑？', 11, '李勇', '<p>我说累了。</p><p>你要说skt打假赛，那他得有动机。</p><p>skt没有演rng的动机。</p><p>觉得rng和skt互为宿敌的建议去查查交手记录。从老皇族开始查都可以。</p><p>国内自媒体把rng和skt说成宿敌就是用skt来给rng抬轿，讨好粉丝罢了。</p><p>没有这样的宿敌的，这叫天敌。再说难听点，按照fnc等于rng儿子的说法，rng就是skt儿子。</p><p>演的动机都没有，为什么要演？</p><p>而且最后fnc轻松赢下了rng，还不能说明什么吗？</p>', '2019-10-21 08:23:58', 0, 0);
INSERT INTO `answer` VALUES (36, 25, '\nS9 小组赛 SKT 有没有存在打假赛，故意抬一手的嫌疑？', 11, '李勇', '<p>看这个结局，大家应该懂了。</p><p>不想多说，RNG被FNC暴打。</p><p>一支被SKT双杀，BO5从没赢过SKT的队伍，凭什么演你呢？</p><p>问问自己，这实力水平，您配吗？</p><p>还有啊，别特么一天天的说“宿敌之战”了，宿敌那叫有来有回的对手，您这天天挨打没赢过的样儿，这只能叫天敌吧？？？</p><p><br></p>', '2019-10-21 08:24:37', 0, 0);
INSERT INTO `answer` VALUES (37, 25, '\nS9 小组赛 SKT 有没有存在打假赛，故意抬一手的嫌疑？', 9, '薛佳昊', '<p>说个笑话，送去年亚军出线，就为了按死去年八强可还行？</p><p>不说两把bo1被skt一把单带，一把打团安排的明明白白，就这上中下三条路的英雄勺，还想跟人打bo5？</p><p>就更不说RNG这打CG鱼腩队都差点翻车的表现了？某些RNG粉丝也真的是自我感觉良好，觉得老子真的世界第一，就差点运气呗？就真的觉得能会师决赛？</p><p>得了，16强回家吧您嘞！</p><p><br></p>', '2019-10-21 08:25:07', 0, 0);

-- ----------------------------
-- Table structure for answer_comment
-- ----------------------------
DROP TABLE IF EXISTS `answer_comment`;
CREATE TABLE `answer_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `user_id` int(10) NOT NULL COMMENT '评论者id',
  `answer_id` int(10) NOT NULL COMMENT '评论的回答id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答者名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `评论者id`(`user_id`) USING BTREE,
  INDEX `评论的回答id`(`answer_id`) USING BTREE,
  CONSTRAINT `评论的回答id` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `评论者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_comment
-- ----------------------------
INSERT INTO `answer_comment` VALUES (18, 10, 22, '只能说skt打得比较随意而已，把rng和fnc送入生死局，可能想把他们底牌抽出来也有可能。说到底终归是rng自己菜了而已。最后一把全员发挥配得上16强。', '2019-10-20 14:41:08', '刘硕');
INSERT INTO `answer_comment` VALUES (19, 10, 23, '如果1939年的中国有5个懂火箭制造的大学生，他们将成为抗大或西南联大的明星，军工部门的上宾，你会在今天的《新闻联播》上认识他们每一个人的名字。', '2019-10-20 14:41:38', '刘硕');
INSERT INTO `answer_comment` VALUES (20, 10, 24, '如果1939年的中国有5个懂火箭制造的大学生，他们将成为抗大或西南联大的明星，军工部门的上宾，你会在今天的《新闻联播》上认识他们每一个人的名字。', '2019-10-20 14:41:59', '刘硕');
INSERT INTO `answer_comment` VALUES (21, 10, 26, '只有一个bug，哪有那么多大二的？不应该都死光了吗？', '2019-10-20 14:42:24', '刘硕');
INSERT INTO `answer_comment` VALUES (22, 10, 24, '发布评论', '2019-10-20 15:38:15', '刘硕');
INSERT INTO `answer_comment` VALUES (23, 10, 25, '发布评论', '2019-10-20 15:38:45', '刘硕');
INSERT INTO `answer_comment` VALUES (24, 10, 27, '评论', '2019-10-21 07:52:30', '刘硕');

-- ----------------------------
-- Table structure for ques_attention
-- ----------------------------
DROP TABLE IF EXISTS `ques_attention`;
CREATE TABLE `ques_attention`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `ques_id` int(10) NOT NULL COMMENT '关注的问题id',
  `user_id` int(10) NOT NULL COMMENT '关注者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '关注的时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `关注的问题id`(`ques_id`) USING BTREE,
  INDEX `关注问题者id`(`user_id`) USING BTREE,
  CONSTRAINT `关注的问题id` FOREIGN KEY (`ques_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `关注问题者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ques_attention
-- ----------------------------
INSERT INTO `ques_attention` VALUES (12, 25, 9, '2019-10-20 14:03:33');
INSERT INTO `ques_attention` VALUES (13, 26, 9, '2019-10-20 14:18:06');
INSERT INTO `ques_attention` VALUES (14, 36, 10, '2019-10-20 14:54:49');

-- ----------------------------
-- Table structure for ques_comment
-- ----------------------------
DROP TABLE IF EXISTS `ques_comment`;
CREATE TABLE `ques_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论的id',
  `ques_id` int(10) NOT NULL COMMENT '评论的问题id',
  `user_id` int(10) NOT NULL COMMENT '评论者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `评论的问题id`(`ques_id`) USING BTREE,
  INDEX `评论问题者id`(`user_id`) USING BTREE,
  CONSTRAINT `评论的问题id` FOREIGN KEY (`ques_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `评论问题者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '问题id',
  `question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题名称',
  `discribe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题描述',
  `user_id` int(10) NOT NULL COMMENT '提问者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提问时间',
  `browe` int(16) NOT NULL DEFAULT 0 COMMENT '浏览次数',
  `answer` int(10) NOT NULL DEFAULT 0 COMMENT '回答数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `提问者id`(`user_id`) USING BTREE,
  CONSTRAINT `提问者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (25, '\nS9 小组赛 SKT 有没有存在打假赛，故意抬一手的嫌疑？', '', 9, '2019-10-20 14:03:30', 17, 0);
INSERT INTO `question` VALUES (26, '为什么有很多名人让人们警惕人工智能？', '\n这是因为人工智能要进入新阶段了？这些名人是不是可能比较先得到信息，所以向人们预警？\n或者是每年都有很多人提出这个问题，只是今年报道的比较多？\n有人说在人工智能的发展上存在一个奇点，越过这个奇点就能通过图灵测试。\n如果人工智能已经越过了这个奇点，这个世界会发生怎样的质变？\n超体和超验骇客都出现过类似越过奇点后，科技的突然爆发。\n这又让我想起三体里面，宇宙丛林法则中，由于对对方的不了解，又担心对方文明的突然爆发，所以选择了摧毁。', 9, '2019-10-20 14:17:21', 9, 0);
INSERT INTO `question` VALUES (27, '如果一天只睡 6 个小时的话，应该几点睡觉几点起床精神相对较好？', '学生党，学习压力相对较大，我明白保证睡眠时间的重要性，但在当前情况下个人一天大概只有六小时睡眠时间。所以想请教下，应该几点睡觉几点起床一天的精神状态可以相对好一些？我请教这个问题是因为我经历过不同的状态，有时候早点睡5点半起床精神状态反而比较好，有时候晚睡了7点半起床结果一天都在犯困，喝咖啡也不顶用。', 9, '2019-10-20 14:18:41', 3, 0);
INSERT INTO `question` VALUES (28, '年轻人如何在独居时有效地保持自律？', '23 岁，独自在北京居住。坦白讲，以前过集体生活或者和爸妈住的时候，会为自己立一些 flag 。但是现在一个人住，自律和立 flag 的动力就会减弱。对于这种自律感减弱的情况很焦虑，但是有时候又没有办法克服。', 9, '2019-10-20 14:32:57', 3, 0);
INSERT INTO `question` VALUES (29, '你知道的最冷的冷知识是什么？', '类似问题：你听说过最没用的冷知识是啥？\n\n你知道的最有趣的冷知识是什么？', 9, '2019-10-20 14:33:38', 3, 0);
INSERT INTO `question` VALUES (30, '有哪些令人感觉全身发凉的脑洞故事？', '', 9, '2019-10-20 14:39:32', 2, 0);
INSERT INTO `question` VALUES (32, '有哪些不起眼却非常赚钱的行业？', '', 10, '2019-10-20 14:44:10', 4, 0);
INSERT INTO `question` VALUES (33, '出国后，你有哪些既有认知被打破？', '', 10, '2019-10-20 14:44:33', 3, 0);
INSERT INTO `question` VALUES (34, '如何看待朋友圈刷屏的《凌晨三点不回家，成年人的世界是你想不到的心酸》这篇文章？', '看见朋友圈很多转发这篇文章的，尤其是广告圈、媒体圈的朋友，老实说我个人能接受偶尔为了某个项目加班，但不能接受长年累月加班到凌晨三点这种文化，加班到凌晨才是奋斗吗？', 10, '2019-10-20 14:45:45', 13, 0);
INSERT INTO `question` VALUES (35, '有哪些有用的人际交往小常识？', '', 10, '2019-10-20 14:54:11', 2, 0);
INSERT INTO `question` VALUES (36, '有哪些书看完后会让人很后悔没有早看到？', '', 10, '2019-10-20 14:54:48', 6, 0);
INSERT INTO `question` VALUES (37, '什么什么什么？', '问题描述', 10, '2019-10-20 15:41:26', 1, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机号/账号',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `sign` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `bgpic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主页背景图片',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `browe` int(10) NOT NULL DEFAULT 0 COMMENT '主页浏览次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (8, '薛佳昊', '15035959212', '256aaa02626cec59c0b5477b734f1c5e', '', '', '', '2019-10-20 14:01:30', 0);
INSERT INTO `user` VALUES (9, '哈哈', '11111111111', '39a140c71596ebcf6601a9f2166776c5', '', '', '', '2019-10-20 14:03:01', 0);
INSERT INTO `user` VALUES (10, '薛佳昊', '13012345678', 'b02e1364109efd34abad26190cdd6b7b', '阿正', '', '', '2019-10-20 14:40:35', 0);
INSERT INTO `user` VALUES (11, '李勇', '19805495626', '256aaa02626cec59c0b5477b734f1c5e', '', '', '', '2019-10-21 08:22:45', 0);

-- ----------------------------
-- Table structure for user_attention
-- ----------------------------
DROP TABLE IF EXISTS `user_attention`;
CREATE TABLE `user_attention`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `be_atten_id` int(10) NOT NULL COMMENT '被关注者id',
  `atten_id` int(10) NOT NULL COMMENT '关注者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '关注时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `被关注者id`(`be_atten_id`) USING BTREE,
  INDEX `关注者id`(`atten_id`) USING BTREE,
  CONSTRAINT `关注者id` FOREIGN KEY (`atten_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `被关注者id` FOREIGN KEY (`be_atten_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
