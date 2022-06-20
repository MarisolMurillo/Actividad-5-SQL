-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para heladeria_y_pizzeria_la_65
DROP DATABASE IF EXISTS `heladeria_y_pizzeria_la_65`;
CREATE DATABASE IF NOT EXISTS `heladeria_y_pizzeria_la_65` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `heladeria_y_pizzeria_la_65`;

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `age` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.customers: ~5 rows (aproximadamente)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `age`) VALUES
	(1, 'rodolfo hernandez', 80),
	(2, 'carlos martines', 23),
	(3, 'fernanda garcia ', 42),
	(4, 'martin gamboa', 7),
	(5, 'sandra gomez', 3);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.discounts
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `discount_value` float(26,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla esta los registros de los descuentos que se le aplicara al cliente';

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.discounts: ~4 rows (aproximadamente)
DELETE FROM `discounts`;
INSERT INTO `discounts` (`id`, `name`, `discount_value`) VALUES
	(1, 'cumpleaños', 0.150000),
	(2, 'miercoles feliz', 0.500000),
	(3, 'sabado fiesta', 0.100000),
	(4, 'mas de 5 unidades', 0.050000),
	(5, '14 febrero', 0.140000);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `price` float(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.products: ~5 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `price`) VALUES
	(1, 'helado ', 14000.00),
	(2, 'pizza', 100000.00),
	(3, 'pollo', 50000.00),
	(4, 'jugo_natural', 3500.00),
	(5, 'gomita_oso', 1800.00);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.products_sales
DROP TABLE IF EXISTS `products_sales`;
CREATE TABLE IF NOT EXISTS `products_sales` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(45) NOT NULL DEFAULT '',
  `sale_id` varchar(45) NOT NULL DEFAULT '',
  `quantity` smallint(6) NOT NULL,
  `price` float(26,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.products_sales: ~5 rows (aproximadamente)
DELETE FROM `products_sales`;
INSERT INTO `products_sales` (`id`, `product_id`, `sale_id`, `quantity`, `price`) VALUES
	(1, '1', '1', 2, 14000.000000),
	(2, '2', '1', 3, 100000.000000),
	(3, '3', '1', 1, 50000.000000),
	(4, '4', '1', 2, 3500.000000),
	(5, '5', '1', 10, 1800.000000);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `value` float(26,2) NOT NULL,
  `customer_id` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales: ~5 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `date`, `value`, `customer_id`) VALUES
	(1, '2022-08-16', 28000.00, '1'),
	(2, '2022-07-08', 300000.00, '2'),
	(3, '0000-00-00', 50000.00, '3'),
	(4, '0000-00-00', 7000.00, '4'),
	(5, '0000-00-00', 18000.00, '5');

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales_discounts
DROP TABLE IF EXISTS `sales_discounts`;
CREATE TABLE IF NOT EXISTS `sales_discounts` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sale_id` varchar(45) NOT NULL DEFAULT '',
  `discount_id` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales_discounts: ~5 rows (aproximadamente)
DELETE FROM `sales_discounts`;
INSERT INTO `sales_discounts` (`id`, `sale_id`, `discount_id`) VALUES
	(1, '1', '1'),
	(2, '2', '1'),
	(3, '3', '1'),
	(4, '4', '1'),
	(5, '5', '1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
