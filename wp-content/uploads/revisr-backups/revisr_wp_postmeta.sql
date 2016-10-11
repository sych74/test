
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(7,1062,'_edit_last','1'),(9,1062,'standard_seo_post_meta_description',''),(11,1062,'_wp_page_template','default'),(13,1064,'_edit_last','1'),(15,1064,'_wp_page_template','default'),(17,1066,'_edit_last','1'),(19,1066,'_wp_page_template','default'),(21,1075,'_edit_last','1'),(23,1075,'_wp_page_template','default'),(25,1077,'_edit_last','1'),(27,1077,'_wp_page_template','default'),(29,1080,'_edit_last','1'),(31,1080,'_wp_page_template','default'),(33,1083,'_edit_last','1'),(35,1083,'_wp_page_template','default'),(37,1083,'standard_seo_post_meta_description',''),(39,1086,'_edit_last','1'),(41,1086,'_wp_page_template','default'),(43,1086,'standard_seo_post_meta_description',''),(45,1088,'_edit_last','1'),(47,1088,'_wp_page_template','default'),(49,1090,'_edit_last','1'),(51,1090,'_wp_page_template','default'),(53,1092,'_edit_last','1'),(55,1092,'_wp_page_template','default'),(57,1094,'_edit_last','1'),(59,1094,'_wp_page_template','default'),(61,1096,'_edit_last','1'),(63,1096,'_wp_page_template','default'),(65,1098,'_edit_last','1'),(67,1098,'_wp_page_template','default'),(69,149,'_edit_last','1'),(71,149,'_wp_old_slug','comment-test'),(73,151,'_edit_last','1'),(75,151,'_wp_old_slug','many-trackbacks'),(77,152,'_wp_old_slug','no-comments'),(79,152,'_edit_last','1'),(81,167,'_edit_last','1'),(83,168,'_edit_last','1'),(85,418,'_edit_last','1'),(87,555,'_thumbnail_id','611'),(89,555,'_edit_last','1'),(91,555,'_wp_old_slug','post-format-test-gallery'),(93,559,'_edit_last','1'),(95,559,'_wp_old_slug','post-format-test-aside'),(97,562,'_edit_last','1'),(99,562,'_wp_old_slug','post-format-test-chat'),(101,565,'_edit_last','1'),(103,565,'_wp_old_slug','post-format-test-link'),(105,568,'_wp_old_slug','post-format-test-image'),(107,568,'_edit_last','1'),(109,568,'_wp_old_slug','post-format-test-image-linked'),(111,575,'_edit_last','1'),(113,575,'_wp_old_slug','post-format-test-quote'),(115,579,'_edit_last','1'),(117,579,'_wp_old_slug','post-format-test-status'),(119,582,'_edit_last','1'),(121,582,'_wp_old_slug','post-format-test-video'),(123,582,'_oembed_7338f2ed6983f1e8f5ec2aef019d9c39','<iframe width=\"610\" height=\"343\" src=\"http://www.youtube.com/embed/nwe-H6l4beM?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>'),(125,587,'_edit_last','1'),(127,587,'_wp_old_slug','post-format-test-audio'),(129,587,'enclosure','http://wptest.io/demo/wp-content/uploads/2013/03/Eddy-Need-Remix.mp3\n11039151\naudio/mpeg\n'),(131,674,'_edit_last','1'),(133,674,'_wp_old_slug','post-format-test-image-attached'),(135,946,'_edit_last','1'),(137,1005,'_edit_last','1'),(139,1005,'standard_seo_post_level_layout',''),(141,1005,'standard_link_url_field',''),(143,1005,'standard_seo_post_meta_description',''),(145,1102,'_edit_last','1'),(147,1102,'_wp_page_template','default'),(149,131,'_edit_last','1'),(151,131,'_wp_old_slug','test-with-secret-password'),(153,133,'_wp_old_slug','14'),(155,133,'_edit_last','1'),(157,134,'_edit_last','1'),(159,134,'_wp_old_slug','this-post-has-no-body'),(161,188,'_edit_last','1'),(163,188,'_wp_old_slug','layout-test'),(165,861,'_edit_last','1'),(167,867,'_edit_last','1'),(169,877,'_edit_last','1'),(171,877,'_wp_old_slug','non-breaking-tex'),(173,895,'_edit_last','1'),(175,903,'_edit_last','1'),(177,903,'standard_seo_post_level_layout',''),(179,903,'standard_link_url_field',''),(181,903,'standard_seo_post_meta_description',''),(183,919,'_edit_last','1'),(185,919,'standard_seo_post_level_layout',''),(187,919,'standard_link_url_field',''),(189,919,'standard_seo_post_meta_description',''),(191,993,'_edit_last','1'),(193,996,'_edit_last','1'),(195,1000,'_edit_last','1'),(197,1011,'_edit_last','1'),(199,1011,'_wp_old_slug','featured-image'),(201,1011,'_thumbnail_id','1022'),(203,1011,'standard_seo_post_level_layout',''),(205,1011,'standard_link_url_field',''),(207,1011,'standard_seo_post_meta_description',''),(209,1016,'_edit_last','1'),(211,1016,'_thumbnail_id','1024'),(213,1016,'standard_seo_post_level_layout',''),(215,1016,'standard_link_url_field',''),(217,1016,'standard_seo_post_meta_description',''),(219,1027,'_edit_last','1'),(221,1027,'standard_seo_post_level_layout',''),(223,1027,'standard_link_url_field',''),(225,1027,'standard_seo_post_meta_description',''),(227,1027,'_oembed_551fbbcf3ec765ea83fa636f36fee1d5','<blockquote class=\"twitter-tweet\" width=\"550\"><p>Doing what you “know” locks you in a prison of the past. Uncertainty is the path to an innovative future.</p>&mdash; Carl Smith (@carlsmith) <a href=\"https://twitter.com/carlsmith/status/258214236126322689\">October 16, 2012</a></blockquote><script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>'),(229,1031,'_edit_last','1'),(231,1031,'standard_seo_post_level_layout',''),(233,1031,'standard_link_url_field',''),(235,1031,'standard_seo_post_meta_description',''),(237,1241,'_edit_last','1'),(239,1241,'standard_seo_post_level_layout',''),(241,1241,'standard_link_url_field',''),(243,1241,'standard_seo_post_meta_description',''),(245,1027,'_oembed_005d75bd2538842909615a20da084ae1','<blockquote class=\"twitter-tweet\" data-width=\"550\"><p lang=\"en\" dir=\"ltr\">Doing what you “know” locks you in a prison of the past. Uncertainty is the path to an innovative future.</p>&mdash; Carl Smith (@carlsmith) <a href=\"https://twitter.com/carlsmith/status/258214236126322689\">October 16, 2012</a></blockquote><script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>'),(247,1027,'_oembed_time_005d75bd2538842909615a20da084ae1','1476196598');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

