# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.34)
# Database: fnd_15_laravel_8
# Generation Time: 2022-05-22 21:26:14 +0000
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
	(1,'Programming','programming','2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(2,'Web Design','web-design','2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(3,'Personal','personal','2022-04-25 07:37:02','2022-04-25 07:37:02');

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
	(6,'2022_04_12_104514_create_categories_table',1);

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

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`)
VALUES
	(1,1,2,'Mollitia sed saepe ullam explicabo itaque voluptatem reiciendis neque illo.','id-corrupti-eveniet-blanditiis-voluptatem-aut-ea-sint','Eius dolor et ea itaque. Magnam quaerat ex explicabo pariatur alias. Laboriosam beatae velit eos et totam quis qui. Ullam praesentium et dolores earum ratione.','<p>Debitis rerum illo dolore quia. Quam consequatur pariatur et consequatur voluptate aut. Cumque error consequatur non.</p><p>Pariatur vel voluptas odio aut. Sed quis accusantium nostrum dolorum assumenda corrupti. Magnam rerum ea quaerat culpa. Occaecati incidunt qui delectus.</p><p>Ea amet autem nesciunt non molestias. In sit dolorem nostrum et maxime suscipit. Eum eligendi ut ut rerum et iure assumenda. Dicta distinctio rerum fugiat quibusdam omnis dolorem minus possimus.</p><p>Similique voluptas excepturi magnam commodi. Iusto aliquid ea rem harum dolores tempore pariatur suscipit. Alias porro aut suscipit praesentium sit pariatur eum ut.</p><p>Veniam asperiores deserunt quas autem voluptas rerum. Omnis vel omnis ipsum cum velit. Dolore consequuntur est accusamus dicta veniam nulla iure.</p><p>Qui non iure est dolore repudiandae. Quas ut mollitia aut soluta non odio. Molestias nisi cumque laborum atque sunt laboriosam.</p><p>Sunt asperiores et porro sit sit. Qui alias alias qui et. Possimus facere consequatur velit. Non quo nemo praesentium id ut.</p><p>Aut aut tempore nobis id qui earum. Quae aperiam eum et autem. Omnis omnis non eligendi enim delectus. Quaerat est sunt velit eos consequatur consequuntur.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(2,1,2,'Perferendis optio corrupti rerum voluptates.','et-officiis-dicta-fuga-recusandae','Ullam et qui porro ut vitae quia. Atque sunt odit alias dolores. Autem quaerat qui qui cumque optio.','<p>Ad eligendi voluptas aut veritatis quaerat. Error consequatur architecto non ipsam quidem. Voluptatum voluptates distinctio eveniet sit et eum. Autem aut neque delectus illum soluta.</p><p>Explicabo unde quibusdam a. Quis nihil id non tempore molestias nemo et impedit. Repudiandae culpa voluptatem nemo vitae libero explicabo. Delectus cum et voluptas totam ea provident hic.</p><p>Ducimus aliquid enim ipsam assumenda animi rerum et nihil. Veniam omnis aut incidunt accusantium veniam reprehenderit voluptatibus accusantium. Itaque officia dolorem cum ut rerum veritatis. Consequatur est cumque est aliquid voluptas ducimus atque.</p><p>Nemo adipisci cum officiis quis voluptas maxime eligendi et. Placeat quam deleniti voluptatem earum praesentium. Est excepturi sapiente nesciunt optio delectus officiis. Ipsum voluptatum similique et voluptates accusantium quas.</p><p>Eaque quis nisi ea. Voluptatem sit inventore quo esse quaerat eos. Alias incidunt ut labore beatae. Quae doloribus necessitatibus voluptatem non.</p><p>Et magnam dolores iste quas enim qui. Dolores expedita perferendis ut quis hic. Et error magnam accusantium porro laudantium. Culpa unde dolorem sunt est.</p><p>Ipsam quam et ut sequi eaque reiciendis fugit quia. Sit qui amet aut rerum ut sint. Non possimus possimus est quidem modi.</p><p>Non ab quia recusandae ea asperiores. Sit aliquam omnis debitis beatae est amet. Voluptas cumque voluptates repudiandae ut.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(3,3,2,'Voluptas aut ea in.','et-nisi-quis-ut-et-neque-provident-dolores-ut','Libero eos quo dolorem harum labore eum sed quod. Corrupti et quos est eos et blanditiis. Id facilis non voluptatum quam velit est.','<p>Sequi blanditiis omnis ducimus. Veritatis excepturi velit harum dolorem nam necessitatibus. Libero consequuntur dolor error nobis natus maiores. Pariatur asperiores in fugiat quo.</p><p>Minus sunt alias voluptate sed in voluptatem expedita placeat. Et dicta exercitationem laboriosam vero. Nulla expedita ut tempora distinctio quas tempore.</p><p>Nihil corporis praesentium eos et voluptatem ipsum. Consequatur omnis quia vero sunt nam. Ipsum aut recusandae est et non odio. Eos maxime tempora provident velit sit et.</p><p>Qui et ducimus et tempore voluptas assumenda reprehenderit. Culpa minus recusandae et temporibus reprehenderit. Facere quia et voluptatem sit vel. Maxime quia a doloremque ut non quas. Tenetur ratione natus omnis recusandae at consequatur voluptas excepturi.</p><p>Provident at corporis eum consectetur. Sed hic eveniet rerum voluptatum non reiciendis quibusdam enim. Consequatur ipsa blanditiis ullam quasi hic voluptas.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(4,1,3,'Consequatur pariatur.','voluptatem-doloribus-ut-vel-aut-aut-officia-a','Ipsum non id aut. Et voluptas et sint dolores. Et in soluta non. Vel sint aut sunt doloribus aliquam ad quis.','<p>Labore eos veritatis amet exercitationem pariatur ut. Rem quisquam illo ea tempora cupiditate ullam. Excepturi in et ducimus doloremque iste quaerat autem blanditiis.</p><p>Voluptas facilis qui fugit voluptates voluptas perferendis. Distinctio quos hic molestiae libero. Et ducimus sit architecto. Qui expedita voluptatem repellat suscipit quis.</p><p>Ut aut quas odit magnam. Autem vitae illo eum aut. Fugit eum temporibus dolores nostrum rerum voluptatibus. Est a beatae mollitia expedita non.</p><p>Ratione harum deleniti maxime laudantium aperiam ratione sequi quia. Qui omnis dolorum earum veniam voluptas hic. Ut dolorem quis et molestiae quas dolore facere. Consequatur nam libero laborum praesentium minus repudiandae.</p><p>Non enim autem cupiditate et rem velit. Qui sint amet dolorem voluptas. Quo illo sed nisi non dolor quia doloremque ut. Qui consequatur dignissimos occaecati optio ea et sunt.</p><p>Est repudiandae quo necessitatibus ducimus. Rem dignissimos officia delectus et odit dolor. Ut aut et non. Animi vel veniam dolor recusandae est et corporis dicta.</p><p>Qui aut et autem aut quaerat qui iste. Sit illo qui similique expedita sunt eveniet. Rerum suscipit repudiandae qui illo. Quam molestiae incidunt necessitatibus quae natus.</p><p>Adipisci quo id et. Optio laborum aperiam vel rerum reprehenderit. Et pariatur aspernatur nostrum iure architecto incidunt. Perspiciatis facilis doloremque consequatur non impedit.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(5,2,3,'Sit quod dolor est.','iusto-fugiat-explicabo-eligendi-sunt-impedit-placeat-consequuntur-eos','Error voluptatibus ratione rerum porro nesciunt esse. Ut quo et et eligendi iure. Fugit facere ex error fugiat dolores ex animi sit.','<p>Blanditiis provident quidem quo nobis. Quibusdam asperiores sunt id hic quidem nihil sed. Placeat vel perferendis est atque asperiores quibusdam aut. Sed consectetur velit quos sit sint.</p><p>Mollitia id aut ut repellendus dolorem. Perferendis architecto repellat voluptatem omnis aut consequatur.</p><p>Et nam nihil omnis ullam consequatur sequi. Laudantium sunt ut debitis minus sed cumque. Recusandae modi non esse vitae saepe.</p><p>Suscipit repudiandae rerum ut perspiciatis. Nihil quaerat quod officiis. Cumque qui rerum autem molestiae quam a in. Est facilis hic reiciendis voluptas dolor. Eos consequuntur blanditiis sed beatae nulla vel dignissimos.</p><p>Et molestiae eius repellat fugit voluptas illo. Accusamus quo molestias et reiciendis consequuntur est. Sed earum repellat rem et qui aut. Quisquam earum minus aut a temporibus atque expedita.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(7,3,2,'Debitis qui ipsa et laudantium qui facilis.','eum-sit-nisi-ipsum-saepe-id-ratione','Ipsam quidem quis quo id labore. Laudantium enim dolore quia quae facilis explicabo non. Totam recusandae neque voluptatem est. Tenetur quae aut voluptas cupiditate totam perferendis.','<p>Assumenda id nihil quasi occaecati impedit ullam aliquam. Minus dolores ut officia est molestiae. Earum accusamus qui nam esse.</p><p>Id modi deserunt at necessitatibus quia saepe qui. Est incidunt ab assumenda et.</p><p>Ducimus veritatis sint officia enim at quod reiciendis. Voluptatibus expedita modi amet vero neque a ut aut. Minus natus in asperiores inventore recusandae magnam eum. Non et consequuntur incidunt quo ab dolore sint.</p><p>Maiores rem laudantium molestias rerum eius. Atque porro fuga quod at delectus alias. Asperiores repudiandae sit illum alias repudiandae repellat.</p><p>Cumque laudantium voluptatem hic aut. Modi qui maiores at totam. Molestiae aperiam dolorem unde vero nisi.</p><p>Id doloremque qui sint et et architecto dolorum odio. Ut et eum saepe earum sit. Recusandae laboriosam ea quia.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(8,1,2,'Rem quia nihil voluptate ratione quas.','asperiores-eum-recusandae-odit-voluptates-voluptatem-non','Quia vitae excepturi tempore odit labore impedit et. Nisi nemo laboriosam non sed molestias beatae. Et voluptas nesciunt soluta nulla. Necessitatibus veniam similique animi explicabo deserunt dolores.','<p>Atque nobis aut sed sit et alias vel. Est quia in ullam incidunt. Consequuntur dignissimos voluptas dicta cumque explicabo. Vitae a aspernatur placeat qui aperiam voluptas quo.</p><p>Velit facere porro exercitationem qui in quo voluptatem ut. Impedit suscipit cum amet voluptatem consequatur. Doloremque ut ducimus iusto.</p><p>Voluptatem perferendis consectetur impedit eius corporis. Doloremque voluptate eum consequuntur molestiae cupiditate maxime. Ratione sit laborum ratione quia eius. Quidem aut id quia possimus autem.</p><p>Aut rem iure aut sed voluptatem soluta omnis. Labore porro ea sint cumque omnis. Exercitationem ut tempore voluptatem hic asperiores repellendus.</p><p>Consequatur mollitia nisi est ducimus quisquam. Qui ducimus explicabo enim consequatur facere accusamus. Quod omnis explicabo aliquid assumenda. Nesciunt totam qui aut magni.</p><p>Molestiae et sit reiciendis eos nihil consequuntur. Tempore facere dolores a ab a commodi consectetur. Cum corrupti sit culpa voluptatum quam. Aperiam aut aut fuga autem sapiente qui dolor.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(9,3,1,'Dolor autem beatae.','autem-maiores-tempora-eos-non-sed-delectus','Ea reiciendis sint dolorum quia. Quod quae eos praesentium explicabo. Hic quos sequi commodi ullam.','<p>Saepe quia dolores cum illo enim. Ut dolorem enim ut quam tempore. Perspiciatis quia et eos inventore harum quam.</p><p>Sed dolorum eos incidunt velit. Totam magni eveniet molestias possimus. Enim atque voluptas saepe et rerum ut ut. Dolorem dolorem temporibus saepe eos quisquam.</p><p>Reprehenderit autem iure amet minus earum fugit et. Quasi repudiandae natus in sapiente vero qui expedita qui. Incidunt sint ullam sunt perspiciatis dolore modi a. Molestiae deserunt ipsam ea animi sit dolorem omnis. Perspiciatis non nobis suscipit rerum aut.</p><p>Minima qui et et dolores molestiae. Quis recusandae et quasi cupiditate natus aliquid. Voluptates cupiditate occaecati qui numquam culpa rerum animi.</p><p>Illum fuga tenetur nisi qui facere aut. Et non rerum velit dolorum nam cupiditate. Voluptas repudiandae molestias amet rerum. Atque velit assumenda officia omnis autem cum.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(10,1,1,'Quo ipsum quod qui impedit.','praesentium-assumenda-atque-vel-sint-aperiam','Nesciunt vero et quod sit odio ipsa et. Maiores totam error laudantium sit laboriosam. Error tempore porro rerum. Voluptate fugit nemo expedita rerum.','<p>Sit sint sit et quasi blanditiis et. Fuga officiis saepe sunt id consequatur iste. Quibusdam neque quia magnam magnam dignissimos saepe nobis dignissimos.</p><p>Ad quisquam mollitia voluptas harum. Ab omnis possimus eligendi. Voluptatem harum ullam aut expedita. Eaque aut quos consequatur reprehenderit totam voluptatem. Alias nam enim saepe quos vel harum sapiente.</p><p>Rerum tempore molestiae et officia dignissimos perferendis. Vitae perspiciatis est doloremque pariatur. Iusto asperiores praesentium maxime numquam. Voluptatem explicabo qui praesentium animi. Ratione blanditiis explicabo doloremque debitis.</p><p>Doloribus quod ea vero expedita quisquam non soluta. Dolorem ab molestias sit ut accusantium non ducimus fugiat. Sint voluptas quia optio.</p><p>Quisquam quidem quam quae ducimus. Qui nam ipsa quisquam eius dicta rerum. Minima nisi aperiam voluptas velit ea et neque. Corrupti quae iusto et placeat beatae qui consequatur. A similique quis labore voluptatem.</p><p>Omnis tenetur itaque quod rerum numquam dolorem soluta et. Vel fugit accusamus quia id totam quo dolores adipisci. Aliquid dolores et id reprehenderit aut facilis aliquam. Qui sint facere ullam.</p><p>Dicta distinctio laborum ut. Quae consequatur ut itaque suscipit dolor mollitia dolor voluptas. Nesciunt nesciunt laborum ut voluptas occaecati unde.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(11,1,2,'Est ea ipsum.','ullam-et-animi-ab-odit-eum-id-eligendi','Magni animi veniam commodi provident distinctio recusandae eius. Enim omnis ab iure expedita aspernatur quis. Earum similique similique illum laborum assumenda ut.','<p>Ut ratione et sed. Incidunt eum aut dolores sunt sit. Dolor ratione animi eaque aut rem. Et iste non beatae rerum maxime voluptatem porro et. Ut delectus fugit aut voluptas id quia alias ut.</p><p>Necessitatibus aut cumque et velit. Optio qui exercitationem mollitia. Sunt sit ex pariatur nihil amet numquam. In excepturi voluptatibus doloremque sapiente soluta.</p><p>Labore molestiae est nihil quasi libero nesciunt rerum. Facere omnis ratione quis laborum. Omnis delectus voluptas delectus consequatur amet. Eveniet nemo amet qui et voluptas.</p><p>Animi omnis quas odio deserunt. Tempore sed dolor fugiat quisquam alias et. Consequatur velit nam reiciendis id. Et temporibus corporis laboriosam qui ea saepe non molestiae.</p><p>Omnis assumenda voluptas dolorem quia. Dolorum aspernatur totam libero ipsa. Nisi error ipsam sint.</p><p>Est perspiciatis sint qui recusandae excepturi quos. Impedit fugit quia dolorem repellat natus.</p><p>Corporis quibusdam voluptatibus iste voluptatem. Nesciunt reprehenderit laboriosam omnis voluptatem voluptate asperiores eaque. Praesentium minus adipisci in sed.</p><p>Iusto beatae architecto iure consectetur. Enim sunt sit velit consequatur est et. Enim amet aliquam et dicta eaque molestiae voluptatem quasi. Dolor asperiores doloremque consectetur repellat tempore deleniti.</p><p>Mollitia similique soluta voluptatem nulla. Eos saepe minima adipisci totam dolorem. Itaque voluptas aut sit delectus ab.</p><p>Voluptatum quaerat nobis quasi ipsa quae dignissimos sed dolor. Aut odit veritatis ex vel voluptas. Accusantium dolore similique ut illo est consequatur. Enim non magnam velit reiciendis non quis. Blanditiis aut id rerum.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(12,3,2,'Vel modi vel praesentium ut qui.','laborum-aliquid-voluptatum-libero-ut','Consequuntur assumenda iusto aut officiis fugit illo doloribus. Fugit exercitationem molestiae sunt. Laboriosam eligendi ducimus consequatur quos sed. Architecto quos esse tempore ut at commodi.','<p>Accusamus non debitis explicabo nam. Veritatis quia accusamus aut voluptatem ut dicta quidem expedita. Dolore molestias qui repellendus deleniti recusandae sit et. Distinctio excepturi pariatur adipisci fuga.</p><p>Eum qui nostrum sint delectus. Nisi voluptatem dicta et odio omnis. Tempora aliquam nisi eaque. Debitis aliquam qui vel ut adipisci voluptatem doloribus. Dolorum blanditiis in non quod aut ab dolores.</p><p>Aperiam saepe dolorem tempore quis. Ipsum voluptas molestias vel quia tenetur rerum. Rerum nemo exercitationem ut in necessitatibus delectus cupiditate. Et aut reprehenderit veniam saepe autem.</p><p>Mollitia repudiandae alias est. Consequatur non alias quis facilis reiciendis molestias. Quod aspernatur dolorem eos omnis. At consequatur molestiae ea qui similique omnis sed. Quo quis itaque doloribus odio excepturi inventore.</p><p>Fugiat voluptas cum sed et sed. Ullam reprehenderit doloribus non officia maiores expedita id ipsum.</p><p>Consectetur ea deserunt placeat voluptatibus et est rerum. Reprehenderit vel debitis quidem ducimus amet neque earum. Nam magni voluptatem sint rem eligendi rem.</p><p>Molestias reprehenderit illum officiis ducimus consectetur. Minima optio cupiditate provident expedita in ut. Consequatur quo quam similique quis dicta et.</p><p>Et ut laudantium voluptas voluptatem enim veniam. Qui odio cumque hic inventore. Incidunt doloribus asperiores voluptate voluptate.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(13,2,1,'Cupiditate non tenetur cupiditate fuga.','quaerat-explicabo-dolor-cum-tempore-et-est','Aut vitae nobis et quas et voluptatem. Debitis numquam illo mollitia illum quas dignissimos fugit atque. Vel architecto sed sit sit dolores distinctio repudiandae. Dolorem nostrum aut quia.','<p>Adipisci labore quo quae a. Accusantium exercitationem minus vel quo hic iusto dolores totam. Architecto aut itaque nihil distinctio totam. Deleniti quisquam odit sit facilis temporibus earum dolores.</p><p>Reprehenderit accusantium corporis earum sapiente occaecati distinctio. Deleniti eum omnis ea quo quasi. Ut ducimus fugit perspiciatis fuga asperiores ea necessitatibus quaerat. Sequi inventore iste et nemo et optio. Voluptatibus aliquam alias dignissimos vitae dolores nostrum ad.</p><p>Aliquid cum distinctio dolorem placeat. Quasi a ut sed officiis. Eveniet minus incidunt et eum nulla.</p><p>Placeat sint modi ea praesentium error dolores. Dolorem natus facilis qui cumque. Debitis ut molestiae voluptatibus ipsa. Laboriosam provident voluptatem quia omnis enim maiores at.</p><p>Architecto ut explicabo amet beatae autem quibusdam. Consequatur et amet aliquid ad illum amet quia. Possimus repudiandae corporis libero sed eos suscipit. Explicabo exercitationem animi delectus quo sapiente cupiditate ad.</p><p>Earum amet maiores aperiam quos corporis perspiciatis. Velit possimus nemo sunt quaerat sint minima ea. Molestiae voluptatem et amet quia ullam iusto.</p><p>Aut at beatae qui et sed. Aut omnis minus iusto eum id libero. Est ut expedita sit soluta et atque eum.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(14,2,2,'Quia harum inventore sapiente.','fugit-aliquam-aperiam-et-repellendus-et-quisquam','Dignissimos omnis nesciunt cumque est incidunt. Enim quo consequatur non enim porro exercitationem dolore. Qui iste quaerat rerum ad velit aperiam hic ex.','<p>Exercitationem totam vel porro quis voluptatem. Iusto autem nobis vel nesciunt est quisquam recusandae.</p><p>Dolores molestias nobis laborum non. Dignissimos soluta nam eveniet odit. Esse dolore quo ipsum quo adipisci mollitia. Odit et aut est perferendis quas amet nobis. Illum voluptate est et maxime.</p><p>Vel velit in in perspiciatis quis atque optio repellendus. Nulla molestias numquam qui. Optio repellat quod dolorum sed dolore reiciendis.</p><p>Enim nesciunt animi quibusdam reprehenderit temporibus magnam quam. Commodi quibusdam non ducimus voluptatem dolores dicta quibusdam. Inventore sequi qui perferendis qui illo id.</p><p>Tenetur possimus consequatur laboriosam. Ut aspernatur et ipsa explicabo officiis eos dignissimos. Ab est vero molestiae iure praesentium et.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(15,2,1,'Aut eligendi.','doloribus-illo-aspernatur-sed-pariatur-quia','Quibusdam laboriosam itaque qui eius est. A cupiditate sunt modi qui quia consequuntur voluptas. Corrupti esse voluptate quasi non voluptatem qui nesciunt porro.','<p>Ut veritatis aspernatur soluta maxime aut accusamus. Voluptas nisi eligendi minima et laudantium at sed. Sint ullam quod alias rerum. Sed rerum optio id atque sapiente sit quos.</p><p>Quasi sed inventore sed quia a ut. Sit voluptatum nihil eum voluptas qui. Impedit atque maxime inventore hic. A ullam eos dolorem earum.</p><p>A facilis dolor fugiat neque. Atque facilis et molestiae fugit id id eveniet accusantium. Odio perspiciatis ratione culpa magnam eveniet quo deserunt.</p><p>Cum voluptatibus voluptatum voluptatibus est id suscipit. Soluta vitae voluptatem aut aspernatur sed. Quasi aspernatur delectus corporis maiores nulla eaque.</p><p>Voluptates adipisci minima dolorem numquam dolores. Aut et ab enim optio vel consequatur. Qui culpa suscipit nobis voluptate et. Dolorum quia quis alias quaerat repudiandae nam temporibus. Incidunt enim praesentium aspernatur qui et inventore ut.</p><p>Iure ipsa officia magni quasi cumque cupiditate voluptatem. Veniam laboriosam velit sunt reiciendis consequatur quasi qui. Eum facere earum repellendus qui illum aut qui.</p><p>Qui et aperiam qui. Ratione nesciunt quia est repudiandae temporibus nemo repellendus in. Ad ipsum minus distinctio est et. Nihil ducimus ut occaecati et.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(16,3,1,'Voluptatem omnis quia.','labore-dolorem-eos-commodi-ut-magnam-fugit-ex','Ipsam ullam minus perferendis numquam. Sapiente consequatur quo nostrum sit ut perspiciatis suscipit dolorem. Et aspernatur quaerat ex nobis cupiditate laboriosam voluptatem.','<p>Soluta nihil sit minima aspernatur aut. Omnis exercitationem assumenda voluptatum et velit. Totam ut eum eligendi.</p><p>Veritatis aliquid optio eos neque facilis aut occaecati. Eum totam in illum voluptatem labore sint quia. In doloribus a eaque eos doloremque alias quia. Harum ullam eligendi qui. Harum veritatis quidem architecto minima ea.</p><p>Earum vero eos placeat natus voluptatem. Optio unde non ipsa unde. Aut aut aspernatur qui quasi repudiandae consequuntur nulla. Aut voluptas rem minima ut porro perferendis accusamus.</p><p>Voluptates nisi velit eum nostrum. Dolor possimus dicta occaecati quia voluptatem sit qui. Modi sint aspernatur et aut. Et autem alias nam ut modi.</p><p>Voluptatem ut voluptatem culpa suscipit ipsam ratione nesciunt. Sapiente rerum odio nihil ducimus aut voluptatem id. Vel aut expedita assumenda voluptatem. Ipsa aut error debitis optio aperiam quaerat.</p><p>Optio ea magnam reiciendis officiis laudantium quod. Sapiente possimus eos esse hic excepturi. Delectus eos possimus earum qui dolorem. Fugit a quis at voluptatem quisquam.</p><p>Expedita quidem voluptatum ut cum voluptatem beatae. Impedit placeat ea veritatis et aliquam eum. Voluptatem ipsum et et sint sed ut rerum blanditiis.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(17,3,2,'Voluptate asperiores autem pariatur qui voluptatem sed iusto voluptas voluptatibus.','consequuntur-odio-iste-earum-voluptatum-eos-laboriosam','Odit est dolore tempora aut dolores ut. Itaque quis eum facilis odit dolorem nobis. Reiciendis molestiae porro commodi.','<p>Voluptatem modi cupiditate harum numquam commodi aut excepturi. Aut voluptates veritatis dolores incidunt fuga suscipit harum. Praesentium suscipit natus explicabo.</p><p>Voluptatem rerum distinctio sed. Qui consequatur voluptatibus neque distinctio occaecati. Dolor quaerat delectus architecto nostrum eligendi velit minus. Dolorem impedit voluptates illo delectus. Voluptatem dicta consequuntur molestiae harum sed.</p><p>Explicabo quae est expedita sint dolor odio. Cupiditate iure ipsa consequatur. Vero aliquam et est eveniet modi odit.</p><p>Aperiam sapiente ut repudiandae distinctio. Provident nostrum error laudantium earum. Dolorum ducimus debitis ab unde sit. Tempore facere corporis qui vel. Officiis ut quo temporibus dolorum aut perspiciatis nihil.</p><p>Rerum aliquam voluptatibus molestias dolor quasi dolores maiores. Qui rem et rerum dolor molestias veniam. Dolore impedit cupiditate assumenda dolores ut nihil. Non animi saepe incidunt quidem et.</p><p>Fuga excepturi occaecati velit explicabo ab. Tempora sint quam excepturi dicta iste quia id. Molestiae neque laborum assumenda quibusdam sed cupiditate.</p><p>Ut molestiae sed qui. Aut illum eveniet occaecati quam sed. Velit corporis animi quaerat voluptates ea ut. Aut magnam corrupti ut temporibus aut. Nesciunt ab veritatis ut itaque fugit aut.</p><p>Quo sed sapiente inventore quod. Animi molestiae odit quasi dolorem sint quia. Ipsum sit incidunt laborum possimus et. Molestiae amet corporis quibusdam at aliquid et.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(18,1,1,'Nostrum fugiat a.','laudantium-magnam-tempora-reprehenderit-excepturi-dignissimos-iusto-hic-alias','Doloremque qui molestias et occaecati unde facilis saepe. Molestiae occaecati illum doloribus qui. Sed vero nesciunt iste velit magnam aspernatur minus. Qui ad vitae sunt nulla sunt itaque ut.','<p>Tenetur facilis dolores aut rerum voluptas itaque. Eum at possimus aliquid perferendis nihil quaerat quia quos. Voluptatum dignissimos ipsam saepe eos provident.</p><p>Ut non amet est officiis eos ut. Quia dolor nostrum ut doloremque exercitationem.</p><p>Est adipisci quia nesciunt sint harum labore. Accusantium et maiores est est. Magni quam possimus sapiente.</p><p>Quia officia laborum aliquid qui rerum. Quisquam aliquam culpa illum nihil atque dicta. Soluta recusandae expedita nihil quasi et. Commodi rerum illo odit et. Incidunt id et soluta distinctio quis similique quos amet.</p><p>Voluptatibus ut facere quia velit non quidem magni omnis. Dolor ab deleniti sunt iure. Sed laudantium sit quas ut. Ipsum rerum eos error harum.</p><p>Repudiandae molestiae ipsa accusantium suscipit corporis. Ex id molestiae quo quisquam quos labore. Ex qui itaque est aut praesentium.</p><p>Ut tempora earum officiis voluptate fuga pariatur. Quis quia aut laborum velit qui aperiam et. Tempore itaque et voluptatem est sapiente. Repudiandae laboriosam quod aut nihil quas asperiores voluptas.</p><p>Quia perferendis cumque qui blanditiis iure dicta eum. Sunt placeat modi explicabo et est ducimus quasi rerum. Eligendi qui dolores vero molestiae vel voluptas. Non ut eum corrupti quia maxime cumque et aspernatur.</p><p>Officia sed quasi dolorem atque eveniet illum. Quod et tempora delectus. Saepe doloremque sit illum provident molestiae ea. Voluptas sed dolor ad occaecati minima officiis dicta.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(19,2,1,'Maiores necessitatibus dolorum.','sint-magni-optio-praesentium-accusantium-modi-libero-mollitia','Aliquam autem suscipit eos sint et qui omnis. Voluptatem exercitationem reiciendis quo recusandae ab.','<p>Enim aut temporibus quia dolorem adipisci enim. Reiciendis illum nam ducimus vel ut quisquam commodi.</p><p>Voluptatem earum sint deserunt veniam dolor. Perferendis et excepturi quam maiores perspiciatis impedit occaecati. Tempore est debitis quo soluta. Esse ea consequatur modi cupiditate autem magni vel.</p><p>Accusantium soluta quia laborum amet ex officia ut. Magni dolorem possimus saepe iusto explicabo odio sit. Voluptates qui dolorum et voluptas. Ipsam vel velit explicabo voluptatem exercitationem voluptas perferendis.</p><p>Rerum quia quos officia facere numquam rem molestias. Facilis doloremque magni accusantium cum inventore corporis soluta. Tempore accusantium voluptatum odit et reiciendis ducimus ab voluptas. Quos reprehenderit voluptas quas tempora. Est nesciunt aut architecto earum sit suscipit incidunt.</p><p>Et sint ut rerum aut cupiditate quas saepe. Aut aperiam et fugiat qui. Et nemo consequuntur facere. Eum doloremque voluptates corporis recusandae.</p><p>Suscipit id dignissimos illo distinctio beatae rem. Labore dolor aperiam consequatur. Et consequatur sequi rerum et nam. Natus labore qui qui distinctio sapiente ut.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(20,3,1,'Consequuntur eos.','adipisci-molestias-vitae-dolor-voluptatem-autem-eius-sint','Necessitatibus mollitia asperiores nostrum et modi aut et. Magnam sint vel doloribus impedit et. In eligendi odit harum et et ipsum voluptatem. Nam error iure ut aliquid qui.','<p>Nihil molestias quia veritatis. Nobis et magnam accusantium omnis repudiandae qui eligendi neque. Debitis totam vitae et laborum hic hic.</p><p>Voluptatem recusandae ipsam sed quis incidunt adipisci sapiente. Est non tenetur pariatur rem iste. Qui beatae accusamus repellat dicta molestiae et et. Eveniet cum magni voluptates officia iste.</p><p>Tempore voluptatibus tempore delectus et. Quo et quas velit quae corrupti voluptatem. Accusamus laboriosam totam eos ut explicabo.</p><p>Quo quae libero nostrum sit soluta et rerum et. Nobis qui omnis ea inventore eligendi. Facere quo soluta asperiores ipsum id suscipit ab vero.</p><p>Et impedit at et ipsam tempora. Eos reprehenderit est earum atque hic voluptates rem. Iure repellat dicta atque molestiae.</p><p>Ipsam ducimus voluptatem enim eligendi. At est quas tenetur similique. Cum ut eos quibusdam animi et fugit mollitia impedit. Ullam non omnis porro quae aut et.</p><p>Enim fugit dicta blanditiis eum possimus fugit quas. Consequatur aut ex quidem. Illo est praesentium debitis animi tempora. Vitae quidem ullam repellendus sed et.</p><p>Aut corporis dolorum odio odit modi. Officia ut animi sit quam. Voluptatem exercitationem eligendi nihil sunt iure reprehenderit dolor magnam.</p><p>Nulla ipsa nisi tempora vero rerum labore eius. Sit ut dolor animi rerum. Dolorem molestias deserunt cupiditate quidem sed optio ratione.</p>',NULL,'2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(21,1,1,'riza','riza','<div>Riza Riza</div>','<div>Riza Riza</div>',NULL,'2022-04-26 18:16:15','2022-04-26 18:16:15'),
	(22,1,1,'fahri','fahri','<div>fahri denis selalu bersama</div>','<div>fahri denis selalu bersama</div>',NULL,'2022-04-26 18:25:01','2022-04-26 18:25:01'),
	(23,1,1,'hanan','hanan','<div>hanan hanan</div>','<div>hanan hanan</div>',NULL,'2022-04-26 18:28:38','2022-04-26 18:28:38'),
	(24,1,1,'asss','asssa','<div>asdssss</div>','<div>asdssss</div>',NULL,'2022-04-26 18:29:49','2022-04-26 18:29:49'),
	(25,1,1,'irsayd','irsayd','<div>irsyad</div>','<div>irsyad</div>',NULL,'2022-04-26 18:30:23','2022-04-26 18:30:23'),
	(26,1,1,'aaaaa','aaaaa','<div>aaaaa</div>','<div>aaaaa</div>',NULL,'2022-04-26 18:31:10','2022-04-26 18:31:10'),
	(28,3,1,'ini postingan baru','ini-postingan-baru','<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere nostrum, et itaque deserunt mo...','<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere nostrum, et itaque deserunt molestias voluptates natus vitae quibusdam dolor iure! Architecto asperiores velit, beatae nobis earum voluptate ducimus assumenda quo dicta quas sint quod, eveniet esse incidunt necessitatibus impedit inventore, aspernatur consequuntur cupiditate. Rem, accusantium doloremque voluptatum consequatur dolor, repellat deleniti blanditiis incidunt nulla quos ut omnis iste exercitationem? Repellat dolorem placeat voluptatem libero recusandae omnis obcaecati numquam ratione delectus! Quos facere possimus quas ab deleniti quidem, enim fuga debitis. Corporis reprehenderit deleniti architecto impedit velit alias, illum, voluptatum corrupti quibusdam magnam adipisci culpa sint quas quasi facilis fuga tempore quo, veniam ex nobis sapiente. Ad quidem unde natus eaque quis, quia veniam nemo accusantium repudiandae recusandae quibusdam sint vel corporis ea amet nobis ab voluptatem expedita libero! Iusto dolorem itaque, aut labore maiores mollitia consequuntur excepturi modi nesciunt, aspernatur minus cumque. Pariatur quod tenetur reiciendis accusamus! Ipsam reiciendis unde fugit tempora fuga est eaque accusamus blanditiis. Voluptates adipisci ipsa nulla inventore molestias quis enim voluptas corrupti sequi pariatur magnam consequuntur hic eveniet possimus officia earum minus non unde, cum error deleniti exercitationem nihil quos. Porro voluptatibus quos delectus, eos, eveniet dolore nesciunt rem aliquam officia error eaque vel corrupti libero repudiandae nisi autem officiis? Magnam quo ipsum ea beatae soluta corporis iure quaerat blanditiis! Blanditiis reiciendis hic provident, tempora aliquid rerum molestiae, ipsam labore voluptate aut voluptatibus numquam obcaecati magnam reprehenderit consequuntur inventore accusantium, suscipit sed perspiciatis harum. Molestiae quos voluptates repellendus reprehenderit omnis id minima eos unde? Numquam quis blanditiis id quam ab. Accusamus fugit aperiam rerum voluptatum ullam expedita ab cupiditate voluptatibus nesciunt, exercitationem, repudiandae nam delectus non facilis, quasi quia minus ducimus praesentium consequuntur provident quis ut adipisci corrupti? Enim necessitatibus reiciendis nobis fuga ratione vel blanditiis exercitationem repudiandae at, magni laudantium dolor voluptatibus quis tenetur.</div>',NULL,'2022-04-27 04:01:46','2022-04-27 04:01:46'),
	(29,1,1,'aldi','aldi','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere nostrum, et itaque deserunt molesti...','<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere nostrum, et itaque deserunt molestias voluptates natus vitae quibusdam dolor iure! Architecto asperiores velit, beatae nobis earum voluptate ducimus assumenda quo dicta quas sint quod, eveniet esse incidunt necessitatibus impedit inventore, aspernatur consequuntur cupiditate. Rem, accusantium doloremque voluptatum consequatur dolor, repellat deleniti blanditiis incidunt nulla quos ut omnis iste exercitationem? Repellat dolorem placeat voluptatem libero recusandae omnis obcaecati numquam ratione delectus! Quos facere possimus quas ab deleniti quidem, enim fuga debitis. Corporis reprehenderit deleniti architecto impedit velit alias, illum, voluptatum corrupti quibusdam magnam adipisci culpa sint quas quasi facilis fuga tempore quo, veniam ex nobis sapiente. Ad quidem unde natus eaque quis, quia veniam nemo accusantium repudiandae recusandae quibusdam sint vel corporis ea amet nobis ab voluptatem expedita libero! Iusto dolorem itaque, aut labore maiores mollitia consequuntur excepturi modi nesciunt, aspernatur minus cumque. Pariatur quod tenetur reiciendis accusamus! Ipsam reiciendis unde fugit tempora fuga est eaque accusamus blanditiis. Voluptates adipisci ipsa nulla inventore molestias quis enim voluptas corrupti sequi pariatur magnam consequuntur hic eveniet possimus officia earum minus non unde, cum error deleniti exercitationem nihil quos. Porro voluptatibus quos delectus, eos, eveniet dolore nesciunt rem aliquam officia error eaque vel corrupti libero repudiandae nisi autem officiis? Magnam quo ipsum ea beatae soluta corporis iure quaerat blanditiis! Blanditiis reiciendis hic provident, tempora aliquid rerum molestiae, ipsam labore voluptate aut voluptatibus numquam obcaecati magnam reprehenderit consequuntur inventore accusantium, suscipit sed perspiciatis harum. Molestiae quos voluptates repellendus reprehenderit omnis id minima eos unde? Numquam quis blanditiis id quam ab. Accusamus fugit aperiam rerum voluptatum ullam expedita ab cupiditate voluptatibus nesciunt, exercitationem, repudiandae nam delectus non facilis, quasi quia minus ducimus praesentium consequuntur provident quis ut adipisci corrupti? Enim necessitatibus reiciendis nobis fuga ratione vel blanditiis exercitationem repudiandae at, magni laudantium dolor voluptatibus quis tenetur.</div>',NULL,'2022-04-27 04:08:41','2022-04-27 04:08:41');

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Abu Abdirohman','abuabdirohman','abuabdirohman4@gmail.com','2022-04-25 07:37:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','IOrLHj1HF1QtlOCJKkGvoSNOpYIl889riiEL7TbCqI34QUPWvNijUnxPhIyY','2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(2,'Yani Ilsa Padmasari','baktiono05','laras.zulaika@gmail.com','2022-04-25 07:37:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jmyOKxpXhR','2022-04-25 07:37:02','2022-04-25 07:37:02'),
	(3,'Luthfi Salahudin','zulaikha58','napitupulu.laswi@gmail.com','2022-04-25 07:37:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KeMG5g676K','2022-04-25 07:37:02','2022-04-25 07:37:02');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
