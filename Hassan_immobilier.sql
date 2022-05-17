-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 16 mai 2022 à 17:22
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `immobilier`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ajouter_logementsAgence` (IN `cidAgence` INT(6), IN `cidLogement` INT(5), IN `cfrais` INT)   BEGIN

INSERT into logement_agence (idAgence,idLogement,frais) VALUES(cidAgence,cidLogement,cfrais);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_agences` ()   BEGIN
INSERT into agence (nom,adresse) VALUES
('logic-immo','www.logic-immo.com'),
('century21','rue century'),
('laforet','rue laforet'),('fnaim','rue fnaim'),
('orpi','rue orpi'),('foncia','rue foncia'),
('guy-hoquet','rue guy-hoquet'),
('seloger','www.seloger.com'),
('bouygues-immobilier','www.bouygues-immobilier.com');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_demandes` ()   BEGIN
INSERT into demande (idPersonne,type,ville,budget,superficie,categorie) VALUES
(1,'appartement','paris',530000,120,'vente'),
(3,'appartement','bordeaux',120000,18,'vente'),
(4,'appartement','bordeaux',145000,21,'vente'),
(5,'appartement','bordeaux',152000,26,'vente'),
(6,'appartement','lyon',200000,55,'vente'),
(9,'appartement','paris',171000,40,'vente'),
(13,'appartement','paris',163000,25,'vente'),
(16,'appartement','paris',132000,15,'vente'),
(19,'appartement','paris',350000,80,'vente'),
(22,'appartement','lyon',600,20,'location'),
(25,'appartement','lyon',188000,65,'vente'),
(27,'appartement','paris',400,15,'location'),
(28,'appartement','paris',330500,100,'vente'),
(31,'appartement','paris',90000,15,'vente'),
(32,'appartement','lyon',123800,21,'vente'),
(35,'appartement','lyon',1200,70,'vente'),
(37,'appartement','lyon',1500,100,'vente'),
(43,'appartement','paris',600,20,'location'),
(44,'appartement','paris',750,30,'location'),
(45,'appartement','bordeaux',680,30,'location'),
(46,'appartement','bordeaux',213000,40,'vente');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_logements` ()   BEGIN
INSERT into logement (type,ville,prix,superficie,categorie) VALUES

('appartement','paris',185000,61,'vente'),
('appartement','paris',115000,15,'vente'),
('Maison','paris',510000,130,'vente'),
('appartement','bordeaux',550,17,'location'),
('appartement','lyon',420,14,'location'),
('appartement','paris',160000,40,'vente'),
('appartement','paris',670,35,'location'),
('appartement','lyon',110000,16,'vente'),
('appartement','bordeaux',161500,33,'vente'),
('appartement','paris',202000,90,'vente');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_logementsAgence` ()   BEGIN
INSERT into logement_agence (idAgence,idLogement,frais) VALUES(000001,00002,15000);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_personne` ()   BEGIN
INSERT into personne (nom,prenom,email) VALUES
('Sweeney','Hugo','nec.ligula@protonmail.org'),
('Matthews','Jean','felis@aol.edu'),
('Gibson','Richard','eu.neque.pellentesque@aol.com'),
('Harper','Jacques','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu');
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `idAgence` int(6) UNSIGNED ZEROFILL NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `agence`
--

INSERT INTO `agence` (`idAgence`, `nom`, `adresse`) VALUES
(000001, 'logic-immo', 'www.logic-immo.com'),
(000002, 'century21', 'rue century'),
(000003, 'laforet', 'rue laforet'),
(000004, 'fnaim', 'rue fnaim'),
(000005, 'orpi', 'rue orpi'),
(000006, 'foncia', 'rue foncia'),
(000007, 'guy-hoquet', 'rue guy-hoquet'),
(000008, 'seloger', 'www.seloger.com'),
(000009, 'bouygues-immobilier', 'www.bouygues-immobilier.com');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `idDemande` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `superficie` int(11) DEFAULT NULL,
  `categorie` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`idDemande`, `idPersonne`, `type`, `ville`, `budget`, `superficie`, `categorie`) VALUES
(1, 1, 'appartement', 'paris', 530000, 120, 'vente'),
(2, 3, 'appartement', 'bordeaux', 120000, 18, 'vente'),
(3, 4, 'appartement', 'bordeaux', 145000, 21, 'vente'),
(4, 5, 'appartement', 'bordeaux', 152000, 26, 'vente'),
(5, 6, 'appartement', 'lyon', 200000, 55, 'vente'),
(6, 9, 'appartement', 'paris', 171000, 40, 'vente'),
(7, 13, 'appartement', 'paris', 163000, 25, 'vente'),
(8, 16, 'appartement', 'paris', 132000, 15, 'vente'),
(9, 19, 'appartement', 'paris', 350000, 80, 'vente'),
(10, 22, 'appartement', 'lyon', 600, 20, 'location'),
(11, 25, 'appartement', 'lyon', 188000, 65, 'vente'),
(12, 27, 'appartement', 'paris', 400, 15, 'location'),
(13, 28, 'appartement', 'paris', 330500, 100, 'vente'),
(14, 31, 'appartement', 'paris', 90000, 15, 'vente'),
(15, 32, 'appartement', 'lyon', 123800, 21, 'vente'),
(16, 35, 'appartement', 'lyon', 1200, 70, 'vente'),
(17, 37, 'appartement', 'lyon', 1500, 100, 'vente'),
(18, 43, 'appartement', 'paris', 600, 20, 'location'),
(19, 44, 'appartement', 'paris', 750, 30, 'location'),
(20, 45, 'appartement', 'bordeaux', 680, 30, 'location'),
(21, 46, 'appartement', 'bordeaux', 213000, 40, 'vente');

-- --------------------------------------------------------

--
-- Structure de la table `logement`
--

CREATE TABLE `logement` (
  `idLogement` int(5) UNSIGNED ZEROFILL NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `prix` int(11) NOT NULL,
  `superficie` int(11) DEFAULT NULL,
  `categorie` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logement`
--

INSERT INTO `logement` (`idLogement`, `type`, `ville`, `prix`, `superficie`, `categorie`) VALUES
(00001, 'appartement', 'paris', 185000, 61, 'vente'),
(00002, 'appartement', 'paris', 115000, 15, 'vente'),
(00003, 'Maison', 'paris', 510000, 130, 'vente'),
(00004, 'appartement', 'bordeaux', 550, 17, 'location'),
(00005, 'appartement', 'lyon', 420, 14, 'location'),
(00006, 'appartement', 'paris', 160000, 40, 'vente'),
(00007, 'appartement', 'paris', 670, 35, 'location'),
(00008, 'appartement', 'lyon', 110000, 16, 'vente'),
(00009, 'appartement', 'bordeaux', 161500, 33, 'vente'),
(00010, 'appartement', 'paris', 202000, 90, 'vente');

-- --------------------------------------------------------

--
-- Structure de la table `logement_agence`
--

CREATE TABLE `logement_agence` (
  `idLogementAgence` int(11) NOT NULL,
  `idAgence` int(6) UNSIGNED ZEROFILL NOT NULL,
  `idLogement` int(5) UNSIGNED ZEROFILL NOT NULL,
  `frais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logement_agence`
--

INSERT INTO `logement_agence` (`idLogementAgence`, `idAgence`, `idLogement`, `frais`) VALUES
(2, 000001, 00002, 15000),
(3, 000005, 00003, 730),
(4, 000008, 00009, 2000),
(5, 000008, 00010, 2500);

-- --------------------------------------------------------

--
-- Structure de la table `logement_personne`
--

CREATE TABLE `logement_personne` (
  `idLogementPersonne` int(11) NOT NULL,
  `idPersonne` int(11) NOT NULL,
  `idLogement` int(6) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `idPersonne` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`idPersonne`, `nom`, `prenom`, `email`) VALUES
(1, 'Sweeney', 'Hugo', 'nec.ligula@protonmail.org'),
(2, 'Matthews', 'Jean', 'felis@aol.edu'),
(3, 'Gibson', 'Richard', 'eu.neque.pellentesque@aol.com'),
(4, 'Harper', 'Jacques', 'et.magnis.dis@outlook.ca'),
(5, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(6, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(7, 'Matthews', 'Neville', 'felis@aol.edu'),
(8, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(9, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(10, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(11, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(12, 'Matthews', 'Neville', 'felis@aol.edu'),
(13, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(14, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(15, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(16, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(17, 'Matthews', 'Neville', 'felis@aol.edu'),
(18, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(19, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(20, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(21, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(22, 'Matthews', 'Georges', 'felis@aol.edu'),
(23, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(24, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(25, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(26, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(27, 'Matthews', 'Neville', 'felis@aol.edu'),
(28, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(29, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(30, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(31, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(32, 'Matthews', 'Neville', 'felis@aol.edu'),
(33, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(34, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(35, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(36, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(37, 'Matthews', 'Neville', 'felis@aol.edu'),
(38, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(39, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(40, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(41, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(42, 'Matthews', 'Neville', 'felis@aol.edu'),
(43, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(44, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(45, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(46, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(47, 'Matthews', 'Neville', 'felis@aol.edu'),
(48, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(49, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(50, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(51, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(52, 'Matthews', 'Neville', 'felis@aol.edu'),
(53, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(54, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(55, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(56, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(57, 'Matthews', 'Neville', 'felis@aol.edu'),
(58, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(59, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(60, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(61, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(62, 'Matthews', 'Neville', 'felis@aol.edu'),
(63, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(64, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(65, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(66, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(67, 'Matthews', 'Neville', 'felis@aol.edu'),
(68, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(69, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(70, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(71, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(72, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(73, 'Matthews', 'Neville', 'felis@aol.edu'),
(74, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(75, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(76, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(77, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(78, 'Matthews', 'Neville', 'felis@aol.edu'),
(79, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(80, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(81, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(82, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(83, 'Matthews', 'Neville', 'felis@aol.edu'),
(84, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(85, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(86, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(87, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(88, 'Matthews', 'Neville', 'felis@aol.edu'),
(89, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(90, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(91, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(92, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(93, 'Matthews', 'Neville', 'felis@aol.edu'),
(94, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(95, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(96, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(97, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(98, 'Matthews', 'Neville', 'felis@aol.edu'),
(99, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(100, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(101, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(102, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(103, 'Matthews', 'Neville', 'felis@aol.edu'),
(104, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(105, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(106, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(107, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(108, 'Matthews', 'Neville', 'felis@aol.edu'),
(109, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(110, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(111, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(112, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(113, 'Matthews', 'Neville', 'felis@aol.edu'),
(114, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(115, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(116, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(117, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(118, 'Matthews', 'Neville', 'felis@aol.edu'),
(119, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(120, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(121, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(122, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(123, 'Matthews', 'Neville', 'felis@aol.edu'),
(124, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(125, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(126, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(127, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(128, 'Matthews', 'Neville', 'felis@aol.edu'),
(129, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(130, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(131, 'Love', 'Elijah', 'lobortis@yahoo.edu'),
(132, 'Sweeney', 'Dora', 'nec.ligula@protonmail.org'),
(133, 'Matthews', 'Neville', 'felis@aol.edu'),
(134, 'Gibson', 'Inez', 'eu.neque.pellentesque@aol.com'),
(135, 'Harper', 'Alika', 'et.magnis.dis@outlook.ca'),
(136, 'Love', 'Elijah', 'lobortis@yahoo.edu');

--
-- Déclencheurs `personne`
--
DELIMITER $$
CREATE TRIGGER `verifmailInsert` BEFORE INSERT ON `personne` FOR EACH ROW BEGIN
    IF (new.email NOT LIKE '%.%@%.%__') 
    Then    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email invalide';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `verifmailModify` BEFORE UPDATE ON `personne` FOR EACH ROW BEGIN
    IF (new.email NOT LIKE  '_%@__%.__%') 
    Then    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email invalide';
    END IF;
END
$$
DELIMITER ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`idAgence`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`idDemande`),
  ADD KEY `fk_idPersonne` (`idPersonne`);

--
-- Index pour la table `logement`
--
ALTER TABLE `logement`
  ADD PRIMARY KEY (`idLogement`);

--
-- Index pour la table `logement_agence`
--
ALTER TABLE `logement_agence`
  ADD PRIMARY KEY (`idLogementAgence`),
  ADD KEY `fk_idLogement` (`idLogement`),
  ADD KEY `fk_idAgence` (`idAgence`);

--
-- Index pour la table `logement_personne`
--
ALTER TABLE `logement_personne`
  ADD PRIMARY KEY (`idLogementPersonne`),
  ADD KEY `fk_idLogement2` (`idLogement`),
  ADD KEY `fk_personne2` (`idPersonne`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`idPersonne`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agence`
--
ALTER TABLE `agence`
  MODIFY `idAgence` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `idDemande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `logement`
--
ALTER TABLE `logement`
  MODIFY `idLogement` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `logement_agence`
--
ALTER TABLE `logement_agence`
  MODIFY `idLogementAgence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `idPersonne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `fk_idPersonne` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`);

--
-- Contraintes pour la table `logement_agence`
--
ALTER TABLE `logement_agence`
  ADD CONSTRAINT `fk_idAgence` FOREIGN KEY (`idAgence`) REFERENCES `agence` (`idAgence`),
  ADD CONSTRAINT `fk_idLogement` FOREIGN KEY (`idLogement`) REFERENCES `logement` (`idLogement`);

--
-- Contraintes pour la table `logement_personne`
--
ALTER TABLE `logement_personne`
  ADD CONSTRAINT `fk_idLogement2` FOREIGN KEY (`idLogement`) REFERENCES `logement` (`idLogement`),
  ADD CONSTRAINT `fk_personne2` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`idPersonne`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
