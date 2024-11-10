-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2024 at 03:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appai`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `post_date` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `article_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `category_id`, `writer_id`, `content`, `post_date`, `views`, `article_image`, `created_at`, `updated_at`) VALUES
(1, 'Introduction to Multimedia', 1, 1, 'Placeat fuga voluptas quas saepe iste exercitationem. Aut earum magni velit odio illum voluptatum labore. Debitis libero labore unde. Quo cupiditate quidem autem eveniet.Ex sed consequatur quia rerum possimus magnam. Perferendis non officiis amet incidunt. Quia qui non laboriosam voluptate.Quis iure voluptatem est animi optio. Rerum non inventore molestiae sed. Voluptatem praesentium recusandae sint.Porro expedita autem animi veritatis et qui qui. Ullam similique est modi perferendis et et quod. Animi voluptates reprehenderit itaque similique sit iure sint. Ex architecto dolores hic doloremque veritatis impedit cum.Ut inventore voluptatem cumque fugiat occaecati iusto aut repellat. Et id quam voluptatem nihil quia incidunt. Consequatur id possimus sed adipisci. Nobis voluptate velit architecto dicta qui et eos esse.Non laboriosam ea aut consequatur consectetur voluptatem. Necessitatibus officia voluptatem et consequatur a quis. Consequatur qui quidem soluta.', '2022-09-23', 65, 'https://via.placeholder.com/640x480.png/002233?text=technics+minima', '2024-11-09 13:31:11', '2024-11-09 13:31:11'),
(2, 'Animation Basics', 1, 1, 'Distinctio maxime corporis consequatur ut. Et est nisi vel esse eveniet at possimus eaque. Et voluptatem quibusdam harum suscipit ad animi. Pariatur laborum similique ipsam commodi.Earum voluptas odio optio non. Ad perferendis dolor nihil. Sit ullam tenetur dolorem ab fugit nihil cum eum. Culpa doloribus quod velit ut natus repudiandae. Eos et enim qui vero non.Quasi odio et voluptas occaecati. Libero quis placeat optio ut odio. In aut est veniam magnam cumque modi quis enim.Ratione beatae voluptatibus occaecati id ea. Nisi fugiat eaque placeat est modi omnis. Nulla eligendi et doloremque a eius inventore provident. Laborum rerum consequatur vero.Nam error maxime quibusdam sit ut voluptas. Nesciunt unde cum quas libero. Recusandae ut tempora aut iure esse. Fuga maxime nihil explicabo itaque. Hic nobis culpa assumenda repudiandae cumque omnis sunt.Provident corrupti qui accusamus tempora illum. Aut et molestiae suscipit. Facilis quia harum eius et. Sint mollitia numquam quia optio non dolorem in.', '2006-08-08', 46, 'https://via.placeholder.com/640x480.png/0055ee?text=technics+qui', '2024-11-09 13:31:11', '2024-11-09 13:31:11'),
(3, 'Video Editing Essentials', 1, 1, 'Omnis aut nobis ut facere sit. Voluptate voluptatibus sit id non ratione sunt et pariatur. Sit tempora dolores sapiente corrupti consequatur et.Tempora sapiente pariatur non suscipit asperiores perspiciatis. Accusantium voluptatum est corporis qui beatae eum. Quae et aut sit optio enim.Dolorem voluptates voluptas quisquam officiis. Ex ad natus aut qui et quia ullam. Ab suscipit est voluptas in. Aliquam qui in sequi. Voluptas et aspernatur et omnis nam ut.Voluptatem et consequatur sunt cumque voluptatem rerum nesciunt necessitatibus. Quae sapiente sed ipsa consequatur. Est labore aliquid at rem consequatur consequatur. Incidunt et consequatur esse.Nam corporis sunt natus ex iure. Voluptatem repudiandae molestiae sed aliquam sed sed. Consequatur magni cumque voluptatum ut.Consectetur eius cupiditate fuga esse in ducimus voluptas. Quos culpa voluptas nihil velit qui nisi fuga. In commodi aut sed corporis.', '2011-04-07', 46, 'https://via.placeholder.com/640x480.png/00aa55?text=technics+voluptate', '2024-11-09 13:31:11', '2024-11-09 13:31:11'),
(4, 'Software Development Lifecycle', 2, 2, 'Quis optio numquam ratione id commodi aperiam. Voluptatem dolorem omnis voluptatem veniam rem iure provident nisi. Sed quia voluptatem necessitatibus enim modi. Ut laudantium deserunt velit incidunt incidunt nihil.Minus et non nostrum possimus at. Qui ipsum enim ullam est eos. Totam officiis occaecati eaque blanditiis perspiciatis esse repellendus. Aliquam dignissimos fugit quos quibusdam.Et perspiciatis consequatur consequatur cumque maxime. Vitae quo non ut voluptatem ratione. Numquam et inventore et nulla minima. Sunt et enim aut maxime.Incidunt iusto animi et minima voluptate. Culpa alias incidunt quia eum voluptatibus distinctio. Ea nobis in autem error asperiores recusandae. Laboriosam saepe autem eos.Ut modi iste dolor debitis qui quae voluptas. Consequuntur nobis numquam cumque nihil dignissimos voluptatem perferendis. Voluptatem porro iusto itaque corporis voluptate qui esse. Voluptatem repellendus voluptas sunt qui. Ut corrupti velit dolores quia soluta.Totam id ea aspernatur adipisci. Ea necessitatibus nesciunt nisi ab architecto. Rerum quibusdam blanditiis aut ipsam magni dolores recusandae.', '1993-06-01', 31, 'https://via.placeholder.com/640x480.png/00ffcc?text=technics+ut', '2024-11-09 13:31:11', '2024-11-09 13:31:11'),
(5, 'Agile Methodology', 2, 2, 'Repellendus porro ratione quibusdam impedit. Voluptatum asperiores nesciunt autem et alias sit asperiores perspiciatis. Quisquam aspernatur sit explicabo consectetur consectetur est corporis enim.Iusto voluptas eos quia illum qui voluptas sint. Veritatis autem voluptatem exercitationem sed deserunt illum. Aut deleniti iste quas ullam laborum fuga explicabo similique. Ea velit a est dolor est magni cum. Id est est assumenda et impedit.Cupiditate ea et at. Eligendi non blanditiis labore possimus quo veritatis itaque. Dignissimos voluptate aut voluptatem soluta sit. Ab sint quia consequatur minima libero dolore accusamus. Sit facere eos asperiores non.Ipsam consequatur est inventore. Et autem illo esse earum dolor corrupti nesciunt. Et molestiae soluta illo repudiandae.Dolores ipsam voluptas tempore voluptas molestias dolorem. Exercitationem et aliquid et. Est quia eligendi rerum ut. Voluptas sed expedita quaerat odio sed magnam.A dolore modi minima adipisci molestiae aliquam odit. Commodi distinctio quidem quaerat amet similique et qui. Est vel at distinctio fugiat consectetur. Possimus nulla corrupti qui labore.', '2011-03-07', 50, 'https://via.placeholder.com/640x480.png/003355?text=technics+temporibus', '2024-11-09 13:31:11', '2024-11-09 13:31:11'),
(6, 'Introduction to DevOps', 2, 2, 'Veniam aperiam quia voluptatibus sed. Temporibus voluptatem velit explicabo et. Labore a ut veritatis odio.Voluptatem aspernatur et libero labore rerum vel. Voluptas molestias est quam aut nemo et.Minima exercitationem blanditiis minima voluptatem ea corporis suscipit. Non non molestiae voluptatem placeat cupiditate ut. Molestiae eum rerum suscipit quod nam voluptatem quam. Odio et fugit laboriosam aut facere omnis. Enim vel maxime voluptatibus aut.Ullam quas unde eos sunt. Eum et illum et perferendis soluta. Enim dignissimos ut dolor sequi modi est non expedita.Dolore et dolores dolor numquam placeat et. Aut molestiae laboriosam dolorum incidunt saepe. Tempore fugiat reprehenderit enim saepe rerum ducimus.Officia tempore nihil excepturi sed aut ea nisi. Veritatis tempore omnis in doloribus. Quaerat iste repudiandae praesentium voluptas velit. Ea quos possimus ut ab aperiam.', '2009-11-17', 14, 'https://via.placeholder.com/640x480.png/002244?text=technics+expedita', '2024-11-09 13:31:11', '2024-11-09 13:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Multimedia', '2024-11-09 13:28:07', '2024-11-09 13:28:07'),
(2, 'Software Engineering', '2024-11-09 13:28:07', '2024-11-09 13:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '0001_01_01_000000_create_users_table', 1),
(15, '0001_01_01_000001_create_cache_table', 1),
(16, '0001_01_01_000002_create_jobs_table', 1),
(17, '2024_11_05_144702_create_writer_table', 1),
(18, '2024_11_09_191823_create_category_table', 1),
(19, '2024_11_09_201701_create_article_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bOhx4BQlzcMmwfanp9dmRbDNchhMLjmknRIHoJpf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianBlN2JVNU1OcnFuVzZSckpQVm5GMjF6S090MVdnQ0dDS04xNno5YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2NhdHNvZnRlbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1731221480),
('vwzr0iZ0xh31w6XKdBRV8b915x8o2gdFiJerhZpJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHZpVThuYkdkaTR6TWxmYlpHTTRGc1RJN3huU2hpM0NMTnZ1bUcxZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2NhdG11bG1lZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1731248628);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE `writer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `writer_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writer`
--

INSERT INTO `writer` (`id`, `name`, `bio`, `writer_image`, `created_at`, `updated_at`) VALUES
(1, 'Renzana Ezeilie', 'Interactive Multimedia', 'img/Writers3.jpg', '2024-11-09 13:23:46', '2024-11-09 13:23:46'),
(2, 'Heinke Maesasura', 'Software Engineering', 'img/writers6.png', '2024-11-09 13:23:46', '2024-11-09 13:23:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_category_id_foreign` (`category_id`),
  ADD KEY `article_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writer`
--
ALTER TABLE `writer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
