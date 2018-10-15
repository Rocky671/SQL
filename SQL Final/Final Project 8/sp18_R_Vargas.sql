-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2018 at 03:12 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp18_R_Vargas`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `empType` enum('Game Programmers','Game Artists','Game Designers','Producers','Testers') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payType` int(10) UNSIGNED NOT NULL,
  `projID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`id`, `firstName`, `lastName`, `empType`, `payType`, `projID`) VALUES
(21, 'Christopher ', 'Peterson', 'Game Programmers', 4, 4),
(22, 'Rocky', 'Vargas', 'Game Programmers', 5, 3),
(23, 'Stephen', 'Smetany', 'Game Artists', 2, 5),
(24, 'Tyler', 'Harper', 'Game Artists', 2, 2),
(25, 'Jeff ', 'Watanabe', 'Game Artists', 2, 2),
(26, 'ALex', 'Pabon', 'Game Designers', 1, 5),
(27, 'Elizabeth', 'Yskes', 'Game Programmers', 3, 3),
(28, 'James', 'Mathieu', 'Game Artists', 2, 1),
(29, 'Ethyn', 'Payne', 'Testers', 2, 5),
(30, 'John', 'Johnson', 'Producers', 1, 1),
(31, 'Bobby', 'Fillay', 'Testers', 1, 4),
(32, 'Gordon ', 'Ramsay', 'Producers', 4, 2),
(33, 'Donald', 'Trump', 'Producers', 4, 2),
(34, 'Stan', 'Lee', 'Producers', 4, 5),
(35, 'Bill', 'Nye', 'Game Programmers', 2, 2),
(36, 'John', 'Smith', 'Game Designers', 1, 4),
(37, 'Chicken', 'Fil-A', 'Game Designers', 1, 1),
(38, 'Wendys', 'Fresh Never Frozen', 'Testers', 3, 1),
(39, 'Liam', 'Neeson', 'Game Artists', 2, 4),
(40, 'Jessica', 'Alba', 'Testers', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Genre`
--

CREATE TABLE `Genre` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Genre`
--

INSERT INTO `Genre` (`id`, `description`) VALUES
(1, 'First Person Shooter'),
(2, 'Role Playing Game'),
(3, 'Adventure'),
(4, 'Massively Multiplayer Online ROG'),
(5, 'Hack and Slash');

-- --------------------------------------------------------

--
-- Table structure for table `Pay`
--

CREATE TABLE `Pay` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pay`
--

INSERT INTO `Pay` (`id`, `description`, `amount`) VALUES
(1, 'Junior', 15),
(2, 'Mid-Level', 40),
(3, 'Senior', 50),
(4, 'Rockstar', 75),
(5, 'CEO', 100);

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `launch` date NOT NULL,
  `state` int(10) UNSIGNED NOT NULL,
  `gameGenre` int(10) UNSIGNED NOT NULL,
  `pubType` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Project`
--

INSERT INTO `Project` (`id`, `name`, `launch`, `state`, `gameGenre`, `pubType`) VALUES
(1, 'Tom Clancy\'s Pokemon of the Dead', '2017-08-16', 2, 1, 2),
(2, 'Apocalypse: Duck\'s Revenge', '2018-03-15', 3, 5, 1),
(3, 'Grand Theft Auto: Phoenix', '2019-03-11', 1, 3, 4),
(4, 'Chris Peterson: The Interview', '2018-01-25', 2, 2, 5),
(5, 'Rooty Tooty Spacey Shooty', '2018-09-12', 4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ProjectState`
--

CREATE TABLE `ProjectState` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ProjectState`
--

INSERT INTO `ProjectState` (`id`, `description`) VALUES
(1, 'In Progress'),
(2, 'Completed'),
(3, 'Not Started'),
(4, 'Requires Funding'),
(5, 'Shipped');

-- --------------------------------------------------------

--
-- Table structure for table `Publisher`
--

CREATE TABLE `Publisher` (
  `pubID` int(10) NOT NULL,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Publisher`
--

INSERT INTO `Publisher` (`pubID`, `Name`) VALUES
(1, 'Activision'),
(2, 'EA'),
(3, 'Ubisoft'),
(4, 'Capcom'),
(5, 'Bethesda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payType` (`payType`),
  ADD KEY `projID` (`projID`);

--
-- Indexes for table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Pay`
--
ALTER TABLE `Pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_state` (`state`),
  ADD KEY `gameGenre` (`gameGenre`);

--
-- Indexes for table `ProjectState`
--
ALTER TABLE `ProjectState`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Publisher`
--
ALTER TABLE `Publisher`
  ADD PRIMARY KEY (`pubID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Pay`
--
ALTER TABLE `Pay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Project`
--
ALTER TABLE `Project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ProjectState`
--
ALTER TABLE `ProjectState`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Publisher`
--
ALTER TABLE `Publisher`
  MODIFY `pubID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
