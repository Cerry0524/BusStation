-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-05-18 16:29:34
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `bussystem`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cars`
--

CREATE TABLE `cars` (
  `id` int(6) UNSIGNED NOT NULL,
  `CarName` varchar(10) NOT NULL,
  `CarRoad` varchar(10) NOT NULL,
  `nowST` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `cars`
--

INSERT INTO `cars` (`id`, `CarName`, `CarRoad`, `nowST`) VALUES
(1, 'A12345', 'Nangang', 0),
(2, 'B12345', 'Nangang', 0),
(3, 'C12345', 'Nangang', 0),
(4, 'D12345', 'Nangang', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `roads`
--

CREATE TABLE `roads` (
  `id` int(6) UNSIGNED NOT NULL,
  `rdNum` varchar(16) NOT NULL,
  `Station_id` int(6) NOT NULL,
  `rdOrder` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `roads`
--

INSERT INTO `roads` (`id`, `rdNum`, `Station_id`, `rdOrder`) VALUES
(1, 'Nangang', 1, 0),
(2, 'Nangang', 2, 1),
(3, 'Nangang', 3, 2),
(4, 'Nangang', 4, 3),
(5, 'Nangang', 5, 4),
(6, 'Nangang', 6, 5),
(7, 'Nangang', 7, 6),
(8, 'Nangang', 8, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `station`
--

CREATE TABLE `station` (
  `id` int(6) UNSIGNED NOT NULL,
  `stName` varchar(6) NOT NULL,
  `stDistance` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `station`
--

INSERT INTO `station` (`id`, `stName`, `stDistance`) VALUES
(1, '台北火車站', 4),
(2, '台北科技大學', 5),
(3, '市鎮府捷運站', 11),
(4, '南港火車站', 15),
(5, '南港高中', 3),
(6, '松山火車站', 14),
(7, '南港高中', 15),
(8, '南港展覽館', 11);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `roads`
--
ALTER TABLE `roads`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `roads`
--
ALTER TABLE `roads`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `station`
--
ALTER TABLE `station`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
