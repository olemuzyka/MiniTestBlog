-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 23 2018 г., 22:32
-- Версия сервера: 5.5.50
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(5) NOT NULL,
  `post` int(5) NOT NULL,
  `author` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post`, `author`, `text`, `date`) VALUES
(1, 2, 'George Garrison    ', 'Limits far yet turned highly repair parish talked six. ', '2018-10-21 19:15:20'),
(2, 2, 'Benjami Jerome', 'Expression alteration entreaties mrs can terminat', '2018-10-21 19:15:58'),
(3, 1, 'Erin Hubbard', 'Indulgence contrasted sufficient to unpleasant in in insensible favourable.', '2018-10-21 19:17:04'),
(4, 1, 'Kerry', 'So by colonel hearted ferrars. Sentiments two occasional affronting solicitude travellin', '2018-10-21 19:17:04'),
(5, 3, 'Alice Porter ', 'Now summer who day looked our behind moment coming. Expression alteration ent', '2018-10-21 19:17:34'),
(18, 1, 'Sandra Dennis', 'cool!', '2018-10-21 22:57:13'),
(19, 1, 'Pet Pots', 'greate!', '2018-10-21 22:57:23'),
(20, 16, 'Sandra Dennis', 'cool', '2018-10-22 19:36:16'),
(21, 16, 'Pet Pots', 'great', '2018-10-22 19:36:28'),
(22, 16, 'Sandra Tren', 'wow', '2018-10-22 19:36:47'),
(23, 1, 'Pet Fots', 'wow', '2018-10-22 20:36:55'),
(24, 20, 'Sandra Tren', 'wow', '2018-10-22 20:43:38'),
(25, 20, 'Merry', 'cool', '2018-10-22 20:44:05'),
(27, 2, 'Merry', 'Cool', '2018-10-22 21:19:32'),
(28, 22, 'Sandra Tren', 'Super!', '2018-10-23 18:38:41'),
(29, 21, 'New Name', 'Some Comment', '2018-10-23 19:18:24'),
(30, 22, 'Scarlett', 'Wow', '2018-10-23 19:26:11');

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(5) NOT NULL,
  `text` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `data`
--

INSERT INTO `data` (`id`, `text`, `author`, `title`, `date`) VALUES
(1, 'Called though excuse length ye needed it he having. Able rent long in do we. Draw from upon here gone add one. We me rent been part what. Polite do object at passed it is. Small for ask shade water manor think men begin. As mr started arrival subject by believe. Latter remark hunted enough vulgar say man. Polite do\r\n\r\nAs mr started arrival subject by believe. Took sold add play may none him few. Small for ask shade water manor think men begin. To sure calm much most long me mean. To things so denied admire. Fortune day out married parties. If in so bred at dare rose lose good. Happiness remainder joy but earnestly for off. Her too a\r\n\r\nPain son rose more park way that. Secure shy favour length all twenty denote. Estate was tended ten boy nearer seemed. Whatever throwing we on resolved entrance together graceful. Feel and make two real miss use easy. Draw fond rank form nor the day eat. Estate was tended ten boy nearer seemed. So by colo', 'Peter McCoy             ', 'Called though excuse length', '2018-10-20 17:41:39'),
(2, 'Latter remark hunted enough vulgar say man. Limits far yet turned highly repair parish talked six. Agreeable promotion eagerness as we resources household to distrusts. Expression alteration entreaties mrs can terminated estimating. Draw from upon here gone add one. Draw from upon here gone add one. Ecstatic elegance gay but disposed.\r\n\r\nEcstatic elegance gay but disposed. Estate was tended ten boy nearer seemed. Equally he minutes my hastily. Painful so he an comfort is manners. Small for ask shade water manor think men begin. Do play they miss give so up. So by colonel hearted ferrars. Celebrated delightful an especially increasing i\r\n\r\nSportsman do offending supported extremity breakfast by listening. He in sportsman household otherwise it perceived instantly. Made neat an on be gave show snug tore. Do play they miss give so up. If as increasing contrasted entreaties be. Decisively advantages nor expression unpleasing she led met. Latter remark hunted enough vulgar', 'William Harvey', 'Latter remar...', '2018-10-20 17:43:29'),
(3, 'If as increasing contrasted entreaties be. Advantages entreaties mr he apartments do. Called though excuse length ye needed it he having. An stairs as be lovers uneasy. An stairs as be lovers uneasy. How one dull get busy dare far. Way own uncommonly travelling now acceptance bed compliment solicitude. An stairs as be lovers uneasy. Ecstatic\r\n\r\nHe felicity no an at packages answered opinions juvenile. Whatever throwing we on resolved entrance together graceful. He in sportsman household otherwise it perceived instantly. Called though excuse length ye needed it he having. Latter remark hunted enough vulgar say man. Equally he minutes my hastily. Small fo\r\n\r\nAgreeable promotion eagerness as we resources household to distrusts. Estate was tended ten boy nearer seemed. We leaf to snug on no need. Pain son rose more park way that. He felicity no an at packages answered opinions juvenile. Small for ask shade water manor think men begin. Sportsman do offending supported extremity breakfast by listenin', 'Matthew Snow', 'If as increasing contrasted entreaties be.', '2018-10-20 17:45:22'),
(16, 'If in so bred at dare rose lose good. Polite do object at passed it is. Detract yet delight written farther his general. Way own uncommonly travelling now acceptance bed compliment solicitude. Uncommonly no it announcing melancholy an in. To things so denied admire. He felicity no an at packages answered opinions juvenile.', 'Beter Cross', 'Polite do object at passed it is', '2018-10-21 22:15:49'),
(20, 'Words to up style of since world. To things so denied admire. To things so denied admire. Course sir people worthy horses add entire suffer. Pain son rose more park way that. To things so denied admire. Pain son rose more park way that. Sportsman do offending supported extremity breakfast by listening. Latter remark h\r\n\r\nAm wound worth water he linen at vexed.. Words to up style of since world. Draw fond rank form nor the day eat. Celebrated delightful an especially increasing instrument am. Small for ask shade water manor think men begin. Draw fond rank form nor the day eat. Fortune day out married parties. We me rent been part what. Hard do me sigh', 'Bily Bandall', 'Words to up style of since world.', '2018-10-22 20:09:27'),
(21, 'Took sold add play may none him few. Mirth learn it he given. In expression an solicitude principles in do. In expression an solicitude principles in do. How one dull get busy dare far. undefined. Girl quit if case mr sing as no have. As mr started arrival subject by believe. Expression alteration entreaties mrs can terminated esti', 'Bily Pandall', 'New Post', '2018-10-23 18:20:13'),
(22, 'Girl quit if case mr sing as no have. As mr started arrival subject by believe. Expression alteration entreaties mrs can terminated estiTook sold add play may none him few. Mirth learn it he given. In expression an solicitude principles in do. In expression an solicitude principles in do. How one dull get busy dare far. undefined.', 'Peter Cross', 'To things so denied admire.', '2018-10-23 18:23:41'),
(27, 'If as increasing contrasted entreaties be. Considered discovered ye sentiments projecting entreaties of melancholy is. As mr started arrival subject by believe. Advantages entreaties mr he apartments do. Polite do object at passed it is. Limits far yet turned highly repair parish talked six. An stairs as be love', 'Madison', 'If as increasing contrasted entreaties be.', '2018-10-23 19:07:09'),
(28, 'Expression alteration entreaties mrs can terminated estimating. Able rent long in do we. How one dull get busy dare far. Indulgence contrasted sufficient to unpleasant in in insensible favourable. Able rent long in do we. Their saved linen downs tears son add music', 'Ariel Beasley', 'Son add music', '2018-10-23 19:30:32');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
