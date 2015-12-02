-- 数据源配置库
create table datasource(
	ID int primary key auto_increment,
	DBS_ID varchar(4) not null, -- 数据库模值
	DBS_Name varchar(64), -- 数据源名称
	DBS_DriverClassName varchar(256) not null, -- 数据库驱动名称
	DBS_URL varchar(256) not null, -- 数据库连接地址
	DBS_UserName varchar(64) not null, -- 数据库用户名
	DBS_Password varchar(32) not null -- 数据库密码
);
insert into datasource(DBS_ID, DBS_Name, DBS_DriverClassName, DBS_URL, DBS_UserName, DBS_Password) 
values('1', '本地连接1', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test_mybatis_1?useUnicode=true&amp;characterEncoding=utf-8', 'root', 'root');
insert into datasource(DBS_ID, DBS_Name, DBS_DriverClassName, DBS_URL, DBS_UserName, DBS_Password) 
values('2', '本地连接2', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test_mybatis_2?useUnicode=true&amp;characterEncoding=utf-8', 'root', 'root');
insert into datasource(DBS_ID, DBS_Name, DBS_DriverClassName, DBS_URL, DBS_UserName, DBS_Password) 
values('3', '本地连接3', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test_mybatis_3?useUnicode=true&amp;characterEncoding=utf-8', 'root', 'root');
insert into datasource(DBS_ID, DBS_Name, DBS_DriverClassName, DBS_URL, DBS_UserName, DBS_Password) 
values('4', '本地连接4', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test_mybatis_4?useUnicode=true&amp;characterEncoding=utf-8', 'root', 'root');

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `user_00` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) not null,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_01` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) not null,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_02` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) not null,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_03` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) not null,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_04` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) not null,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_05` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) not null,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_06` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) not null,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user_07` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(36) not null,
  `state` int(11) default NULL,
  `nickname` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;