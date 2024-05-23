-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 23 2024 г., 15:42
-- Версия сервера: 5.6.51
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `getpetback_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `register` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `cards`
--

INSERT INTO `cards` (`id`, `name`, `email`, `phone`, `kind`, `photo`, `description`, `mark`, `district`, `date`, `status`, `register`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'кошка', 'https://101kote.ru/upload/medialibrary/46f/20.jpg', 'Найдена кошка. Очень грустная(', 'V0-1v', 'Калининский', '2024-05-07', 'active', NULL, NULL, NULL),
(2, NULL, NULL, NULL, 'Собака', 'https://attuale.ru/wp-content/uploads/2018/08/maxresdefault-60.jpg', 'Найдена собака. Очень интересная.', 'no', 'Октябрьский', '2024-05-14', 'active', NULL, NULL, NULL),
(3, NULL, NULL, NULL, 'собака', 'https://w.forfun.com/fetch/da/da86b58b7004ec72c3093ec618ca5dc6.jpeg', 'Недавно нашел собачку в Ленинском районе. Кто потерял красавца?', 'no', 'Ленинский', '2024-05-30', 'active', NULL, NULL, NULL),
(4, 'Илья', 'ilya@email.com', '78654673423', NULL, NULL, 'Спасибо Енот найден!', NULL, NULL, NULL, NULL, NULL, '2024-05-21 03:33:05', '2024-05-21 04:13:11'),
(5, 'Илья', 'gonneTek@yandex.ru', '78654673423', 'енот', 'https://4lapki.com/wp-content/uploads/2019/05/https-www-vladtime-ru-uploads-posts-2018-06-1529.jpeg', 'Спасибо Енот найден!asdas', 'V2-00df', NULL, NULL, 'active', NULL, '2024-05-21 03:34:28', '2024-05-21 04:16:07');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_19_021703_create-cards-table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registrationDate` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordersCount` int(11) DEFAULT NULL,
  `petsCount` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `phone`, `email`, `name`, `registrationDate`, `password`, `ordersCount`, `petsCount`, `days`, `api_token`, `created_at`, `updated_at`) VALUES
(1, '79629375767', 'test@gmail.com', 'Ivan', '2024-05-08', 'test123', 0, 0, 10, NULL, NULL, '2024-05-19 20:59:40'),
(5, '79999999991', 'Ivanchik@yandex.ru', 'Иван', NULL, 'test321', NULL, NULL, NULL, 'RPNKpDfiTkzMRsET', '2024-05-18 20:05:24', '2024-05-19 22:13:27'),
(7, '+79929349378', 'kir@yandex.ru', 'Кирилл', NULL, 'test321', NULL, NULL, NULL, NULL, '2024-05-19 05:11:30', '2024-05-19 05:11:30'),
(9, '+799293493', 'kirgr@yandex.ru', 'Максим', NULL, 'test321', NULL, NULL, NULL, NULL, '2024-05-19 05:18:53', '2024-05-19 05:18:53'),
(10, '79999999321', 'gonneTek@yandex.ru', 'Гон', '2024-05-20', 'gon123456', NULL, NULL, NULL, 'ELvfHdvWwWuGSXoe', '2024-05-19 21:46:23', '2024-05-19 22:20:47');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
