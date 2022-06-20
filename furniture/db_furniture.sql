/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB : Database - db_furniture
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_furniture` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_furniture`;

/*Table structure for table `tb_furniture` */

DROP TABLE IF EXISTS `tb_furniture`;

CREATE TABLE `tb_furniture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_furniture` */

insert  into `tb_furniture`(`id`,`image`,`name`,`stock`,`price`,`phone`) values 
(16,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmKQN2Uq8yC8WGy7l4Mvv1RHQfm6RndtHOYg&usqp=CAU','Bangku','10','20000','+6285766689697'),
(18,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF8e_uhkqLtTQq3qGxD3Urn3juZ2VIr6T2Fg&usqp=CAU','Meja Belajar','50','120000','+6285766689697'),
(19,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR20SF0AHT0suIzgYR12vj8ZoDIJo8Rdngy8g&usqp=CAU','Lemari','12','500000','+6254578461');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
