-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 18 2018 г., 02:41
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `LUXOR`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `pib` varchar(255) NOT NULL,
  `bitrhday` datetime NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `template` longtext NOT NULL,
  `price` longtext NOT NULL,
  `prim` longtext NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `pib`, `bitrhday`, `mail`, `phone`, `country`, `city`, `template`, `price`, `prim`, `data`) VALUES
(1, '', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '0000-00-00 00:00:00'),
(2, '', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '0000-00-00 00:00:00'),
(3, '', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '0000-00-00 00:00:00'),
(4, '', '0000-00-00 00:00:00', '', 0, '', '', '1,2', '', '', '0000-00-00 00:00:00'),
(5, '', '0000-00-00 00:00:00', '', 0, '', '', '1,2', '', '', '0000-00-00 00:00:00'),
(6, '', '0000-00-00 00:00:00', '', 0, '', '', '3,4,5', '', '', '0000-00-00 00:00:00'),
(7, '', '0000-00-00 00:00:00', '', 0, '', '', '3,4,5', '', '', '0000-00-00 00:00:00'),
(8, '', '0000-00-00 00:00:00', '', 0, '', '', 'vinnie.zzz.com.ua,xn--lena-97d.kl.com.ua', '', '', '0000-00-00 00:00:00'),
(9, '', '0000-00-00 00:00:00', '', 0, '', '', 'vinnie.zzz.com.ua,xn--lena-97d.kl.com.ua', '', '', '0000-00-00 00:00:00'),
(10, '', '0000-00-00 00:00:00', '', 0, '', '', 'ЭLENA,ІГМР НАНУ', '', '', '0000-00-00 00:00:00'),
(11, '', '0000-00-00 00:00:00', '', 0, '', '', 'У ВИННИ,LEKETOY,УМТ', '', '', '0000-00-00 00:00:00'),
(12, '', '0000-00-00 00:00:00', '', 0, '', '', '', '', '', '0000-00-00 00:00:00'),
(13, '', '0000-00-00 00:00:00', '', 0, '', '', '1', '', '', '0000-00-00 00:00:00'),
(14, '', '0000-00-00 00:00:00', '', 0, '', '', '', '6,7', '', '0000-00-00 00:00:00'),
(15, '', '0000-00-00 00:00:00', '', 0, '', '', '3,4', '7,8,10', '', '0000-00-00 00:00:00'),
(16, 'rtgdsgfbsrdtgrsdtrsd', '0000-00-00 00:00:00', '', 0, '', '', '1', '8,9', '', '0000-00-00 00:00:00'),
(17, 'rtgdsgfbsrdtgrsdtrsd', '0000-00-00 00:00:00', '', 0, '', '', '1', '8,9', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `prices`
--

CREATE TABLE `prices` (
  `price_id` int(11) NOT NULL,
  `price_title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `prices`
--

INSERT INTO `prices` (`price_id`, `price_title`, `price`, `visible`) VALUES
(1, 'предложенный шаблон', 'в описании', 0),
(2, 'собственный шаблон', '5 000', 1),
(3, 'админ-панель', 'бесплатно', 1),
(4, 'адаптация', '2 000', 1),
(5, 'анимация', '200', 1),
(6, 'музыкальное сопровождение', 'договорная', 1),
(7, 'перевод на украинский язык', '100', 1),
(8, 'перевод на английский язык', '400', 1),
(9, 'услуга администратора', '5 000', 1),
(10, 'залив сайта на хостинг', '1 000', 1),
(11, 'другое', 'договорная', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `animation` varchar(255) NOT NULL,
  `music` varchar(255) NOT NULL,
  `adaptability` varchar(255) NOT NULL,
  `languages` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sites`
--

INSERT INTO `sites` (`id`, `img`, `title`, `link`, `admin`, `category`, `animation`, `music`, `adaptability`, `languages`, `price`) VALUES
(1, 'vinnie.jpg', 'У ВИННИ', 'vinnie.zzz.com.ua', 'есть', 'интернет-магазин детской одежды', 'есть', 'нет', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', '₴5000'),
(2, 'masha.jpg', 'ЭLENA', 'xn--lena-97d.kl.com.ua', 'есть', 'интернет-магазин рукоделия', 'нет', 'есть', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', '<b style=\"color: red;\">ОБРАЗЕЦ</b>'),
(3, 'leketoy.jpg', 'LEKETOY', 'leketoy.zzz.com.ua', 'есть', 'интернет-магазин детских игрушек', 'есть', 'нет', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', '₴5000'),
(4, 'igmof.jpg', 'ІГМР НАНУ', 'igmof.zzz.com.ua', 'есть', 'сайт института', 'есть', 'нет', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', '<b style=\"color: red;\">ОБРАЗЕЦ</b>'),
(5, 'ukrmineral.jpg', 'УМТ', 'ukrmineral.zzz.com.ua', 'есть', 'сайт-визитка общества', 'есть', 'нет', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', '<b style=\"color: red;\">ОБРАЗЕЦ</b>');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`price_id`);

--
-- Индексы таблицы `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `prices`
--
ALTER TABLE `prices`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
