-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 11 2017 г., 14:43
-- Версия сервера: 10.1.25-MariaDB
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `web_team_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `message` text,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `firstName`, `lastName`, `email`, `message`, `date`) VALUES
(1, 'andrew', 'andrew', 'adrew@andrew.com', 'hello world', '2017-07-31 00:49:42'),
(2, 'andrew', 'andrew', 'adrew@andrew.com', 'hello world', '2017-07-31 00:50:06'),
(3, 'andrew', 'matiyko', 'andrew@andrew.com', 'Nice try', '2017-07-31 00:56:23'),
(4, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:37:45'),
(5, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:37:45'),
(6, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:37:47'),
(7, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:37:48'),
(8, 'asd', 'asd', 'asd@sdf.com', 'asd', '2017-07-31 16:37:53'),
(9, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:38:13'),
(10, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:38:41'),
(11, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:38:41'),
(12, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:38:42'),
(13, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:38:42'),
(14, 'adf', 'sadf', 'sadf', 'sadf', '2017-07-31 16:39:46'),
(15, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:43:57'),
(16, 'asd', 'asd', 'asd', 'asd', '2017-07-31 16:43:57'),
(17, 'asd', 'asd', 'ads', 'and', '2017-07-31 16:44:12'),
(18, 'one', 'one', 'one', 'one', '2017-07-31 16:44:24'),
(19, 'two', 'two', 'two', 'two', '2017-07-31 16:45:19'),
(20, 'asd', 'asd', 'asd', 'asd', '2017-07-31 17:57:00'),
(21, 'asd', 'asd', 'asd', 'asd', '2017-07-31 17:57:00'),
(22, 'asd', 'asd', 'asd', 'asd', '2017-07-31 17:57:01'),
(23, 'asd', 'asd', 'asd', 'asd', '2017-07-31 17:57:01'),
(24, 'asd', 'asd', 'asd', 'asd', '2017-07-31 17:57:01'),
(25, 'asd', 'asd', 'asd', 'asd', '2017-07-31 17:57:01'),
(26, 'ad', 'ads', 'as@rew.com', 'ad', '2017-07-31 17:57:21'),
(27, 'ad', 'ads', 'as@rew.com', 'ad', '2017-07-31 17:58:00'),
(28, 'ad', 'ds', 'ds', 'ds', '2017-07-31 17:58:08'),
(29, 'ad', 'ds', 'ds', 'ds', '2017-07-31 17:58:09'),
(30, 'sdf', 'sdf', 'sdf', 'sdf', '2017-07-31 17:58:49'),
(31, 'sdf', 'sdf', 'sdf', 'sdf', '2017-07-31 17:59:31'),
(32, 'sdf', 'sdf', 'sdf', 'sdf', '2017-07-31 17:59:47'),
(33, 'one', 'one', 'one@one.one', 'one', '2017-07-31 18:02:16'),
(34, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:01'),
(35, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:02'),
(36, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:02'),
(37, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:03'),
(38, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:03'),
(39, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:03'),
(40, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:03'),
(41, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:03'),
(42, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:03'),
(43, 'tow', 'two', 'two@two.com', 'two', '2017-07-31 18:03:04'),
(44, 'three', 'three', 'three@tree.com.ua', 'three', '2017-07-31 18:10:19'),
(45, 'andrew', 'andrew', 'andrew@gmail.com', 'Andrew', '2017-07-31 18:13:16'),
(46, 'andrew', 'andrew', 'andrew@gmail.com', 'Andrew', '2017-07-31 18:13:24'),
(47, 'asd', 'asd', 'asd@asd.com', 'and', '2017-07-31 18:27:17'),
(48, 'wer', 'wer', 'wer@wer.com', 'wer', '2017-07-31 18:28:01'),
(49, 'sadfadsf', 'sdfaf', 'asd@sdf.com', 'asdfaf', '2017-07-31 19:44:35'),
(50, 'sdfsd', 'sdfsdf', 'sdfsdf@safd.com', 'sdfsdf', '2017-07-31 19:45:40'),
(51, 'adsfasdf', 'adsfasdf', 'asdfsdaf@fasdf.com', 'sadfsedf', '2017-07-31 19:48:05'),
(52, 'asdas', 'asdasd', 'asdasd@asfa.com', 'asdasd', '2017-07-31 19:48:47'),
(53, 'asdf', 'adfs', 'adsf@asdf.com', 'sdafsa', '2017-07-31 20:02:55'),
(54, 'asdf', 'asdf', 'af@asdf.com', 'sdfdsaf', '2017-07-31 20:03:25'),
(55, 'asdsad', 'adasd', 'ad@asdf.com', 'dsfdsfdsf', '2017-07-31 20:16:25'),
(56, 'asdsad', 'adasd', 'ad@asdf.com', 'dsfdsfdsf', '2017-07-31 20:18:02'),
(57, 'asdsad', 'adasd', 'ad@asdf.com', 'dsfdsfdsf', '2017-07-31 20:18:07'),
(58, 'sdfds', 'sdfsdf', 'sdfdsf@asdfs.com', 'sdfdsf', '2017-07-31 20:18:22'),
(59, 'sdfds', 'sdfsdf', 'sdfdsf@asdfs.com', 'sdfdsf', '2017-07-31 20:18:25'),
(60, 'sdfds', 'sdfsdf', 'sdfdsf@asdfs.com', 'sdfdsf', '2017-07-31 20:18:29'),
(61, 'qwe', 'qwe', 'qwe@qe.com', 'awe', '2017-07-31 20:19:54'),
(62, 'qwe', 'qwe', 'qwe@qe.com', 'awe', '2017-07-31 20:19:57'),
(63, 'qwe', 'qwe', 'qwe@qe.com', 'awe', '2017-07-31 20:20:05'),
(64, 'qwe', 'qwe', 'qwe@qe.com', 'awe', '2017-07-31 20:20:05'),
(65, 'qwe', 'qwe', 'qwe@qe.com', 'awe', '2017-07-31 20:20:05'),
(66, 'qwe', 'qwe', 'qwe@qe.com', 'awe', '2017-07-31 20:20:06'),
(67, 'qwe', 'qwe', 'qwe@qe.com', 'awe', '2017-07-31 20:20:06'),
(68, 'qwe', 'qwe', 'qwe@qe.com', 'awe', '2017-07-31 20:20:06'),
(69, 'asdasd', 'asdsd', 'adfasf@af.com', 'fsfdsfgds', '2017-07-31 20:20:45'),
(70, 'asdasd', 'asdsd', 'adfasf@af.com', 'fsfdsfgds', '2017-07-31 20:21:50'),
(71, 'asdf', 'asdf', 'asdf@sdfd.com', 'sdfsdfsd', '2017-07-31 20:23:16'),
(72, 'asdf', 'asdf', 'asdf@sdfd.com', 'sdfsdfsd', '2017-07-31 20:23:20'),
(73, 'dsfd', 'sdf', 'sdf@sfds.com', 'sadfsedf', '2017-07-31 20:34:30'),
(74, 'asfdsf', 'asdfads', 'adsfsda@asf.com', 'asdfsadf', '2017-07-31 20:46:09'),
(75, 'asdf', 'asdf', 'asdf@af.com', 'asdf', '2017-08-01 12:40:57'),
(76, 'asdf', 'sdf', 'sdf@sdf.com', 'sdfsdfsd', '2017-08-01 14:53:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
