/*
Carlos Munoz
assignment07
INFO_1335_4A
Rosas
5-6-2021
*/
DROP DATABASE IF EXISTS soccer_league;
CREATE DATABASE soccer_league;
USE soccer_league;

CREATE TABLE `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50),
  `team_colors` varchar(50),
  `team_mascot` varchar(50),
  PRIMARY KEY (`team_id`)
);

CREATE TABLE `head_coaches` (
  `coach_id` int NOT NULL AUTO_INCREMENT,
  `team_id` int,
  `coach_first_name` varchar(20),
  `coach_last_name` varchar(20),
  `coach_phone` varchar(15),
  PRIMARY KEY (`coach_id`),
  CONSTRAINT head_coachesFkTeams 
  FOREIGN KEY (`team_id`) REFERENCES teams (`team_id`)
);

CREATE TABLE `players` (
  `player_id` int NOT NULL AUTO_INCREMENT,
  `team_id` int,
  `player_first_name` varchar(20),
  `player_last_name` varchar(20),
  `player_position` varchar(50),
  `player_number` int,
  PRIMARY KEY (`player_id`),
  CONSTRAINT playersFkTeams
  FOREIGN KEY (`team_id`) REFERENCES teams (`team_id`)
);

CREATE TABLE `games` (
  `game_id` int NOT NULL AUTO_INCREMENT,
  `game_date` date,
  `game_time` time,
  `home_team` int,
  `away_team` int,
  `winner` varchar(50),
  `field_location` varchar(50),
  PRIMARY KEY (`game_id`),
  CONSTRAINT homeFkTeams
  FOREIGN KEY (`home_team`) REFERENCES teams (`team_id`),
  CONSTRAINT awayFkTeams
  FOREIGN KEY (`away_team`) REFERENCES teams (`team_id`)
);


