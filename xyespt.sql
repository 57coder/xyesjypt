/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50015
Source Host           : localhost:3306
Source Database       : xyespt

Target Server Type    : MYSQL
Target Server Version : 50015
File Encoding         : 65001

Date: 2018-04-27 23:46:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(600) default '',
  `userPw` varchar(450) default NULL,
  `userType` varchar(1500) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', '11', '11', '超级管理员');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1500) default NULL,
  `del` varchar(1500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('1', 'IT数码', 'no');
INSERT INTO `t_catelog` VALUES ('2', '图书办公', 'no');
INSERT INTO `t_catelog` VALUES ('3', '生活用品', 'no');

-- ----------------------------
-- Table structure for `t_chu`
-- ----------------------------
DROP TABLE IF EXISTS `t_chu`;
CREATE TABLE `t_chu` (
  `id` int(11) NOT NULL auto_increment,
  `mingcheng` varchar(1500) default NULL,
  `goodsid` int(11) default NULL,
  `ren` varchar(1500) default NULL,
  `count` varchar(1500) default NULL,
  `date` varchar(1500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_chu
-- ----------------------------

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `id` varchar(450) default NULL,
  `title` varchar(1500) default NULL,
  `content` varchar(6000) default NULL,
  `shijian` varchar(450) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1489561742657', '注意事项', '注意事项', '2018-4-15 15:09:02');
INSERT INTO `t_gonggao` VALUES ('1489561773574', '其他事项', '其他事项', '2018-4-15 15:09:33');
INSERT INTO `t_gonggao` VALUES ('1489561809406', '联系我们', '联系我们', '2018-4-15 15:10:09');
INSERT INTO `t_gonggao` VALUES ('1493042838948', '111', '1111', '2018-4-24 22:07:18');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL auto_increment,
  `catelog_id` int(11) default NULL,
  `nannvkuan` varchar(1500) default NULL,
  `bianhao` varchar(1500) default NULL,
  `mingcheng` varchar(1500) default NULL,
  `jieshao` longtext,
  `pinpai` varchar(1500) default NULL,
  `fujian` varchar(1500) default NULL,
  `shichangjia` int(11) default NULL,
  `tejia` int(11) default NULL,
  `shifoutejia` varchar(1500) default NULL,
  `kucun` int(11) default NULL,
  `del` varchar(1500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '1', null, '2538439', 'Apple iPad Pro平板电脑 9.7 英寸', '<ul class=\"parameter2 p-parameter-list\" style=\"margin: 0px; padding: 20px 0px 15px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; line-height: 18px;\">\r\n    <li title=\"AppleiPad Pro 9.7英寸\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品名称：AppleiPad Pro 9.7英寸</li>\r\n    <li title=\"2538439\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品编号：2538439</li>\r\n    <li title=\"0.8kg\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品毛重：0.8kg</li>\r\n    <li title=\"中国大陆\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品产地：中国大陆</li>\r\n    <li title=\"ios系统\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">系统：ios系统</li>\r\n    <li title=\"7.0mm以下\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">厚度：7.0mm以下</li>\r\n    <li title=\"32G\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">硬盘：32G</li>\r\n    <li title=\"301g-500g\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">裸机重量：301g-500g</li>\r\n    <li title=\"超高清屏（2K/3K/4K）\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">分辨率：超高清屏（2K/3K/4K）</li>\r\n    <li title=\"iPad\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">热门：iPad</li>\r\n    <li title=\"二合一平板\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">分类：二合一平板</li>\r\n    <li title=\"高保真音质\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">特色：高保真音质</li>\r\n    <li title=\"9.1英寸-10英寸\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">尺寸：9.1英寸-10英寸</li>\r\n</ul>', '九成新', '/upload/1493041569457.png', '1500', '1500', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('2', '1', null, '3245084', '荣耀8 4GB+32GB 全网通4G手机 珠光白', '<ul class=\"parameter2 p-parameter-list\" style=\"margin: 0px; padding: 20px 0px 15px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; line-height: 18px;\">\r\n    <li title=\"华为荣耀8\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品名称：华为荣耀8</li>\r\n    <li title=\"3245084\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品编号：3245084</li>\r\n    <li title=\"473.00g\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品毛重：473.00g</li>\r\n    <li title=\"中国大陆\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品产地：中国大陆</li>\r\n    <li title=\"安卓（Android）\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">系统：安卓（Android）</li>\r\n    <li title=\"4GB\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">运行内存：4GB</li>\r\n    <li title=\"800万-1599万\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">前置摄像头像素：800万-1599万</li>\r\n    <li title=\"后置双摄像头，1200万-1999万\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">后置摄像头像素：后置双摄像头，1200万-1999万</li>\r\n    <li title=\"3000mAh-3999mAh\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">电池容量：3000mAh-3999mAh</li>\r\n    <li title=\"32GB\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">机身内存：32GB</li>\r\n    <li title=\"双卡双待，快速充电，指纹识别，Type-C，支持NFC，后置双摄像头\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">热点：双卡双待，快速充电，指纹识别</li>\r\n</ul>', '七成新', '/upload/1493041803608.png', '1300', '1300', 'fou', '0', 'no');
INSERT INTO `t_goods` VALUES ('3', '1', null, '4609870', '小米 红米Note4 全网通版 4GB+64GB', '<ul class=\"parameter2 p-parameter-list\" style=\"margin: 0px; padding: 20px 0px 15px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; line-height: 18px;\">\r\n    <li title=\"小米红米Note4\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品名称：小米红米Note4</li>\r\n    <li title=\"4609870\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品编号：4609870</li>\r\n    <li title=\"360.00g\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品毛重：360.00g</li>\r\n    <li title=\"中国大陆\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品产地：中国大陆</li>\r\n    <li title=\"安卓（Android）\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">系统：安卓（Android）</li>\r\n    <li title=\"4GB\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">运行内存：4GB</li>\r\n    <li title=\"以旧换新，快速充电，指纹识别，VoLTE，金属机身，拍照神器\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">热点：以旧换新，快速充电，指纹识别，VoLTE，金属机身，拍照神器</li>\r\n    <li title=\"1200万-1999万\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">后置摄像头像素：1200万-1999万</li>\r\n    <li title=\"4000mAh-5999mAh\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">电池容量：4000mAh-5999mAh</li>\r\n    <li title=\"64GB\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">机身内存：64GB</li>\r\n    <li title=\"蓝色\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">机身颜色：蓝色</li>\r\n</ul>', '六成新', '/upload/1493041864804.png', '800', '800', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('4', '1', null, '3599578', 'Bose QuietComfort25有源消噪耳机-黑色 QC25', '<ul class=\"parameter2 p-parameter-list\" style=\"margin: 0px; padding: 20px 0px 15px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; line-height: 18px;\">\r\n    <li title=\"BoseQC25\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品名称：BoseQC25</li>\r\n    <li title=\"3599578\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品编号：3599578</li>\r\n    <li title=\"0.63kg\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品毛重：0.63kg</li>\r\n    <li title=\"墨西哥或中国\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品产地：墨西哥或中国</li>\r\n    <li title=\"音乐耳机，手机耳机，旅行降噪\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">功能用途：音乐耳机，手机耳机，旅行降噪</li>\r\n    <li title=\"其他\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">耳机配件：其他</li>\r\n    <li title=\"动圈\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">发声原理：动圈</li>\r\n    <li title=\"有线\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">连接类型：有线</li>\r\n    <li title=\"低音好\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">热词：低音好</li>\r\n    <li title=\"头戴式\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">佩戴方式：头戴式</li>\r\n</ul>', '五成新', '/upload/1493041955721.png', '800', '800', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('5', '2', null, '1498224', '爱普生（EPSON）L360墨仓式打印机', '<ul class=\"parameter2 p-parameter-list\" style=\"margin: 0px; padding: 20px 0px 15px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; line-height: 18px;\">\r\n    <li title=\"爱普生L360\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品名称：爱普生L360</li>\r\n    <li title=\"1498224\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品编号：1498224</li>\r\n    <li title=\"6.72kg\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品毛重：6.72kg</li>\r\n    <li title=\"菲律宾\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品产地：菲律宾</li>\r\n    <li title=\"打印/复印/扫描\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">多功能：打印/复印/扫描</li>\r\n    <li title=\"墨仓/加墨式打印\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">技术类型：墨仓/加墨式打印</li>\r\n    <li title=\"有线\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">连接方式：有线</li>\r\n    <li title=\"A4\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">幅面：A4</li>\r\n    <li title=\"墨水\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">耗材类型：墨水</li>\r\n    <li title=\"不支持\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">自动双面打印：不支持</li>\r\n    <li title=\"家庭打印，照片打印，家庭办公，小型商用\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">使用场景：家庭打印，照片打印</li>\r\n</ul>', '九成新', '/upload/1493042057876.png', '750', '750', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('6', '3', null, '219337', '红双喜DHS羽毛球拍对拍套装铝合金羽拍', '<ul class=\"parameter2 p-parameter-list\" style=\"margin: 0px; padding: 20px 0px 15px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; line-height: 18px;\">\r\n    <li title=\"红双喜铝合金羽毛球拍含两拍三球半拍套\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品名称：红双喜铝合金羽毛球拍含两拍三球半拍套</li>\r\n    <li title=\"219337\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品编号：219337</li>\r\n    <li title=\"60.00g\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品毛重：60.00g</li>\r\n    <li title=\"中国上海\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品产地：中国上海</li>\r\n    <li title=\"1020\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">货号：1020</li>\r\n    <li title=\"其它\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">羽毛球服务：其它</li>\r\n    <li title=\"否\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">是否智能：否</li>\r\n    <li title=\"合金\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">球拍材质：合金</li>\r\n    <li title=\"U（95g以上）\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">球拍重量：U（95g以上）</li>\r\n    <li title=\"控球型（攻守兼备）\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">球拍打法：控球型（攻守兼备）</li>\r\n    <li title=\"羽毛球拍\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">分类：羽毛球拍</li>\r\n    <li title=\"通用\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">适用人群：通用</li>\r\n    <li title=\"其它\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">羽毛球规格：其它</li>\r\n</ul>', '七成新', '/upload/1493042184582.png', '88', '88', 'fou', '0', 'no');
INSERT INTO `t_goods` VALUES ('7', '3', null, '1567805674', '斯伯丁篮球', '<ul class=\"parameter2 p-parameter-list\" style=\"margin: 0px; padding: 20px 0px 15px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; line-height: 18px;\">\r\n    <li title=\"斯伯丁篮球官方旗舰店NBA LOGO超软室内外PU蓝球74-607Y\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品名称：斯伯丁篮球官方旗舰店NBA LOGO超软室内外PU蓝球74-607Y</li>\r\n    <li title=\"1567805674\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品编号：1567805674</li>\r\n    <li title=\"0.6kg\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品毛重：0.6kg</li>\r\n    <li title=\"74-607Y\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">货号：74-607Y</li>\r\n    <li title=\"通用\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">篮球分类：通用</li>\r\n    <li title=\"篮球\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">分类：篮球</li>\r\n    <li title=\"PU\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">篮球材质：PU</li>\r\n    <li title=\"7号/标准\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; list-style: none; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">规格：7号/标准</li>\r\n</ul>', '五成新', '/upload/1493042260740.png', '88', '88', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('8', '1', null, '4725304', '小帅（Xshuai）投影机', '<ul class=\"parameter2 p-parameter-list\" style=\"margin: 0px; padding: 20px 0px 15px; list-style: none; overflow: hidden; color: rgb(102, 102, 102); font-family: tahoma, arial, \'Microsoft YaHei\', \'Hiragino Sans GB\', u5b8bu4f53, sans-serif; line-height: 18px;\">\r\n    <li title=\"小帅BP222J\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">&nbsp;</li>\r\n    <li title=\"0.65kg\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品毛重：0.65kg</li>\r\n    <li title=\"中国大陆\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">商品产地：中国大陆</li>\r\n    <li title=\"BP222J\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">货号：BP222J</li>\r\n    <li title=\"999流明以下\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">亮度：999流明以下</li>\r\n    <li title=\"移动便携\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">产品类别：移动便携</li>\r\n    <li title=\"其他\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">分辨率：其他</li>\r\n    <li title=\"安卓系统，手机同屏\" style=\"margin: 0px 0px 5px; padding: 0px 0px 0px 42px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 200px; float: left;\">个性：安卓系统，手机同屏</li>\r\n</ul>', '七成新', '/upload/1493042339329.png', '999', '999', 'fou', '0', 'no');

-- ----------------------------
-- Table structure for `t_jin`
-- ----------------------------
DROP TABLE IF EXISTS `t_jin`;
CREATE TABLE `t_jin` (
  `id` int(11) NOT NULL auto_increment,
  `mingcheng` varchar(1500) default NULL,
  `goodsid` int(11) default NULL,
  `ren` varchar(1500) default NULL,
  `count` varchar(1500) default NULL,
  `date` varchar(1500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jin
-- ----------------------------

-- ----------------------------
-- Table structure for `t_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `info` varchar(255) default NULL,
  `adate` varchar(255) default NULL,
  `rinfo` varchar(255) default NULL,
  `rdate` varchar(255) default NULL,
  `auser` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('4', '21312321', '123123', '2018-4-24 15:41:49', '大声的撒多撒', '2017-4-24 15:52:05', '12345');
INSERT INTO `t_message` VALUES ('5', '1111', '1111', '2018-4-24 15:58:16', null, null, '12345');
INSERT INTO `t_message` VALUES ('6', '3213213123', '12321312', '2018-4-24 15:58:19', null, null, '12345');
INSERT INTO `t_message` VALUES ('7', '你好', '你好你好你好你好', '2018-4-24 22:06:58', '你好', '2018-4-24 22:08:12', '12345');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` varchar(300) default NULL,
  `bianhao` varchar(1500) default NULL,
  `shijian` varchar(1500) default NULL,
  `zhuangtai` varchar(1500) default NULL,
  `songhuodizhi` varchar(1500) default NULL,
  `fukuanfangshi` varchar(1500) default NULL,
  `jine` int(11) default NULL,
  `user_id` varchar(1500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1493042683835', '20170424100443', '2018-04-24 10:04:43', 'hui', '张三,13575578458,54587,北京市海淀区XXX', '货到付款', '3138', '1');
INSERT INTO `t_order` VALUES ('1493042805194', '20170424100645', '2018-04-24 10:06:45', 'hui', '张三,13575578458,54587,北京市海淀区XXX', '货到付款', '800', '1');

-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `id` varchar(300) default NULL,
  `order_id` varchar(1500) default NULL,
  `goods_id` int(11) default NULL,
  `goods_quantity` int(11) default NULL,
  `goods_state` varchar(300) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('1493042683894', '1493042683835', '1', '1', null);
INSERT INTO `t_orderitem` VALUES ('1493042684019', '1493042683835', '4', '1', null);
INSERT INTO `t_orderitem` VALUES ('1493042684226', '1493042683835', '5', '1', null);
INSERT INTO `t_orderitem` VALUES ('1493042684633', '1493042683835', '7', '1', null);
INSERT INTO `t_orderitem` VALUES ('1493042805278', '1493042805194', '3', '1', null);

-- ----------------------------
-- Table structure for `t_ping`
-- ----------------------------
DROP TABLE IF EXISTS `t_ping`;
CREATE TABLE `t_ping` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` varchar(1500) default NULL,
  `orderitem_id` varchar(1500) default NULL,
  `goods_id` int(11) default NULL,
  `mingcheng` varchar(1500) default NULL,
  `user_id` varchar(1500) default NULL,
  `loginname` varchar(1500) default NULL,
  `info` varchar(2700) default NULL,
  `adddate` varchar(1500) default NULL,
  `reply` varchar(1500) default NULL,
  `replydate` varchar(1500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ping
-- ----------------------------
INSERT INTO `t_ping` VALUES ('1', '1493042683835', '1493042683894', '1', 'Apple iPad Pro平板电脑 9.7 英寸', '1', '12345', '成色不错', '2017-4-24 22:05:19', '谢谢', '2018-4-24 22:05:36');
INSERT INTO `t_ping` VALUES ('2', '1493042683835', '1493042684019', '4', 'Bose QuietComfort25有源消噪耳机-黑色 QC25', '1', '12345', '成色不错', '2017-4-24 22:05:19', '谢谢', '2018-4-24 22:05:36');
INSERT INTO `t_ping` VALUES ('3', '1493042683835', '1493042684226', '5', '爱普生（EPSON）L360墨仓式打印机', '1', '12345', '成色不错', '2017-4-24 22:05:19', '谢谢', '2018-4-24 22:05:36');
INSERT INTO `t_ping` VALUES ('4', '1493042683835', '1493042684633', '7', '斯伯丁篮球', '1', '12345', '成色不错', '2017-4-24 22:05:19', '谢谢', '2017-4-24 22:05:36');
INSERT INTO `t_ping` VALUES ('5', '1493042805194', '1493042805278', '3', '小米 红米Note4 全网通版 4GB+64GB', '1', '12345', '成色很不错', '2017-4-24 22:07:52', '感谢', '2018-4-24 22:08:01');

-- ----------------------------
-- Table structure for `t_shouhuo`
-- ----------------------------
DROP TABLE IF EXISTS `t_shouhuo`;
CREATE TABLE `t_shouhuo` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(765) default NULL,
  `tel` varchar(765) default NULL,
  `youbian` varchar(765) default NULL,
  `adr` varchar(765) default NULL,
  `user_id` varchar(1500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shouhuo
-- ----------------------------
INSERT INTO `t_shouhuo` VALUES ('1', '张三', '13575578458', '54587', '北京市海淀区XXX', '1');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(100) NOT NULL default '',
  `loginname` varchar(255) default NULL,
  `loginpw` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `age` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `qq` varchar(255) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '12345', '12345', '李四', '男', '24', '西安市', '133333333', '11111@qq.com', '11111111', 'no');
