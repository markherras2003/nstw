/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.16-MariaDB : Database - nstw
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nstw` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nstw`;

/*Table structure for table `tbl_register` */

DROP TABLE IF EXISTS `tbl_register`;

CREATE TABLE `tbl_register` (
  `register_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `organization` varchar(50) DEFAULT NULL,
  `event` varchar(50) DEFAULT NULL,
  `marketplace` varchar(50) DEFAULT NULL,
  `agebracket` tinyint(1) DEFAULT NULL,
  `transaction` tinyint(1) DEFAULT NULL,
  `pricing` tinyint(1) DEFAULT NULL,
  `relationship` tinyint(1) DEFAULT NULL,
  `overall` tinyint(1) DEFAULT NULL,
  `thumbs` tinyint(1) DEFAULT NULL,
  `haveAttend` tinyint(1) DEFAULT NULL,
  `havePurchase` tinyint(1) DEFAULT NULL,
  `insights` varchar(50) DEFAULT NULL,
  `reactions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_register` */

insert  into `tbl_register`(`register_id`,`full_name`,`gender`,`organization`,`event`,`marketplace`,`agebracket`,`transaction`,`pricing`,`relationship`,`overall`,`thumbs`,`haveAttend`,`havePurchase`,`insights`,`reactions`) values (1,'Aris','Male','2','1,2,3,4,5,7,6','3,4,5,6,7',3,4,4,4,4,1,0,1,'1,2,3',' '),(2,' kk','Female','3','7','7',2,5,5,5,5,1,1,1,'1',' '),(3,' ','Female','2','6','6',2,0,0,0,5,1,0,0,'1,3',' '),(4,' Ronnel','Male','2','2,3','2,3',3,4,4,4,4,1,1,1,'1,2',' '),(5,' ','Male','1','4,5','4',2,4,5,5,5,1,1,1,'1,2,3',' '),(6,' ','Female','1','4','4',2,5,5,5,5,1,1,1,'3,2',' '),(7,' ','Female','3','4,5','4,5',4,0,0,0,5,1,1,0,'2,1',' '),(8,' ','Female','2','6,7','6',2,0,0,0,5,1,0,0,'2,1,3',' '),(9,' ','Female','2','4','4,6',2,5,3,4,4,1,1,1,'2',' '),(10,' ','Male','2','1,2,4,5,7','4',2,0,0,0,5,1,0,0,'2',' '),(11,' JKCee','Male','2','1,3,4,6,7','1,4,6,7',2,5,5,4,5,1,0,1,'1',' Bring in more products from FIC'),(12,' francis melanie','Female','2','7','4',3,5,5,5,5,1,0,1,'2',' '),(13,' ','Female','2','7','7',3,4,4,4,4,1,0,1,'1,2,3,5',' '),(14,' ','Female','2','4','5',4,6,3,5,5,1,0,1,'3',' since this is in a trial run only, complete the price of each items and also sana medyo mababa ang presyo.\n'),(15,' ','Female','2','7','4',2,5,4,5,5,1,1,1,'2',' '),(16,' ','Female','2','7','6',2,5,5,5,5,1,0,1,'2',' '),(17,' ','Male','2','7,6','6',2,5,4,5,5,1,0,1,'2',' more space'),(18,' ','Female','2','4','4',4,0,0,0,4,1,0,0,'2',' bigger space for the marketplace'),(19,' romar','Male','2','6','6',2,5,5,5,5,1,0,1,'1',' '),(20,' ','Male','2','7','4',3,0,0,0,5,1,0,0,'2',' '),(21,' ivan','Male','2','4','4',3,5,4,4,4,1,1,1,'2',' have more checkout counters'),(22,' ','Female','5','4','6',3,4,3,4,4,1,0,1,'2','more counter for fast buying experience\n'),(23,' ','Female','2','4,6','1,3,4,6',2,5,5,5,5,1,1,1,'2',' '),(24,'jups b','Male','2','1,2,3,4,5,7','1',2,5,3,5,3,1,0,1,'1,2,3',' '),(25,' ','Male','2','4','4',2,0,0,0,5,1,1,0,'2',' '),(26,' ','Male','2','1,2,3,4,7,5','1,2,3,4,5',3,4,4,4,4,1,0,1,'2',' '),(27,' ','Female','2','7','4',2,5,3,4,5,1,1,1,'5',' '),(28,' kei','Female','3','7','7',2,5,4,5,5,1,1,1,'1',' '),(29,' ','Female','2','4','4',2,5,5,5,5,1,0,1,'1',' '),(30,' mm','Female','2','6','6',2,5,3,4,4,1,0,1,'3',' '),(31,' ','Female','2','6','5,6',2,0,0,0,3,1,0,0,'3',' '),(32,' tin gealan','Female','2','4,7,1,6','1,4,5,2,6',3,4,2,4,4,1,0,1,'1,2,3,4,5',' '),(33,' ','Female','1','4','6',3,6,4,3,4,1,0,1,'1',' '),(34,' ','Male','2','4,1,7','4',2,6,5,4,5,1,0,1,'2',' '),(35,' ','Male','1','7','5',2,0,0,0,4,1,1,0,'2',' '),(36,' ','Male','1','7','7',2,0,0,0,5,1,1,0,'2','whoop whoop'),(37,' ramida ajuji','Female','1','6','6',3,5,5,5,5,1,0,1,'2',' '),(38,' kleen','Male','2','4','4',2,4,4,4,4,1,1,1,'1,2,3',' '),(39,' ','Male','2','4,7,6','4',4,5,5,5,5,1,0,1,'1,2,4',' '),(40,' mary grace postor','Female','2','6,4,5,7','6,4',3,5,5,5,5,1,0,1,'2,1,3',' '),(41,' ','Female','2','1,7','1,6,3',4,5,5,5,5,1,0,1,'2',' '),(42,' ','Male','2','4','4',2,5,5,5,5,1,0,1,'1,5,2',' internet connection.'),(43,' ','Female','1','4','6',2,4,4,4,4,1,1,1,'1',' '),(44,' Inigo','Male','2','7','7',2,0,0,0,5,1,1,0,'1',' '),(45,' ','Female','2','7','7',2,0,0,0,4,1,1,0,'2',' '),(46,' ','Female','2','6','7',4,0,0,0,4,1,0,0,'2,1,3,4',' '),(47,' neri','Female','2','1,2,3,4,5,7,6','6,1,4,5',2,5,5,5,5,1,0,1,'1,2,3',' '),(48,' clare','Female','2','1,2,7,6,3,5,4','1,6,7,3,4',3,5,5,5,5,1,0,1,'1,2,3',' '),(49,' ','Female','2','7','4,7,6',2,0,0,0,4,1,0,0,'3',' '),(50,' ','Male','2','4','4',3,5,5,5,5,1,0,1,'2',' '),(51,' jamilah de silva','Female','1','4','4',2,4,4,5,5,1,0,1,'1','more variety,bigger space'),(52,' jamie','Female','1','6,7,4,5','6,4',2,5,4,4,4,1,0,1,'1,2,3,5',' more variety of foods like unique ice cream'),(53,' mavil dado','Female','2','7','4',3,5,4,5,5,1,0,1,'2',' '),(54,' ','Female','2','7','7',3,5,5,5,5,1,0,1,'2',' '),(55,' gema','Female','5','5','5',1,0,0,0,1,1,1,0,'1',' ok'),(56,' ','Male','2','7','4',3,3,3,4,4,1,0,1,'5',' '),(57,' rose','Female','2','4','4,7',4,5,5,5,5,1,0,1,'2',' bigger space for marketplace'),(58,' ','Male','2','7','7,6',2,6,3,4,4,1,0,1,'2',' '),(59,' Bernadette','Female','1','4','6',2,0,0,0,4,1,0,0,'3',' '),(60,'Aaron Esclamado','Male','2','7,1,4,6','1',2,0,0,0,5,1,1,0,'5',' '),(61,' ','Female','1','6','6',2,4,5,4,4,1,1,1,'1','they should '),(62,' ','Female','2','7','6',2,6,3,5,4,1,0,1,'5,2,1',' '),(63,' ','Female','2','4','4',3,4,3,4,4,1,0,1,'1',' please add additional counter to accommodate the buyer faster...'),(64,' fidel','Male','2','6','6',4,4,4,4,4,1,0,1,'1,2,3',' keep up the good work\n'),(65,'Carlos','Male','5','4','4',1,4,3,3,4,1,1,1,'4',' More Chairs\n'),(66,' ','Male','2','4','4,6',2,0,0,0,5,1,1,0,'2',' Additional counter'),(67,' ','Female','1','6','7,6',3,5,5,5,5,1,0,1,'1',' '),(68,' ','Male','2','4,3','4,3',3,5,5,4,5,1,1,1,'2,1,3',' '),(69,' jennie','Female','2','7','7',3,5,5,5,5,1,0,1,'1',' '),(70,' alyana','Male','2','4,3','3,4,5,2,1,6,7',2,4,5,5,4,1,1,1,'1,2,3',' '),(71,' mary grace tambis','Female','2','7','7',2,5,3,4,4,1,0,1,'3',' '),(72,' John Aster P. Dublin','Male','5','4','4',1,5,5,5,5,1,0,1,'1',' some packaging design needs improvement and more the value of the product'),(73,' Ronie','Male','2','4,6','4,6',3,0,0,0,5,1,1,0,'2',' Add counter'),(74,' ','Male','2','1,2,3,4,5,6,7','6,1,2,7,3,4,5',3,5,5,5,5,1,0,1,'1',' '),(75,' ','Male','2','4,6,1,2','6,4',4,5,5,5,5,1,1,1,'1,2',' '),(76,' ','Male','2','7,5,3','7,3,4',4,5,4,5,5,1,0,1,'1',' make wider the place market'),(77,' majes','Male','2','4','4',3,5,5,4,4,1,1,1,'2',' need bigger space'),(78,' ','Female','1','7','6',2,0,0,0,4,1,1,0,'2',' '),(79,' daisy','Female','2','1,2,3,4,5,7,6','6,7,4,5',3,0,0,0,4,1,0,0,'1,2,3',' '),(80,' gerry n. galvez','Male','2','7','3,4,7',4,5,5,5,5,1,1,1,'1,2,3',' more technologies to showcase more people to be extended assistance '),(81,' SHAUNTEL ORTEGO','Male','2','7','6',2,0,0,0,5,1,0,0,'2',' '),(82,' ','Female','2','7','6',2,4,4,4,4,1,0,1,'2',' more stores around'),(83,' LOIS','Female','2','7','6',2,4,4,4,5,1,0,1,'2',' '),(84,' ','Female','2','7','7',3,3,3,3,4,1,0,1,'1,2',' pakiimprove yung cashier area\n'),(85,' ','Male','1','7','6',1,6,4,4,4,1,1,1,'3',' '),(86,' marielle','Female','1','6','6',2,0,0,0,3,1,1,0,'3',' '),(87,' PAOLO','Male','2','7','6',3,4,3,4,4,1,1,1,'2',' '),(88,' Paula','Female','1','6','6',2,5,5,5,5,1,1,1,'1',' '),(89,' ','Male','2','4','4',3,5,5,5,5,1,0,1,'2',' '),(90,' ','Female','1','6','6',2,4,4,4,4,1,0,1,'3',' '),(91,' reg','Female','1','4','6',2,5,5,5,5,1,1,1,'2',' n/a'),(92,' ','Female','2','7','4,1,7',4,0,0,0,5,1,0,0,'2',' '),(93,' ','Male','2','6','6',2,0,0,0,4,1,0,0,'3',' '),(94,' ','Male','2','7','7,6',2,6,5,5,5,1,0,1,'2',' '),(95,' JAMES','Male','1','7','6',2,5,4,5,5,1,1,1,'2',' More coffee hahaha'),(96,' ','Female','5','7','7',3,5,4,5,5,1,1,1,'1',' '),(97,' sev','Male','1','7','1',3,1,4,5,5,1,0,1,'1',' '),(98,' ','Female','2','6','6',2,6,4,4,5,1,0,1,'2',' '),(99,'morris banaag','Male','2','6','6',2,5,5,5,5,1,1,1,'3',' nothing'),(100,' Frances','Female','1','7','4',2,0,0,0,5,1,1,0,'2',' '),(101,' benjie villanueva','Male','2','6','6',4,5,5,5,5,1,1,1,'3',' nothing'),(102,' rowena guzman','Female','2','4','4',3,4,4,4,4,1,0,1,'2',' '),(103,' Joal Rose Lin','Female','1','7','5',2,2,5,4,4,1,1,1,'4',' Have a pricelist online?'),(104,' ','Female','1','7','7',4,5,5,5,5,1,0,1,'3,2,1',' larger space'),(105,' brix','Male','2','1,7,2,3,4,6','1,6',2,5,5,5,5,1,0,1,'2',' '),(106,' nerissa','Female','2','6','6',5,5,4,5,5,1,0,1,'2',' more products from the regions'),(107,' edgardo','Male','5','6','6',4,5,4,5,4,1,1,1,'2',' more products'),(108,' erwan','Male','4','3','2,3',2,5,5,5,5,1,1,1,'2',' '),(109,' jen','Female','2','7','1',2,5,5,5,5,1,1,1,'1',' '),(110,' bobby','Male','5','7','6',2,4,4,4,4,1,1,1,'2',' keep up the best service, make the price more cheaper....'),(111,' Sr. Mary Lynn G.  Alfeche, CM','Female','4','7','7',4,5,4,5,4,1,1,1,'1',' '),(112,' ','Male','2','7','4',2,0,0,0,4,1,0,0,'1',' '),(113,' mercado, szalinah s.','Female','2','7','7',4,5,5,5,5,1,0,1,'1,2,3',' '),(114,' maurine','Female','1','7','7',3,5,5,5,5,1,0,1,'2',' '),(115,' aubee','Female','1','7','7',2,5,5,5,5,1,1,1,'2',' always smile'),(116,' oyen','Female','1','7','7',3,5,5,5,5,1,0,1,'3',' '),(117,' ','Male','1','7','5',3,0,0,0,5,1,1,0,'1',' '),(118,'','Male','4','7','1',2,0,0,0,5,1,1,0,'2',' '),(119,' joey bitoon','Male','5','4','4',4,5,4,5,5,1,0,1,'2',' '),(120,' ','Male','2','7','7,1,4',3,5,4,5,5,1,0,1,'3,4,1',' '),(121,' tna','Female','1','7','7',3,4,5,4,5,1,1,1,'1',' more ads'),(122,' ','Female','1','7','7',3,5,5,5,5,1,0,1,'2',' '),(123,' ','Female','2','6','6',2,5,5,5,5,1,0,1,'1,2,3,4',' '),(124,' ','Male','2','4','4',3,5,5,5,5,1,1,1,'1',' '),(125,' ','Female','5','4','4',3,4,3,4,4,1,1,1,'1',''),(126,' Jude ','Male','2','7','7,5',2,0,0,0,5,1,0,0,'3',' '),(127,' emie','Female','1','7','7',4,4,4,4,4,1,0,1,'2',' '),(128,' tina','Female','1','7','7',2,5,5,5,5,1,0,1,'3',' '),(129,' karen','Female','1','7','6',3,5,4,5,5,1,1,1,'1',' '),(130,' emie','Female','1','7','7',4,4,4,4,4,1,0,1,'3',' '),(131,' ','Female','1','7','7',2,5,4,5,4,1,0,1,'2',' '),(132,' victoria chavez','Female','5','4','4',2,5,5,5,5,1,1,1,'2',' improved'),(133,' Reynaldo P. Guieb ','Male','1','6','6',2,5,4,5,5,1,1,1,'2',' '),(134,' ','Female','2','6,4,7','6',2,5,5,5,5,1,0,1,'2',' boost advertising through social media'),(135,' rachel','Female','5','7','7',3,5,5,5,5,1,1,1,'2',' '),(136,' ','Male','1','4','4',3,5,4,4,4,1,0,1,'1',' congratulations!'),(137,' ','Male','1','4','6',3,5,4,4,4,1,0,1,'2',' study price of other products. how well it fair with competitors'),(138,' jelyn','Female','2','7','5',3,5,5,5,5,1,0,1,'1',' '),(139,' ','Male','1','4','4',2,6,5,5,5,1,0,1,'1',' '),(140,' ','Female','1','6','6',2,4,4,4,4,1,0,1,'2',' '),(141,' ','Female','3','7','6',2,4,5,5,4,1,1,1,'3',' '),(142,' ','Female','2','4,6','6',2,6,3,3,4,1,0,1,'2',' '),(143,' perla','Female','1','6','6',4,5,5,5,5,1,1,1,'3',' more information dissemination'),(144,' ','Female','1','6','6',3,0,0,0,4,1,0,0,'1,2,3,4',' please showcase a wider coverage of local innovations and products.. good job'),(145,' ','Male','1','4','4',2,0,0,0,4,1,0,0,'1,2,3,4',' Showcase natural products in food production\n'),(146,' ','Female','1','4','4',2,4,5,5,5,1,0,1,'1',' '),(147,' ','Female','2','7','4',3,4,5,5,5,1,0,1,'1',' '),(148,' ','Female','2','6,7,5,4,1','5,7,6,4',3,5,4,4,5,1,0,1,'1,2,3',' more products to display/sell\n'),(149,' ','Male','1','4','7,3',4,5,5,5,5,1,0,1,'1',' just keep the good work'),(150,' Kirsten','Female','1','7','6',2,4,4,5,4,1,1,1,'2',' n/a'),(151,' desmi','Female','2','1,2,3,4,5,6,7','1,2,3,4,5,6,7',2,5,5,5,5,1,0,1,'2,4,3,1',' '),(152,' k','Female','2','4','6',2,0,0,0,5,1,0,0,'2',' please consider low budget hotdog'),(153,' trixie','Female','2','4','4',3,4,4,4,4,1,0,1,'1',' '),(154,' Ariane Mae M. Villanueva','Female','2','7','4',2,5,5,5,5,1,0,1,'1',' '),(155,' joyce ocampo','Female','2','7','4',3,4,4,4,4,1,0,1,'4,3,2,1',' '),(156,' Ivy Marie Palma','Female','2','4','4',3,5,5,5,5,1,0,1,'2',' '),(157,' ','Male','1','6','6',2,4,5,4,4,1,1,1,'3',' '),(158,' Lharize','Female','1','4,6,5','4,6',2,5,5,5,5,1,1,1,'1',' '),(159,' Dominador T. Callo Jr','Male','1','7','6',2,4,4,4,5,1,0,1,'1',' '),(160,' ','Female','5','4','4',3,5,5,5,5,1,1,1,'2',' n/a'),(161,' cheska chua','Female','1','6','6',1,4,4,5,5,1,1,1,'2',' '),(162,' zaldie','Male','2','7','7',2,5,5,5,5,1,1,1,'2','provision of one store booth in every rstw'),(163,' ','Male','1','4','5',3,5,5,5,5,1,0,1,'1',' '),(164,' ','Male','3','7','7',2,5,4,5,5,1,1,1,'2',' '),(165,' bea','Female','3','7','6',2,4,4,5,5,1,1,1,'3',' '),(166,' angel','Female','1','4','4',3,0,0,0,5,1,1,0,'2',' repeat event'),(167,' ladis','Female','2','4','4',4,5,5,5,5,1,0,1,'2',' '),(168,' ','Female','2','1,2,3,4,5','1,3,2,4,5,6,7',2,5,5,5,5,1,1,1,'4,3,2,1',' '),(169,' marko','Male','1','7','6',2,4,4,5,4,1,1,1,'3',' faster payment scheme'),(170,' ','Female','2','1,2,3,4,5','1,2,3,4',4,5,5,5,5,1,0,1,'2',' '),(171,' ','Female','4','7','6',2,5,5,5,5,1,1,1,'2',' '),(172,' victoria athena peralta','Female','2','1,2,3,4','1,2,3,4',4,5,5,5,5,1,0,1,'1,2',' '),(173,' JC Manas','Male','2','7','6,4',2,5,5,5,5,1,0,1,'2',' '),(174,' glenda','Female','2','7,4','4',4,5,5,5,5,1,0,1,'2',' '),(175,' anna monterey','Female','2','7','4',3,5,5,5,5,1,0,1,'2',' '),(176,' eliza','Female','2','4','4',2,5,5,5,5,1,0,1,'2',' '),(177,' ','Female','2','7','4',4,0,0,0,4,1,0,0,'2',' '),(178,' aem','Female','2','7','7',2,4,4,5,5,1,1,1,'1',' add more'),(179,' honeyy','Female','2','7','6',2,4,4,4,4,1,1,1,'1',' none'),(180,' sarah','Female','2','7,4','7,4',3,5,4,5,5,1,0,1,'1,2,3',' more competitive prices'),(181,' annie','Female','2','7','6',5,4,4,4,4,1,0,1,'1',' ok'),(182,' ','Male','1','4','4,6',2,5,5,5,5,1,0,1,'1',' '),(183,' kim','Female','5','4','4',2,5,5,5,5,1,0,1,'2',' '),(184,' ','Male','2','4','4',3,4,4,4,4,1,0,1,'1',' check expiration dates for every product\n'),(185,' chia','Female','1','4','4',2,5,5,5,5,1,1,1,'2',' '),(186,' francine','Female','1','4,5,7,1,6','1,6,7,3,4,5',2,5,4,4,5,1,1,1,'2',' have more staff to entertain people'),(187,' ','Female','1','4','4',2,5,5,5,5,1,1,1,'2',' '),(188,' jeany','Female','1','1,6,7,3,4,5','1,6,7,3,4,5',2,5,5,5,5,1,1,1,'2',' '),(189,' leah buendia','Female','2','7','7',4,4,4,4,4,1,0,1,'2',' '),(190,' ','Female','1','6,7','7,6',3,3,5,5,4,1,0,1,'1,2',' disseminate info to more people'),(191,' francis uy','Male','1','7','6',3,4,4,4,4,1,0,1,'1',' reward system'),(192,' gil','Male','5','7','1',3,4,5,5,5,1,0,1,'3',' more exhibitors\n'),(193,' ','Male','2','7','7',2,5,5,5,5,1,0,1,'1',' '),(194,' Mark Diaz','Male','2','7','5',3,5,5,5,5,1,0,1,'1',' '),(195,' mark dave casing','Male','5','6','6',2,4,4,5,5,1,1,1,'3',' mas malaking space para sa store'),(196,' ','Female','2','1','1',4,4,4,4,4,1,0,1,'3',' display or have a location of one store products in big supermarkets.'),(197,' isa','Female','5','4','4',2,4,4,4,4,1,1,1,'3',' '),(198,' ','Female','1','4','4',3,5,5,5,5,1,0,1,'2',' '),(199,' joey','Male','1','7','6',5,5,5,5,5,1,0,1,'1',' no'),(200,' ivy marie palma','Female','2','4','4',3,4,4,4,4,1,0,1,'2',' '),(201,' Noreen','Female','5','6','6',1,1,1,1,5,1,1,1,'2',' '),(202,' alice','Female','2','4','4',3,4,4,4,4,1,0,1,'2',' '),(203,' rea','Female','2','5','6',3,4,4,4,4,1,0,1,'2',' '),(204,' ','Female','2','4','4',3,4,4,4,4,1,0,1,'1',' '),(205,' ','Female','2','6','7,6',2,5,5,5,5,1,0,1,'2',' '),(206,' ','Male','2','2,3,4,6,7','4,6',3,4,4,4,5,1,0,1,'3',' '),(207,' Arvin','Male','1','4','4',2,0,0,0,5,1,1,0,'1',' RICE'),(208,' ','Female','2','7','7',3,6,4,4,4,1,0,1,'2',' none'),(209,' ','Female','2','3,4,7,6,5','6',2,5,5,5,5,1,0,1,'2,1,3,4',' The products are excellent and globally competitive.'),(210,' ','Male','2','6','6',2,0,0,0,5,1,1,0,'1',' more regional products\n'),(211,' jiji','Female','3','7','6',3,5,4,5,5,1,0,1,'2',' more stores'),(212,' ELLA','Female','2','7','4',2,5,5,5,5,1,0,1,'2',' '),(213,' KIM','Female','2','7','7',2,5,5,5,5,1,0,1,'1',' '),(214,' dhaye','Female','1','7','7',2,4,4,4,4,1,1,1,'3',' none'),(215,' ','Female','2','5','5',5,5,5,5,5,1,0,1,'1',' '),(216,' ','Male','1','7','5',2,4,4,4,4,1,1,1,'2,3',' '),(217,' legee','Male','2','7','4',2,5,4,4,4,1,0,1,'2',' '),(218,' JOYCE','Female','2','5','5',2,5,5,5,5,1,1,1,'1',' '),(219,' rachel mesias','Female','2','5','4',3,5,5,5,5,1,0,1,'2',' '),(220,' ','Female','2','4,5','4,5',4,5,5,5,5,1,0,1,'1,2,3,4',' '),(221,' ','Male','1','7','7',3,5,5,5,5,1,0,1,'2',' '),(222,' ','Female','2','5','5',3,5,5,5,5,1,0,1,'1,2,3,4',' '),(223,' ','Female','2','4','5,4,6',2,5,5,5,5,1,1,1,'1,2,3,4',' '),(224,' ','Female','2','4,5','4,5',4,5,5,5,5,1,0,1,'1,2,3,4',' '),(225,' Hans','Male','1','4','4',2,4,4,4,4,1,0,1,'3',' '),(226,' KARL','Male','5','4','4',2,4,4,4,4,1,1,1,'2',' '),(227,' ','Male','3','7','6',4,4,4,4,4,1,1,1,'2',' '),(228,' ','Male','1','6','6,5',2,4,3,4,4,1,1,1,'3',' '),(229,' jomar','Male','3','7','7',3,4,4,5,5,1,1,1,'1',' nothing'),(230,' JACKIE','Female','5','4','6',3,6,4,5,4,1,1,1,'1,2,3,4',' '),(231,' jona','Female','1','4','4',2,6,3,4,5,1,0,1,'2',' market the products to the public'),(232,' MARC','Male','1','4','4',2,6,3,4,4,1,0,1,'3',' '),(233,' luther','Male','1','4','4',2,0,0,0,4,1,0,0,'2',' it is nice to promote local products'),(234,' Reymond Lumboy','Male','5','1','1,5,4',2,4,4,4,5,1,1,1,'2,3',' Addition of food tags or labels.'),(235,'mj','Male','1','7','6,1',2,0,0,0,5,1,1,0,'1',' none  '),(236,' ','Female','2','3,4','4',2,5,5,5,5,1,0,1,'1',' '),(237,' NBL','Female','1','7','6',2,6,4,4,4,1,0,1,'2',' '),(238,' ','Male','2','7','7',2,5,3,4,4,1,0,1,'2',' '),(239,' kyrie','Male','1','7','7',2,4,4,4,4,1,1,1,'2',' '),(240,' ','Female','1','7','6',3,4,4,4,5,1,0,1,'2',' '),(241,' David','Male','1','7','6',2,4,4,4,4,1,0,1,'1',' '),(242,' dannie','Male','3','7','7',3,5,5,5,5,1,0,1,'2',' '),(243,' Peter','Male','1','6','6',2,0,0,0,5,1,1,0,'2',' '),(244,' ','Male','1','4','4',2,5,5,5,5,1,0,1,'1',' '),(245,' Trisha','Female','1','6','6',2,0,0,0,3,1,1,0,'3',' '),(246,' Mary Ann Torio','Female','1','7','7',3,5,5,5,5,1,0,1,'2',' '),(247,' Paul','Male','1','6','6',2,0,0,0,4,1,1,0,'1',' '),(248,' ','Female','2','4','4',2,0,0,0,5,1,1,0,'1,2,3,4',' '),(249,' mumay','Female','1','4','4',3,4,4,4,4,1,1,1,'3',' n/a'),(250,' bai','Female','1','7','7',3,0,0,0,4,1,1,0,'1',' visibility'),(251,' ','Male','4','4','6',5,6,5,5,5,1,0,1,'2',' more variety \n'),(252,' ','Male','2','4','4',2,5,5,5,5,1,1,1,'2',' '),(253,' Peace','Male','1','6','5',1,5,5,5,5,1,0,1,'1',' nothing\n'),(254,' ','Male','1','6','6',2,5,4,5,5,1,1,1,'3',' '),(255,' robin b. hermoso','Male','4','1,3,4,5','1,3,4,5',4,5,4,5,5,1,0,1,'1',' '),(256,' gigi','Female','3','7','7',5,4,4,4,4,1,0,1,'1,2,3',' store lay-out improvement, especially for the vending machines to be more appealing'),(257,' joan','Female','1','4','6',4,5,4,5,5,1,1,1,'2,1,5',' '),(258,' ley ','Female','2','5,7','4,5,6',4,0,0,0,4,1,0,0,'2',' bigger space for customer'),(259,' Jennifer Paule','Female','1','4,7,5,6','6',2,6,4,4,4,1,1,1,'1,2,3',' keep it up!'),(260,' shamie','Female','1','4,6,7','6,4,1',1,0,0,0,4,1,0,0,'2',' bigger space'),(261,' ','Male','1','6,7,4','6',2,6,5,4,5,1,1,1,'1,3,2',' keep it up'),(262,' shamie','Female','1','6,7,4','6,4,1',1,0,0,0,4,1,0,0,'2',' bigger space'),(263,' m','Male','1','7','6',3,4,4,4,5,1,0,1,'2',' good'),(264,' ai','Female','2','4','4',2,6,4,4,4,1,0,1,'1,2,3,4',' none'),(265,' ','Female','2','7','4',2,4,5,5,5,1,0,1,'1',' '),(266,' ','Female','2','4','4',3,4,3,4,4,1,1,1,'3',' '),(267,' Peace Uychiaoco','Male','1','6','6',1,4,4,5,5,1,0,1,'1',' nothing its to good\n'),(268,' ','Male','2','1','1',2,4,5,5,5,1,1,1,'2',' '),(269,' poi','Male','2','4,3,5','3,4,5',3,4,3,4,4,1,0,1,'1,2,3',' high markup'),(270,' Margo','Female','1','4,7,3','5,4',2,0,0,0,5,1,0,0,'2',' '),(271,' ayesha Rema Tan','Female','2','7','7',2,5,5,5,5,1,0,1,'4,2,3,1',' '),(272,' mildred','Female','1','7','7',5,5,4,4,4,1,0,1,'1',' '),(273,' sammy','Male','1','7,6,5','6,5,7',5,5,5,5,5,1,0,1,'2',' larger display area'),(274,' ','Female','2','6','6',2,5,5,5,4,1,0,1,'1,2,3,4',' '),(275,' ','Female','2','7','7',3,4,4,5,5,1,0,1,'1',' '),(276,' don flores','Male','2','6','6',2,5,5,5,5,1,0,1,'1,2,3,4',' '),(277,' ','Male','2','7','6',2,5,4,4,5,1,1,1,'2',' '),(278,' ren glindo','Female','2','7','7',2,5,4,5,5,1,1,1,'1',' none. ;)\n'),(279,' kath','Female','1','4','4',1,5,4,5,5,1,1,1,'3',' none'),(280,' ','Male','2','4','4',2,4,4,4,4,1,1,1,'1',' '),(281,' din','Female','3','7','4,7',3,5,5,5,5,1,1,1,'2',' '),(282,' ','Female','2','7','7',2,4,4,4,4,1,1,1,'1',' '),(283,' micah','Female','1','4','4',1,4,4,4,5,1,1,1,'1',' '),(284,' cora','Female','5','4','4',4,4,5,5,5,1,1,1,'2',' more power'),(285,' ','Male','3','7','6,4',3,5,5,5,5,1,1,1,'2',' '),(286,' ','Female','1','7','7',5,5,5,5,5,1,0,1,'2',' i hope that our products will be part of the one store merchandise. tyvm.\n'),(287,' ','Female','2','7','7',3,4,4,5,5,1,1,1,'2',' more counters for payment'),(288,' joyce acosta','Female','2','7','7',3,5,5,5,5,1,1,1,'2,3',' '),(289,' ','Female','5','6','6',2,3,5,5,3,1,1,1,'3',' '),(290,' Dorongon','Male','1','7','6',2,5,4,5,5,1,1,1,'5,3',' '),(291,' ','Female','2','4','4',2,4,5,5,5,1,0,1,'1',' '),(292,' kristal','Female','1','4','4',2,5,4,5,5,1,1,1,'3',' add foods with rice'),(293,' ed','Male','2','7,5,4','5',3,5,5,4,5,1,0,1,'2',' more regional products'),(294,' yahh','Male','1','4','6',2,5,5,5,5,1,0,1,'1',' add meals w/ rice'),(295,' ','Female','5','4','4',2,0,0,0,5,1,0,0,'2',' '),(296,' nic','Female','1','4','4',2,4,4,4,4,1,0,1,'4',' add ricemeals'),(297,' choi','Male','1','4','4',2,5,5,5,5,1,0,1,'1',' '),(298,' ','Male','1','6','6',2,4,4,4,4,1,0,1,'3',' '),(299,' jen','Female','2','7','4',3,0,0,0,3,1,0,0,'2',' packaging needs improvement'),(300,' hanz','Male','1','1','4',1,0,0,0,5,1,1,0,'1',' '),(301,' jed','Male','1','4','1',1,0,0,0,3,1,0,0,'5',' '),(302,' paul','Male','1','4','4',2,5,5,5,5,1,1,1,'1,2,3,4',' Have discounted prices'),(303,' madel ebarvia','Female','2','6','6',2,5,5,5,5,1,0,1,'1,2,3,4',' more counters '),(304,' carmen','Female','4','3','1',4,5,5,5,5,1,0,1,'1,2,3,4',' possibility of free delivery service'),(305,' cyril ramil','Female','2','6','6',3,5,4,5,5,1,0,1,'1,2,3,4',' '),(306,' ','Male','5','4','4',2,5,5,5,5,1,1,1,'2',' '),(307,' elisa navarro','Female','3','6','4',4,6,4,4,4,1,1,1,'1',' '),(308,' ','Male','1','7','6',2,5,4,5,5,1,1,1,'1',' '),(309,' ','Female','4','4','4',2,4,5,5,5,1,1,1,'2',' '),(310,' ','Male','1','4','7',2,0,0,0,4,1,0,0,'2,3',' '),(311,' ','Male','1','7','6',2,0,0,0,4,1,1,0,'5',' '),(312,' ','Male','1','4','4',2,0,0,0,5,1,0,0,'1',' '),(313,' ','Male','5','4','4',2,0,0,0,4,1,1,0,'4',' '),(314,' ji ','Male','2','7','6',2,4,3,4,4,1,0,1,'2',' '),(315,' ','Male','2','7,4,5','4',2,5,5,5,5,1,0,1,'1',' More shelves to store products\n'),(316,' kim','Male','5','7','6',2,3,4,4,4,1,1,1,'3',' larger store'),(317,' tim','Male','5','7','7',2,5,4,4,4,1,1,1,'3',' more food variety\n'),(318,'brayn','Male','1','7','4',2,4,5,3,4,1,0,1,'1','nothing'),(319,' Rosemarie Senora','Female','2','4,5','6,4,5',2,5,5,5,5,1,0,1,'2',' '),(320,' cancan','Female','1','4','7,6',2,5,5,5,5,1,0,1,'1',' nothing. just keep it up\n'),(321,' loreyn','Female','1','4','6',2,4,4,5,5,1,0,1,'3',' '),(322,' mewy','Female','1','4','4',2,4,4,4,5,1,0,1,'2','add more free food'),(323,' ','Female','2','4','4',2,4,4,4,4,1,0,1,'1',' '),(324,' ','Female','2','4','4',4,5,5,5,5,1,0,1,'1',' '),(325,' ','Male','2','4','4',3,5,5,5,5,1,1,1,'2',' '),(326,' mara','Female','1','4','3',2,5,4,4,5,1,1,1,'1',' '),(327,' christy d.','Female','2','6,4,5,7','6,7',3,5,5,5,5,1,1,1,'1',' '),(328,' vench alano','Female','2','4','4',3,5,5,5,5,1,1,1,'3',' none'),(329,' ','Male','5','5','5',5,4,4,4,4,1,1,1,'1,2,3,4',' i noticed that some of the prices of processed foods are higher.'),(330,' coleen','Female','1','7','6',2,5,5,5,5,1,0,1,'1',' more counters'),(331,' ','Female','1','6,7,1,5,4','2,3,6,7',2,5,5,5,5,1,1,1,'1',' none'),(332,' ','Male','1','4','4',3,0,0,0,4,1,0,0,'2',' '),(333,' dyordz','Male','2','4','4',4,0,0,0,5,1,0,0,'2',' '),(334,' Jethro Tanjusay','Male','1','6','4',2,0,0,0,4,1,0,0,'2',' '),(335,' ','Male','2','2,4','4',2,5,5,5,5,1,0,1,'2',' none'),(336,' anna','Female','3','6','6',3,0,0,0,5,1,1,0,'2',' '),(337,' ALVIN','Male','2','7','7',2,3,2,3,4,1,1,1,'2',' '),(338,' Pia','Female','1','7','7',1,0,0,0,4,1,1,0,'2',' '),(339,'JOAN DEE','Female','1','4','7',2,5,5,5,5,1,0,1,'2',' MORE ORGANIC PRODUCTS'),(340,' nerissa','Female','2','1,2,3,4,5,7,6','1,2,3,4,5,7,6',2,5,5,5,5,1,0,1,'1,2,3,4',' '),(341,' alleni','Female','2','4,5,6,7','5,6',2,5,5,5,5,1,0,1,'1,2,3,4,5',' '),(342,' MICA','Female','1','7','7',1,0,0,0,4,1,1,0,'2',' '),(343,' jo ann','Female','2','7','6',3,5,5,5,5,1,0,1,'1,2,3,4',' '),(344,' MIGUEL','Male','1','4','4',2,4,4,5,5,1,0,1,'2',' '),(345,' jose','Male','2','4','4',3,5,5,5,5,1,1,1,'1,2,3',' '),(346,' PAM','Female','1','4','4',2,5,5,5,5,1,0,1,'1,3',' '),(347,' andriana','Female','1','7','7',1,4,4,4,4,1,1,1,'3',' '),(348,' DAVE','Male','1','4','4',2,4,5,5,5,1,0,1,'2',' NICE'),(349,' ','Female','1','4','5',3,5,5,5,5,1,0,1,'2',' '),(350,' AIRON','Male','1','4','6',2,5,5,5,5,1,1,1,'1',' NOTHING ITS PERFECT'),(351,' adre','Male','1','7','6',1,5,5,5,5,1,0,1,'2',' '),(352,' PATRICK','Male','1','6','6',2,5,5,5,5,1,1,1,'2',' '),(353,' JUMELLE','Female','1','6','6',1,5,5,5,5,1,1,1,'3',' '),(354,' ','Female','2','7','7',2,6,4,4,4,1,0,1,'1,2,3,4',' let your cashiers greet their customers and give a :)'),(355,' CJ DE JESUS','Male','1','4,7','3,4',2,4,4,5,5,1,1,1,'3',' '),(356,' melody ','Female','2','7','6',2,0,0,0,4,1,1,0,'3',' bigger place. '),(357,' RUTH ABENDAN','Female','1','3','4',2,4,4,4,5,1,0,1,'2,1',' '),(358,' ','Female','1','7,4','4,5',2,5,5,4,4,1,0,1,'3,2,1',' '),(359,' MARK MATEO','Male','5','6','5',2,0,0,0,4,1,1,0,'3',' BIGGER AREA.'),(360,' ','Female','1','4','6',2,5,4,4,4,1,1,1,'2',' '),(361,' KRIS SUNGA','Male','3','7','1',2,6,5,5,5,1,0,1,'2',' '),(362,' Airiel','Female','5','3,4','7,3',2,0,0,0,5,1,0,0,'2',' '),(363,' ARA CRUZ','Female','3','7','1',2,6,5,5,5,1,1,1,'3',' '),(364,' doreen','Female','5','7','6',3,5,4,5,5,1,1,1,'2',' '),(365,' ','Male','5','6','4',3,6,5,5,5,1,1,1,'3',' '),(366,' ','Female','1','4,6','4',2,5,5,5,5,1,0,1,'1',' '),(367,' ','Male','1','4','4',2,5,5,5,4,1,1,1,'2',' '),(368,' ','Male','1','6','6',1,6,4,4,4,1,1,1,'2,5',' '),(369,' ','Male','1','6','6',1,0,0,0,4,1,1,0,'1,2',' '),(370,' ','Male','1','6','6',1,0,0,0,4,1,1,0,'1',' '),(371,' ','Male','1','6','6',1,6,5,5,5,1,1,1,'3',' '),(372,' GIO','Male','1','4','1',2,5,4,4,5,1,0,1,'2',' '),(373,' ','Male','1','7','1',2,0,0,0,4,1,0,0,'2',' n/a'),(374,' RASMIN LAPUZ','Female','1','4','4',2,0,0,0,5,1,1,0,'3',' '),(375,' NATHALIE LEYVA','Female','1','4','4',2,0,0,0,5,1,1,0,'3',' '),(376,' Ricky','Male','1','4','4',3,5,4,5,5,1,1,1,'3',' '),(377,'','Female','2','7','1',2,5,4,4,5,1,1,1,'2',' '),(378,' ivory','Female','1','7','6',1,5,4,5,5,1,1,1,'2',' '),(379,' ','Female','2','7','7,6',2,5,5,5,5,1,1,1,'2',' '),(380,' ','Female','2','6','7',2,5,5,5,5,1,1,1,'2',' '),(381,' jian kyle','Male','1','7','6',1,5,4,5,5,1,1,1,'2',' '),(382,' jhonarace','Female','1','7','6',1,5,5,5,5,1,1,1,'2',' '),(383,' ','Male','2','7','7',3,4,5,4,4,1,1,1,'2',' '),(384,' JOJO PLACEROS','Male','2','6','6',2,5,5,5,5,1,1,1,'2',' '),(385,' grace placeros','Female','1','7','7',3,5,5,5,5,1,1,1,'2',' '),(386,' ','Male','1','4','6',1,0,0,0,5,1,1,0,'1',' '),(387,' jong placeros','Male','3','7','7',3,5,5,5,5,1,1,1,'2,1',' '),(388,' ','Male','1','1','1',1,5,5,5,5,1,1,1,'1',' '),(389,' ','Male','1','1','1',1,0,0,0,5,1,1,0,'1',' '),(390,' ','Male','1','1','1',1,0,0,0,5,1,1,0,'1',' '),(391,' PHILLIP','Male','2','7','7',3,0,0,0,4,1,1,0,'1','DEFINITELY'),(392,' ','Female','2','7','7',3,5,5,5,5,1,0,1,'2',' '),(393,' ROSE','Female','2','4','4',4,4,4,4,4,1,0,1,'2',' '),(394,' baby','Female','5','7','7',4,5,4,4,5,1,0,1,'2,3',' further improvement of packaging materials'),(395,' CYNTHIA','Female','2','4,5,6','6,4,5',3,5,5,5,5,1,0,1,'1,2',' '),(396,' ','Male','4','3','4',2,5,3,4,4,1,0,1,'3',' '),(397,' ','Female','2','6','6',2,5,3,5,5,1,1,1,'2',' '),(398,' chel cruz','Female','2','3,4,5,6,7,1','6,7,4',2,4,4,5,4,1,0,1,'1,2,3',' some products do not have price tags. '),(399,' ','Female','2','4','4',4,4,4,5,5,1,0,1,'2,1',' sana may taste test'),(400,' ','Female','2','7','7',4,5,4,5,5,1,1,1,'3,2,1',' THERE SHLD BE A  CONSUMER TASTE TEST FOR FOOD PRODUCTS.'),(401,' ','Male','2','4','4',2,5,5,5,5,1,0,1,'1,2',' '),(402,' laine','Female','2','4','4',2,5,4,4,5,1,1,1,'1',' '),(403,' ','Male','2','4','4',2,5,5,5,5,1,0,1,'1,2,3,4',' '),(404,' ','Male','3','4','4',2,4,4,4,4,1,1,1,'2',' keep up the good work'),(405,' JOHN CHRISTOPHER S. RABENA','Male','1','4,5,7,6','1',3,5,5,5,5,1,0,1,'1,2,3',' '),(406,' ','Male','2','4','4',3,5,5,5,5,1,1,1,'2',' '),(407,' lorraine','Female','1','6','5',2,0,0,0,5,1,1,0,'1,2,3',' more products to market'),(408,' AHN','Female','3','6','6',3,0,0,0,5,1,1,0,'1',' '),(409,' ','Female','1','4,6','4',2,5,5,5,5,1,1,1,'3,2',' '),(410,' JEN','Female','3','7','7',3,4,4,4,4,1,1,1,'2',' MORE ADVERTISEMENT\n'),(411,' John Vincent','Male','1','4,5,7','4',2,5,5,5,5,1,0,1,'1,2,3',' '),(412,' DANIELA DONATO','Female','1','4','4',1,5,5,4,4,1,1,1,'2',' NONE'),(413,' Daniel Ocasion','Male','1','7','5',2,5,5,5,5,1,1,1,'1,2,3',' '),(414,' ZEE','Male','1','4','4',1,4,5,5,4,1,1,1,'2',' NONE'),(415,' ','Female','2','6,5,7','6',2,0,0,0,5,1,0,0,'3',' '),(416,' ','Female','2','6,7,5','6',2,0,0,0,4,1,0,0,'1,2',' '),(417,' ','Female','2','6','6',2,0,0,0,5,1,0,0,'2',' '),(418,' ','Female','5','4,5','5,4',2,5,5,5,5,1,1,1,'1',' '),(419,' ','Male','1','6,4','6',2,0,0,0,5,1,0,0,'2',' '),(420,' JOY','Female','5','4,6,7','7,6',2,5,5,5,5,1,1,1,'1,2',' ITSGOOD'),(421,' ','Male','5','4,6','1',2,0,0,0,3,1,0,0,'2',' '),(422,' ','Male','2','6,7','6,7',2,4,5,5,5,1,0,1,'2,1',' '),(423,' cass','Female','1','4','4',2,0,0,0,4,1,1,0,'3',' '),(424,' MICOLE','Male','1','4','4',2,4,4,4,5,1,1,1,'3',' '),(425,' ','Female','1','6,4','4',2,5,5,5,5,1,0,1,'1,2',' '),(426,'','Female','1','6,4,5','6,4',2,4,4,4,4,1,1,1,'3',' '),(427,' ','Female','1','6,7,4','4',2,0,0,0,5,1,1,0,'1,2',' '),(428,' ','Female','1','6,4,5','6,4',2,4,4,4,4,1,1,1,'3',' '),(429,' ','Male','1','6','6,4',2,0,0,0,5,1,1,0,'3,2',' '),(430,' 70T','Male','1','2','5',2,5,3,3,5,1,1,1,'1',' '),(431,' JDKHKGHTKJG','Male','1','2','2',2,5,4,5,3,1,1,1,'4',' JRJR'),(432,' roberth','Male','1','7','7',2,0,0,0,4,1,1,0,'1,2',' good job'),(433,' jenny leigh','Female','2','4','4',2,5,5,5,5,1,0,1,'2',' more cashier pls'),(434,' ROAN ABORQUE','Male','1','2','2',2,5,4,4,3,1,1,1,'4',' '),(435,' jenny meigh','Female','2','1','1',2,0,0,0,5,1,1,0,'2',' good job'),(436,' H,H','Male','1','2','3',3,6,4,1,5,1,1,1,'1',' JFRSIGJSRTIGJ'),(437,' REMY','Female','5','7','7',4,5,5,5,5,1,0,1,'1',' CONTINUE IN INNOVATING'),(438,' abe','Male','5','7','7',4,5,5,5,5,1,0,1,'1,2,3,4,5',' '),(439,' ','Female','2','6,7','4',2,6,4,5,5,1,0,1,'2,5',' '),(440,' BREN','Male','1','7,6','7',2,0,0,0,4,1,0,0,'2,1',' '),(441,' rhea','Female','1','4,6,7,5','4,5,6,1',2,0,0,0,5,1,0,0,'1,2,3','wider space and more products for students such as those which can be used in schools\n'),(442,' MAE','Female','1','7','7',2,0,0,0,4,1,0,0,'1',' '),(443,' V ','Male','1','6','6',2,6,4,5,4,1,0,1,'4,1',' More stocks of resources so most of the participants would be accommodated.\n'),(444,' G','Female','1','4','4',2,6,4,5,4,1,0,1,'4,2,1','PLEASE HAVE A BIGGER SPACE FOR THE FOOD PRODUCTS AND THOSE EXHIBITS THAT REALLY ATTRACTS LOT OF PEOPLE.  '),(445,' CHIREYLEN GACHO','Female','1','6','6',2,5,4,5,4,1,1,1,'1',' '),(446,' kristine trishalyn bautista','Female','1','6','5',2,5,4,5,5,1,1,1,'3',''),(447,' HERSON','Male','1','4','4',2,5,4,5,5,1,1,1,'2',' PRICES WERE NOT CLEARLY SHOWN. ORIGIN OF PRODUCTS SHOULD BE HIGHLIGHTED.'),(448,' ','Female','2','6,7','4',2,6,5,5,5,1,0,1,'3',' '),(449,' ','Male','2','4,3','4,3',3,4,4,4,4,1,0,1,'1,2',' '),(450,' yoshi','Male','1','7','6',2,0,0,0,5,1,1,0,'1',' '),(451,' ','Male','2','4','4',2,0,0,0,4,1,0,0,'2',' '),(452,' ','Male','1','6,7','6,7',2,4,3,4,4,1,1,1,'2,3',' '),(453,' Rohanie','Female','1','6','6',3,5,5,5,5,1,1,1,'2',' more display of other product that are tested by DOST...\n'),(454,' SAMSIA  HADJIZAMAN SOCOR','Female','2','7','7',4,5,4,5,5,1,0,1,'2',' MORE PRODUCTS MORE GAIN AND IMPROVE HIGH âœ”'),(455,' JAIONE MATTHEW TEJADA','Male','1','6','4,1',1,0,0,0,5,1,1,0,'3',' MAKE YOUR BARGAIN LOWER\n'),(456,' ','Male','1','1','1',1,0,0,0,5,1,1,0,'5',' more games\n'),(457,' FAITH EVANGELISTA','Female','1','7','7',2,5,5,5,5,1,1,1,'2',' JUST CONTINUE TO BE BETTER\n'),(458,' dianella fran','Female','1','4,7,6','4,7,6',2,0,0,0,5,1,0,0,'2','keep up the good work\n'),(459,' LAWRENCE','Male','1','7','7',2,0,0,0,4,1,0,0,'3',' '),(460,' dyhle sajulga','Female','1','7','7',2,5,5,5,5,1,0,1,'2',' '),(461,' KARYLLE','Female','1','7','7',2,0,0,0,5,1,1,0,'3',' '),(462,' angela salvador','Female','1','7','7',2,0,0,0,5,1,1,0,'2',' '),(463,' ','Male','1','7','7,6,1,2,4',2,4,3,4,5,1,1,1,'3,5',' good ðŸ˜Š'),(464,' ','Female','1','7','6',1,0,0,0,4,1,0,0,'1',' '),(465,' ','Male','1','7,6','6',1,0,0,0,4,1,1,0,'3',' none'),(466,' ','Female','1','7','6',1,0,0,0,5,1,1,0,'3',' '),(467,' ','Male','1','7','4',2,0,0,0,4,1,0,0,'2',' nothing, g8od job'),(468,' Al','Male','1','7','6',2,4,4,4,4,1,0,1,'3',' '),(469,' andrei','Male','5','7','7,4',2,0,0,0,5,1,1,0,'3',' more organized event\n'),(470,' Manuel paolo R. gogolin','Male','1','5,7','7',2,0,0,0,5,1,1,0,'5',' Free wiri\n'),(471,' hemar','Male','1','7','4',2,0,0,0,5,1,1,0,'1,2,3,4',' free food'),(472,' Derek','Male','1','6','6,7',2,0,0,0,5,1,1,0,'1,2,3,4,5',' Free food'),(473,' pierreboy','Male','1','1','7',2,0,0,0,5,1,0,0,'1',' quality of the product.'),(474,' hemar','Male','1','7','4',2,0,0,0,5,1,1,0,'1,2,3,4,5',' nothing'),(475,' sharkboy','Male','1','7','7',2,5,5,5,5,1,1,1,'1,2,3,4,5',' quality of the products'),(476,' kristofer A. Ravida','Male','1','1','7',2,5,5,5,5,1,1,1,'2',' '),(477,' blesciile gamban','Female','1','5','6',2,4,4,5,4,1,1,1,'2',' '),(478,' ','Female','2','6,7,5,4','4,7,6',2,5,4,5,5,1,1,1,'3',' '),(479,' Avril Vianca Bardaje','Female','1','7','1',1,4,1,3,5,1,1,1,'1',' '),(480,' Ahyesza','Female','4','6','1',1,0,0,0,4,1,0,0,'1',' '),(481,' AVRIL VIANCA L BARDAJE','Female','1','3','1',1,4,1,3,4,1,1,1,'3',' '),(482,' AVRIL','Female','1','1','1',1,4,5,1,5,1,1,1,'4',' ');

/* Function  structure for function  `fnCountElements` */

/*!50003 DROP FUNCTION IF EXISTS `fnCountElements` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fnCountElements`(`Source` VARCHAR(100), `Delimit` VARCHAR(10)) RETURNS int(11)
    READS SQL DATA
BEGIN
	-- Stored Function created by: Eng'r Nolan Sunico
	-- Created: 05/24/2018 
	-- Time: 2:127 PM
	-- This function count the number delimiter occurs in a string
	RETURN ROUND ((
            CHAR_LENGTH(Source)
            - CHAR_LENGTH( REPLACE (Source, Delimit, "") ) 
	    ) / CHAR_LENGTH(Delimit)        
	)+1;
    END */$$
DELIMITER ;

/* Function  structure for function  `fngetGender` */

/*!50003 DROP FUNCTION IF EXISTS `fngetGender` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetGender`(`igender` VARCHAR(250)) RETURNS decimal(10,0)
BEGIN
	IF (igender = "Male") THEN
		RETURN (SELECT COUNT(*) AS Male FROM tbl_register WHERE gender=igender);
	ELSEIF (igender = "Female") THEN
		RETURN (SELECT COUNT(*) AS Female FROM tbl_register WHERE gender=igender);
	END IF;
    END */$$
DELIMITER ;

/* Function  structure for function  `fnSplit` */

/*!50003 DROP FUNCTION IF EXISTS `fnSplit` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fnSplit`(`str` VARCHAR(255), `delim` VARCHAR(12), `pos` INT) RETURNS varchar(255) CHARSET utf8
RETURN REPLACE(
	SUBSTRING(
		SUBSTRING_INDEX(str , delim , pos) ,
		CHAR_LENGTH(
			SUBSTRING_INDEX(str , delim , pos - 1)
		) + 1
	) ,
	delim ,
	''
) */$$
DELIMITER ;

/* Function  structure for function  `fngetEvent` */

/*!50003 DROP FUNCTION IF EXISTS `fngetEvent` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetEvent`(`ievent` VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
BEGIN
	IF (ievent = 1) THEN
		RETURN (SELECT COUNT(*) AS tv FROM tbl_register WHERE `event`=ievent);
	ELSEIF (ievent = 2) THEN
		RETURN (SELECT COUNT(*) AS radio FROM tbl_register WHERE `event`=ievent);
	ELSEIF (ievent = 3) THEN
		RETURN (SELECT COUNT(*) AS newspaper FROM tbl_register WHERE `event`=ievent);
	ELSEIF (ievent = 4) THEN
		RETURN (SELECT COUNT(*) AS socialmedia FROM tbl_register WHERE `event`=ievent);
	ELSEIF (ievent = 5) THEN
		RETURN (SELECT COUNT(*) AS ads FROM tbl_register WHERE `event`=ievent);
	ELSEIF (ievent = 6) THEN
		RETURN (SELECT COUNT(*) AS wom FROM tbl_register WHERE `event`=ievent);
	ELSEIF (ievent = 7) THEN
		RETURN (SELECT COUNT(*) AS invitation FROM tbl_register WHERE `event`=ievent);
	END IF;
    END */$$
DELIMITER ;

/* Function  structure for function  `fngetEvent2` */

/*!50003 DROP FUNCTION IF EXISTS `fngetEvent2` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetEvent2`(`ievent` VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
BEGIN
	IF (ievent = 1) THEN
		-- RETURN (SELECT COUNT(*) AS tv FROM tmpevent WHERE `event`=ievent);
		RETURN(SELECT COUNT(*) as tv FROM `tmpevent` WHERE `event`=1 ORDER BY `event`);
	ELSEIF (ievent = 2) THEN
		RETURN (SELECT COUNT(*) AS radio FROM tmpevent WHERE `event`=ievent);
	ELSEIF (ievent = 3) THEN
		RETURN (SELECT COUNT(*) AS newspaper FROM tmpevent WHERE `event`=ievent);
	ELSEIF (ievent = 4) THEN
		RETURN (SELECT COUNT(*) AS socialmedia FROM tmpevent WHERE `event`=ievent);
	ELSEIF (ievent = 5) THEN
		RETURN (SELECT COUNT(*) AS ads FROM tmpevent WHERE `event`=ievent);
	ELSEIF (ievent = 6) THEN
		RETURN (SELECT COUNT(*) AS wom FROM tmpevent WHERE `event`=ievent);
	ELSEIF (ievent = 7) THEN
		RETURN (SELECT COUNT(*) AS invitation FROM tmpevent WHERE `event`=ievent);
	END IF;
    END */$$
DELIMITER ;

/* Function  structure for function  `fngetFeedback` */

/*!50003 DROP FUNCTION IF EXISTS `fngetFeedback` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetFeedback`(`itype` VARCHAR(250), `iq` VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
BEGIN
if (iq='transaction') then
	IF (itype = 1) THEN
		RETURN (SELECT count(`transaction`) AS notsatisfied FROM tbl_register WHERE `transaction` = 1);
	ELSEIF (itype = 2) THEN
		RETURN (SELECT count(`transaction`) AS somewhatsatisfied FROM tbl_register WHERE `transaction`=2);
	ELSEIF (itype = 3) THEN
		RETURN (SELECT COUNT(`transaction`) AS neutral FROM tbl_register WHERE `transaction`=3);
	ELSEIF (itype = 4) THEN
		RETURN (SELECT count(`transaction`) AS satisfied FROM tbl_register WHERE `transaction`=4);
	ELSEIF (itype = 5) THEN
		RETURN (SELECT count(`transaction`) AS verysatisfied FROM tbl_register WHERE `transaction`=5);
	END IF;
end if;
IF (iq='pricing') THEN
	IF (itype = 1) THEN
		RETURN (SELECT COUNT(`pricing`) AS notsatisfied FROM tbl_register WHERE `pricing` = 1);
	ELSEIF (itype = 2) THEN
		RETURN (SELECT COUNT(`pricing`) AS somewhatsatisfied FROM tbl_register WHERE `pricing`=2);
	ELSEIF (itype = 3) THEN
		RETURN (SELECT COUNT(`pricing`) AS neutral FROM tbl_register WHERE `pricing`=3);
	ELSEIF (itype = 4) THEN
		RETURN (SELECT COUNT(`pricing`) AS satisfied FROM tbl_register WHERE `pricing`=4);
	ELSEIF (itype = 5) THEN
		RETURN (SELECT COUNT(`pricing`) AS verysatisfied FROM tbl_register WHERE `pricing`=5);
	END IF;
END IF;
IF (iq='relationship') THEN
	IF (itype = 1) THEN
		RETURN (SELECT COUNT(`relationship`) AS notsatisfied FROM tbl_register WHERE `relationship` = 1);
	ELSEIF (itype = 2) THEN
		RETURN (SELECT COUNT(`relationship`) AS somewhatsatisfied FROM tbl_register WHERE `relationship`=2);
	ELSEIF (itype = 3) THEN
		RETURN (SELECT COUNT(`relationship`) AS neutral FROM tbl_register WHERE `relationship`=3);
	ELSEIF (itype = 4) THEN
		RETURN (SELECT COUNT(`relationship`) AS satisfied FROM tbl_register WHERE `relationship`=4);
	ELSEIF (itype = 5) THEN
		RETURN (SELECT COUNT(`relationship`) AS verysatisfied FROM tbl_register WHERE `relationship`=5);
	END IF;
END IF;
IF (iq='overall') THEN
	IF (itype = 1) THEN
		RETURN (SELECT COUNT(`overall`) AS notsatisfied FROM tbl_register WHERE `overall` = 1);
	ELSEIF (itype = 2) THEN
		RETURN (SELECT COUNT(`overall`) AS somewhatsatisfied FROM tbl_register WHERE `overall`=2);
	ELSEIF (itype = 3) THEN
		RETURN (SELECT COUNT(`overall`) AS neutral FROM tbl_register WHERE `overall`=3);
	ELSEIF (itype = 4) THEN
		RETURN (SELECT COUNT(`overall`) AS satisfied FROM tbl_register WHERE `overall`=4);
	ELSEIF (itype = 5) THEN
		RETURN (SELECT COUNT(`overall`) AS verysatisfied FROM tbl_register WHERE `overall`=5);
	END IF;
END IF;
IF (iq='thumbs') THEN
	IF (itype = 0) THEN
		RETURN (SELECT COUNT(`thumbs`) AS `dislike` FROM tbl_register WHERE `thumbs` = 0);
	ELSEIF (itype = 1) THEN
		RETURN (SELECT COUNT(`thumbs`) AS `like` FROM tbl_register WHERE `thumbs`=1);
	END IF;
END IF;
IF (iq='attended') THEN
	IF (itype = 0) THEN
		RETURN (SELECT COUNT(`haveAttend`) AS `notattended` FROM tbl_register WHERE `haveAttend` = 0);
	ELSEIF (itype = 1) THEN
		RETURN (SELECT COUNT(`haveAttend`) AS `attended` FROM tbl_register WHERE `haveAttend`=1);
	END IF;
END IF;
IF (iq='purchase') THEN
	IF (itype = 0) THEN
		RETURN (SELECT COUNT(`havePurchase`) AS `nopurchase` FROM tbl_register WHERE `havePurchase` = 0);
	ELSEIF (itype = 1) THEN
		RETURN (SELECT COUNT(`havePurchase`) AS `purchase` FROM tbl_register WHERE `havePurchase`=1);
	END IF;
END IF;
    END */$$
DELIMITER ;

/* Function  structure for function  `fnGetMarketplace` */

/*!50003 DROP FUNCTION IF EXISTS `fnGetMarketplace` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fnGetMarketplace`(`imarketplace` VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
BEGIN
	IF (imarketplace = 1) THEN
		RETURN (SELECT COUNT(*) AS tv FROM tbl_register WHERE `marketplace`=imarketplace);
	ELSEIF (imarketplace = 2) THEN
		RETURN (SELECT COUNT(*) AS radio FROM tbl_register WHERE `marketplace`=imarketplace);
	ELSEIF (imarketplace = 3) THEN
		RETURN (SELECT COUNT(*) AS newspaper FROM tbl_register WHERE `marketplace`=imarketplace);
	ELSEIF (imarketplace = 4) THEN
		RETURN (SELECT COUNT(*) AS socialmedia FROM tbl_register WHERE `marketplace`=imarketplace);
	ELSEIF (imarketplace = 5) THEN
		RETURN (SELECT COUNT(*) AS ads FROM tbl_register WHERE `marketplace`=imarketplace);
	ELSEIF (imarketplace = 6) THEN
		RETURN (SELECT COUNT(*) AS wom FROM tbl_register WHERE `marketplace`=imarketplace);
	ELSEIF (imarketplace = 7) THEN
		RETURN (SELECT COUNT(*) AS invitation FROM tbl_register WHERE `marketplace`=imarketplace);
	END IF;
    END */$$
DELIMITER ;

/* Function  structure for function  `fngetOrganization` */

/*!50003 DROP FUNCTION IF EXISTS `fngetOrganization` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetOrganization`(`iorganization` VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
BEGIN
	IF (iorganization = 1) THEN
		RETURN (SELECT COUNT(*) AS academe FROM tbl_register WHERE organization=iorganization);
	ELSEIF (iorganization = 2) THEN
		RETURN (SELECT COUNT(*) AS govtagency FROM tbl_register WHERE organization=iorganization);
	ELSEIF (iorganization = 3) THEN
		RETURN (SELECT COUNT(*) AS industry FROM tbl_register WHERE organization=iorganization);
	ELSEIF (iorganization = 4) THEN
		RETURN (SELECT COUNT(*) AS peopleorg FROM tbl_register WHERE organization=iorganization);
	ELSEIF (iorganization = 5) THEN
		RETURN (SELECT COUNT(*) AS individual FROM tbl_register WHERE organization=iorganization);
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetDynamicChart` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetDynamicChart` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetDynamicChart`(`itype` VARCHAR(100))
    READS SQL DATA
BEGIN
	DECLARE done INT DEFAULT FALSE;
	DECLARE `eventss` INT(11);
	declare `eventcount` int(11);
	DECLARE z INT(1);
	DECLARE my_cursor CURSOR FOR SELECT COUNT(*) AS eventCount,`event` FROM `tmpevent` WHERE `event`<>0 GROUP BY `event`;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;	
	DROP TABLE IF EXISTS `tmpevent`;
	CREATE TEMPORARY TABLE `tmpevent` (
		`eventsid` INT(11) NOT NULL AUTO_INCREMENT,
		`event` INT(11),	
		PRIMARY KEY (`eventsid`)
	);
	DROP TABLE IF EXISTS `tmptally`;
	CREATE TEMPORARY TABLE `tmptally` (
		`tallyid` INT(11) NOT NULL AUTO_INCREMENT,
		`tv` INT(11),	
		`radio` int(11),
		`newspaper` INT(11),
		`socialmedia` INT(11),
		`ads` INT(11),
		`wom` INT(11),
		`invitation` INT(11),
		PRIMARY KEY (`tallyid`)
	);  
	insert into `tmptally`(`tv`,`radio`,`newspaper`,`socialmedia`,`ads`,`wom`,`invitation`) values(0,0,0,0,0,0,0);
	set z=0;
	WHILE z  <= 7 DO
	SET  z = z + 1; 
	if itype="event" then
	INSERT INTO tmpevent(`event`) 
	(SELECT fnSplit(`event`,',',z) FROM tbl_register); 
	end if;
	if itype="marketplace" then
	INSERT INTO tmpevent(`event`) 
	(SELECT fnSplit(`marketplace`,',',z) FROM tbl_register); 
	end if;
	END WHILE;
	 OPEN my_cursor;
	  read_loop: LOOP
	    FETCH my_cursor INTO eventcount,eventss;
	  
	    if eventss=1 then
		update `tmptally` set `tv`=eventcount;
	    end if;
	    IF eventss=2 THEN
		UPDATE `tmptally` SET `radio`=eventcount;
	    END IF;
	    IF eventss=3 THEN
		UPDATE `tmptally` SET `newspaper`=eventcount;
	    END IF;
	    IF eventss=4 THEN
		UPDATE `tmptally` SET `socialmedia`=eventcount;
	    END IF;
	    IF eventss=5 THEN
		UPDATE `tmptally` SET `ads`=eventcount;
	    END IF;
	    IF eventss=6 THEN
		UPDATE `tmptally` SET `wom`=eventcount;
	    END IF;
	    IF eventss=7 THEN
		UPDATE `tmptally` SET `invitation`=eventcount;
	    END IF;
	    IF done THEN
	       LEAVE read_loop;
	    END IF;
	  END LOOP;
	  CLOSE my_cursor;
	  
	  SET @SQL='SELECT * from tmptally';
	     PREPARE stmt1 FROM @SQL;
	     EXECUTE stmt1;
	  DEALLOCATE PREPARE stmt1;
	  	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetMarketPlace` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetMarketPlace` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetMarketPlace`(`itype` VARCHAR(100))
    READS SQL DATA
BEGIN
	DECLARE done INT DEFAULT FALSE;
	DECLARE `eventss` INT(11);
	declare `eventcount` int(11);
	DECLARE z INT(1);
	DECLARE my_cursor CURSOR FOR SELECT COUNT(*) AS eventCount,`event` FROM `tmpevent` WHERE `event`<>0 GROUP BY `event`;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;	
	DROP TABLE IF EXISTS `tmpevent`;
	CREATE TEMPORARY TABLE `tmpevent` (
		`eventsid` INT(11) NOT NULL AUTO_INCREMENT,
		`event` INT(11),	
		PRIMARY KEY (`eventsid`)
	);
	DROP TABLE IF EXISTS `tmptally`;
	CREATE TEMPORARY TABLE `tmptally` (
		`tallyid` INT(11) NOT NULL AUTO_INCREMENT,
		`tv` INT(11),	
		`radio` int(11),
		`newspaper` INT(11),
		`socialmedia` INT(11),
		`ads` INT(11),
		`wom` INT(11),
		`invitation` INT(11),
		PRIMARY KEY (`tallyid`)
	);  
	insert into `tmptally`(`tv`,`radio`,`newspaper`,`socialmedia`,`ads`,`wom`,`invitation`) values(0,0,0,0,0,0,0);
	set z=0;
	WHILE z  <= 7 DO
	SET  z = z + 1; 
	if itype="event" then
	INSERT INTO tmpevent(`event`) 
	(SELECT fnSplit(`event`,',',z) FROM tbl_register); 
	end if;
	if itype="marketplace" then
	INSERT INTO tmpevent(`event`) 
	(SELECT fnSplit(`marketplace`,',',z) FROM tbl_register); 
	end if;
	END WHILE;
	 OPEN my_cursor;
	  read_loop: LOOP
	    FETCH my_cursor INTO eventcount,eventss;
	  
	    if eventss=1 then
		update `tmptally` set `tv`=eventcount;
	    end if;
	       IF eventss=2 THEN
		UPDATE `tmptally` SET `radio`=eventcount;
	    END IF;
	     IF eventss=3 THEN
		UPDATE `tmptally` SET `newspaper`=eventcount;
	    END IF;
	       IF eventss=4 THEN
		UPDATE `tmptally` SET `socialmedia`=eventcount;
	    END IF;
	       IF eventss=5 THEN
		UPDATE `tmptally` SET `ads`=eventcount;
	    END IF;
	       IF eventss=6 THEN
		UPDATE `tmptally` SET `wom`=eventcount;
	    END IF;
	           IF eventss=7 THEN
		UPDATE `tmptally` SET `invitation`=eventcount;
	    END IF;
	    IF done THEN
	       LEAVE read_loop;
	    END IF;
	  END LOOP;
	  CLOSE my_cursor;
	  
	  SET @SQL='SELECT * from tmptally';
	     PREPARE stmt1 FROM @SQL;
	     EXECUTE stmt1;
	  DEALLOCATE PREPARE stmt1;
	  	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
