-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 14 mars 2023 à 09:57
-- Version du serveur : 5.7.24
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `transporteurs_rz`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

CREATE TABLE `agences` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`id`, `nom`) VALUES
(1, 'Lyon'),
(2, 'Lille'),
(3, 'Nante'),
(4, 'Neulise');

-- --------------------------------------------------------

--
-- Structure de la table `tarifs`
--

CREATE TABLE `tarifs` (
  `id` int(11) NOT NULL,
  `nom_transporteur` varchar(255) NOT NULL,
  `transporteur_id` int(11) NOT NULL,
  `departement` tinyint(4) NOT NULL,
  `1M` smallint(6) NOT NULL,
  `2M` smallint(6) NOT NULL,
  `3M` smallint(6) NOT NULL,
  `4M` smallint(6) NOT NULL,
  `5M` smallint(6) NOT NULL,
  `6M` smallint(6) NOT NULL,
  `7M` smallint(11) NOT NULL,
  `8M` smallint(6) NOT NULL,
  `9M` smallint(6) NOT NULL,
  `10M` smallint(6) NOT NULL,
  `11M` smallint(6) NOT NULL,
  `12M` smallint(6) NOT NULL,
  `13M` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tarifs`
--

INSERT INTO `tarifs` (`id`, `nom_transporteur`, `transporteur_id`, `departement`, `1M`, `2M`, `3M`, `4M`, `5M`, `6M`, `7M`, `8M`, `9M`, `10M`, `11M`, `12M`, `13M`) VALUES
(1, 'Hemmerlin', 1, 1, 113, 139, 149, 175, 194, 213, 231, 247, 270, 277, 287, 297, 307);

-- --------------------------------------------------------

--
-- Structure de la table `transporteurs`
--

CREATE TABLE `transporteurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `lieu_chargement` varchar(255) NOT NULL,
  `cout_point_supp` int(11) NOT NULL,
  `indice_gasoil` float(11,4) NOT NULL,
  `part_indexation_gasoil` float NOT NULL,
  `info_complementaire` varchar(255) NOT NULL,
  `agence_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `transporteurs`
--

INSERT INTO `transporteurs` (`id`, `nom`, `lieu_chargement`, `cout_point_supp`, `indice_gasoil`, `part_indexation_gasoil`, `info_complementaire`, `agence_id`) VALUES
(1, 'Hemmerlin', 'St-Priest 69', 54, 1.1078, 25, 'Indexation gasoil positive exclusivement', 1),
(2, 'QLC', 'St-Priest 69', 50, 0.8855, 27, '', 1),
(3, 'TLM Fernandez', 'St-Priest 69', 50, 163.9800, 23.5, '', 1),
(4, 'Rave', 'St-Priest 69', 40, 1.1789, 23, 'cout point supplémentaire pour même departement', 1),
(5, 'Nova Fret Services', '', 50, 180.4200, 26, '', 1),
(6, 'SLT', '', 40, 154.4000, 23.5, '', 1),
(7, 'DOM', 'Avelin 59', 50, 0.0000, 0, 'Surcharge gasoil incluse dans le tarif / coût point supp dans un rayon de 40km', 2),
(8, 'QLC', 'Avelin 59', 50, 0.8900, 27, '', 2),
(9, 'Marchand', 'Avelin 59', 40, 1.2903, 23.5, '', 2),
(10, 'Transports Pollono', 'Thouré sur Loire 44', 47, 1.0112, 23, '', 3),
(11, 'Transports Goumard', 'Ste-Luce sur Loire 44', 60, 1.0112, 22, '', 3),
(12, 'Transports Douaud', 'Ste-Luce sur Loire', 45, 148.1800, 24, '45€ sur le meme département\r\nTemps de chargement et dechargement par camion complet 1h, au dela 39.35€ par heure\r\nLivraison avec Hayon 30€ HT supp', 3),
(13, 'Rave', 'Thouare sur Loire 44', 40, 1.1059, 24.5, '', 3),
(14, 'QLC', '', 50, 0.8855, 27, 'Navette : Lyon 235€ / Nantes / Lille 750€', 4),
(15, 'TML Fernandes', 'Neulise 42', 50, 163.4800, 23.5, 'Navette : Lyon 324€ / Nantes 864€ / Lille 864€ / Jebscheim 697€ (68 HILD)/ Baule 616€ (45 PTF) / La Chapelle 664€ ( 10 Defaux) ', 4),
(16, 'SLT', 'Neulise', 40, 154.4000, 24.5, 'Navette : Lyon 284€ / Nantes 789€ / Lille 732€', 4),
(17, 'MaisonHaute Logistics', '', 55, 0.0000, 0, '', 4),
(18, 'Nova Fret Services', 'Neulise', 50, 180.4200, 24.5, '', 4);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `id_agence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `id_agence`) VALUES
(1, 'admin', 4),
(2, 'compta', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agences`
--
ALTER TABLE `agences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TRANSPORTEUR_ID` (`transporteur_id`);

--
-- Index pour la table `transporteurs`
--
ALTER TABLE `transporteurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `T_AGENCES_ID` (`agence_id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agence` (`id_agence`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agences`
--
ALTER TABLE `agences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `transporteurs`
--
ALTER TABLE `transporteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tarifs`
--
ALTER TABLE `tarifs`
  ADD CONSTRAINT `tarifs_ibfk_1` FOREIGN KEY (`transporteur_id`) REFERENCES `transporteurs` (`id`);

--
-- Contraintes pour la table `transporteurs`
--
ALTER TABLE `transporteurs`
  ADD CONSTRAINT `transporteurs_ibfk_1` FOREIGN KEY (`agence_id`) REFERENCES `agences` (`id`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`id_agence`) REFERENCES `agences` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
