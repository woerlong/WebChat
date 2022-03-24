create database `building`;
use `building`;
DROP TABLE IF EXISTS `user`;
create table `user`
(
    `uid`      int(10),
    `username` varchar(30),
    `password` varchar(30),
    `picture`  varchar(30),
    KEY `uid ` (`uid`)
);
insert into `user` (`uid`,`username`,`password`,`picture`)values
    (1,"admin","123456","/pic/admin.png"),
    (2,"friend","123456","/pic/friend.png");

create unique index user_id_uindex
    on `user` (`id`);

create unique index user_username_uindex
    on `user` (`username`);

create table `chat`
(
    `name`  varchar(30),
    `value` varchar(200),
    `time`  int
    );
insert into `chat`(`name`,`value`,`time`)values
    ("admin","这是一条测试信息",1616547040),
    ("friend","testtest",1616547048);
create table `online`
(
    uid  int not null,
    name varchar(30)
    );

create unique index online_uid_uindex
    on `online` (uid);




