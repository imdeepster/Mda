/*
SQLyog Ultimate v8.55 
MySQL - 5.0.15-nt : Database - mda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mda` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mda`;

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `userid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `client` */

insert  into `client`(`userid`,`password`) values ('client2','client2'),('client3','client3'),('client4','client4'),('client5','client5'),('vetech.software@gmail.com','ve_software2005');

/*Table structure for table `crypto` */

DROP TABLE IF EXISTS `crypto`;

CREATE TABLE `crypto` (
  `id_` int(11) NOT NULL,
  `key` varchar(45) default NULL,
  PRIMARY KEY  (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `crypto` */

insert  into `crypto`(`id_`,`key`) values (1,'151337'),(2,'158365'),(3,'139830'),(4,'167921'),(5,'159266'),(6,'108006'),(7,'145819'),(8,'147447'),(9,'125538'),(10,'151843'),(11,'129797'),(12,'103273'),(13,'167910'),(14,'194950'),(15,'112852'),(16,'141600'),(17,'171486');

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `a1` varchar(40) NOT NULL,
  `a2` varchar(45) NOT NULL,
  `a3` varchar(45) NOT NULL,
  `a4` varchar(45) NOT NULL,
  `a5` varchar(45) NOT NULL,
  `b1` varchar(45) NOT NULL,
  `b2` varchar(45) NOT NULL,
  `b3` varchar(45) NOT NULL,
  `b4` varchar(45) NOT NULL,
  `b5` varchar(45) NOT NULL,
  `client` varchar(45) NOT NULL,
  `month` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `id_` int(11) NOT NULL,
  `verified` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data` */

insert  into `data`(`a1`,`a2`,`a3`,`a4`,`a5`,`b1`,`b2`,`b3`,`b4`,`b5`,`client`,`month`,`year`,`id_`,`verified`) values ('','','','','\0','','\0','','','','client1','MAR','2010',1,'yes'),('','','\0','','\0','','','','','','client1','AUG','2012',2,'no'),('\0\0','','\0','\0','\0','','','','','\0','client2','-1','-1',3,'no'),('\0','','\0','','\0','','\0','','\0','','client3','JAN','2010',4,'no'),('BT[[Z','BT[[Z','BT[[Z','BT[[Z','BT[[Z','BT[[Z','BT[[Z','BT[[Z','BT[[Z','BT[[Z','client1','FEB','2011',5,'no'),('\0\0','\0\0','\r','\0\n','\0','	','','','	','','client5','JAN','2012',6,'no'),('@CPJE@','FQGL','FEB]CM','FGGLVN','BPR','BUG_B^P','BPRKV','BPR','BPRPBV','BPRKU','client1','MAR','2015',7,'no'),('YG_GPQY','BDPR_','BD','BP_GP_','BP_GPQY','BDRP_','BPPGSYS','UG_PG','UG_GP_','B\\_','client2','SEP','2015',8,'no'),('YA]FW^Y','BZFQUP','BZF','BV]FWP','BV]FW^Y','BZFSWP','BVR]@YU','UA]Q@','UA]FWP','BZ]','client2','SEP','2015',9,'no'),('YFYKPUY','B]BR[','B]B','BQYKP[','BQYKPUY','B]B^P[','BQVPGWYR','UFYG','UFYKP[','B]Y','client2','SEP','2015',10,'no'),('YAQD]QY','BZJS__','BZJ','BVQD]_','BVQD]QY','BZJQ]_','BV^_JSYU','UAQSJ','UAQD]_','BZQ','client2','SEP','2015',11,'no'),('YC[ASUY','BX@VQ[','BX@','BT[AS[','BT[ASUY','BX@TS[','BTTZDWYW','UC[VD','UC[AS[','BX[','client2','SEP','2015',12,'no'),('WQV','WQV_V','WQVJUW','BWP]BVV','WWP_PCUQ','UPD^BT','UEP]BW','V^SJV','UEPJPTV','WRPXBTV','client1','FEB','2015',13,'no'),('VXSJR','B_SXFW','UJS]FW','B]R^FTV','U_SJQWB]S','UJSJQWVJ','B]S]FW','V]G^FTV','B]R^QCV','VJP^FT','client1','FEB','2016',14,'no'),('VPUKR','BWUYFU','UBUFU','BUT_FVV','UWUKQUBUU','UBUKQUVB','BUUFU','VUA_FVV','BUT_QAV','VBV_FV','client1','FEB','2016',15,'no'),('VR[','[RVVWW','[RVVWWS','W_ZP[V','W_W]V[','Z]WO[VH','ZRH]V[','ZRZP[VZ','W_WQ[V','W_W','client1','JUN','2014',16,'no'),('PPPG_','PPPG_E','PPBU_E','PPBU_EP','BPPG_E','BVVUKQ','BVVGYQW','BVVUKQ','BVVUKQ','PPPG_','client1','FEB','2015',17,'no');

/*Table structure for table `data_bck` */

DROP TABLE IF EXISTS `data_bck`;

CREATE TABLE `data_bck` (
  `a1` varchar(40) NOT NULL,
  `a2` varchar(45) NOT NULL,
  `a3` varchar(45) NOT NULL,
  `a4` varchar(45) NOT NULL,
  `a5` varchar(45) NOT NULL,
  `b1` varchar(45) NOT NULL,
  `b2` varchar(45) NOT NULL,
  `b3` varchar(45) NOT NULL,
  `b4` varchar(45) NOT NULL,
  `b5` varchar(45) NOT NULL,
  `client` varchar(45) NOT NULL,
  `month` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `id_` int(11) NOT NULL,
  `verified` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_bck` */

insert  into `data_bck`(`a1`,`a2`,`a3`,`a4`,`a5`,`b1`,`b2`,`b3`,`b4`,`b5`,`client`,`month`,`year`,`id_`,`verified`) values ('23','23','55','33','116','41','52','43','56','33','client1','MAR','2010',1,'no'),('23','23','55','33','116','41','52','43','56','33','client1','AUG','2012',2,'no'),('13','44','11','11','43','44','66','44','54','33','client2','-1','-1',3,'no');

/*Table structure for table `ownr` */

DROP TABLE IF EXISTS `ownr`;

CREATE TABLE `ownr` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownr` */

insert  into `ownr`(`userid`,`password`,`gender`,`age`,`emailid`,`date`,`phone`) values ('sabil','sabil','male','25','dotnetjava.projects@gmail.com','2015-10-27','8807232472'),('selva','123','male','26','fdsdfg@gmail.com','2016-04-02','234567890');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `emailid` varchar(45) default NULL,
  `date` date default NULL,
  `phone` varchar(45) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
