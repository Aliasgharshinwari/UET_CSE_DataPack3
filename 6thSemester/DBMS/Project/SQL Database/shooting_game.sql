-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 24, 2024 at 08:58 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shooting_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
CREATE TABLE IF NOT EXISTS `achievement` (
  `achievement_id` int NOT NULL,
  `achievement_name` varchar(50) NOT NULL,
  `achievement_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`achievement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`achievement_id`, `achievement_name`, `achievement_desc`) VALUES
(1, 'First Blood', 'First kill in the game'),
(2, 'Treasure Hunter', 'Find all hidden treasures');

-- --------------------------------------------------------

--
-- Table structure for table `boss`
--

DROP TABLE IF EXISTS `boss`;
CREATE TABLE IF NOT EXISTS `boss` (
  `boss_id` int NOT NULL,
  `boss_name` varchar(50) NOT NULL,
  `abilities` varchar(50) NOT NULL,
  `level_id` int NOT NULL,
  PRIMARY KEY (`boss_id`),
  KEY `level_id` (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `boss`
--

INSERT INTO `boss` (`boss_id`, `boss_name`, `abilities`, `level_id`) VALUES
(1, 'Boss 1', 'Fire Breath', 2),
(2, 'Boss 2', 'Regeneration', 1);

-- --------------------------------------------------------

--
-- Table structure for table `checkpoint`
--

DROP TABLE IF EXISTS `checkpoint`;
CREATE TABLE IF NOT EXISTS `checkpoint` (
  `item_id` int NOT NULL,
  `checkpoint_no` int NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `checkpoint`
--

INSERT INTO `checkpoint` (`item_id`, `checkpoint_no`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `enemy_ai`
--

DROP TABLE IF EXISTS `enemy_ai`;
CREATE TABLE IF NOT EXISTS `enemy_ai` (
  `item_id` int NOT NULL,
  `health` int NOT NULL,
  `enemy_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enemy_ai`
--

INSERT INTO `enemy_ai` (`item_id`, `health`, `enemy_name`) VALUES
(3, 100, 'AI 1'),
(4, 100, 'AI 2');

-- --------------------------------------------------------

--
-- Table structure for table `game_character`
--

DROP TABLE IF EXISTS `game_character`;
CREATE TABLE IF NOT EXISTS `game_character` (
  `character_id` int NOT NULL,
  `character_name` varchar(50) NOT NULL,
  `character_type` varchar(50) DEFAULT NULL,
  `character_price` int DEFAULT '0',
  `store_id` int NOT NULL,
  PRIMARY KEY (`character_id`),
  KEY `store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `game_character`
--

INSERT INTO `game_character` (`character_id`, `character_name`, `character_type`, `character_price`, `store_id`) VALUES
(1, 'Commando 1', 'Rifle', 1000, 1),
(2, 'Commando 2', 'Sniper', 1500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int NOT NULL,
  `item_type` varchar(10) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_type`) VALUES
(1, 'Checkpoint'),
(2, 'Checkpoint'),
(3, 'Enemy AI'),
(4, 'Enemy AI'),
(5, 'Pick Up'),
(6, 'Pick Up'),
(7, 'Pick Up');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
CREATE TABLE IF NOT EXISTS `level` (
  `level_id` int NOT NULL,
  `level_name` varchar(50) NOT NULL,
  `level_type` varchar(10) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`, `level_type`) VALUES
(1, 'Level 1', 'Easy'),
(2, 'Level 2', 'Hard');

-- --------------------------------------------------------

--
-- Table structure for table `level_item`
--

DROP TABLE IF EXISTS `level_item`;
CREATE TABLE IF NOT EXISTS `level_item` (
  `level_id` int NOT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`level_id`,`item_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level_played`
--

DROP TABLE IF EXISTS `level_played`;
CREATE TABLE IF NOT EXISTS `level_played` (
  `level_id` int NOT NULL,
  `player_id` int NOT NULL,
  `time_played` datetime DEFAULT NULL,
  PRIMARY KEY (`level_id`,`player_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `level_played`
--

INSERT INTO `level_played` (`level_id`, `player_id`, `time_played`) VALUES
(1, 1, '2024-06-23 09:50:33'),
(2, 1, '2024-06-24 09:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

DROP TABLE IF EXISTS `pickup`;
CREATE TABLE IF NOT EXISTS `pickup` (
  `item_id` int NOT NULL,
  `pickup_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`item_id`, `pickup_type`) VALUES
(5, 'Weapon Pickup'),
(6, 'Health Pickup'),
(7, 'Currency Pickup');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `player_id` int NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `currency` int DEFAULT '100',
  `number_of_kills` int DEFAULT '0',
  `active_quest_id` int DEFAULT '0',
  `selected_char_id` int DEFAULT '0',
  PRIMARY KEY (`player_id`),
  KEY `active_quest_id` (`active_quest_id`),
  KEY `selected_char_id` (`selected_char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `player_name`, `currency`, `number_of_kills`, `active_quest_id`, `selected_char_id`) VALUES
(1, 'PlayerOne', 150, 10, 1, 1),
(2, 'PlayerTwo', 200, 20, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
CREATE TABLE IF NOT EXISTS `quest` (
  `quest_id` int NOT NULL,
  `quest_name` varchar(50) NOT NULL,
  `reward` int DEFAULT '10',
  `quest_type` varchar(50) DEFAULT '0',
  PRIMARY KEY (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`quest_id`, `quest_name`, `reward`, `quest_type`) VALUES
(1, 'First Quest', 100, 'Main'),
(2, 'Second Quest', 200, 'Side');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `unlock_achievement_certificate`
--

DROP TABLE IF EXISTS `unlock_achievement_certificate`;
CREATE TABLE IF NOT EXISTS `unlock_achievement_certificate` (
  `player_id` int NOT NULL,
  `achievement_id` int NOT NULL,
  `time_unlocked` datetime DEFAULT NULL,
  PRIMARY KEY (`player_id`,`achievement_id`),
  KEY `achievement_id` (`achievement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `unlock_achievement_certificate`
--

INSERT INTO `unlock_achievement_certificate` (`player_id`, `achievement_id`, `time_unlocked`) VALUES
(1, 1, '2024-06-23 09:54:00'),
(2, 2, '2024-06-23 08:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `weapon`
--

DROP TABLE IF EXISTS `weapon`;
CREATE TABLE IF NOT EXISTS `weapon` (
  `weapon_id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `damage` int NOT NULL,
  `store_id` int DEFAULT NULL,
  PRIMARY KEY (`weapon_id`),
  KEY `store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `weapon`
--

INSERT INTO `weapon` (`weapon_id`, `name`, `damage`, `store_id`) VALUES
(1, 'AK47', 50, 1),
(2, 'MP5', 30, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boss`
--
ALTER TABLE `boss`
  ADD CONSTRAINT `boss_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`);

--
-- Constraints for table `checkpoint`
--
ALTER TABLE `checkpoint`
  ADD CONSTRAINT `checkpoint_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `enemy_ai`
--
ALTER TABLE `enemy_ai`
  ADD CONSTRAINT `enemy_ai_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `game_character`
--
ALTER TABLE `game_character`
  ADD CONSTRAINT `game_character_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

--
-- Constraints for table `level_item`
--
ALTER TABLE `level_item`
  ADD CONSTRAINT `level_item_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`),
  ADD CONSTRAINT `level_item_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `level_played`
--
ALTER TABLE `level_played`
  ADD CONSTRAINT `level_played_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`),
  ADD CONSTRAINT `level_played_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `pickup`
--
ALTER TABLE `pickup`
  ADD CONSTRAINT `pickup_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`active_quest_id`) REFERENCES `quest` (`quest_id`),
  ADD CONSTRAINT `player_ibfk_2` FOREIGN KEY (`selected_char_id`) REFERENCES `game_character` (`character_id`);

--
-- Constraints for table `unlock_achievement_certificate`
--
ALTER TABLE `unlock_achievement_certificate`
  ADD CONSTRAINT `unlock_achievement_certificate_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `unlock_achievement_certificate_ibfk_2` FOREIGN KEY (`achievement_id`) REFERENCES `achievement` (`achievement_id`);

--
-- Constraints for table `weapon`
--
ALTER TABLE `weapon`
  ADD CONSTRAINT `weapon_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
