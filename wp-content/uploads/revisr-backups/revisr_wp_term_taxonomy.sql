
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
DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3),(3,3,'category','Posts in this category test image and text alignment.',0,3),(5,5,'category','Posts in this category test the aside post format.',0,2),(7,7,'category','Posts in this category test the audio post format.',0,2),(9,9,'category','Posts in this category test image captions.',0,2),(11,11,'category','Posts in this category test the chat post format.',0,2),(13,13,'category','Posts in this category contain Codex references.',0,3),(15,15,'category','Posts in this category test comments.',0,6),(17,17,'category','Posts in this category test post content.',0,11),(19,19,'category','Posts in this category test odd corner cases, using uncovered by rare user workflows.',0,4),(21,21,'category','Posts in this category test various embed codes.',0,2),(23,23,'category','Posts in this category test post excerpts.',0,2),(25,25,'category','Posts in this category test featured images.',0,3),(27,27,'category','Posts in this category test various formatting scenarios.',0,2),(29,29,'category','Posts in this category test the gallery post format.',0,2),(31,31,'category','Posts in this category test images in various ways.',0,7),(33,33,'category','Posts in this category test Jetpack features.',0,3),(35,35,'category','Posts in this category test the link post format.',0,3),(37,37,'category','Posts in this category test various list scenarios.',0,2),(39,39,'category','Posts in this category test markup tags and styles.',0,2),(41,41,'category','Posts in this category test the more tag feature.',0,2),(43,43,'category','This is a parent category. It will contain child categories',0,1),(45,45,'category','Posts in this category test the post password feature.',0,2),(47,47,'category','Posts in this category test pingbacks.',0,4),(49,49,'category','Posts in this category test post formats.',0,13),(51,51,'category','Posts in this category test the quote post format.',0,2),(53,53,'category','Posts in this category test various shortcodes.',0,2),(55,55,'category','Posts in this category test the standard post format.',0,2),(57,57,'category','Posts in this category test the status post format.',0,2),(59,59,'category','',0,1),(61,61,'category','Posts in this category test post title scenarios.',0,5),(63,63,'category','Posts in this category test trackbacks.',0,4),(65,65,'category','Posts in this category test various Twitter features.',0,2),(67,67,'category','Posts in this category test unpublished posts.',0,1),(69,69,'category','Posts in this category test the video post format.',0,3),(71,71,'category','Posts in this category test VideoPress features.',0,2),(73,73,'category','This is a description for the Child Category 01.',43,1),(75,75,'category','This is a description for the Child Category 02.',43,1),(77,77,'category','This is a description for the Child Category 03.',43,1),(79,79,'category','This is a description for the Child Category 04.',43,1),(81,81,'category','This is a description for the Child Category 05.',43,1),(83,83,'category','This is a description for the Grandchild Category.',77,1),(85,85,'post_tag','Tags posts about 8BIT.',0,1),(87,87,'post_tag','Tags posts about Articles.',0,1),(89,89,'post_tag','Tags posts about #dowork.',0,1),(91,91,'post_tag','Tags posts about fail.',0,1),(93,93,'post_tag','',0,1),(95,95,'post_tag','Tags posts about fun.',0,1),(97,97,'post_tag','Tags posts about love.',0,1),(99,99,'post_tag','Tags posts about motherships.',0,1),(101,101,'post_tag','Tags posts about articles you must read.',0,1),(103,103,'post_tag','Tags posts about that nailed it.',0,1),(105,105,'post_tag','',0,1),(107,107,'post_tag','Tags posts about success.',0,1),(109,109,'post_tag','Tags posts about swagger.',0,1),(111,111,'post_tag','Tags posts about tags. #inception',0,1),(113,113,'post_tag','Tags posts about things that cannot be unseen.',0,1),(115,115,'post_tag','Tags posts about WordPress.',0,1),(117,117,'nav_menu','',0,0),(119,119,'nav_menu','',0,0),(121,121,'nav_menu','',0,0),(123,123,'post_format','',0,1),(125,125,'post_format','',0,1),(127,127,'post_format','',0,1),(129,129,'post_format','',0,1),(131,131,'post_format','',0,2),(133,133,'post_format','',0,1),(135,135,'post_format','',0,1),(137,137,'post_format','',0,2),(139,139,'post_format','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

