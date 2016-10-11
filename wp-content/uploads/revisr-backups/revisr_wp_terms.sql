
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
DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(3,'Alignment','alignment',0),(5,'Aside','post-format-aside',0),(7,'Audio','post-format-audio',0),(9,'Captions','captions',0),(11,'Chat','post-format-chat',0),(13,'Codex','codex',0),(15,'Comments','comments',0),(17,'Content','content',0),(19,'Corner Case','corner-case',0),(21,'Embeds','embeds',0),(23,'Excerpt','excerpt',0),(25,'Featured Images','featured-images',0),(27,'Formatting','formatting',0),(29,'Gallery','post-format-gallery',0),(31,'Images','images',0),(33,'Jetpack','jetpack',0),(35,'Link','post-format-link',0),(37,'Lists','lists',0),(39,'Markup','markup',0),(41,'More Tag','more-tag',0),(43,'Parent Category','parent-category',0),(45,'Password','password',0),(47,'Pingbacks','pingbacks',0),(49,'Post Formats','post-formats',0),(51,'Quote','post-format-quote',0),(53,'Shortcodes','shortcodes',0),(55,'Standard','standard',0),(57,'Status','post-format-status',0),(59,'Sticky','sticky',0),(61,'Titles','titles',0),(63,'Trackbacks','trackbacks',0),(65,'Twitter','twitter',0),(67,'Unpublished','unpublished',0),(69,'Video','post-format-video',0),(71,'VideoPress','videopress',0),(73,'Child Category 01','child-category-01',0),(75,'Child Category 02','child-category-02',0),(77,'Child Category 03','child-category-03',0),(79,'Child Category 04','child-category-04',0),(81,'Child Category 05','child-category-05',0),(83,'Grandchild Category','grandchild-category',0),(85,'8BIT','8bit',0),(87,'Articles','articles',0),(89,'dowork','dowork',0),(91,'Fail','fail',0),(93,'FTW','ftw',0),(95,'Fun','fun',0),(97,'Love','love',0),(99,'Mothership','mothership',0),(101,'Must Read','mustread',0),(103,'Nailed It','nailedit',0),(105,'Pictures','pictures',0),(107,'Success','success',0),(109,'Swagger','swagger',0),(111,'Tags','tags',0),(113,'Unseen','unseen',0),(115,'WordPress','wordpress',0),(117,'Long Menu','long-menu',0),(119,'Testing Menu','testing-menu',0),(121,'Empty Menu','empty-menu',0),(123,'Gallery','post-format-gallery',0),(125,'Aside','post-format-aside',0),(127,'Chat','post-format-chat',0),(129,'Link','post-format-link',0),(131,'Image','post-format-image',0),(133,'Quote','post-format-quote',0),(135,'Status','post-format-status',0),(137,'Video','post-format-video',0),(139,'Audio','post-format-audio',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

