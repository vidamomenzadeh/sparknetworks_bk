-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.11-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for sparknetworks
CREATE DATABASE IF NOT EXISTS `sparknetworks` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sparknetworks`;


-- Dumping structure for table sparknetworks.answer
CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sparknetworks.answer: ~18 rows (approximately)
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` (`id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
	(1, 1, 'hi', '2019-02-10 07:56:59', '2019-02-10 07:56:59'),
	(2, 1, 'other', '2019-02-10 08:44:08', '2019-02-10 08:44:08'),
	(3, 1, 'other', '2019-02-10 08:44:33', '2019-02-10 08:44:33'),
	(4, 7, 'divorced', '2019-02-10 08:46:50', '2019-02-10 08:46:50'),
	(5, 1, 'female', '2019-02-10 08:51:34', '2019-02-10 08:51:34'),
	(6, 9, 'I\'ve been know to dabble', '2019-02-10 08:51:57', '2019-02-10 08:51:57'),
	(7, 3, 'sometimes', '2019-02-10 08:52:27', '2019-02-10 08:52:27'),
	(8, 24, 'often', '2019-02-10 08:52:44', '2019-02-10 08:52:44'),
	(9, 8, 'once or twice a year', '2019-02-10 08:55:33', '2019-02-10 08:55:33'),
	(10, 24, 'often', '2019-02-10 08:56:46', '2019-02-10 08:56:46'),
	(11, 6, 'maybe', '2019-02-10 08:57:02', '2019-02-10 08:57:02'),
	(12, 12, 'separate flats in the same area', '2019-02-10 09:00:33', '2019-02-10 09:00:33'),
	(13, 5, 'maybe', '2019-02-10 09:01:59', '2019-02-10 09:01:59'),
	(14, 8, 'once or twice a year', '2019-02-10 09:02:34', '2019-02-10 09:02:34'),
	(15, 7, 'never_married', '2019-02-10 09:26:58', '2019-02-10 09:26:58'),
	(16, 8, 'never', '2019-02-10 09:26:58', '2019-02-10 09:26:58'),
	(17, 6, 'yes', '2019-02-10 10:16:24', '2019-02-10 10:16:24'),
	(18, 5, 'maybe', '2019-02-10 10:18:09', '2019-02-10 10:18:09');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;


-- Dumping structure for table sparknetworks.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sparknetworks.categories: ~4 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 'hard fact', '2019-02-08 16:07:55', '2019-02-08 16:07:55'),
	(2, 'lifestyle', '2019-02-08 16:08:02', '2019-02-08 16:08:02'),
	(3, 'introversion', '2019-02-08 16:08:09', '2019-02-08 16:08:09'),
	(4, 'passion', '2019-02-08 16:08:15', '2019-02-08 16:08:15');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for table sparknetworks.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sparknetworks.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_02_08_153534_create_categories_table', 1),
	(4, '2019_02_08_153555_create_questions_table', 1),
	(5, '2019_02_09_171849_answer', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table sparknetworks.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sparknetworks.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table sparknetworks.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_condition` tinyint(4) NOT NULL DEFAULT '0',
  `condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `range` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sparknetworks.questions: ~25 rows (approximately)
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `title`, `type`, `has_condition`, `condition`, `range`, `category_id`, `options`, `created_at`, `updated_at`) VALUES
	(1, 'What is your gender?', 'single_choice', 0, '', '', 1, 'a:3:{i:0;s:4:"male";i:1;s:6:"female";i:2;s:5:"other";}', '2019-02-08 16:34:12', '2019-02-08 16:34:12'),
	(2, 'How important is the gender of your partner?', 'single_choice', 0, '', '', 1, 'a:3:{i:0;s:13:"not important";i:1;s:9:"important";i:2;s:14:"very important";}', '2019-02-08 16:34:47', '2019-02-08 16:34:47'),
	(3, 'What age should your potential partner be?', 'number_range', 1, 'a:2:{s:11:"question_id";s:1:"2";s:5:"value";s:14:"very important";}', 'a:2:{s:4:"from";i:18;s:2:"to";i:140;}', 1, 'a:3:{i:0;s:13:"not important";i:1;s:9:"important";i:2;s:14:"very important";}', '2019-02-10 10:46:50', '2019-02-10 10:46:50'),
	(4, 'How should your potential partner respond to this question?', 'single_choice', 0, '', '', 2, 'a:3:{i:0;s:3:"yes";i:1;s:9:"sometimes";i:2;s:2:"no";}', '2019-02-08 16:36:28', '2019-02-08 16:36:28'),
	(5, 'Could you imagine having children with your potential partner?', 'single_choice', 0, '', '', 2, 'a:3:{i:0;s:3:"yes";i:1;s:5:"maybe";i:2;s:2:"no";}', '2019-02-08 16:36:47', '2019-02-08 16:36:47'),
	(6, 'How should your potential partner respond to this question?', 'single_choice', 0, '', '', 2, 'a:3:{i:0;s:3:"yes";i:1;s:5:"maybe";i:2;s:2:"no";}', '2019-02-08 16:36:57', '2019-02-08 16:36:57'),
	(7, 'What is your marital status?', 'single_choice', 0, '', '', 1, 'a:4:{i:0;s:13:"never_married";i:1;s:9:"separated";i:2;s:8:"divorced";i:3;s:7:"widowed";}', '2019-02-08 16:37:48', '2019-02-08 16:37:48'),
	(8, 'How often do your drink alcohol?', 'single_choice', 0, '', '', 1, 'a:5:{i:0;s:5:"never";i:1;s:20:"once or twice a year";i:2;s:21:"once or twice a month";i:3;s:20:"once or twice a week";i:4;s:50:"I\'m drinking my 3rd mojito now, and it\'s only 11am";}', '2019-02-08 16:38:31', '2019-02-08 16:38:31'),
	(9, 'How often do you smoke?', 'single_choice', 0, '', '', 1, 'a:3:{i:0;s:22:"I\'m completely opposed";i:1;s:24:"I\'ve been know to dabble";i:2;s:20:"drugs enrich my life";}', '2019-02-08 16:39:09', '2019-02-08 16:39:09'),
	(10, 'You are looking for...', 'single_choice', 0, '', '', 1, 'a:3:{i:0;s:10:"friendship";i:1;s:10:"a hot date";i:2;s:9:"an affair";}', '2019-02-08 16:39:41', '2019-02-08 16:39:41'),
	(11, 'Would you like to get married?', 'single_choice', 0, '', '', 1, 'a:4:{i:0;s:3:"yes";i:1;s:8:"probably";i:2;s:10:"eventually";i:3;s:2:"no";}', '2019-02-08 18:57:56', '2019-02-08 18:57:56'),
	(12, 'What is your ideal living arrangement?', 'single_choice', 0, '', '', 1, 'a:4:{i:0;s:41:"separate flat / room in the same building";i:1;s:31:"separate flats in the same area";i:2;s:20:"weekend-relationship";i:3;s:26:"long distance relationship";}', '2019-02-08 18:58:34', '2019-02-08 18:58:34'),
	(13, 'Do you enjoy spending time alone?', 'single_choice', 0, '', '', 3, 'a:5:{i:0;s:16:"most of the time";i:1;s:5:"often";i:2;s:9:"sometimes";i:3;s:6:"rarely";i:4;s:10:"not at all";}', '2019-02-08 18:59:39', '2019-02-08 18:59:39'),
	(14, 'When you\'re alone, do you get lonely quickly?', 'single_choice', 0, '', '', 3, 'a:5:{i:0;s:16:"most of the time";i:1;s:5:"often";i:2;s:9:"sometimes";i:3;s:6:"rarely";i:4;s:10:"not at all";}', '2019-02-08 18:59:58', '2019-02-08 18:59:58'),
	(15, 'Do you enjoy going on holiday by yourself?', 'single_choice', 0, '', '', 3, 'a:5:{i:0;s:16:"most of the time";i:1;s:5:"often";i:2;s:9:"sometimes";i:3;s:6:"rarely";i:4;s:10:"not at all";}', '2019-02-08 19:00:09', '2019-02-08 19:00:09'),
	(16, 'I consciously take "me time"', 'single_choice', 0, '', '', 3, 'a:5:{i:0;s:16:"most of the time";i:1;s:5:"often";i:2;s:9:"sometimes";i:3;s:6:"rarely";i:4;s:10:"not at all";}', '2019-02-08 19:00:26', '2019-02-08 19:00:26'),
	(17, 'Should one keep little secrets from one\'s partner?', 'single_choice', 0, '', '', 3, 'a:5:{i:0;s:16:"most of the time";i:1;s:5:"often";i:2;s:9:"sometimes";i:3;s:6:"rarely";i:4;s:10:"not at all";}', '2019-02-08 19:00:38', '2019-02-08 19:00:38'),
	(18, 'How often do you think about sex?', 'single_choice', 0, '', '', 4, 'a:5:{i:0;s:17:"a few times a day";i:1;s:5:"daily";i:2;s:18:"a few times a week";i:3;s:19:"a few times a month";i:4;s:6:"rarely";}', '2019-02-08 19:01:26', '2019-02-08 19:01:26'),
	(19, 'If you were alone on a desert island, how long would you last before pleasuring yourself?', 'single_choice', 0, '', '', 4, 'a:5:{i:0;s:15:"less than a day";i:1;s:7:"one day";i:2;s:8:"one week";i:3;s:9:"one month";i:4;s:32:"I\'d never do something like that";}', '2019-02-08 19:02:18', '2019-02-08 19:02:18'),
	(20, 'How often would you like to have sex with your prospective partner?', 'single_choice', 0, '', '', 4, 'a:6:{i:0;s:9:"every day";i:1;s:18:"a few times a week";i:2;s:11:"once a week";i:3;s:15:"every two weeks";i:4;s:12:"infrequently";i:5;s:6:"rarely";}', '2019-02-08 19:02:42', '2019-02-08 19:02:42'),
	(21, 'Do you like trying out new things in bed and experimenting?', 'single_choice', 0, '', '', 4, 'a:5:{i:0;s:16:"Yes, definitely!";i:1;s:23:"Now and then - why not?";i:2;s:17:"I\'d give it a try";i:3;s:12:"I don\'t know";i:4;s:14:"Absolutely not";}', '2019-02-08 19:03:00', '2019-02-08 19:03:00'),
	(22, 'I can enjoy sex without love', 'single_choice', 0, '', '', 4, 'a:5:{i:0;s:6:"always";i:1;s:5:"often";i:2;s:9:"sometimes";i:3;s:6:"rarely";i:4;s:5:"never";}', '2019-02-08 19:03:18', '2019-02-08 19:03:18'),
	(23, 'For me, a stable relationship is a prerequisite for really good sex', 'single_choice', 0, '', '', 4, 'a:5:{i:0;s:6:"always";i:1;s:5:"often";i:2;s:9:"sometimes";i:3;s:6:"rarely";i:4;s:5:"never";}', '2019-02-08 19:03:33', '2019-02-08 19:03:33'),
	(24, 'For me, a stable relationship is a prerequisite for really good sex', 'single_choice', 0, '', '', 4, 'a:5:{i:0;s:6:"always";i:1;s:5:"often";i:2;s:9:"sometimes";i:3;s:6:"rarely";i:4;s:5:"never";}', '2019-02-08 19:04:58', '2019-02-08 19:04:58'),
	(27, 'Do any children under the age of 18 live with you?', 'single_choice', 0, '', '', 1, 'a:3:{i:0;s:3:"yes";i:1;s:9:"sometimes";i:2;s:2:"no";}', '2019-02-08 16:36:06', '2019-02-08 16:36:06');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


-- Dumping structure for table sparknetworks.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sparknetworks.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
