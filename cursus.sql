-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-05-10 14:02:41
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cursus`
--

-- --------------------------------------------------------

--
-- 表的结构 `cours`
--

CREATE TABLE `cours` (
  `num_cours` int(10) NOT NULL,
  `sigle` int(10) NOT NULL,
  `categorie` int(10) NOT NULL,
  `credit` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `cours`
--

INSERT INTO `cours` (`num_cours`, `sigle`, `categorie`, `credit`) VALUES
(1, 2, 3, 4);

-- --------------------------------------------------------

--
-- 表的结构 `cursus`
--

CREATE TABLE `cursus` (
  `num_etu` int(10) NOT NULL,
  `num_cours` int(10) NOT NULL,
  `resuldat` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `etudiant`
--

CREATE TABLE `etudiant` (
  `numero` int(10) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `admission` varchar(10) NOT NULL,
  `filiere` varchar(10) NOT NULL,
  `sem_seq` int(10) NOT NULL,
  `sem_label` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursus`
--
ALTER TABLE `cursus`
  ADD PRIMARY KEY (`num_etu`,`num_cours`),
  ADD KEY `num_etu` (`num_etu`),
  ADD KEY `num_cours` (`num_cours`),
  ADD KEY `num_etu_2` (`num_etu`),
  ADD KEY `num_cours_2` (`num_cours`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`numero`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
