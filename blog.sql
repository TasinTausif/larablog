-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2023 at 10:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'vel', 'aut-aut-velit-aut', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(2, 'illum', 'qui-velit-libero-nemo-occaecati', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(3, 'ut', 'aperiam-doloribus-itaque-in-quas-aut-repellat-corrupti', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(4, 'reprehenderit', 'laudantium-expedita-reiciendis-ipsum-consequatur', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(5, 'unde', 'est-quaerat-est-ad', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(6, 'nihil', 'non-at-incidunt-aut-sunt-aperiam', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(7, 'quis', 'nemo-consequatur-eveniet-ipsam-voluptate-ab-placeat', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(8, 'distinctio', 'omnis-voluptate-voluptatem-tempora-asperiores-corporis-veniam-ex-a', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(9, 'quas', 'voluptatem-magnam-magnam-alias-est-nemo', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(10, 'et', 'omnis-quo-quas-a-enim', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(11, 'tenetur', 'quo-sed-commodi-enim-qui', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(12, 'ad', 'ut-qui-officiis-aut-non-consectetur', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(13, 'qui', 'et-inventore-natus-aperiam-pariatur-dolorem', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(14, 'autem', 'nobis-vitae-velit-temporibus-nulla-autem-ipsum', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(15, 'eaque', 'vitae-facilis-consequuntur-voluptas-delectus', '2023-04-01 13:25:46', '2023-04-01 13:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Good Post', 22, 4, '2023-04-06 03:46:39', '2023-04-06 03:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_08_133947_create_posts_table', 1),
(6, '2023_01_09_185537_create_categories_table', 1),
(7, '2023_03_26_055818_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `thumbnail`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 1, 'Explicabo aliquam ad vero non ipsam pariatur maxime voluptas.', 'nihil-commodi-temporibus-sequi-aliquid-aut-voluptatum', NULL, '<p>Ut eum ut autem rem velit. Soluta corrupti et et sit. Officiis nostrum cupiditate nam laborum. Doloremque expedita officia esse. . </p><p>Officia adipisci illum ducimus perferendis omnis rerum. Vero et maxime consequatur voluptates. Aut sint accusamus placeat porro id quibusdam est.</p>', '<p>Dolores ut aut maxime ab. Quia perspiciatis aperiam adipisci aut minus nesciunt. Ut quae sit et consequatur iusto aspernatur provident quisquam. Dolorem magni totam maxime voluptate. Ut non sit culpa aut vel quo. . </p><p>Voluptatem beatae qui dolorum in. Aut nam nesciunt rerum deleniti veritatis et incidunt sed. Rerum et quisquam voluptatum id ratione fuga adipisci. . </p><p>Laborum dolor recusandae vero eaque recusandae fuga vitae et. Minima est dolore sit odit impedit sequi. Est neque ut perspiciatis vel dignissimos quam et. Nisi harum vero asperiores molestiae ducimus necessitatibus optio quaerat. Ex aliquam cumque voluptatem non nihil. . </p><p>Possimus repellat explicabo libero aspernatur molestias aut. Voluptatum quia et optio temporibus excepturi. Quia quo cumque repellat ea aliquam modi error. Rem accusamus iure provident odit. . </p><p>Et voluptas magni odio iusto voluptatem commodi. Omnis modi tempore dolor velit qui eos. Nihil ratione ut accusamus ut deserunt pariatur placeat. Quo eligendi ad ea voluptatem ullam. . </p><p>Aut voluptatum voluptas ducimus tempora saepe qui. Quis nulla consequatur corporis reiciendis optio voluptas. Sed consequatur nihil fugiat optio modi quia. Quaerat voluptate non repellendus qui aut consequatur.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(3, 3, 1, 'Quasi fugiat voluptates ducimus voluptates esse voluptatem repellendus.', 'sit-magnam-non-eum-sequi-est-sint-sit-ut', NULL, '<p>Occaecati earum ab molestias tenetur. Alias neque deleniti aliquam facere. Dignissimos vel a nemo cum officiis voluptas earum. . </p><p>Voluptas et eos nemo. Aut aut aperiam pariatur provident.</p>', '<p>Vel doloremque et nostrum in voluptatem voluptas nulla. Soluta et fugiat ducimus quis cupiditate. Asperiores rerum animi dicta voluptatem perferendis. Autem sit repellendus eaque sed. . </p><p>Itaque aut quae enim id est ipsam. Natus saepe dolorem porro fuga labore. Tempore et molestiae est vel. . </p><p>Deleniti omnis est sint et ut commodi occaecati. Voluptatem odit perferendis eum fugit ut. Distinctio porro rerum voluptatem earum quisquam velit repellendus. . </p><p>Tenetur aliquid non voluptas magni totam repellat. Earum maxime eum ea tempore. . </p><p>Recusandae impedit autem iste ut. Qui reiciendis modi in quae qui. Perferendis iure et laudantium illo. Delectus consectetur eos aut quia cumque nesciunt. . </p><p>Quis omnis alias voluptatibus harum autem earum qui in. Sed ipsam alias quia amet. Est et exercitationem est sed. Aut eius qui quaerat quos.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(4, 4, 1, 'Illum sed ipsam nobis et facilis quidem vitae sed.', 'quia-dolore-debitis-itaque-voluptates-sunt-blanditiis-nam', NULL, '<p>Quia officiis voluptas doloribus voluptas aut. At modi enim quia quas ut. Quia voluptatem amet assumenda qui qui odio. . </p><p>Quidem omnis modi laboriosam amet voluptas rerum iste. Odit et qui cum. Voluptatem dolorem est et hic distinctio in illo.</p>', '<p>Suscipit quisquam consequatur perspiciatis doloribus eius. Eum quis deserunt eligendi placeat et. Deserunt at eligendi voluptatibus et. Error in voluptatem qui impedit veniam accusamus. . </p><p>Eos accusamus cumque soluta qui exercitationem quisquam. Voluptatibus quia ratione dolorum est odio vel dolorem non. Aut neque odit aperiam dolor quia. Placeat ratione iusto laboriosam veniam explicabo ut. . </p><p>Quis eum consequatur accusamus animi voluptatibus. Provident dolor maiores dolores autem. Praesentium a qui reprehenderit id laborum quo id. Deserunt enim aspernatur adipisci qui hic praesentium ut. . </p><p>Assumenda iusto id sit minima et officia. Doloremque est eos eos occaecati molestiae. Et et quia et facilis temporibus dolorum id. . </p><p>Sed tenetur ut explicabo aliquam repudiandae eum ex. Voluptates et cupiditate qui quis nihil maxime. Ut est sed numquam quae quo. Eos distinctio ut aliquam occaecati. . </p><p>Officia debitis aperiam ab sunt praesentium. Nostrum architecto nulla a voluptas quibusdam dolor ducimus similique. Adipisci maiores nesciunt ea amet quos sit ut. Facilis voluptatem sint qui possimus doloremque.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(5, 5, 1, 'Asperiores est non quidem modi temporibus aliquid.', 'tempore-consequuntur-voluptatem-veritatis-officia-beatae-ad-blanditiis', NULL, '<p>Dolorum est quia dolor. Sint a voluptas et quam. Dolorum voluptatibus voluptate doloremque ut. Et est accusantium repellat ut neque similique quia. . </p><p>Voluptate earum occaecati repellat nemo. Aut vitae sequi quasi itaque ratione soluta. Aliquid quaerat dolor tempore voluptates sapiente omnis voluptas.</p>', '<p>Nihil voluptas est reiciendis facere assumenda autem id. Aliquam perferendis voluptate commodi laudantium. . </p><p>Quo sunt non veniam soluta hic est. Ipsa dolorem nihil inventore quaerat esse nemo qui voluptas. Est aut aperiam perferendis praesentium culpa. . </p><p>Nobis velit dolore autem optio et tenetur. Architecto voluptatum quos vel illum omnis voluptates aut. Velit quod quaerat quia dolor omnis eos cupiditate quam. Nemo atque illo velit tenetur. . </p><p>Deserunt itaque numquam quia ad vel. Voluptatem quo facilis quas iure rerum nulla. Qui illum placeat necessitatibus reiciendis id sit beatae. Non nisi sunt non cumque earum. . </p><p>Fugiat voluptatem odit architecto. Consequatur accusantium quae illo minus possimus et. Eveniet qui quia autem aut perspiciatis. . </p><p>Quas sit maiores similique animi omnis. Iure aliquid voluptas exercitationem vel est. Eos et non et voluptatibus est. Incidunt et commodi cum suscipit error ab.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(6, 6, 2, 'Omnis ab facere voluptatem quia porro et.', 'fugiat-commodi-quia-qui', NULL, '<p>Neque assumenda non maiores sapiente ipsam. Ducimus nostrum aspernatur est quidem. Repellendus aut aut quod consectetur voluptate. . </p><p>Debitis cupiditate rerum voluptate sit. Voluptate velit adipisci voluptas.</p>', '<p>Labore consequatur est in quia reiciendis sunt earum. Eos vitae sunt sit soluta vitae cupiditate. Et velit ipsa itaque sunt facilis vel voluptatibus. . </p><p>Corporis at delectus eum id sunt odit. Aperiam explicabo est quas libero id sit est. Dolorem sit earum cum ad deserunt et qui soluta. . </p><p>Reiciendis aliquam ut quisquam. Iusto minus sequi non. Eligendi cupiditate rem repudiandae iusto beatae sunt. Sint eaque nesciunt omnis aspernatur. . </p><p>Quis qui tempore recusandae saepe autem dolor rerum dolor. Velit minima ratione reiciendis. Eos cum possimus iste rem deserunt rerum voluptas suscipit. Quaerat quam cum qui rerum doloremque repellendus voluptates. . </p><p>Officiis qui blanditiis dolores iusto enim temporibus id. Tenetur id labore eius fugiat non. Est sed repellendus earum architecto qui delectus voluptate explicabo. Consequatur tempore vitae rerum consequatur rem quos. . </p><p>Nesciunt sunt rem autem eum non fugit. Nesciunt id provident et magni.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(8, 8, 2, 'Quis quae eum consectetur aut voluptatem sunt.', 'quo-ab-quia-odio-exercitationem-et', NULL, '<p>Nesciunt libero distinctio possimus eos dolores. Id molestiae quasi corporis dolorem inventore repudiandae sed. Ut recusandae voluptatibus perferendis labore reprehenderit. Sit consequatur consequatur odio. . </p><p>Quia aut aut ut dolor sit. Labore ut debitis natus enim deleniti tempora. Et dolor odit quae modi libero possimus. Odit tempore sed doloremque earum consequuntur commodi.</p>', '<p>Quos sed veniam et quos voluptates eveniet quis. Commodi perferendis omnis earum et. Repudiandae nam dolores veritatis sed vero qui ut. Adipisci tenetur exercitationem placeat culpa. . </p><p>Optio dolor autem ullam aperiam ratione in. Quod magni tempora ut nihil eius error. Mollitia cupiditate sint tempora eos sed enim. Omnis perferendis qui veritatis magni. Perferendis modi eos id occaecati quo debitis perspiciatis minima. . </p><p>Ut voluptatum vel vero non eligendi ipsum aut. Possimus aliquid aut eligendi quo corporis. Quis ut cupiditate officia et perferendis. . </p><p>Eum eligendi cupiditate et est molestias. Necessitatibus natus ut illo magni totam. Harum dignissimos dignissimos qui sed exercitationem omnis. Consequatur nihil veniam vero eum consequuntur pariatur minus. . </p><p>Omnis rerum dolorem totam eligendi. Facilis est est provident et. Quas earum omnis soluta asperiores ut. . </p><p>Qui vero eum beatae cupiditate. Qui et sed quam nostrum placeat ullam commodi. Recusandae autem magni officiis consequatur molestiae voluptates animi laboriosam. Non ex ea doloribus iusto.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(9, 9, 2, 'Fugit voluptas doloribus consequatur exercitationem eligendi ullam.', 'quis-velit-quia-facere', NULL, '<p>Excepturi adipisci molestiae deserunt at dolor. Libero corrupti rerum qui. Voluptatem earum praesentium sunt dolores ea. . </p><p>Itaque eos sequi delectus. Inventore ut asperiores eum fugiat qui iusto. Tempora fugit deleniti delectus explicabo doloribus. Et quaerat nisi placeat voluptas aut eum dolorum.</p>', '<p>A quis esse amet illum maiores. Expedita rerum aut rerum voluptatem quia placeat. Sit sit quasi excepturi praesentium ea et autem. . </p><p>Praesentium voluptates rerum architecto aliquid. Et iure repudiandae et ipsum. . </p><p>Repellat minus ratione quis quidem tenetur autem non ut. Rerum quia error iusto totam ex recusandae voluptatem. Saepe assumenda vel voluptatem. Quaerat odit sed iste et a. . </p><p>Reprehenderit repellat omnis quia hic omnis rem. Voluptatem adipisci quo perspiciatis et facilis enim totam quia. Dolor fugit pariatur minima mollitia cum quis ab numquam. Beatae explicabo quia voluptate in temporibus. . </p><p>Repellendus in maxime quos voluptas libero quam. Doloribus rem quaerat aut facilis explicabo et velit cumque. Aut voluptatem placeat quia dolores. Molestiae magni asperiores et voluptatibus soluta. . </p><p>Quo quasi nostrum dolorum esse in. Error dolores odio laudantium est ea aut eaque. At repudiandae qui voluptatem deserunt maxime culpa ex. Aut qui qui et aut.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(10, 10, 2, 'Accusantium quaerat aspernatur ut tempore.', 'suscipit-deleniti-repudiandae-quibusdam-commodi-facilis-quis', NULL, '<p>Eveniet numquam voluptatem consequatur corrupti. Enim unde autem quos neque nemo quibusdam. Magni voluptates perspiciatis voluptatem et laudantium. Minima in doloremque suscipit tempora dignissimos cumque odit. . </p><p>Accusamus quia maxime neque necessitatibus tempore aliquid. Doloribus tempora rerum cupiditate pariatur omnis ex. Sint qui sit vero quia eveniet fugiat.</p>', '<p>Cumque et in incidunt quam. Tenetur doloremque placeat nostrum aut distinctio. Necessitatibus neque sit sequi quisquam. Sit maxime voluptatibus quibusdam qui nihil. . </p><p>Et quis sit dolor dolorum. Reiciendis sit explicabo quasi consequuntur. Cupiditate fugit beatae aliquam consequatur voluptas facilis consequatur. . </p><p>Saepe sunt repellendus est et nisi ratione nihil. Perferendis officiis totam sint corporis voluptatem debitis. Et et accusamus similique saepe unde at. Dolor vitae corporis quidem saepe rerum numquam consequatur. . </p><p>Voluptatem amet odio nihil quia hic aut aliquid itaque. Itaque voluptatum blanditiis error eius non sed. Magnam saepe non sit. . </p><p>Maxime voluptas harum distinctio assumenda praesentium expedita tempore. Vel tenetur et eos dolorum et eos. Est facere architecto sint aut. . </p><p>Doloremque nemo debitis est fugiat vel. Voluptas voluptatem itaque autem sed modi. Earum voluptate animi nisi est velit.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(11, 11, 3, 'Consectetur ut illo deleniti hic enim autem animi.', 'est-quia-qui-et-incidunt-repellendus-quas', NULL, '<p>Et et quod ipsa. Eveniet laboriosam eaque quos debitis recusandae. Rerum dolores molestiae tempore voluptas. . </p><p>Impedit illum ab quidem at. Dolore et est id numquam. Sed aperiam blanditiis eveniet.</p>', '<p>Nulla sint saepe occaecati ea eius. Est molestiae numquam dolores eveniet et. Vitae quia recusandae aut quaerat modi fugit. . </p><p>Nemo atque eum amet. Minima autem ab voluptatem dolorem. Et tenetur nemo voluptatem laborum veniam. Ut cumque dolorum voluptas nulla numquam. Magnam eum ratione sequi et eos. . </p><p>Sit corporis praesentium quis praesentium. Voluptatibus est et tempore sit exercitationem. . </p><p>Quaerat quidem commodi vel laborum necessitatibus. Fuga doloribus pariatur aliquid vel eos. Minus aut a eum illum commodi. Ipsa repudiandae magni quas at eius. . </p><p>Similique natus nihil molestiae voluptate officiis qui earum. Ut possimus eius voluptatem corporis. Et a optio amet molestias labore ea numquam. . </p><p>Maxime rerum ipsam veritatis est. Eum sunt consequuntur eum qui quae placeat. Molestias ut sit quia sapiente et id.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(12, 12, 3, 'Aut et officia sed odio.', 'non-iusto-dolores-aliquam-error-repudiandae-qui-facere-ad', NULL, '<p>Accusamus nesciunt consequatur repudiandae. Suscipit id tempore deleniti sint aut. Soluta voluptas soluta non. Vel quis vel et beatae perspiciatis dolore. . </p><p>Ut perspiciatis repudiandae exercitationem. Autem pariatur vero ratione temporibus officia. Illo itaque non blanditiis rerum accusantium. Perferendis quidem et ut vero magnam numquam. Incidunt et alias neque temporibus incidunt nam cupiditate.</p>', '<p>In repudiandae nesciunt aliquid. Aut fugit officia eum in veritatis vero illum. Fugit sint aut iusto fugiat nam. . </p><p>Dicta voluptatem saepe quos voluptatem consectetur molestiae voluptates aut. Laudantium quo id rem et sit molestiae accusamus. Tenetur a quos harum labore mollitia est aut. Dolorem veniam illo soluta ab omnis cupiditate earum. Accusamus quia ratione quo deserunt similique ut commodi est. . </p><p>Tempore quis repellat odit harum et dolore. Eaque explicabo necessitatibus corrupti deleniti dignissimos error beatae. Ipsum optio ipsam ea ex. . </p><p>Non vitae quis tempora omnis. Et veritatis quo voluptatum laborum maxime. Eligendi dolorem nisi reiciendis tenetur in voluptas eum. . </p><p>Sed tempora possimus aut sequi eum molestiae ipsa. Quos beatae doloribus eveniet non laudantium quo. Ipsum aut et iste autem vero. . </p><p>Dolores sit tempore quis dolorum amet sit nostrum. Fugit vero pariatur explicabo consequatur.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(13, 13, 3, 'Sed magnam quam nihil et aut.', 'qui-sunt-aperiam-labore-sed-saepe', NULL, '<p>Debitis sit totam facere rerum deserunt et sunt. Cupiditate ab ut id perferendis repellat. Est rerum soluta aut nisi error excepturi. . </p><p>Itaque dolorum facilis quae culpa dolorem laudantium in. Ut eius quis rerum blanditiis hic voluptate voluptatem dolor. Occaecati dolores ut voluptatibus sapiente et perferendis odit.</p>', '<p>Saepe non modi sint numquam exercitationem sunt eius. Ipsam sed dolor saepe nemo nisi non. Magnam numquam qui qui tempore. . </p><p>Minus odio eum temporibus laborum ut qui excepturi. Quia voluptatem quia commodi quia dolores similique. Maiores laboriosam nemo dolorem praesentium mollitia reiciendis. . </p><p>Nihil id in quasi enim. Voluptatem omnis et hic hic et non dolorem. Deleniti ducimus quisquam qui enim delectus tempore et. Dicta sequi excepturi vitae eveniet voluptate iste quibusdam. . </p><p>Repellat suscipit amet aut totam. Vel delectus vel aut et enim. Sit earum quae porro eos. . </p><p>Tenetur officia molestias est ab sed nulla et. Dolor et ipsum et tempora. Possimus eum repudiandae consectetur aut. . </p><p>Velit harum fuga qui velit facere quia. Qui et ut similique quis ut. Cupiditate rerum quas error et sit doloremque. Dicta aut sed similique quo reprehenderit et.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(14, 14, 3, 'Dolores magni totam facere mollitia consequatur voluptatem odit.', 'dolore-id-omnis-ut-cumque-sequi-nemo', NULL, '<p>Quibusdam ea aliquid modi id officia. Voluptatem cupiditate omnis velit ab enim quia voluptatum suscipit. Qui est velit quae architecto quia rerum consequatur. Qui quidem quia unde non ratione voluptatibus vero unde. Beatae eveniet nulla excepturi vitae quaerat sit. . </p><p>Mollitia vitae vero et omnis. Quisquam alias ipsam suscipit nemo aut non doloremque. Non tenetur ad sed neque dolor. Minima quidem cumque accusantium magnam fugiat occaecati. Neque amet dolores eos quisquam sequi.</p>', '<p>Facilis omnis labore harum qui odit reiciendis et. Adipisci qui et quis molestiae. Possimus voluptas laboriosam sit enim. Est ut magnam velit ipsum harum excepturi. . </p><p>Neque impedit id molestiae error velit in. Inventore molestias ut illo dolorum enim corrupti rerum. Earum eum debitis eveniet aliquam deleniti repudiandae enim. . </p><p>Ut libero voluptatem maiores voluptas deserunt. Cum quis nam tempora exercitationem quos. Enim labore dicta minus ipsa incidunt consequatur. Optio autem adipisci rem et esse. . </p><p>Amet voluptas sed iusto placeat vero quo. Ut consequatur nulla numquam iste ut tenetur. Occaecati perspiciatis voluptatem esse. . </p><p>Ea voluptatem ut rem quia. Quia quia veritatis quod sunt harum. Perferendis quibusdam laborum dignissimos. . </p><p>Amet aut asperiores aut voluptas et sit aliquid. Provident optio dicta ipsa repudiandae numquam velit culpa. Consequatur odit repellendus quia officia labore dolor.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(15, 15, 3, 'Sit architecto distinctio modi voluptates porro.', 'non-vitae-nobis-quibusdam', NULL, '<p>Aspernatur nulla earum aut nobis sit veniam maiores. Omnis laboriosam architecto ut ut occaecati dicta numquam. . </p><p>Quia et voluptatem eaque unde quae. Enim facere maxime voluptatem consequatur. Labore voluptatem nihil exercitationem aliquam dolores recusandae id rerum. Dolore est dicta non ut sunt et.</p>', '<p>Autem explicabo deleniti consequuntur et molestias nam consequuntur soluta. Et officia occaecati nobis qui. . </p><p>Ea quo aspernatur dolore. Similique assumenda dicta porro quia dignissimos. Aut et sed nihil fuga non et possimus. Ut unde delectus deserunt est. . </p><p>Quibusdam voluptates nihil vero id. Qui numquam possimus nostrum occaecati sunt perferendis itaque. Qui voluptas earum et blanditiis. . </p><p>Nulla adipisci impedit ea suscipit asperiores. Tempora praesentium quaerat maxime hic. Est ut itaque consectetur sed. Possimus dolor voluptates rerum dolores dolorum. . </p><p>Itaque optio et voluptatem sint. Delectus ad est est dignissimos veniam et. Nulla dignissimos asperiores magnam velit nobis ipsum. . </p><p>Aut repudiandae ipsum quia ut iure debitis non. Omnis beatae ut repudiandae est. Corrupti dolores consequatur officia doloribus eum beatae. Ut alias accusamus est laudantium culpa.</p>', '2023-04-01 13:25:46', '2023-04-01 13:25:46', NULL),
(16, 3, 4, 'New Post', 'new-post', 'Thumbnail_images/qhwm68WKy9ep00BY3q2KXfVmnUNJeR8HGErqhRFL.png', 'A new excerpt', 'A new body', '2023-04-01 13:28:51', '2023-04-01 13:28:51', NULL),
(17, 9, 4, 'Another new post', 'another-post', 'Thumbnail_images/XedTfFdPYJqSwVMllu1mQIZK8hWJmVmxgRMO9Mns.png', 'Another Excerpt', 'Another body', '2023-04-01 14:02:34', '2023-04-01 14:02:34', NULL),
(18, 13, 4, 'Brand New Post', 'brand-new-post', 'Thumbnail_images/dv7x41GOzc7zRdiVElNcvfZii7Txtb5kdllffLgR.png', 'New post', 'New body', '2023-04-01 14:06:20', '2023-04-01 14:06:20', NULL),
(19, 15, 4, 'Confirmation Post', 'confirmation-post', 'Thumbnail_images/scuqmZ14MDI7kUVaIXsdL79ZNHGNC8wNzoBayWfD.png', 'sfgsdfgbseht', 'afsguoiahreughaowrg', '2023-04-01 14:08:38', '2023-04-01 14:08:38', NULL),
(20, 10, 4, 'Updated Post', 'random postqr', 'Thumbnail_images/yKQYShKECaYVprKpjSLqUgR1mrJQexpyUUV6UyAR.png', 'Updated Excerpt', 'Updated Body', '2023-04-01 14:19:17', '2023-04-05 15:48:37', NULL),
(21, 12, 5, 'Admin Post', 'admin-post', 'Thumbnail_images/xfKoPLPgKBADYYBswBghumqB8ObpMLQzc3Bzchk4.png', 'admin excerpt', 'admin body', '2023-04-06 03:32:46', '2023-04-06 03:32:46', NULL),
(22, 10, 5, 'Another new post', 'admin-new-post', 'Thumbnail_images/GBUWibFqoy2C4nJsRd1bm8OnYNVirxmXzd5egHgV.png', 'Some random words', 'Some random paragraphs', '2023-04-06 03:45:43', '2023-04-06 03:45:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'wyman.alyson', 'ijacobi@example.org', '2023-04-01 13:25:46', '$2y$10$lZH.DX1mo/6eguqAVW.vbuMxBHvN1mKhRXlQbgBctpQYj6BqYSOf2', '7sybwrFNoY', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(2, 'Jimmy Roe', 'samantha17', 'turcotte.otto@example.net', '2023-04-01 13:25:46', '$2y$10$W4sB/T9H0sQCnmst5U/0RO99eAwQvKDbuIJEI0XsABNL/jBw7v9w2', 'i6cI70PR8K', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(3, 'Joe Blow', 'janie.klocko', 'aleen05@example.org', '2023-04-01 13:25:46', '$2y$10$mGSBCACiNzXxzpji2u9Mq.00Faz5laKOtZEgf8oO5bGSpPETFrYia', 'OwOJGBNPZ4', '2023-04-01 13:25:46', '2023-04-01 13:25:46'),
(4, 'Henry Sky', 'HenrySky', 'henry@sky.com', NULL, '$2y$10$.Yv6dWVxOvbaPM2sYnzfaulSdHtlAbWiob.Dz/8PbR2IlP3ollQi6', NULL, '2023-04-01 13:27:45', '2023-04-01 13:27:45'),
(5, 'Admin', 'admin', 'admin@admin.com', NULL, '$2y$10$26WpeLusyJ/oyXOTxJ9/Xe42t2sodzpAHOXujmmlyrhIxFABMDKrm', NULL, '2023-04-06 03:20:29', '2023-04-06 03:20:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
