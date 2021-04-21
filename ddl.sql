DROP DATABASE IF EXISTS comp520project1; 
CREATE DATABASE comp520project1;
USE comp520project1;

CREATE TABLE  patriots (
    `team_name` VARCHAR(255) PRIMARY KEY,
    `nickname` VARCHAR(255) NOT NULL,
    `hometown` VARCHAR(255) NOT NULL,
    `team_owner` VARCHAR(255) NOT NULL 
);

CREATE TABLE opponent(
    `op_name` VARCHAR(255) PRIMARY KEY,
    `nickname` VARCHAR(255),
    `hometown` VARCHAR(255) NOT NULL,
    `team_owner` VARCHAR(255) NOT NULL
);

CREATE TABLE games(
    `game_date` VARCHAR(255) PRIMARY KEY,
    `winner` VARCHAR(255) NOT NULL,
    `stadium` VARCHAR(255) NOT NULL,
    `patriots_game` VARCHAR(255) NOT NULL,
    `pats_score` INT(11) NOT NULL, 
    `op_score` INT(11) NOT NULL,
    `game_location` VARCHAR(255) NOT NULL,
    `op_team` VARCHAR(255) NOT NULL,
    FOREIGN KEY (`patriots_game`) REFERENCES patriots(`team_name`),
    FOREIGN KEY (`op_team`) REFERENCES opponent(`op_name`)
);