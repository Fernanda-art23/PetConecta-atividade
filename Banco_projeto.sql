-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para banco_projeto
DROP DATABASE IF EXISTS `banco_projeto`;
CREATE DATABASE IF NOT EXISTS `banco_projeto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `banco_projeto`;

-- Copiando estrutura para tabela banco_projeto.petconecta
DROP TABLE IF EXISTS `petconecta`;
CREATE TABLE IF NOT EXISTS `petconecta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `assunto` longtext DEFAULT NULL,
  `mensagem` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela banco_projeto.petconecta: ~7 rows (aproximadamente)
DELETE FROM `petconecta`;
INSERT INTO `petconecta` (`id`, `nome_completo`, `email`, `telefone`, `assunto`, `mensagem`) VALUES
	(1, 'fernanda belizario', 'fermamdabeliz@gmail.com', 2147483647, 'dtyftsaxqxyryrçeofewp', 'dwgrytjfd'),
	(9, 'fernanda 4', 'fermamdabeliz@gmail.com', 2147483647, '0', 'gfydosfufsdufhufhfihfchdfhdsfh'),
	(10, 'fernanda 5', 'fermamdabeliz@gmail.com', 2147483647, '0', 'gfydosfufsdufhufhfihfchdfhdsfh'),
	(11, 'fernanda 5', 'fermamdabeliz@gmail.com', 2147483647, '0', 'gfydosfufsdufhufhfihfchdfhdsfh'),
	(12, 'fernanda 6', 'fermamdabeliz@gmail.com', 2147483647, '0', 'gfydosfufsdufhufhfihfchdfhdsfh'),
	(13, 'fernanda 7', 'fermamdabeliz@gmail.com', 2147483647, '0', 'gfydosfufsdufhufhfihfchdfhdsfh'),
	(14, 'fernanda 8', 'fermamdabeliz@gmail.com', 2147483647, '0', 'gfydosfufsdufhufhfihfchdfhdsfh');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
