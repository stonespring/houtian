DROP TABLE IF EXISTS `htian_link`;
CREATE TABLE `htian_link` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `htian_link` (`id`,`name`,`add_time`,`version`,`team`,`app`,`email`,`web`,`pubdate`) VALUES (1,'后天网络','','http://houtianbest.cn',2,1),(2,'秒杀网','','http://www.mswang.net',4,1),(3,'HOUTIAN','','http://www.houtianbest.cn',3,1),(4,'后天淘宝客','','http://www.houtianbest.cn/',1,1);