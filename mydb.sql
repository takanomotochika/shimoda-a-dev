-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 年 7 朁E11 日 17:29
-- サーバのバージョン： 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `dat_member`
--

CREATE TABLE `dat_member` (
  `code` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `postal1` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `postal2` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `danjo` int(11) NOT NULL,
  `born` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `dat_member`
--

INSERT INTO `dat_member` (`code`, `date`, `password`, `name`, `email`, `postal1`, `postal2`, `address`, `tel`, `danjo`, `born`) VALUES
(2, '2017-04-19 02:21:15', '71db2c0691df516a19845104f3fce0b6', '下田研究室', 'shimodalab.cit@gmail.com', '275', '0016', '千葉県習志野市津田沼2-17-1', '0474780661', 1, 1990),
(3, '2017-04-19 13:56:55', '3cb211104186539915fe6f57315f67db', '千葉工大', 'chiba.koudai@s.chibakoudai.jp', '275', '0016', '千葉県習志野市津田沼2-17-1', '0474780661', 1, 1990),
(4, '2017-04-20 03:57:34', '9602038a24c4347f6dc16d57cd85b455', '下田篤', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661', 1, 1960),
(5, '2017-05-13 13:46:08', '9602038a24c4347f6dc16d57cd85b455', '下田篤2', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661', 1, 1960);

-- --------------------------------------------------------

--
-- テーブルの構造 `dat_review`
--

CREATE TABLE `dat_review` (
  `code` int(11) NOT NULL,
  `code_product` int(11) NOT NULL,
  `review` varchar(280) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `dat_review`
--

INSERT INTO `dat_review` (`code`, `code_product`, `review`) VALUES
(1, 1, 'おいしかった。'),
(2, 1, 'おいしかった。'),
(3, 1, 'おいしかった。'),
(4, 1, 'すっぱかった。'),
(5, 1, 'すっぱかった。'),
(6, 1, 'すっぱかった。'),
(7, 1, 'あ'),
(8, 1, 'あああ'),
(9, 1, 'あ'),
(10, 1, 'あ'),
(11, 1, 'aaa'),
(12, 1, 'おなかいたい。'),
(13, 0, 'はままつ'),
(14, 0, 'はままつ'),
(15, 1, 'はままつ'),
(16, 1, 'あああ'),
(17, 1, 'あｓ'),
(18, 1, 'ｓｆｓだｆｓｄ');

-- --------------------------------------------------------

--
-- テーブルの構造 `dat_sales`
--

CREATE TABLE `dat_sales` (
  `code` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code_member` int(11) NOT NULL,
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `postal1` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `postal2` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(13) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `dat_sales`
--

INSERT INTO `dat_sales` (`code`, `date`, `code_member`, `name`, `email`, `postal1`, `postal2`, `address`, `tel`) VALUES
(2, '2017-04-19 02:21:15', 2, '下田研究室', 'shimodalab.cit@gmail.com', '275', '0016', '千葉県習志野市津田沼2-17-1', '0474780661'),
(3, '2017-04-19 13:56:55', 3, '千葉工大', 'chiba.koudai@s.chibakoudai.jp', '275', '0016', '千葉県習志野市津田沼2-17-1', '0474780661'),
(4, '2017-04-20 03:57:34', 4, '下田篤', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(5, '2017-04-23 00:45:18', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(6, '2017-04-23 00:48:38', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(7, '2017-04-23 01:11:37', 4, '下田篤', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(8, '2017-04-23 01:14:48', 4, '下田篤', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(9, '2017-05-13 13:43:51', 0, '下田篤', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(10, '2017-05-13 13:46:08', 5, '下田篤2', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(11, '2017-05-14 04:47:40', 4, '下田篤', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(12, '2017-06-16 11:25:36', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(13, '2017-06-16 11:38:21', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(14, '2017-06-16 11:40:16', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(15, '2017-06-16 11:44:52', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(16, '2017-06-16 11:45:25', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(17, '2017-06-17 05:23:43', 0, 'aaa', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1', '0474780661'),
(18, '2017-06-20 18:02:50', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(19, '2017-06-20 18:54:56', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(20, '2017-06-20 18:56:40', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(21, '2017-06-20 19:01:31', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(22, '2017-06-20 19:06:14', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(23, '2017-06-20 19:07:33', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(24, '2017-06-20 19:09:56', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(25, '2017-06-26 13:01:35', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(26, '2017-06-26 13:09:45', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(27, '2017-06-26 15:25:28', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(28, '2017-06-26 15:31:27', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(29, '2017-06-26 22:29:19', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(30, '2017-06-26 22:31:32', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(31, '2017-06-26 22:41:54', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(32, '2017-07-11 00:09:17', 0, 'a', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661'),
(33, '2017-07-11 02:57:32', 0, 'あ', 'atsushi.shimoda@it-chiba.ac.jp', '275', '0016', '津田沼2-17-1, 千葉工業大学PM学科', '0474780661');

-- --------------------------------------------------------

--
-- テーブルの構造 `dat_sales_product`
--

CREATE TABLE `dat_sales_product` (
  `code` int(11) NOT NULL,
  `code_sales` int(11) NOT NULL,
  `code_product` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `dat_sales_product`
--

INSERT INTO `dat_sales_product` (`code`, `code_sales`, `code_product`, `price`, `quantity`) VALUES
(3, 2, 1, 100, 1),
(4, 2, 2, 100, 1),
(5, 3, 3, 100, 1),
(6, 4, 4, 100, 2),
(7, 4, 5, 100, 2),
(8, 5, 7, 100, 2),
(9, 6, 8, 100, 1),
(10, 7, 9, 100, 1),
(11, 8, 1, 100, 1),
(12, 9, 2, 100, 1),
(13, 10, 3, 100, 1),
(14, 11, 4, 100, 1),
(15, 12, 5, 100, 2),
(16, 13, 7, 100, 1),
(17, 14, 8, 100, 1),
(18, 16, 9, 100, 5),
(19, 17, 1, 100, 1),
(20, 18, 2, 100, 1),
(21, 19, 3, 100, 1),
(22, 20, 4, 100, 1),
(23, 21, 5, 100, 2),
(24, 22, 7, 100, 1),
(25, 23, 6, 100, 1),
(26, 24, 5, 100, 2),
(27, 25, 1, 100, 1),
(28, 26, 1, 100, 1),
(29, 27, 1, 100, 1),
(30, 28, 1, 100, 1),
(31, 29, 1, 100, 1),
(32, 30, 1, 100, 1),
(33, 31, 1, 100, 1),
(34, 32, 1, 100, 1),
(35, 33, 10, 100, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `dat_stock`
--

CREATE TABLE `dat_stock` (
  `code` int(11) NOT NULL,
  `code_product` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `dat_stock`
--

INSERT INTO `dat_stock` (`code`, `code_product`, `stock`) VALUES
(1, 8, 10),
(2, 9, 100),
(3, 1, 3),
(4, 14, 100);

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_product`
--

CREATE TABLE `mst_product` (
  `code` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `gazou` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `info` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `maker` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `distance` int(11) NOT NULL,
  `price2` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `distance2` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_product`
--

INSERT INTO `mst_product` (`code`, `name`, `price`, `gazou`, `info`, `stock`, `type`, `size`, `color`, `maker`, `distance`, `price2`, `distance2`) VALUES
(1, 'tomato', 100, '', '', 0, 'skirt', 'L', 'green', '', 0, '', ''),
(2, 'jaga', 100, 'jaga.jpg', '', 0, '', '', '', '', 0, '', ''),
(3, 'daikon', 100, 'daikon.jpg', '', 0, '', '', '', '', 0, '', ''),
(4, 'negi', 100, 'negi_taba.jpg', '', 0, '', '', '', '', 0, '', ''),
(5, 'アスパラ', 100, 'aspara.jpg', '太くておいしい、千葉産です。', 0, '', '', '', '', 0, '', ''),
(7, 'かぼちゃ', 100, 'kyabetsu.jpg', '馬車に化けるかぼちゃ。', 0, '', '', '', '', 0, '', ''),
(8, 'やさい', 100, 'tomato_yama.jpg', '新しいやさい。', 0, '', '', '', '', 0, '', ''),
(9, 'かｋｋ', 100, '', 'わわわ', 0, '', '', '', '', 0, '', ''),
(11, 'プリウス', 1000, '', '燃費が良い', 1, '', '', '', 'トヨタ', 1000, '～30万円', '1～3万km'),
(12, 'アクア', 1000, '', '', 1, '', '', '黒', 'トヨタ', 1000, '～30万円', '1万km以下'),
(13, 'カープシャツ', 1000, '', '赤いTシャツ', 0, 'T-shirt', 'M', '', '', 0, '', ''),
(14, '誠也ユニ', 100, '', '', 0, '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_staff`
--

CREATE TABLE `mst_staff` (
  `code` int(11) NOT NULL,
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_staff`
--

INSERT INTO `mst_staff` (`code`, `name`, `password`) VALUES
(1, 'shimoda', '9602038a24c4347f6dc16d57cd85b455'),
(2, 'yabuki', '9abc0aee29c4f992aefffe3507bba348'),
(3, 'takuma', '3fba72c69719599256c2077481fbc7fa'),
(4, 'kurata2', '263f6a9d3cc53900c953f6278f222087');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dat_member`
--
ALTER TABLE `dat_member`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `dat_review`
--
ALTER TABLE `dat_review`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `dat_sales`
--
ALTER TABLE `dat_sales`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `dat_sales_product`
--
ALTER TABLE `dat_sales_product`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `dat_stock`
--
ALTER TABLE `dat_stock`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `mst_product`
--
ALTER TABLE `mst_product`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `mst_staff`
--
ALTER TABLE `mst_staff`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dat_member`
--
ALTER TABLE `dat_member`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dat_review`
--
ALTER TABLE `dat_review`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `dat_sales`
--
ALTER TABLE `dat_sales`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `dat_sales_product`
--
ALTER TABLE `dat_sales_product`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `dat_stock`
--
ALTER TABLE `dat_stock`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mst_product`
--
ALTER TABLE `mst_product`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `mst_staff`
--
ALTER TABLE `mst_staff`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
