-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 11 2018 г., 17:14
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
-- Структура таблицы `prices`
--

CREATE TABLE `prices` (
  `price_id` int(11) NOT NULL,
  `price_title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `prices`
--

INSERT INTO `prices` (`price_id`, `price_title`, `price`) VALUES
(1, 'предложенный шаблон', 'в описании'),
(2, 'собственный шаблон', '5 000'),
(3, 'админ-панель', 'бесплатно'),
(4, 'адаптация', '2 000'),
(5, 'анимация', '200'),
(6, 'музыкальное сопровождение', 'договорная'),
(7, 'перевод на украинский язык', '100'),
(8, 'перевод на английский язык', '400'),
(9, 'услуга администратора', '5 000'),
(10, 'другое', 'договорная');

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
  `price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sites`
--

INSERT INTO `sites` (`id`, `img`, `title`, `link`, `admin`, `category`, `animation`, `music`, `adaptability`, `languages`, `price`) VALUES
(1, 'vinnie.jpg', 'У ВИННИ', 'vinnie.zzz.com.ua', 'есть', 'интернет-магазин детской одежды', 'есть', 'нет', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', 5000),
(2, 'masha.jpg', 'ЭLENA', 'xn--lena-97d.kl.com.ua', 'есть', 'интернет-магазин рукоделия', 'нет', 'есть', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', 7000),
(3, 'leketoy.jpg', 'LEKETOY', 'leketoy.zzz.com.ua', 'есть', 'интернет-магазин детских игрушек', 'есть', 'нет', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', 5000),
(4, 'igmof.jpg', 'ІГМР НАНУ', 'igmof.zzz.com.ua', 'есть', 'сайт института', 'есть', 'нет', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', 4000),
(5, 'ukrmineral.jpg', 'УМТ', 'ukrmineral.zzz.com.ua', 'есть', 'сайт-визитка общества', 'есть', 'нет', 'нет', 'HTML5, CSS3, JS, PHP5, mysql', 6000);

--
-- Индексы сохранённых таблиц
--

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
-- AUTO_INCREMENT для таблицы `prices`
--
ALTER TABLE `prices`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
