-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.6.8-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para biblioteca
CREATE DATABASE IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `biblioteca`;

-- Copiando estrutura para tabela biblioteca.generos
CREATE TABLE IF NOT EXISTS `generos` (
  `GeneroID` int(11) NOT NULL AUTO_INCREMENT,
  `NomeGenero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GeneroID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela biblioteca.generos: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` (`GeneroID`, `NomeGenero`) VALUES
	(1, 'Ficção'),
	(2, 'Ficção Científica'),
	(3, 'Mistério'),
	(4, 'Não Ficção'),
	(5, 'Ficção'),
	(6, 'Não Ficção'),
	(7, 'Romance'),
	(8, 'Mistério'),
	(9, 'Fantasia'),
	(10, 'Aventura'),
	(11, 'História'),
	(12, 'Ciência'),
	(13, 'Biografia'),
	(14, 'Poesia'),
	(15, 'Ficção'),
	(16, 'Não Ficção'),
	(17, 'Romance'),
	(18, 'Mistério'),
	(19, 'Aventura'),
	(20, 'Fantasia'),
	(21, 'História'),
	(22, 'Ciência'),
	(23, 'Biografia'),
	(24, 'Poesia');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;

-- Copiando estrutura para tabela biblioteca.livros
CREATE TABLE IF NOT EXISTS `livros` (
  `LivroID` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `ISBN` varchar(13) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`LivroID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela biblioteca.livros: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` (`LivroID`, `Titulo`, `Autor`, `ISBN`, `AnoPublicacao`) VALUES
	(1, 'LivroA', 'AutorA', '123-456-7890', 2000),
	(2, 'LivroB', 'AutorB', '234-567-8901', 2010),
	(3, 'LivroC', 'AutorC', '345-678-9012', 2020),
	(4, 'LivroD', 'AutorD', '456-789-0123', 2015),
	(5, 'LivroE', 'AutorE', '567-890-1234', 2005),
	(6, 'LivroF', 'AutorF', '678-901-2345', 2012),
	(7, 'LivroG', 'AutorG', '789-012-3456', 2018),
	(8, 'LivroH', 'AutorH', '890-123-4567', 2008),
	(9, 'LivroI', 'AutorI', '901-234-5678', 2019),
	(10, 'LivroJ', 'AutorJ', '012-345-6789', 2002);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;

-- Copiando estrutura para tabela biblioteca.livrosemprestados
CREATE TABLE IF NOT EXISTS `livrosemprestados` (
  `EmprestimoID` int(11) NOT NULL AUTO_INCREMENT,
  `LivroID` int(11) DEFAULT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `DataEmprestimo` date DEFAULT NULL,
  `DataDevolucao` date DEFAULT NULL,
  PRIMARY KEY (`EmprestimoID`),
  KEY `LivroID` (`LivroID`),
  KEY `UsuarioID` (`UsuarioID`),
  CONSTRAINT `livrosemprestados_ibfk_1` FOREIGN KEY (`LivroID`) REFERENCES `livros` (`LivroID`),
  CONSTRAINT `livrosemprestados_ibfk_2` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela biblioteca.livrosemprestados: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `livrosemprestados` DISABLE KEYS */;
INSERT INTO `livrosemprestados` (`EmprestimoID`, `LivroID`, `UsuarioID`, `DataEmprestimo`, `DataDevolucao`) VALUES
	(1, 1, 1, '2024-02-24', '2024-03-10'),
	(2, 2, 2, '2024-02-25', '2024-03-15'),
	(3, 3, 3, '2024-02-26', '2024-03-20'),
	(4, 4, 4, '2024-02-27', '2024-03-25'),
	(5, 5, 5, '2024-02-28', '2024-03-30'),
	(6, 6, 6, '2024-02-29', '2024-04-05'),
	(7, 7, 7, '2024-03-01', '2024-04-10'),
	(8, 8, 8, '2024-03-02', '2024-04-15'),
	(9, 9, 9, '2024-03-03', '2024-04-20'),
	(10, 10, 10, '2024-03-04', '2024-04-25');
/*!40000 ALTER TABLE `livrosemprestados` ENABLE KEYS */;

-- Copiando estrutura para tabela biblioteca.livrosgeneros
CREATE TABLE IF NOT EXISTS `livrosgeneros` (
  `LivroID` int(11) NOT NULL,
  `GeneroID` int(11) NOT NULL,
  PRIMARY KEY (`LivroID`,`GeneroID`),
  KEY `GeneroID` (`GeneroID`),
  CONSTRAINT `livrosgeneros_ibfk_1` FOREIGN KEY (`LivroID`) REFERENCES `livros` (`LivroID`),
  CONSTRAINT `livrosgeneros_ibfk_2` FOREIGN KEY (`GeneroID`) REFERENCES `generos` (`GeneroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela biblioteca.livrosgeneros: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `livrosgeneros` DISABLE KEYS */;
INSERT INTO `livrosgeneros` (`LivroID`, `GeneroID`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10);
/*!40000 ALTER TABLE `livrosgeneros` ENABLE KEYS */;

-- Copiando estrutura para tabela biblioteca.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `UsuarioID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) DEFAULT NULL,
  `Sobrenome` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UsuarioID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela biblioteca.usuarios: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`UsuarioID`, `Nome`, `Sobrenome`, `Email`) VALUES
	(1, 'João', 'Silva', 'joao.silva@example.com'),
	(2, 'Maria', 'Souza', 'maria.souza@example.com'),
	(3, 'João', 'Silva', 'joao.silva@example.com'),
	(4, 'Maria', 'Santos', 'maria.santos@example.com'),
	(5, 'Carlos', 'Ferreira', 'carlos.ferreira@example.com'),
	(6, 'Ana', 'Oliveira', 'ana.oliveira@example.com'),
	(7, 'Ricardo', 'Pereira', 'ricardo.pereira@example.com'),
	(8, 'Juliana', 'Martins', 'juliana.martins@example.com'),
	(9, 'Pedro', 'Costa', 'pedro.costa@example.com'),
	(10, 'Fernanda', 'Almeida', 'fernanda.almeida@example.com'),
	(11, 'Lucas', 'Rodrigues', 'lucas.rodrigues@example.com'),
	(12, 'Isabel', 'Silveira', 'isabel.silveira@example.com'),
	(13, 'Guilherme', 'Santos', 'usuario1@example.com'),
	(14, 'Usuario2', 'Sobrenome2', 'usuario2@example.com'),
	(15, 'Usuario3', 'Sobrenome3', 'usuario3@example.com'),
	(16, 'Usuario4', 'Sobrenome4', 'usuario4@example.com'),
	(17, 'Usuario5', 'Sobrenome5', 'usuario5@example.com'),
	(18, 'Usuario6', 'Sobrenome6', 'usuario6@example.com'),
	(19, 'Usuario7', 'Sobrenome7', 'usuario7@example.com'),
	(20, 'Usuario8', 'Sobrenome8', 'usuario8@example.com'),
	(21, 'Usuario9', 'Sobrenome9', 'usuario9@example.com'),
	(22, 'Usuario10', 'Sobrenome10', 'usuario10@example.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
