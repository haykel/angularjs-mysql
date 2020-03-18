-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 18 mars 2020 à 04:54
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test_site`
--

-- --------------------------------------------------------

--
-- Structure de la table `libyoutub`
--

CREATE TABLE `libyoutub` (
  `ID` int(100) NOT NULL,
  `title_video` varchar(250) NOT NULL,
  `id_video` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `libyoutub`
--

INSERT INTO `libyoutub` (`ID`, `title_video`, `id_video`, `username`) VALUES
(29, 'EasyVista IT Service Management for the Mobile User (Française)', 'WROlGNthbNE', 'john'),
(30, 'AngularJS Fundamentals In 60-ish Minutes', 'i9MHigUZKEM', 'john'),
(31, 'EasyVista IT Service Management for the Mobile User (Française)', 'WROlGNthbNE', 'john'),
(32, 'AngularJS Fundamentals In 60-ish Minutes', 'i9MHigUZKEM', 'john'),
(81, 'javaScript promises explained tutorial', 's6SH72uAn3Q', 'mark'),
(85, 'EasyVista IT Service Management for the Mobile User', 'zQJOoviVRgI', 'mark'),
(86, 'Técnicas Reunidas. Gestión de SLAs en EasyVista', 'vPZ0e6KzDXo', 'mark'),
(87, 'EasyVista Incident Management', 'ZKy_9hYoQ2E', 'mark'),
(88, 'El Pirata Feroz, Canciones Infantiles - Canticuentos', 'lJnT9NE5_ng', 'john'),
(89, 'Allah ki qudrat mojza/ Undefined Creatures You Have Never Seen before ( Must Watch )', 'Z9x5Hg1Ws5M', 'john');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`) VALUES
(1, 'mark', 'mark'),
(2, 'john', 'john'),
(3, 'mark', 'mark'),
(4, 'john', 'john');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `libyoutub`
--
ALTER TABLE `libyoutub`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `libyoutub`
--
ALTER TABLE `libyoutub`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
