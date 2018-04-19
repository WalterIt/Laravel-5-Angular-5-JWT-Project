/*
MySQL Backup
Source Server Version: 5.7.19
Source Database: larangular
Date: 4/19/2018 04:54:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `users` VALUES ('1','Walter','wshiruba@gmail.com','admin',NULL,'2018-04-19 01:27:36','2018-04-19 01:27:36'), ('2','Juciel','ju@gmail.com','$2y$10$I8FaT0iLnqTMbfoOA91LcecEFF6J75RsDM1DBdiRD9nOxo0n7h13i',NULL,'2018-04-19 01:35:22','2018-04-19 01:35:22'), ('3','Walter','wsilva@gmail.com','$2y$10$WW4KxvNC7vAJRg7wBXv8iOIuEzyXYed58NaAMpSPN0NHpo8H3rVlW',NULL,'2018-04-19 01:36:58','2018-04-19 01:36:58'), ('4','Jean Pierre','jp@gmail.com','$2y$10$LkzT9JFWZxX9P2cnCreyleF55nZT86jAJSrsxcdjQyKHqe537EJS6',NULL,'2018-04-19 03:00:13','2018-04-19 03:00:13'), ('5','Maronída Augusto','maro@gmail.com','$2y$10$XEO4CxVq/j1LuHKamD7aUun4mRCPPmsUjeorUQPneECoJSQHFtcj.',NULL,'2018-04-19 03:30:47','2018-04-19 03:30:47');
