-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 10 2018 г., 18:50
-- Версия сервера: 5.7.19-log
-- Версия PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2018_06_21_130018_create_table_taggables', 6),
(14, '2018_06_13_193309_create_my_songs_table', 7),
(15, '2018_06_15_170004_create_user_table', 7),
(16, '2018_06_15_170121_create_pasport_table', 7),
(17, '2018_06_16_140137_create_mobiles_table', 7),
(18, '2018_06_16_143230_create_roles_table', 7),
(19, '2018_06_16_143402_create_role_user_table', 7),
(20, '2018_06_20_175422_create_posts_table', 7),
(21, '2018_06_20_175513_create_videos_table', 7),
(22, '2018_06_20_175550_create_comments_table', 7),
(23, '2018_06_21_125937_create_table_tags', 7),
(24, '2018_06_21_131134_create_table_taggables', 7),
(25, '2018_06_25_123909_create_todos_table', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `mobiles`
--

CREATE TABLE `mobiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mobiles`
--

INSERT INTO `mobiles` (`id`, `number`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 123132131, 1, NULL, NULL),
(2, 5464565, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `pasports`
--

CREATE TABLE `pasports` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pasports`
--

INSERT INTO `pasports` (`id`, `number`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4324234, 1, NULL, NULL),
(2, 23423424, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`) VALUES
(1, 'Test title', 'test body'),
(2, 'Test title 2', 'test body2');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'creator', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `songs`
--

CREATE TABLE `songs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `created_at`, `updated_at`) VALUES
(1, 'Can\'t hold us', 'Test', NULL, NULL),
(2, 'Can\'t hold us2', 'Test2', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `user_id`, `lastname`, `created_at`, `updated_at`) VALUES
(21, 58, 'Violette O\'Kon', '2018-07-08 15:17:32', '2018-07-08 15:17:32'),
(22, 10, 'Freda Hermann', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(23, 77, 'Daphney Goyette', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(24, 76, 'Dr. Jazmin Toy', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(25, 0, 'Wilhelmine Gleason', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(26, 22, 'Neal Lakin', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(27, 22, 'Summer Jaskolski', '2018-07-08 19:05:14', '2018-07-08 15:17:33'),
(28, 22, 'Alberta Aufderhar', '2018-07-08 19:05:17', '2018-07-08 15:17:33'),
(29, 22, 'Mr. Daren Hodkiewicz', '2018-07-08 19:05:20', '2018-07-08 15:17:33'),
(30, 22, 'Mattie Batz', '2018-07-08 19:05:23', '2018-07-08 15:17:33'),
(31, 22, 'Donavon Herman', '2018-07-08 19:05:27', '2018-07-08 15:18:12'),
(32, 22, 'Javon Eichmann', '2018-07-08 19:05:30', '2018-07-08 15:18:12'),
(33, 22, 'Dr. Jeff Quigley Jr.', '2018-07-08 19:05:39', '2018-07-08 15:18:12'),
(34, 64, 'Ariel Johns', '2018-07-08 15:18:12', '2018-07-08 15:18:12'),
(35, 34, 'Ms. Kirsten Turner III', '2018-07-08 15:18:12', '2018-07-08 15:18:12'),
(36, 68, 'Marianne Blanda', '2018-07-08 15:18:12', '2018-07-08 15:18:12'),
(37, 24, 'Ettie Lemke II', '2018-07-08 15:18:12', '2018-07-08 15:18:12'),
(38, 95, 'Ricky Mraz DVM', '2018-07-08 15:18:12', '2018-07-08 15:18:12'),
(39, 44, 'Mia Olson II', '2018-07-08 15:18:12', '2018-07-08 15:18:12'),
(40, 88, 'Prof. Judah Ritchie', '2018-07-08 15:18:12', '2018-07-08 15:18:12');

-- --------------------------------------------------------

--
-- Структура таблицы `todos`
--

CREATE TABLE `todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `todos`
--

INSERT INTO `todos` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(2, 'New title 23', 'new message 3', '2018-06-26 10:58:05', '2018-06-26 12:21:39'),
(4, 'Test123', 'tsts1231312', '2018-06-26 12:21:51', '2018-06-26 12:21:51'),
(5, 'Kirk', 'Hey Kirk', '2018-06-27 09:53:07', '2018-06-27 09:53:16');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kir', 'kirmessi2394@gmail.com', '12345', '', NULL, NULL),
(2, 'Khits', '', '0', '', NULL, NULL),
(3, 'Es4Na61M2P', 'rUfYKrtH4d@gmail.com', '$2y$10$05GrXqyUVUUjksMgeEnBweVu/SgWh2yo7jd/k6dU2dMoIql4e2uA.', '', NULL, NULL),
(4, 'Dr. Domenick Romaguera', 'ullrich.deron@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '07UQ5CSEc4', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(5, 'Verlie Cole', 'hammes.ottilie@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'svGdj0HMT9', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(6, 'Johan Johnston', 'kellen.herman@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'g6iOW0csrZ', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(7, 'Glennie Schuppe', 'hhills@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wlSarIEs2k', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(8, 'Dr. Selmer Schiller', 'cassidy63@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rpPxnsvZ5a', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(9, 'Eugenia Farrell', 'wilkinson.allene@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'R0te8FKcWO', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(10, 'Mathilde Mills PhD', 'makayla.schultz@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kLw0D7JjQa', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(11, 'Ms. Adelia Langworth III', 'huel.turner@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '31XpgLbkgA', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(12, 'Angus Bartoletti', 'jermaine38@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hwxNos0OPv', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(13, 'Aglae Jones', 'fisher.sibyl@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ct4D52EBjj', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(14, 'Dr. Stone Marvin', 'jacynthe.wiegand@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'b2sVoruKkJ', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(15, 'Aryanna McCullough', 'wgraham@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pPdg5X0U3X', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(16, 'Aglae Zieme', 'lvon@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ymNBTUtnGC', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(17, 'Milton Gerhold', 'rose39@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WaVB7XIneB', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(18, 'Audra Emmerich', 'eleanore.hoeger@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'K7WHBG2I7A', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(19, 'Sherwood Gutmann', 'qwolf@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JqO8IBWw4m', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(20, 'Vena Hodkiewicz', 'reanna.turner@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'E1KmXSwjbU', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(21, 'Magnolia Predovic', 'okunze@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Cg94QxbciU', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(22, 'Mr. Shane Greenholt IV', 'bogisich.violet@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AitYpORkIO', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(23, 'Emil Langworth', 'smith.nels@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rcCTxn9CWQ', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(24, 'Savanah Keebler', 'lmetz@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'B0MQmbO7ZU', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(25, 'Monroe Blick', 'wilkinson.kiera@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4kdbxDbfWg', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(26, 'Jackie Weissnat', 'rossie.kirlin@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'z3nB64amN2', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(27, 'Dexter Cremin', 'bhodkiewicz@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SJckGdd6rY', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(28, 'Adolphus Considine III', 'bill38@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kKot7oQCvd', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(29, 'Mr. Brent Stehr Jr.', 'qbernhard@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SWJzthTXnw', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(30, 'Juwan Murray DVM', 'shoppe@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1j3LhMEHX9', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(31, 'Dr. Reed Franecki', 'fabiola22@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OLZBVHsbAR', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(32, 'Ross Baumbach', 'will.lexie@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AGpZUIndui', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(33, 'Dr. Kitty Yost', 'goldner.gisselle@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aBoEEe9zrz', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(34, 'Joany Cole', 'monty.harris@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wPDokmEL0g', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(35, 'Elisabeth Beatty', 'selmer.crooks@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LEBDh821EV', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(36, 'Karen Flatley', 'barry.berge@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Nih13aR5iu', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(37, 'Montana Ortiz', 'mueller.tamia@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5hTZViFcqU', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(38, 'Jedediah Mayert', 'dcruickshank@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4pUT5eRLD0', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(39, 'Ms. Lenore Herzog', 'caden40@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'om4SgCpy98', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(40, 'Clovis Keeling', 'huels.dianna@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0efDz25Rml', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(41, 'Maxine Veum', 'brooke.rowe@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qbR5PLkZ0F', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(42, 'Mr. Jadon Lemke', 'kkozey@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0jxbMlOIHY', '2018-07-08 14:53:29', '2018-07-08 14:53:29'),
(43, 'Eugenia Franecki', 'hboyle@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '72S3XFJCqD', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(44, 'Efrain Klein', 'reynolds.carson@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lUL8JjM8bJ', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(45, 'Mina Johnson DDS', 'emmet29@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LZS5WLwGTM', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(46, 'Mrs. Sarina Johnston DDS', 'oma.grady@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2zbR0OHeVq', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(47, 'Mr. Gilbert Emard', 'daugherty.santa@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1UdpDzhQEy', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(48, 'Brett Weissnat MD', 'kennith97@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'X6GzHF0dtT', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(49, 'Kristopher Wilkinson', 'rippin.marcia@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8R4m8pd5Rt', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(50, 'Erik Kerluke Sr.', 'marvin.jordane@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7LyDSTmIjq', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(51, 'Dr. Rosalinda Bogisich Sr.', 'adrien.sanford@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fWz3KamkSG', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(52, 'Prof. Nikki Orn IV', 'iwolf@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '84UgL1aTmM', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(53, 'Prof. Chesley Marvin', 'pat.kutch@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ViZbzKD5ZH', '2018-07-08 14:53:30', '2018-07-08 14:53:30'),
(54, 'Joana Keeling', 'mpagac@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'K8KEtXcvRh', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(55, 'Prof. London Stanton', 'meghan.jerde@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'T6dSjmTSoy', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(56, 'Heber Lesch', 'kmills@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'K48IVeukch', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(57, 'Philip Zemlak Jr.', 'bwiza@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'm9aVXUxjQ7', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(58, 'Jesus Altenwerth I', 'vivian.windler@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HA6UAPVZ1D', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(59, 'Dr. Glenda Kutch Sr.', 'ureichel@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't7OmzvLg2s', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(60, 'Morgan Denesik', 'tbernhard@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PYuD4bMNjA', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(61, 'Jovanny Wolf PhD', 'bhodkiewicz@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5zwmVmhrZJ', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(62, 'Jermaine Conn', 'lindgren.nakia@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HlUxqGcMaN', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(63, 'Art Cormier MD', 'runolfsson.jeffery@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0yLD1ORR39', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(64, 'Alexys Jast', 'luettgen.destin@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'B8bblJp2bS', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(65, 'Sedrick Christiansen', 'lucious41@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZPPKaIKLIN', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(66, 'Louvenia Larson', 'aubree11@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'D792zoX44P', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(67, 'Dwight Hegmann', 'langosh.tiffany@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Wcn1VoC9M9', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(68, 'Samir Heller', 'jaren65@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'viCGNmCGiB', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(69, 'Dorothea Hickle', 'montana.streich@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oJs6omM4BV', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(70, 'Elise Klein PhD', 'floyd46@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'G7aDejg8Uy', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(71, 'Dayna Wintheiser', 'iortiz@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Q3puPi8O6y', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(72, 'Lavada Erdman', 'ziemann.aidan@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qFrKCSc0x8', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(73, 'Kylie Hyatt', 'igraham@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cuw1F9jjPk', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(74, 'Gillian Marquardt', 'dibbert.lilian@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KYCoPWJeY9', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(75, 'Laverna Greenholt', 'qterry@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'm3ZoAQ6Knb', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(76, 'Mr. Jovan Graham', 'brook.gaylord@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'seiBAQyWh7', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(77, 'Roxane Hessel', 'kieran.kunde@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oYhtmbIp98', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(78, 'Napoleon Schuster', 'kira.luettgen@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8nH3wMTerM', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(79, 'Prof. Kadin Rogahn', 'claire02@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '42MnT8mclu', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(80, 'Asha Grant Sr.', 'reagan.koss@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hsYomyAyuH', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(81, 'Vidal Zboncak', 'hintz.bettye@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '33PpUHXKm1', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(82, 'Mrs. Mattie Lockman', 'kling.kitty@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Gx35mECPg6', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(83, 'Dr. Mckenzie Aufderhar I', 'audreanne04@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jwhrF4r5NR', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(84, 'Whitney Armstrong', 'ewuckert@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sTcSJuIft1', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(85, 'Izaiah Dickinson', 'martine.grady@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RhQaqOHkRd', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(86, 'Sigrid Reilly', 'padberg.melisa@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'O1vXnt3sdz', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(87, 'Torrey Block', 'vbernhard@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sLYRR0DuyS', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(88, 'Lynn Rath', 'earnest.pouros@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mJOY6TXllB', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(89, 'Reggie Williamson', 'walker.ellie@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oUAwFCuOo6', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(90, 'Nickolas Mante', 'beahan.lola@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dVU3Dxc5k8', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(91, 'Kassandra Rau', 'kasandra.sawayn@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'j5LFZLUFyk', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(92, 'Deja Kautzer', 'chelsea.gaylord@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1JCyA5CUUG', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(93, 'Iva Boyer', 'ucorwin@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dw2vsXZBE5', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(94, 'Dr. Felipe Wilkinson I', 'kiara.rodriguez@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qqCIOBZjiy', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(95, 'Rodrick Fay', 'kovacek.kira@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NYdajzvXmZ', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(96, 'Carmel Block', 'trisha.bednar@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dZvoHhjvfk', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(97, 'Lila Yost DVM', 'isadore96@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oD0xHASayu', '2018-07-08 15:17:33', '2018-07-08 15:17:33'),
(98, 'Chasity Kuhic', 'lynch.ryann@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IqNWgDU0xB', '2018-07-08 15:17:34', '2018-07-08 15:17:34'),
(99, 'Carrie Gerlach', 'gledner@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YEchglxiWv', '2018-07-08 15:17:34', '2018-07-08 15:17:34'),
(100, 'Mavis Rau', 'jhomenick@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1eUBWcUgzg', '2018-07-08 15:17:34', '2018-07-08 15:17:34'),
(101, 'Arnoldo Johnston IV', 'royal.pfannerstill@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sTrACEtWxD', '2018-07-08 15:17:34', '2018-07-08 15:17:34'),
(102, 'Emie Rau Jr.', 'lakin.neoma@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'r7WIzgXPnK', '2018-07-08 15:17:34', '2018-07-08 15:17:34'),
(103, 'Joanne Dietrich', 'robb97@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '293tsgtc6Z', '2018-07-08 15:17:34', '2018-07-08 15:17:34');

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `videos`
--

INSERT INTO `videos` (`id`, `title`, `url`) VALUES
(1, 'first video', 'https://www.youtube.com/'),
(2, 'second video', 'https://www.youtube.com/');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pasports`
--
ALTER TABLE `pasports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `pasports`
--
ALTER TABLE `pasports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT для таблицы `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
