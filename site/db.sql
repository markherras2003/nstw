/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.30-MariaDB : Database - nstw
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_register` */

insert  into `tbl_register`(`register_id`,`full_name`,`gender`,`organization`,`event`,`marketplace`,`agebracket`,`transaction`,`pricing`,`relationship`,`overall`,`thumbs`,`haveAttend`,`havePurchase`,`insights`,`reactions`) values (85,'Larry','Male','5','4,5','5,3',2,5,5,5,5,1,1,1,'5,3','test'),(86,'Larry','Male','5','5,4','4,3',2,4,4,5,5,1,1,1,'3,2','test'),(87,'Test','Male','5','4,5,1','4,5',2,5,4,5,5,1,0,1,'2,3,5','test'),(88,'test1','Male','5','5,4','2,1',2,0,0,0,5,1,0,0,'5,1','test'),(89,'Testing2','Female','5','5,7','5,4',2,0,0,0,5,1,0,0,'1,2','test'),(90,'ss','Male','5','7,2','4,2',5,0,0,0,5,1,0,0,'2,1,4,3','test '),(91,'eee','Male','5','5','5',2,5,5,4,4,1,1,1,'2,1','test'),(92,'test','Male','5','5,4,3','5,4,3,2',2,0,0,0,5,1,1,0,'1,3,4','stststststst'),(93,'adm','Male','2','1,2,3,4,5','1,2,3',1,4,4,4,4,1,0,1,'1','asd'),(94,'terdsdr','Male','5','5,3,2','4,7,1,6',2,0,0,0,5,1,0,0,'1,2','test'),(95,'teststt','Male','5','3,4,5','5,2,1',2,5,4,5,5,1,1,1,'1,2,5,4','ddrrrrrer'),(96,'tessrfsrsrr','Female','5','5,1,2','3,7',2,5,5,4,5,1,1,1,'1,2,5','gdfsfsfsf'),(97,'sfssrfs','Female','1','3,2,7','5,1,7',1,5,5,5,4,1,1,1,'1','test'),(98,'dadad','Male','5','5,3,4','3,1,7',2,0,0,0,5,1,0,0,'1,2,5','test'),(99,'drrrwrw','Male','5','2','5,7',2,0,0,0,5,1,0,0,'1','test'),(100,'Larry','Male','5','5','3,4',2,5,5,5,5,1,0,1,'2,4,5','fhfhhhdhdhd'),(101,'fhfhdh','Male','5','4,3','5,3,7',2,5,5,5,5,1,1,1,'3,2,1','gvhfvdhdhdh'),(102,'sfasfasf','Male','5','4','5',2,0,0,0,5,1,1,0,'2,3','cgbchgfcshsh'),(103,'fjfjfj','Male','3','4,5','5,4',2,0,0,0,5,1,1,0,'4,3','fdgdfgsgsg'),(104,'fafasgas','Male','5','4','4',2,0,0,0,5,1,1,0,'2,4,5','fsgsgsgsg');

/* Function  structure for function  `fnCountElements` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fnCountElements`(
	Source VARCHAR(100),
	Delimit VARCHAR(10)) RETURNS int(11)
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

/* Function  structure for function  `fngetEvent` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetEvent`(ievent VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
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

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetEvent2`(ievent VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
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

/* Function  structure for function  `fngetGender` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetGender`(igender VARCHAR(250)) RETURNS decimal(10,0)
BEGIN
	IF (igender = "Male") THEN
		RETURN (SELECT COUNT(*) AS Male FROM tbl_register WHERE gender=igender);
	ELSEIF (igender = "Female") THEN
		RETURN (SELECT COUNT(*) AS Female FROM tbl_register WHERE gender=igender);
	END IF;
    END */$$
DELIMITER ;

/* Function  structure for function  `fnSplit` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fnSplit`(
	str VARCHAR(255) ,
	delim VARCHAR(12) ,
	pos INT
) RETURNS varchar(255) CHARSET utf8
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

/* Function  structure for function  `fngetFeedback` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetFeedback`(itype VARCHAR(250),
							  iq VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
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
    END */$$
DELIMITER ;

/* Function  structure for function  `fnGetMarketplace` */

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fnGetMarketplace`(imarketplace VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
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

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fngetOrganization`(iorganization VARCHAR(250)) RETURNS varchar(100) CHARSET latin1
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

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetDynamicChart`(
itype varchar(100))
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

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetMarketPlace`(
itype varchar(100))
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
