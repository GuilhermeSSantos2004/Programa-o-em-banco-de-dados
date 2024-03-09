/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `pizzaria2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pizzaria2`;

CREATE TABLE IF NOT EXISTS `cardapio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `obs` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `cardapio` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardapio` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `endereco` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `tel` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `controlepizza` (
  `id_cont` int(11) NOT NULL AUTO_INCREMENT,
  `cont_data` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `id_contcard` int(11) DEFAULT NULL,
  `horario` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_cont`),
  KEY `id_contcard` (`id_contcard`),
  CONSTRAINT `controlepizza_ibfk_1` FOREIGN KEY (`id_contcard`) REFERENCES `cardapio` (`id`),
  CONSTRAINT `controlepizza_ibfk_2` FOREIGN KEY (`id_cont`) REFERENCES `pedido` (`id`),
  CONSTRAINT `controlepizza_ibfk_3` FOREIGN KEY (`id_contcard`) REFERENCES `cardapio` (`id`),
  CONSTRAINT `controlepizza_ibfk_4` FOREIGN KEY (`id_cont`) REFERENCES `pedido` (`id`),
  CONSTRAINT `controlepizza_ibfk_5` FOREIGN KEY (`id_contcard`) REFERENCES `cardapio` (`id`),
  CONSTRAINT `controlepizza_ibfk_6` FOREIGN KEY (`id_cont`) REFERENCES `pedido` (`id`),
  CONSTRAINT `controlepizza_ibfk_7` FOREIGN KEY (`id_contcard`) REFERENCES `cardapio` (`id`),
  CONSTRAINT `controlepizza_ibfk_8` FOREIGN KEY (`id_cont`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `controlepizza` DISABLE KEYS */;
/*!40000 ALTER TABLE `controlepizza` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `estoque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `custo` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `obs` double DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `formadepagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `formadepagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `formadepagamento` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(11) NOT NULL,
  `cod_cliente` int(11) NOT NULL,
  `total` float NOT NULL DEFAULT 0,
  `id_pagamento` int(11) NOT NULL,
  `obs` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cod_cliente` (`cod_cliente`),
  KEY `id_pagamento` (`id_pagamento`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_pagamento`) REFERENCES `formadepagamento` (`id`),
  CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `pedido_ibfk_4` FOREIGN KEY (`id_pagamento`) REFERENCES `formadepagamento` (`id`),
  CONSTRAINT `pedido_ibfk_5` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `pedido_ibfk_6` FOREIGN KEY (`id_pagamento`) REFERENCES `formadepagamento` (`id`),
  CONSTRAINT `pedido_ibfk_7` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `pedido_ibfk_8` FOREIGN KEY (`id_pagamento`) REFERENCES `formadepagamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `receita` (
  `id_receita` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pizza` int(11) DEFAULT NULL,
  `cod_estoque` int(11) DEFAULT NULL,
  `qts_receita` float DEFAULT NULL,
  `incred` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_receita`),
  KEY `cod_pizza` (`cod_pizza`),
  KEY `cod_estoque` (`cod_estoque`),
  CONSTRAINT `receita_ibfk_1` FOREIGN KEY (`cod_pizza`) REFERENCES `cardapio` (`id`),
  CONSTRAINT `receita_ibfk_2` FOREIGN KEY (`cod_estoque`) REFERENCES `estoque` (`id`),
  CONSTRAINT `receita_ibfk_3` FOREIGN KEY (`cod_pizza`) REFERENCES `cardapio` (`id`),
  CONSTRAINT `receita_ibfk_4` FOREIGN KEY (`cod_estoque`) REFERENCES `estoque` (`id`),
  CONSTRAINT `receita_ibfk_5` FOREIGN KEY (`cod_pizza`) REFERENCES `cardapio` (`id`),
  CONSTRAINT `receita_ibfk_6` FOREIGN KEY (`cod_estoque`) REFERENCES `estoque` (`id`),
  CONSTRAINT `receita_ibfk_7` FOREIGN KEY (`cod_pizza`) REFERENCES `cardapio` (`id`),
  CONSTRAINT `receita_ibfk_8` FOREIGN KEY (`cod_estoque`) REFERENCES `estoque` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `senha` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `staus` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_estoque` int(11) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cod_estoque` (`cod_estoque`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`cod_estoque`) REFERENCES `estoque` (`id`),
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`),
  CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`cod_estoque`) REFERENCES `estoque` (`id`),
  CONSTRAINT `vendas_ibfk_4` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`),
  CONSTRAINT `vendas_ibfk_5` FOREIGN KEY (`cod_estoque`) REFERENCES `estoque` (`id`),
  CONSTRAINT `vendas_ibfk_6` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`),
  CONSTRAINT `vendas_ibfk_7` FOREIGN KEY (`cod_estoque`) REFERENCES `estoque` (`id`),
  CONSTRAINT `vendas_ibfk_8` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
