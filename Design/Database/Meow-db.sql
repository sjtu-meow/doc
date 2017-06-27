-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-06-27 09:45:13
-- 服务器版本： 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Meow`
--
CREATE DATABASE IF NOT EXISTS `Meow` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `Meow`;

-- --------------------------------------------------------

--
-- 表的结构 `Answer`
--

CREATE TABLE `Answer` (
  `id` int(11) UNSIGNED NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL,
  `creator` int(11) UNSIGNED NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Article`
--

CREATE TABLE `Article` (
  `id` int(11) UNSIGNED NOT NULL,
  `creator` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `read_cnt` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Banner`
--

CREATE TABLE `Banner` (
  `id` int(11) UNSIGNED NOT NULL,
  `item_type` tinyint(3) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Comment`
--

CREATE TABLE `Comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `creator` int(11) UNSIGNED NOT NULL,
  `item_type` tinyint(3) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `parent` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Favorite`
--

CREATE TABLE `Favorite` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `item_type` tinyint(3) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `FollowQuestion`
--

CREATE TABLE `FollowQuestion` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `FollowUser`
--

CREATE TABLE `FollowUser` (
  `id` int(11) UNSIGNED NOT NULL,
  `follower` int(11) UNSIGNED NOT NULL,
  `followee` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Like`
--

CREATE TABLE `Like` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `item_type` tinyint(3) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Moment`
--

CREATE TABLE `Moment` (
  `id` int(11) UNSIGNED NOT NULL,
  `creator` int(11) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `MomentMedia`
--

CREATE TABLE `MomentMedia` (
  `id` int(11) UNSIGNED NOT NULL,
  `moment_id` int(11) UNSIGNED NOT NULL,
  `media_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(512) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Notification`
--

CREATE TABLE `Notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON格式',
  `has_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `PushArchive`
--

CREATE TABLE `PushArchive` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `item_type` tinyint(3) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Question`
--

CREATE TABLE `Question` (
  `id` int(11) UNSIGNED NOT NULL,
  `creator` int(11) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `Report`
--

CREATE TABLE `Report` (
  `id` int(11) UNSIGNED NOT NULL,
  `creator` int(11) UNSIGNED NOT NULL,
  `item_type` tinyint(3) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `User`
--

CREATE TABLE `User` (
  `id` int(11) UNSIGNED NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Answer`
--
ALTER TABLE `Answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Banner`
--
ALTER TABLE `Banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Favorite`
--
ALTER TABLE `Favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FollowQuestion`
--
ALTER TABLE `FollowQuestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FollowUser`
--
ALTER TABLE `FollowUser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Like`
--
ALTER TABLE `Like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Moment`
--
ALTER TABLE `Moment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MomentMedia`
--
ALTER TABLE `MomentMedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Notification`
--
ALTER TABLE `Notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PushArchive`
--
ALTER TABLE `PushArchive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Report`
--
ALTER TABLE `Report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `Answer`
--
ALTER TABLE `Answer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Article`
--
ALTER TABLE `Article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Banner`
--
ALTER TABLE `Banner`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Comment`
--
ALTER TABLE `Comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Favorite`
--
ALTER TABLE `Favorite`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `FollowQuestion`
--
ALTER TABLE `FollowQuestion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `FollowUser`
--
ALTER TABLE `FollowUser`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Like`
--
ALTER TABLE `Like`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Moment`
--
ALTER TABLE `Moment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `MomentMedia`
--
ALTER TABLE `MomentMedia`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Notification`
--
ALTER TABLE `Notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `PushArchive`
--
ALTER TABLE `PushArchive`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Question`
--
ALTER TABLE `Question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `Report`
--
ALTER TABLE `Report`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
