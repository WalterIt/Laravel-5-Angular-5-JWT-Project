/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : larangular

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-19 04:52:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for users
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
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Walter', 'wshiruba@gmail.com', 'admin', null, '2018-04-19 01:27:36', '2018-04-19 01:27:36');
INSERT INTO `users` VALUES ('2', 'Juciel', 'ju@gmail.com', '$2y$10$I8FaT0iLnqTMbfoOA91LcecEFF6J75RsDM1DBdiRD9nOxo0n7h13i', null, '2018-04-19 01:35:22', '2018-04-19 01:35:22');
INSERT INTO `users` VALUES ('3', 'Walter', 'wsilva@gmail.com', '$2y$10$WW4KxvNC7vAJRg7wBXv8iOIuEzyXYed58NaAMpSPN0NHpo8H3rVlW', null, '2018-04-19 01:36:58', '2018-04-19 01:36:58');
INSERT INTO `users` VALUES ('4', 'Jean Pierre', 'jp@gmail.com', '$2y$10$LkzT9JFWZxX9P2cnCreyleF55nZT86jAJSrsxcdjQyKHqe537EJS6', null, '2018-04-19 03:00:13', '2018-04-19 03:00:13');
INSERT INTO `users` VALUES ('5', 'Maronída Augusto', 'maro@gmail.com', '$2y$10$XEO4CxVq/j1LuHKamD7aUun4mRCPPmsUjeorUQPneECoJSQHFtcj.', null, '2018-04-19 03:30:47', '2018-04-19 03:30:47');
