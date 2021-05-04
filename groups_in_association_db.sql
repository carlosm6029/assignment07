/*
Carlos Munoz
assignment07
INFO_1335_4A
Rosas
5-6-2021
*/
DROP DATABASE IF EXISTS groups_in_association;
CREATE DATABASE groups_in_association;
USE groups_in_association;

CREATE TABLE `groups` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50),
  `group_description` varchar(150),
  PRIMARY KEY (`group_id`)
);

CREATE TABLE `members` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `member_first_name` varchar(20),
  `member_last_name` varchar(20),
  `member_phone` varchar(15),
  PRIMARY KEY (`member_id`)
);

CREATE TABLE `members_to_groups` (
  `group_id` int,
  `member_id` int,
  CONSTRAINT group_id_to_group
  FOREIGN KEY (`group_id`) REFERENCES groups (`group_id`),
  CONSTRAINT member_id_to_group
  FOREIGN KEY (`member_id`) REFERENCES members (`member_id`)
);
