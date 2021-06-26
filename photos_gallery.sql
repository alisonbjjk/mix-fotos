-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Jun-2021 às 23:22
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `photos_gallery`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `alb_id` int(10) UNSIGNED NOT NULL,
  `alb_cod` int(10) UNSIGNED NOT NULL,
  `alb_titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alb_pasta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `album`
--

INSERT INTO `album` (`alb_id`, `alb_cod`, `alb_titulo`, `alb_pasta`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Teste', '494141376.Teste', '2021-06-21 00:32:39', '2021-06-21 01:23:00', '2021-06-21 01:23:00'),
(2, 2, 'Teste', '85206067.Teste', '2021-06-21 01:33:47', '2021-06-21 01:33:47', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `album_capa`
--

DROP TABLE IF EXISTS `album_capa`;
CREATE TABLE `album_capa` (
  `albc_id` int(10) UNSIGNED NOT NULL,
  `albc_alb_cod` int(10) UNSIGNED NOT NULL,
  `albc_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `album_capa`
--

INSERT INTO `album_capa` (`albc_id`, `albc_alb_cod`, `albc_img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2016403249.jpeg', '2021-06-21 00:32:39', '2021-06-21 00:32:39', NULL),
(2, 2, '813739262.png', '2021-06-21 01:33:47', '2021-06-21 01:33:47', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `album_fotos`
--

DROP TABLE IF EXISTS `album_fotos`;
CREATE TABLE `album_fotos` (
  `albf_id` int(10) UNSIGNED NOT NULL,
  `albf_alb_cod` int(10) UNSIGNED NOT NULL,
  `albf_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `album_fotos`
--

INSERT INTO `album_fotos` (`albf_id`, `albf_alb_cod`, `albf_img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '309496817.jpeg', '2021-06-21 00:32:39', '2021-06-21 00:32:39', NULL),
(2, 2, '827138756.png', '2021-06-21 01:33:47', '2021-06-21 01:33:47', NULL),
(3, 2, '1873489624.png', '2021-06-21 01:33:47', '2021-06-21 01:33:47', NULL),
(4, 2, '1085033282.png', '2021-06-21 01:33:47', '2021-06-21 01:33:47', NULL),
(5, 2, '585477277.png', '2021-06-21 01:33:47', '2021-06-21 01:33:47', NULL),
(6, 2, '439224565.png', '2021-06-21 01:33:47', '2021-06-21 01:33:47', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_15_020446_create_album_table', 1),
(5, '2020_05_15_020458_create_album_fotos_table', 1),
(6, '2020_05_15_020606_create_album_capa_table', 1),
(7, '2020_05_29_040900_add_active_users_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `active`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Alison Cristiano Silva Tavares', 'alisonbjjk@gmail.com', NULL, 1, '$2y$10$OuJXNbjSb4uUieNUQDUVsuv6ZvJLphKVOyAJ5sT0TyJqAoRBN9gIC', NULL, '2021-06-21 00:31:57', '2021-06-21 00:31:57');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`alb_id`),
  ADD UNIQUE KEY `album_alb_cod_unique` (`alb_cod`),
  ADD UNIQUE KEY `album_alb_pasta_unique` (`alb_pasta`);

--
-- Índices para tabela `album_capa`
--
ALTER TABLE `album_capa`
  ADD PRIMARY KEY (`albc_id`),
  ADD KEY `album_capa_albc_alb_cod_foreign` (`albc_alb_cod`);

--
-- Índices para tabela `album_fotos`
--
ALTER TABLE `album_fotos`
  ADD PRIMARY KEY (`albf_id`),
  ADD KEY `album_fotos_albf_alb_cod_foreign` (`albf_alb_cod`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `album`
--
ALTER TABLE `album`
  MODIFY `alb_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `album_capa`
--
ALTER TABLE `album_capa`
  MODIFY `albc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `album_fotos`
--
ALTER TABLE `album_fotos`
  MODIFY `albf_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `album_capa`
--
ALTER TABLE `album_capa`
  ADD CONSTRAINT `album_capa_albc_alb_cod_foreign` FOREIGN KEY (`albc_alb_cod`) REFERENCES `album` (`alb_cod`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `album_fotos`
--
ALTER TABLE `album_fotos`
  ADD CONSTRAINT `album_fotos_albf_alb_cod_foreign` FOREIGN KEY (`albf_alb_cod`) REFERENCES `album` (`alb_cod`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
