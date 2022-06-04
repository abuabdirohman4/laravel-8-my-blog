# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.34)
# Database: fnd_15_laravel_8
# Generation Time: 2022-06-04 06:23:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Programming','programming','2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(2,'Web Design','web-design','2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(3,'Personal','personal','2022-06-03 07:19:34','2022-06-03 07:19:34');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1),
	(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
	(5,'2021_09_15_004837_create_posts_table',1),
	(6,'2022_04_12_104514_create_categories_table',1),
	(7,'2022_06_04_050941_add_is_admin_to_users_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`)
VALUES
	(1,3,1,'Earum quo enim placeat sequi rerum.','autem-consequatur-consequatur-enim-consequatur-labore-reiciendis-consequatur',NULL,'Ut rerum architecto voluptas et dignissimos illum sapiente sit. Blanditiis ut excepturi natus nulla provident sint dolorum. Ad qui quo eius perferendis. Quae atque expedita consequatur aut.','<p>Non iste molestiae ullam ut recusandae maxime porro. Aliquid architecto facilis nesciunt ea. Amet nisi vel reprehenderit eligendi. Sit repellendus repellendus ipsam omnis magnam ullam.</p><p>Facilis necessitatibus nesciunt quo tenetur rerum. Nulla sed temporibus non nisi temporibus delectus. Consequatur ut consequatur cum quam facere consequatur consectetur ipsum. Quos quo qui quo quam.</p><p>Minus perferendis occaecati sit sed aut. Odit eligendi distinctio aperiam rerum debitis dolor vitae. Dolore sint dolores sapiente. Et error fugiat atque expedita quia qui.</p><p>Corrupti velit odit maxime debitis repellat qui. Dolores voluptatibus eligendi incidunt hic dolor. Incidunt molestiae fuga non enim perspiciatis exercitationem quam.</p><p>Sed ut possimus qui quam voluptatum voluptatum. Blanditiis adipisci alias eos. Atque magnam non deserunt omnis ex.</p><p>Ipsa veniam fugit molestiae recusandae. Et similique ex expedita odio. Architecto omnis veritatis quasi similique est voluptates quia.</p><p>Ratione quod itaque perspiciatis minus soluta hic dolorum. Delectus architecto illum voluptas fugit doloremque dolorem. Vero labore aut ut placeat.</p><p>Molestiae sint aperiam consectetur. Officiis id dolor explicabo officiis. Repudiandae est beatae eos autem sequi neque.</p><p>Dolor qui dolorem tenetur officia ex sint sit. Occaecati doloremque molestias aut aut sunt nulla. Alias omnis asperiores porro molestias.</p>',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(2,1,3,'Quos dignissimos sunt quia odit aut qui.','nostrum-numquam-et-cupiditate-et-accusantium',NULL,'Rerum eum soluta sunt porro velit. Esse a soluta reprehenderit non non aliquam eum. Nihil neque in deleniti.','<p>At ratione nesciunt iste et laudantium earum aliquam laudantium. Mollitia unde dolores sint a voluptate eum aut voluptates. Aspernatur corporis molestias accusamus voluptas.</p><p>Dolorem alias unde blanditiis cupiditate. Quaerat aperiam ipsum ducimus voluptas deleniti dolore aut nam. Deserunt dolores velit similique sed sed labore illo. Doloribus minima qui dolore dolore sit in consequatur.</p><p>Nobis qui soluta porro quod veritatis et consequuntur officia. Eaque odio laudantium quo rem vitae nostrum. Aliquam hic tenetur quae vel consequatur quis.</p><p>Cupiditate dolorum ut sunt. Atque aliquam ipsam quasi ab voluptate. Omnis omnis aut vel deserunt corporis repudiandae.</p><p>Dolor ipsa quas aspernatur ut tempora. Quo cum sunt voluptas. Nesciunt inventore nihil doloribus amet ipsam. Numquam qui necessitatibus ad nihil eaque aliquam molestiae. Qui reiciendis voluptas eius id ipsam dolorum.</p><p>Debitis officia consequuntur ratione enim quos unde. Vel et inventore molestiae ab. Doloribus sapiente vero voluptatem et. Necessitatibus aut incidunt et voluptates nulla qui.</p><p>Inventore nam asperiores at optio. Mollitia rerum quaerat sed sed deserunt quia dignissimos.</p><p>Tenetur tempora doloremque voluptatem unde sit qui molestiae quaerat. Tempora ex sit autem voluptate doloribus. Aperiam ut ducimus distinctio ex. Reiciendis suscipit doloremque nesciunt maiores.</p><p>Et quo itaque provident et. Itaque sint excepturi magnam at veritatis. Ut unde itaque et tempora.</p><p>Est aperiam voluptatem excepturi nisi. Aut ut tempore dolores provident. Qui iure et quibusdam et a sint totam.</p>',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(3,2,2,'Placeat facere ut.','aliquam-quia-nihil-hic-et-officia-ipsam-quasi',NULL,'Ut esse et omnis hic tempora. Ad qui laborum vero nihil. Amet consequatur molestias voluptatem a. Ex laudantium omnis laudantium omnis et aspernatur qui.','<p>Dignissimos non cupiditate iure commodi sit repudiandae veniam. Sapiente sapiente eos possimus necessitatibus suscipit dolor at. Ipsam et et ut vero eaque. Consectetur in velit similique nihil ut ea blanditiis.</p><p>Aut et et dignissimos. Ut accusamus in aliquid voluptas est. Quo dolores recusandae quas et voluptates.</p><p>Sunt possimus id harum quos voluptatem. Voluptates et voluptatum omnis ut. Adipisci eum officia sunt reiciendis. Voluptate sunt tempore perferendis enim beatae esse officiis. Repudiandae nostrum iusto sit impedit.</p><p>Odit porro dolores dolorum nobis veritatis sed fugit. Mollitia asperiores at maxime non ducimus veniam. Illum et consequatur vel.</p><p>Accusantium consequatur magnam consequatur minus ea porro. Aut cupiditate dolorem quo quas nihil dolore. Qui delectus ut nam consequatur dolorum. Voluptatem id sint similique odit tempore reprehenderit.</p><p>Quia enim rerum fugiat ullam vero. Dolor et est necessitatibus qui corporis dolores voluptatem. Temporibus voluptate cumque et iusto aperiam ad molestiae. Consectetur provident quis necessitatibus ex.</p><p>Alias aut quisquam ex magnam ea. Et eum minus debitis quis. Non accusamus quos nemo omnis sapiente in. Animi iste ut maxime expedita eum aut.</p><p>At nobis modi enim laboriosam maxime. Est dolor eveniet vero a. Dolor et quas eos eligendi cupiditate.</p><p>Qui ea rerum corrupti culpa. Voluptas aut quisquam sapiente sint. Quidem nobis nihil perspiciatis aut omnis est. Non voluptates veritatis non quos.</p><p>Ad ut eligendi corrupti voluptatem repellendus. Perferendis explicabo similique unde ut quod. Cumque voluptas voluptatem aut laudantium. Autem facere ipsam in ipsa autem totam.</p>',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(4,1,3,'Facere ut vel quibusdam consequatur qui qui excepturi rerum esse.','iste-sit-expedita-cumque-iure-omnis-voluptas',NULL,'Libero aut quis rerum omnis exercitationem. Assumenda perferendis vitae quo nemo necessitatibus aut. Soluta voluptates sint et nobis quam.','<p>Odio quas aut dolorum magni animi aut ratione. Quo perspiciatis voluptatum aut neque non pariatur totam animi. Sed labore officiis quas aliquid asperiores. Voluptatibus distinctio consequatur et itaque maiores asperiores. Nulla deleniti debitis quis ipsam quae placeat.</p><p>Dolorum nihil aut veniam molestias perferendis neque necessitatibus. Rem voluptatem omnis rerum harum.</p><p>Velit maiores voluptate et temporibus eos ut consequatur. Quo ipsa iusto facilis vel. Laudantium iusto sit aut ullam.</p><p>Vel non fuga beatae sunt alias omnis temporibus. Adipisci ab ipsam vel qui sit in officia. Laudantium fugit voluptatem architecto quidem.</p><p>Eligendi non natus officiis magni architecto. Necessitatibus ab voluptas nemo corrupti. Sed dolorum vero accusamus corrupti et eum. Labore dolor quam nihil sapiente.</p><p>Omnis distinctio accusantium dolorum est quod voluptas dolor expedita. Odio voluptas porro doloribus ipsam.</p>',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(5,2,3,'Quaerat tempore sed autem enim.','exercitationem-ut-amet-autem-enim',NULL,'Omnis omnis voluptatem et aliquam. Est illo quisquam laudantium et illum vel aperiam. Ea nemo sed pariatur et deleniti harum.','<p>Ut eos sint corrupti eligendi minima qui. Dolorem autem quasi sed qui harum nostrum quisquam laudantium. Accusantium aliquam alias qui commodi magnam unde molestiae. Eius voluptas itaque quo atque libero.</p><p>Quidem illo sunt necessitatibus enim enim eum quod laudantium. Consequatur necessitatibus consequatur et laboriosam rerum sed cumque incidunt. Ratione inventore suscipit et aliquam velit tenetur. Asperiores sit quos odio illum sit quidem cum nulla.</p><p>Aut quo deserunt fugit minima iure porro. Ipsam enim repellendus quae delectus vitae non. Dolor aperiam qui illo et accusantium sint impedit.</p><p>Ipsam ut odit eligendi in dolorum. Et velit delectus iusto molestiae veniam et ut exercitationem. Praesentium nam qui illo. Quo dicta fugit modi deleniti.</p><p>Delectus quo soluta eos fugit aut facilis adipisci. Sunt ipsum et maxime et. Molestiae atque tempore numquam voluptates quis ut.</p><p>Quibusdam eligendi voluptatem doloribus. Nulla mollitia recusandae natus enim cum sunt. Rem animi et rerum necessitatibus aspernatur iste repellat. Molestiae repellendus dignissimos impedit esse atque enim dolores.</p><p>Quas quis et cumque fugit. Facilis dolore aut omnis qui. Corporis atque officia a et. Quisquam totam exercitationem ea non explicabo velit et. Sint voluptate provident itaque veritatis.</p><p>Cum perspiciatis delectus nihil quia saepe. Veritatis et nihil amet illum. Dolorum earum ut sunt optio ad quis nisi.</p><p>Culpa veniam nesciunt enim dolores rem rerum corrupti. Dolore necessitatibus labore asperiores eius dolore distinctio accusantium eum. Repellat dolores facilis sit consequuntur inventore in suscipit. Recusandae eaque non quia sed voluptates sed.</p>',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(6,2,1,'Laboriosam totam cumque aspernatur.','placeat-tempore-sed-quos-sed-ipsam',NULL,'Quos sed cum at assumenda magni autem et. Deleniti sit asperiores officiis fuga quae sunt aspernatur nulla. Laboriosam recusandae corrupti nihil animi qui laboriosam.','<p>Dolor velit quod hic eaque qui. Quae necessitatibus in dolores numquam vero. Neque nesciunt molestiae ut iusto esse quo hic. Ut rerum at cupiditate dolorem quas odit.</p><p>Autem voluptates praesentium debitis omnis. Et rem voluptates maxime.</p><p>Qui aut quae et veritatis. Omnis esse quia cum rerum et praesentium labore doloribus. Sunt iusto est sed quis. Eum sed accusamus consectetur molestiae.</p><p>Est ex dolor eius ratione repellendus qui. Ea eos fugit aperiam provident animi. Tempora eveniet veniam reiciendis nobis autem deserunt. Et qui autem vel iure officiis.</p><p>Ut molestias maxime ducimus soluta dolorem et. In cum quam aut nesciunt fugit officia quae. Deleniti id quaerat maxime et nesciunt.</p><p>Nemo nihil totam ipsum quasi dolor nihil. Numquam dolor non ipsam dolor iusto voluptas. Occaecati dolorem voluptatem dolor veniam ab vero animi.</p><p>Fuga est ullam voluptatum adipisci quisquam odio laboriosam delectus. Ut recusandae voluptates facilis officiis dolore ut nulla. Tempore eaque rem asperiores aut repudiandae.</p><p>Itaque natus saepe perferendis autem et laborum assumenda. Distinctio deleniti et molestias aperiam et. Aut qui ut nobis voluptatem exercitationem.</p><p>Eaque voluptatum consequatur harum et. Repudiandae maxime voluptas ut placeat. Placeat molestiae culpa deleniti cumque perferendis.</p>',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(7,2,1,'Et possimus aspernatur recusandae.','aliquam-tenetur-cumque-eveniet-qui-inventore',NULL,'Qui voluptas illum non quos. Deserunt tenetur est molestiae laboriosam. Quia aut qui qui quia animi omnis et nobis. Ipsam doloremque sequi sed nam.','<p>Enim totam culpa officiis harum fugiat consectetur laborum. Sint commodi quo impedit illo hic et eaque. Deserunt asperiores et quibusdam aut necessitatibus.</p><p>Dignissimos error perspiciatis consequatur sed voluptatem sit dolor. Dicta est eveniet expedita. Ea inventore eaque qui aut. Illum nihil sunt officiis et.</p><p>Asperiores rerum voluptatum dolore totam et rerum. Et alias quasi eum ut. Dignissimos ut nesciunt ullam dolor nisi ipsa. Ad aliquam unde atque repellat est quod tempore.</p><p>Unde numquam quos omnis. Et alias nam ad facilis explicabo illum voluptatem. Quisquam sed voluptatibus amet. Accusamus dolor maxime et qui. Fugiat sunt harum veritatis.</p><p>Et eligendi est qui harum dolorum aperiam. Accusantium ut molestiae dolores doloremque. Omnis dolore ut velit eligendi odit omnis.</p><p>Vero unde quisquam nisi cupiditate voluptates ducimus. Optio tempore sed error dolores dolorem beatae alias. Quia molestiae molestiae nam at autem.</p>',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(8,3,1,'Neque sint et eligendi recusandae mollitia omnis.','fugit-quo-dolore-eaque-quos-et-facilis',NULL,'Minima voluptatem eum quia ullam ducimus. Illo rem libero officia.','<p>Explicabo voluptatum sit nisi consequatur atque sit et. Veritatis illum assumenda enim cumque ut. Dignissimos voluptate nobis veritatis facilis. Temporibus illo ullam dolorem facilis quas.</p><p>Ex recusandae autem expedita aliquid. Ad voluptatem illo et in. Minima voluptatum sint velit ab fugit corporis rem. Laudantium libero blanditiis nesciunt consectetur.</p><p>Accusamus ut ab sed vel. Vel voluptatem velit ipsum a itaque similique. Dolor soluta explicabo aut unde totam. Odio accusantium est dolorem doloribus maxime.</p><p>Dolor ipsam eius velit voluptatem repudiandae aut non. Fugit ut veniam placeat cumque mollitia dolor. Eaque aliquid magni earum ipsa quaerat sunt id et.</p><p>Ut beatae officiis vel. Neque consequatur laboriosam non accusantium earum consequuntur. Modi quidem consequatur tempore qui fugit ut modi.</p><p>Commodi id est tempore culpa. Ipsum quo qui dolorem architecto id earum ex. Id unde dolore neque autem. Et pariatur molestiae minima rerum et voluptas sunt.</p>',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34'),
	(9,1,1,'Post Dengan Gambar','post-dengan-gambar','post-images/CsGYBR6TaVE9cQcmrY6hyZh8YlicoeI6mhO6EBMi.png','Jenis Mic','<div>Jenis Mic</div>',NULL,'2022-06-03 07:22:04','2022-06-03 07:22:04'),
	(10,3,1,'Post Dengan Gambar Kedua','post-dengan-gambar-kedua','post-images/iKO2wzigWS9DyzkGKBi7g4W0Z7g9xf546aGVH4Bd.jpg','Post Dengan Gambar Kedua','<div>Post Dengan Gambar Kedua</div>',NULL,'2022-06-03 07:27:21','2022-06-03 07:27:21'),
	(11,1,1,'Hanan','hanan',NULL,'aa','<div>aa</div>',NULL,'2022-06-03 15:12:23','2022-06-03 15:12:23'),
	(12,1,1,'Hallo','hallo','post-images/yq9Sz3Kfub6SRVwLXwHFODieFsbuikzerm2MIoMC.png','hallo','<div>hallo</div>',NULL,'2022-06-03 15:14:30','2022-06-03 15:23:57');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`)
VALUES
	(1,'Abu Abdirohman','abuabdirohman','abuabdirohman4@gmail.com',NULL,'$2y$10$z4ms.TkzIwnZ4q68YosvaOSVWBkbs7uOMCKPrv/a/VpZS95/u.Yz6',NULL,'2022-06-03 07:19:34','2022-06-03 07:19:34',1),
	(2,'Upik Thamrin S.Gz','utama.dalima','maryadi.bagas@example.org','2022-06-03 07:19:34','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BymH8ZsOlgmiH90X9HpwTkDvVaB3C29BmbSBf1mUbkJWZPNcHpLZmVs5FRb9','2022-06-03 07:19:34','2022-06-03 07:19:34',0),
	(3,'Zelda Mulyani','safina96','darman79@example.net','2022-06-03 07:19:34','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mgdCR8TGub','2022-06-03 07:19:34','2022-06-03 07:19:34',0);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
