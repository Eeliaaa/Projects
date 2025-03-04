-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 24 2025 г., 09:09
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Tea`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id_user` int NOT NULL,
  `login_user` text COLLATE utf8mb4_general_ci NOT NULL,
  `email_user` text COLLATE utf8mb4_general_ci NOT NULL,
  `password_user` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id_user`, `login_user`, `email_user`, `password_user`) VALUES
(1, 'Elia', 'elia@mail.ru', '1234'),
(2, 'iLya', 'ilya@yandex.ru', '12345'),
(3, 'iLya', 'ilya@yandex.ru', '21032006'),
(4, 'elia', 'lsdjfhs@yandex.ru', '2103'),
(5, 'elia', 'ilya@yandex.ru', '2103'),
(6, 'elia', 'ilya@yandex.ru', '2103');

-- --------------------------------------------------------

--
-- Структура таблицы `Users_join`
--

CREATE TABLE `Users_join` (
  `id_joinUser` int NOT NULL,
  `email_joinUser` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Users_join`
--

INSERT INTO `Users_join` (`id_joinUser`, `email_joinUser`) VALUES
(1, 'elia@yandex.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `Users_join`
--
ALTER TABLE `Users_join`
  ADD PRIMARY KEY (`id_joinUser`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Users_join`
--
ALTER TABLE `Users_join`
  MODIFY `id_joinUser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
