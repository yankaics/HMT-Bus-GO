-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-05-08 11:41:03
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scaubus`
--

-- --------------------------------------------------------

--
-- 表的结构 `bus_keywords`
--

CREATE TABLE `bus_keywords` (
  `key_id` int(10) UNSIGNED NOT NULL,
  `key_name` text NOT NULL,
  `line_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bus_keywords`
--

INSERT INTO `bus_keywords` (`key_id`, `key_name`, `line_id`) VALUES
(1, '校巴1号线-工程学院开往荷园', 1),
(2, '校巴1号线-开往荷园(请改用工程学院开往荷园线)', 1),
(3, '校巴1号线-开往荷园（已过期）', 1),
(4, '校巴1号线-荷园开往工程学院', 2),
(5, '校巴1号线-开往西园(请改用荷园开往工程学院线)', 2),
(6, '校巴1号线-开往西园（已过期）', 2),
(7, '校巴2号线-开往荷园', 3),
(8, '校巴2号线-开往正门', 4);

-- --------------------------------------------------------

--
-- 表的结构 `bus_line`
--

CREATE TABLE `bus_line` (
  `line_id` int(10) UNSIGNED NOT NULL,
  `line_name` varchar(50) NOT NULL,
  `first_bus` char(5) NOT NULL,
  `last_bus` char(5) NOT NULL,
  `line_start` varchar(30) NOT NULL,
  `line_end` varchar(30) NOT NULL,
  `line_inverse` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bus_line`
--

INSERT INTO `bus_line` (`line_id`, `line_name`, `first_bus`, `last_bus`, `line_start`, `line_end`, `line_inverse`) VALUES
(1, '1号线', '07:10', '22:00', '工程学院', '荷园', 2),
(2, '1号线', '07:10', '22:00', '荷园', '工程学院', 1),
(3, '2号线', '07:20', '22:00', '正门(地铁站)', '荷园', 4),
(4, '2号线', '07:20', '22:00', '荷园', '正门(地铁站)', 3),
(5, '3号线', '07:40', '18:00', '正门(地铁站)', '茶山广场', 6),
(6, '3号线', '07:40', '18:00', '茶山广场', '正门(地铁站)', 5),
(7, '1号线B线', '09:00', '21:00', '工程学院', '荷园', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bus_polyline`
--

CREATE TABLE `bus_polyline` (
  `poly_id` int(10) UNSIGNED NOT NULL,
  `line_id` int(10) UNSIGNED NOT NULL,
  `poly_color` varchar(7) NOT NULL,
  `poly_path` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bus_polyline`
--

INSERT INTO `bus_polyline` (`poly_id`, `line_id`, `poly_color`, `poly_path`) VALUES
(1, 1, '#0099ff', '[[113.346806,23.158768],[113.346891,23.158492],[113.346956,23.158433],[113.347106,23.158472],[113.347203,23.158482],[113.347417,23.158442],[113.347578,23.158383],[113.348061,23.158985],[113.348672,23.158975],[113.350089,23.15866],[113.352588,23.1586],[113.35261,23.159261],[113.352814,23.159182],[113.3532,23.159143],[113.353672,23.159222],[113.354112,23.159172],[113.354273,23.158699],[113.354466,23.157673],[113.35452,23.157002],[113.354552,23.154773],[113.354605,23.154684],[113.357062,23.154664],[113.357105,23.153076],[113.366429,23.153096],[113.366418,23.151419],[113.366482,23.151439],[113.366761,23.151656],[113.369637,23.151675],[113.369722,23.151715],[113.369733,23.153096],[113.369873,23.153116],[113.372018,23.153994],[113.372104,23.154595],[113.371525,23.155128],[113.370366,23.156489],[113.369594,23.157318],[113.36836,23.158018],[113.36836,23.160504]]'),
(2, 2, '#00cc99', '[[113.368253,23.160544],[113.368328,23.159893],[113.36836,23.158018],[113.369443,23.157426],[113.370227,23.156677],[113.371074,23.155602],[113.372093,23.154605],[113.372008,23.153994],[113.36984,23.153106],[113.369722,23.151735],[113.369637,23.151666],[113.366772,23.151675],[113.366429,23.151429],[113.366429,23.153096],[113.357213,23.153126],[113.357137,23.154674],[113.354627,23.154704],[113.354595,23.156736],[113.354123,23.159172],[113.353736,23.159222],[113.353136,23.159143],[113.352706,23.159182],[113.352599,23.159261],[113.352599,23.15859],[113.350089,23.15864],[113.348662,23.158985],[113.347814,23.159005],[113.346784,23.159005],[113.346806,23.158807]]'),
(3, 3, '#3366cc', '[[113.351762,23.153076],[113.351634,23.154378],[113.351676,23.154694],[113.352438,23.154931],[113.352621,23.154931],[113.353683,23.154714],[113.357148,23.154655],[113.35717,23.156193],[113.357384,23.156233],[113.357642,23.156479],[113.359208,23.158571],[113.359487,23.159123],[113.359787,23.159459],[113.360184,23.159567],[113.360378,23.159577],[113.360893,23.159459],[113.361697,23.159123],[113.362169,23.159044],[113.362684,23.159113],[113.363113,23.159242],[113.363553,23.159537],[113.36394,23.159695],[113.366171,23.159685],[113.3663,23.15937],[113.367652,23.158265],[113.368338,23.158018],[113.368338,23.160534]]'),
(4, 4, '#993300', '[[113.368253,23.16006],[113.368253,23.159902],[113.368338,23.159893],[113.368338,23.158018],[113.36778,23.158186],[113.366311,23.15933],[113.366182,23.159685],[113.36395,23.159705],[113.363103,23.159251],[113.362459,23.159074],[113.361676,23.159113],[113.360893,23.159468],[113.360356,23.159676],[113.360066,23.159656],[113.359712,23.159508],[113.358843,23.159952],[113.358092,23.159725],[113.356655,23.159794],[113.355925,23.159528],[113.354841,23.159202],[113.354326,23.159143],[113.353854,23.159212],[113.35305,23.159153],[113.352696,23.159192],[113.35261,23.159261],[113.35261,23.1586],[113.352631,23.158206],[113.352696,23.157505],[113.352621,23.154921],[113.352438,23.154921],[113.351666,23.154714],[113.351623,23.154447],[113.351773,23.153096]]'),
(5, 5, '#cc6633', '[[113.351784,23.153086],[113.351634,23.154388],[113.351676,23.154704],[113.352438,23.154921],[113.352621,23.154921],[113.353683,23.154714],[113.354563,23.154684],[113.354638,23.154793],[113.354595,23.156746],[113.354477,23.157643],[113.354123,23.159172],[113.354369,23.159133],[113.354391,23.159143],[113.354841,23.159202],[113.355743,23.159518],[113.355936,23.159537],[113.356622,23.159794],[113.35806,23.159715],[113.3588,23.159971],[113.359712,23.159498],[113.359519,23.15938],[113.359187,23.158709],[113.357384,23.156322],[113.357127,23.156243],[113.357095,23.153066],[113.357159,23.152987],[113.35717,23.152514],[113.357073,23.152484],[113.356987,23.152435],[113.356901,23.152326],[113.356901,23.152169],[113.356987,23.152031],[113.357073,23.152001]]'),
(6, 6, '#cc6666', '[[113.357052,23.152001],[113.357159,23.151971],[113.357298,23.152011],[113.357416,23.152169],[113.357416,23.152287],[113.357298,23.152465],[113.35717,23.152514],[113.357159,23.152997],[113.357223,23.153116],[113.357159,23.154674],[113.357159,23.156193],[113.357384,23.156243],[113.359262,23.15864],[113.359476,23.159094],[113.359777,23.159449],[113.358833,23.159962],[113.358039,23.159705],[113.356698,23.159784],[113.355936,23.159528],[113.355786,23.159528],[113.35482,23.159202],[113.354348,23.159133],[113.354101,23.159172],[113.354262,23.158679],[113.354477,23.157673],[113.35453,23.154694],[113.353672,23.154704],[113.352621,23.154921],[113.352427,23.154921],[113.351676,23.154704],[113.351612,23.154556],[113.351719,23.153333],[113.351752,23.153135]]'),
(7, 7, '#6633cc', '[[113.346827,23.158689],[113.346956,23.158413],[113.347181,23.158452],[113.347385,23.158452],[113.347578,23.158373],[113.347728,23.158245],[113.347814,23.158097],[113.347836,23.157969],[113.349026,23.158038],[113.349187,23.155996],[113.349241,23.155878],[113.349262,23.155848],[113.349885,23.155769],[113.35041,23.155217],[113.350507,23.155158],[113.350625,23.155158],[113.350893,23.155197],[113.350968,23.155197],[113.351226,23.155118],[113.351666,23.154704],[113.352438,23.154931],[113.352621,23.154931],[113.353651,23.154714],[113.357073,23.154674],[113.357105,23.153086],[113.366429,23.153096],[113.366418,23.151429],[113.366783,23.151675],[113.369658,23.151685],[113.369733,23.151744],[113.369733,23.153096],[113.369851,23.153106],[113.372008,23.153974],[113.372093,23.154605],[113.371643,23.15502],[113.370119,23.156835],[113.369454,23.157417],[113.368338,23.158008],[113.368338,23.160514]]');

-- --------------------------------------------------------

--
-- 表的结构 `bus_realtime_cache`
--

CREATE TABLE `bus_realtime_cache` (
  `cache_data` text NOT NULL,
  `cache_expires` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bus_relationship`
--

CREATE TABLE `bus_relationship` (
  `line_id` int(10) UNSIGNED NOT NULL,
  `stop_id` int(10) UNSIGNED NOT NULL,
  `stop_sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bus_relationship`
--

INSERT INTO `bus_relationship` (`line_id`, `stop_id`, `stop_sort`) VALUES
(1, 2, 1),
(1, 3, 2),
(1, 4, 3),
(1, 5, 4),
(1, 6, 5),
(1, 7, 6),
(1, 8, 7),
(1, 9, 8),
(1, 10, 9),
(1, 11, 10),
(1, 12, 11),
(2, 12, 1),
(2, 11, 2),
(2, 10, 3),
(2, 9, 4),
(2, 8, 5),
(2, 7, 6),
(2, 6, 7),
(2, 5, 8),
(2, 4, 9),
(2, 3, 10),
(2, 2, 11),
(3, 15, 1),
(3, 7, 2),
(3, 16, 3),
(3, 12, 4),
(4, 12, 1),
(4, 13, 2),
(4, 14, 3),
(4, 21, 4),
(4, 15, 5),
(5, 15, 1),
(5, 6, 2),
(5, 14, 3),
(5, 13, 4),
(5, 18, 5),
(5, 19, 6),
(5, 20, 7),
(6, 20, 1),
(6, 19, 2),
(6, 18, 3),
(6, 13, 4),
(6, 14, 5),
(6, 6, 6),
(6, 15, 7),
(7, 2, 1),
(7, 22, 2),
(7, 23, 3),
(7, 7, 4),
(7, 8, 5),
(7, 9, 6),
(7, 10, 7),
(7, 11, 8),
(7, 12, 9);

-- --------------------------------------------------------

--
-- 表的结构 `bus_stop`
--

CREATE TABLE `bus_stop` (
  `stop_id` int(10) UNSIGNED NOT NULL,
  `stop_name` varchar(50) NOT NULL,
  `stop_lng` varchar(50) DEFAULT NULL,
  `stop_lat` varchar(50) DEFAULT NULL,
  `stop_alias` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bus_stop`
--

INSERT INTO `bus_stop` (`stop_id`, `stop_name`, `stop_lng`, `stop_lat`, `stop_alias`) VALUES
(2, '工程学院', '113.346806', '23.158729', '工程学院,西园'),
(3, '新学活', '113.349295', '23.158867', '新学活'),
(4, '教三', '113.352031', '23.15862', '教三,第三教学楼'),
(5, '艺术学院', '113.352674', '23.159222', '艺术学院'),
(6, '三角市', '113.354412', '23.157959', '三角市'),
(7, '湿地公园', '113.355367', '23.154684', '湿地公园'),
(8, '经管学院', '113.357556', '23.153086', '经管学院'),
(9, '教四', '113.366429', '23.15278', '教四,第四教学楼'),
(10, '五山公寓', '113.3688', '23.151685', '五山公寓,五山学生公寓'),
(11, '公寓东', '113.370699', '23.153451', '公寓东'),
(12, '荷园', '113.368349', '23.160553', '荷园,荷园站'),
(13, '农学院', '113.358951', '23.159942', '农学院'),
(14, '嵩山42栋', '113.355925', '23.159547', '嵩山42栋,钢铁研究所'),
(15, '正门(地铁站)', '113.351784', '23.153106', '正门,正门(地铁站)'),
(16, '生命科学院', '113.359873', '23.159488', '生命科学院'),
(18, '嵩山旧197', '113.358951', '23.158324', '嵩山旧197'),
(19, '校医院东门', '113.357127', '23.156124', '校医院东门'),
(20, '茶山广场', '113.357084', '23.152001', '茶山广场'),
(21, '艺术学院(教三)', '113.352588', '23.159202', '艺术学院,教三,第三教学楼'),
(22, '校史馆', '113.349091', '23.157298', '5号楼,校史馆'),
(23, '正门大石头', '113.351698', '23.154724', '正门,正门大石头,华南农学院大石头');

-- --------------------------------------------------------

--
-- 表的结构 `bus_timetable`
--

CREATE TABLE `bus_timetable` (
  `table_id` int(10) UNSIGNED NOT NULL,
  `line_id` int(10) UNSIGNED NOT NULL,
  `table_type` tinyint(1) UNSIGNED NOT NULL,
  `table_time` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bus_timetable`
--

INSERT INTO `bus_timetable` (`table_id`, `line_id`, `table_type`, `table_time`) VALUES
(1, 1, 1, '07:25'),
(2, 1, 1, '07:25 ~ 09:05 即到即走'),
(3, 1, 1, '09:05'),
(4, 1, 1, '09:20'),
(5, 1, 1, '09:30'),
(6, 1, 1, '09:40'),
(7, 1, 1, '09:50'),
(8, 1, 1, '10:00'),
(9, 1, 1, '10:15'),
(10, 1, 1, '10:30'),
(11, 1, 1, '10:50'),
(12, 1, 1, '11:10'),
(13, 1, 1, '11:30'),
(14, 1, 1, '11:40'),
(15, 1, 1, '11:50'),
(16, 1, 1, '12:00'),
(17, 1, 1, '12:10'),
(18, 1, 1, '12:20'),
(19, 1, 1, '12:30'),
(20, 1, 1, '12:45'),
(21, 1, 1, '13:00'),
(22, 1, 1, '13:10'),
(23, 1, 1, '13:30'),
(24, 1, 1, '13:45'),
(25, 1, 1, '13:55'),
(26, 1, 1, '14:05'),
(27, 1, 1, '14:15'),
(28, 1, 1, '14:25'),
(29, 1, 1, '14:40'),
(30, 1, 1, '15:00'),
(31, 1, 1, '15:15'),
(32, 1, 1, '15:30'),
(33, 1, 1, '15:45'),
(34, 1, 1, '16:00'),
(35, 1, 1, '16:20'),
(36, 1, 1, '16:35'),
(37, 1, 1, '17:00'),
(38, 1, 1, '17:10'),
(39, 1, 1, '17:25'),
(40, 1, 1, '17:40'),
(41, 1, 1, '17:50'),
(42, 1, 1, '18:00'),
(43, 1, 1, '18:10'),
(44, 1, 1, '18:20'),
(45, 1, 1, '18:30'),
(46, 1, 1, '18:40'),
(47, 1, 1, '18:50'),
(48, 1, 1, '19:00'),
(49, 1, 1, '19:10'),
(50, 1, 1, '19:20'),
(51, 1, 1, '19:30'),
(52, 1, 1, '19:45'),
(53, 1, 1, '20:00'),
(54, 1, 1, '20:20'),
(55, 1, 1, '20:40'),
(56, 1, 1, '20:55'),
(57, 1, 1, '21:05'),
(58, 1, 1, '21:15'),
(59, 1, 1, '21:25'),
(60, 1, 1, '21:35'),
(61, 1, 1, '21:45'),
(62, 1, 1, '21:55'),
(63, 1, 1, '22:00'),
(64, 2, 1, '07:10'),
(65, 2, 1, '07:20'),
(66, 2, 1, '07:30'),
(67, 2, 1, '07:40'),
(68, 2, 1, '07:50'),
(69, 2, 1, '08:00'),
(70, 2, 1, '08:15'),
(71, 2, 1, '08:30'),
(72, 2, 1, '08:45'),
(73, 2, 1, '09:00'),
(74, 2, 1, '09:15'),
(75, 2, 1, '09:30'),
(76, 2, 1, '09:40'),
(77, 2, 1, '09:50'),
(78, 2, 1, '10:00'),
(79, 2, 1, '10:15'),
(80, 2, 1, '10:30'),
(81, 2, 1, '10:50'),
(82, 2, 1, '11:00'),
(83, 2, 1, '11:10'),
(84, 2, 1, '11:30'),
(85, 2, 1, '11:40'),
(86, 2, 1, '11:50'),
(87, 2, 1, '12:00'),
(88, 2, 1, '12:10'),
(89, 2, 1, '12:20'),
(90, 2, 1, '12:30'),
(91, 2, 1, '12:45'),
(92, 2, 1, '13:00'),
(93, 2, 1, '13:10'),
(94, 2, 1, '13:30'),
(95, 2, 1, '13:45'),
(96, 2, 1, '13:55'),
(97, 2, 1, '14:05'),
(98, 2, 1, '14:15'),
(99, 2, 1, '14:25'),
(100, 2, 1, '14:40'),
(101, 2, 1, '15:00'),
(102, 2, 1, '15:15'),
(103, 2, 1, '15:30'),
(104, 2, 1, '15:45'),
(105, 2, 1, '16:00'),
(106, 2, 1, '16:10'),
(107, 2, 1, '16:20'),
(108, 2, 1, '16:35'),
(109, 2, 1, '17:00'),
(110, 2, 1, '17:10'),
(111, 2, 1, '17:25'),
(112, 2, 1, '17:40'),
(113, 2, 1, '17:50'),
(114, 2, 1, '18:00'),
(115, 2, 1, '18:10'),
(116, 2, 1, '18:20'),
(117, 2, 1, '18:30'),
(118, 2, 1, '18:40'),
(119, 2, 1, '18:50'),
(120, 2, 1, '19:00'),
(121, 2, 1, '19:10'),
(122, 2, 1, '19:20'),
(123, 2, 1, '19:30'),
(124, 2, 1, '19:45'),
(125, 2, 1, '20:00'),
(126, 2, 1, '20:15'),
(127, 2, 1, '20:30'),
(128, 2, 1, '20:45'),
(129, 2, 1, '20:45 ~ 21:45 即到即走'),
(130, 2, 1, '22:00'),
(131, 1, 2, '07:45'),
(132, 1, 2, '08:00'),
(133, 1, 2, '08:20'),
(134, 1, 2, '08:40'),
(135, 1, 2, '09:00'),
(136, 1, 2, '09:15'),
(137, 1, 2, '09:30'),
(138, 1, 2, '09:45'),
(139, 1, 2, '10:00'),
(140, 1, 2, '10:20'),
(141, 1, 2, '10:40'),
(142, 1, 2, '11:00'),
(143, 1, 2, '11:15'),
(144, 1, 2, '11:30'),
(145, 1, 2, '11:45'),
(146, 1, 2, '12:00'),
(147, 1, 2, '12:15'),
(148, 1, 2, '12:30'),
(149, 1, 2, '12:45'),
(150, 1, 2, '13:00'),
(151, 1, 2, '13:20'),
(152, 1, 2, '13:35'),
(153, 1, 2, '13:45'),
(154, 1, 2, '13:55'),
(155, 1, 2, '14:05'),
(156, 1, 2, '14:15'),
(157, 1, 2, '14:30'),
(158, 1, 2, '14:45'),
(159, 1, 2, '15:00'),
(160, 1, 2, '15:15'),
(161, 1, 2, '15:30'),
(162, 1, 2, '15:45'),
(163, 1, 2, '16:00'),
(164, 1, 2, '16:15'),
(165, 1, 2, '16:40'),
(166, 1, 2, '17:00'),
(167, 1, 2, '17:15'),
(168, 1, 2, '17:30'),
(169, 1, 2, '17:45'),
(170, 1, 2, '18:00'),
(171, 1, 2, '18:15'),
(172, 1, 2, '18:30'),
(173, 1, 2, '18:45'),
(174, 1, 2, '19:00'),
(175, 1, 2, '19:10'),
(176, 1, 2, '19:25'),
(177, 1, 2, '19:40'),
(178, 1, 2, '19:55'),
(179, 1, 2, '20:20'),
(180, 1, 2, '20:40'),
(181, 1, 2, '21:00'),
(182, 1, 2, '21:15'),
(183, 1, 2, '21:30'),
(184, 1, 2, '21:40'),
(185, 1, 2, '21:50'),
(186, 1, 2, '22:00'),
(187, 2, 2, '07:30'),
(188, 2, 2, '07:45'),
(189, 2, 2, '08:00'),
(190, 2, 2, '08:20'),
(191, 2, 2, '08:40'),
(192, 2, 2, '09:00'),
(193, 2, 2, '09:15'),
(194, 2, 2, '09:30'),
(195, 2, 2, '09:45'),
(196, 2, 2, '10:00'),
(197, 2, 2, '10:20'),
(198, 2, 2, '10:40'),
(199, 2, 2, '11:00'),
(200, 2, 2, '11:15'),
(201, 2, 2, '11:30'),
(202, 2, 2, '11:45'),
(203, 2, 2, '12:00'),
(204, 2, 2, '12:15'),
(205, 2, 2, '12:30'),
(206, 2, 2, '12:45'),
(207, 2, 2, '13:00'),
(208, 2, 2, '13:20'),
(209, 2, 2, '13:35'),
(210, 2, 2, '13:45'),
(211, 2, 2, '13:55'),
(212, 2, 2, '14:05'),
(213, 2, 2, '14:15'),
(214, 2, 2, '14:30'),
(215, 2, 2, '14:45'),
(216, 2, 2, '15:00'),
(217, 2, 2, '15:15'),
(218, 2, 2, '15:30'),
(219, 2, 2, '15:45'),
(220, 2, 2, '16:00'),
(221, 2, 2, '16:15'),
(222, 2, 2, '16:40'),
(223, 2, 2, '17:00'),
(224, 2, 2, '17:15'),
(225, 2, 2, '17:30'),
(226, 2, 2, '17:45'),
(227, 2, 2, '18:00'),
(228, 2, 2, '18:15'),
(229, 2, 2, '18:30'),
(230, 2, 2, '18:45'),
(231, 2, 2, '19:00'),
(232, 2, 2, '19:10'),
(233, 2, 2, '19:25'),
(234, 2, 2, '19:40'),
(235, 2, 2, '19:55'),
(236, 2, 2, '20:10'),
(237, 2, 2, '20:30'),
(238, 2, 2, '20:50'),
(239, 2, 2, '21:00'),
(240, 2, 2, '21:15'),
(241, 2, 2, '21:30'),
(242, 2, 2, '21:45'),
(243, 2, 2, '22:00'),
(244, 3, 1, '07:30 ~ 07:50 即到即走'),
(245, 3, 1, '08:00'),
(246, 3, 1, '08:10'),
(247, 3, 1, '08:30'),
(248, 3, 1, '08:50'),
(249, 3, 1, '09:10'),
(250, 3, 1, '09:30'),
(251, 3, 1, '09:45'),
(252, 3, 1, '10:00'),
(253, 3, 1, '10:20'),
(254, 3, 1, '10:40'),
(255, 3, 1, '11:10'),
(256, 3, 1, '11:30'),
(257, 3, 1, '11:50'),
(258, 3, 1, '12:10'),
(259, 3, 1, '12:30'),
(260, 3, 1, '12:50'),
(261, 3, 1, '13:10'),
(262, 3, 1, '13:30'),
(263, 3, 1, '13:50'),
(264, 3, 1, '14:00'),
(265, 3, 1, '14:10'),
(266, 3, 1, '14:30'),
(267, 3, 1, '14:50'),
(268, 3, 1, '15:10'),
(269, 3, 1, '15:30'),
(270, 3, 1, '15:50'),
(271, 3, 1, '16:10'),
(272, 3, 1, '16:10 ~ 17:00 即到即走'),
(273, 3, 1, '17:15'),
(274, 3, 1, '17:30'),
(275, 3, 1, '17:50'),
(276, 3, 1, '18:10'),
(277, 3, 1, '18:30'),
(278, 3, 1, '18:50'),
(279, 3, 1, '19:10'),
(280, 3, 1, '19:30'),
(281, 3, 1, '19:50'),
(282, 3, 1, '20:10'),
(283, 3, 1, '20:30'),
(284, 3, 1, '20:50'),
(285, 3, 1, '21:10'),
(286, 3, 1, '21:30'),
(287, 3, 1, '21:45'),
(288, 3, 1, '22:00'),
(289, 4, 1, '07:20'),
(290, 4, 1, '07:40'),
(291, 4, 1, '07:50'),
(292, 4, 1, '08:10'),
(293, 4, 1, '08:30'),
(294, 4, 1, '08:50'),
(295, 4, 1, '09:10'),
(296, 4, 1, '09:30'),
(297, 4, 1, '09:45'),
(298, 4, 1, '10:00'),
(299, 4, 1, '10:20'),
(300, 4, 1, '10:40'),
(301, 4, 1, '11:10'),
(302, 4, 1, '11:30'),
(303, 4, 1, '11:50'),
(304, 4, 1, '12:10'),
(305, 4, 1, '12:30'),
(306, 4, 1, '12:50'),
(307, 4, 1, '13:10'),
(308, 4, 1, '13:30'),
(309, 4, 1, '13:50'),
(310, 4, 1, '14:00'),
(311, 4, 1, '14:10'),
(312, 4, 1, '14:30'),
(313, 4, 1, '14:50'),
(314, 4, 1, '15:10'),
(315, 4, 1, '15:30'),
(316, 4, 1, '15:50'),
(317, 4, 1, '16:10'),
(318, 4, 1, '16:30'),
(319, 4, 1, '17:00'),
(320, 4, 1, '17:15'),
(321, 4, 1, '17:30'),
(322, 4, 1, '17:50'),
(323, 4, 1, '18:10'),
(324, 4, 1, '18:30'),
(325, 4, 1, '18:50'),
(326, 4, 1, '19:10'),
(327, 4, 1, '19:30'),
(328, 4, 1, '19:50'),
(329, 4, 1, '20:10'),
(330, 4, 1, '20:30'),
(331, 4, 1, '20:50'),
(332, 4, 1, '21:10'),
(333, 4, 1, '21:30'),
(334, 4, 1, '21:45'),
(335, 3, 2, '07:50'),
(336, 3, 2, '08:10'),
(337, 3, 2, '08:30'),
(338, 3, 2, '08:50'),
(339, 3, 2, '09:10'),
(340, 3, 2, '09:30'),
(341, 3, 2, '09:50'),
(342, 3, 2, '10:10'),
(343, 3, 2, '10:30 ~ 11:00 即到即走'),
(344, 3, 2, '11:10'),
(345, 3, 2, '11:30'),
(346, 3, 2, '11:50'),
(347, 3, 2, '12:10'),
(348, 3, 2, '12:30'),
(349, 3, 2, '12:50'),
(350, 3, 2, '13:10'),
(351, 3, 2, '13:30'),
(352, 3, 2, '13:50'),
(353, 3, 2, '14:00'),
(354, 3, 2, '14:20'),
(355, 3, 2, '14:30'),
(356, 3, 2, '14:50'),
(357, 3, 2, '15:10'),
(358, 3, 2, '15:30'),
(359, 3, 2, '15:50'),
(360, 3, 2, '16:10'),
(361, 3, 2, '16:30 ~ 17:00 即到即走'),
(362, 3, 2, '17:15'),
(363, 3, 2, '17:30'),
(364, 3, 2, '17:50'),
(365, 3, 2, '18:10'),
(366, 3, 2, '18:30'),
(367, 3, 2, '18:50'),
(368, 3, 2, '19:10'),
(369, 3, 2, '19:30'),
(370, 3, 2, '19:50'),
(371, 3, 2, '20:10'),
(372, 3, 2, '20:30'),
(373, 3, 2, '20:50'),
(374, 3, 2, '21:10'),
(375, 3, 2, '21:30'),
(376, 3, 2, '22:00'),
(377, 4, 2, '07:30'),
(378, 4, 2, '07:50'),
(379, 4, 2, '08:10'),
(380, 4, 2, '08:30'),
(381, 4, 2, '08:50'),
(382, 4, 2, '09:10'),
(383, 4, 2, '09:30'),
(384, 4, 2, '09:50'),
(385, 4, 2, '10:10'),
(386, 4, 2, '10:30'),
(387, 4, 2, '11:00'),
(388, 4, 2, '11:10'),
(389, 4, 2, '11:30'),
(390, 4, 2, '11:50'),
(391, 4, 2, '12:10'),
(392, 4, 2, '12:30'),
(393, 4, 2, '12:50'),
(394, 4, 2, '13:10'),
(395, 4, 2, '13:30'),
(396, 4, 2, '13:50'),
(397, 4, 2, '14:00'),
(398, 4, 2, '14:20'),
(399, 4, 2, '14:30'),
(400, 4, 2, '14:50'),
(401, 4, 2, '15:10'),
(402, 4, 2, '15:30'),
(403, 4, 2, '15:50'),
(404, 4, 2, '16:10'),
(405, 4, 2, '16:30'),
(406, 4, 2, '17:00'),
(407, 4, 2, '17:15'),
(408, 4, 2, '17:30'),
(409, 4, 2, '17:50'),
(410, 4, 2, '18:10'),
(411, 4, 2, '18:30'),
(412, 4, 2, '18:50'),
(413, 4, 2, '19:10'),
(414, 4, 2, '19:30'),
(415, 4, 2, '19:50'),
(416, 4, 2, '20:10'),
(417, 4, 2, '20:30'),
(418, 4, 2, '20:50'),
(419, 4, 2, '21:10'),
(420, 4, 2, '21:30'),
(421, 4, 2, '21:45'),
(422, 7, 1, '09:00'),
(423, 7, 1, '10:00'),
(424, 7, 1, '11:00'),
(425, 7, 1, '12:00'),
(426, 7, 1, '13:00'),
(427, 7, 1, '15:00'),
(428, 7, 1, '16:00'),
(429, 7, 1, '17:00'),
(430, 7, 1, '18:00'),
(431, 7, 1, '19:00'),
(432, 7, 1, '20:00'),
(433, 7, 1, '21:00'),
(434, 5, 1, '07：40 ~ 08：00 即到即走'),
(435, 5, 1, '08:20'),
(436, 5, 1, '09:00'),
(437, 5, 1, '09:40'),
(438, 5, 1, '10:20'),
(439, 5, 1, '11:00'),
(440, 5, 1, '11:40'),
(441, 5, 1, '14:00'),
(442, 5, 1, '14:40'),
(443, 5, 1, '15:20'),
(444, 5, 1, '16:00'),
(445, 5, 1, '16:40'),
(446, 5, 1, '17:20'),
(447, 5, 1, '17:50'),
(448, 6, 1, '07:40'),
(449, 6, 1, '08:00'),
(450, 6, 1, '08:40'),
(451, 6, 1, '09:20'),
(452, 6, 1, '10:00'),
(453, 6, 1, '10:40'),
(454, 6, 1, '11:20'),
(455, 6, 1, '14:20'),
(456, 6, 1, '15:00'),
(457, 6, 1, '15:40'),
(458, 6, 1, '16:20'),
(459, 6, 1, '17:00'),
(460, 6, 1, '17:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_keywords`
--
ALTER TABLE `bus_keywords`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `line_id` (`line_id`);

--
-- Indexes for table `bus_line`
--
ALTER TABLE `bus_line`
  ADD PRIMARY KEY (`line_id`),
  ADD KEY `line_start` (`line_start`),
  ADD KEY `line_end` (`line_end`),
  ADD KEY `line_inverse` (`line_inverse`);

--
-- Indexes for table `bus_polyline`
--
ALTER TABLE `bus_polyline`
  ADD PRIMARY KEY (`poly_id`),
  ADD KEY `line_id` (`line_id`);

--
-- Indexes for table `bus_relationship`
--
ALTER TABLE `bus_relationship`
  ADD KEY `line_id` (`line_id`),
  ADD KEY `stop_id` (`stop_id`),
  ADD KEY `stop_sort` (`stop_sort`);

--
-- Indexes for table `bus_stop`
--
ALTER TABLE `bus_stop`
  ADD PRIMARY KEY (`stop_id`);
ALTER TABLE `bus_stop` ADD FULLTEXT KEY `stop_name` (`stop_name`);

--
-- Indexes for table `bus_timetable`
--
ALTER TABLE `bus_timetable`
  ADD PRIMARY KEY (`table_id`),
  ADD KEY `line_id` (`line_id`),
  ADD KEY `table_time` (`table_time`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bus_keywords`
--
ALTER TABLE `bus_keywords`
  MODIFY `key_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `bus_line`
--
ALTER TABLE `bus_line`
  MODIFY `line_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `bus_polyline`
--
ALTER TABLE `bus_polyline`
  MODIFY `poly_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `bus_stop`
--
ALTER TABLE `bus_stop`
  MODIFY `stop_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `bus_timetable`
--
ALTER TABLE `bus_timetable`
  MODIFY `table_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
