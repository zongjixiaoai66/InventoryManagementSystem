/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t262`;
CREATE DATABASE IF NOT EXISTS `t262` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t262`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'gongyinghsang_types', '供应商类型', 1, '供应商类型1', NULL, NULL, '2022-05-24 01:14:12'),
	(2, 'gongyinghsang_types', '供应商类型', 2, '供应商类型2', NULL, NULL, '2022-05-24 01:14:12'),
	(3, 'gongyinghsang_xinyong_types', '供应商信用等级名称', 1, '供应商信用等级名称1', NULL, NULL, '2022-05-24 01:14:12'),
	(4, 'gongyinghsang_xinyong_types', '供应商信用等级名称', 2, '供应商信用等级名称2', NULL, NULL, '2022-05-24 01:14:12'),
	(5, 'goods_types', '商品类型', 1, '商品类型1', NULL, NULL, '2022-05-24 01:14:12'),
	(6, 'goods_types', '商品类型', 2, '商品类型2', NULL, NULL, '2022-05-24 01:14:12'),
	(7, 'cangku_types', '仓库', 1, '仓库1', NULL, NULL, '2022-05-24 01:14:12'),
	(8, 'cangku_types', '仓库', 2, '仓库2', NULL, NULL, '2022-05-24 01:14:12'),
	(9, 'goods_churu_inout_types', '出入库类型', 1, '出库', NULL, NULL, '2022-05-24 01:14:12'),
	(10, 'goods_churu_inout_types', '出入库类型', 2, '采购入库', NULL, NULL, '2022-05-24 01:14:12'),
	(11, 'goods_order_types', '预定状态', 1, '已订货', NULL, NULL, '2022-05-24 01:14:12'),
	(12, 'goods_order_types', '预定状态', 2, '已退定', NULL, NULL, '2022-05-24 01:14:12'),
	(13, 'goods_order_types', '预定状态', 3, '已完成', NULL, NULL, '2022-05-24 01:14:12'),
	(14, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-05-24 01:14:12'),
	(15, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-05-24 01:14:13'),
	(16, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-05-24 01:14:13'),
	(17, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-05-24 01:14:13'),
	(18, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-05-24 01:14:13');

DROP TABLE IF EXISTS `gongyinghsang`;
CREATE TABLE IF NOT EXISTS `gongyinghsang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongyinghsang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称 Search111 ',
  `gongyinghsang_types` int DEFAULT NULL COMMENT '供应商类型 Search111 ',
  `gongyinghsang_xinyong_types` int DEFAULT NULL COMMENT '供应商信用等级名称 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `gongyinghsang_content` text COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='供应商';

DELETE FROM `gongyinghsang`;
INSERT INTO `gongyinghsang` (`id`, `gongyinghsang_name`, `gongyinghsang_types`, `gongyinghsang_xinyong_types`, `insert_time`, `gongyinghsang_content`, `create_time`) VALUES
	(1, '供应商名称1', 2, 2, '2022-05-24 01:14:49', '供应商详情1', '2022-05-24 01:14:49'),
	(2, '供应商名称2', 2, 2, '2022-05-24 01:14:49', '供应商详情2', '2022-05-24 01:14:49'),
	(3, '供应商名称3', 2, 2, '2022-05-24 01:14:49', '供应商详情3', '2022-05-24 01:14:49'),
	(4, '供应商名称4', 2, 1, '2022-05-24 01:14:49', '供应商详情4', '2022-05-24 01:14:49'),
	(5, '供应商名称5', 1, 2, '2022-05-24 01:14:49', '供应商详情5', '2022-05-24 01:14:49');

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名字 Search111 ',
  `goods_types` int DEFAULT NULL COMMENT '商品类型  Search111 ',
  `goods_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `gongyinghsang_id` int DEFAULT NULL COMMENT '供应商',
  `cangku_types` int DEFAULT NULL COMMENT '存储仓库 Search111 ',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '单价 Search111 ',
  `goods_content` text COMMENT '商品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `goods`;
INSERT INTO `goods` (`id`, `goods_name`, `goods_types`, `goods_kucun_number`, `gongyinghsang_id`, `cangku_types`, `danwei`, `goods_new_money`, `goods_content`, `create_time`) VALUES
	(1, '商品名字1', 2, 101, 1, 1, '单位1', 333.04, '商品详情1', '2022-05-24 01:14:49'),
	(2, '商品名字2', 2, 102, 2, 2, '单位2', 234.12, '商品详情2', '2022-05-24 01:14:49'),
	(3, '商品名字3', 2, 103, 3, 2, '单位3', 135.41, '商品详情3', '2022-05-24 01:14:49'),
	(4, '商品名字4', 2, 223, 4, 2, '单位4', 245.28, '商品详情4', '2022-05-24 01:14:49'),
	(5, '商品名字5', 1, 900, 5, 2, '单位5', 33.75, '<p>商品详情5</p>', '2022-05-24 01:14:49');

DROP TABLE IF EXISTS `goods_churu_inout`;
CREATE TABLE IF NOT EXISTS `goods_churu_inout` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `goods_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `goods_churu_inout_types` int DEFAULT NULL COMMENT '出入库类型',
  `goods_churu_inout_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='出入库';

DELETE FROM `goods_churu_inout`;
INSERT INTO `goods_churu_inout` (`id`, `goods_churu_inout_uuid_number`, `goods_churu_inout_name`, `goods_churu_inout_types`, `goods_churu_inout_content`, `insert_time`, `create_time`) VALUES
	(1, '165335488909895', '出入库名称1', 2, '备注1', '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(2, '165335488909884', '出入库名称2', 2, '备注2', '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(3, '165335488909818', '出入库名称3', 2, '备注3', '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(4, '16533548890989', '出入库名称4', 2, '备注4', '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(5, '16533548890981', '出入库名称5', 2, '备注5', '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(6, '1653359421920', '123', 2, '', '2022-05-24 02:30:22', '2022-05-24 02:30:22'),
	(7, '1653361473033', '12333', 2, '', '2022-05-24 03:04:33', '2022-05-24 03:04:33');

DROP TABLE IF EXISTS `goods_churu_inout_list`;
CREATE TABLE IF NOT EXISTS `goods_churu_inout_list` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_churu_inout_id` int DEFAULT NULL COMMENT '出入库',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `goods_churu_inout_list_number` int DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='出入库详情';

DELETE FROM `goods_churu_inout_list`;
INSERT INTO `goods_churu_inout_list` (`id`, `goods_churu_inout_id`, `goods_id`, `goods_churu_inout_list_number`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 345, '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(2, 2, 2, 159, '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(3, 3, 3, 271, '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(4, 4, 4, 68, '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(5, 5, 5, 412, '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(6, 6, 4, 4, '2022-05-24 02:30:22', '2022-05-24 02:30:22'),
	(7, 7, 4, 123, '2022-05-24 03:04:33', '2022-05-24 03:04:33');

DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE IF NOT EXISTS `goods_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `kehu_id` int DEFAULT NULL COMMENT '客户',
  `yonghu_id` int DEFAULT NULL COMMENT '员工',
  `goods_order_danhao_number` varchar(200) DEFAULT NULL COMMENT '单号 Search111 ',
  `goods_order_number` int DEFAULT NULL COMMENT '预定数量  Search111 ',
  `goods_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `goods_order_types` int DEFAULT NULL COMMENT '预定状态 Search111',
  `goods_order_content` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='商品预定';

DELETE FROM `goods_order`;
INSERT INTO `goods_order` (`id`, `goods_id`, `kehu_id`, `yonghu_id`, `goods_order_danhao_number`, `goods_order_number`, `goods_order_time`, `goods_order_types`, `goods_order_content`, `create_time`) VALUES
	(7, 2, 3, 2, '1653357559741', 20, '2022-05-26 16:00:00', 3, '<p><span style="color: rgb(96, 98, 102);">备注1111</span></p>', '2022-05-24 01:59:36'),
	(8, 3, 4, 2, '1653357988330', 20, '2022-05-27 16:00:00', 3, '<p>123</p>', '2022-05-24 02:06:40'),
	(9, 5, 3, 1, '1653361423329', 99, '2022-05-24 16:00:00', 3, '<p><span style="color: rgb(96, 98, 102);">订单备注</span></p>', '2022-05-24 03:04:09');

DROP TABLE IF EXISTS `kehu`;
CREATE TABLE IF NOT EXISTS `kehu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '客户联系方式 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `kehu_order_content` text COMMENT '客户详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='客户';

DELETE FROM `kehu`;
INSERT INTO `kehu` (`id`, `kehu_name`, `kehu_phone`, `sex_types`, `kehu_order_content`, `create_time`) VALUES
	(1, '客户姓名1', '17703786901', 2, '客户详情1', '2022-05-24 01:14:49'),
	(2, '客户姓名2', '17703786902', 2, '客户详情2', '2022-05-24 01:14:49'),
	(3, '客户姓名3', '17703786903', 1, '客户详情3', '2022-05-24 01:14:49'),
	(4, '客户姓名4', '17703786904', 1, '客户详情4', '2022-05-24 01:14:49'),
	(5, '客户姓名5', '17703786905', 2, '客户详情5', '2022-05-24 01:14:49');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'http://localhost:8080/kucuenguanlic/upload/news1.jpg', '2022-05-24 01:14:49', '公告详情1', '2022-05-24 01:14:49'),
	(2, '公告标题2', 2, 'http://localhost:8080/kucuenguanlic/upload/news2.jpg', '2022-05-24 01:14:49', '公告详情2', '2022-05-24 01:14:49'),
	(3, '公告标题3', 2, 'http://localhost:8080/kucuenguanlic/upload/news3.jpg', '2022-05-24 01:14:49', '公告详情3', '2022-05-24 01:14:49'),
	(4, '公告标题4', 1, 'http://localhost:8080/kucuenguanlic/upload/news4.jpg', '2022-05-24 01:14:49', '公告详情4', '2022-05-24 01:14:49'),
	(5, '公告标题5', 2, 'http://localhost:8080/kucuenguanlic/upload/news5.jpg', '2022-05-24 01:14:49', '公告详情5', '2022-05-24 01:14:49');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'ezhr52x0q0xtuz6satcwq9f7rzvhjr1l', '2022-05-24 01:36:40', '2024-07-15 04:23:21'),
	(2, 1, 'a1', 'yonghu', '员工', 'od4y1hm4vlzbyezhclh7u0zfvldrsoky', '2022-05-24 02:29:27', '2024-07-15 04:24:30'),
	(3, 2, 'a2', 'yonghu', '员工', 'nkpfx16lw29wfzo21ufglia1fscmzuqs', '2022-05-24 02:29:38', '2022-05-24 04:02:52');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_email`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '员工1', '123456', '员工姓名1', 'http://localhost:8080/kucuenguanlic/upload/yonghu1.jpg', 1, '17703786901', '1@qq.com', 1, '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(2, '员工2', '123456', '员工姓名2', 'http://localhost:8080/kucuenguanlic/upload/yonghu2.jpg', 2, '17703786902', '2@qq.com', 1, '2022-05-24 01:14:49', '2022-05-24 01:14:49'),
	(3, '员工3', '123456', '员工姓名3', 'http://localhost:8080/kucuenguanlic/upload/yonghu3.jpg', 2, '17703786903', '3@qq.com', 1, '2022-05-24 01:14:49', '2022-05-24 01:14:49');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
