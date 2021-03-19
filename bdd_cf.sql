-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 19 mars 2021 à 08:22
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdd_cf`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `auteur` varchar(50) NOT NULL,
  `images` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `auteur`, `images`, `description`, `date_created`, `id_categories`) VALUES
(1, 'NBA – L’énorme coup de pression de Steph Curry à s', 'Anthony HUYNH', 'stephen_curry.jpg', 'Les Warriors sont sans doute l’équipe la plus difficile à appréhender en NBA. Capables de coups d’éclat et de victoires de prestige, les hommes de Steve Kerr peuvent aussi montrer un niveau pitoyable et subir de lourdes défaites. Après l’humiliation face aux Lakers, Stephen Curry a d’ailleurs remis les pendule à l’heure !\r\n\r\nAprès une excellente victoire sur leur parquet face à la meilleure équipe de la ligue, Utah, les Warriors attendaient les Lakers de pied ferme ce lundi. Stephen Curry est dans la forme de sa vie, Draymond Green restait sur une performance historique, il y avait donc de forts motifs d’espoir pour les joueurs de Steve Kerr… Malheureusement, il n’y a pas eu match.\r\nFace au triple-double de LeBron James et surtout au meilleur match en carrière de la pépite Talen Horton-Tucker, Golden State n’a rien pu faire, subissant une nouvelle grosse défaite… Pour Stephen Curry, c’est d’ailleurs l’humiliation de trop. Le Chef a mis un gros coup de pression à tout le vestiaire après la rencontre.', '2021-03-16 17:00:31', 1),
(2, 'Le MSI change de format pour 2021', 'Anthony HUYNH', 'msi_cup.jpeg', 'En parallèle de la confirmation sur la bonne tenue du Mid-Season Invitational (MSI) du 6 au 23 mai à Reykjavik, en Islande, Riot Games a confirmé un changement de format pour le tournoi.\r\n\r\nRIOT GAMES ADAPTE SON TOURNOI\r\nUne nouvelle qui a été accueillie avec soulagement du côté des fans de la scène compétitive de League of Legends : le Mid-Season Invitational aura bien lieu en 2021. Créé en 2015, le Mid-season Invitational est le premier événement international de la saison de compétition et regroupe les champions de chaque ligue régionale (LEC, LCS, LCK, LPL, etc.). Malheureusement, l\'édition 2020 n\'a pas pu se tenir à cause de l\'épidémie de COVID-19 et des différentes mesures sanitaires prises par l\'ensemble des pays ; initialement prévu au mois de mai et repoussé une première fois en juillet, Riot Games avait dû prendre la décision de ne pas maintenir le MSI en 2020.\r\n\r\nHier, Riot Games a confirmé que le deux de ses plus gros événements esport de l\'année, dont le Mid-Season Invitational, auront lieu à la suite, en mai à Reykjavik (Islande), et que l\'ensemble des matchs va avoir lieu au stade fermé de Laugardalshöll, où a eu lieu l\'historique « match du siècle » du Championnat du monde d\'échecs de 1972. \r\n\r\nRiot Games a également confirmé que l\'organisation et le format du tournoi vont changer et s\'adapter à l\'actuelle situation sanitaire mondiale. Avant que le tournoi commence, les équipes qualifiées pour le tournoi seront mises en quarantaine à leur arrivée en Islande, Riot Games adoptant ainsi le même dispositif que pour le Championnat du monde de 2020 qui a eu lieu en Chine. En ce qui concerne le format, cette édition 2021 sera l\'occasion de tirer un trait sur les \"qualifications\", phase du tournoi connu sous le nom de \"Play-In\", ce qui signifie que toutes les équipes de toutes les régions commenceront à présent à la même phase du MSI.\r\n\r\nLe Mid-Season Invitational 2021 sera donc décomposé en trois phases : \r\n\r\nPhase 1 : les 12 équipes (ligues majeures et Wildcard) commencent ici, réparties en trois groupes de quatre équipes. Chacun de ces groupes jouera un double tournoi à la ronde en 1 manche. Les 2 meilleures équipes de chaque groupe accéderont à la phase suivante.\r\nPhase 2 : Groupes - les six équipes restantes disputent un nouveau double tournoi à la ronde en 1 manche. Les quatre meilleures équipes accéderont à des play-offs.\r\nPhase 3 : Élimination directe - Les quatre meilleures équipes accéderont à une phase d\'élimination directe en trois manches gagnantes, qui représentera la demi-finale, suivie de la finale.\r\n \r\n\r\nINFORMATIONS GÉNÉRALES\r\nDénomination : Mid-Season Invitational 2021\r\nDates : du 6 au 22 mai\r\nLieu : offline / Iceland\r\nÉquipes : 12 équipes - le champion de chaque ligue régionale\r\nFormat : \r\n     Stage 1 : 3 groupes de 4 équipes / Double Round Robin en BO1 / Le top 2 se qualifie pour le Stage 2\r\n     Stage 2 : 1 groupe de 6 équipes / Double Round Robin en BO1 / Le top 4 se qualifie pour le Stage 3\r\n     Stage 3 : arbre à élimination directe / Demi-finales et finale en BO5', '2021-03-16 17:00:31', 2),
(3, 'Des bitcoins vendus demain aux enchères pour la pr', 'Anthony HUYNH', 'bitcoin.jpg', 'Cette vente pourrait rapporter 26 millions d\'euros à l\'Etat au cours actuel du bitcoin. © PIRO4D/Pixabay\r\nC\'est une vente aux enchères un peu particulière qui se déroulera le 17 mars. Pour la première fois, des bitcoins seront proposés au public. Cette vente, prévue depuis plusieurs mois, arrive à point nommé, alors que le cours de la cryptomonnaie s\'est envolé depuis fin octobre, jusqu\'à dépasser les 50 000 dollars. Elle fait suite à la saisie par la justice de bitcoins appartenant à un cybercriminel, rapporte Le Figaro. Au total, la maison de ventes Kapandji Morhange distribuera 611 bitcoins, qui pourraient rapporter environ 26 millions d\'euros.\r\n\r\nUn beau pactole comparé aux 270 000 euros environ que valait le magot lorsqu\'il a été saisi, alors que le bitcoin évoluait autour de 4 500 euros. \"Le produit de la vente pourrait abonder le budget général de l\'Etat, si une peine de confiscation définitive était prononcée au terme de la procédure judiciaire\", précise au Figaro Nicolas Bessone, directeur général de l\'Agrasc, l\'Agence de gestion et de recouvrement des avoirs saisis et confisqués, qui dépend du ministère de la Justice et de Bercy. \"En cas de relaxe, le produit de la vente serait restitué\", ajoute-t-il.\r\n\r\nÀ lire aussi — Qui se cache derrière Satoshi Nakamoto, le mystérieux créateur du bitcoin jamais identifié ?\r\n\r\nInscriptions jusqu\'au 13 mars pour y participer\r\nL\'opération se déroulera sur le site Interenchères, en deux parties. La première, le matin du 17 mars avec 437 lots de 0,11 à 2 bitcoins. La deuxième, l\'après-midi, avec 44 lots de 5 à 20 bitcoins pour des investisseurs plus avertis, disposant de plus de moyens. \"Comme il s\'agit d\'une première vente judiciaire, il nous a fallu quelques mois pour prendre le temps de bâtir une solution avec le choix de la maison de vente judiciaire Kapandji Morhange et une solution technique fiable pour garantir le transfert de ces bitcoins aux futurs adjudicateurs\", explique Nicolas Bessone.\r\n\r\nUn prix minimal, inférieur à la valeur estimée du bitcoin, sera fixé la veille. Les acquéreurs des bitcoins vendus aux enchères devront s\'acquitter de frais non négligeables, de 14,28% TTC, liés notamment au coût du transfert de la cryptomonnaie sur leur portefeuille numérique.\r\n\r\nPour participer à cette vente, vous devez vous inscrire sur le site interencheres.com avant le 13 mars à minuit, indique Ghislaine Kapandji, co-fondatrice de Kapandji Morhange. Un cahier des charges doit être signé et vous devrez aussi fournir des documents d\'identité. Sans oublier le dépôt d\'une garantie de 1500 euros pour la vente du matin et de 10 000 euros pour celle de l\'après-midi.\r\n\r\nSi l\'opération est une première en France, des ventes aux enchères de bitcoins ont déjà eu lieu aux États-Unis. L\'an dernier, 4 000 unités de la monnaie virtuelle ont été mises en vente après des saisies du FBI, rappelle BFMTV.', '2021-03-16 17:00:31', 3);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_c` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_c`, `nom`) VALUES
(1, 'sport'),
(2, 'esport'),
(3, 'economie');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `pass`, `role`, `created`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1, '2021-03-10 13:30:41'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2, '2021-03-10 13:32:15'),
(3, 'anthony', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2021-03-16 15:03:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categories` (`id_categories`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
