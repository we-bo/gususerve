DROP DATABASE IF EXISTS `gspro`;

SET NAMES utf8;
CREATE DATABASE IF  NOT EXISTS  `gspro` DEFAULT  CHARACTER SET 'utf8';
USE `gspro`;
CREATE TABLE `gspro_user`(
  `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '房东ID，主键且自增',
  `username` VARCHAR(30) NOT NULL COMMENT '用户名，唯一',
  `password` VARCHAR(32) NOT NULL COMMENT '密码MD5，唯一',
  `nickname` VARCHAR(30) DEFAULT NULL,
  `avatar` VARCHAR(50) NOT NULL DEFAULT 'gs_icon2.png' COMMENT '用户头像' 
)ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

CREATE TABLE `gspro_nav`(
  `id` INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '类型ID,主键且自增',
  `category` CHAR(30) NOT NULL UNIQUE KEY COMMENT '类型名,唯一'
)ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE `gspro_holder`(
  `id` INT(10) AUTO_INCREMENT PRIMARY KEY COMMENT '文章ID,主键且自增',
  `images` VARCHAR(50) COMMENT '文章缩略图',
  `title` VARCHAR(50) COMMENT '文章标题',
  `nav_id` INT(10) unsigned NOT NULL COMMENT '外键,类型ID',
  `holder_id` INT(10) unsigned NOT NULL COMMENT '外键,作者ID'
)ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

CREATE TABLE `gspro_carousel`(
  `id` INT AUTO_INCREMENT PRIMARY KEY COMMENT '轮播图ID,主键且自增',
  `imgs` VARCHAR(50) COMMENT '轮播图片'
)ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;


INSERT INTO `gspro_user`(`id`,`username`,`password`,`nickname`,`avatar`)VALUES(1,'是lisa啊','123123123','tom','/images/gs_icon2.jpg');
INSERT INTO `gspro_user`(`id`,`username`,`password`,`nickname`,`avatar`)VALUES(2,'是jack啊','234234234','小红','/images/gs_icon2.jpg');
INSERT INTO `gspro_user`(`id`,`username`,`password`,`nickname`,`avatar`)VALUES(3,'是lisa啊','123123123','tom','/images/gs_icon2.jpg');
INSERT INTO `gspro_user`(`id`,`username`,`password`,`nickname`,`avatar`)VALUES(4,'是jack啊','234234234','小红','/images/gs_icon2.jpg');

INSERT INTO `gspro_nav`(`id`,`category`)VALUES(1,'精选');
INSERT INTO `gspro_nav`(`id`,`category`)VALUES(2,'收藏热榜');
INSERT INTO `gspro_nav`(`id`,`category`)VALUES(3,'民宿片场');
INSERT INTO `gspro_nav`(`id`,`category`)VALUES(4,'亲子好房');

INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(1,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',1,1);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(2,'/images/201903090953149642_700_467.jpg','小象01秋高气爽游故宫',1,1);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(3,'/images/201908311829492406_700_467.jpg','宋丹丹和铁锤的故事~',1,1);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(4,'/images/201911072240514940_700_467.jpg','12天后,他将在这里举办婚礼',1,1);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(5,'/images/202005060304171580_700_467.jpg','最美摩洛哥主题民宿，干净整洁',1,1);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(6,'/images/202005060304171580_700_467.jpg','最美摩洛哥主题民宿，干净整洁',2,2);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(7,'/images/202005060304171580_700_467.jpg','最美摩洛哥主题民宿，干净整洁',2,2);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(8,'/images/202005060304171580_700_467.jpg','最美摩洛哥主题民宿，干净整洁',2,2);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(9,'/images/202005060304171580_700_467.jpg','最美摩洛哥主题民宿，干净整洁',2,2);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(10,'/images/202005060304171580_700_467.jpg','最美摩洛哥主题民宿，干净整洁',2,2);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(11,'/images/201908311829492406_700_467.jpg','宋丹丹和铁锤的故事~',3,3);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(12,'/images/201908311829492406_700_467.jpg','宋丹丹和铁锤的故事~',3,3);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(13,'/images/201908311829492406_700_467.jpg','宋丹丹和铁锤的故事~',3,3);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(14,'/images/201908311829492406_700_467.jpg','宋丹丹和铁锤的故事~',3,3);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(15,'/images/201908311829492406_700_467.jpg','宋丹丹和铁锤的故事~',3,3);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(16,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',4,4);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(17,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',4,4);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(18,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',4,4);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(19,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',4,4);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(20,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',4,4);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(21,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',4,4);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(22,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',3,3);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(23,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',2,2);
INSERT INTO `gspro_holder`(`id`,`images`,`title`,`nav_id`,`holder_id`)VALUES(24,'/images/201903080011264795_700_467.jpg','北京|带话题的民宿，童话世界loft',1,1);

INSERT INTO `gspro_carousel`(`id`,`imgs`)VALUES(1,'/images/gs_lb1.jpg');
INSERT INTO `gspro_carousel`(`id`,`imgs`)VALUES(2,'/images/gs_lb2.jpg');
INSERT INTO `gspro_carousel`(`id`,`imgs`)VALUES(3,'/images/gs_lb3.jpg');
INSERT INTO `gspro_carousel`(`id`,`imgs`)VALUES(4,'/images/gs_lb4.jpg');
