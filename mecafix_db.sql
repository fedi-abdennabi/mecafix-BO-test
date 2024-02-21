-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 21 fév. 2024 à 20:34
-- Version du serveur :  10.4.25-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mecafix`
--

-- --------------------------------------------------------

--
-- Structure de la table `ac_contract`
--

CREATE TABLE `ac_contract` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passportId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companySignature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyerSignature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdfUrlLang1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdfUrlLang2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ac_contract`
--

INSERT INTO `ac_contract` (`id`, `number`, `name`, `passportId`, `zipCode`, `address`, `nationality`, `city`, `phoneNumber`, `email`, `bank`, `iban`, `swift`, `companySignature`, `buyerSignature`, `lang`, `pdfUrlLang1`, `pdfUrlLang2`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', '123yre', '2020', 'test', 'tunisia', 'test', '12345789', 'test95@gmail.com', 'test', '123456', '123456', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ySbAJHPVUF-companySignature-1.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/QckSJF4kse-buyerSignature-1.png', 'en', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-1-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-1-en.pdf', '2023-04-14 09:14:10', '2023-04-19 08:45:21'),
(2, 2, 'Mohamed Thabet JMAL', '52185645854', '30000', 'Tunis-Tunisie', 'Tunisienne', 'Tunis', '+21622471859', 'thabet_jmal@yahoo.fr', 'BH', '245964585245296', '45965', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/Pd5M91YFW3-companySignature-2.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/8ZhH313guX-buyerSignature-ac-2.png', 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-2-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-2-fr.pdf', '2023-04-20 11:53:35', '2023-04-24 09:57:58'),
(3, 3, 'efgfgfdg', '515612', '30000', 'Tunis-Tunisie', 'erteztr', 'Tunis', '+21622471859', 'thabet_jmal@yahoo.fr', 'tgrtgrtg', '2666565551', '789632', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/tB3Demu3wn-companySignature-3.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/UUXdm792mw-buyerSignature-ac-3.png', 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-3-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-3-fr.pdf', '2023-04-24 09:55:32', '2023-04-24 09:58:46'),
(4, 4, 'Mohamed Thabet JMAL', 'efghj', '30000', 'Tunis-Tunisie', 'rtghjfgh', 'Tunis', '+21622471859', 'thabet_jmal@yahoo.fr', 'hyhg', '586952352', '58263', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ePq3Ug1wW0-companySignature-4.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/kDSik5OJfM-buyerSignature-ac-4.png', 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-4-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-4-fr.pdf', '2023-04-24 09:59:39', '2023-04-24 10:00:25'),
(5, 5, 'Mohamed Thabet JMAL', 'ertyu', '30000', 'Tunis-Tunisie', 'tun', 'Tunis', '+21622471859', 'thabet_jmal@yahoo.fr', 'zerty', 'er55625', 'vbn,;fghjk', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/sLo5kbZ3fZ-companySignature-5.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/0IpPnHX8OH-buyerSignature-ac-5.png', 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-5-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-5-fr.pdf', '2023-05-01 08:30:39', '2023-05-01 08:33:04'),
(6, 6, 'Mohamed Thabet JMAL3', '6888', '30000', 'Tunis-Tunisie', 'thhh', 'Tunis', '+21622471859', 'thabet_jmal@yahoo.fr', 'rjbv', '6885', '68888', NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/rZARwuXozs-buyerSignature-ac-6.png', 'FR', NULL, NULL, '2023-05-10 20:54:21', '2023-05-10 20:54:21'),
(7, 7, 'Mohamed Thabet JMAL4', '383929', '30000', 'Tunis-Tunisie', 'tbtrnrk', 'Tunis', '+21622471859', 'thabet_jmal@yahoo.fr', 'fiffkfk', '382829', '383919', NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/cCnnUIeRc8-buyerSignature-ac-7.png', 'FR', NULL, NULL, '2023-05-10 20:55:42', '2023-05-10 20:55:42'),
(8, 8, 'Mohamed Thabet JMAL', '527532453', '30000', 'Tunis-Tunisie', 'hghdfh', 'Tunis', '+21622471859', 'thabet_jmal@yahoo.fr', 'rfgfgfg', '85525255', '852525', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/TnAGtf9pwo-companySignature-8.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/qdeVVneSMZ-buyerSignature-ac-8.png', 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-8-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-8-fr.pdf', '2023-05-11 09:01:57', '2023-05-30 09:08:33'),
(9, 9, 'thabet', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/9EfS2tLxfe-companySignature-9.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/EvWLrUxpyy-buyerSignature-ac-9.png', 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-9-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-9-fr.pdf', '2023-05-29 08:24:18', '2023-05-29 08:28:33'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/m8ASxIDRMT-buyerSignature-ac-10.png', 'FR', NULL, NULL, '2023-05-29 15:53:32', '2023-05-29 15:53:32'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/zeBWP26txu-buyerSignature-ac-11.png', 'FR', NULL, NULL, '2023-05-29 18:14:29', '2023-05-29 18:14:29'),
(12, 12, 'azerty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/Y3BMVZJ71S-buyerSignature-ac-12.png', 'FR', NULL, NULL, '2023-05-30 11:23:12', '2023-05-30 11:23:12');

-- --------------------------------------------------------

--
-- Structure de la table `ai_context`
--

CREATE TABLE `ai_context` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `context` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ai_context`
--

INSERT INTO `ai_context` (`id`, `name`, `context`, `created_at`, `updated_at`) VALUES
(12, 'Je suis un employeur agence web', '<p>Je suis employeur agence WEB,&nbsp;</p>\n', '2023-06-27 16:46:40', '2023-06-27 16:50:46'),
(13, 'Je suis un employeur SSII', '<p>Je suis un employeur SSII...</p>\n', '2023-06-27 16:53:06', '2023-06-27 16:53:06'),
(14, 'Société offshore ', 'je suis le gérant d\'une société offshore ...', '2023-07-11 18:45:01', '2023-07-11 18:47:33');

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `immatriculation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cars`
--

INSERT INTO `cars` (`id`, `carType`, `immatriculation`, `image`, `video`, `created_at`, `updated_at`, `brand`, `model`, `box`, `mileage`) VALUES
(1, 'pickup', '196-tn-2526', 'https://cellar-c2.services.clever-cloud.com/azur-storage/cars/KsiNOvkinZ-car-.jpeg', NULL, '2023-12-30 14:52:53', '2024-01-22 08:59:06', 'Renault', 'mégane', '6', NULL),
(2, NULL, '265-fr-2000', NULL, NULL, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 'Mercedes', 'serie m', NULL, 15000),
(3, NULL, '256TN2569', NULL, NULL, '2024-02-06 20:02:12', '2024-02-06 20:02:12', 'volsfagen', 'Golf7', NULL, 1250),
(4, NULL, '256TN2569', NULL, NULL, '2024-02-06 20:09:30', '2024-02-06 20:09:30', 'volsfagen', 'golf7', NULL, 12500),
(5, 'Personel', '256TN', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/JnrynWKME7-car-.jpeg', NULL, '2024-02-06 20:13:13', '2024-02-08 11:05:14', 'Audi', 'Q5', 'auto', 50000),
(6, NULL, '1452-TN-1444', NULL, NULL, '2024-02-07 14:20:28', '2024-02-07 14:20:28', 'brand', 'model', NULL, 12000),
(7, NULL, 'decdrecfr', NULL, NULL, '2024-02-07 14:23:18', '2024-02-07 14:23:18', 'céaec', 'deda', NULL, 1256200),
(8, 'Personel', '256TN2587', NULL, NULL, '2024-02-07 14:26:08', '2024-02-07 14:26:08', 'Audi', 'Q5', NULL, 12500),
(9, NULL, 'test', NULL, NULL, '2024-02-08 10:50:40', '2024-02-08 10:50:40', 'test', 'test', NULL, 54477),
(10, NULL, 'test', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/Fc85s2PGa1-car-.jpeg', NULL, '2024-02-08 11:07:04', '2024-02-08 11:07:04', 'test', 'test', NULL, 12356),
(11, NULL, '1240-TN-0021', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/cbzzJoqDZa-car-.jpeg', NULL, '2024-02-08 13:42:42', '2024-02-08 13:42:42', 'marque', 'model', NULL, 11200),
(12, NULL, '14520tn885', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/bZqu8NBARm-car-.png', NULL, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 'marque', 'model', NULL, 125000),
(13, '', 'Iygygiybykb', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/W7HQ4XpHNe-car-.jpeg', NULL, '2024-02-09 17:46:31', '2024-02-17 14:31:02', 'Bmw5', 'M33', '', 58999),
(14, 'Hj jh jh', 'Tutujtvg ', NULL, NULL, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 'Hhjj', 'Jjhgc', NULL, 5679),
(15, NULL, 'Gubjhbj', NULL, NULL, '2024-02-09 18:12:04', '2024-02-09 18:12:04', 'Hbkbnl\'', 'Jjj', 'G jg', 34679),
(16, NULL, 'Gyn\'i\'', NULL, NULL, '2024-02-09 18:17:11', '2024-02-09 18:21:30', 'Hujbunjnj', 'Bjnj', NULL, NULL),
(17, NULL, 'acecfdr', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/F7wHyc3iKo-car-.webp', NULL, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'cadrcva', 'dsedrzfrz', NULL, 12514),
(18, NULL, 'dj,yu,', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/GRUz8y8CMs-car-.jpeg', NULL, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'fy,;jkg', 'u;k;kgk;', NULL, 445454),
(19, NULL, 'jhnoj', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/qwbWiRRaHJ-car-.webp', NULL, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'thhh', 'yhnjyjyj', NULL, 44563563),
(20, NULL, '1250-TN-0214', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/HEhtnbcEbO-car-.jpeg', NULL, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'renault', 'clio', NULL, 7800),
(21, NULL, '1025-TN-0158', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/1WO1fDsViE-car-.jpeg', NULL, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'renault', 'clieo', NULL, 11450),
(22, NULL, '1250-TN-0021', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/uEhzmXnv5Q-car-.jpeg', NULL, '2024-02-16 10:21:16', '2024-02-16 10:21:16', 'marque', 'model', NULL, 11258),
(23, 'Pers', '215TN25896', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/S5rZn36Te8-car-.jpeg', NULL, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'Audi', 'Q5', 'Auto', 1250),
(24, NULL, 'zefrgzrg', NULL, NULL, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'zgfvrtg', 'zergrg', NULL, 548949),
(25, 'Public', 'FR124', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/LNrMKlxkTJ-car-.jpeg', NULL, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'Mercedes', 'Benz', 'Auto', 1250),
(26, 'sdfqsdf', 'azertyuiop', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/ij3oyz2xD3-car-.png', NULL, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'audi', 'A7', NULL, 15000),
(27, NULL, 'azeazeaze', NULL, NULL, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'azeaze', 'azeaze', NULL, 538),
(28, 'cvbc', 'zertyujhvc', NULL, NULL, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'fhfgh', 'hchcvh', NULL, 53535),
(29, NULL, 'iuytrsq', NULL, NULL, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'jhgfdsq', 'sdfgyhj', NULL, 8521),
(30, NULL, 'fdscggf', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/gztQAYRM23-car-.jpeg', NULL, '2024-02-17 11:24:50', '2024-02-17 12:02:35', 'dfgfdsqs', 'dsdfgfds', NULL, 242424454),
(31, NULL, 'ertyu', NULL, NULL, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'fghs', 'tfgh', NULL, 55858),
(32, 'sqdqsdqsd', '1111-AA-3333', 'https://cellar-c2.services.clever-cloud.com/mecafix/cars/EZ69f0ST3T-car-.jpeg', NULL, '2024-02-17 14:36:18', '2024-02-17 14:36:32', 'sdfghj3', 'qsdqd', '', 15000);

-- --------------------------------------------------------

--
-- Structure de la table `carstatus`
--

CREATE TABLE `carstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `statusName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hasSpecificValue` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `folderId` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `created_at`, `updated_at`, `folderId`) VALUES
(1, 'Diagnostic D\'entrée', '2023-12-30 14:52:53', '2023-12-30 14:52:53', 1),
(2, 'Diagnostic Approfondi', '2023-12-30 14:52:53', '2023-12-30 14:52:53', 1),
(3, 'Rénovation BVA', '2023-12-30 14:52:53', '2023-12-30 14:52:53', 1),
(4, 'Rénovation Composants', '2023-12-30 14:52:53', '2023-12-30 14:52:53', 1),
(5, 'Réparation', '2023-12-30 14:52:53', '2023-12-30 14:52:53', 1),
(6, 'Diagnostic D\'entrée', '2023-12-30 16:31:14', '2023-12-30 16:31:14', 2),
(7, 'Diagnostic Approfondi', '2023-12-30 16:31:14', '2023-12-30 16:31:14', 2),
(8, 'Rénovation BVA', '2023-12-30 16:31:14', '2023-12-30 16:31:14', 2),
(9, 'Rénovation Composants', '2023-12-30 16:31:14', '2023-12-30 16:31:14', 2),
(10, 'Réparation', '2023-12-30 16:31:14', '2023-12-30 16:31:14', 2),
(11, '23', '2024-02-06 19:17:35', '2024-02-06 19:17:43', NULL),
(12, 'cat1', '2024-02-06 20:02:12', '2024-02-06 20:02:12', 3),
(13, 'dddd', '2024-02-06 20:02:12', '2024-02-06 20:02:12', 3),
(14, 'test', '2024-02-06 20:02:12', '2024-02-06 20:02:12', 3),
(15, 'cat1', '2024-02-06 20:09:30', '2024-02-06 20:09:30', 4),
(16, 'dddd', '2024-02-06 20:09:30', '2024-02-06 20:09:30', 4),
(17, 'test', '2024-02-06 20:09:30', '2024-02-06 20:09:30', 4),
(18, 'cat1', '2024-02-06 20:13:13', '2024-02-06 20:13:13', 5),
(19, 'dddd', '2024-02-06 20:13:13', '2024-02-06 20:13:13', 5),
(20, 'test', '2024-02-06 20:13:13', '2024-02-06 20:13:13', 5),
(21, 'cat1', '2024-02-08 14:38:41', '2024-02-08 14:38:41', 6),
(22, 'dddd', '2024-02-08 14:38:41', '2024-02-08 14:38:41', 6),
(23, 'test', '2024-02-08 14:38:41', '2024-02-08 14:38:41', 6),
(24, 'Diagnostic_', '2024-02-08 14:38:41', '2024-02-08 14:38:41', 6),
(25, 'Changement pistons.', '2024-02-08 14:38:41', '2024-02-08 14:38:41', 6),
(26, 'cat1', '2024-02-09 17:46:31', '2024-02-09 17:46:31', 7),
(27, 'dddd', '2024-02-09 17:46:31', '2024-02-09 17:46:31', 7),
(28, 'test', '2024-02-09 17:46:31', '2024-02-09 17:46:31', 7),
(29, 'Diagnostic_', '2024-02-09 17:46:31', '2024-02-09 17:46:31', 7),
(30, 'Changement pistons.', '2024-02-09 17:46:31', '2024-02-09 17:46:31', 7),
(31, 'Diagnostic_', '2024-02-09 17:46:31', '2024-02-09 17:46:31', 7),
(32, 'Changement pistons.', '2024-02-09 17:46:31', '2024-02-09 17:46:31', 7),
(33, 'Diagnostic_', '2024-02-09 18:02:46', '2024-02-09 18:02:46', 8),
(34, 'Changement pistons.', '2024-02-09 18:02:46', '2024-02-09 18:02:46', 8),
(35, 'Diagnostic_', '2024-02-09 18:02:46', '2024-02-09 18:02:46', 8),
(36, 'Changement pistons.', '2024-02-09 18:02:46', '2024-02-09 18:02:46', 8),
(37, 'Diagnostic_', '2024-02-09 18:12:05', '2024-02-09 18:12:05', 9),
(38, 'Changement pistons.', '2024-02-09 18:12:05', '2024-02-09 18:12:05', 9),
(39, 'Diagnostic_', '2024-02-09 18:12:05', '2024-02-09 18:12:05', 9),
(40, 'Changement pistons.', '2024-02-09 18:12:05', '2024-02-09 18:12:05', 9),
(41, 'Diagnostic_', '2024-02-09 18:17:11', '2024-02-09 18:17:11', 10),
(42, 'Changement pistons.', '2024-02-09 18:17:11', '2024-02-09 18:17:11', 10),
(43, 'Diagnostic_', '2024-02-09 18:17:11', '2024-02-09 18:17:11', 10),
(44, 'Changement pistons.', '2024-02-09 18:17:11', '2024-02-09 18:17:11', 10),
(45, 'Diagnostic_', '2024-02-12 10:52:32', '2024-02-12 10:52:32', 11),
(46, 'Changement pistons.', '2024-02-12 10:52:32', '2024-02-12 10:52:32', 11),
(47, 'Diagnostic_', '2024-02-12 10:52:32', '2024-02-12 10:52:32', 11),
(48, 'Changement pistons.', '2024-02-12 10:52:32', '2024-02-12 10:52:32', 11),
(49, 'Diagnostic_', '2024-02-12 10:52:32', '2024-02-12 10:52:32', 11),
(50, 'Changement pistons.', '2024-02-12 10:52:32', '2024-02-12 10:52:32', 11),
(51, 'Diagnostic_', '2024-02-12 10:52:32', '2024-02-12 10:52:32', 11),
(52, 'Changement pistons.', '2024-02-12 10:52:32', '2024-02-12 10:52:32', 11),
(53, 'Diagnostic_', '2024-02-12 13:17:42', '2024-02-12 13:17:42', 12),
(54, 'Changement pistons.', '2024-02-12 13:17:42', '2024-02-12 13:17:42', 12),
(55, 'Diagnostic_', '2024-02-12 13:17:42', '2024-02-12 13:17:42', 12),
(56, 'Changement pistons.', '2024-02-12 13:17:42', '2024-02-12 13:17:42', 12),
(57, 'Diagnostic_', '2024-02-12 13:17:42', '2024-02-12 13:17:42', 12),
(58, 'Changement pistons.', '2024-02-12 13:17:42', '2024-02-12 13:17:42', 12),
(59, 'Diagnostic_', '2024-02-12 13:17:42', '2024-02-12 13:17:42', 12),
(60, 'Changement pistons.', '2024-02-12 13:17:42', '2024-02-12 13:17:42', 12),
(61, 'Diagnostic_', '2024-02-12 13:21:13', '2024-02-12 13:21:13', 13),
(62, 'Changement pistons.', '2024-02-12 13:21:13', '2024-02-12 13:21:13', 13),
(63, 'Diagnostic_', '2024-02-12 13:21:13', '2024-02-12 13:21:13', 13),
(64, 'Changement pistons.', '2024-02-12 13:21:13', '2024-02-12 13:21:13', 13),
(65, 'Diagnostic_', '2024-02-12 13:21:13', '2024-02-12 13:21:13', 13),
(66, 'Changement pistons.', '2024-02-12 13:21:13', '2024-02-12 13:21:13', 13),
(67, 'Diagnostic_', '2024-02-12 13:21:13', '2024-02-12 13:21:13', 13),
(68, 'Changement pistons.', '2024-02-12 13:21:13', '2024-02-12 13:21:13', 13),
(69, 'Diagnostic_', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(70, 'Changement pistons.', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(71, 'Diagnostic_', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(72, 'Changement pistons.', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(73, 'Diagnostic_', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(74, 'Changement pistons.', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(75, 'Diagnostic_', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(76, 'Changement pistons.', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(77, 'Diagnostic_', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(78, 'Changement pistons.', '2024-02-16 09:33:49', '2024-02-16 09:33:49', 14),
(79, 'Diagnostic_', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(80, 'Changement pistons.', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(81, 'Diagnostic_', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(82, 'Changement pistons.', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(83, 'Diagnostic_', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(84, 'Changement pistons.', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(85, 'Diagnostic_', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(86, 'Changement pistons.', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(87, 'Diagnostic_', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(88, 'Changement pistons.', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(89, 'Diagnostic_', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(90, 'Changement pistons.', '2024-02-16 10:09:46', '2024-02-16 10:09:46', 15),
(91, 'Diagnostic_', '2024-02-16 10:21:16', '2024-02-16 10:21:16', 16),
(92, 'Changement pistons.', '2024-02-16 10:21:16', '2024-02-16 10:21:16', 16),
(93, 'Diagnostic_', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(94, 'Changement pistons.', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(95, 'Diagnostic_', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(96, 'Changement pistons.', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(97, 'Diagnostic_', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(98, 'Changement pistons.', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(99, 'Diagnostic_', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(100, 'Changement pistons.', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(101, 'Diagnostic_', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(102, 'Changement pistons.', '2024-02-16 10:21:17', '2024-02-16 10:21:17', 16),
(103, 'Diagnostic_', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(104, 'Changement pistons.', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(105, 'Diagnostic_', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(106, 'Changement pistons.', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(107, 'Diagnostic_', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(108, 'Changement pistons.', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(109, 'Diagnostic_', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(110, 'Changement pistons.', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(111, 'Diagnostic_', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(112, 'Changement pistons.', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(113, 'Diagnostic_', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(114, 'Changement pistons.', '2024-02-16 11:40:31', '2024-02-16 11:40:31', 17),
(115, 'Diagnostic_', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(116, 'Changement pistons.', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(117, 'Diagnostic_', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(118, 'Changement pistons.', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(119, 'Diagnostic_', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(120, 'Changement pistons.', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(121, 'Diagnostic_', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(122, 'Changement pistons.', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(123, 'Diagnostic_', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(124, 'Changement pistons.', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(125, 'Diagnostic_', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(126, 'Changement pistons.', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(127, 'Diagnostic_', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(128, 'Changement pistons.', '2024-02-16 13:01:32', '2024-02-16 13:01:32', 18),
(129, 'Diagnostic_', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(130, 'Changement pistons.', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(131, 'Diagnostic_', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(132, 'Changement pistons.', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(133, 'Diagnostic_', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(134, 'Changement pistons.', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(135, 'Diagnostic_', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(136, 'Changement pistons.', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(137, 'Diagnostic_', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(138, 'Changement pistons.', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(139, 'Diagnostic_', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(140, 'Changement pistons.', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(141, 'Diagnostic_', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(142, 'Changement pistons.', '2024-02-16 18:14:36', '2024-02-16 18:14:36', 19),
(143, 'Diagnostic_', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(144, 'Changement pistons.', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(145, 'Diagnostic_', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(146, 'Changement pistons.', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(147, 'Diagnostic_', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(148, 'Changement pistons.', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(149, 'Diagnostic_', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(150, 'Changement pistons.', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(151, 'Diagnostic_', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(152, 'Changement pistons.', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(153, 'Diagnostic_', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(154, 'Changement pistons.', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(155, 'Diagnostic_', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(156, 'Changement pistons.', '2024-02-17 11:11:28', '2024-02-17 11:11:28', 20),
(157, 'Diagnostic_', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(158, 'Changement pistons.', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(159, 'Diagnostic_', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(160, 'Changement pistons.', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(161, 'Diagnostic_', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(162, 'Changement pistons.', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(163, 'Diagnostic_', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(164, 'Changement pistons.', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(165, 'Diagnostic_', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(166, 'Changement pistons.', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(167, 'Diagnostic_', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(168, 'Changement pistons.', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(169, 'Diagnostic_', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(170, 'Changement pistons.', '2024-02-17 11:21:26', '2024-02-17 11:21:26', 21),
(171, 'Diagnostic_', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(172, 'Changement pistons.', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(173, 'Diagnostic_', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(174, 'Changement pistons.', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(175, 'Diagnostic_', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(176, 'Changement pistons.', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(177, 'Diagnostic_', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(178, 'Changement pistons.', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(179, 'Diagnostic_', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(180, 'Changement pistons.', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(181, 'Diagnostic_', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(182, 'Changement pistons.', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(183, 'Diagnostic_', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(184, 'Changement pistons.', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(185, 'Diagnostic_', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(186, 'Changement pistons.', '2024-02-17 11:23:40', '2024-02-17 11:23:40', 22),
(187, 'Diagnostic_', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(188, 'Changement pistons.', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(189, 'Diagnostic_', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(190, 'Changement pistons.', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(191, 'Diagnostic_', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(192, 'Changement pistons.', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(193, 'Diagnostic_', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(194, 'Changement pistons.', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(195, 'Diagnostic_', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(196, 'Changement pistons.', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(197, 'Diagnostic_', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(198, 'Changement pistons.', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(199, 'Diagnostic_', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(200, 'Changement pistons.', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(201, 'Diagnostic_', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(202, 'Changement pistons.', '2024-02-17 11:24:21', '2024-02-17 11:24:21', 23),
(203, 'Diagnostic_', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(204, 'Changement pistons.', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(205, 'Diagnostic_', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(206, 'Changement pistons.', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(207, 'Diagnostic_', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(208, 'Changement pistons.', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(209, 'Diagnostic_', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(210, 'Changement pistons.', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(211, 'Diagnostic_', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(212, 'Changement pistons.', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(213, 'Diagnostic_', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(214, 'Changement pistons.', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(215, 'Diagnostic_', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(216, 'Changement pistons.', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(217, 'Diagnostic_', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(218, 'Changement pistons.', '2024-02-17 11:24:50', '2024-02-17 11:24:50', 24),
(219, 'Diagnostic_', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(220, 'Changement pistons.', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(221, 'Diagnostic_', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(222, 'Changement pistons.', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(223, 'Diagnostic_', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(224, 'Changement pistons.', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(225, 'Diagnostic_', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(226, 'Changement pistons.', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(227, 'Diagnostic_', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(228, 'Changement pistons.', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(229, 'Diagnostic_', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(230, 'Changement pistons.', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(231, 'Diagnostic_', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(232, 'Changement pistons.', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(233, 'Diagnostic_', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(234, 'Changement pistons.', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25),
(235, 'ok', '2024-02-17 14:18:35', '2024-02-17 14:18:35', 25);

-- --------------------------------------------------------

--
-- Structure de la table `clientcar`
--

CREATE TABLE `clientcar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `clientId` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clientcar`
--

INSERT INTO `clientcar` (`id`, `carId`, `created_at`, `updated_at`, `clientId`) VALUES
(1, 1, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL),
(3, 3, NULL, NULL, 4),
(4, 4, NULL, NULL, 5),
(5, 5, NULL, NULL, 6),
(6, 6, NULL, NULL, 8),
(7, 7, NULL, NULL, 10),
(8, 8, NULL, NULL, 11),
(9, 9, NULL, NULL, 18),
(10, 10, NULL, NULL, 20),
(11, 11, NULL, NULL, 21),
(12, 12, NULL, NULL, 22),
(13, 13, NULL, NULL, 23),
(14, 14, NULL, NULL, 24),
(15, 15, NULL, NULL, 25),
(16, 16, NULL, NULL, 26),
(17, 17, NULL, NULL, 27),
(18, 18, NULL, NULL, 28),
(19, 19, NULL, NULL, 29),
(20, 20, NULL, NULL, 30),
(21, 21, NULL, NULL, 31),
(22, 22, NULL, NULL, 32),
(23, 23, NULL, NULL, 33),
(24, 24, NULL, NULL, 34),
(25, 25, NULL, NULL, 35),
(26, 26, NULL, NULL, 36),
(27, 27, NULL, NULL, 37),
(28, 28, NULL, NULL, 38),
(29, 29, NULL, NULL, 39),
(30, 30, NULL, NULL, 40),
(32, 32, NULL, NULL, 23);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activitySector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HeadquartersAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistrationNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `type`, `firstName`, `lastName`, `email`, `adress`, `phone`, `postalCode`, `city`, `activitySector`, `HeadquartersAddress`, `RegistrationNumber`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, NULL, 'Mohamed', 'JMAL', 'thabet_jmal@yahoo.fr', 'Tunis-Tunisie', '22471859', '30000', 'Tunis', NULL, NULL, NULL, '2023-12-30 14:52:51', '2023-12-30 14:52:51', NULL),
(2, NULL, 'Emma', 'koulo', 'emma@gmail.com', '42 Rue des Lavandes', '852365', '34000', 'Montpellier', NULL, NULL, NULL, '2023-12-30 16:31:14', '2023-12-30 16:31:14', NULL),
(3, 'men', 'Oussama', 'GADRIA', 'oussamagadria125@gmail.com', '00', '25', '00', '00', NULL, NULL, NULL, '2024-02-06 20:01:04', '2024-02-06 20:01:04', NULL),
(4, 'men', 'Oussama', 'GADRIA', 'oussamagadria10@gmail.com', '00', '+21651614943', '00', '00', NULL, NULL, NULL, '2024-02-06 20:02:12', '2024-02-06 20:02:12', NULL),
(5, 'men', 'Oussama', 'GADRIA', 'oussamagadria11@gmail.com', '00', '+21651614943', '00', '00', NULL, NULL, NULL, '2024-02-06 20:09:30', '2024-02-06 20:09:30', NULL),
(6, 'men', 'Naruto', 'xio', 'Naruto@gmail.com', '00', '999999', '00', '00', NULL, NULL, NULL, '2024-02-06 20:13:13', '2024-02-06 20:13:13', NULL),
(7, 'women', 'test', 'test', 'test12@gmail.com', 'adress', '22333444', '1258', 'city', NULL, NULL, NULL, '2024-02-07 14:18:44', '2024-02-07 14:18:44', NULL),
(8, 'women', 'fathia', 'Mourou', 'mourou.fathia125863@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-07 14:20:28', '2024-02-07 14:20:28', NULL),
(9, 'women', 'fathia', 'Mourou', 'mourou.fathia000000@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-07 14:21:55', '2024-02-07 14:21:55', NULL),
(10, 'women', 'fathia', 'Mourou', 'mourou.fathia14552255@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-07 14:23:18', '2024-02-07 14:23:18', NULL),
(11, 'men', 'test', 'test', 'test@gmail.com', '00', '+21651614943', '00', '000', NULL, NULL, NULL, '2024-02-07 14:26:08', '2024-02-07 14:26:08', NULL),
(17, 'women', 'fathia', 'Mourou', 'mourou.fathia@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-08 10:43:26', '2024-02-08 10:43:26', 34),
(18, 'women', 'fathia', 'Mourou', 'mourou.fathia1234@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-08 10:50:40', '2024-02-08 10:50:40', 34),
(19, 'women', 'fathia', 'Mourou', 'mourou.fathia345@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-08 10:51:46', '2024-02-08 10:51:46', 34),
(20, 'women', 'fathia', 'Mourou', 'mourou.fathyhhtia@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-08 11:07:04', '2024-02-08 11:07:04', 34),
(21, 'women', 'fathia', 'Mourou', 'mourou.fathia.test@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-08 13:42:42', '2024-02-08 13:42:42', 45),
(22, 'women', 'fathia', 'Mourou', 'mourou.fathiatest@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 34),
(23, 'men', 'jmal2', 'Thabet ', 'Thabettest@gmail.com', 'Djerba', '72728282837', '73000', 'Medenine', NULL, NULL, NULL, '2024-02-09 17:46:31', '2024-02-17 14:29:11', 46),
(24, 'women', 'Mrsi', 'Claire ', 'Yhjb@yahoo.fr', 'Djerba', '5767786868', '73000', 'Medenine', NULL, NULL, NULL, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 47),
(25, 'men', 'Jhbuhb', ' Jb b\' ', 'jbkb@hkb.com', 'Djerba', '556789999', '73000', 'Medenine', NULL, NULL, NULL, '2024-02-09 18:12:04', '2024-02-09 18:12:04', 46),
(26, 'men', 'Uyvugvjgbuhb', 'Tttr', 'Yb@gm.hh', 'Djerba', '4567889', '73000', 'Medenine', NULL, NULL, NULL, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 46),
(27, 'women', 'fathia', 'Mourou', 'mourou.fathdededia@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 51),
(28, 'women', 'fathia', 'Mourou', 'mourou.fathjhfyia@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 51),
(29, 'women', 'fathia', 'Mourou', 'mourou.fathhjipjùia@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 50),
(30, 'women', 'fathia', 'Mourou', 'mourou.fathia12@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 34),
(31, 'women', 'fathia', 'Mourou', 'test.dev@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-16 10:09:43', '2024-02-16 10:09:43', 59),
(32, 'women', 'fathia', 'Mourou', 'dev2@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-16 10:21:16', '2024-02-16 10:21:16', 59),
(33, 'men', 'Lofi', 'Azet', 'lofi@gmail.com', 'djerba', '+2156369874', 'djerba', 'djerba', NULL, NULL, NULL, '2024-02-16 11:40:30', '2024-02-16 11:40:30', 70),
(34, 'women', 'fathia', 'Mourou', '12345@gmail.com', 'bazim-Djerba 4180', '93809024', '4180', 'Djerba', NULL, NULL, NULL, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 73),
(35, 'women', 'sarra', 'sarra', 'sarra@gmail.com', 'djerba', '+2156369874', 'djerba', 'djerba', NULL, NULL, NULL, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 70),
(36, 'women', 'isabelle', 'koko', 'koko@gmail.com', '42 Rue des Lavandes', '14555887', '34000', 'Montpellier', NULL, NULL, NULL, '2024-02-17 11:11:27', '2024-02-17 11:11:27', 57),
(37, 'men', 'Mohamed', 'JMAL', 'thabet_jmal11@yahoo.fr', 'Tunis-Tunisie', '+21622471859', '30000', 'Tunis', NULL, NULL, NULL, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 46),
(38, 'men', 'thabet', 'jmal', 'thabet_jmal12@yahoo.fr', 'Cyber Park, , Houmet Souk Djerba Cyber Park', '22471859', '3000', 'Medenine', NULL, NULL, NULL, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 75),
(39, 'women', 'gfgd', 'fgdf', 'thabet_jmal13@yahoo.fr', 'Tunis-Tunisie', '+21622471859', '30000', 'Tunis', NULL, NULL, NULL, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 74),
(40, 'women', 'thabet', 'jmal', 'thabet_jmal14@yahoo.fr', 'Cyber Park, , Houmet Souk Djerba Cyber Park', '22471859', '3000', 'Medenine', NULL, NULL, NULL, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 75);

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `denomination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presidentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siren` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employerId` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `denomination`, `presidentName`, `siret`, `siren`, `activated`, `adresse`, `postalCode`, `logo`, `created_at`, `updated_at`, `employerId`) VALUES
(1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-22 09:18:05', '2023-06-22 09:18:05', 9),
(2, 'hjqsdi', NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-06-22 09:55:44', '2023-08-15 12:37:51', 10),
(3, 'hdkdql', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-06-22 09:58:55', '2023-07-14 09:22:27', 11),
(4, 'Admin DOC', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-06-27 11:29:51', '2023-06-27 12:11:19', 12),
(5, 'Vintonet', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-06-27 11:31:02', '2023-06-27 12:11:17', 13),
(6, 'mahdiC', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-08-17 08:42:50', '2023-08-17 16:02:28', 16),
(7, 'EdemE', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-08-17 13:14:27', '2023-08-17 13:14:27', 17),
(8, 'jmaaal', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-08-18 17:31:17', '2023-08-18 17:31:17', 18),
(9, 'Habib', NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-08-21 09:58:18', '2023-08-21 09:58:18', 19),
(10, 'Amoula', NULL, NULL, NULL, '1', 'Cyber Park, , Houmet Souk Djerba Cyber Park, Houmet Souk Djerba Cyber Park', NULL, NULL, '2023-08-21 12:14:43', '2023-08-21 14:52:52', 20),
(11, 'baya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-23 12:11:34', '2023-08-23 12:11:34', 21),
(12, 'Najwa-SARL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-28 14:28:16', '2023-09-28 14:28:16', 22),
(13, 'Endorso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-02 12:49:09', '2023-10-02 12:49:09', 23),
(14, 'Jacki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-02 14:44:47', '2023-10-02 14:44:47', 24),
(15, 'aliiExpress', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-05 15:26:07', '2023-10-05 15:26:07', 25),
(16, 'mama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-05 15:37:27', '2023-10-05 15:37:27', 26),
(17, 'mimi', 'thabet', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-05 15:48:58', '2023-12-10 12:50:40', 27),
(18, 'moooui', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-05 16:29:55', '2023-10-05 16:29:55', 28),
(19, 'muiii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-05 16:37:01', '2023-10-05 16:37:01', 29),
(20, 'fifiComp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 12:58:30', '2023-12-10 12:58:30', 30),
(21, 'admin3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-30 14:27:40', '2023-12-30 14:27:40', 32),
(22, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-30 14:40:18', '2023-12-30 14:40:18', 33),
(23, 'Vin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 21:04:36', '2024-02-13 21:04:36', 52),
(24, 'tiktak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-13 21:12:31', '2024-02-13 21:12:31', 54),
(25, 'Brant2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 10:49:48', '2024-02-16 10:49:48', 60),
(26, 'Brant22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 10:59:52', '2024-02-16 10:59:52', 64),
(27, 'Brant225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 11:29:18', '2024-02-16 11:29:18', 66),
(28, 'Brant2255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 11:32:12', '2024-02-16 11:32:12', 68),
(29, 'ASOX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 11:35:49', '2024-02-16 11:35:49', 70),
(30, 'int', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-17 13:58:16', '2024-02-17 13:58:16', 76);

-- --------------------------------------------------------

--
-- Structure de la table `configuration`
--

CREATE TABLE `configuration` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenQuotaExtra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenPriceExtra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `configuration`
--

INSERT INTO `configuration` (`id`, `tokenQuotaExtra`, `tokenPriceExtra`, `created_at`, `updated_at`) VALUES
(1, '140000', '15', '2023-07-07 20:20:24', '2023-07-07 20:20:24');

-- --------------------------------------------------------

--
-- Structure de la table `context_flields`
--

CREATE TABLE `context_flields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contextId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `context_flields`
--

INSERT INTO `context_flields` (`id`, `label`, `value`, `contextId`, `created_at`, `updated_at`) VALUES
(12, 'Nom', '@[name]@', 12, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(13, 'Passport', '@[passportId]@', 12, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(14, 'Code postal', '@[zipCode]@', 12, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(15, 'Nationalité', '@[nationality]@', 12, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(16, 'Adresse', '@[address]@', 12, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(17, 'Ville', '@[city]@', 12, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(18, 'Numéro tel', '@[phoneNumber]@', 12, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(19, 'Salaire', '@[salary]@', 13, '2023-06-27 16:53:06', '2023-06-27 16:53:06'),
(20, 'Nom', '@[name]@', 13, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(28, 'Passport', '@[passportId]@', 13, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(29, 'Code postal', '@[zipCode]@', 13, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(30, 'Nationalité', '@[nationality]@', 13, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(31, 'Adresse', '@[address]@', 13, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(32, 'Ville', '@[city]@', 13, '2023-06-27 16:46:40', '2023-06-27 16:46:40'),
(33, 'Numéro tel', '@[phoneNumber]@', 13, '2023-06-27 16:46:40', '2023-06-27 16:46:40');

-- --------------------------------------------------------

--
-- Structure de la table `default_admin_categories`
--

CREATE TABLE `default_admin_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `default_admin_categories`
--

INSERT INTO `default_admin_categories` (`id`, `categoryName`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Diagnostic_', 44, '2024-02-08 13:19:20', '2024-02-08 13:19:20'),
(5, 'Changement pistons.', 44, '2024-02-08 13:19:20', '2024-02-08 13:19:20'),
(6, 'Diagnostic_', 46, '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(7, 'Changement pistons.', 46, '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(8, 'Diagnostic_', 48, '2024-02-10 18:36:30', '2024-02-10 18:36:30'),
(9, 'Changement pistons.', 48, '2024-02-10 18:36:30', '2024-02-10 18:36:30'),
(10, 'Diagnostic_', 50, '2024-02-12 10:49:37', '2024-02-12 10:49:37'),
(11, 'Changement pistons.', 50, '2024-02-12 10:49:37', '2024-02-12 10:49:37'),
(12, 'Diagnostic_', 56, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(13, 'Changement pistons.', 56, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(14, 'Diagnostic_', 58, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(15, 'Changement pistons.', 58, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(16, 'Diagnostic_', 72, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(17, 'Changement pistons.', 72, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(18, 'Diagnostic_', 74, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(19, 'Changement pistons.', 74, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(20, 'ok', 74, '2024-02-17 11:52:15', '2024-02-17 11:52:15');

-- --------------------------------------------------------

--
-- Structure de la table `default_admin_inputs`
--

CREATE TABLE `default_admin_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inputName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inputValue` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputOrder` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_admin_sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `folder_id` bigint(20) UNSIGNED DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `display` tinyint(1) NOT NULL DEFAULT 1,
  `principalImage` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `default_admin_inputs`
--

INSERT INTO `default_admin_inputs` (`id`, `inputName`, `inputType`, `inputValue`, `inputOrder`, `label`, `options`, `helper`, `default_admin_sub_category_id`, `folder_id`, `required`, `display`, `principalImage`, `created_at`, `updated_at`) VALUES
(8, 'Niveau huile', 'FieldInput', NULL, 0, 'Niveau huile', NULL, 'This is helper to help you ', 6, NULL, 0, 1, 0, '2024-02-08 13:19:20', '2024-02-12 10:28:37'),
(9, 'test', 'FieldInput', NULL, 1, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 6, NULL, 0, 1, 0, '2024-02-08 13:19:20', '2024-02-12 10:28:37'),
(10, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', '', 8, NULL, 0, 1, 0, '2024-02-08 13:19:20', '2024-02-09 17:51:26'),
(11, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 8, NULL, 0, 0, 0, '2024-02-08 13:19:20', '2024-02-08 13:19:20'),
(12, 'Niveau huile', 'FieldInput', NULL, 1, 'Niveau huile', NULL, 'This is helper to help you ', 9, NULL, 0, 1, 0, '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(13, 'test', 'FieldInput', NULL, 0, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 9, NULL, 0, 1, 0, '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(14, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', '', 10, NULL, 0, 1, 0, '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(15, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section.', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 10, NULL, 0, 0, 0, '2024-02-09 17:20:39', '2024-02-09 18:14:35'),
(16, 'Pistopb', 'FieldCheckboxes', NULL, 3, 'Piston qui saute ', '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', '', 8, NULL, 0, 1, 0, '2024-02-09 17:53:40', '2024-02-09 17:59:00'),
(17, 'Cettedgv', 'FieldSelect', NULL, 1, 'Dfv ', NULL, '', 11, NULL, 0, 1, 0, '2024-02-10 12:42:33', '2024-02-10 12:42:33'),
(18, 'Niveau huile', 'FieldInput', NULL, 1, 'Niveau huile', NULL, 'This is helper to help you ', 12, NULL, 0, 1, 0, '2024-02-10 18:36:30', '2024-02-10 18:36:30'),
(19, 'test', 'FieldInput', NULL, 0, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 12, NULL, 0, 1, 0, '2024-02-10 18:36:30', '2024-02-10 18:36:30'),
(20, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', '', 13, NULL, 0, 1, 0, '2024-02-10 18:36:30', '2024-02-10 18:36:30'),
(21, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 13, NULL, 0, 0, 0, '2024-02-10 18:36:30', '2024-02-10 18:36:30'),
(22, 'test', 'FieldInput', NULL, 1, 'test', NULL, '', 7, NULL, 0, 1, 0, '2024-02-12 09:10:43', '2024-02-12 09:39:47'),
(23, 'Niveau huile', 'FieldInput', NULL, 1, 'Niveau huile', NULL, 'This is helper to help you ', 14, NULL, 0, 1, 0, '2024-02-12 10:49:37', '2024-02-12 10:49:37'),
(24, 'test', 'FieldInput', NULL, 0, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 14, NULL, 0, 1, 0, '2024-02-12 10:49:37', '2024-02-12 10:49:37'),
(25, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', '', 15, NULL, 0, 1, 0, '2024-02-12 10:49:37', '2024-02-12 10:49:37'),
(26, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 15, NULL, 0, 0, 0, '2024-02-12 10:49:37', '2024-02-12 10:49:37'),
(27, 'Niveau huile', 'FieldInput', NULL, 1, 'Niveau huile', NULL, 'This is helper to help you ', 16, NULL, 0, 1, 0, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(28, 'test', 'FieldInput', NULL, 0, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 16, NULL, 0, 1, 0, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(29, 'Ok', 'FieldImage64bit', NULL, 2, 'Go', NULL, '', 16, NULL, 0, 1, 1, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(30, 'Ghnv', 'FieldRadios', NULL, 3, 'Fgvvg', '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', '', 16, NULL, 0, 1, 0, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(31, 'Pistopb', 'FieldSelect', NULL, 4, 'Piston qui saute ', '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', '', 16, NULL, 0, 1, 0, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(32, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', '', 17, NULL, 0, 1, 0, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(33, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 17, NULL, 0, 0, 0, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(34, 'Niveau huile', 'FieldInput', NULL, 1, 'Niveau huile', NULL, 'This is helper to help you ', 18, NULL, 0, 1, 0, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(35, 'test', 'FieldInput', NULL, 0, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 18, NULL, 0, 1, 0, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(36, 'Ok', 'FieldImage64bit', NULL, 2, 'Go', NULL, '', 18, NULL, 0, 1, 1, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(37, 'Ghnv', 'FieldRadios', NULL, 3, 'Fgvvg', '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', '', 18, NULL, 0, 1, 0, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(38, 'Pistopb', 'FieldSelect', NULL, 4, 'Piston qui saute ', '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', '', 18, NULL, 0, 1, 0, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(39, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', '', 19, NULL, 0, 1, 0, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(40, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 19, NULL, 0, 0, 0, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(41, 'Niveau huile', 'FieldInput', NULL, 1, 'Niveau huile', NULL, 'This is helper to help you ', 20, NULL, 0, 1, 0, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(42, 'test', 'FieldInput', NULL, 0, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 20, NULL, 0, 1, 0, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(43, 'Ok', 'FieldImage64bit', NULL, 2, 'Go', NULL, '', 20, NULL, 0, 1, 1, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(44, 'Ghnv', 'FieldRadios', NULL, 3, 'Fgvvg', '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', '', 20, NULL, 0, 1, 0, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(45, 'Pistopb', 'FieldSelect', NULL, 4, 'Piston qui saute ', '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', '', 20, NULL, 0, 1, 0, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(46, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', '', 21, NULL, 0, 1, 0, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(47, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 21, NULL, 0, 0, 0, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(48, 'Niveau huile', 'FieldInput', NULL, 1, 'Niveau huile', NULL, 'This is helper to help you ', 22, NULL, 0, 1, 0, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(49, 'test', 'FieldInput', NULL, 0, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 22, NULL, 0, 1, 0, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(50, 'Ok', 'FieldImage64bit', NULL, 2, 'Go', NULL, '', 22, NULL, 0, 1, 1, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(51, 'Ghnv', 'FieldRadios', NULL, 3, 'Fgvvg', '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', '', 22, NULL, 0, 1, 0, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(52, 'Pistopb', 'FieldSelect', NULL, 4, 'Piston qui saute ', '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', '', 22, NULL, 0, 1, 0, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(53, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', '', 23, NULL, 0, 1, 0, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(54, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 23, NULL, 0, 0, 0, '2024-02-17 11:22:55', '2024-02-17 11:22:55');

-- --------------------------------------------------------

--
-- Structure de la table `default_admin_sub_categories`
--

CREATE TABLE `default_admin_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subCategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_admin_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `default_admin_sub_categories`
--

INSERT INTO `default_admin_sub_categories` (`id`, `subCategoryName`, `default_admin_category_id`, `created_at`, `updated_at`) VALUES
(6, 'Diagnostic entree', 4, '2024-02-08 13:19:20', '2024-02-08 13:19:20'),
(7, 'Test pistons', 5, '2024-02-08 13:19:20', '2024-02-08 13:19:20'),
(8, 'Équilibrage pistons', 5, '2024-02-08 13:19:20', '2024-02-08 13:19:20'),
(9, 'Diagnostic entree', 6, '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(10, 'Équilibrage pistons', 7, '2024-02-09 17:20:39', '2024-02-09 17:20:39'),
(11, 'Test', 4, '2024-02-10 12:40:47', '2024-02-10 12:40:47'),
(12, 'Diagnostic entree', 8, '2024-02-10 18:36:30', '2024-02-10 18:36:30'),
(13, 'Équilibrage pistons', 9, '2024-02-10 18:36:30', '2024-02-10 18:36:30'),
(14, 'Diagnostic entree', 10, '2024-02-12 10:49:37', '2024-02-12 10:49:37'),
(15, 'Équilibrage pistons', 11, '2024-02-12 10:49:37', '2024-02-12 10:49:37'),
(16, 'Diagnostic entree', 12, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(17, 'Équilibrage pistons', 13, '2024-02-15 20:26:59', '2024-02-15 20:26:59'),
(18, 'Diagnostic entree', 14, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(19, 'Équilibrage pistons', 15, '2024-02-16 10:08:39', '2024-02-16 10:08:39'),
(20, 'Diagnostic entree', 16, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(21, 'Équilibrage pistons', 17, '2024-02-16 13:00:56', '2024-02-16 13:00:56'),
(22, 'Diagnostic entree', 18, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(23, 'Équilibrage pistons', 19, '2024-02-17 11:22:55', '2024-02-17 11:22:55'),
(24, 'hello', 20, '2024-02-17 11:52:25', '2024-02-17 11:52:25'),
(25, 'world', 20, '2024-02-17 11:52:32', '2024-02-17 11:52:32');

-- --------------------------------------------------------

--
-- Structure de la table `default_categories`
--

CREATE TABLE `default_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `default_categories`
--

INSERT INTO `default_categories` (`id`, `categoryName`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Diagnostic_', 33, '2024-01-15 13:26:59', '2024-01-15 13:27:06'),
(3, 'Changement pistons.', 33, '2024-02-06 21:49:23', '2024-02-06 21:49:43');

-- --------------------------------------------------------

--
-- Structure de la table `default_category_folder`
--

CREATE TABLE `default_category_folder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_category_id` bigint(20) UNSIGNED NOT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `default_inputs`
--

CREATE TABLE `default_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inputName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inputValue` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputOrder` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_default_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `display` tinyint(1) NOT NULL DEFAULT 1,
  `principalImage` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `default_inputs`
--

INSERT INTO `default_inputs` (`id`, `inputName`, `inputType`, `inputValue`, `inputOrder`, `label`, `options`, `helper`, `sub_category_default_id`, `created_at`, `updated_at`, `folder_id`, `required`, `display`, `principalImage`) VALUES
(1, 'Niveau huile', 'FieldInput', NULL, 1, 'Niveau huile', NULL, 'This is helper to help you ', 1, '2024-01-15 13:28:01', '2024-01-21 13:34:53', NULL, 0, 1, 0),
(2, 'section', 'FieldRadios', NULL, 0, 'Le problème est-il dans cette section ?', '[{\"label\":\"oui\",\"value\":\"oui\"},{\"label\":\"non\",\"value\":\"non\"}]', 'section', 2, '2024-01-18 11:13:50', '2024-01-18 11:13:50', NULL, 0, 1, 0),
(3, 'contenu', 'FieldImage64bit', NULL, 0, 'contenu', NULL, 'contenu', 2, '2024-01-18 11:14:20', '2024-01-18 11:14:20', NULL, 0, 1, 0),
(4, 'test', 'FieldInput', '', 0, 'Niveau eau', NULL, 'Taper le niveau de eau ici', 1, '2024-01-21 13:33:56', '2024-01-21 16:12:25', NULL, 0, 1, 0),
(6, 'Nature de test', 'FieldRadios', NULL, 1, 'Nature de test ', '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', '', 4, '2024-02-06 22:23:28', '2024-02-06 22:28:37', NULL, 0, 1, 0),
(7, 'Pb', 'FieldRadios', NULL, 2, 'Le problème est t\'il dans cette section', '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', '', 4, '2024-02-06 22:28:04', '2024-02-06 22:28:37', NULL, 0, 0, 0),
(8, 'Ok', 'FieldImage64bit', NULL, 2, 'Go', NULL, '', 1, '2024-02-13 21:19:58', '2024-02-13 21:19:58', NULL, 0, 1, 1),
(9, 'Ghnv', 'FieldRadios', NULL, 3, 'Fgvvg', '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', '', 1, '2024-02-13 21:35:51', '2024-02-13 21:35:51', NULL, 0, 1, 0),
(10, 'Pistopb', 'FieldSelect', NULL, 4, 'Piston qui saute ', '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', '', 1, '2024-02-13 21:36:42', '2024-02-13 21:36:42', NULL, 0, 1, 0),
(11, 'dfdf55ddd', 'FieldInput', NULL, 3, 'sdfsdfddddd', NULL, NULL, 4, '2024-02-17 12:15:20', '2024-02-17 13:51:09', NULL, 0, 1, 0),
(12, 'dfhrh', 'FieldImage64bit', NULL, 4, 'dfgdfg', NULL, NULL, 4, '2024-02-17 13:56:36', '2024-02-17 13:56:41', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `foldercategory`
--

CREATE TABLE `foldercategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryId` bigint(20) UNSIGNED DEFAULT NULL,
  `folderId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `foldercategory`
--

INSERT INTO `foldercategory` (`id`, `categoryId`, `folderId`, `created_at`, `updated_at`) VALUES
(1, 2, 11, NULL, NULL),
(2, 3, 12, NULL, NULL),
(3, 3, 13, NULL, NULL),
(4, 3, 14, NULL, NULL),
(5, 4, 15, NULL, NULL),
(6, 4, 16, NULL, NULL),
(7, 4, 17, NULL, NULL),
(8, 5, 18, NULL, NULL),
(9, 5, 19, NULL, NULL),
(10, 5, 20, NULL, NULL),
(11, 6, 21, NULL, NULL),
(12, 6, 22, NULL, NULL),
(13, 6, 23, NULL, NULL),
(14, 6, 24, NULL, NULL),
(15, 6, 25, NULL, NULL),
(16, 7, 26, NULL, NULL),
(17, 7, 27, NULL, NULL),
(18, 7, 28, NULL, NULL),
(19, 7, 29, NULL, NULL),
(20, 7, 30, NULL, NULL),
(21, 7, 31, NULL, NULL),
(22, 7, 32, NULL, NULL),
(23, 8, 33, NULL, NULL),
(24, 8, 34, NULL, NULL),
(25, 8, 35, NULL, NULL),
(26, 8, 36, NULL, NULL),
(27, 9, 37, NULL, NULL),
(28, 9, 38, NULL, NULL),
(29, 9, 39, NULL, NULL),
(30, 9, 40, NULL, NULL),
(31, 10, 41, NULL, NULL),
(32, 10, 42, NULL, NULL),
(33, 10, 43, NULL, NULL),
(34, 10, 44, NULL, NULL),
(35, 11, 45, NULL, NULL),
(36, 11, 46, NULL, NULL),
(37, 11, 47, NULL, NULL),
(38, 11, 48, NULL, NULL),
(39, 11, 49, NULL, NULL),
(40, 11, 50, NULL, NULL),
(41, 11, 51, NULL, NULL),
(42, 11, 52, NULL, NULL),
(43, 12, 53, NULL, NULL),
(44, 12, 54, NULL, NULL),
(45, 12, 55, NULL, NULL),
(46, 12, 56, NULL, NULL),
(47, 12, 57, NULL, NULL),
(48, 12, 58, NULL, NULL),
(49, 12, 59, NULL, NULL),
(50, 12, 60, NULL, NULL),
(51, 13, 61, NULL, NULL),
(52, 13, 62, NULL, NULL),
(53, 13, 63, NULL, NULL),
(54, 13, 64, NULL, NULL),
(55, 13, 65, NULL, NULL),
(56, 13, 66, NULL, NULL),
(57, 13, 67, NULL, NULL),
(58, 13, 68, NULL, NULL),
(59, 14, 69, NULL, NULL),
(60, 14, 70, NULL, NULL),
(61, 14, 71, NULL, NULL),
(62, 14, 72, NULL, NULL),
(63, 14, 73, NULL, NULL),
(64, 14, 74, NULL, NULL),
(65, 14, 75, NULL, NULL),
(66, 14, 76, NULL, NULL),
(67, 14, 77, NULL, NULL),
(68, 14, 78, NULL, NULL),
(69, 15, 79, NULL, NULL),
(70, 15, 80, NULL, NULL),
(71, 15, 81, NULL, NULL),
(72, 15, 82, NULL, NULL),
(73, 15, 83, NULL, NULL),
(74, 15, 84, NULL, NULL),
(75, 15, 85, NULL, NULL),
(76, 15, 86, NULL, NULL),
(77, 15, 87, NULL, NULL),
(78, 15, 88, NULL, NULL),
(79, 15, 89, NULL, NULL),
(80, 15, 90, NULL, NULL),
(81, 16, 91, NULL, NULL),
(82, 16, 92, NULL, NULL),
(83, 16, 93, NULL, NULL),
(84, 16, 94, NULL, NULL),
(85, 16, 95, NULL, NULL),
(86, 16, 96, NULL, NULL),
(87, 16, 97, NULL, NULL),
(88, 16, 98, NULL, NULL),
(89, 16, 99, NULL, NULL),
(90, 16, 100, NULL, NULL),
(91, 16, 101, NULL, NULL),
(92, 16, 102, NULL, NULL),
(93, 17, 103, NULL, NULL),
(94, 17, 104, NULL, NULL),
(95, 17, 105, NULL, NULL),
(96, 17, 106, NULL, NULL),
(97, 17, 107, NULL, NULL),
(98, 17, 108, NULL, NULL),
(99, 17, 109, NULL, NULL),
(100, 17, 110, NULL, NULL),
(101, 17, 111, NULL, NULL),
(102, 17, 112, NULL, NULL),
(103, 17, 113, NULL, NULL),
(104, 17, 114, NULL, NULL),
(105, 18, 115, NULL, NULL),
(106, 18, 116, NULL, NULL),
(107, 18, 117, NULL, NULL),
(108, 18, 118, NULL, NULL),
(109, 18, 119, NULL, NULL),
(110, 18, 120, NULL, NULL),
(111, 18, 121, NULL, NULL),
(112, 18, 122, NULL, NULL),
(113, 18, 123, NULL, NULL),
(114, 18, 124, NULL, NULL),
(115, 18, 125, NULL, NULL),
(116, 18, 126, NULL, NULL),
(117, 18, 127, NULL, NULL),
(118, 18, 128, NULL, NULL),
(119, 19, 129, NULL, NULL),
(120, 19, 130, NULL, NULL),
(121, 19, 131, NULL, NULL),
(122, 19, 132, NULL, NULL),
(123, 19, 133, NULL, NULL),
(124, 19, 134, NULL, NULL),
(125, 19, 135, NULL, NULL),
(126, 19, 136, NULL, NULL),
(127, 19, 137, NULL, NULL),
(128, 19, 138, NULL, NULL),
(129, 19, 139, NULL, NULL),
(130, 19, 140, NULL, NULL),
(131, 19, 141, NULL, NULL),
(132, 19, 142, NULL, NULL),
(133, 20, 143, NULL, NULL),
(134, 20, 144, NULL, NULL),
(135, 20, 145, NULL, NULL),
(136, 20, 146, NULL, NULL),
(137, 20, 147, NULL, NULL),
(138, 20, 148, NULL, NULL),
(139, 20, 149, NULL, NULL),
(140, 20, 150, NULL, NULL),
(141, 20, 151, NULL, NULL),
(142, 20, 152, NULL, NULL),
(143, 20, 153, NULL, NULL),
(144, 20, 154, NULL, NULL),
(145, 20, 155, NULL, NULL),
(146, 20, 156, NULL, NULL),
(147, 21, 157, NULL, NULL),
(148, 21, 158, NULL, NULL),
(149, 21, 159, NULL, NULL),
(150, 21, 160, NULL, NULL),
(151, 21, 161, NULL, NULL),
(152, 21, 162, NULL, NULL),
(153, 21, 163, NULL, NULL),
(154, 21, 164, NULL, NULL),
(155, 21, 165, NULL, NULL),
(156, 21, 166, NULL, NULL),
(157, 21, 167, NULL, NULL),
(158, 21, 168, NULL, NULL),
(159, 21, 169, NULL, NULL),
(160, 21, 170, NULL, NULL),
(161, 22, 171, NULL, NULL),
(162, 22, 172, NULL, NULL),
(163, 22, 173, NULL, NULL),
(164, 22, 174, NULL, NULL),
(165, 22, 175, NULL, NULL),
(166, 22, 176, NULL, NULL),
(167, 22, 177, NULL, NULL),
(168, 22, 178, NULL, NULL),
(169, 22, 179, NULL, NULL),
(170, 22, 180, NULL, NULL),
(171, 22, 181, NULL, NULL),
(172, 22, 182, NULL, NULL),
(173, 22, 183, NULL, NULL),
(174, 22, 184, NULL, NULL),
(175, 22, 185, NULL, NULL),
(176, 22, 186, NULL, NULL),
(177, 23, 187, NULL, NULL),
(178, 23, 188, NULL, NULL),
(179, 23, 189, NULL, NULL),
(180, 23, 190, NULL, NULL),
(181, 23, 191, NULL, NULL),
(182, 23, 192, NULL, NULL),
(183, 23, 193, NULL, NULL),
(184, 23, 194, NULL, NULL),
(185, 23, 195, NULL, NULL),
(186, 23, 196, NULL, NULL),
(187, 23, 197, NULL, NULL),
(188, 23, 198, NULL, NULL),
(189, 23, 199, NULL, NULL),
(190, 23, 200, NULL, NULL),
(191, 23, 201, NULL, NULL),
(192, 23, 202, NULL, NULL),
(193, 24, 203, NULL, NULL),
(194, 24, 204, NULL, NULL),
(195, 24, 205, NULL, NULL),
(196, 24, 206, NULL, NULL),
(197, 24, 207, NULL, NULL),
(198, 24, 208, NULL, NULL),
(199, 24, 209, NULL, NULL),
(200, 24, 210, NULL, NULL),
(201, 24, 211, NULL, NULL),
(202, 24, 212, NULL, NULL),
(203, 24, 213, NULL, NULL),
(204, 24, 214, NULL, NULL),
(205, 24, 215, NULL, NULL),
(206, 24, 216, NULL, NULL),
(207, 24, 217, NULL, NULL),
(208, 24, 218, NULL, NULL),
(209, 25, 219, NULL, NULL),
(210, 25, 220, NULL, NULL),
(211, 25, 221, NULL, NULL),
(212, 25, 222, NULL, NULL),
(213, 25, 223, NULL, NULL),
(214, 25, 224, NULL, NULL),
(215, 25, 225, NULL, NULL),
(216, 25, 226, NULL, NULL),
(217, 25, 227, NULL, NULL),
(218, 25, 228, NULL, NULL),
(219, 25, 229, NULL, NULL),
(220, 25, 230, NULL, NULL),
(221, 25, 231, NULL, NULL),
(222, 25, 232, NULL, NULL),
(223, 25, 233, NULL, NULL),
(224, 25, 234, NULL, NULL),
(225, 25, 235, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `folders`
--

CREATE TABLE `folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hashtag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contrat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehiculeType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `panne` tinyint(1) NOT NULL DEFAULT 1,
  `arrivalType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notesVocal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `statusId` bigint(20) UNSIGNED DEFAULT NULL,
  `statusValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carId` bigint(20) UNSIGNED DEFAULT NULL,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `clientId` bigint(20) UNSIGNED DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `folders`
--

INSERT INTO `folders` (`id`, `hashtag`, `contrat`, `notes`, `vehiculeType`, `mileage`, `panne`, `arrivalType`, `notesVocal`, `created_at`, `updated_at`, `statusId`, `statusValue`, `carId`, `userId`, `clientId`, `images`, `video`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 1, '[\"oui\"]', NULL, NULL, '2024-01-22 08:59:06', NULL, NULL, 1, 34, 1, NULL, NULL),
(2, NULL, NULL, NULL, NULL, 15000, 1, NULL, NULL, '2024-02-14 23:00:00', '2024-02-16 10:24:05', NULL, NULL, 2, 34, 2, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-06 20:02:12', '2024-02-06 20:02:12', NULL, NULL, 3, 34, 4, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-06 20:09:30', '2024-02-06 20:09:30', NULL, NULL, 4, 34, 5, NULL, NULL),
(5, NULL, NULL, 'Kooo', NULL, 50000, 1, NULL, NULL, '2024-02-07 23:00:00', '2024-02-08 11:19:42', NULL, NULL, 5, 34, 6, NULL, NULL),
(6, NULL, NULL, NULL, NULL, 1250000, 1, NULL, NULL, '2024-02-08 00:00:00', '2024-02-17 11:50:03', NULL, NULL, 12, 34, 22, NULL, NULL),
(7, NULL, NULL, 'ssdf', NULL, 58999, 1, NULL, NULL, '2024-02-11 00:00:00', '2024-02-17 18:14:40', NULL, NULL, 13, 46, 23, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-09 18:02:46', '2024-02-09 18:02:46', NULL, NULL, 14, 47, 24, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-09 18:12:05', '2024-02-09 18:12:05', NULL, NULL, 15, 46, 25, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-09 00:00:00', '2024-02-09 18:21:30', NULL, NULL, 16, 46, 26, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-12 10:52:32', '2024-02-12 10:52:32', NULL, NULL, 17, 51, 27, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-12 13:17:42', '2024-02-12 13:17:42', NULL, NULL, 18, 51, 28, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-12 13:21:13', '2024-02-12 13:21:13', NULL, NULL, 19, 50, 29, NULL, NULL),
(14, NULL, NULL, NULL, NULL, 7800, 1, NULL, NULL, '2024-02-16 00:00:00', '2024-02-16 13:08:17', NULL, NULL, 20, 34, 30, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-16 10:09:46', '2024-02-16 10:09:46', NULL, NULL, 21, 59, 31, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-16 10:21:16', '2024-02-16 10:21:16', NULL, NULL, 22, 59, 32, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-16 11:40:31', '2024-02-16 11:40:31', NULL, NULL, 23, 70, 33, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-16 13:01:32', '2024-02-16 13:01:32', NULL, NULL, 24, 72, 34, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-16 18:14:36', '2024-02-16 18:14:36', NULL, NULL, 25, 70, 35, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-17 11:11:28', '2024-02-17 11:11:28', NULL, NULL, 26, 56, 36, NULL, NULL),
(21, NULL, NULL, NULL, NULL, 538, 1, NULL, NULL, '2024-02-21 23:00:00', '2024-02-17 14:16:56', NULL, NULL, 27, 46, 37, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-17 11:23:40', '2024-02-17 11:23:40', NULL, NULL, 28, 74, 38, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-17 11:24:21', '2024-02-17 11:24:21', NULL, NULL, 29, 74, 39, NULL, NULL),
(24, NULL, NULL, 'ok', NULL, 242424454, 1, NULL, NULL, '2024-02-17 00:00:00', '2024-02-17 12:02:35', NULL, NULL, 30, 74, 40, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-02-17 14:18:35', '2024-02-17 14:47:50', NULL, NULL, 31, 46, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, 8521, 1, NULL, NULL, NULL, '2024-02-18 13:55:55', NULL, NULL, 29, NULL, 39, '\"[]\"', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `inputs`
--

CREATE TABLE `inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inputName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputValue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputOrder` int(11) DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `principalImage` tinyint(1) NOT NULL DEFAULT 0,
  `display` tinyint(1) NOT NULL DEFAULT 1,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `inputs`
--

INSERT INTO `inputs` (`id`, `inputName`, `inputType`, `inputValue`, `inputOrder`, `sub_category_id`, `created_at`, `updated_at`, `helper`, `principalImage`, `display`, `options`, `label`) VALUES
(1, 'test', 'FieldInput', NULL, NULL, 51, '2024-02-06 19:39:33', '2024-02-06 19:42:18', NULL, 0, 1, NULL, ''),
(2, 'test', 'FieldInput', NULL, 1, 55, '2024-02-06 20:09:30', '2024-02-06 20:09:30', '', 0, 1, NULL, ''),
(3, 'test', 'FieldInput', NULL, 1, 56, '2024-02-06 20:09:30', '2024-02-06 20:09:30', '2222', 0, 0, NULL, ''),
(4, 'Hello', 'FieldTextarea', NULL, 2, 56, '2024-02-06 20:09:30', '2024-02-06 20:09:30', 'Ik', 0, 1, NULL, ''),
(5, 'test', 'FieldInput', NULL, 1, 58, '2024-02-06 20:13:13', '2024-02-06 20:13:13', '', 0, 1, NULL, ''),
(6, 'test', 'FieldCheckboxes', NULL, 2, 58, '2024-02-06 20:13:13', '2024-02-06 20:13:13', '', 0, 1, '[{\"label\":\"test\",\"value\":\"test\"},{\"label\":\"test\",\"value\":\"test\"}]', ''),
(7, 'test', 'FieldInput', NULL, 1, 59, '2024-02-06 20:13:13', '2024-02-06 20:13:13', '2222', 0, 0, NULL, ''),
(8, 'Hello', 'FieldTextarea', NULL, 2, 59, '2024-02-06 20:13:13', '2024-02-06 20:13:13', 'Ik', 0, 1, NULL, ''),
(9, 'Hi', 'FieldInput', NULL, NULL, 60, '2024-02-06 22:51:02', '2024-02-06 22:51:11', NULL, 0, 1, NULL, ''),
(10, 'input', 'FieldInput', NULL, NULL, 57, '2024-02-08 14:26:52', '2024-02-08 14:26:52', NULL, 0, 1, NULL, 'input'),
(11, 'test', 'FieldInput', NULL, 1, 64, '2024-02-08 14:38:41', '2024-02-08 14:38:41', '2222', 0, 0, NULL, '222'),
(12, 'Hello', 'FieldTextarea', NULL, 2, 64, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 'Ik', 0, 1, NULL, 'Ok'),
(13, 'Niveau huile', 'FieldInput', NULL, 1, 65, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(14, 'test', 'FieldInput', NULL, 0, 65, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(15, 'Nature de test', 'FieldRadios', NULL, 1, 67, '2024-02-08 14:38:41', '2024-02-08 14:38:41', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(16, 'Pb', 'FieldRadios', NULL, 2, 67, '2024-02-08 14:38:41', '2024-02-08 14:38:41', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(17, 'test', 'FieldInput', NULL, 1, 70, '2024-02-09 17:46:31', '2024-02-09 17:46:31', '2222', 0, 0, NULL, '222'),
(18, 'Hello', 'FieldTextarea', NULL, 2, 70, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 'Ik', 0, 1, NULL, 'Ok'),
(19, 'Niveau huile', 'FieldInput', NULL, 1, 71, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(20, 'test', 'FieldInput', NULL, 0, 71, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(21, 'Nature de test', 'FieldRadios', NULL, 1, 73, '2024-02-09 17:46:31', '2024-02-10 21:50:34', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(22, 'Pb', 'FieldRadios', NULL, 2, 73, '2024-02-09 17:46:31', '2024-02-09 17:46:31', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(23, 'Niveau huile', 'FieldInput', NULL, 1, 74, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(24, 'test', 'FieldInput', NULL, 0, 74, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(25, 'Nature de test', 'FieldRadios', NULL, 1, 75, '2024-02-09 17:46:31', '2024-02-09 17:46:31', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(26, 'Pb', 'FieldRadios', NULL, 2, 75, '2024-02-09 17:46:31', '2024-02-09 17:46:31', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(27, 'Niveau huile', 'FieldInput', NULL, 1, 76, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(28, 'test', 'FieldInput', NULL, 0, 76, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(29, 'Nature de test', 'FieldRadios', NULL, 1, 78, '2024-02-09 18:02:46', '2024-02-09 18:02:46', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(30, 'Pb', 'FieldRadios', NULL, 2, 78, '2024-02-09 18:02:46', '2024-02-09 18:02:46', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(31, 'Pistopb', 'FieldCheckboxes', NULL, 3, 78, '2024-02-09 18:02:46', '2024-02-09 18:02:46', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(32, 'Niveau huile', 'FieldInput', NULL, 1, 79, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(33, 'test', 'FieldInput', NULL, 0, 79, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(34, 'Nature de test', 'FieldRadios', NULL, 1, 80, '2024-02-09 18:02:46', '2024-02-09 18:02:46', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(35, 'Pb', 'FieldRadios', NULL, 2, 80, '2024-02-09 18:02:46', '2024-02-09 18:02:46', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(36, 'Niveau huile', 'FieldInput', NULL, 1, 81, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(37, 'test', 'FieldInput', NULL, 0, 81, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(38, 'Nature de test', 'FieldRadios', NULL, 1, 83, '2024-02-09 18:12:05', '2024-02-09 18:12:05', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(39, 'Pb', 'FieldRadios', NULL, 2, 83, '2024-02-09 18:12:05', '2024-02-09 18:12:05', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(40, 'Pistopb', 'FieldCheckboxes', NULL, 3, 83, '2024-02-09 18:12:05', '2024-02-09 18:12:05', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(41, 'Niveau huile', 'FieldInput', NULL, 1, 84, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(42, 'test', 'FieldInput', NULL, 0, 84, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(43, 'Nature de test', 'FieldRadios', NULL, 1, 85, '2024-02-09 18:12:05', '2024-02-09 18:12:05', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(44, 'Pb', 'FieldRadios', NULL, 2, 85, '2024-02-09 18:12:05', '2024-02-09 18:27:33', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette sectionok..'),
(45, 'Niveau huile', 'FieldInput', NULL, 1, 86, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(46, 'test', 'FieldInput', NULL, 0, 86, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(47, 'Nature de test', 'FieldRadios', NULL, 1, 88, '2024-02-09 18:17:11', '2024-02-09 18:17:11', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(48, 'Pb', 'FieldRadios', NULL, 2, 88, '2024-02-09 18:17:11', '2024-02-09 18:17:11', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(49, 'Pistopb', 'FieldCheckboxes', NULL, 3, 88, '2024-02-09 18:17:11', '2024-02-09 18:17:11', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(50, 'Niveau huile', 'FieldInput', NULL, 1, 89, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(51, 'test', 'FieldInput', NULL, 0, 89, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(52, 'Nature de test', 'FieldRadios', NULL, 1, 90, '2024-02-09 18:17:11', '2024-02-09 18:17:11', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(53, 'Pb', 'FieldRadios', NULL, 2, 90, '2024-02-09 18:17:11', '2024-02-09 18:17:11', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(54, 'Niveau huile', 'FieldInput', NULL, 0, 91, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(55, 'test', 'FieldInput', NULL, 1, 91, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(56, 'Cettedgv', 'FieldSelect', NULL, 1, 92, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 1, NULL, 'Dfv '),
(57, 'test', 'FieldInput', NULL, 1, 93, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 1, NULL, 'test'),
(58, 'Nature de test', 'FieldRadios', NULL, 1, 94, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(59, 'Pb', 'FieldRadios', NULL, 2, 94, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(60, 'Pistopb', 'FieldCheckboxes', NULL, 3, 94, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(61, 'Niveau huile', 'FieldInput', NULL, 1, 95, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(62, 'test', 'FieldInput', NULL, 0, 95, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(63, 'Nature de test', 'FieldRadios', NULL, 1, 96, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(64, 'Pb', 'FieldRadios', NULL, 2, 96, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(65, 'Niveau huile', 'FieldInput', NULL, 1, 97, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(66, 'test', 'FieldInput', NULL, 0, 97, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(67, 'Nature de test', 'FieldRadios', NULL, 1, 98, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(68, 'Pb', 'FieldRadios', NULL, 2, 98, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(69, 'Niveau huile', 'FieldInput', NULL, 1, 99, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(70, 'test', 'FieldInput', NULL, 0, 99, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(71, 'Nature de test', 'FieldRadios', NULL, 1, 100, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(72, 'Pb', 'FieldRadios', NULL, 2, 100, '2024-02-12 10:52:32', '2024-02-12 10:52:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(73, 'Niveau huile', 'FieldInput', NULL, 0, 101, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(74, 'test', 'FieldInput', NULL, 1, 101, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(75, 'Cettedgv', 'FieldSelect', NULL, 1, 102, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 1, NULL, 'Dfv '),
(76, 'test', 'FieldInput', NULL, 1, 103, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 1, NULL, 'test'),
(77, 'Nature de test', 'FieldRadios', NULL, 1, 104, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(78, 'Pb', 'FieldRadios', NULL, 2, 104, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(79, 'Pistopb', 'FieldCheckboxes', NULL, 3, 104, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(80, 'Niveau huile', 'FieldInput', NULL, 1, 105, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(81, 'test', 'FieldInput', NULL, 0, 105, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(82, 'Nature de test', 'FieldRadios', NULL, 1, 106, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(83, 'Pb', 'FieldRadios', NULL, 2, 106, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(84, 'Niveau huile', 'FieldInput', NULL, 1, 107, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(85, 'test', 'FieldInput', NULL, 0, 107, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(86, 'Nature de test', 'FieldRadios', NULL, 1, 108, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(87, 'Pb', 'FieldRadios', NULL, 2, 108, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(88, 'Niveau huile', 'FieldInput', NULL, 1, 109, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(89, 'test', 'FieldInput', NULL, 0, 109, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(90, 'Nature de test', 'FieldRadios', NULL, 1, 110, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(91, 'Pb', 'FieldRadios', NULL, 2, 110, '2024-02-12 13:17:42', '2024-02-12 13:17:42', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(92, 'Niveau huile', 'FieldInput', NULL, 0, 111, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(93, 'test', 'FieldInput', NULL, 1, 111, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(94, 'Cettedgv', 'FieldSelect', NULL, 1, 112, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 1, NULL, 'Dfv '),
(95, 'test', 'FieldInput', NULL, 1, 113, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 1, NULL, 'test'),
(96, 'Nature de test', 'FieldRadios', NULL, 1, 114, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(97, 'Pb', 'FieldRadios', NULL, 2, 114, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(98, 'Pistopb', 'FieldCheckboxes', NULL, 3, 114, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(99, 'Niveau huile', 'FieldInput', NULL, 1, 115, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(100, 'test', 'FieldInput', NULL, 0, 115, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(101, 'Nature de test', 'FieldRadios', NULL, 1, 116, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(102, 'Pb', 'FieldRadios', NULL, 2, 116, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(103, 'Niveau huile', 'FieldInput', NULL, 1, 117, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(104, 'test', 'FieldInput', NULL, 0, 117, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(105, 'Nature de test', 'FieldRadios', NULL, 1, 118, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(106, 'Pb', 'FieldRadios', NULL, 2, 118, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(107, 'Niveau huile', 'FieldInput', NULL, 1, 119, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(108, 'test', 'FieldInput', NULL, 0, 119, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(109, 'Nature de test', 'FieldRadios', NULL, 1, 120, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(110, 'Pb', 'FieldRadios', NULL, 2, 120, '2024-02-12 13:21:13', '2024-02-12 13:21:13', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(111, 'test', 'FieldInput', '226248dae1646b897a2ff0c3e60e8f5', 1, 62, '2024-02-16 09:26:24', '2024-02-16 09:26:30', NULL, 0, 1, NULL, 'test'),
(112, 'Niveau huile', 'FieldInput', NULL, 1, 121, '2024-02-16 09:33:49', '2024-02-18 11:16:24', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(113, 'test', 'FieldInput', NULL, 2, 121, '2024-02-16 09:33:49', '2024-02-18 11:16:23', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(114, 'Cettedgv', 'FieldSelect', NULL, 1, 122, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, NULL, 'Dfv '),
(115, 'test', 'FieldInput', NULL, 1, 123, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, NULL, 'test'),
(116, 'Nature de test', 'FieldRadios', NULL, 1, 124, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(117, 'Pb', 'FieldRadios', NULL, 2, 124, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(118, 'Pistopb', 'FieldCheckboxes', NULL, 3, 124, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(119, 'Niveau huile', 'FieldInput', NULL, 1, 125, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(120, 'test', 'FieldInput', NULL, 0, 125, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(121, 'Nature de test', 'FieldRadios', NULL, 1, 126, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(122, 'Pb', 'FieldRadios', NULL, 2, 126, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(123, 'Niveau huile', 'FieldInput', NULL, 1, 127, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(124, 'test', 'FieldInput', NULL, 0, 127, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(125, 'Nature de test', 'FieldRadios', NULL, 1, 128, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(126, 'Pb', 'FieldRadios', NULL, 2, 128, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(127, 'Niveau huile', 'FieldInput', NULL, 1, 129, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(128, 'test', 'FieldInput', NULL, 0, 129, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(129, 'Nature de test', 'FieldRadios', NULL, 1, 130, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(130, 'Pb', 'FieldRadios', NULL, 2, 130, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(131, 'Niveau huile', 'FieldInput', NULL, 1, 131, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(132, 'test', 'FieldInput', NULL, 0, 131, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(133, 'Ok', 'FieldImage64bit', NULL, 2, 131, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 1, 1, NULL, 'Go'),
(134, 'Ghnv', 'FieldRadios', NULL, 3, 131, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(135, 'Pistopb', 'FieldSelect', NULL, 4, 131, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(136, 'Nature de test', 'FieldRadios', NULL, 1, 132, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(137, 'Pb', 'FieldRadios', NULL, 2, 132, '2024-02-16 09:33:49', '2024-02-16 09:33:49', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(138, 'Niveau huile', 'FieldInput', NULL, 0, 133, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(139, 'test', 'FieldInput', NULL, 1, 133, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(140, 'Cettedgv', 'FieldSelect', NULL, 1, 134, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, NULL, 'Dfv '),
(141, 'test', 'FieldInput', NULL, 1, 135, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, NULL, 'test'),
(142, 'Nature de test', 'FieldRadios', NULL, 1, 136, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(143, 'Pb', 'FieldRadios', NULL, 2, 136, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(144, 'Pistopb', 'FieldCheckboxes', NULL, 3, 136, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(145, 'Niveau huile', 'FieldInput', NULL, 1, 137, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(146, 'test', 'FieldInput', NULL, 0, 137, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(147, 'Nature de test', 'FieldRadios', NULL, 1, 138, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(148, 'Pb', 'FieldRadios', NULL, 2, 138, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(149, 'Niveau huile', 'FieldInput', NULL, 1, 139, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(150, 'test', 'FieldInput', NULL, 0, 139, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(151, 'Nature de test', 'FieldRadios', NULL, 1, 140, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(152, 'Pb', 'FieldRadios', NULL, 2, 140, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(153, 'Niveau huile', 'FieldInput', NULL, 1, 141, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(154, 'test', 'FieldInput', NULL, 0, 141, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(155, 'Nature de test', 'FieldRadios', NULL, 1, 142, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(156, 'Pb', 'FieldRadios', NULL, 2, 142, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(157, 'Niveau huile', 'FieldInput', NULL, 1, 143, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(158, 'test', 'FieldInput', NULL, 0, 143, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(159, 'Ok', 'FieldImage64bit', NULL, 2, 143, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 1, 1, NULL, 'Go'),
(160, 'Ghnv', 'FieldRadios', NULL, 3, 143, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(161, 'Pistopb', 'FieldSelect', NULL, 4, 143, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(162, 'Nature de test', 'FieldRadios', NULL, 1, 144, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(163, 'Pb', 'FieldRadios', NULL, 2, 144, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(164, 'Niveau huile', 'FieldInput', NULL, 1, 145, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(165, 'test', 'FieldInput', NULL, 0, 145, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(166, 'Ok', 'FieldImage64bit', NULL, 2, 145, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 1, 1, NULL, 'Go'),
(167, 'Ghnv', 'FieldRadios', NULL, 3, 145, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(168, 'Pistopb', 'FieldSelect', NULL, 4, 145, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(169, 'Nature de test', 'FieldRadios', NULL, 1, 146, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(170, 'Pb', 'FieldRadios', NULL, 2, 146, '2024-02-16 10:09:46', '2024-02-16 10:09:46', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(171, 'Niveau huile', 'FieldInput', NULL, 0, 147, '2024-02-16 10:21:16', '2024-02-16 10:21:16', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(172, 'test', 'FieldInput', NULL, 1, 147, '2024-02-16 10:21:16', '2024-02-16 10:21:16', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(173, 'Cettedgv', 'FieldSelect', NULL, 1, 148, '2024-02-16 10:21:16', '2024-02-16 10:21:16', '', 0, 1, NULL, 'Dfv '),
(174, 'test', 'FieldInput', NULL, 1, 149, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, NULL, 'test'),
(175, 'Nature de test', 'FieldRadios', NULL, 1, 150, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(176, 'Pb', 'FieldRadios', NULL, 2, 150, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(177, 'Pistopb', 'FieldCheckboxes', NULL, 3, 150, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(178, 'Niveau huile', 'FieldInput', NULL, 1, 151, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(179, 'test', 'FieldInput', NULL, 0, 151, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(180, 'Nature de test', 'FieldRadios', NULL, 1, 152, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(181, 'Pb', 'FieldRadios', NULL, 2, 152, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(182, 'Niveau huile', 'FieldInput', NULL, 1, 153, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(183, 'test', 'FieldInput', NULL, 0, 153, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(184, 'Nature de test', 'FieldRadios', NULL, 1, 154, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(185, 'Pb', 'FieldRadios', NULL, 2, 154, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(186, 'Niveau huile', 'FieldInput', NULL, 1, 155, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(187, 'test', 'FieldInput', NULL, 0, 155, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(188, 'Nature de test', 'FieldRadios', NULL, 1, 156, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(189, 'Pb', 'FieldRadios', NULL, 2, 156, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(190, 'Niveau huile', 'FieldInput', NULL, 1, 157, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(191, 'test', 'FieldInput', NULL, 0, 157, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(192, 'Ok', 'FieldImage64bit', NULL, 2, 157, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 1, 1, NULL, 'Go'),
(193, 'Ghnv', 'FieldRadios', NULL, 3, 157, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(194, 'Pistopb', 'FieldSelect', NULL, 4, 157, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(195, 'Nature de test', 'FieldRadios', NULL, 1, 158, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(196, 'Pb', 'FieldRadios', NULL, 2, 158, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(197, 'Niveau huile', 'FieldInput', NULL, 1, 159, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(198, 'test', 'FieldInput', NULL, 0, 159, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(199, 'Ok', 'FieldImage64bit', NULL, 2, 159, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 1, 1, NULL, 'Go'),
(200, 'Ghnv', 'FieldRadios', NULL, 3, 159, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(201, 'Pistopb', 'FieldSelect', NULL, 4, 159, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(202, 'Nature de test', 'FieldRadios', NULL, 1, 160, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(203, 'Pb', 'FieldRadios', NULL, 2, 160, '2024-02-16 10:21:17', '2024-02-16 10:21:17', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(204, 'Niveau huile', 'FieldInput', NULL, 0, 161, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(205, 'test', 'FieldInput', NULL, 1, 161, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(206, 'Cettedgv', 'FieldSelect', NULL, 1, 162, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, NULL, 'Dfv '),
(207, 'test', 'FieldInput', NULL, 1, 163, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, NULL, 'test'),
(208, 'Nature de test', 'FieldRadios', NULL, 1, 164, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(209, 'Pb', 'FieldRadios', NULL, 2, 164, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(210, 'Pistopb', 'FieldCheckboxes', NULL, 3, 164, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(211, 'Niveau huile', 'FieldInput', NULL, 1, 165, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(212, 'test', 'FieldInput', NULL, 0, 165, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(213, 'Nature de test', 'FieldRadios', NULL, 1, 166, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(214, 'Pb', 'FieldRadios', NULL, 2, 166, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(215, 'Niveau huile', 'FieldInput', NULL, 1, 167, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(216, 'test', 'FieldInput', NULL, 0, 167, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(217, 'Nature de test', 'FieldRadios', NULL, 1, 168, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(218, 'Pb', 'FieldRadios', NULL, 2, 168, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(219, 'Niveau huile', 'FieldInput', NULL, 1, 169, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(220, 'test', 'FieldInput', NULL, 0, 169, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(221, 'Nature de test', 'FieldRadios', NULL, 1, 170, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(222, 'Pb', 'FieldRadios', NULL, 2, 170, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(223, 'Niveau huile', 'FieldInput', NULL, 1, 171, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(224, 'test', 'FieldInput', NULL, 0, 171, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(225, 'Ok', 'FieldImage64bit', NULL, 2, 171, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 1, 1, NULL, 'Go'),
(226, 'Ghnv', 'FieldRadios', NULL, 3, 171, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(227, 'Pistopb', 'FieldSelect', NULL, 4, 171, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(228, 'Nature de test', 'FieldRadios', NULL, 1, 172, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(229, 'Pb', 'FieldRadios', NULL, 2, 172, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(230, 'Niveau huile', 'FieldInput', NULL, 1, 173, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(231, 'test', 'FieldInput', NULL, 0, 173, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(232, 'Ok', 'FieldImage64bit', NULL, 2, 173, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 1, 1, NULL, 'Go'),
(233, 'Ghnv', 'FieldRadios', NULL, 3, 173, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(234, 'Pistopb', 'FieldSelect', NULL, 4, 173, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(235, 'Nature de test', 'FieldRadios', NULL, 1, 174, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(236, 'Pb', 'FieldRadios', NULL, 2, 174, '2024-02-16 11:40:31', '2024-02-16 11:40:31', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(237, 'Niveau huile', 'FieldInput', NULL, 0, 175, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(238, 'test', 'FieldInput', NULL, 1, 175, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(239, 'Cettedgv', 'FieldSelect', NULL, 1, 176, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, NULL, 'Dfv '),
(240, 'test', 'FieldInput', NULL, 1, 177, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, NULL, 'test'),
(241, 'Nature de test', 'FieldRadios', NULL, 1, 178, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(242, 'Pb', 'FieldRadios', NULL, 2, 178, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(243, 'Pistopb', 'FieldCheckboxes', NULL, 3, 178, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(244, 'Niveau huile', 'FieldInput', NULL, 1, 179, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(245, 'test', 'FieldInput', NULL, 0, 179, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(246, 'Nature de test', 'FieldRadios', NULL, 1, 180, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(247, 'Pb', 'FieldRadios', NULL, 2, 180, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(248, 'Niveau huile', 'FieldInput', NULL, 1, 181, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(249, 'test', 'FieldInput', NULL, 0, 181, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(250, 'Nature de test', 'FieldRadios', NULL, 1, 182, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(251, 'Pb', 'FieldRadios', NULL, 2, 182, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(252, 'Niveau huile', 'FieldInput', NULL, 1, 183, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(253, 'test', 'FieldInput', NULL, 0, 183, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(254, 'Nature de test', 'FieldRadios', NULL, 1, 184, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(255, 'Pb', 'FieldRadios', NULL, 2, 184, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(256, 'Niveau huile', 'FieldInput', NULL, 1, 185, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(257, 'test', 'FieldInput', NULL, 0, 185, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(258, 'Ok', 'FieldImage64bit', NULL, 2, 185, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 1, 1, NULL, 'Go'),
(259, 'Ghnv', 'FieldRadios', NULL, 3, 185, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(260, 'Pistopb', 'FieldSelect', NULL, 4, 185, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(261, 'Nature de test', 'FieldRadios', NULL, 1, 186, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(262, 'Pb', 'FieldRadios', NULL, 2, 186, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(263, 'Niveau huile', 'FieldInput', NULL, 1, 187, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(264, 'test', 'FieldInput', NULL, 0, 187, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(265, 'Ok', 'FieldImage64bit', NULL, 2, 187, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 1, 1, NULL, 'Go'),
(266, 'Ghnv', 'FieldRadios', NULL, 3, 187, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(267, 'Pistopb', 'FieldSelect', NULL, 4, 187, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(268, 'Nature de test', 'FieldRadios', NULL, 1, 188, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(269, 'Pb', 'FieldRadios', NULL, 2, 188, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(270, 'Niveau huile', 'FieldInput', NULL, 1, 189, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(271, 'test', 'FieldInput', NULL, 0, 189, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(272, 'Ok', 'FieldImage64bit', NULL, 2, 189, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 1, 1, NULL, 'Go'),
(273, 'Ghnv', 'FieldRadios', NULL, 3, 189, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(274, 'Pistopb', 'FieldSelect', NULL, 4, 189, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(275, 'Nature de test', 'FieldRadios', NULL, 1, 190, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(276, 'Pb', 'FieldRadios', NULL, 2, 190, '2024-02-16 13:01:32', '2024-02-16 13:01:32', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(280, 'Cettedgv', 'FieldSelect', NULL, 1, 192, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, NULL, 'Dfv '),
(281, 'test', 'FieldInput', NULL, 1, 193, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, NULL, 'test');
INSERT INTO `inputs` (`id`, `inputName`, `inputType`, `inputValue`, `inputOrder`, `sub_category_id`, `created_at`, `updated_at`, `helper`, `principalImage`, `display`, `options`, `label`) VALUES
(282, 'Nature de test', 'FieldRadios', NULL, 1, 194, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(283, 'Pb', 'FieldRadios', NULL, 2, 194, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(284, 'Pistopb', 'FieldCheckboxes', NULL, 3, 194, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(285, 'Niveau huile', 'FieldInput', NULL, 1, 195, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(286, 'test', 'FieldInput', NULL, 0, 195, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(287, 'Nature de test', 'FieldRadios', NULL, 1, 196, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(288, 'Pb', 'FieldRadios', NULL, 2, 196, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(289, 'Niveau huile', 'FieldInput', NULL, 1, 197, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(290, 'test', 'FieldInput', NULL, 0, 197, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(291, 'Nature de test', 'FieldRadios', NULL, 1, 198, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(292, 'Pb', 'FieldRadios', NULL, 2, 198, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(293, 'Niveau huile', 'FieldInput', NULL, 1, 199, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(294, 'test', 'FieldInput', NULL, 0, 199, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(295, 'Nature de test', 'FieldRadios', NULL, 1, 200, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(296, 'Pb', 'FieldRadios', NULL, 2, 200, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(297, 'Niveau huile', 'FieldInput', NULL, 1, 201, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(298, 'test', 'FieldInput', NULL, 0, 201, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(299, 'Ok', 'FieldImage64bit', NULL, 2, 201, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 1, 1, NULL, 'Go'),
(300, 'Ghnv', 'FieldRadios', NULL, 3, 201, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(301, 'Pistopb', 'FieldSelect', NULL, 4, 201, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(302, 'Nature de test', 'FieldRadios', NULL, 1, 202, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(303, 'Pb', 'FieldRadios', NULL, 2, 202, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(304, 'Niveau huile', 'FieldInput', NULL, 1, 203, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(305, 'test', 'FieldInput', NULL, 0, 203, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(306, 'Ok', 'FieldImage64bit', NULL, 2, 203, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 1, 1, NULL, 'Go'),
(307, 'Ghnv', 'FieldRadios', NULL, 3, 203, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(308, 'Pistopb', 'FieldSelect', NULL, 4, 203, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(309, 'Nature de test', 'FieldRadios', NULL, 1, 204, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(310, 'Pb', 'FieldRadios', NULL, 2, 204, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(311, 'Niveau huile', 'FieldInput', NULL, 1, 205, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(312, 'test', 'FieldInput', NULL, 0, 205, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(313, 'Ok', 'FieldImage64bit', NULL, 2, 205, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 1, 1, NULL, 'Go'),
(314, 'Ghnv', 'FieldRadios', NULL, 3, 205, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(315, 'Pistopb', 'FieldSelect', NULL, 4, 205, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(316, 'Nature de test', 'FieldRadios', NULL, 1, 206, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(317, 'Pb', 'FieldRadios', NULL, 2, 206, '2024-02-16 18:14:36', '2024-02-16 18:14:36', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(318, 'react-currency-input-field', 'FieldInput', NULL, 2, 193, '2024-02-16 18:18:43', '2024-02-16 18:18:43', NULL, 0, 1, NULL, 'react-currency-input-field'),
(320, 'Niveau huile', 'FieldInput', NULL, 0, 207, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(321, 'test', 'FieldInput', NULL, 1, 207, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(322, 'Cettedgv', 'FieldSelect', NULL, 1, 208, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, NULL, 'Dfv '),
(323, 'test', 'FieldInput', NULL, 1, 209, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, NULL, 'test'),
(324, 'Nature de test', 'FieldRadios', NULL, 1, 210, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(325, 'Pb', 'FieldRadios', NULL, 2, 210, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(326, 'Pistopb', 'FieldCheckboxes', NULL, 3, 210, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(327, 'Niveau huile', 'FieldInput', NULL, 1, 211, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(328, 'test', 'FieldInput', NULL, 0, 211, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(329, 'Nature de test', 'FieldRadios', NULL, 1, 212, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(330, 'Pb', 'FieldRadios', NULL, 2, 212, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(331, 'Niveau huile', 'FieldInput', NULL, 1, 213, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(332, 'test', 'FieldInput', NULL, 0, 213, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(333, 'Nature de test', 'FieldRadios', NULL, 1, 214, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(334, 'Pb', 'FieldRadios', NULL, 2, 214, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(335, 'Niveau huile', 'FieldInput', NULL, 1, 215, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(336, 'test', 'FieldInput', NULL, 0, 215, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(337, 'Nature de test', 'FieldRadios', NULL, 1, 216, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(338, 'Pb', 'FieldRadios', NULL, 2, 216, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(339, 'Niveau huile', 'FieldInput', NULL, 1, 217, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(340, 'test', 'FieldInput', NULL, 0, 217, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(341, 'Ok', 'FieldImage64bit', NULL, 2, 217, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 1, 1, NULL, 'Go'),
(342, 'Ghnv', 'FieldRadios', NULL, 3, 217, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(343, 'Pistopb', 'FieldSelect', NULL, 4, 217, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(344, 'Nature de test', 'FieldRadios', NULL, 1, 218, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(345, 'Pb', 'FieldRadios', NULL, 2, 218, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(346, 'Niveau huile', 'FieldInput', NULL, 1, 219, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(347, 'test', 'FieldInput', NULL, 0, 219, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(348, 'Ok', 'FieldImage64bit', NULL, 2, 219, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 1, 1, NULL, 'Go'),
(349, 'Ghnv', 'FieldRadios', NULL, 3, 219, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(350, 'Pistopb', 'FieldSelect', NULL, 4, 219, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(351, 'Nature de test', 'FieldRadios', NULL, 1, 220, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(352, 'Pb', 'FieldRadios', NULL, 2, 220, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(353, 'Niveau huile', 'FieldInput', NULL, 1, 221, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(354, 'test', 'FieldInput', NULL, 0, 221, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(355, 'Ok', 'FieldImage64bit', NULL, 2, 221, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 1, 1, NULL, 'Go'),
(356, 'Ghnv', 'FieldRadios', NULL, 3, 221, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(357, 'Pistopb', 'FieldSelect', NULL, 4, 221, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(358, 'Nature de test', 'FieldRadios', NULL, 1, 222, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(359, 'Pb', 'FieldRadios', NULL, 2, 222, '2024-02-17 11:11:28', '2024-02-17 11:11:28', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(360, 'test25', 'FieldSelect', 'azerree', 1, 191, '2024-02-17 11:15:33', '2024-02-17 11:25:11', '25', 0, 1, '[{\"label\":\"test\",\"value\":\"test\"},{\"label\":\"azer\",\"value\":\"azerree\"}]', 'test24'),
(361, 'test25', 'FieldImage64bit', NULL, 2, 191, '2024-02-17 11:15:48', '2024-02-17 11:15:48', NULL, 0, 1, NULL, 'test'),
(362, 'Niveau huile', 'FieldInput', 'excellent', 0, 223, '2024-02-17 11:21:26', '2024-02-17 14:21:30', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(363, 'test', 'FieldInput', NULL, 1, 223, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(364, 'Cettedgv', 'FieldSelect', NULL, 1, 224, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, NULL, 'Dfv '),
(365, 'test', 'FieldInput', NULL, 1, 225, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, NULL, 'test'),
(366, 'Nature de test', 'FieldRadios', NULL, 1, 226, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(367, 'Pb', 'FieldRadios', NULL, 2, 226, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(368, 'Pistopb', 'FieldCheckboxes', NULL, 3, 226, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(369, 'Niveau huile', 'FieldInput', NULL, 1, 227, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(370, 'test', 'FieldInput', NULL, 0, 227, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(371, 'Nature de test', 'FieldRadios', NULL, 1, 228, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(372, 'Pb', 'FieldRadios', NULL, 2, 228, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(373, 'Niveau huile', 'FieldInput', NULL, 1, 229, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(374, 'test', 'FieldInput', NULL, 0, 229, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(375, 'Nature de test', 'FieldRadios', NULL, 1, 230, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(376, 'Pb', 'FieldRadios', NULL, 2, 230, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(377, 'Niveau huile', 'FieldInput', NULL, 1, 231, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(378, 'test', 'FieldInput', NULL, 0, 231, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(379, 'Nature de test', 'FieldRadios', NULL, 1, 232, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(380, 'Pb', 'FieldRadios', NULL, 2, 232, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(381, 'Niveau huile', 'FieldInput', NULL, 1, 233, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(382, 'test', 'FieldInput', NULL, 0, 233, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(383, 'Ok', 'FieldImage64bit', NULL, 2, 233, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 1, 1, NULL, 'Go'),
(384, 'Ghnv', 'FieldRadios', NULL, 3, 233, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(385, 'Pistopb', 'FieldSelect', NULL, 4, 233, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(386, 'Nature de test', 'FieldRadios', NULL, 1, 234, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(387, 'Pb', 'FieldRadios', NULL, 2, 234, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(388, 'Niveau huile', 'FieldInput', NULL, 1, 235, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(389, 'test', 'FieldInput', NULL, 0, 235, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(390, 'Ok', 'FieldImage64bit', NULL, 2, 235, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 1, 1, NULL, 'Go'),
(391, 'Ghnv', 'FieldRadios', NULL, 3, 235, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(392, 'Pistopb', 'FieldSelect', NULL, 4, 235, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(393, 'Nature de test', 'FieldRadios', NULL, 1, 236, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(394, 'Pb', 'FieldRadios', NULL, 2, 236, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(395, 'Niveau huile', 'FieldInput', NULL, 1, 237, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(396, 'test', 'FieldInput', NULL, 0, 237, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(397, 'Ok', 'FieldImage64bit', NULL, 2, 237, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 1, 1, NULL, 'Go'),
(398, 'Ghnv', 'FieldRadios', NULL, 3, 237, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(399, 'Pistopb', 'FieldSelect', NULL, 4, 237, '2024-02-17 11:21:26', '2024-02-17 11:21:26', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(400, 'Nature de test', 'FieldRadios', NULL, 1, 238, '2024-02-17 11:21:27', '2024-02-17 11:21:27', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(401, 'Pb', 'FieldRadios', NULL, 2, 238, '2024-02-17 11:21:27', '2024-02-17 11:21:27', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(402, 'Niveau huile', 'FieldInput', NULL, 0, 239, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(403, 'test', 'FieldInput', NULL, 1, 239, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(404, 'Cettedgv', 'FieldSelect', NULL, 1, 240, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, NULL, 'Dfv '),
(405, 'test', 'FieldInput', NULL, 1, 241, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, NULL, 'test'),
(406, 'Nature de test', 'FieldRadios', NULL, 1, 242, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(407, 'Pb', 'FieldRadios', NULL, 2, 242, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(408, 'Pistopb', 'FieldCheckboxes', NULL, 3, 242, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(409, 'Niveau huile', 'FieldInput', NULL, 1, 243, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(410, 'test', 'FieldInput', NULL, 0, 243, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(411, 'Nature de test', 'FieldRadios', NULL, 1, 244, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(412, 'Pb', 'FieldRadios', NULL, 2, 244, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(413, 'Niveau huile', 'FieldInput', NULL, 1, 245, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(414, 'test', 'FieldInput', NULL, 0, 245, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(415, 'Nature de test', 'FieldRadios', NULL, 1, 246, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(416, 'Pb', 'FieldRadios', NULL, 2, 246, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(417, 'Niveau huile', 'FieldInput', NULL, 1, 247, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(418, 'test', 'FieldInput', NULL, 0, 247, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(419, 'Nature de test', 'FieldRadios', NULL, 1, 248, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(420, 'Pb', 'FieldRadios', NULL, 2, 248, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(421, 'Niveau huile', 'FieldInput', NULL, 1, 249, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(422, 'test', 'FieldInput', NULL, 0, 249, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(423, 'Ok', 'FieldImage64bit', NULL, 2, 249, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 1, 1, NULL, 'Go'),
(424, 'Ghnv', 'FieldRadios', NULL, 3, 249, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(425, 'Pistopb', 'FieldSelect', NULL, 4, 249, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(426, 'Nature de test', 'FieldRadios', NULL, 1, 250, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(427, 'Pb', 'FieldRadios', NULL, 2, 250, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(428, 'Niveau huile', 'FieldInput', NULL, 1, 251, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(429, 'test', 'FieldInput', NULL, 0, 251, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(430, 'Ok', 'FieldImage64bit', NULL, 2, 251, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 1, 1, NULL, 'Go'),
(431, 'Ghnv', 'FieldRadios', NULL, 3, 251, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(432, 'Pistopb', 'FieldSelect', NULL, 4, 251, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(433, 'Nature de test', 'FieldRadios', NULL, 1, 252, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(434, 'Pb', 'FieldRadios', NULL, 2, 252, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(435, 'Niveau huile', 'FieldInput', NULL, 1, 253, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(436, 'test', 'FieldInput', NULL, 0, 253, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(437, 'Ok', 'FieldImage64bit', NULL, 2, 253, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 1, 1, NULL, 'Go'),
(438, 'Ghnv', 'FieldRadios', NULL, 3, 253, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(439, 'Pistopb', 'FieldSelect', NULL, 4, 253, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(440, 'Nature de test', 'FieldRadios', NULL, 1, 254, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(441, 'Pb', 'FieldRadios', NULL, 2, 254, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(442, 'Niveau huile', 'FieldInput', NULL, 1, 255, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(443, 'test', 'FieldInput', NULL, 0, 255, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(444, 'Ok', 'FieldImage64bit', NULL, 2, 255, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 1, 1, NULL, 'Go'),
(445, 'Ghnv', 'FieldRadios', NULL, 3, 255, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(446, 'Pistopb', 'FieldSelect', NULL, 4, 255, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(447, 'Nature de test', 'FieldRadios', NULL, 1, 256, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(448, 'Pb', 'FieldRadios', NULL, 2, 256, '2024-02-17 11:23:40', '2024-02-17 11:23:40', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(449, 'Niveau huile', 'FieldInput', NULL, 0, 257, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(450, 'test', 'FieldInput', NULL, 1, 257, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(451, 'Cettedgv', 'FieldSelect', NULL, 1, 258, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, NULL, 'Dfv '),
(452, 'test', 'FieldInput', NULL, 1, 259, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, NULL, 'test'),
(453, 'Nature de test', 'FieldRadios', NULL, 1, 260, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(454, 'Pb', 'FieldRadios', NULL, 2, 260, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(455, 'Pistopb', 'FieldCheckboxes', NULL, 3, 260, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(456, 'Niveau huile', 'FieldInput', NULL, 1, 261, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(457, 'test', 'FieldInput', NULL, 0, 261, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(458, 'Nature de test', 'FieldRadios', NULL, 1, 262, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(459, 'Pb', 'FieldRadios', NULL, 2, 262, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(460, 'Niveau huile', 'FieldInput', NULL, 1, 263, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(461, 'test', 'FieldInput', NULL, 0, 263, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(462, 'Nature de test', 'FieldRadios', NULL, 1, 264, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(463, 'Pb', 'FieldRadios', NULL, 2, 264, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(464, 'Niveau huile', 'FieldInput', NULL, 1, 265, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(465, 'test', 'FieldInput', NULL, 0, 265, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(466, 'Nature de test', 'FieldRadios', NULL, 1, 266, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(467, 'Pb', 'FieldRadios', NULL, 2, 266, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(468, 'Niveau huile', 'FieldInput', NULL, 1, 267, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(469, 'test', 'FieldInput', NULL, 0, 267, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(470, 'Ok', 'FieldImage64bit', NULL, 2, 267, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 1, 1, NULL, 'Go'),
(471, 'Ghnv', 'FieldRadios', NULL, 3, 267, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(472, 'Pistopb', 'FieldSelect', NULL, 4, 267, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(473, 'Nature de test', 'FieldRadios', NULL, 1, 268, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(474, 'Pb', 'FieldRadios', NULL, 2, 268, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(475, 'Niveau huile', 'FieldInput', NULL, 1, 269, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(476, 'test', 'FieldInput', NULL, 0, 269, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(477, 'Ok', 'FieldImage64bit', NULL, 2, 269, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 1, 1, NULL, 'Go'),
(478, 'Ghnv', 'FieldRadios', NULL, 3, 269, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(479, 'Pistopb', 'FieldSelect', NULL, 4, 269, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(480, 'Nature de test', 'FieldRadios', NULL, 1, 270, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(481, 'Pb', 'FieldRadios', NULL, 2, 270, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(482, 'Niveau huile', 'FieldInput', NULL, 1, 271, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(483, 'test', 'FieldInput', NULL, 0, 271, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(484, 'Ok', 'FieldImage64bit', NULL, 2, 271, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 1, 1, NULL, 'Go'),
(485, 'Ghnv', 'FieldRadios', NULL, 3, 271, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(486, 'Pistopb', 'FieldSelect', NULL, 4, 271, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(487, 'Nature de test', 'FieldRadios', NULL, 1, 272, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(488, 'Pb', 'FieldRadios', NULL, 2, 272, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(489, 'Niveau huile', 'FieldInput', NULL, 1, 273, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(490, 'test', 'FieldInput', NULL, 0, 273, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(491, 'Ok', 'FieldImage64bit', NULL, 2, 273, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 1, 1, NULL, 'Go'),
(492, 'Ghnv', 'FieldRadios', NULL, 3, 273, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(493, 'Pistopb', 'FieldSelect', NULL, 4, 273, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(494, 'Nature de test', 'FieldRadios', NULL, 1, 274, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(495, 'Pb', 'FieldRadios', NULL, 2, 274, '2024-02-17 11:24:21', '2024-02-17 11:24:21', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(496, 'Niveau huile', 'FieldInput', NULL, 0, 275, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(497, 'test', 'FieldInput', NULL, 1, 275, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(498, 'Cettedgv', 'FieldSelect', NULL, 1, 276, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, NULL, 'Dfv '),
(499, 'test', 'FieldInput', NULL, 1, 277, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, NULL, 'test'),
(500, 'Nature de test', 'FieldRadios', NULL, 1, 278, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(501, 'Pb', 'FieldRadios', NULL, 2, 278, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(502, 'Pistopb', 'FieldCheckboxes', NULL, 3, 278, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(503, 'Niveau huile', 'FieldInput', NULL, 1, 279, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(504, 'test', 'FieldInput', NULL, 0, 279, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(505, 'Nature de test', 'FieldRadios', NULL, 1, 280, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(506, 'Pb', 'FieldRadios', NULL, 2, 280, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(507, 'Niveau huile', 'FieldInput', NULL, 1, 281, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(508, 'test', 'FieldInput', NULL, 0, 281, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(509, 'Nature de test', 'FieldRadios', NULL, 1, 282, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(510, 'Pb', 'FieldRadios', NULL, 2, 282, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(511, 'Niveau huile', 'FieldInput', NULL, 1, 283, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(512, 'test', 'FieldInput', NULL, 0, 283, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(513, 'Nature de test', 'FieldRadios', NULL, 1, 284, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(514, 'Pb', 'FieldRadios', NULL, 2, 284, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(515, 'Niveau huile', 'FieldInput', NULL, 1, 285, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(516, 'test', 'FieldInput', NULL, 0, 285, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(517, 'Ok', 'FieldImage64bit', NULL, 2, 285, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 1, 1, NULL, 'Go'),
(518, 'Ghnv', 'FieldRadios', NULL, 3, 285, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(519, 'Pistopb', 'FieldSelect', NULL, 4, 285, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(520, 'Nature de test', 'FieldRadios', NULL, 1, 286, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(521, 'Pb', 'FieldRadios', NULL, 2, 286, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(522, 'Niveau huile', 'FieldInput', NULL, 1, 287, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(523, 'test', 'FieldInput', NULL, 0, 287, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(524, 'Ok', 'FieldImage64bit', NULL, 2, 287, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 1, 1, NULL, 'Go'),
(525, 'Ghnv', 'FieldRadios', NULL, 3, 287, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(526, 'Pistopb', 'FieldSelect', NULL, 4, 287, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(527, 'Nature de test', 'FieldRadios', NULL, 1, 288, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(528, 'Pb', 'FieldRadios', NULL, 2, 288, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(529, 'Niveau huile', 'FieldInput', NULL, 1, 289, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(530, 'test', 'FieldInput', NULL, 0, 289, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(531, 'Ok', 'FieldImage64bit', NULL, 2, 289, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 1, 1, NULL, 'Go'),
(532, 'Ghnv', 'FieldRadios', NULL, 3, 289, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(533, 'Pistopb', 'FieldSelect', NULL, 4, 289, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(534, 'Nature de test', 'FieldRadios', NULL, 1, 290, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(535, 'Pb', 'FieldRadios', NULL, 2, 290, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(536, 'Niveau huile', 'FieldInput', NULL, 1, 291, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(537, 'test', 'FieldInput', NULL, 0, 291, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(538, 'Ok', 'FieldImage64bit', NULL, 2, 291, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 1, 1, NULL, 'Go'),
(539, 'Ghnv', 'FieldRadios', NULL, 3, 291, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(540, 'Pistopb', 'FieldSelect', NULL, 4, 291, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(541, 'Nature de test', 'FieldRadios', NULL, 1, 292, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(542, 'Pb', 'FieldRadios', NULL, 2, 292, '2024-02-17 11:24:50', '2024-02-17 11:24:50', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(543, 'dfdf', 'FieldImage64bit', NULL, 2, 276, '2024-02-17 11:30:33', '2024-02-17 11:30:33', NULL, 0, 1, NULL, 'sdfsdf'),
(544, 'sdfs', 'FieldRadios', NULL, 3, 276, '2024-02-17 11:31:31', '2024-02-17 11:33:01', NULL, 0, 1, '[{\"label\":\"a\",\"value\":\"1\"},{\"label\":\"b\",\"value\":\"2\"},{\"label\":\"c\",\"value\":\"3\"}]', 'sdfsdf'),
(545, 'Niveau huile', 'FieldInput', NULL, 0, 293, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(546, 'test', 'FieldInput', NULL, 1, 293, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(547, 'Cettedgv', 'FieldSelect', NULL, 1, 294, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, NULL, 'Dfv '),
(548, 'test', 'FieldInput', NULL, 1, 295, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, NULL, 'test'),
(549, 'Nature de test', 'FieldRadios', NULL, 1, 296, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydrol\"},{\"label\":\"Ok\",\"value\":\"Good\"}]', 'Nature de test '),
(550, 'Pb', 'FieldRadios', NULL, 2, 296, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(551, 'Pistopb', 'FieldCheckboxes', NULL, 3, 296, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Piston 1\",\"value\":\"1\"},{\"label\":\"Piston 2\",\"value\":\"2\"},{\"value\":\"3\",\"label\":\"Piston 3\"}]', 'Piston qui saute '),
(552, 'Niveau huile', 'FieldInput', NULL, 1, 297, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(553, 'test', 'FieldInput', NULL, 0, 297, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(554, 'Nature de test', 'FieldRadios', NULL, 1, 298, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(555, 'Pb', 'FieldRadios', NULL, 2, 298, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section.'),
(556, 'Niveau huile', 'FieldInput', NULL, 1, 299, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(557, 'test', 'FieldInput', NULL, 0, 299, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(558, 'Nature de test', 'FieldRadios', NULL, 1, 300, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(559, 'Pb', 'FieldRadios', NULL, 2, 300, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section');
INSERT INTO `inputs` (`id`, `inputName`, `inputType`, `inputValue`, `inputOrder`, `sub_category_id`, `created_at`, `updated_at`, `helper`, `principalImage`, `display`, `options`, `label`) VALUES
(560, 'Niveau huile', 'FieldInput', NULL, 1, 301, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(561, 'test', 'FieldInput', NULL, 0, 301, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(562, 'Nature de test', 'FieldRadios', NULL, 1, 302, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(563, 'Pb', 'FieldRadios', NULL, 2, 302, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(564, 'Niveau huile', 'FieldInput', NULL, 1, 303, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(565, 'test', 'FieldInput', NULL, 0, 303, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(566, 'Ok', 'FieldImage64bit', NULL, 2, 303, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 1, 1, NULL, 'Go'),
(567, 'Ghnv', 'FieldRadios', NULL, 3, 303, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(568, 'Pistopb', 'FieldSelect', NULL, 4, 303, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(569, 'Nature de test', 'FieldRadios', NULL, 1, 304, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(570, 'Pb', 'FieldRadios', NULL, 2, 304, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(571, 'Niveau huile', 'FieldInput', NULL, 1, 305, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(572, 'test', 'FieldInput', NULL, 0, 305, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(573, 'Ok', 'FieldImage64bit', NULL, 2, 305, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 1, 1, NULL, 'Go'),
(574, 'Ghnv', 'FieldRadios', NULL, 3, 305, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(575, 'Pistopb', 'FieldSelect', NULL, 4, 305, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(576, 'Nature de test', 'FieldRadios', NULL, 1, 306, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(577, 'Pb', 'FieldRadios', NULL, 2, 306, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(578, 'Niveau huile', 'FieldInput', NULL, 1, 307, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(579, 'test', 'FieldInput', NULL, 0, 307, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(580, 'Ok', 'FieldImage64bit', NULL, 2, 307, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 1, 1, NULL, 'Go'),
(581, 'Ghnv', 'FieldRadios', NULL, 3, 307, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(582, 'Pistopb', 'FieldSelect', NULL, 4, 307, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(583, 'Nature de test', 'FieldRadios', NULL, 1, 308, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(584, 'Pb', 'FieldRadios', NULL, 2, 308, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(585, 'Niveau huile', 'FieldInput', NULL, 1, 309, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'This is helper to help you ', 0, 1, NULL, 'Niveau huile'),
(586, 'test', 'FieldInput', NULL, 0, 309, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 'Taper le niveau de eau ici', 0, 1, NULL, 'Niveau eau'),
(587, 'Ok', 'FieldImage64bit', NULL, 2, 309, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 1, 1, NULL, 'Go'),
(588, 'Ghnv', 'FieldRadios', NULL, 3, 309, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Ij\",\"value\":\"Gh\"}]', 'Fgvvg'),
(589, 'Pistopb', 'FieldSelect', NULL, 4, 309, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Fcfc\",\"value\":\"Fcfvg\"},{\"label\":\"Yvvh\",\"value\":\"Ybhbh\"}]', 'Piston qui saute '),
(590, 'Nature de test', 'FieldRadios', NULL, 1, 310, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 1, '[{\"label\":\"Air check\",\"value\":\"air\"},{\"label\":\"Test hydraulique \",\"value\":\"hydro\"}]', 'Nature de test '),
(591, 'Pb', 'FieldRadios', NULL, 2, 310, '2024-02-17 14:18:35', '2024-02-17 14:18:35', '', 0, 0, '[{\"label\":\"Oui\",\"value\":\"Oui\"},{\"label\":\"Non\",\"value\":\"Non\"}]', 'Le problème est t\'il dans cette section'),
(592, 'fkfj', 'FieldImage64bit', NULL, 0, 259, '2024-02-17 14:50:58', '2024-02-17 14:50:58', NULL, 1, 1, NULL, 'jeleke'),
(593, 'test', 'FieldImage64bit', NULL, 0, 121, '2024-02-18 11:16:21', '2024-02-18 11:16:30', NULL, 0, 1, NULL, 'test25'),
(594, 'SearchTest5', 'FieldImage64bit', NULL, 3, 121, '2024-02-18 11:16:40', '2024-02-18 11:16:53', NULL, 0, 1, NULL, 'SearchTest'),
(595, 'react-currency-input-field', 'FieldImage64bit', NULL, 0, 121, '2024-02-18 11:16:47', '2024-02-18 11:16:47', NULL, 1, 1, NULL, 'react-currency-input-field');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `flag`, `created_at`, `updated_at`) VALUES
(6, 'Espagnole', 'es', 'https://cellar-c2.services.clever-cloud.com/azur-storage/flag/4IJpccTIWQ-Espagnole-es.png', '2023-05-22 16:16:04', '2023-06-08 13:44:54'),
(10, 'Allemand', 'de', 'https://cellar-c2.services.clever-cloud.com/azur-storage/flag/pixWaXNeTz-Allemand-de.png', '2023-05-22 16:36:12', '2023-06-08 11:35:41'),
(12, 'Anglais', 'en', 'https://cellar-c2.services.clever-cloud.com/azur-storage/flag/EhCO2kSZni-Anglais-en.png', '2023-05-22 16:42:05', '2023-06-08 11:35:26'),
(14, 'Bulgare', 'BG', 'https://cellar-c2.services.clever-cloud.com/azur-storage/flag/pixWaXNeTz-Allemand-de.png', '2023-06-01 09:34:27', '2023-06-01 09:34:27'),
(15, 'Italien', 'IT', 'https://cellar-c2.services.clever-cloud.com/azur-storage/flag/qzEJAY5317-Italien-IT.png', '2023-06-01 09:34:45', '2023-06-08 11:35:09'),
(16, 'Français', 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/flag/hKM6l3Ihdm-Fran%C3%A7ais-FR.png', '2023-06-01 09:35:02', '2023-06-08 11:34:49'),
(17, 'portugais', 'pt', 'https://cellar-c2.services.clever-cloud.com/azur-storage/flag/8Y3gpvBag8-portugais-pt.png', '2023-06-08 11:31:17', '2023-06-08 11:31:17');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2023_03_30_095135_create_users_table', 1),
(8, '2023_04_03_083118_create_tm_contract', 1),
(9, '2023_04_03_083135_create_ac_contract', 1),
(10, '2023_05_11_114705_create_standard_contract_table', 2),
(11, '2023_05_11_151440_create_langue_table', 3),
(12, '2023_05_11_151725_create_templates_table', 3),
(13, '2023_05_11_152529_add_column_template_id', 3),
(14, '2023_05_11_153251_create_companies_table', 4),
(16, '2023_05_11_153747_add_column_company_id', 5),
(17, '2023_05_11_154251_create_user_template_table', 6),
(18, '2023_05_18_113405_add_column_employer_id_to_table_user', 7),
(19, '2023_05_18_113447_add_column_employer_id_to_table_template', 7),
(20, '2023_05_31_110633_add_column_created_by', 8),
(21, '2023_06_01_152051_create_template_content_table', 9),
(23, '2023_06_06_144200_create_pdf_urls_table', 10),
(24, '2023_06_08_112134_add_column_flag_to-languages_table', 11),
(25, '2023_06_10_162012_add_column_employer_id', 12),
(26, '2023_06_14_135923_create_packs_table', 13),
(28, '2023_06_15_101055_add_column_pack_id_to_users', 14),
(29, '2023_06_15_111102_create_orders_table', 15),
(30, '2023_06_23_074458_create_ai_context_table', 16),
(31, '2023_06_26_094543_create_context_flields_table', 17),
(32, '2023_06_23_163449_add_column_quota_ai_to_packs_table', 18),
(33, '2023_06_23_163945_add_column_quota_ai_to_orders_table', 18),
(34, '2023_07_03_104613_create_sd_contract_fields_table', 18),
(35, '2023_07_04_091951_create_configuration_table', 18),
(36, '2023_07_15_121431_add_column_labels_to_templates_table', 19),
(37, '2023_08_14_090705_add_column_stripe_id_to_packs', 20),
(38, '2023_08_14_090801_add_column_subscription_id_to_orders', 21),
(39, '2023_08_25_102634_add_column_customer_id_and_session_id_to_users_table', 21),
(40, '2023_12_13_140549_add-column-to-users-table', 22),
(41, '2023_12_13_141636_create-roles-table', 22),
(42, '2023_12_13_143339_add-column-role-id-to-users', 22),
(43, '2023_12_13_144501_create-categories-table', 22),
(44, '2023_12_13_144748_create-sub_categories-table', 22),
(45, '2023_12_13_145433_create-inputs-table', 22),
(46, '2023_12_13_150408_create-folders-table', 22),
(47, '2023_12_13_153001_create-folder_categories-table', 22),
(48, '2023_12_13_153700_create-car_status-table', 22),
(49, '2023_12_13_153916_add-column-status-id-to-folders', 22),
(50, '2023_12_13_154831_create-car-table', 22),
(51, '2023_12_13_155027_add-column-car-id-to-folders', 22),
(52, '2023_12_13_155435_create-user-car-table', 22),
(53, '2023_12_14_153209_create-_clients-table', 22),
(54, '2023_12_20_134155_add-column-to-car-table', 22),
(55, '2023_12_22_142605_add-column-to-foldertable', 22),
(56, '2023_12_22_151741_add-column-to-foldertable', 22),
(57, '2023_12_25_110052_add-column-folder-id-to-categories', 23),
(58, '2023_12_27_073102_add_arrival_type_column_to_folders_table', 24),
(59, '2024_01_01_103227_create_default_categories_table', 24),
(60, '2024_01_01_105600_create_sub_category_defaults_table', 24),
(61, '2024_01_01_111131_create_default_inputs_table', 24),
(62, '2024_01_01_115426_create_default_category_folder_table', 24),
(63, '2024_01_01_120840_add_folder_id_to_default_inputs_table', 24),
(64, '2024_01_01_154809_add-user-id-to-clients-table', 25),
(65, '2024_01_05_130533_rename-usercar-to-clientcar', 25),
(66, '2024_01_05_131025_drop-user_id-from-client_car', 25),
(67, '2024_01_05_131407_add-client_id-column-to-client_car', 25),
(68, '2024_01_13_164338_add_required_and_display_to_default_inputs_table', 26),
(69, '2024_01_16_162625_add-has_specific_value-to-_car_status', 26),
(70, '2024_01_24_104859_add_principal_image_to_default_inputs_table', 26),
(71, '2024_01_25_231629_add_helper_column_to_inputs_table', 26),
(72, '2024_01_26_093053_add_principal_image_to_inputs_table', 26),
(73, '2024_01_26_101842_modify_colonne_in_default_inputs_table', 27),
(74, '2024_01_28_102645_add_done_to_subcategories_table', 27),
(75, '2024_01_29_145814_create_default_admin_categories_table', 27),
(76, '2024_01_29_150537_create_default_admin_sub_categories_table', 28),
(77, '2024_01_29_150653_create_default_admin_inputs_table', 28),
(78, '2024_02_06_141150_add_display_column_to_inputs_table', 28),
(79, '2024_02_06_142147_add_options_column_to_inputs_table', 28),
(80, '2024_01_30_083153_add_photos_and_video_columns_to_folders_table', 29),
(81, '2024_02_06_193419_add_label_to_inputs_table', 30),
(82, '2024_02_07_151901_add_admin_id_to_users_table', 31),
(83, '2024_02_07_162332_add-admin-id-column-to-clients-table', 31),
(84, '2024_02_08_130944_drop-column-images-and-video-from-folders-table', 32),
(85, '2024_02_08_131417_add-column-images-and-video-to-folders-table', 32),
(86, '2024_02_15_133136_add_display_to_subcategories_table', 33);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `sessionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `packId` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiredIn` timestamp NULL DEFAULT NULL,
  `contractNb` int(11) DEFAULT NULL,
  `optionAi` tinyint(1) NOT NULL DEFAULT 0,
  `quotaAi` int(11) DEFAULT NULL,
  `subscriptionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `status`, `price`, `sessionId`, `userId`, `packId`, `created_at`, `updated_at`, `expiredIn`, `contractNb`, `optionAi`, `quotaAi`, `subscriptionId`) VALUES
(28, 'paid', '0.00', NULL, 34, 3, '2023-06-22 09:55:39', '2023-06-22 09:55:39', NULL, 5, 0, NULL, NULL),
(29, 'paid', '0.00', NULL, 6, 3, '2023-06-22 09:58:55', '2023-06-22 09:58:55', NULL, 5, 1, NULL, NULL),
(30, 'paid', '200.00', 'cs_test_a14dkBXz5Q7B4R08qzQtYeo0l2GFM610sUh8rKVzrJEQfbEU73Wnhn5cap', 6, 1, '2023-06-22 09:59:54', '2023-06-22 10:00:14', '2023-07-22 00:00:00', NULL, 1, NULL, NULL),
(31, 'unpaid', '200.00', 'cs_test_a1HQHBPxhCf1oH5bzCEsk3QEL7AFzyZOWgOmCCM9lgNDI995hBStLwwkS8', 6, 1, '2023-06-22 09:59:55', '2023-06-22 09:59:55', '2023-07-22 00:00:00', NULL, 1, NULL, NULL),
(32, 'unpaid', '0.00', NULL, 12, 3, '2023-06-27 11:29:51', '2023-06-27 11:29:51', NULL, 5, 0, NULL, NULL),
(33, 'unpaid', '0.00', NULL, 13, 3, '2023-06-27 11:31:02', '2023-06-27 11:31:02', NULL, 5, 0, NULL, NULL),
(34, 'unpaid', '200.00', 'cs_test_a1b8oq7OdNm1SzYGgbwJfMfZ6wgIEA8ASbC3F3eiThO4gH6gwbj3KjqqNQ', 13, 1, '2023-06-27 11:39:27', '2023-08-14 14:18:21', '2023-07-27 00:00:00', 70, 1, 136930, NULL),
(35, 'unpaid', '400.00', 'cs_test_a1OQdmvuzI0LaqZe8dchy1SxuZqlWqt1jeUCsUxfTi8PKW0KIzzOyJ49BD', 13, 1, '2023-07-10 13:43:42', '2023-07-10 13:43:42', NULL, NULL, 1, NULL, NULL),
(36, 'paid', '30.00', NULL, 13, 1, '2023-08-15 16:05:47', '2023-09-14 17:21:27', '2023-09-14 00:00:00', 70, 1, NULL, 'sub_1NfPkbG8uVEVd2p0CTQ0LkRQ'),
(37, 'paid', '0.00', NULL, 16, 3, '2023-08-17 08:42:50', '2023-08-17 08:42:50', '2023-09-16 00:00:00', 10, 0, NULL, NULL),
(38, 'canceled', '30.00', NULL, 16, 1, '2023-08-17 10:48:04', '2023-08-17 11:01:51', '2023-08-17 00:00:00', 70, 1, NULL, 'sub_1Ng3kEG8uVEVd2p08PJ5N3TJ'),
(39, 'paid', '0.00', NULL, 17, 3, '2023-08-17 13:14:27', '2023-08-17 13:14:27', '2023-08-16 00:00:00', 5, 0, NULL, NULL),
(40, 'canceled', '30.00', NULL, 17, 3, '2023-08-17 13:16:03', '2023-08-17 13:17:38', '2023-08-18 00:00:00', 70, 1, NULL, 'sub_1Ng63RG8uVEVd2p0oV27Mdvx'),
(41, 'canceled', '90.00', NULL, 17, 3, '2023-08-17 15:50:02', '2023-08-17 15:51:51', '2023-08-18 00:00:00', NULL, 1, NULL, 'sub_1Ng8SSG8uVEVd2p09IGtxUrb'),
(42, 'paid', '30.00', NULL, 17, 3, '2023-08-17 15:58:15', '2023-09-14 17:21:25', '2023-09-14 00:00:00', 70, 1, NULL, 'sub_1Ng8kQG8uVEVd2p0PbZyoMkh'),
(43, 'paid', '90.00', NULL, 17, 3, '2023-08-17 16:07:17', '2023-09-14 17:21:25', '2023-09-14 00:00:00', NULL, 1, NULL, 'sub_1Ng8kQG8uVEVd2p0PbZyoMkh'),
(44, 'paid', '30.00', NULL, 17, 1, '2023-08-17 16:08:36', '2023-09-14 17:21:25', '2023-09-14 00:00:00', 70, 1, NULL, 'sub_1Ng8kQG8uVEVd2p0PbZyoMkh'),
(45, 'paid', '30.00', NULL, 17, 1, '2023-08-18 14:33:45', '2023-09-14 15:38:47', '2023-09-14 00:00:00', 70, 1, NULL, 'sub_1NgTkCG8uVEVd2p0CfcVCJST'),
(46, 'paid', '90.00', NULL, 17, 4, '2023-08-18 14:34:19', '2023-10-10 15:38:46', '2023-10-10 00:00:00', NULL, 1, 300000, 'sub_1NgTkkG8uVEVd2p05maEuehO'),
(47, 'canceled', '90.00', NULL, 17, 3, '2023-08-18 14:34:23', '2023-08-18 14:37:58', '2023-08-19 00:00:00', NULL, 1, NULL, 'sub_1NgTknG8uVEVd2p0gPOYrsCn'),
(48, 'canceled', '30.00', NULL, 17, 1, '2023-08-18 16:57:14', '2023-08-18 17:06:15', '2023-08-19 00:00:00', 70, 1, NULL, 'sub_1NgVz2G8uVEVd2p0v5OjYwLi'),
(49, 'canceled', '30.00', NULL, 17, 1, '2023-08-18 17:09:17', '2023-08-18 17:09:58', '2023-08-19 00:00:00', 70, 1, NULL, 'sub_1NgWAhG8uVEVd2p0JC1SaKVW'),
(50, 'paid', '90.00', NULL, 17, 4, '2023-08-18 17:27:19', '2023-10-03 18:35:16', '2023-10-03 00:00:00', NULL, 1, 300000, 'sub_1NgWS9G8uVEVd2p05bn5n6gp'),
(51, 'canceled', '90.00', NULL, 17, 4, '2023-08-18 17:27:23', '2023-08-18 17:28:23', '2023-08-19 00:00:00', NULL, 1, NULL, 'sub_1NgWSDG8uVEVd2p0D1rJskEm'),
(52, 'paid', '30.00', NULL, 17, 1, '2023-08-18 17:28:56', '2023-08-18 17:28:56', '2023-08-19 00:00:00', 70, 1, NULL, 'sub_1NgWTiG8uVEVd2p0WYilXai7'),
(53, 'paid', '30.00', NULL, 17, 1, '2023-08-18 17:30:33', '2023-08-18 17:30:33', '2023-08-19 00:00:00', 70, 1, NULL, 'sub_1NgWVHG8uVEVd2p0T1LpUXo0'),
(54, 'paid', '0.00', NULL, 18, 3, '2023-08-18 17:31:17', '2023-08-18 17:31:17', '2023-09-17 00:00:00', 5, 0, NULL, NULL),
(55, 'canceled', '30.00', NULL, 18, 1, '2023-08-18 17:32:26', '2023-08-18 17:32:55', '2023-08-19 00:00:00', 70, 1, NULL, 'sub_1NgWX6G8uVEVd2p0HM6pbvGJ'),
(56, 'canceled', '90.00', NULL, 18, 4, '2023-08-18 17:33:32', '2023-08-21 10:05:36', '2023-08-19 00:00:00', NULL, 1, NULL, 'sub_1NgWYBG8uVEVd2p0b5iAo1xc'),
(57, 'paid', '0.00', NULL, 19, 3, '2023-08-21 09:58:18', '2023-08-21 09:58:18', '2023-09-20 00:00:00', 5, 0, NULL, NULL),
(58, 'paid', '30.00', NULL, 19, 1, '2023-08-21 09:59:30', '2023-09-15 11:23:02', '2023-09-15 00:00:00', 70, 1, NULL, 'sub_1NhUtQG8uVEVd2p0Vcmkvsy1'),
(59, 'paid', '90.00', NULL, 18, 4, '2023-08-21 10:06:19', '2023-10-09 11:09:41', '2023-10-09 00:00:00', NULL, 1, 300000, 'sub_1NhV01G8uVEVd2p0Z3qF92aJ'),
(60, 'paid', '0.00', NULL, 20, 3, '2023-08-21 12:14:43', '2023-08-21 12:14:43', '2023-09-20 00:00:00', 5, 0, NULL, NULL),
(61, 'paid', '30.00', NULL, 20, 1, '2023-08-21 12:15:54', '2023-08-21 12:15:54', '2023-08-22 00:00:00', 70, 1, NULL, 'sub_1NhX1QG8uVEVd2p0l0QUPFIZ'),
(62, 'paid', '90.00', NULL, 20, 4, '2023-08-21 12:16:56', '2023-10-10 13:33:05', '2023-10-10 00:00:00', NULL, 1, 300000, 'sub_1NhX2QG8uVEVd2p0Zaj3vibg'),
(63, 'paid', '30.00', NULL, 20, 1, '2023-08-21 12:17:56', '2023-08-21 12:17:56', '2023-08-22 00:00:00', 70, 1, NULL, 'sub_1NhX3OG8uVEVd2p06zVPHaSO'),
(64, 'paid', '90.00', NULL, 20, 4, '2023-08-21 13:13:32', '2023-10-10 14:38:19', '2023-10-10 00:00:00', NULL, 1, 300000, 'sub_1NhXvCG8uVEVd2p0zl5BxLAg'),
(65, 'canceled', '90.00', NULL, 20, 4, '2023-08-21 14:43:20', '2023-08-21 14:44:23', '2023-08-22 00:00:00', NULL, 1, NULL, 'sub_1NhZK7G8uVEVd2p0JQ6fQHCE'),
(66, 'paid', '30.00', NULL, 20, 1, '2023-08-21 15:28:14', '2023-10-08 16:35:30', '2023-10-08 00:00:00', 70, 1, 15000, 'sub_1Nha1YG8uVEVd2p0VwzG2fzK'),
(67, 'paid', '30.00', NULL, 6, 1, '2023-08-21 17:39:39', '2023-10-03 18:46:56', '2023-10-03 00:00:00', 70, 1, 15000, 'sub_1Nhc4kG8uVEVd2p0PVVHPLxD'),
(68, 'paid', '90.00', NULL, 6, 4, '2023-08-21 17:44:15', '2023-10-03 18:46:58', '2023-10-03 00:00:00', NULL, 1, 300000, 'sub_1Nhc9BG8uVEVd2p0Uo3nusma'),
(69, 'unpaid', '30.00', 'cs_test_a1GDkA9Xchi2zaXeiVj1ovdYNO2w8tlBYuHls06yqZXR6KYPbgPlQw0yHc', 6, 1, '2023-08-23 08:35:29', '2023-08-23 08:35:29', '2023-09-22 00:00:00', 70, 1, NULL, NULL),
(70, 'paid', '90.00', NULL, 20, 4, '2023-08-23 09:25:24', '2023-10-10 10:33:24', '2023-10-10 00:00:00', NULL, 1, 300000, 'sub_1NiDJWG8uVEVd2p05P2Wyrgj'),
(71, 'paid', '30.00', NULL, 20, 1, '2023-08-23 09:33:38', '2023-08-23 09:33:38', '2023-08-24 00:00:00', 70, 1, NULL, 'sub_1NiDRUG8uVEVd2p0wWsz28Hx'),
(72, 'paid', '90.00', NULL, 20, 4, '2023-08-23 10:03:25', '2023-10-09 11:09:39', '2023-10-09 00:00:00', NULL, 1, 300000, 'sub_1NiDuJG8uVEVd2p0yK3AVcZF'),
(73, 'paid', '30.00', NULL, 20, 1, '2023-08-23 10:05:30', '2023-10-09 11:13:46', '2023-10-09 00:00:00', 70, 1, 15000, 'sub_1NiDwKG8uVEVd2p0R14gOYVq'),
(74, 'paid', '0.00', NULL, 21, 3, '2023-08-23 12:11:34', '2023-08-23 12:11:34', '2023-09-22 00:00:00', 5, 0, NULL, NULL),
(75, 'unpaid', '0.00', 'cs_test_a1RIChCNm5nC3a23B9ageBZMjCViOmKpILGRQM2o3pcIGeiuQVBgj3fKeL', 21, 3, '2023-08-24 14:57:33', '2023-08-24 14:57:33', NULL, 5, 0, NULL, NULL),
(76, 'unpaid', '0.00', 'cs_test_a1b6rR7ee6uAAmyTisMuPwhQ2PGSy7baWSE9z19gNco4arynj5qZeZoo3B', 21, 3, '2023-08-24 16:05:55', '2023-08-24 16:05:55', NULL, 5, 0, NULL, NULL),
(77, 'unpaid', '0.00', 'cs_test_a1um8nntWu3wWodNiKkLWSt7QDeonT025XErM3Br7nk7EEEetJXhRriVip', 21, 3, '2023-08-24 16:08:43', '2023-08-24 16:08:43', NULL, 5, 0, NULL, NULL),
(78, 'unpaid', '0.00', 'cs_test_a1wBQhcLOkZBzOEBmk6E9FiTc5IYRbTSUNgYItH7ZsYHNgMlWMeSdDoY0A', 21, 3, '2023-08-24 16:08:55', '2023-08-24 16:08:55', NULL, 5, 0, NULL, NULL),
(79, 'unpaid', '0.00', 'cs_test_a1q4MnCgQsJPAv1VoEBSKgLvFqaASZyXQm24tqkSgil2YWkrKXpYz6nemI', 21, 3, '2023-08-24 18:30:57', '2023-08-24 18:30:57', NULL, 5, 0, NULL, NULL),
(80, 'unpaid', '0.00', 'cs_test_a1fli0KfGiqtZ8tVm2h25VY2VR528QnQu92i8fjZWJ0lhFh1okbJHW7WLj', 21, 3, '2023-08-24 19:47:47', '2023-08-24 19:47:47', NULL, 5, 0, NULL, NULL),
(81, 'unpaid', '0.00', 'cs_test_a1fq3pntGM2ysZOShiiOhBgGnFL2FUXGYkeHlHZ0ukrjhygnpBs5l4BIGJ', 21, 3, '2023-08-24 19:51:19', '2023-08-24 19:51:19', NULL, 5, 0, NULL, NULL),
(82, 'unpaid', '0.00', 'cs_test_a1tRn6mBz7pKrBhXYurdWcodRxq4P0wI1reKGm5s14nLSxau6pdMN7qPw6', 21, 3, '2023-08-24 19:51:34', '2023-08-24 19:51:34', NULL, 5, 0, NULL, NULL),
(83, 'unpaid', '0.00', 'cs_test_a1iCCsQDQyInofCeoKCurw2INyf1g6O8KNLb3oGELekzX28aIr6XVXFwK6', 21, 3, '2023-08-24 19:51:58', '2023-08-25 09:53:27', NULL, 5, 0, NULL, 'cs_test_a1UUyOCX8u1B0KvXv4QYfI0sdMcpQosds5JchGLxZehMCiG7IZQBCQySCH'),
(84, 'unpaid', '0.00', 'cs_test_a1CQV0SKRYWw9uBokeCuOj6CZBNvhP9cr5oIZm4HuQiQgy09LJ8RroDMpu', 21, 3, '2023-08-25 09:52:26', '2023-08-25 09:52:26', NULL, 5, 0, NULL, NULL),
(85, 'unpaid', '0.00', 'cs_test_a1UUyOCX8u1B0KvXv4QYfI0sdMcpQosds5JchGLxZehMCiG7IZQBCQySCH', 21, 3, '2023-08-25 09:52:41', '2023-08-25 09:52:41', NULL, 5, 0, NULL, NULL),
(86, 'unpaid', '0.00', 'cs_test_a1sxrnJBm0hTGLcMkhrE8TQMNZ6bOWRnqttG4a0uhoOAirkFK9pBW3t0pd', 21, 3, '2023-08-25 11:04:15', '2023-08-25 11:04:15', NULL, 5, 0, NULL, NULL),
(87, 'unpaid', '0.00', 'cs_test_a1upIaWQN5bBrWb76swyC98ZJvG8YtVgKzckTbHr3onBxBLP84hiZRF7XE', 21, 3, '2023-08-25 11:06:34', '2023-08-25 11:06:34', NULL, 5, 0, NULL, NULL),
(88, 'unpaid', '0.00', 'cs_test_a1AseAcgDObOtOUafIPU1VN9wWAJlzYhlWRx1j7wwaLExfmtDUuGMuod5t', 21, 3, '2023-08-25 16:26:02', '2023-08-25 16:26:02', NULL, 5, 0, NULL, NULL),
(89, 'unpaid', '0.00', 'cs_test_a1jPKMWVP7zYMDjjFsiNcBOYAyMsrVwe1U9G2yg0bEGlRKvjZv4T0bwDVh', 21, 3, '2023-08-25 16:26:40', '2023-08-25 16:26:40', NULL, 5, 0, NULL, NULL),
(90, 'unpaid', '0.00', 'cs_test_a1N9BMcqaOo6XEMEG3PhTis8OUimxKZv6HwnlVyIGuseYn7jMwNAphvNVV', 21, 3, '2023-08-25 16:27:20', '2023-08-25 16:27:20', NULL, 5, 0, NULL, NULL),
(91, 'unpaid', '0.00', 'cs_test_a1UOOVoIQjhkckQ08KwvgG1dzOznUHKr0nkqFlwe3BkneGGgdLZzd4nORE', 21, 3, '2023-08-25 16:28:52', '2023-08-25 16:28:52', NULL, 5, 0, NULL, NULL),
(92, 'unpaid', '0.00', 'cs_test_a1XnAeqoR5QGKFmu7jFAvFlPpGa3pDXXsm4jgNzt1w64lgrGXVxLanDJoj', 21, 3, '2023-08-25 16:29:12', '2023-08-25 16:29:12', NULL, 5, 0, NULL, NULL),
(93, 'unpaid', '0.00', 'cs_test_a16jqHAmkC9Ig03Q6xAUqzLhvYa9leK1CcYnnxzB9lFcCZuJIO4yUUu9gw', 21, 3, '2023-08-25 16:29:40', '2023-08-25 16:29:40', NULL, 5, 0, NULL, NULL),
(94, 'unpaid', '0.00', 'cs_test_a15hZqigXFzqaiRNSeR5KSU1ON65ftRlheulrNSjxKLAs1Yd0tuLEQzhrg', 21, 3, '2023-08-25 16:31:22', '2023-08-25 16:31:22', NULL, 5, 0, NULL, NULL),
(95, 'unpaid', '0.00', 'cs_test_a1W6qj81cAEhqGpOj7BXCidCk1W03Yd6BTUfOebHkT2J1CcFfG2b0uipgA', 21, 3, '2023-08-25 16:34:51', '2023-08-25 16:34:51', NULL, 5, 0, NULL, NULL),
(96, 'unpaid', '0.00', 'cs_test_a1gnEj56eI6KpeX8ScUUiR1rYYg5uX33Wzr2PQTVGLgOjHLEmHWv3sUOld', 21, 3, '2023-08-25 16:35:54', '2023-08-25 16:35:54', NULL, 5, 0, NULL, NULL),
(97, 'unpaid', '90.00', 'cs_test_a1VLU4BWbbEwjqAJLhgT8RXKzNSi05BvdNjdxFos9SSnteYfirHTTJZkDY', 21, 4, '2023-08-25 19:24:01', '2023-08-25 19:24:01', NULL, NULL, 1, NULL, NULL),
(98, 'unpaid', '30.00', 'cs_test_a1OEjMf1BCfd1QgJXDj18hZ61Q0SOq3Gbu6bVrGP2bsV0UAdvpLmJm3dYk', 21, 1, '2023-08-25 19:51:56', '2023-08-25 19:51:56', NULL, 70, 1, NULL, NULL),
(99, 'unpaid', '90.00', 'cs_test_a1jhDy3GqMPUdrMPCvV7JBXPOdXSn8B2Xdmiuw26AqoOeTSkLBRDeaO36d', 21, 4, '2023-08-25 19:53:47', '2023-08-25 19:53:47', NULL, NULL, 1, NULL, NULL),
(100, 'unpaid', '30.00', 'cs_test_a1zUhZbkh3uU7X3UIR1dFAH5m5yd3oTsMsISO3tUtWaBhoP78K3T8Sh7Hu', 21, 1, '2023-08-25 19:56:57', '2023-08-25 19:56:57', NULL, 70, 1, NULL, NULL),
(101, 'unpaid', '90.00', 'cs_test_a1MkFaQn0X43yheoigWOA5ZUuKfvHKAIJgmNizmbvC8ayfw52eot5mfyd2', 21, 4, '2023-08-28 08:48:33', '2023-08-28 08:48:33', NULL, NULL, 1, NULL, NULL),
(102, 'unpaid', '30.00', 'cs_test_a1MURZ6jTVUBkHseCmGlgnMeZZIFEcGhQ4LqlH9iPMdMf6swINBNW9vNol', 21, 1, '2023-08-28 09:00:04', '2023-08-28 09:00:04', NULL, 70, 1, NULL, NULL),
(103, 'unpaid', '90.00', 'cs_test_a1a8iX2wzSOcWZ0fkiWQFhGGJzcWqfXWYRDpbIos0fCYBWaFURkH936pye', 21, 4, '2023-08-28 09:00:48', '2023-08-28 09:00:48', NULL, NULL, 1, NULL, NULL),
(104, 'unpaid', '30.00', 'cs_test_a1M5a3iXgnCedbvjyBrapWukBJ4cr6xmx5V3uy0XoptMfOVGyJlrNNobSh', 21, 1, '2023-08-28 09:20:34', '2023-08-28 09:20:34', NULL, 70, 1, NULL, NULL),
(105, 'unpaid', '90.00', 'cs_test_a1shqGg1gvXtrZ5ECAZFaBVNZvjYTOcSjVuoV0ynkQHlrjvuLNmk1KurYf', 21, 4, '2023-08-28 09:45:29', '2023-08-28 09:45:29', NULL, NULL, 1, NULL, NULL),
(106, 'unpaid', '30.00', 'cs_test_a1d1rqM2aTeYI1MNy5I1z7pgpG9ukEYyOcByISgphQRylRBZrk9ZbpUyvZ', 21, 1, '2023-08-28 09:48:17', '2023-08-28 09:48:17', NULL, 70, 1, NULL, NULL),
(107, 'unpaid', '90.00', 'cs_test_a1mX10oB5my9GthWFW8X9TVFtjv48vwdphlPaHJgdyKLYVcIHU8Jemj7oU', 21, 4, '2023-08-28 11:46:49', '2023-08-28 11:46:49', NULL, NULL, 1, NULL, NULL),
(108, 'unpaid', '30.00', 'cs_test_a1l0sJ1z4pNBoFQqD5mkTPk5Jq1VInoSfvw1g8zLSdrleP1wcqpIXt86wZ', 21, 1, '2023-08-28 11:49:31', '2023-08-28 11:49:31', NULL, 70, 1, NULL, NULL),
(109, 'unpaid', '90.00', 'cs_test_a1cvGsQ44gjSKQ4ErzQHjRhbo0ilvCCmayvDDLktF1hJuZgP2cYfpjLtJQ', 21, 4, '2023-08-28 13:59:07', '2023-08-28 13:59:07', NULL, NULL, 1, NULL, NULL),
(110, 'unpaid', '30.00', 'cs_test_a1OTNs8ansUbKq9gI5re0IOfJNc3FRvcIoITqri9GIkCcmF5wx7Ve2J7sv', 21, 1, '2023-08-28 14:05:00', '2023-08-28 14:05:00', NULL, 70, 1, NULL, NULL),
(111, 'unpaid', '90.00', 'cs_test_a1elJsPNSpvgLZUHMwCsmE2pIgoqXzPHQ9jfKUU4cVPXGPSXw2DpgbJVFQ', 21, 4, '2023-08-28 14:18:08', '2023-08-28 14:18:08', NULL, NULL, 1, NULL, NULL),
(112, 'unpaid', '30.00', 'cs_test_a18waVP6BA92KRigZMsljJWj20L0hyddbcxAYv7MbqpC8jEkG529wTVcP4', 21, 1, '2023-08-28 14:19:27', '2023-08-28 14:19:27', NULL, 70, 1, NULL, NULL),
(113, 'unpaid', '90.00', 'cs_test_a1RAv5tl7HnPqmRq9LGi6DHZ0EaztvPy5mfre19PLh8JXqWEGpPsvYpZo5', 21, 4, '2023-08-28 14:26:37', '2023-08-28 14:26:37', NULL, NULL, 1, NULL, NULL),
(114, 'unpaid', '30.00', 'cs_test_a1UD0OVGzxeM0HCv3qkr1g4ViySF94kPFZ8bLn7HOPic7avujFvNEjwCRg', 21, 1, '2023-08-28 14:27:49', '2023-08-28 14:27:49', NULL, 70, 1, NULL, NULL),
(115, 'unpaid', '90.00', 'cs_test_a1LrRpMWUqQ803qFlHHgQi7gVAWBsLPnfMcEvwsGSjNeAjjbslwh5504Vi', 21, 4, '2023-08-28 14:29:34', '2023-08-28 14:29:34', NULL, NULL, 1, NULL, NULL),
(116, 'unpaid', '30.00', 'cs_test_a1VVqNzpppTOtFocKb6WiWMBOltzPKeiAnWT6L7kPWHlI1bOVSzNh2y1P4', 21, 1, '2023-08-28 14:49:46', '2023-08-28 14:49:46', NULL, 70, 1, NULL, NULL),
(117, 'unpaid', '90.00', 'cs_test_a12MMulxwabKdrbYhhDJmBn8o4IpUBuJwG93baU9wXv6tCOvpfqr3HPJAZ', 21, 4, '2023-08-28 14:51:26', '2023-08-28 14:51:26', NULL, NULL, 1, NULL, NULL),
(118, 'unpaid', '30.00', 'cs_test_a13b4QeqlnQSWa1mdFHq1cta4PNVRczfKr9TeBGWhLjnTSkZn3C15bEPTL', 21, 1, '2023-09-01 11:42:16', '2023-09-01 11:42:16', NULL, 70, 1, NULL, NULL),
(119, 'unpaid', '90.00', 'cs_test_a1FP5NcweWfvA1lSPsyT0bWy9t5eOBWb8hNHV36b32yuzeq0cnbOnUpjRd', 21, 4, '2023-09-01 11:59:22', '2023-09-01 11:59:22', NULL, NULL, 1, NULL, NULL),
(120, 'unpaid', '30.00', 'cs_test_a1ielz3vkEQf69KqU4SkUr1APCSbHafKmqBuIlLpIGsyYxppr2iUKkS1h1', 21, 1, '2023-09-01 12:05:35', '2023-09-01 12:05:35', NULL, 70, 1, NULL, NULL),
(121, 'paid', '90.00', 'cs_test_a1BpJQZTxTcQATVwFcL7GQ2goQn5MS08LNycJQ3IwrdapKXqnBdgUCrGxI', 21, 4, '2023-09-01 12:20:01', '2023-09-01 12:21:16', '2023-09-02 00:00:00', NULL, 1, NULL, NULL),
(122, 'unpaid', '30.00', 'cs_test_a1vzKpUWRRNif3leqIqiahLUTLXa6ay1qRKppPax5fwlAs4DQ7yXt8pj0L', 21, 1, '2023-09-01 12:38:08', '2023-09-01 12:38:08', NULL, 70, 1, NULL, NULL),
(123, 'unpaid', '90.00', 'cs_test_a1rjJhn4vUoLdiX7MiPMbN3LXK1ZzqrYv5uKEpVqSixmJh5bim9Ea4GYS3', 21, 4, '2023-09-01 13:06:32', '2023-09-01 13:06:32', NULL, NULL, 1, NULL, NULL),
(124, 'unpaid', '30.00', 'cs_test_a1gdE4otJyhAX1Lp7zDZbGyLRSONs78grkhAIOSJFs4IqK084YR4087Hx7', 21, 1, '2023-09-01 13:09:43', '2023-09-01 13:09:43', NULL, 70, 1, NULL, NULL),
(125, 'unpaid', '90.00', 'cs_test_a1DoM7do6wgubKGPCDjP2xRPaSZu4NObPKXeTYJk8IAuU2DI1OucfzKWZa', 21, 4, '2023-09-01 13:16:00', '2023-09-01 13:16:00', NULL, NULL, 1, NULL, NULL),
(126, 'unpaid', '30.00', 'cs_test_a1fxbIApN4Zi19nYiuWbqNk6uEqfFH8GNTq7qJ9rOwLDpObRxKA6U7575b', 21, 1, '2023-09-01 13:16:53', '2023-09-01 13:16:53', NULL, 70, 1, NULL, NULL),
(127, 'paid', '90.00', 'cs_test_a1HQQHlB8O9FR5zejE02OdmTAUhbtR0ddsug9vIjoeCvp2gOdDP0QMbOGv', 21, 4, '2023-09-01 13:20:33', '2023-09-01 13:20:51', '2023-09-02 00:00:00', NULL, 1, NULL, NULL),
(128, 'paid', '30.00', 'cs_test_a19FtOriZNsLVilsDB2CMuwCFraI20lpAZrfeAdoYvb5L0L9Q72LCs4OY5', 21, 1, '2023-09-01 13:21:15', '2023-09-01 13:21:32', '2023-09-02 00:00:00', 70, 1, NULL, NULL),
(129, 'paid', '90.00', 'cs_test_a103uwP82PRjpI39hFzb8y74WxmGdfORj4OekzyB3fD2x78a6nopAI6jWT', 21, 4, '2023-09-01 13:23:18', '2023-09-01 13:23:40', '2023-09-02 00:00:00', NULL, 1, NULL, NULL),
(130, 'unpaid', '30.00', 'cs_test_a1sEkOHOiU2DbJtMcl1KWu6BCRqmXwXtWsvQheQlq81ZtCt9YSYu8VZ4Cf', 21, 1, '2023-09-01 13:24:20', '2023-09-01 13:24:20', NULL, 70, 1, NULL, NULL),
(131, 'unpaid', '90.00', 'cs_test_a11fCv6vxxp8jhecdTB6SjZqtaiTTX81MfiZtmDdwlUM8HgpipCQGmDJXT', 21, 4, '2023-09-01 13:31:43', '2023-09-01 13:31:43', NULL, NULL, 1, NULL, NULL),
(132, 'paid', '30.00', 'cs_test_a1l7UJgqtwlbFqH3ncyUum1E6HIYPwS8eyWi7Ebrux9gemCxXwu5t25vOn', 21, 1, '2023-09-01 13:35:09', '2023-09-01 13:35:31', '2023-09-02 00:00:00', 70, 1, NULL, NULL),
(133, 'paid', '90.00', 'cs_test_a1NMxbN9bRIuM2qioXOPrWGAWKQDRwlFgQDLmP8y6PJm9h8Wa17XClk7N6', 21, 4, '2023-09-01 13:53:19', '2023-09-01 13:53:39', '2023-09-02 00:00:00', NULL, 1, NULL, NULL),
(134, 'paid', '30.00', 'cs_test_a1WypsC6lqcyOABIfD0831Vj3x8Rkr36KtPlgLKqA3N2QmEVuk1TmFvbFb', 21, 1, '2023-09-01 13:54:03', '2023-09-01 13:54:21', '2023-09-02 00:00:00', 70, 1, NULL, NULL),
(135, 'paid', '30.00', 'cs_test_a1XdjQPcMxubZdFfKsrMoHGJt6ZYTqjOuGLJBEMPw0HfKGohrK0Xd4m5w6', 21, 1, '2023-09-14 10:09:14', '2023-09-14 10:09:52', '2023-09-14 00:00:00', 70, 1, NULL, NULL),
(136, 'unpaid', '90.00', 'cs_test_a1qR9AwMQ2RiH22UHfHYbCqNBqhBOx5VYRWD3pGoqv3XtUHiuNcAqWYnOm', 21, 4, '2023-09-14 10:17:53', '2023-09-14 10:17:53', NULL, NULL, 1, NULL, NULL),
(137, 'unpaid', '30.00', 'cs_test_a1NZqzkNBZSGXnaoKEOMQ9LjkBXuLcQ1i5ah13XOka5GV5KKpsOWP4rnus', 21, 1, '2023-09-14 10:20:30', '2023-09-14 10:20:30', NULL, 70, 1, NULL, NULL),
(138, 'unpaid', '90.00', 'cs_test_a1pidmWwpqt97dyeFY5pJJTUPTxZu3igIAuDEdNurOJWamQipI40Pz0rfo', 21, 4, '2023-09-14 11:12:01', '2023-09-14 11:12:01', NULL, NULL, 1, NULL, NULL),
(139, 'unpaid', '30.00', 'cs_test_a12KoUVodfch6yaHv5IatoHEWti5X0GpdmZTmQ5uelzyYUWt615lJbPnCE', 21, 1, '2023-09-14 11:13:02', '2023-09-14 11:13:02', NULL, 70, 1, NULL, NULL),
(140, 'paid', '90.00', 'cs_test_a1VBfWb3Xn4eG0ILIHbviFtQkgPrBqVSaxIfYdZxgpuAKZrWSkSu8TrJ4s', 21, 4, '2023-09-14 11:14:21', '2023-09-14 11:14:40', '2023-09-15 00:00:00', NULL, 1, NULL, NULL),
(141, 'paid', '30.00', 'cs_test_a1j5OhUvItUYe8ZUjDrgQNzn21bTikSdu2pIkHdzgVGs56IFkjXjVPoJUL', 21, 1, '2023-09-14 11:16:21', '2023-09-14 11:16:36', '2023-09-15 00:00:00', 70, 1, NULL, NULL),
(142, 'paid', '90.00', 'cs_test_a1ej2PdIr7IzHygLsMiVRQfztRNpxB2kZ9PffAV5PceXZTkbRCAjDsgqnA', 21, 4, '2023-09-14 11:18:31', '2023-09-14 11:18:47', '2023-09-15 00:00:00', NULL, 1, NULL, NULL),
(143, 'unpaid', '30.00', 'cs_test_a1i9pmi8vwpzPQWGuwkSZf49jCHyGZrvcZXaAWrYvRGANOwCrsyYGOYMI7', 21, 1, '2023-09-14 11:44:11', '2023-09-14 11:44:11', NULL, 70, 1, NULL, NULL),
(144, 'paid', '90.00', 'cs_test_a1vyB1uJVAmpEA6dfC5HzayncurDU5FblOmGEveQG1ShFPUTIUmEp1bEq9', 21, 4, '2023-09-14 11:45:59', '2023-09-14 11:49:50', '2023-09-15 00:00:00', NULL, 1, NULL, NULL),
(145, 'paid', '30.00', 'cs_test_a1HrLfjp6yYIQCX3yqAWk7A7Za10fOQRgGAicZWKnJ1xvXwH1OZkQt3XGT', 21, 1, '2023-09-14 11:47:26', '2023-09-14 11:49:52', '2023-09-15 00:00:00', 70, 1, NULL, NULL),
(146, 'paid', '90.00', 'cs_test_a1xFb1IQIcNIhGCPgvMRJbHEtoHuo7CHWGppLlpCZOdABvlcV7xsMm6va1', 21, 4, '2023-09-14 11:48:51', '2023-09-14 11:49:54', '2023-09-15 00:00:00', NULL, 1, NULL, NULL),
(147, 'paid', '30.00', 'cs_test_a1V7hOxaJ2EoJjZBdYkl88w7dshBKqtnjZLtzVmzAVPYw5GNKuVSa1PkyX', 21, 1, '2023-09-14 11:50:07', '2023-09-14 11:50:30', '2023-09-15 00:00:00', 70, 1, NULL, NULL),
(148, 'paid', '90.00', 'cs_test_a1CyFRKszqqYLl61tO1TjuCaehn2fQOtuXgcqhaQX5GrWx8GyTyYlGprMW', 21, 4, '2023-09-14 11:51:32', '2023-09-14 11:51:44', '2023-09-15 00:00:00', NULL, 1, NULL, NULL),
(149, 'paid', '30.00', 'cs_test_a1rFOKQHuGrSoW1PZpem5oYy6eq5D3YoO5GRbZJ10PKI91zOM8WhRjR4oW', 21, 1, '2023-09-14 12:02:40', '2023-09-14 12:03:10', '2023-09-15 00:00:00', 70, 1, NULL, NULL),
(150, 'paid', '90.00', 'cs_test_a14WOxgEW49pPEIe4x2Hmq33kcSWFvfo4dEUtziOUXEZoYMd7NZP6dcqgs', 21, 4, '2023-09-14 12:26:49', '2023-09-14 12:27:03', '2023-09-15 00:00:00', NULL, 1, NULL, NULL),
(151, 'paid', '30.00', 'cs_test_a1A3JTnweJ0x189wSHxcSGdmw2570d64NgitTNM1FZucezuRljrTCWzcNa', 21, 1, '2023-09-14 12:30:19', '2023-09-14 12:31:02', '2023-09-15 00:00:00', 70, 1, NULL, NULL),
(152, 'paid', '90.00', 'cs_test_a1GRLT3CYPdvURNo44sS7x5zciK6cbhUQAmF3vUtOCWOc3NeFGmHnZhQXr', 21, 4, '2023-09-14 14:50:49', '2023-09-14 14:51:06', '2023-09-15 00:00:00', NULL, 1, NULL, 'sub_1NqEgmG8uVEVd2p0wf0nVhAr'),
(153, 'paid', '30.00', 'cs_test_a1j6VxWuxu3RgDB4APesKg5GVTWHwn0lc7gxNa6e4GreQLPdYDjFeIrtxm', 21, 1, '2023-09-14 14:54:15', '2023-09-14 14:54:29', '2023-09-15 00:00:00', 70, 1, NULL, 'sub_1NqGsgG8uVEVd2p0fS7AtFxN'),
(154, 'paid', '90.00', 'cs_test_a1GtO1FWnL4U4pfTuhZee4ZPPFMxiwr1FXMXmgD9hfG5nST8fIKgEFst2g', 21, 4, '2023-09-14 14:59:59', '2023-09-14 15:00:23', '2023-09-15 00:00:00', NULL, 1, NULL, 'sub_1NqGvyG8uVEVd2p0I0hpiG1p'),
(155, 'paid', '30.00', 'cs_test_a1gL4RDAyBaZSlA16zq84mWFLy2EetLAFB5MdOQa41qZvrzifu4ujCAidg', 21, 1, '2023-09-14 15:01:55', '2023-09-14 15:02:17', '2023-09-15 00:00:00', 70, 1, NULL, 'sub_1NqH1dG8uVEVd2p0mL04EyWw'),
(156, 'paid', '90.00', 'cs_test_a1y9ByanwMNNbIEUxJLC0LsGeDPjUpL1Imx8mEPDBw6RTlJMD9QMHzTEll', 21, 4, '2023-09-14 15:05:24', '2023-09-14 15:05:48', '2023-09-15 00:00:00', NULL, 1, NULL, 'sub_1NqH3VG8uVEVd2p07gpNcYM9'),
(157, 'paid', '30.00', 'cs_test_a1MV4Jimb4NpQB9iBCOF8eNmxYjZUkVmIoM1gXFG1oC8Y8kLRuznenDqeU', 19, 1, '2023-09-15 09:41:00', '2023-09-15 09:41:33', '2023-09-15 00:00:00', 70, 1, NULL, 'sub_1NqYWjG8uVEVd2p0iKYurhOn'),
(158, 'paid', '90.00', 'cs_test_a1j07Uzd0gIL0AqPAKJa6AkXNEyWQVyn303BQr7YArU0aegB6K7fPbOtW9', 19, 4, '2023-09-15 09:51:18', '2023-09-15 09:51:33', '2023-09-16 00:00:00', NULL, 1, NULL, 'sub_1NqYWjG8uVEVd2p0iKYurhOn'),
(159, 'paid', '30.00', 'cs_test_a1dJApAPd8KuQMGWgRTNc7oAwG7tpBKA8LkcM8epczjTIkdRKFeYk4dEK3', 19, 1, '2023-09-15 09:53:27', '2023-09-15 09:53:41', '2023-09-16 00:00:00', 70, 1, NULL, 'sub_1NqYgQG8uVEVd2p09rtzZ4ni'),
(160, 'paid', '90.00', 'cs_test_a1uoKZ12why2iHbBFCg2gg7Q9PEHBgoIOtwc8FoOxkuWDC24iri6ONGmj3', 19, 4, '2023-09-15 09:55:48', '2023-09-15 09:56:05', '2023-09-16 00:00:00', NULL, 1, NULL, 'sub_1NqYiTG8uVEVd2p09qqLJpmf'),
(161, 'paid', '30.00', 'cs_test_a1lIMXegD87g1Cdb05VEweBv4xOTUUxLb6xknV8GhB6ERcG8G16j1oUmrd', 19, 1, '2023-09-15 10:08:19', '2023-09-15 10:08:33', '2023-09-16 00:00:00', 70, 1, NULL, 'sub_1NqYknG8uVEVd2p0ccLRaDjm'),
(162, 'paid', '90.00', 'cs_test_a1JE6jmI7jmAWZ34wxbERKatymI9t4TMekEIojv675o1klkaRzGLkMjw7K', 19, 4, '2023-09-15 10:24:58', '2023-09-15 10:25:14', '2023-09-16 00:00:00', NULL, 1, NULL, 'sub_1NqYwrG8uVEVd2p0977lWSH3'),
(163, 'paid', '30.00', 'cs_test_a1TTikpCemio05nksI8vAu8OL0TOFkCnGCuwtmYwpM22wj6FKztsgtA5RN', 19, 1, '2023-09-15 10:59:53', '2023-09-15 11:20:50', '2023-09-16 00:00:00', 70, 1, NULL, 'sub_1NqZCzG8uVEVd2p09K5Kh15e'),
(164, 'paid', '90.00', 'cs_test_a1dq2PWIRwzscXMmLTV5Oyu74HOmkw2nEPXZCb9JFP7IbnlTuNshGZpqsu', 19, 4, '2023-09-15 11:21:36', '2023-09-15 11:21:51', '2023-09-16 00:00:00', NULL, 1, NULL, 'sub_1NqZmTG8uVEVd2p0MvEK7UQT'),
(165, 'paid', '30.00', 'cs_test_a1kbgiGR8n8sWvxJ2zElUercJpYcTgW4VakD9ydbUV13iitGEsycZ1nMc5', 19, 1, '2023-09-15 11:22:58', '2023-09-15 11:23:17', '2023-09-13 23:00:00', 70, 1, NULL, 'sub_1Nqa5nG8uVEVd2p0O24VH1id'),
(166, 'unpaid', '30.00', 'cs_test_a1sSiTmAhpBiPCrZnyENb0stiNQYuTXGFaLl5pyKfk84lOoAlXRMQledNf', 21, 1, '2023-09-15 15:57:21', '2023-09-15 15:57:21', NULL, 70, 1, NULL, NULL),
(167, 'unpaid', '90.00', 'cs_test_a1QBLDpU4TpPxPzJ8C8C4Zv4lpVavG2iPbx3knY6Geexi725rjrjUk5H6x', 21, 4, '2023-09-16 11:45:42', '2023-09-16 11:45:42', NULL, NULL, 1, NULL, NULL),
(168, 'unpaid', '30.00', 'cs_test_a1RlbmsUY7WJDHFB5NM884sUx2PM6VI78RGMJpp2IMBK4Z1Q57PfYcaGvx', 21, 1, '2023-09-16 11:50:29', '2023-09-16 11:50:29', NULL, 70, 1, NULL, NULL),
(169, 'unpaid', '90.00', 'cs_test_a1ieK9qUI9DYfi2bOHFBkLB9ZxUrvkgOve7YUyGrQT8XEJnvvQwyKddyrg', 21, 4, '2023-09-18 09:13:48', '2023-09-18 09:13:48', NULL, NULL, 1, NULL, NULL),
(170, 'paid', '30.00', 'cs_test_a1ftKm3EMT1InNqCO86eQv7B4kwuu5yimSBkNT50pdBurhZaaZi9lXVE4x', 21, 1, '2023-09-18 09:42:22', '2023-09-18 09:42:37', '2023-09-19 00:00:00', 70, 1, NULL, 'sub_1NrdWoG8uVEVd2p0Gpt7F8Or'),
(171, 'unpaid', '90.00', 'cs_test_a1JppAmD4P2MuWxPJnfhoyOQQ6b5rDCVtWSAUHnyYmKc2dI1WIPa6jqlnc', 21, 4, '2023-09-18 09:53:15', '2023-09-18 09:53:15', NULL, NULL, 1, NULL, NULL),
(172, 'unpaid', '30.00', 'cs_test_a1XP8GeJ4oqzYtQBDlHtO2BBOhOoygU4slEH2rMLszPAq6MermDUnkATtj', 21, 1, '2023-09-18 10:00:25', '2023-09-18 10:00:25', NULL, 70, 1, NULL, NULL),
(173, 'unpaid', '90.00', 'cs_test_a12ipd4YcHVOdD6180VSesdVVPgZz6AfncmC7Ez2O259qYXS9oCf2f3toQ', 21, 4, '2023-09-18 10:12:15', '2023-09-18 10:12:15', NULL, NULL, 1, NULL, NULL),
(174, 'unpaid', '30.00', 'cs_test_a1XBZwMb8m2QLJ0filmPEZDh0XRIGBImfKXp7hAwtMcWtIYWlgBq1ijSHQ', 21, 1, '2023-09-18 10:16:30', '2023-09-18 10:16:30', NULL, 70, 1, NULL, NULL),
(175, 'paid', '90.00', 'cs_test_a1lMMl3YZKVXfVwAfFVJEfn79dg3kR8xiUBwaMKt4WEkrz8G8AP75hjW92', 21, 4, '2023-09-18 10:22:14', '2023-09-18 10:22:28', '2023-09-19 00:00:00', NULL, 1, NULL, 'sub_1NreayG8uVEVd2p0SzoyQ0Sw'),
(176, 'unpaid', '30.00', 'cs_test_a1YhKDWuQwLGqyMi9ZY07aZk2rcHwf0YJUoecCMcrycwMIjDEZMGDxOFEV', 21, 1, '2023-09-18 10:27:02', '2023-09-18 10:27:02', NULL, 70, 1, NULL, NULL),
(177, 'paid', '90.00', 'cs_test_a1yn1hSo52zefI4bQq3EvPKa50G573oMOKcVqHvmoxCtERzng1SqWvVDZq', 21, 4, '2023-09-18 10:30:04', '2023-09-18 10:30:18', '2023-09-19 00:00:00', NULL, 1, NULL, 'sub_1NreiYG8uVEVd2p0pgY3Q6g8'),
(178, 'unpaid', '30.00', 'cs_test_a1OqKoKv2DAN8I0f8XEtP71QVPelU7Q4LrQZu0sDIrXozKTaKYUWPWUI6M', 21, 1, '2023-09-18 10:32:58', '2023-09-18 10:32:58', NULL, 70, 1, NULL, NULL),
(179, 'paid', '90.00', 'cs_test_a1NA4CWZsNRoet5muwTWdwfYLlPLexKDC6XHkiCABaz3IH5bzd0VxWpETe', 21, 4, '2023-09-18 10:33:16', '2023-10-02 12:25:50', '2023-09-28 00:00:00', NULL, 1, 140000, 'sub_1NreleG8uVEVd2p08ybUJ9v4'),
(181, 'paid', '0.00', NULL, 22, 3, '2023-09-28 14:28:16', '2023-09-28 14:28:16', '2023-10-28 00:00:00', 5, 0, NULL, NULL),
(182, 'paid', '30.00', 'cs_test_a1Dhe5gSEwEhWMEZr3M9qVdneWseRbB8fTf2IiDyDvqnp70pjBCDuNu3TF', 22, 4, '2023-09-28 14:34:28', '2023-10-10 15:38:49', '2023-10-10 00:00:00', NULL, 1, 300000, 'sub_1NvLJ3G8uVEVd2p0g7pNH04F'),
(183, 'paid', '0.00', NULL, 23, 3, '2023-10-02 12:49:09', '2023-10-02 12:49:09', '2023-11-01 00:00:00', 5, 0, NULL, NULL),
(184, 'unpaid', '30.00', 'cs_test_a1C8XgZNgYkFTBQs69Ov6l2Wi4L165acvPQSRNoDaOB3cQyYBn5AtyFkI5', 23, 1, '2023-10-02 12:50:13', '2023-10-02 12:50:13', NULL, 70, 1, NULL, NULL),
(185, 'paid', '0.00', NULL, 24, 4, '2023-10-02 14:44:47', '2023-10-05 14:44:07', '2023-10-03 14:53:20', NULL, 1, 300000, NULL),
(186, 'unpaid', '90.00', 'cs_test_a1uqd3AyvJcSchGCxy0tTqLtNMHUvfjR5gBeSNMrjdOLswPtovom2rSGOv', 23, 4, '2023-10-02 14:55:25', '2023-10-02 14:55:25', NULL, NULL, 1, NULL, NULL),
(187, 'unpaid', '30.00', 'cs_test_a1kZ5LDUaZUxo0moECSAoVMSaYwBoNIiyZJucd4sZgPzZRpedpTKIFrPif', 23, 1, '2023-10-02 14:55:41', '2023-10-02 14:55:41', NULL, 70, 1, NULL, NULL),
(188, 'paid', '30.00', 'cs_test_a1KTdUr3TU1iipvOj9zohUB1PXZT8toCbOx9uXbNKBBker1tRjL7O6dUBz', 23, 1, '2023-10-02 15:12:18', '2023-10-08 16:35:21', '2023-10-08 00:00:00', 70, 1, 15000, 'sub_1NwnnTG8uVEVd2p0ZvM68MQR'),
(189, 'unpaid', '90.00', 'cs_test_a1tpajLtJrz27eQ7G6XnvRr445l8SPplrZrv1NmmCJ96t0q6pebh4EZ0z7', 24, 4, '2023-10-02 15:13:40', '2023-10-02 15:13:40', NULL, NULL, 1, NULL, NULL),
(190, 'unpaid', '30.00', 'cs_test_a1ZVK1hUiqPCA1FRXKIFKZp1ODAcJFHK3AiBjPijyUIiVvvzeJJUDimBpb', 24, 1, '2023-10-05 10:42:21', '2023-10-05 10:42:21', NULL, 70, 1, NULL, NULL),
(191, 'unpaid', '30.00', 'cs_test_a1CsUcAvY7UVYNfTEG8H7nBmXRRqz1Qfe6Sbpyv8DPPnyit00XaynaSKb1', 24, 1, '2023-10-05 11:11:13', '2023-10-05 11:11:13', NULL, 70, 1, NULL, NULL),
(192, 'unpaid', '30.00', 'cs_test_a1KwNJIaXyWwHt29BciSfbUCqXZPfeVahDdYf1vbVAcpdHHtoepzOvyIX2', 24, 1, '2023-10-05 13:48:40', '2023-10-05 13:48:40', NULL, 70, 1, NULL, NULL),
(193, 'unpaid', '30.00', 'cs_test_a1XcGaSH7Yy9gNB2ODg5Zg67Has3QLbnJjL0ga661WcQfg6hbBmnYB2WZi', 24, 1, '2023-10-05 14:51:42', '2023-10-05 14:51:42', NULL, 70, 1, NULL, NULL),
(194, 'unpaid', '30.00', 'cs_test_a1rqFka1dTuvzcoKCWcta5wZm80aimKekxS4LABF4jsPG1GNnDwgiEYMGB', 24, 1, '2023-10-05 14:58:01', '2023-10-05 14:58:01', NULL, 70, 1, NULL, NULL),
(195, 'unpaid', '90.00', 'cs_test_a1sR9U9qwHigFDaXV3vrTSsGn3YnO0yhTsKcH3VEg5j9DOzQ12uMZpkj6m', 24, 4, '2023-10-05 15:17:15', '2023-10-05 15:17:15', NULL, NULL, 1, NULL, NULL),
(196, 'paid', '90.00', 'cs_test_a1uSpK0S6WKQA1wYiE93waw7W4eEH6uY3VI8LSosCdAfcSHwLwfA3edV4F', 24, 4, '2023-10-05 15:23:16', '2023-10-08 16:36:48', '2023-10-08 00:00:00', NULL, 1, 300000, 'sub_1NxtOwG8uVEVd2p0YgaQCzBo'),
(197, 'paid', '0.00', NULL, 25, 1, '2023-10-05 15:26:07', '2023-10-05 15:29:35', '2023-10-03 00:00:00', 70, 1, 15000, NULL),
(198, 'paid', '30.00', 'cs_test_a1lLuV47MScCJ2EzLd5Enj26ZYgm1ivWclFhA2ej8yztGZ0vMYpyTHQzbb', 25, 4, '2023-10-05 15:32:24', '2023-10-08 16:35:31', '2023-10-08 00:00:00', NULL, 1, 300000, 'sub_1NxtYFG8uVEVd2p0Ob7TLyIh'),
(199, 'paid', '0.00', NULL, 26, 1, '2023-10-05 15:37:27', '2023-10-05 15:41:43', '2023-10-20 00:00:00', 70, 1, 15000, NULL),
(200, 'unpaid', '90.00', 'cs_test_a1QaqSfj3urRMAt4oVi5v2KnyPwlPZhifrK2NjLCxGVbzGpbE7zuANmRew', 26, 4, '2023-10-05 15:43:26', '2023-10-05 15:43:26', NULL, NULL, 1, NULL, NULL),
(201, 'paid', '0.00', NULL, 27, 4, '2023-10-05 15:48:58', '2023-10-05 15:50:24', '2023-10-03 00:00:00', NULL, 1, 300000, NULL),
(202, 'unpaid', '30.00', 'cs_test_a1Es87XgEPukljiKkWumw9TwcrsCFrBNbuo9N6RywR9FZasLsjg2RdWfB2', 27, 1, '2023-10-05 15:49:48', '2023-10-05 15:49:48', NULL, 70, 1, NULL, NULL),
(203, 'paid', '90.00', 'cs_test_a1fgE4fDe6LWWCavrQl1b4jzc7uRFrbrOgAfAWM7DjogMEXzHRKb6x0fsA', 27, 4, '2023-10-05 15:52:25', '2023-10-09 15:43:52', '2023-10-05 00:00:00', NULL, 1, 299804, 'sub_1NxtqwG8uVEVd2p0DHDyaNRp'),
(204, 'paid', '0.00', NULL, 28, 3, '2023-10-05 16:29:55', '2023-10-05 16:29:55', '2023-11-04 00:00:00', 5, 0, NULL, NULL),
(205, 'paid', '0.00', NULL, 29, 1, '2023-10-05 16:37:01', '2023-10-05 16:37:45', '2023-10-20 00:00:00', 70, 1, 15000, NULL),
(206, 'paid', '90.00', 'cs_test_a18aXUi8De3x9ibRPW3QBMnsBiJRG9vIMLiYlIUhu9ZeWJ616I9tRv5t0C', 29, 1, '2023-10-05 16:55:33', '2023-10-07 12:31:21', '2023-10-07 00:00:00', 70, 1, 15000, 'sub_1Nxuq6G8uVEVd2p0YPhqWOus'),
(207, 'paid', '0.00', NULL, 30, 3, '2023-12-10 12:58:30', '2023-12-10 12:58:30', '2024-01-09 00:00:00', 5, 0, NULL, NULL),
(208, 'unpaid', '30.00', 'cs_test_a1HINKptmxj7zVynumXsM41SjlgPw9eBY1h9NhDWbi079CmmAWDnAkhIhK', 30, 1, '2023-12-10 13:01:10', '2023-12-10 13:01:10', NULL, 70, 1, NULL, NULL),
(209, 'unpaid', '90.00', 'cs_test_a12j287o2fH2Q9iP610Sz6BQ3fWUrjxE68WCLRVxfOyLdrf38MNWquzl4j', 30, 4, '2023-12-10 20:25:29', '2023-12-10 20:25:29', NULL, NULL, 1, NULL, NULL),
(210, 'paid', '0.00', NULL, 32, 3, '2023-12-30 14:27:40', '2023-12-30 14:27:40', '2024-01-29 00:00:00', 5, 0, NULL, NULL),
(211, 'paid', '0.00', NULL, 33, 3, '2023-12-30 14:40:18', '2023-12-30 14:40:18', '2024-01-29 00:00:00', 5, 0, NULL, NULL),
(212, 'paid', '0.00', NULL, 36, 3, '2024-02-06 21:37:47', '2024-02-06 21:37:47', '2024-03-07 00:00:00', 5, 0, NULL, NULL),
(213, 'paid', '0.00', NULL, 38, 3, '2024-02-06 21:39:54', '2024-02-06 21:39:54', '2024-03-07 00:00:00', 5, 0, NULL, NULL),
(214, 'paid', '0.00', NULL, 40, 3, '2024-02-07 14:30:24', '2024-02-07 14:30:24', '2024-03-08 00:00:00', 5, 0, NULL, NULL),
(215, 'paid', '0.00', NULL, 42, 3, '2024-02-07 20:35:15', '2024-02-07 20:35:15', '2024-03-08 00:00:00', 5, 0, NULL, NULL),
(216, 'paid', '0.00', NULL, 43, 3, '2024-02-07 22:10:14', '2024-02-07 22:10:14', '2024-03-08 00:00:00', 5, 0, NULL, NULL),
(217, 'paid', '0.00', NULL, 44, 3, '2024-02-08 13:19:20', '2024-02-08 13:19:20', '2024-03-09 00:00:00', 5, 0, NULL, NULL),
(218, 'paid', '0.00', NULL, 46, 1, '2024-02-09 17:20:39', '2024-02-09 18:07:34', '2024-02-24 00:00:00', 70, 1, 15000, NULL),
(219, 'paid', '0.00', NULL, 48, 3, '2024-02-10 18:36:30', '2024-02-10 18:36:30', '2024-03-11 00:00:00', 5, 0, NULL, NULL),
(220, 'paid', '0.00', NULL, 70, 3, '2024-02-12 10:49:37', '2024-02-12 10:49:37', '2024-03-13 00:00:00', 5, 0, NULL, NULL),
(221, 'paid', '0.00', NULL, 56, 3, '2024-02-15 20:26:58', '2024-02-15 20:26:58', '2024-03-16 00:00:00', 5, 0, NULL, NULL),
(222, 'paid', '0.00', NULL, 58, 3, '2024-02-16 10:08:39', '2024-02-16 10:08:39', '2024-03-17 00:00:00', 5, 0, NULL, NULL),
(223, 'paid', '0.00', NULL, 72, 3, '2024-02-16 13:00:56', '2024-02-16 13:00:56', '2024-03-17 00:00:00', 5, 0, NULL, NULL),
(224, 'paid', '0.00', NULL, 74, 3, '2024-02-17 11:22:54', '2024-02-17 11:22:54', '2024-03-18 00:00:00', 5, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `packs`
--

CREATE TABLE `packs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `contractNb` int(11) DEFAULT NULL,
  `optionAi` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `quotaAi` int(11) DEFAULT NULL,
  `stripeId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `packs`
--

INSERT INTO `packs` (`id`, `name`, `description`, `price`, `contractNb`, `optionAi`, `created_at`, `updated_at`, `period`, `quotaAi`, `stripeId`) VALUES
(1, 'Premium', '<p style=\"text-align:center;\"><span style=\"font-size: 14px;\">Have a try at the world\'s most powerful &amp; user friendly document generator</span></p>\n<p>&nbsp;</p>\n<p></p>\n<p style=\"text-align:center;\"><span style=\"font-size: 36px;\">$30</span></p>\n<p>&nbsp;</p>\n<p></p>\n<p>🗸 All Free features</p>\n<p>🗸 IA with 15k Tokens</p>\n<p>🗸 70 authorized contracts&nbsp;</p>\n<p style=\"text-align:center;\"></p>\n', '30.00', 70, 1, '2023-06-14 15:00:36', '2023-07-14 16:18:03', 30, 15000, 'price_1Nfg5nG8uVEVd2p0PGnSGAm5'),
(3, 'Free', '<p style=\"text-align:center;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 14px;\">Have a try at the world\'s most powerful &amp; user friendly document generator</span></p>\n<p style=\"text-align:start;\">&nbsp;</p>\n<p></p>\n<p style=\"text-align:center;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 36px;\">$0</span>&nbsp;</p>\n', '0.00', 5, 0, '2023-06-14 16:06:29', '2023-07-14 16:16:42', 30, NULL, NULL),
(4, 'Gold', '<p style=\"text-align:center;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 14px;\">Have a try at the world\'s most powerful &amp; user friendly document generator</span></p>\n<p>&nbsp;&nbsp;</p>\n<p style=\"text-align:center;\"><span style=\"font-size: 36px;\">$90</span></p>\n<p></p>\n<p>&nbsp;</p>\n<p>&nbsp;🗸 All Premium features</p>\n<p>&nbsp;🗸 IA with 300k Tokens</p>\n<p>&nbsp;🗸 Unlimited authorized contracts&nbsp;</p>\n<p style=\"text-align:center;\"></p>\n', '90.00', NULL, 1, '2023-06-27 16:04:54', '2023-07-14 16:19:22', 30, 300000, 'price_1NfgvfG8uVEVd2p0naD50R0X');

-- --------------------------------------------------------

--
-- Structure de la table `pdf_urls`
--

CREATE TABLE `pdf_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractId` bigint(20) UNSIGNED DEFAULT NULL,
  `langId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pdf_urls`
--

INSERT INTO `pdf_urls` (`id`, `url`, `contractId`, `langId`, `created_at`, `updated_at`) VALUES
(1, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 0, '2023-06-06 15:14:15', '2023-06-06 15:14:15'),
(2, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 10, '2023-06-07 11:21:08', '2023-06-07 11:21:08'),
(3, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 6, '2023-06-07 11:23:19', '2023-06-07 11:23:19'),
(4, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 6, '2023-06-07 11:23:31', '2023-06-07 11:23:31'),
(5, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 10, '2023-06-07 11:23:57', '2023-06-07 11:23:57'),
(6, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 10, '2023-06-07 11:47:24', '2023-06-07 11:47:24'),
(7, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 10, '2023-06-07 11:48:43', '2023-06-07 11:48:43'),
(8, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 10, '2023-06-07 11:49:03', '2023-06-07 11:49:03'),
(9, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 6, '2023-06-07 11:50:17', '2023-06-07 11:50:17'),
(10, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-de.pdf', 13, 10, '2023-06-07 11:55:53', '2023-06-07 11:55:53'),
(11, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-13-es.pdf', 13, 6, '2023-06-07 11:56:01', '2023-06-07 11:56:01'),
(12, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-14-de.pdf', 14, 10, '2023-06-07 14:05:33', '2023-06-07 14:05:33'),
(13, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-14-de.pdf', 14, 10, '2023-06-07 14:13:02', '2023-06-07 14:13:02'),
(14, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-14-de.pdf', 14, 10, '2023-06-07 14:16:35', '2023-06-07 14:16:35'),
(15, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-14-es.pdf', 14, 6, '2023-06-07 14:16:43', '2023-06-07 14:16:43'),
(16, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-14-de.pdf', 14, 10, '2023-06-07 15:09:54', '2023-06-07 15:09:54'),
(17, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-14-en.pdf', 14, 12, '2023-06-07 15:23:34', '2023-06-07 15:23:34'),
(18, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-23-de.pdf', 23, 10, '2023-06-19 08:54:26', '2023-06-19 08:54:26'),
(19, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-30-es.pdf', 30, 6, '2023-06-19 09:16:35', '2023-06-19 09:16:35'),
(20, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-32-fr.pdf', 32, 16, '2023-06-27 11:46:46', '2023-06-27 11:46:46'),
(21, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-33-en.pdf', 33, 12, '2023-06-27 11:47:25', '2023-06-27 11:47:25'),
(22, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-34-fr.pdf', 34, 16, '2023-06-27 11:51:38', '2023-06-27 11:51:38'),
(23, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-36-fr.pdf', 36, 16, '2023-07-07 20:18:18', '2023-07-07 20:18:18'),
(24, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-37-fr.pdf', 37, 16, '2023-07-07 20:28:27', '2023-07-07 20:28:27'),
(25, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-38-fr.pdf', 38, 16, '2023-07-07 20:34:59', '2023-07-07 20:34:59'),
(26, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-39-fr.pdf', 39, 16, '2023-07-10 13:39:42', '2023-07-10 13:39:42'),
(27, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-40-fr.pdf', 40, 16, '2023-07-14 09:27:10', '2023-07-14 09:27:10'),
(28, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-41-fr.pdf', 41, 16, '2023-07-17 13:43:17', '2023-07-17 13:43:17'),
(29, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-42-fr.pdf', 42, 16, '2023-07-20 10:13:20', '2023-07-20 10:13:20'),
(30, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-43-fr.pdf', 43, 16, '2023-08-14 14:22:26', '2023-08-14 14:22:26'),
(31, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-44-fr.pdf', 44, 16, '2023-08-15 13:04:43', '2023-08-15 13:04:43'),
(32, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-45-fr.pdf', 45, 16, '2023-08-18 11:18:28', '2023-08-18 11:18:28'),
(33, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-47-fr.pdf', 47, 16, '2023-08-18 17:41:16', '2023-08-18 17:41:16'),
(34, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-48-fr.pdf', 48, 16, '2023-09-15 11:55:15', '2023-09-15 11:55:15'),
(35, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-49-fr.pdf', 49, 16, '2023-09-15 15:51:39', '2023-09-15 15:51:39'),
(36, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-50-fr.pdf', 50, 16, '2023-10-07 12:28:21', '2023-10-07 12:28:21'),
(37, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-50-fr.pdf', 50, 16, '2023-10-09 10:26:59', '2023-10-09 10:26:59'),
(38, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-51-fr.pdf', 51, 16, '2023-10-09 10:28:19', '2023-10-09 10:28:19');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `roleName`, `created_at`, `updated_at`) VALUES
(1, 'superAdmin', '2023-12-30 14:11:20', '2023-12-30 14:11:20'),
(2, 'admin', '2023-12-30 14:11:30', '2023-12-30 14:11:30'),
(3, 'client', '2023-12-30 14:11:38', '2023-12-30 14:11:38');

-- --------------------------------------------------------

--
-- Structure de la table `sd_contract_fields`
--

CREATE TABLE `sd_contract_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdContractId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sd_contract_fields`
--

INSERT INTO `sd_contract_fields` (`id`, `field`, `value`, `sdContractId`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Mohamed Thabet JMAL', 36, '2023-07-07 20:17:58', '2023-07-07 20:17:58'),
(2, 'zipCode', '30000', 36, '2023-07-07 20:17:58', '2023-07-07 20:17:58'),
(3, 'address', 'Tunis-Tunisie', 36, '2023-07-07 20:17:58', '2023-07-07 20:17:58'),
(4, 'date', '12/12/2022', 37, '2023-07-07 20:28:11', '2023-07-07 20:28:11'),
(5, 'prenom', 'Thabet ', 37, '2023-07-07 20:28:11', '2023-07-07 20:28:11'),
(6, 'name', 'THABET', 37, '2023-07-07 20:28:11', '2023-07-07 20:28:11'),
(7, 'city', 'France', 37, '2023-07-07 20:28:11', '2023-07-07 20:28:11'),
(8, 'passportId', '132135465', 37, '2023-07-07 20:28:11', '2023-07-07 20:28:11'),
(9, 'nationality', 'Française', 37, '2023-07-07 20:28:11', '2023-07-07 20:28:11'),
(10, 'salary', '45k', 37, '2023-07-07 20:28:11', '2023-07-07 20:28:11'),
(11, 'date', '12/12/2022', 38, '2023-07-07 20:33:59', '2023-07-07 20:33:59'),
(12, 'prenom', 'JMAL', 38, '2023-07-07 20:33:59', '2023-07-07 20:33:59'),
(13, 'name', 'THABET', 38, '2023-07-07 20:33:59', '2023-07-07 20:33:59'),
(14, 'passportId', 'qsdq456', 38, '2023-07-07 20:33:59', '2023-07-07 20:33:59'),
(15, 'nationality', 'Italienne', 38, '2023-07-07 20:33:59', '2023-07-07 20:33:59'),
(16, 'city', 'Italie', 38, '2023-07-07 20:33:59', '2023-07-07 20:33:59'),
(17, 'salary', '70k', 38, '2023-07-07 20:33:59', '2023-07-07 20:33:59'),
(18, 'date', '11/01/2023', 39, '2023-07-10 08:44:31', '2023-07-10 08:44:31'),
(19, 'prenom', 'thabet', 39, '2023-07-10 08:44:31', '2023-07-10 08:44:31'),
(20, 'name', 'Habiba', 39, '2023-07-10 08:44:31', '2023-07-10 08:44:31'),
(21, 'city', 'sfax', 39, '2023-07-10 08:44:31', '2023-07-10 08:44:31'),
(22, 'passportId', 'erfghjk85285', 39, '2023-07-10 08:44:31', '2023-07-10 08:44:31'),
(23, 'nationality', 'Tun', 39, '2023-07-10 08:44:31', '2023-07-10 08:44:31'),
(24, 'salary', '45k', 39, '2023-07-10 08:44:31', '2023-07-10 08:44:31'),
(25, 'date', 'jkkk', 40, '2023-07-14 09:26:47', '2023-07-14 09:26:47'),
(26, 'prenom', 'jkj', 40, '2023-07-14 09:26:47', '2023-07-14 09:26:47'),
(27, 'name', 'jkkj', 40, '2023-07-14 09:26:47', '2023-07-14 09:26:47'),
(28, 'city', 'ubbu', 40, '2023-07-14 09:26:47', '2023-07-14 09:26:47'),
(29, 'passportId', 'injhuj', 40, '2023-07-14 09:26:47', '2023-07-14 09:26:47'),
(30, 'nationality', 'jkjj', 40, '2023-07-14 09:26:47', '2023-07-14 09:26:47'),
(31, 'salary', 'hjh7i', 40, '2023-07-14 09:26:47', '2023-07-14 09:26:47'),
(32, 'date', 'ok', 41, '2023-07-17 13:43:05', '2023-07-17 13:43:05'),
(33, 'prenom', '78578', 41, '2023-07-17 13:43:05', '2023-07-17 13:43:05'),
(34, 'name', 'ok', 41, '2023-07-17 13:43:05', '2023-07-17 13:43:05'),
(35, 'city', 'o', 41, '2023-07-17 13:43:05', '2023-07-17 13:43:05'),
(36, 'passportId', 'ok', 41, '2023-07-17 13:43:05', '2023-07-17 13:43:05'),
(37, 'nationality', 'ok', 41, '2023-07-17 13:43:05', '2023-07-17 13:43:05'),
(38, 'salary', 'ok', 41, '2023-07-17 13:43:05', '2023-07-17 13:43:05'),
(39, 'date', 'vukj', 42, '2023-07-20 10:12:49', '2023-07-20 10:12:49'),
(40, 'prenom', 'jjhh', 42, '2023-07-20 10:12:49', '2023-07-20 10:12:49'),
(41, 'name', 'jjk', 42, '2023-07-20 10:12:49', '2023-07-20 10:12:49'),
(42, 'city', 'hjjhg', 42, '2023-07-20 10:12:49', '2023-07-20 10:12:49'),
(43, 'passportId', 'jnkk', 42, '2023-07-20 10:12:49', '2023-07-20 10:12:49'),
(44, 'nationality', 'jkk', 42, '2023-07-20 10:12:49', '2023-07-20 10:12:49'),
(45, 'salary', 'jjj', 42, '2023-07-20 10:12:49', '2023-07-20 10:12:49'),
(46, 'name', 'Mohamed Thabet JMAL', 43, '2023-08-14 14:22:14', '2023-08-14 14:22:14'),
(47, 'zipCode', '30000', 43, '2023-08-14 14:22:14', '2023-08-14 14:22:14'),
(48, 'city', 'Tunis', 43, '2023-08-14 14:22:14', '2023-08-14 14:22:14'),
(49, 'date', '10/25', 44, '2023-08-15 13:02:49', '2023-08-15 13:02:49'),
(50, 'prenom', 'ssss', 44, '2023-08-15 13:02:49', '2023-08-15 13:02:49'),
(51, 'name', 'as', 44, '2023-08-15 13:02:49', '2023-08-15 13:02:49'),
(52, 'city', '10/05', 44, '2023-08-15 13:02:49', '2023-08-15 13:02:49'),
(53, 'passportId', '125478', 44, '2023-08-15 13:02:49', '2023-08-15 13:02:49'),
(54, 'nationality', 'tn', 44, '2023-08-15 13:02:49', '2023-08-15 13:02:49'),
(55, 'salary', 'sxdsds', 44, '2023-08-15 13:02:49', '2023-08-15 13:02:49'),
(56, 'name', 'habib', 49, '2023-09-15 15:51:17', '2023-09-15 15:51:17'),
(57, 'name', 'Mohamed Thabet JMAL', 50, '2023-10-06 09:19:36', '2023-10-06 09:19:36'),
(58, 'city', 'Tunis', 50, '2023-10-06 09:19:36', '2023-10-06 09:19:36'),
(59, 'phoneNumber', '+21622471859', 50, '2023-10-06 09:19:36', '2023-10-06 09:19:36'),
(60, 'name', 'Ali', 51, '2023-10-07 12:31:44', '2023-10-07 12:31:44'),
(61, 'prenom', 'Talbi', 51, '2023-10-07 12:31:44', '2023-10-07 12:31:44');

-- --------------------------------------------------------

--
-- Structure de la table `standard_contract`
--

CREATE TABLE `standard_contract` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passportId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companySignature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyerSignature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdfUrlLang1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdfUrlLang2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `templateId` bigint(20) UNSIGNED DEFAULT NULL,
  `createdBy` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `standard_contract`
--

INSERT INTO `standard_contract` (`id`, `number`, `name`, `passportId`, `zipCode`, `address`, `nationality`, `city`, `phoneNumber`, `email`, `bank`, `iban`, `swift`, `companySignature`, `buyerSignature`, `birthDate`, `salary`, `startDate`, `endDate`, `period`, `lang`, `pdfUrlLang1`, `pdfUrlLang2`, `created_at`, `updated_at`, `templateId`, `createdBy`) VALUES
(1, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/FiIgVqESGt-buyerSignature-ac-1.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-05-30 11:57:16', '2023-05-30 11:57:16', 1, 7),
(2, 2, 'Jmal', NULL, NULL, 'djerba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/dwFUbKh7gm-buyerSignature-ac-2.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-05-30 12:00:55', '2023-05-30 12:00:55', 1, 3),
(3, 3, '1', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/iKkhOws6gN-companySignature-3.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/guGMEh1jbq-buyerSignature-ac-3.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-3-fr.pdf', '2023-05-30 13:20:19', '2023-05-30 16:24:09', 1, 3),
(4, 4, '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/9wvatPtviV-companySignature-4.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/6vbczK8zHl-buyerSignature-ac-4.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-4-fr.pdf', '2023-05-31 10:47:32', '2023-05-31 10:51:11', 1, 7),
(5, 5, 'azertyu', 'bn', 'houij', 'jjkl', ',gbn,', 'ojooi', '4569652', 'j', 'pj', '452385', 'fghjklm', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/59mlSXrkTo-companySignature-5.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/PpCKJpBXUq-buyerSignature-ac-5.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-5-fr.pdf', '2023-05-31 10:52:34', '2023-05-31 10:53:25', 1, 5),
(6, 6, '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/hRBwBCAzPR-companySignature-6.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/MCXkrUtd7o-buyerSignature-ac-6.png', NULL, NULL, NULL, NULL, NULL, 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-6-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-6-fr.pdf', '2023-05-31 11:18:28', '2023-05-31 17:31:03', 1, 6),
(7, 7, 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/2somrAqu4b-companySignature-7.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/7g07jKWIDR-buyerSignature-ac-7.png', NULL, NULL, NULL, NULL, NULL, 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-7-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-7-fr.pdf', '2023-06-01 09:00:09', '2023-06-01 09:06:42', 1, 6),
(8, 8, 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/OAhyoMHPRV-companySignature-8.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/XtpvNeVtsh-buyerSignature-ac-8.png', NULL, NULL, NULL, NULL, NULL, 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-8-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-8-fr.pdf', '2023-06-01 09:39:54', '2023-06-01 09:55:14', 1, 6),
(9, 9, 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/Rix22wtJz9-companySignature-9.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/r57SHbN2r8-buyerSignature-ac-9.png', NULL, NULL, NULL, NULL, NULL, 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-9-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-9-fr.pdf', '2023-06-01 09:57:32', '2023-06-01 09:58:10', 1, 6),
(10, 10, 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 's', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/PhEdzAr7G0-companySignature-10.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ywHdvAVQCb-buyerSignature-ac-10.png', NULL, NULL, NULL, NULL, NULL, 'es', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-10-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-10-es.pdf', '2023-06-01 10:09:20', '2023-06-01 14:21:29', 1, 6),
(11, 11, NULL, 'test id passport', NULL, 'test adresse ', 'test nationalité', NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ZWhxMzIJqF-companySignature-11.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/5j09nqpdOK-buyerSignature-ac-11.png', NULL, NULL, NULL, NULL, NULL, 'es', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-11-en.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-11-es.pdf', '2023-06-06 09:32:48', '2023-06-06 11:54:06', 8, 6),
(12, 12, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ZnXayXDAwq-companySignature-12.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/WelajDV1tX-buyerSignature-ac-12.png', NULL, NULL, NULL, NULL, NULL, 'es', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-12-de.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/sd-contract-12-es.pdf', '2023-06-06 11:26:39', '2023-06-06 11:45:13', 8, 6),
(13, 13, 'test', 'test', NULL, 'test', 'test', NULL, '1234', NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ekRASwja1R-companySignature-13.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/Dg9iaXDmgb-buyerSignature-ac-13.png', NULL, NULL, NULL, NULL, NULL, 'de', NULL, NULL, '2023-06-06 15:09:04', '2023-06-06 15:14:15', 8, 6),
(14, 14, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/QSbPN5qAJ4-companySignature-14.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/T3KNyMhf0D-buyerSignature-ac-14.png', NULL, NULL, NULL, NULL, NULL, 'de', NULL, NULL, '2023-06-07 14:05:15', '2023-06-07 14:13:01', 8, 6),
(15, 15, NULL, 'az', NULL, 'azeaz', 'azz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/woJIICHOut-buyerSignature-sd-15.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 11:37:23', '2023-06-09 11:37:23', 8, NULL),
(16, 16, NULL, 'q', NULL, 'a', 'aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/mxz7A8eMSj-buyerSignature-sd-16.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 13:58:00', '2023-06-09 13:58:00', 8, NULL),
(17, 17, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/d5bNAHkcXn-buyerSignature-sd-17.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-16 08:02:30', '2023-06-16 08:02:30', 8, 6),
(18, 18, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/LUGeJwQGo2-buyerSignature-sd-18.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-16 08:03:36', '2023-06-16 08:03:36', 8, 6),
(19, 19, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/KWElblpPyj-buyerSignature-sd-19.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-16 08:08:42', '2023-06-16 08:08:42', 8, 6),
(20, 20, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ryEtMiWqdK-buyerSignature-sd-20.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-16 15:12:20', '2023-06-16 15:12:20', 8, 6),
(21, 21, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/SvG4xvOmKw-buyerSignature-sd-21.png', NULL, NULL, NULL, NULL, NULL, 'es', NULL, NULL, '2023-06-19 08:37:45', '2023-06-19 08:37:45', 8, 6),
(22, 22, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/s7ebqoh0SW-buyerSignature-sd-22.png', NULL, NULL, NULL, NULL, NULL, 'es', NULL, NULL, '2023-06-19 08:52:35', '2023-06-19 08:52:35', 8, 6),
(23, 23, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/r0ewWB4yKb-companySignature-23.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/y2XaBmhHAo-buyerSignature-sd-23.png', NULL, NULL, NULL, NULL, NULL, 'de', NULL, NULL, '2023-06-19 08:53:40', '2023-06-19 08:54:26', 8, 6),
(24, 24, NULL, 'a', NULL, 'a', 'aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/1LB15fA6N7-buyerSignature-sd-24.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-19 08:57:49', '2023-06-19 08:57:49', 8, 6),
(25, 25, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/rxuZtPKele-buyerSignature-sd-25.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-19 09:01:21', '2023-06-19 09:01:21', 8, 6),
(26, 26, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/X07El7ZEUA-buyerSignature-sd-26.png', NULL, NULL, NULL, NULL, NULL, 'de', NULL, NULL, '2023-06-19 09:07:33', '2023-06-19 09:07:33', 8, 6),
(27, 27, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/5ZvimdLpR9-buyerSignature-sd-27.png', NULL, NULL, NULL, NULL, NULL, 'es', NULL, NULL, '2023-06-19 09:09:18', '2023-06-19 09:09:18', 8, 6),
(28, 28, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/I5NJCJkWgf-buyerSignature-sd-28.png', NULL, NULL, NULL, NULL, NULL, 'en', NULL, NULL, '2023-06-19 09:09:47', '2023-06-19 09:09:47', 8, 6),
(29, 29, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/fUy7lRo0eO-buyerSignature-sd-29.png', NULL, NULL, NULL, NULL, NULL, 'de', NULL, NULL, '2023-06-19 09:10:23', '2023-06-19 09:10:23', 8, 6),
(30, 30, NULL, 'a', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/SXQEYacCuU-companySignature-30.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/N8tIOxQ72W-buyerSignature-sd-30.png', NULL, NULL, NULL, NULL, NULL, 'es', NULL, NULL, '2023-06-19 09:10:41', '2023-06-19 09:16:35', 8, 6),
(31, 31, NULL, 'A', NULL, 'a', 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/wTUhgiHVE4-buyerSignature-sd-31.png', NULL, NULL, NULL, NULL, NULL, 'de', NULL, NULL, '2023-06-19 13:39:32', '2023-06-19 13:39:32', 8, 6),
(32, 32, 'Mohamed Thabet JMAL', NULL, '30000', 'Tunis-Tunisie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/l4JcOwuPpa-companySignature-32.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/Aw9Q4ptWgu-buyerSignature-sd-32.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-06-27 11:46:04', '2023-06-27 11:46:46', 10, 13),
(33, 33, 'azertyu', NULL, NULL, NULL, 'azerg', NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/I4eeG6BPzb-companySignature-33.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/C7eol7tLCo-buyerSignature-sd-33.png', NULL, NULL, NULL, NULL, NULL, 'en', NULL, NULL, '2023-06-27 11:47:09', '2023-06-27 11:47:25', 11, 13),
(34, 34, 'Mohamed winteamtest', NULL, NULL, NULL, NULL, 'Tunis', '+21622471859', 'mohamed@winteam.fr', NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/c2fr42atAV-companySignature-34.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/algraCD7ab-buyerSignature-sd-34.png', NULL, '12345', NULL, NULL, NULL, 'FR', NULL, NULL, '2023-06-27 11:51:25', '2023-06-27 11:51:38', 12, 13),
(35, 35, 'Mohamed Thabet JMAL', NULL, '30000', 'Tunis-Tunisie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/eq8jKtJbi3-buyerSignature-sd-35.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-07-06 07:47:36', '2023-07-06 07:47:36', 10, 13),
(36, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/kxKSFmyweA-companySignature-36.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/xFrY0XTnYZ-buyerSignature-sd-36.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-07-07 20:17:58', '2023-07-07 20:18:18', 10, 13),
(37, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ilI0JJUv7C-companySignature-37.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/atxDoAbGoj-buyerSignature-sd-37.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-07-07 20:28:11', '2023-07-07 20:28:27', 10, 13),
(38, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/g0TNhJSRYT-companySignature-38.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/mVxWUfoMWI-buyerSignature-sd-38.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-07-07 20:33:59', '2023-07-07 20:34:59', 10, 13),
(39, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/fGkoUqznAO-companySignature-39.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/x3CivHIAm2-buyerSignature-sd-39.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-07-10 08:44:30', '2023-07-10 13:39:42', 10, 13),
(40, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/WbrXImIIRg-companySignature-40.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/M8AxDLt4If-buyerSignature-sd-40.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-07-14 09:26:47', '2023-07-14 09:27:10', 10, 13),
(41, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/budaf5O2JW-companySignature-41.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/GgaLIw9MC0-buyerSignature-sd-41.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-07-17 13:43:05', '2023-07-17 13:43:17', 10, 13),
(42, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/1HTabQL08Z-companySignature-42.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/3RaE0VsHzJ-buyerSignature-sd-42.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-07-20 10:12:49', '2023-07-20 10:13:20', 10, 13),
(43, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/AEf8ie3GJA-companySignature-43.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ZLNmgzGe47-buyerSignature-sd-43.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-08-14 14:22:14', '2023-08-14 14:22:26', 14, 13),
(44, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/leNQnnKA6D-companySignature-44.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/VCNBfZ6gpr-buyerSignature-sd-44.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-08-15 13:02:49', '2023-08-15 13:04:43', 10, 13),
(45, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/eCf8B70S4O-companySignature-45.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/hMGAwC760y-buyerSignature-sd-45.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-08-18 11:18:12', '2023-08-18 11:18:28', 15, 17),
(46, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/D68x7lS5f8-buyerSignature-sd-46.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-08-18 11:29:10', '2023-08-18 11:29:10', 15, 17),
(47, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/W8hofId1Tw-companySignature-47.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/O5u4uEj4Ui-buyerSignature-sd-47.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-08-18 17:41:06', '2023-08-18 17:41:16', 16, 18),
(48, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/Zdy5cQiqB0-companySignature-48.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/txlrty40Yn-buyerSignature-sd-48.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-09-15 11:55:04', '2023-09-15 11:55:15', 17, 19),
(49, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/Wq8E71V3Jy-companySignature-49.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/YbdDW3ho45-buyerSignature-sd-49.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-09-15 15:51:17', '2023-09-15 15:51:39', 18, 21),
(50, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/m043mSq9hG-companySignature-50.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/g5yod0wGX5-buyerSignature-sd-50.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-10-06 09:19:36', '2023-10-09 10:26:59', 21, 29),
(51, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/urs082BVmu-companySignature-51.png', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/OWDAU4KnZo-buyerSignature-sd-51.png', NULL, NULL, NULL, NULL, NULL, 'FR', NULL, NULL, '2023-10-07 12:31:44', '2023-10-09 10:28:19', 22, 29);

-- --------------------------------------------------------

--
-- Structure de la table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subCategoryName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `display` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subCategoryName`, `categoryId`, `created_at`, `updated_at`, `done`, `display`) VALUES
(1, 'Contrôle des niveaux', 1, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(2, 'Test sur Route', 1, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(3, 'Test batterie et continuité', 1, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(4, 'Vérification', 1, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(5, 'Passage banc de test', 1, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(6, 'Contrôle des niveaux', 2, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(7, 'Test sur Route', 2, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(8, 'Test batterie et continuité', 2, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(9, 'Vérification', 2, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(10, 'Passage banc de test', 2, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(11, 'Contrôle des niveaux', 3, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(12, 'Test sur Route', 3, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(13, 'Test batterie et continuité', 3, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(14, 'Vérification', 3, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(15, 'Passage banc de test', 3, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(16, 'Contrôle des niveaux', 4, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(17, 'Test sur Route', 4, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(18, 'Test batterie et continuité', 4, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(19, 'Vérification', 4, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(20, 'Passage banc de test', 4, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(21, 'Contrôle des niveaux', 5, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(22, 'Test sur Route', 5, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(23, 'Test batterie et continuité', 5, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(24, 'Vérification', 5, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(25, 'Passage banc de test', 5, '2023-12-30 14:52:53', '2023-12-30 14:52:53', 0, 1),
(26, 'Contrôle des niveaux', 6, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(27, 'Test sur Route', 6, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(28, 'Test batterie et continuité', 6, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(29, 'Vérification', 6, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(30, 'Passage banc de test', 6, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(31, 'Contrôle des niveaux', 7, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(32, 'Test sur Route', 7, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(33, 'Test batterie et continuité', 7, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(34, 'Vérification', 7, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(35, 'Passage banc de test', 7, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(36, 'Contrôle des niveaux', 8, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(37, 'Test sur Route', 8, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(38, 'Test batterie et continuité', 8, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(39, 'Vérification', 8, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(40, 'Passage banc de test', 8, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(41, 'Contrôle des niveaux', 9, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(42, 'Test sur Route', 9, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(43, 'Test batterie et continuité', 9, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(44, 'Vérification', 9, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(45, 'Passage banc de test', 9, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(46, 'Contrôle des niveaux', 10, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(47, 'Test sur Route', 10, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(48, 'Test batterie et continuité', 10, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(49, 'Vérification', 10, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(50, 'Passage banc de test', 10, '2023-12-30 16:31:14', '2023-12-30 16:31:14', 0, 1),
(51, '25', 11, '2024-02-06 19:26:38', '2024-02-06 19:26:38', 0, 1),
(52, '25', 12, '2024-02-06 20:02:12', '2024-02-06 20:02:12', 0, 1),
(53, 'test2', 14, '2024-02-06 20:02:12', '2024-02-06 20:02:12', 0, 1),
(54, '25', 15, '2024-02-06 20:09:30', '2024-02-06 20:09:30', 0, 1),
(55, 'test2', 17, '2024-02-06 20:09:30', '2024-02-06 20:09:30', 0, 1),
(56, 'test', 17, '2024-02-06 20:09:30', '2024-02-06 20:09:30', 0, 1),
(57, 'gheihe', 18, '2024-02-06 20:13:13', '2024-02-08 14:23:37', 1, 1),
(58, 'test2', 20, '2024-02-06 20:13:13', '2024-02-06 20:13:13', 0, 1),
(59, 'test', 20, '2024-02-06 20:13:13', '2024-02-06 20:13:13', 0, 1),
(60, 'Hi', 19, '2024-02-06 22:50:45', '2024-02-06 22:50:45', 0, 1),
(62, '25', 21, '2024-02-08 14:38:41', '2024-02-16 09:26:09', 0, 0),
(63, 'Hello', 22, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 0, 1),
(64, 'test', 23, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 0, 1),
(65, 'Diagnostic entree', 24, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 0, 1),
(66, 'Test pistons', 25, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 0, 1),
(67, 'Équilibrage pistons', 25, '2024-02-08 14:38:41', '2024-02-08 14:38:41', 0, 1),
(68, '25', 26, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 0, 1),
(69, 'Hello', 27, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 0, 1),
(70, 'test', 28, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 0, 1),
(71, 'Diagnostic entree', 29, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 0, 1),
(72, 'Test pistons', 30, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 0, 1),
(73, 'Équilibrage pistons', 30, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 0, 1),
(74, 'Diagnostic entree', 31, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 0, 1),
(75, 'Équilibrage pistons', 32, '2024-02-09 17:46:31', '2024-02-09 17:46:31', 0, 1),
(76, 'Diagnostic entree', 33, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 0, 1),
(77, 'Test pistons', 34, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 0, 1),
(78, 'Équilibrage pistons', 34, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 0, 1),
(79, 'Diagnostic entree', 35, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 0, 1),
(80, 'Équilibrage pistons', 36, '2024-02-09 18:02:46', '2024-02-09 18:02:46', 0, 1),
(81, 'Diagnostic entree', 37, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 0, 1),
(82, 'Test pistons', 38, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 0, 1),
(83, 'Équilibrage pistons', 38, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 0, 1),
(84, 'Diagnostic entree', 39, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 0, 1),
(85, 'Équilibrage pistons', 40, '2024-02-09 18:12:05', '2024-02-09 18:12:05', 0, 1),
(86, 'Diagnostic entree', 41, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 0, 1),
(87, 'Test pistons', 42, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 0, 1),
(88, 'Équilibrage pistons', 42, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 0, 1),
(89, 'Diagnostic entree', 43, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 0, 1),
(90, 'Équilibrage pistons', 44, '2024-02-09 18:17:11', '2024-02-09 18:17:11', 0, 1),
(91, 'Diagnostic entree', 45, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(92, 'Test', 45, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(93, 'Test pistons', 46, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(94, 'Équilibrage pistons', 46, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(95, 'Diagnostic entree', 47, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(96, 'Équilibrage pistons', 48, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(97, 'Diagnostic entree', 49, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(98, 'Équilibrage pistons', 50, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(99, 'Diagnostic entree', 51, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(100, 'Équilibrage pistons', 52, '2024-02-12 10:52:32', '2024-02-12 10:52:32', 0, 1),
(101, 'Diagnostic entree', 53, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(102, 'Test', 53, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(103, 'Test pistons', 54, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(104, 'Équilibrage pistons', 54, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(105, 'Diagnostic entree', 55, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(106, 'Équilibrage pistons', 56, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(107, 'Diagnostic entree', 57, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(108, 'Équilibrage pistons', 58, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(109, 'Diagnostic entree', 59, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(110, 'Équilibrage pistons', 60, '2024-02-12 13:17:42', '2024-02-12 13:17:42', 0, 1),
(111, 'Diagnostic entree', 61, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(112, 'Test', 61, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(113, 'Test pistons', 62, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(114, 'Équilibrage pistons', 62, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(115, 'Diagnostic entree', 63, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(116, 'Équilibrage pistons', 64, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(117, 'Diagnostic entree', 65, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(118, 'Équilibrage pistons', 66, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(119, 'Diagnostic entree', 67, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(120, 'Équilibrage pistons', 68, '2024-02-12 13:21:13', '2024-02-12 13:21:13', 0, 1),
(121, 'Diagnostic entree', 69, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(122, 'Test', 69, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(123, 'Test pistons', 70, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(124, 'Équilibrage pistons', 70, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(125, 'Diagnostic entree', 71, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(126, 'Équilibrage pistons', 72, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(127, 'Diagnostic entree', 73, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(128, 'Équilibrage pistons', 74, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(129, 'Diagnostic entree', 75, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(130, 'Équilibrage pistons', 76, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(131, 'Diagnostic entree', 77, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(132, 'Équilibrage pistons', 78, '2024-02-16 09:33:49', '2024-02-16 09:33:49', 0, 1),
(133, 'Diagnostic entree', 79, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(134, 'Test', 79, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(135, 'Test pistons', 80, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(136, 'Équilibrage pistons', 80, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(137, 'Diagnostic entree', 81, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(138, 'Équilibrage pistons', 82, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(139, 'Diagnostic entree', 83, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(140, 'Équilibrage pistons', 84, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(141, 'Diagnostic entree', 85, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(142, 'Équilibrage pistons', 86, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(143, 'Diagnostic entree', 87, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(144, 'Équilibrage pistons', 88, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(145, 'Diagnostic entree', 89, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(146, 'Équilibrage pistons', 90, '2024-02-16 10:09:46', '2024-02-16 10:09:46', 0, 1),
(147, 'Diagnostic entree', 91, '2024-02-16 10:21:16', '2024-02-16 10:21:16', 0, 1),
(148, 'Test', 91, '2024-02-16 10:21:16', '2024-02-16 10:21:16', 0, 1),
(149, 'Test pistons', 92, '2024-02-16 10:21:16', '2024-02-16 10:21:16', 0, 1),
(150, 'Équilibrage pistons', 92, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(151, 'Diagnostic entree', 93, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(152, 'Équilibrage pistons', 94, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(153, 'Diagnostic entree', 95, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(154, 'Équilibrage pistons', 96, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(155, 'Diagnostic entree', 97, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(156, 'Équilibrage pistons', 98, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(157, 'Diagnostic entree', 99, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(158, 'Équilibrage pistons', 100, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(159, 'Diagnostic entree', 101, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(160, 'Équilibrage pistons', 102, '2024-02-16 10:21:17', '2024-02-16 10:21:17', 0, 1),
(161, 'Diagnostic entree', 103, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(162, 'Test', 103, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(163, 'Test pistons', 104, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(164, 'Équilibrage pistons', 104, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(165, 'Diagnostic entree', 105, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(166, 'Équilibrage pistons', 106, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(167, 'Diagnostic entree', 107, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(168, 'Équilibrage pistons', 108, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(169, 'Diagnostic entree', 109, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(170, 'Équilibrage pistons', 110, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(171, 'Diagnostic entree', 111, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(172, 'Équilibrage pistons', 112, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(173, 'Diagnostic entree', 113, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(174, 'Équilibrage pistons', 114, '2024-02-16 11:40:31', '2024-02-16 11:40:31', 0, 1),
(175, 'Diagnostic entree', 115, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(176, 'Test', 115, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(177, 'Test pistons', 116, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(178, 'Équilibrage pistons', 116, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(179, 'Diagnostic entree', 117, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(180, 'Équilibrage pistons', 118, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(181, 'Diagnostic entree', 119, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(182, 'Équilibrage pistons', 120, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(183, 'Diagnostic entree', 121, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(184, 'Équilibrage pistons', 122, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(185, 'Diagnostic entree', 123, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(186, 'Équilibrage pistons', 124, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(187, 'Diagnostic entree', 125, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(188, 'Équilibrage pistons', 126, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(189, 'Diagnostic entree', 127, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(190, 'Équilibrage pistons', 128, '2024-02-16 13:01:32', '2024-02-16 13:01:32', 0, 1),
(191, 'Diagnostic entree', 129, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(192, 'Test', 129, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(193, 'Test pistons', 130, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(194, 'Équilibrage pistons', 130, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(195, 'Diagnostic entree', 131, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(196, 'Équilibrage pistons', 132, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(197, 'Diagnostic entree', 133, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(198, 'Équilibrage pistons', 134, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(199, 'Diagnostic entree', 135, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(200, 'Équilibrage pistons', 136, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(201, 'Diagnostic entree', 137, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(202, 'Équilibrage pistons', 138, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(203, 'Diagnostic entree', 139, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(204, 'Équilibrage pistons', 140, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(205, 'Diagnostic entree', 141, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(206, 'Équilibrage pistons', 142, '2024-02-16 18:14:36', '2024-02-16 18:14:36', 0, 1),
(207, 'Diagnostic entree', 143, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(208, 'Test', 143, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(209, 'Test pistons', 144, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(210, 'Équilibrage pistons', 144, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(211, 'Diagnostic entree', 145, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(212, 'Équilibrage pistons', 146, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(213, 'Diagnostic entree', 147, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(214, 'Équilibrage pistons', 148, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(215, 'Diagnostic entree', 149, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(216, 'Équilibrage pistons', 150, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(217, 'Diagnostic entree', 151, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(218, 'Équilibrage pistons', 152, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(219, 'Diagnostic entree', 153, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(220, 'Équilibrage pistons', 154, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(221, 'Diagnostic entree', 155, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(222, 'Équilibrage pistons', 156, '2024-02-17 11:11:28', '2024-02-17 11:11:28', 0, 1),
(223, 'Diagnostic entree', 157, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(224, 'Test', 157, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(225, 'Test pistons', 158, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(226, 'Équilibrage pistons', 158, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(227, 'Diagnostic entree', 159, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(228, 'Équilibrage pistons', 160, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(229, 'Diagnostic entree', 161, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(230, 'Équilibrage pistons', 162, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(231, 'Diagnostic entree', 163, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(232, 'Équilibrage pistons', 164, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(233, 'Diagnostic entree', 165, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(234, 'Équilibrage pistons', 166, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(235, 'Diagnostic entree', 167, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(236, 'Équilibrage pistons', 168, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(237, 'Diagnostic entree', 169, '2024-02-17 11:21:26', '2024-02-17 11:21:26', 0, 1),
(238, 'Équilibrage pistons', 170, '2024-02-17 11:21:27', '2024-02-17 11:21:27', 0, 1),
(239, 'Diagnostic entree', 171, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(240, 'Test', 171, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(241, 'Test pistons', 172, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(242, 'Équilibrage pistons', 172, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(243, 'Diagnostic entree', 173, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(244, 'Équilibrage pistons', 174, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(245, 'Diagnostic entree', 175, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(246, 'Équilibrage pistons', 176, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(247, 'Diagnostic entree', 177, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(248, 'Équilibrage pistons', 178, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(249, 'Diagnostic entree', 179, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(250, 'Équilibrage pistons', 180, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(251, 'Diagnostic entree', 181, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(252, 'Équilibrage pistons', 182, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(253, 'Diagnostic entree', 183, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(254, 'Équilibrage pistons', 184, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(255, 'Diagnostic entree', 185, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(256, 'Équilibrage pistons', 186, '2024-02-17 11:23:40', '2024-02-17 11:23:40', 0, 1),
(257, 'Diagnostic entree', 187, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(258, 'Test', 187, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(259, 'Test pistons', 188, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(260, 'Équilibrage pistons', 188, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(261, 'Diagnostic entree', 189, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(262, 'Équilibrage pistons', 190, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(263, 'Diagnostic entree', 191, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(264, 'Équilibrage pistons', 192, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(265, 'Diagnostic entree', 193, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(266, 'Équilibrage pistons', 194, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(267, 'Diagnostic entree', 195, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(268, 'Équilibrage pistons', 196, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(269, 'Diagnostic entree', 197, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(270, 'Équilibrage pistons', 198, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(271, 'Diagnostic entree', 199, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(272, 'Équilibrage pistons', 200, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(273, 'Diagnostic entree', 201, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(274, 'Équilibrage pistons', 202, '2024-02-17 11:24:21', '2024-02-17 11:24:21', 0, 1),
(275, 'Diagnostic entree', 203, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(276, 'Test', 203, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(277, 'Test pistons', 204, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(278, 'Équilibrage pistons', 204, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(279, 'Diagnostic entree', 205, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(280, 'Équilibrage pistons', 206, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(281, 'Diagnostic entree', 207, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(282, 'Équilibrage pistons', 208, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(283, 'Diagnostic entree', 209, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(284, 'Équilibrage pistons', 210, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(285, 'Diagnostic entree', 211, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(286, 'Équilibrage pistons', 212, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(287, 'Diagnostic entree', 213, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(288, 'Équilibrage pistons', 214, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(289, 'Diagnostic entree', 215, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(290, 'Équilibrage pistons', 216, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(291, 'Diagnostic entree', 217, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(292, 'Équilibrage pistons', 218, '2024-02-17 11:24:50', '2024-02-17 11:24:50', 0, 1),
(293, 'Diagnostic entree', 219, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(294, 'Test', 219, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(295, 'Test pistons', 220, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(296, 'Équilibrage pistons', 220, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(297, 'Diagnostic entree', 221, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(298, 'Équilibrage pistons', 222, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(299, 'Diagnostic entree', 223, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(300, 'Équilibrage pistons', 224, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(301, 'Diagnostic entree', 225, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(302, 'Équilibrage pistons', 226, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(303, 'Diagnostic entree', 227, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(304, 'Équilibrage pistons', 228, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(305, 'Diagnostic entree', 229, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(306, 'Équilibrage pistons', 230, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(307, 'Diagnostic entree', 231, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(308, 'Équilibrage pistons', 232, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(309, 'Diagnostic entree', 233, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(310, 'Équilibrage pistons', 234, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(311, 'hello', 235, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1),
(312, 'world', 235, '2024-02-17 14:18:35', '2024-02-17 14:18:35', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sub_category_defaults`
--

CREATE TABLE `sub_category_defaults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subCategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sub_category_defaults`
--

INSERT INTO `sub_category_defaults` (`id`, `subCategoryName`, `default_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Diagnostic entree', 1, '2024-01-15 13:27:19', '2024-01-15 13:27:19'),
(2, 'Diagnostic entree', 2, '2024-01-18 11:10:44', '2024-02-06 15:12:55'),
(4, 'Équilibrage pistons', 3, '2024-02-06 21:56:23', '2024-02-06 21:56:23');

-- --------------------------------------------------------

--
-- Structure de la table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `langId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employerId` bigint(20) UNSIGNED DEFAULT NULL,
  `labelSign1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labelSign2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `templates`
--

INSERT INTO `templates` (`id`, `name`, `content`, `langId`, `created_at`, `updated_at`, `employerId`, `labelSign1`, `labelSign2`) VALUES
(1, 'Template FR', '<p style=\"text-align:center;\"><span style=\"color: rgb(30,41,59);font-size: var(--chakra-fontSizes-xl);\"><strong>ACCORD DE COMMISSION</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>Contrat général de commande et d\'achat et de venteDate</strong></span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>30/05/2023</strong></span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\">Azur Aliance Jsc,</span> <span style=\"color: rgb(30,41,59);font-size: 16px;\">ci-après dénommée la Société ayant numéro de TVA BG206565325, dont le siège social est à l\'adresse de gestion, située à l\'adresse 19 rue Mara Gidik, 2ème étage, 8000 Burgas, Bulgarie</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>Ci-après dénommée « l\'Entreprise » ou « la Société » ; Et</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: var(--chakra-fontSizes-md);\">Nom / Prénom</span> <span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span>&nbsp;</p>\n<p>@[name]@&nbsp;</p>\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;\">ID - Passeport </span><span style=\"color: var(--form-control-color);background-color: rgb(255,255,255);font-size: 16px;\">*</span>&nbsp;</p>\n<p>@[passportId]@&nbsp;</p>\n<p><span style=\"font-size: var(--chakra-fontSizes-md);\">Nationalité</span><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span></p>\n<p><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">@[nationality]@</span>&nbsp;</p>\n<p><span style=\"font-size: var(--chakra-fontSizes-md);\">Adresse</span><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span></p>\n<p><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">@[address]@</span>&nbsp;</p>\n<p><span style=\"font-size: var(--chakra-fontSizes-md);\">Code Postal</span><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span></p>\n<p><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">@[zipCode]@</span>&nbsp;</p>\n<p><span style=\"font-size: var(--chakra-fontSizes-md);\">Ville</span><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span></p>\n<p><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">@[city]@</span>&nbsp;</p>\n<p><span style=\"font-size: var(--chakra-fontSizes-md);\">Numéro tel</span><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span></p>\n<p><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">@[phoneNumber]@</span>&nbsp;</p>\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;\">Email</span><span style=\"color: var(--form-control-color);background-color: rgb(255,255,255);font-size: 16px;\">*</span></p>\n<p>&nbsp;@[email]@&nbsp;</p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>Ci-après désigné « l\'Acheteur / le Représentant » ;</strong></span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\">Ce contrat est conclu sur la base de l\'article 127 de la loi bulgare sur la TVA et de l\'art. 14, p.2 de la directive européenne 2006/115 sur la TVA.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Les deux parties reconnaissent avoir la capacité juridique nécessaire pour signer le présent contrat, et les deux parties exécutent la présente commande et le contrat d\'achat et de transmission dans le respect de la loi du pays membre de l\'union Européenne : Bulgarie, conformément aux conditions générales énoncées ci- dessous. Les deux parties déclarent, confirment et acceptent que ce contrat est un contrat de service et ne constitue en aucun cas un contrat de travail, et qu\'une telle relation juridique n\'est pas présumée. L\'acheteur / Le représentant à la possibilité, mais non l\'obligation, de conclure un contrat volontairement et d\'être un entrepreneur indépendant sous la forme de services indépendants.</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>I. Conditions Générales1. Conditions Générales</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Le contrat a pour objet de préciser que l\'entreprise travaille dans le secteur du luxe et peut acquérir un produit par l\'intermédiaire de l\'Acheteur / Représentant.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">La mission de service de l\'Acheteur consiste en l\'achat et la remise du/des produits à l\'entreprise. Il est considéré comme exécuté s\'il est correctement complété dans son intégralité, afin que le produit soit reçu en parfait état.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Les communications de l\'Entreprise s\'effectueront par e- mail, WhatsApp et téléphone, prévus dans le présent contrat dont toutes les informations concernant la mission attribuée seront partagées.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Pour le présent contrat la/les mission(s), les factures d\'achats et le/les bon(s) de cession du/des articles qui seront échangés entre les deux parties seront conservés et mis à disposition des parties concernées dans cet accord.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Si le service/la commande n\'est pas exécuté correctement selon les indications données par l\'Entreprise, ce dernier ne paiera pas pour le service. L\'Acheteur pourra être tenu de lui rembourser le montant correspondant à la perte ou aux dommages sur le/les article(s) acheté(s).</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">En cas de modification des conditions générales, l\'Entreprise informera l\'Acheteur/Représentant de tout changement. L\'Acheteur /Représentant a le droit de résilier le contrat dans les 15 jours suivant la date de réception d\'un tel avis. Si l\'Acheteur/Représentant ne poursuit pas la résiliation dans le délai de 15 jours, il est considéré qu\'il est d\'accord avec les dispositions modifiées et entrainera un renouvellement automatique.</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>2. Prix d\'Achat / frais de Service / Commande</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Le contrat a pour objet de préciser que l\'entreprise travaille dans le secteur du luxe et peut acquérir un produit par l\'intermédiaire de l\'Acheteur / Représentant.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">La mission de service de l\'Acheteur consiste en l\'achat et la remise du/des produits à l\'entreprise. Il est considéré comme exécuté s\'il est correctement complété dans son intégralité, afin que le produit soit reçu en parfait état.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Les communications de l\'Entreprise s\'effectueront par e- mail, WhatsApp et téléphone, prévus dans le présent contrat dont toutes les informations concernant la mission attribuée seront partagées.</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>3. Propriété des biens achetés</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Seul l\'Entreprise est propriétaire des biens achetés par le Mandataire, bien que la facture d\'achat soit éditée au nom du Mandataire ; ce dernier n\'étant jamais propriétaire du bien et ayant pour obligation de le remettre sans délai à son propriétaire, l\'Entreprise.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Ceci est une condition substantielle du présent contrat.</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>4. Modalités de prestation de services</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">La méthode de travail consiste à créer un compte client important/préférentiel/VIP pour que le vendeur/le magasin/la marque accepte de vendre à l\'Acheteur Représentant l\'accès aux produits dit limités/exclusifs.</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>II. Paiement</strong></span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>1. Paiement</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Lors de l\'acquisition des accessoires et produits en magasin par l\'Acheteur / Représentant auprès de l\'Entreprise, L\'Entreprise mettra à disposition de l\'Acheteur / Représentant le moyen du paiement pour acquérir le/les article(s) concernés dans la mission. Il est entendu que les fonds et la carte appartiennent à l\'Entreprise et que seul l\'Acheteur / Représentant est autorisé à l\'utiliser pour la mission confiée.</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>2. Paiement des services fournis (Service / Commande)</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Les paiements des frais de service sont effectués après la réception du produit et après avoir vérifié que tout est correcte. Le règlement sera effectué par virement bancaire sur un compte bancaire fourni par l\'acheteur / Représentant.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Numéro de compte bancaire sur lequel l\'Acheteur/Représentant souhaite percevoir sa rémunération :</span>&nbsp;</p>\n<p><span style=\"font-size: var(--chakra-fontSizes-md);\">BANQUE </span><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span></p>\n<p><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">@[bank]@</span>&nbsp;</p>\n<p><span style=\"font-size: var(--chakra-fontSizes-md);\">SWIFT </span><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span></p>\n<p><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">@[swift]@</span>&nbsp;</p>\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;\">IBAN </span><span style=\"color: var(--form-control-color);background-color: rgb(255,255,255);font-size: 16px;\">*</span></p>\n<p><span style=\"color: var(--form-control-color);background-color: rgb(255,255,255);font-size: 16px;\">@[iban]@</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>III. Résiliation et responsabilité</strong></span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\">L\'Entreprise investira du temps et des efforts dans la formation, la création d\'un profil VIP, la mise en relation avec un employé/vendeur dans le/les magasins, l\'émission d\'une carte bancaire dédiée à l\'Acheteur/Représentant. Pour ces raisons, si l\'Acheteur /Représentant souhaite résilier son contrat alors que la Société a investi sur son profil, une pénalité de 150 euros devra être payée pour couvrir les frais de formation et/ou administratifs.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Cette disposition ne s\'applique que si l\'Acheteur /Représentant profite d\'Azur Aliance pour créer son profil VIP sans donner par la suite accès à l\'Entreprise aux objets limités qui peuvent être obtenus avec l\'intention de les garder pour son propre usage ou bénéfice, soit pour une autre raison.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">Cependant une résiliation justifiée de la part l\'Acheteur /Représentant indiquant l\'intention de résilier le contrat, peut être présentée auprès d\'un représentant de la société, suivi de l\'envoi d\'un avis écrit par courrier recommandé à l\'adresse du siège social de la société, à savoir :</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>19 Mara Gidik street, 2ème étage8000 Burgas, BurgasBulgarie</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">REMARQUE : La Société ne tiendra pas l\'Acheteur/Représentant responsable s\'il omet d\'acheter ces articles restreints et ne le pénalisera pas si, après plusieurs tentatives (minimum 2), toujours en suivant les instructions de l\'employé, il échoue.</span></p>\n<p><span style=\"color: rgb(30,41,59);font-size: 16px;\"><strong>IV. Loyauté et éthique</strong></span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">À partir du moment de la signature du contrat et dans les deux années suivant son achèvement / sa résiliation, l\'Acheteur /Représentant ne pourra pas effectuer d\'achats, de commandes similaires à celles résultant de son travail avec Azur Aliance, pour l\'intérêt de sociétés dites concurrentes.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">La société, en tant que commettant, se réserve le droit d\'autoriser l\'intermédiaire à effectuer des achats privés sur des produits qui pourraient l\'intéresser.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);font-size: 16px;\">En cas de manquement à cette disposition, la Société sera autorisée à réclamer à titre de dédommagement tout montant de profit à la juste valeur marchande qui aurait pu être réalisé par la société après la vente du ou des produits achetés sans le consentement de la société par l\'Acheteur / Representant.</span>&nbsp;</p>\n', 6, NULL, '2023-06-01 09:55:04', 6, NULL, NULL),
(4, 'Template ES', '<p>Template en <strong>espagnole</strong></p>\n<p><strong>bonjour </strong><span href=\"\" class=\"wysiwyg-mention\" data-mention><strong>@[name]@</strong></span><strong> </strong></p>\n', 6, '2023-05-26 16:40:44', '2023-05-31 17:29:46', NULL, NULL, NULL),
(5, 'Template BG', '<p style=\"text-align:center;\"><span style=\"font-size: var(--chakra-fontSizes-xl);\"><strong>КОМИСИОНЕН ДОГОВОР</strong></span></p>\n<p style=\"text-align:center;\"><strong>Общо споразумение за покупко-продажбаДата</strong> <strong>01/06/2023</strong></p>\n<p>\'Азур Алианс\' АД, наричано по-долу \'Дружеството\', с ДДС номер BG206565325, със седалище на адреса на управление, намиращ се на улица \'Мара Гидик\' 19, ет. 2, 8000 Бургас, България.<strong>Наричано по-долу \'Дружеството\' или \'Дружеството\'; и</strong></p>\n<p><span style=\"font-size: var(--chakra-fontSizes-md);\">Име / Фамилия</span><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">*</span></p>\n<p><span style=\"color: var(--form-control-color);font-size: var(--chakra-fontSizes-md);\">@[name]@</span>&nbsp;</p>\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;\">ЕГН - Паспорт</span><span style=\"color: var(--form-control-color);background-color: rgb(255,255,255);font-size: 16px;\">*</span></p>\n<p>@[passportId]@&nbsp;</p>\n<p>Ville:</p>\n<p><span class=\"wysiwyg-mention\" data-mention>@[zipCode]@</span>&nbsp;</p>\n', 14, '2023-06-01 09:38:08', '2023-06-01 09:50:34', 6, NULL, NULL),
(6, 'new template', NULL, NULL, '2023-06-01 15:56:48', '2023-06-01 15:56:48', 6, NULL, NULL),
(7, 'new template2', NULL, NULL, '2023-06-01 15:57:26', '2023-06-01 15:57:26', 6, NULL, NULL),
(8, 'Contrat de travail3', NULL, NULL, '2023-06-02 14:59:26', '2023-06-05 09:49:58', 6, NULL, NULL),
(9, 'Gold', NULL, NULL, '2023-06-22 10:00:38', '2023-06-22 10:00:38', 11, NULL, NULL),
(10, 'Template contrat', NULL, NULL, '2023-06-27 11:42:20', '2023-07-17 13:42:18', 13, 'Patient', 'Doctor'),
(11, 'Template mission', NULL, NULL, '2023-06-27 11:44:17', '2023-06-27 11:44:17', 13, NULL, NULL),
(12, 'Template CDI', NULL, NULL, '2023-06-27 11:48:09', '2023-06-27 11:48:09', 13, NULL, NULL),
(14, 'Contrat de stage', NULL, NULL, '2023-08-14 14:15:13', '2023-08-14 14:15:13', 13, NULL, NULL),
(15, 'qsdqsd', NULL, NULL, '2023-08-18 11:17:29', '2023-08-18 11:17:29', 17, NULL, NULL),
(16, 'azerty', NULL, NULL, '2023-08-18 17:40:08', '2023-08-18 17:40:08', 18, NULL, NULL),
(17, 'qsdqsd', NULL, NULL, '2023-09-15 11:53:50', '2023-09-15 11:53:50', 19, NULL, NULL),
(18, 'contrat de travail', NULL, NULL, '2023-09-15 15:49:58', '2023-09-15 15:49:58', 21, NULL, NULL),
(19, 'Contrat maintenance', NULL, NULL, '2023-10-03 15:49:32', '2023-10-03 18:50:03', 23, 'me ', 'him'),
(20, 'Template contrat', NULL, NULL, '2023-10-05 14:30:55', '2023-10-05 14:30:55', 24, NULL, NULL),
(21, 'Template contrat', NULL, NULL, '2023-10-06 08:45:27', '2023-10-06 08:45:27', 29, NULL, NULL),
(22, 'Contrat de mission', NULL, NULL, '2023-10-07 12:28:52', '2023-10-07 12:28:52', 29, NULL, NULL),
(23, 'Template contrat', NULL, NULL, '2023-10-09 14:46:15', '2023-10-09 14:46:15', 27, NULL, NULL),
(24, 'Template contrat', NULL, NULL, '2023-10-11 16:15:03', '2023-10-11 16:15:03', 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `template_content`
--

CREATE TABLE `template_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `langId` bigint(20) UNSIGNED DEFAULT NULL,
  `templateId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `template_content`
--

INSERT INTO `template_content` (`id`, `content`, `langId`, `templateId`, `created_at`, `updated_at`) VALUES
(1, '<p>azertyui</p>\n', 12, 1, '2023-06-01 15:56:48', '2023-06-01 15:56:48'),
(2, '<p style=\"text-align:center;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 24px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\"><strong>template en allmand</strong></span></p>\r\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Azur-Aliance Jsc, ci-après dénommée la Société ayant numéro de TVA<br>BG206565325, dont le siège social est à l\'adresse de gestion, située à l\'adresse 19 rue<br>Mara Gidik, 2ème étage, 8000 Burgas, Bulgarie.<br>Ci-après dénommée « l\'Entreprise » ou « la Société » , Et<br>Nom / Prénom : Mohamed Thabet JMAL<br>ID Passeport : </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[passportId]@</span></span>&nbsp;</p>\r\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">nationalité : </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[nationality]@</span></span>&nbsp;</p>\r\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">adresse :   </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[address]@</span></span>&nbsp;</p>\r\n', 10, 8, '2023-06-01 15:57:26', '2023-06-05 08:49:35'),
(3, '<p style=\"text-align:center;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 24px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\"><strong>template en espagnole</strong></span></p>\r\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Azur-Aliance Jsc, ci-après dénommée la Société ayant numéro de TVA<br>BG206565325, dont le siège social est à l\'adresse de gestion, située à l\'adresse 19 rue<br>Mara Gidik, 2ème étage, 8000 Burgas, Bulgarie.<br>Ci-après dénommée « l\'Entreprise » ou « la Société » , Et<br>Nom / Prénom : Mohamed Thabet JMAL<br>ID Passeport : </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[passportId]@</span></span>&nbsp;</p>\r\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">nationalité : </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[nationality]@</span></span>&nbsp;</p>\r\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">adresse :   </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[address]@</span></span>&nbsp;</p>\r\n', 6, 8, '2023-06-02 14:59:26', '2023-06-05 11:27:08'),
(4, '<p style=\"text-align:center;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 24px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\"><strong>template en anglais</strong></span></p>\r\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Azur-Aliance Jsc, ci-après dénommée la Société ayant numéro de TVA<br>BG206565325, dont le siège social est à l\'adresse de gestion, située à l\'adresse 19 rue<br>Mara Gidik, 2ème étage, 8000 Burgas, Bulgarie.<br>Ci-après dénommée « l\'Entreprise » ou « la Société » , Et<br>Nom / Prénom : Mohamed Thabet JMAL<br>ID Passeport : </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[passportId]@</span></span>&nbsp;</p>\r\n<p style=\"text-align:start;\"><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">nationalité : </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[nationality]@</span></span>&nbsp;</p>\r\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">adresse :   </span><span><span style=\"color: rgb(18,54,255);background-color: rgb(240,251,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">@[address]@</span></span>&nbsp;</p>\r\n', 12, 8, NULL, NULL),
(5, '<p>Contrat de Travail<br><br>Ce contrat est signé le @[date]@ entre, prénom :@[prenom]@ Nom :@[name]@</p>\n<p>ci-après désigné « le travailleur », résidant à @[city]@ et l\'employeur SSII, ci-après désigné « l\'employeur ».<br><br>Article 1 : Identification des parties<br><br>Le travailleur : <br><br>Nom : @[name]@ <br>Numéro de passeport : @[passportId]@ <br>Nationalité : @[nationality]@ <br>Adresse : @[city]@ <br><br><br>L’employeur : <br><br>l’employeur SSII <br><br>Article 2 : Objet du Contrat<br><br>Le travailleur s’engage à accomplir des tâches spécifiques pour l’employeur SSII en échange d’une rémunération mensuelle faite en salaire et indiqué comme suit : @[salary]@. <br><br>Article 3 : Durée du contrat<br><br>Ce contrat est valable pour une durée indéterminée à partir de la date mentionnée ci-dessus.<br><br>Article 4 : Conditions de travail<br><br>- Le travailleur sera sous la supervision directe de l’employeur ou d’un représentant nommé par l’employeur.<br>- Le travailleur ne peut accepter aucun autre emploi sans le consentement préalable de l’employeur.<br>- Le travailleur se conformera à toutes les règles et procédures mises en place par l’employeur.<br><br>Article 5 : Respect des lois<br><br>Le travailleur doit respecter et accepter toutes les lois applicables sans exception.<br><br>Article 6 : Droits du travailleur<br><br>Le travailleur a le droit de recevoir un salaire égal pour un travail de valeur équivalente et de bénéficier des conditions de travail spécifiées dans la législation applicable. Le travailleur a également le droit à des congés payés et à une protection sociale appropriée. <br><br>Article 7 : Dédommagement<br><br>En cas de manquement par l’une des parties à l’une quelconque des obligations contractuales, celle-ci s’engage à verser une indemnisation à l’autre partie.<br><br>Article 8: Résiliation<br><br>Le contrat peut être résilié par l’une ou l’autre des parties, à tout moment, pour convenance personnelle, pour faute grave ou pour non-respect des termes du contrat.<br><br>Fait à @[city]@</p>\n<p>le @[date]@&nbsp;</p>\n', 16, 10, '2023-06-27 11:43:14', '2023-07-20 10:04:34'),
(6, '<p>Este contrato de trabalho,celebrado entre @[name]@, residente no endereço @[address]@, CEP @[zipCode]@, de um lado (doravante designado(a) “EMPLOYE”), e a __________ , de outro lado (doravante designada “EMPLOYER”). <br><br>OBJETO: EMPLOYE se compromete a prestar serviços básicos a EMPLOYER através das tarefas e funções acordadas entre as partes. <br><br>DURAÇÃO DO CONTRATO: O presente contrato entra em vigor e opera desde a data de assinatura e continuará vigente até sua rescisão.</p>\n', 17, 10, '2023-06-27 11:43:51', '2023-06-27 11:43:51'),
(7, '<p>This Agreement is made between @[name]@ of @[nationality]@ (Employee) <br>and the Employer hereunder (Employer). <br>The Employee agrees to provide services to the Employer, according to its instructions and under its supervision.</p>\n', 12, 11, '2023-06-27 11:44:54', '2023-06-27 11:44:54'),
(8, '<p>name : @[name]@, <span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">nationality</span> : @[nationality]@, erhält hiermit den Auftrag, eine bestimmte Aufgabe zu erledigen. Diese Aufgabe umfasst folgende Punkte: <br><br>- Beschreibung der Aufgaben <br>- Datum und Zeitpunkt der Abgabe <br>- Vergütung<br><br>Sofern nicht anders vereinbart, ist die Befristung der Mission auf einen Monat ab Vertragsabschluss begrenzt.</p>\n', 10, 11, '2023-06-27 11:45:48', '2023-06-27 11:45:48'),
(9, '<p>CONTRAT DE TRAVAIL A DURÉE INDÉTERMINÉE<br>Entre les soussignés :<br><br>L\'Employeur<br>@[name]@, demeurant @[city]@<br><br>L\'Employé<br>@[name]@, demeurant @[city]@<br><br>Téléphone : @[phoneNumber]@  Email : @[email]@<br><br>Le présent contrat a pour objet de définir les droits et obligations des parties.<br><br>Article 1 : Objet du contrat<br><br>Le présent contrat détermine le cadre de la mise à disposition de l’employé aux fins d\'accomplir des travaux pour le compte de l’Employeur.<br><br>Article 2 : Durée du contrat<br><br>La durée du contrat est à durée indéterminée.<br><br>Article 3 : Fonctions et rémunération<br><br>Les fonctions confiées à l\'Employé sont : <br><br><br>Sa rémunération s\'élève à la somme de @[salary]@ euros.<br><br>Article 4 : Temps de travail<br><br>Le temps de travail applicable est défini par la législation en vigueur et sera fixé par l\'Employeur en fonction des besoins de l\'entreprise et des possibilités de l\'Employé.<br><br>Article 5 : Protection sociale<br><br>L\'Employeur prend en charge les cotisations dues à l\'Assurance Maladie et à la Sécurité Sociale, ainsi que celles dues à l\'assurance chômage.<br><br>Article 6 : Absence et congés<br><br>L\'Employé peut bénéficier des congés et de l\'absence prévus par la législation en vigueur, sur demande auprès de l\'Employeur.<br><br>Article 7 : Modifications et résiliation<br><br>Le présent contrat peut être modifié ou résilié à tout moment, selon les clauses de droit commun.<br><br><br></p>\n', 16, 12, '2023-06-27 11:49:47', '2023-06-27 11:49:47'),
(10, '<p>Този Договор („Договорът“) се издава на @[name]@, проживащ в @[city]@, телефон: @[phoneNumber]@.<br><br>- ДЛЯ ПРОБЕЛ:<br><br>1. Заемане на работа:<br>Договорът се сключва и важи в рамките на не срочна долготрайна работна връзка с постоянно време.<br><br>2. Плащане:<br>В компенсация на услугите, предоставени от работника, договорът се регулира по ценза на Пазарната заплата.<br><br>3. Спорови дела: <br>Търговската праксиса се прилага за решаване на спорове предъявени в Комерсиалната управа или пред административния съд.</p>\n', 14, 12, '2023-06-27 11:50:57', '2023-06-27 11:50:57'),
(11, '<p></p>\n', 17, 12, '2023-06-27 12:16:16', '2023-06-27 12:16:16'),
(12, '<p></p>\n', 15, 10, '2023-07-03 10:05:40', '2023-07-03 10:05:40'),
(13, '<p>Contratto di lavoro<br><br>Parti contraenti:<br>@[name]@, con passaporto @[passportId]@ <br>e <br>datore di lavoro.<br><br>Risultati del contratto:<br>@[name]@ lavorerà per il datore di lavoro e riceverà una retribuzione oraria pari a @[salary]@.</p>\n', 15, 10, '2023-07-03 10:05:57', '2023-07-03 10:05:57'),
(14, '<p></p>\n', 14, 10, '2023-07-03 10:06:24', '2023-07-03 10:06:24'),
(15, '<p>QSDQSDQSD</p>\n', 14, 10, '2023-07-03 10:06:36', '2023-07-03 10:06:36'),
(17, '<p>Contrat de travail entre @[name]@ et l\'agence WEB<br><br>Le présent contrat a été conclu entre @[name]@, code postale à : @[zipCode]@ Et ville à @[city]@ (ci-après dénommé « le salarié ») d\'une part, et l\'Agence WEB (ci-après dénommé « l\'employeur ») d\'autre part.<br><br>1. Les parties conviennent que le salarié exercera les fonctions ci-après définies pour et au nom de l\'employeur : développement et maintenance web, et tâches connexes.<br><br>2. La durée du contrat est effective du 1er janvier 2022 au 31 décembre 2022.<br><br>3. Le salaire net mensuel sera calculé sur la base de 2000 euros par mois.<br><br>4. L\'employeur et le salarié sont liés par cet accord et acceptent tous les termes et conditions.<br><br>5. L\'employeur et le salarié peuvent mettre fin à ce contrat à tout moment en respectant une période de préavis d\'un mois.</p>\n', 16, 14, '2023-08-14 14:17:40', '2023-08-14 14:20:41'),
(18, '<p>Contrat entre @[name]@ et agence WEB.&nbsp;</p>\n<p>Je, @[name]@, domicilié à @[zipCode]@ Ville : @[city]@, ai conclu le présent contrat conformément à ce qui suit :&nbsp;</p>\n<p>1. Je m\'engage à fournir des services pour l\'agence WEB à partir de la date de ce contrat et ce, jusqu\'à sa résiliation.&nbsp;</p>\n<p>2. Les services comprennent : développement de sites web, conception de graphiques, stratégies de marketing en ligne.&nbsp;</p>\n<p>3. L\'agence WEB me versera un salaire mensuel de €1000, payable le 15 du mois suivant.&nbsp;</p>\n<p>4. Les parties s\'engagent à respecter les droits et obligations énoncés dans les termes du présent contrat.&nbsp;</p>\n<p>5. Dans le cas où une des parties ne respecte pas les conditions établies par le présent contrat, la partie non-respectueuse est redevable de tous les frais associés et doit compenser la partie respectueuse pour les préjudices causés.</p>\n', 15, 14, '2023-08-14 14:18:38', '2023-08-14 14:18:38'),
(19, '<p></p>\n', 16, 15, '2023-08-18 11:17:42', '2023-08-18 11:17:42'),
(20, '<p></p>\n', 16, 16, '2023-08-18 17:40:17', '2023-08-18 17:40:17'),
(21, '<p>azeazeaze</p>\n', 16, 16, '2023-08-18 17:40:25', '2023-08-18 17:40:25'),
(22, '<p>hil</p>\n', 16, 17, '2023-09-15 11:54:01', '2023-09-15 11:54:01'),
(23, '<p>nom : <span class=\"wysiwyg-mention\" data-mention>@[name]@</span>&nbsp;</p>\n', 16, 18, '2023-09-15 15:50:47', '2023-09-15 15:50:47'),
(24, '<p>Je suis un employeur SSII et je souhaite conclure un contrat avec @[name]@, un entrepreneur @[nationality]@ originaire de @[city]@. Le présent contrat détermine les conditions de travail entre les parties. <br>@[name]@ s\'engage à fournir ses services pour l\'accomplissement des tâches spécifiées par l\'employeur et conformément aux termes du présent contrat. De plus, @[name]@ s\'engage à respecter les règles établies par l\'employeur en matière de temps et de qualité. L\'employeur s\'engage à payer @[name]@ à la fin de chaque période de travail, conformément à un tarif préalablement convenu.</p>\n', 16, 19, '2023-10-03 18:50:03', '2023-10-03 18:50:03'),
(26, '<p></p>\n', 17, 19, '2023-10-03 18:57:44', '2023-10-03 18:57:44'),
(27, '<p>Le présent contrat de travail est établi entre l\'agence WEB, et @[name]@, domicilié à @[city]@, titulaire du numéro de téléphone @[phoneNumber]@. l\'employé @[name]@ s\'engage à fournir une prestation de services à l\'employeur à compter de la signature du présent contrat. Les parties conviennent que les conditions générales de ce contrat seront respectées par @[name]@. Tout manquement à ces engagements pourra entraîner une modification ou la résiliation de ce document.</p>\n', 16, 21, '2023-10-06 08:47:16', '2023-10-06 08:47:16'),
(28, '<p>Nom: <br>@[name]@</p>\n<p>Prénom:<br>@[prenom]@</p>\n<p>Passport:</p>\n<p><span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Lorem ipsum </span> <span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Lorem ipsum </span> <span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Lorem ipsum </span> <span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Lorem ipsum </span> <span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Lorem ipsum </span> <span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Lorem ipsum </span> <span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Lorem ipsum </span> <span style=\"color: rgb(30,41,59);background-color: rgb(255,255,255);font-size: 16px;font-family: Inter, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol;\">Lorem ipsum </span>&nbsp;</p>\n', 16, 22, '2023-10-07 12:30:02', '2023-10-07 12:30:02');

-- --------------------------------------------------------

--
-- Structure de la table `tm_contract`
--

CREATE TABLE `tm_contract` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) DEFAULT NULL,
  `companyRepresentative` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representativeFirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representativeLastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representativeAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manifacturer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `commision` decimal(8,2) DEFAULT NULL,
  `deliveryAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyerName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyerSignature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companySignature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdfUrlLang1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdfUrlLang2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tm_contract`
--

INSERT INTO `tm_contract` (`id`, `number`, `companyRepresentative`, `companyEmail`, `companyPhone`, `representativeFirstName`, `representativeLastName`, `representativeAddress`, `designation`, `manifacturer`, `price`, `commision`, `deliveryAddress`, `buyerName`, `buyerSignature`, `companyName`, `companySignature`, `lang`, `pdfUrlLang1`, `pdfUrlLang2`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'test95@gmail.com', '123456789', 'test', 'test', 'test', 'produit ', '123aer', '500.00', '20.00', 'test', 'test', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/co9xEYKOhO-buyerSignature-tm-1.png', 'OWNER COMPANY', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/IAuemR1iR8-companySignature-1.png', 'FR', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-1-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-1-fr.pdf', '2023-04-19 07:46:44', '2023-04-19 08:06:05'),
(2, 2, 'VINTONET', 'thabet_jmal@yahoo.fr', '22471859', 'thabet', 'jmal', 'Cyber Park, , Houmet Souk Djerba Cyber Park', 'zertyujik', 'okujhygv', '500.00', '16.00', 'yjthfgh', 'Hello', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/gEJaM3BbMp-buyerSignature-tm-2.png', NULL, NULL, 'FR', NULL, NULL, '2023-04-20 11:56:35', '2023-04-20 11:56:35'),
(3, 3, 'VINTONET', 'thabet_jmal@yahoo.fr', '22471859', 'thabet', 'jmal', 'Cyber Park, , Houmet Souk Djerba Cyber Park', 'zertyujik', 'dfgdfg', '500.00', '16.00', 'fghjkkklkj', 'azer', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/GZTD3URDIR-buyerSignature-tm-3.png', 'gbhdnjsdsd sdfs', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/x7f7ZuumZy-companySignature-3.png', 'DE', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-3-bg.pdf', 'https://cellar-c2.services.clever-cloud.com/azur-storage/pdf/ac-contract-3-de.pdf', '2023-04-24 10:04:23', '2023-04-24 10:05:20'),
(4, 4, 'http://thabet.integrateur.tn', 'thabet_jmal@yahoo.fr', '+21622471859', 'Mohamed', 'JMAL', 'Tunis-Tunisie', '68888hhh', 'jkb', '789.00', '6788.00', '6888', '6uhfg', 'https://cellar-c2.services.clever-cloud.com/azur-storage/signature/ujeXAkX2LI-buyerSignature-tm-4.png', NULL, NULL, 'FR', NULL, NULL, '2023-05-10 21:00:35', '2023-05-10 21:00:35');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(4) NOT NULL DEFAULT 1,
  `langKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `companyId` bigint(20) UNSIGNED DEFAULT NULL,
  `employerId` bigint(20) UNSIGNED DEFAULT NULL,
  `packId` bigint(20) UNSIGNED DEFAULT NULL,
  `contractNbCreated` int(11) DEFAULT NULL,
  `sessionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuctomerId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `roleId` bigint(20) UNSIGNED DEFAULT NULL,
  `adminId` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `isAdmin`, `email`, `password`, `firstName`, `lastName`, `phoneNumber`, `activated`, `langKey`, `logo`, `created_at`, `updated_at`, `companyId`, `employerId`, `packId`, `contractNbCreated`, `sessionId`, `cuctomerId`, `adress`, `city`, `postalCode`, `gender`, `status`, `roleId`, `adminId`) VALUES
(2, 0, 'test@gmail.com', '$2y$10$/SlRqyLZSTTW2nv.IeJYX.PzlY0hiFdVnR4hYNArdaYrfVbvPW9UO', 'test', 'test', '0222222222', 1, 'FR', NULL, '2023-04-14 09:15:58', '2023-04-14 09:15:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 1, 'admin@azur-aliance-documents.com', '$2y$10$Zggmi5YoPs2i42Uit5lHme2NqEe81YqiEuUT.v/TpYRbQkqXYwFha', 'Gérant', 'Azur', NULL, 1, 'FR', NULL, '2023-04-28 17:57:26', '2023-04-28 17:57:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 0, 'test2@gmail.com', '$2y$10$QgQz6uhhciAFD2b/q7abcuEVOENP5U8rbKK5ZAutqdeaVEINZpc.G', 'test', 'prod', NULL, 1, 'FR', NULL, '2023-04-28 18:01:18', '2023-04-28 18:01:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, 0, 'thabet_jmal22@yahoo.fr', '$2y$10$Zggmi5YoPs2i42Uit5lHme2NqEe81YqiEuUT.v/TpYRbQkqXYwFha', 'thabet', 'Jmal', '+21622471859', 1, 'FR', NULL, '2023-05-01 08:36:08', '2023-05-19 15:39:37', NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, 0, 'thabet_jmal@yahoo.fr', '$2y$10$Zggmi5YoPs2i42Uit5lHme2NqEe81YqiEuUT.v/TpYRbQkqXYwFha', 'Mohamed', 'JMAL', '+21622471859', 1, 'FR', NULL, '2023-05-11 09:20:14', '2023-08-21 17:44:15', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(7, 0, 'user@gmail.com', '123456', 'user22', 'user36', '4174171', 1, NULL, NULL, '2023-05-19 14:23:49', '2023-05-19 16:02:51', NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, 0, 'habiba@gmail.com', '$2y$10$.cDxhyfRJb1t0x57YM1FrO7.cLmNO4VXzNUO/mmPuaEdx0Tz61FJa', 'habiba', 'boujmil', NULL, 1, 'FR', NULL, '2023-06-22 09:18:05', '2023-06-22 09:56:57', NULL, NULL, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, 0, 'habibaboujmil@gmail.com', '$2y$10$BAyuEWCkOttN7Acs7HHR/eF4i6y0wLIhJehlmVUUBMJFH4RLdAmvy', 'habiba', 'boujmil', NULL, 0, 'FR', NULL, '2023-06-22 09:55:44', '2023-06-22 09:55:44', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(11, 0, 'habibaboujmiltest@gmail.com', '$2y$10$7zyZUfls0vIKLit7neGSjeB3I22lgmLGpVXIV6nkV59jhXLWaixw.', 'habiba', 'boujmil', NULL, 1, 'FR', NULL, '2023-06-22 09:58:55', '2023-06-22 10:00:14', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(12, 1, 'admin-doc@gmail.com', '$2y$10$6SwDOIjw0S9CiN3/SCTJi.v7ZJrcZblOKUtKN87B5f6EtLiO/1VAa', 'Mohamed', 'JMAL', '+21622471859', 1, 'FR', NULL, '2023-06-27 11:29:51', '2023-06-27 11:29:51', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(13, 0, 'employer-doc@gmail.com', '$2y$10$YvIjY6dyliOcWsAKwWB1Iu0zNAXXXVagxIs5jzJUdsUvuD862Z88K', 'Mohamed', 'JMAL', '+21622471859', 1, 'en', NULL, '2023-06-27 11:31:02', '2023-08-15 13:02:49', NULL, NULL, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(14, 0, 'mohamed@winteam.fr', '123456', 'Mohamed', 'JMAL', NULL, 1, NULL, NULL, '2023-06-27 11:40:39', '2023-06-27 11:40:39', NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(15, 0, 'thabet.jmal@gmail.com', '123456', 'Joe', 'JMAL', NULL, 1, NULL, NULL, '2023-06-27 11:41:10', '2023-06-27 11:41:10', NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(16, 0, 'mahdi@gmail.com', '$2y$10$Niayv24CXbBp5qn4PkHIoODshfK1pmruXEJ8ciBG8nLclb4VHC36u', 'mahdi', 'masmoudi', NULL, 1, 'FR', NULL, '2023-08-17 08:42:50', '2023-08-17 10:48:04', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(17, 0, 'edam@gmail.com', '$2y$10$iWRYuGGuWkDWvoePZ/IhJOXCyz8qqS9OY8KOMGyzmMIQTzn6EZrNi', 'edam', 'jmal', NULL, 1, 'FR', NULL, '2023-08-17 13:14:27', '2023-08-18 17:30:33', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(18, 0, 'rami@gmail.com', '$2y$10$UxKWBIz.Axg8CrLb9cSJt.iKqKSaxbyKCXH/iQzCGUcjY6JSgOOOO', 'rami', 'jmal', NULL, 1, 'FR', NULL, '2023-08-18 17:31:17', '2023-08-21 10:06:19', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(19, 0, 'habib@gmail.com', '$2y$10$fK9q3pgJ50n77ZH.xxXGj.MsqtoaNdLezFJm184VyyzHYAgGAHu8m', 'habib', 'jmal', NULL, 1, 'FR', NULL, '2023-08-21 09:58:18', '2023-10-07 12:24:42', NULL, NULL, 4, NULL, 'cs_test_a1kbgiGR8n8sWvxJ2zElUercJpYcTgW4VakD9ydbUV13iitGEsycZ1nMc5', 'cus_OdqCV4T5vzEueE', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(20, 0, 'amel@gmail.com', '$2y$10$FpJ6JJDE32UaSJ4UlqAQh.UilNoxL7p0s6JiSEmD9p7eUlyfuLyxq', 'amel', 'masmoudi', NULL, 1, 'FR', NULL, '2023-08-21 12:14:43', '2023-10-01 20:59:14', NULL, NULL, 1, NULL, NULL, 'cus_OW8PJcRIGpbxCq', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(21, 0, 'baya@gmail.com', '$2y$10$TymWbWRoYBVhNW4pf2F1hu8w1MgO7Ky7TDsMtCLAGMd9qngsdh9aO', 'baya', 'masmoudi', NULL, 1, 'FR', NULL, '2023-08-23 12:11:34', '2023-09-28 13:52:34', NULL, NULL, 4, NULL, 'cs_test_a1YUsCTuWVxsynY5KZSobDiNozXMCPM3fXvKDo5nzm6u9hg7rZHuc2mexI', 'cus_OX5IGB99X9wlW6', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(22, 0, 'najwa@gmail.com', '$2y$10$27TBis40kUHESaWDbqwcmukgdkPeuz.LKZMmZb5V.VB8dTCk6iXHK', 'Najwa', 'Mhadhbi', '123456', 1, 'FR', NULL, '2023-09-28 14:28:16', '2023-10-10 15:38:49', NULL, NULL, 4, NULL, 'cs_test_a1Dhe5gSEwEhWMEZr3M9qVdneWseRbB8fTf2IiDyDvqnp70pjBCDuNu3TF', 'cus_Oimskjfq92v4tB', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(23, 0, 'kate@gmail.com', '$2y$10$tVYc13VNGLx/oXXoRBgGeumjj4IIj9eXByHFlG1YFCfDXZz8mUbAO', 'kate', 'endorsi', '2223336656565', 1, 'FR', NULL, '2023-10-02 12:49:09', '2023-10-08 16:35:21', NULL, NULL, 1, NULL, 'cs_test_a1KTdUr3TU1iipvOj9zohUB1PXZT8toCbOx9uXbNKBBker1tRjL7O6dUBz', 'cus_OkG5Z9c8ChtDIp', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(24, 0, 'jack@gmail.com', '$2y$10$JRJezQnrqP/3lrH4xgRrXedpMUsvN8.PmXV3WpXLpcjbola9UhVYm', 'Jack', 'Vandan', '456456', 1, 'FR', NULL, '2023-10-02 14:44:46', '2023-10-08 16:36:48', NULL, NULL, 4, NULL, 'cs_test_a1uSpK0S6WKQA1wYiE93waw7W4eEH6uY3VI8LSosCdAfcSHwLwfA3edV4F', 'cus_OkIP4hNKb3v3M3', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(25, 0, 'ma@gmail.com', '$2y$10$yiL6reLWVyA8/eNLJqggy.MTpELXWV1sdDCXzq3nt7GcSZWlLn73y', 'ma', 'jacki', '1232123212321', 1, 'FR', NULL, '2023-10-05 15:26:07', '2023-10-08 16:35:31', NULL, NULL, 4, NULL, 'cs_test_a1lLuV47MScCJ2EzLd5Enj26ZYgm1ivWclFhA2ej8yztGZ0vMYpyTHQzbb', 'cus_OlQOmcYA4HXzP5', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(26, 0, 'me@gmail.com', '$2y$10$h0BuNHtuZeLqYBhSZaEBUugBF5NIHqdrpCilasSR6f9hhw92lKCs2', 'me', 'mmm', '545651656', 1, 'FR', NULL, '2023-10-05 15:37:27', '2023-10-05 15:43:26', NULL, NULL, 1, NULL, 'cs_test_a1QaqSfj3urRMAt4oVi5v2KnyPwlPZhifrK2NjLCxGVbzGpbE7zuANmRew', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(27, 0, 'mi@gmail.com', '$2y$10$Kfs6rRrKLAcq8tMXAhyWJeBELiLLaN4Ur2FEqbw0oPo/7/Z9ICLR2', 'mi', 'JMAL', '+21622471859', 1, 'en', NULL, '2023-10-05 15:48:58', '2023-12-10 11:31:37', NULL, NULL, 4, NULL, 'cs_test_a1fgE4fDe6LWWCavrQl1b4jzc7uRFrbrOgAfAWM7DjogMEXzHRKb6x0fsA', 'cus_OlQfao3YShRepX', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(28, 0, 'mo@gmail.com', '$2y$10$fUCHXmnhxwQmKVongLhGKOr/n3G8nOBJGmnhjNTAqI6Me7fVAuQom', 'mo', 'moo', '123456', 1, 'FR', NULL, '2023-10-05 16:29:55', '2023-10-05 16:29:55', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(29, 0, 'mu@gmail.com', '$2y$10$Po1PczZtKRadhXmrZoAJfOkaMbKGIjyfO2s6rON1XOhItrHzaYkx6', 'mu', 'miuii', '4654654', 1, 'FR', NULL, '2023-10-05 16:37:01', '2023-10-07 12:31:44', NULL, NULL, 1, 1, 'cs_test_a18aXUi8De3x9ibRPW3QBMnsBiJRG9vIMLiYlIUhu9ZeWJ616I9tRv5t0C', 'cus_OlRjtsZJcNh2V5', NULL, NULL, NULL, NULL, 0, NULL, NULL),
(30, 0, 'fifi@gmail.com', '$2y$10$KYrFAlFsQ8uO9vH0wkyXq.giazDZIbDC7qP.mq9Ph/wwQr97MyoTq', 'fifi', 'fifiName', NULL, 1, 'FR', NULL, '2023-12-10 12:58:30', '2023-12-12 21:21:50', NULL, NULL, 3, NULL, 'cs_test_a12j287o2fH2Q9iP610Sz6BQ3fWUrjxE68WCLRVxfOyLdrf38MNWquzl4j', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(31, 0, 'thabet.jmal@gmail.com10', '123456', 'Mecano', 'Fix', NULL, 1, NULL, NULL, '2023-12-12 21:23:40', '2023-12-12 21:23:40', NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(32, 0, 'admin3@gmail.com', '$2y$12$F9l2axzW4nBE9uuZBdR5BOlcy/LqJuWoDo0Qtn7AUxOtXxIiqQSi.', 'admin3', 'admin3', NULL, 0, 'FR', NULL, '2023-12-30 14:27:40', '2023-12-30 14:27:40', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(33, 0, 'superadmin@gmail.com', '$2y$12$YgeU9k7fRv4R3ngWS9hRFOdMsuNYPu/cWZzMGH4Ntjqze40DH9rtC', 'Super', 'admin', '1234567', 1, 'en', NULL, '2023-12-30 14:40:17', '2024-02-13 21:38:09', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL),
(34, 0, 'admin@gmail.com', '$2y$12$RHN.3oF7i1yP3iNx5QfsU.u0FaM.n2Wezrmz05wotakOWA6PrJvFi', 'Admin', 'membre', '', 1, 'FR', NULL, '2023-12-30 14:46:59', '2024-02-16 10:21:57', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(35, 0, 'client@gmail.com', '$2y$12$NMRrlzjHeRelQFWZRtBcROlRK.0W3aEQfl73rH3avY2CCMwl6iSie', 'Admin', 'membre', '', 1, 'FR', NULL, '2023-12-30 14:46:59', '2023-12-30 14:46:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(36, 0, 'atelier1@gmail.com', '$2y$12$4/Ra4Nw6KI9vCZ2IuCe/jOl8LGGfWoaSxzft7OCn/yVncQNbwgtc2', 'Xavier', 'DIDIER', '22471859', 1, 'FR', NULL, '2024-02-06 21:37:47', '2024-02-06 21:37:47', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(37, 0, 'client1@gmail.com', '$2y$12$wco0hghNb6UzAUI659t22OIb3uMu3ADHyqHRx8pJHWb63/vIZRY46', 'Xavier', 'DIDIER', '22471859', 1, 'FR', NULL, '2024-02-06 21:37:47', '2024-02-06 21:37:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(38, 0, 'atelier3@gmail.com', '$2y$12$/h3M9gXIk4R5dtdlbjV8B.SWPU4zY6xY2m3VpIAYes70ur3jmnv7O', 'Xavier', 'DIDIER', '22471859', 1, 'FR', NULL, '2024-02-06 21:39:54', '2024-02-06 21:39:54', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(39, 0, 'client3@gmail.com', '$2y$12$SYrgMNHO/Fj7Csf0NEC63eqbhwEQwOt3P8hcXHLKH7kChQUXQL5Bi', 'Xavier', 'DIDIER', '22471859', 1, 'FR', NULL, '2024-02-06 21:39:54', '2024-02-06 21:39:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(40, 0, 'adminOussama@gmail.com', '$2y$12$VVJdXN4seYYDDd8l7QCJReKuXWETFuRnKFML2F1tIa7aUlIfZPzF2', 'admin50', 'admin', '+21563', 1, 'FR', NULL, '2024-02-07 14:30:24', '2024-02-07 14:30:24', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(41, 0, 'adminGadria@gmail.com', '$2y$12$9jxt4tGkUpC631plQK.Io.bQGn.Z99IrZI95RcHEUQzykNJqOVJcq', 'admin50', 'admin', '+21563', 1, 'FR', NULL, '2024-02-07 14:30:24', '2024-02-07 14:30:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(42, 0, 'atelier4@gmail.com', '$2y$12$nf5ksCeZQcLIsv9mTcMhzurxcu51Ts/fqCLCl5arpzy2ZdoCPz2j.', 'Atelier4', 'Atelier', '75666777', 1, 'FR', NULL, '2024-02-07 20:35:15', '2024-02-07 20:35:15', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(43, 0, 'atelier6@gmail.com', '$2y$12$FM6YGyFBIsX8Bll6gpCd4OHxLdPnK8..btdck3QwjeZ7U.wKk5CoS', 'Vgujhv', 'Bhjbjh', '3445677775', 1, 'FR', NULL, '2024-02-07 22:10:14', '2024-02-07 22:10:14', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(44, 0, 'atelierTest@gmail.com', '$2y$12$J3BxtrThwLSwQC9.Bm.hWOr4qLy45YpaR0iwcEzQN1v.Ct6UsxufO', 'atelier', 'Test', '2222222', 1, 'FR', NULL, '2024-02-08 13:19:20', '2024-02-08 13:19:20', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(45, 0, 'atelierClient@gmail.com', '$2y$12$3YowmhDGDV4Kp1ZM2I/1EuVcKBC0EzZBp/ZQRzYWPK2JxyIlNqrAe', 'atelier', 'Test', '2222222', 1, 'FR', NULL, '2024-02-08 13:19:20', '2024-02-08 13:19:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 44),
(46, 0, 'paris1@gmail.com', '$2y$12$0hxl7lK2QP00rTE9b2DqGumaKcMI83IwIasRZyO9iA5KQDU/5Vue2', 'Atelier', 'Paris ', '347778889', 1, 'FR', NULL, '2024-02-09 17:20:39', '2024-02-09 18:07:34', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(47, 0, 'cparis@gmail.com', '$2y$12$7QGWscCGbiVNVC7zPLYbou4bm3F2z/6l2ZSroII5U4o/Xo0Lk89HG', 'Atelier', 'Paris ', '347778889', 1, 'FR', NULL, '2024-02-09 17:20:39', '2024-02-09 17:20:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 46),
(48, 0, 'admin10@gmail.com', '$2y$12$otA13UEhcfPJDDHS6cQPEOUpN3WfAFXICBhfzb.KLFPjMYu/Cv7RO', 'Patrice', 'JEMMY', '651561651', 1, 'FR', NULL, '2024-02-10 18:36:30', '2024-02-10 18:37:49', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(49, 0, 'client10@gmail.com', '$2y$12$5bFCkOvqZms6YNeIYtA0yuOd0BpHGa3VZ1l1t0VL.RTFGPi7hH9Lm', 'dfsdf', 'sdfsfd', '651561651', 1, 'FR', NULL, '2024-02-10 18:36:30', '2024-02-10 18:36:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 48),
(50, 0, 'admin.test@gmail.com', '$2y$12$1utRxIkCTpkr7FUvjL2kuuRX.Vrv8/tXtqoL3jurda73/F.qt./w.', 'fathia', 'Mourou', '93809024', 1, 'FR', NULL, '2024-02-12 10:49:37', '2024-02-12 10:49:37', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(51, 0, 'client.test@gmail.com', '$2y$12$mM8DhQRpe7H7wZy.nV4doerwbBP1kv0R7D/JyKYYN.8f8NGNM5Cmu', 'fathia', 'Mourou', '93809024', 1, 'FR', NULL, '2024-02-12 10:49:37', '2024-02-12 10:49:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 50),
(52, 0, 'oussamagadria11@gmail.com', '$2y$12$rIwHYls/8.8xQ4zqtrEDM.S2XFIKpFAtANJT0At.pXv78AcKmbnCC', 'TestAccount', 'Test', NULL, 0, 'en', NULL, '2024-02-13 21:04:35', '2024-02-13 21:04:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(53, 0, 'oussamagad25ria1-Client@gmail.com', '$2y$12$5zglI1Uf.pk2R1jOIN82gOf.aD73bD9FDDkumefjSfMXOagTO3DWe', 'TestAccount', 'Test', NULL, 0, 'en', NULL, '2024-02-13 21:04:36', '2024-02-13 21:04:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(54, 0, 'gadria.oussama@esprit.tn', '$2y$12$NYEO7a.NvMrOGe6F8Yr9kuc/Jel2hPfYOrdmKYoPgk1BuQTMPOPAG', 'TestAccount', 'Test', NULL, 0, 'en', NULL, '2024-02-13 21:12:31', '2024-02-13 21:12:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(55, 0, 'gadria.oussama-Client@esprit.tn', '$2y$12$dw5zjj6eGz5oTlqN9SxqtunjRFrTzpsTWN9mi5El6t8ywdaHWDOH.', 'TestAccount', 'Test', NULL, 0, 'en', NULL, '2024-02-13 21:12:31', '2024-02-13 21:12:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(56, 0, 'paris2@gmail.com', '$2y$12$gDV3mTgRg6WEuBvp/7WI..qhGSq9wAtb7PvFkbu/8zzoTOojyfyae', 'Parisien ', 'Ok', '75666777', 1, 'FR', NULL, '2024-02-15 20:26:58', '2024-02-15 20:53:59', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(57, 0, 'paris_client2@gmail.com', '$2y$12$4BP10XBOhM4OTh4H/fKbF.N6zZ9k5CO5Iekfa1Uw0FXQ5YWw4SDqu', 'Parisien ', 'Ok', '75666777', 1, 'en', NULL, '2024-02-15 20:26:58', '2024-02-15 20:26:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 56),
(58, 0, 'fathia@gmail.com', '$2y$12$kHF3ZKyESIxoFbEr15YHp.MA0cVanBlZVFD6r8soKbpc0WLUnjft.', 'fathia', 'Mourou', '93809024', 1, 'en', NULL, '2024-02-16 10:08:39', '2024-02-16 10:08:39', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(59, 0, 'fathia.client@gmail.com', '$2y$12$59eSpiyFlWbL7GeooFGRs.tI/kUsu8aHp3smgEEg6Syf6/FrWUdjO', 'fathia', 'Mourou', '93809024', 1, 'FR', NULL, '2024-02-16 10:08:39', '2024-02-16 10:20:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 58),
(60, 0, 'ousamagadria1@gmail.com', '$2y$12$w.GbQmQJTSQ4lMBWj/QA/uF5h7ny8dv2HxcIIDW5/yUxS7dAdT5PS', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 10:49:48', '2024-02-16 10:49:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(61, 0, 'ousssamagadria1-client@gmail.com', '$2y$12$GbLzFRels4H1XZI0eXCXhOhdz.TJnK2hxDePh2hRqvA3jBTG1lPva', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 10:49:48', '2024-02-16 10:49:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(62, 0, 'oussamagadr2ia1@gmail.com', '$2y$12$RpSgSoRoGVAcoYxebM5LFeA5bg9DVyO4aNRfHh52/rYO5CN9PYMkm', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 10:58:11', '2024-02-16 10:58:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(64, 0, 'oussamagadria125@gmail.com', '$2y$12$Fa3SP9N1lRp43BTkF/IsLObwbwfOyYgPN9b.rDNJPpE3ZNyZGAaci', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 10:59:52', '2024-02-16 10:59:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(65, 0, 'oussamagadria1-clie2563nt@gmail.com', '$2y$12$ovY5cbpeEO67rH.nsMdFgulUcgDg3gT5MVMEgWKg0/zgNh16D6gQu', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 10:59:52', '2024-02-16 10:59:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(66, 0, 'oussamagadria111@gmail.com', '$2y$12$eFzzGs9vWbzekuS0.gzTn.ho6eLF/5DXktxuANIBtaXi3gNsYin8a', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 11:29:18', '2024-02-16 11:29:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(67, 0, 'oussamagadria231-client@gmail.com', '$2y$12$Qp.3Lukeb6cZPOukOAnulumzMxDrsy.JDz.ymD39RIRJmQgBuFVfW', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 11:29:18', '2024-02-16 11:29:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(68, 0, 'oussamagadri5a1@gmail.com', '$2y$12$oOPgBi5UeHzCnVbQtsWYoulIUf33l7JP0CSXOzPzR7cxqckG3Bsq6', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 11:32:12', '2024-02-16 11:32:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(69, 0, 'oussamagadria1-clie22nt@gmail.com', '$2y$12$S.L/QuDW6OEKu9y34EFIweqRJrqYe.P84BPa0jw7Xf8JOGKmMpjeG', 'Oussama', 'Gadria', NULL, 0, 'FR', NULL, '2024-02-16 11:32:12', '2024-02-16 11:32:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(70, 0, 'oussamagadria1@gmail.com', '$2y$12$5aX1cLQJ/yyBzJ6bE5LAGeHWCNvdeBpjGiZDVfI5N0Ph2MVZZ4/E2', 'Oussama', 'Gadria', NULL, 1, 'en', NULL, '2024-02-16 11:35:48', '2024-02-16 18:28:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(71, 0, 'oussamagadria1-client@gmail.com', '$2y$12$38XhvKnu/qMt7sx5sbNPbuDHeACuRpxVe2HXoBRoDcKkfo93r/EmS', 'Oussama', 'Gadria', NULL, 1, 'FR', NULL, '2024-02-16 11:35:49', '2024-02-16 11:35:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL),
(72, 0, 'admin.dev@gmail.com', '$2y$12$z9ATHkB75PCwwTwZUaZjAOP9j7OHlslCcq41rqZz0m3/MLwNk3yRG', 'fathia', 'Mourou', '93809024', 1, 'en', NULL, '2024-02-16 13:00:55', '2024-02-16 13:00:55', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(73, 0, 'client.dev@gmail.com', '$2y$12$s9yk0RLqlrMDEivMxVy8G.zdGZ4gCCAztEMHpiVZFfyS4lhGau9ka', 'fathia', 'Mourou', '93809024', 1, 'en', NULL, '2024-02-16 13:00:56', '2024-02-16 13:00:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 72),
(74, 0, 'antoine@gmail.com', '$2y$12$ge.kUFk.wnU/dXEnafC2peuJsEbCgS4S0s6PyEGdjcmLr6pHhRXrS', 'antoine', 'molin', '22471859', 1, 'FR', NULL, '2024-02-17 11:22:54', '2024-02-17 11:46:34', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(75, 0, 'antoine-client@gmail.com', '$2y$12$FIqIfIyYkSOJlJ.2A0QVweNUyLZujnp63dAMahydHmKYqatbQS5Na', 'antoine', 'molin', '22471859', 1, 'en', NULL, '2024-02-17 11:22:55', '2024-02-17 11:22:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 74),
(76, 0, 'copa@gmail.com', '$2y$12$1zYPPDRx.V6V.B9Tvl9Zc.WpkrG80O80KX70vOjbVzYOX8fZhPEyu', 'Mohamed', 'JMAL', '+21622471859', 0, 'en', NULL, '2024-02-17 13:58:15', '2024-02-17 13:58:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL),
(77, 0, 'copa-client@gmail.com', '$2y$12$NxekLbkmczIzztZGYujnmuc8kR1yPsAoSlVSyoW5Y6BNaO9Xs69N.', 'Mohamed', 'JMAL', '+21622471859', 0, 'en', NULL, '2024-02-17 13:58:16', '2024-02-17 13:58:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ac_contract`
--
ALTER TABLE `ac_contract`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ai_context`
--
ALTER TABLE `ai_context`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `carstatus`
--
ALTER TABLE `carstatus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_folderid_foreign` (`folderId`);

--
-- Index pour la table `clientcar`
--
ALTER TABLE `clientcar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientcar_clientid_foreign` (`clientId`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_admin_id_foreign` (`admin_id`);

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_employerid_foreign` (`employerId`);

--
-- Index pour la table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `context_flields`
--
ALTER TABLE `context_flields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `context_flields_contextid_foreign` (`contextId`);

--
-- Index pour la table `default_admin_categories`
--
ALTER TABLE `default_admin_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_admin_categories_user_id_foreign` (`user_id`);

--
-- Index pour la table `default_admin_inputs`
--
ALTER TABLE `default_admin_inputs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_admin_inputs_default_admin_sub_category_id_foreign` (`default_admin_sub_category_id`),
  ADD KEY `default_admin_inputs_folder_id_foreign` (`folder_id`);

--
-- Index pour la table `default_admin_sub_categories`
--
ALTER TABLE `default_admin_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_admin_sub_categories_default_admin_category_id_foreign` (`default_admin_category_id`);

--
-- Index pour la table `default_categories`
--
ALTER TABLE `default_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_categories_user_id_foreign` (`user_id`);

--
-- Index pour la table `default_category_folder`
--
ALTER TABLE `default_category_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_category_folder_default_category_id_foreign` (`default_category_id`),
  ADD KEY `default_category_folder_folder_id_foreign` (`folder_id`);

--
-- Index pour la table `default_inputs`
--
ALTER TABLE `default_inputs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_inputs_sub_category_default_id_foreign` (`sub_category_default_id`),
  ADD KEY `default_inputs_folder_id_foreign` (`folder_id`);

--
-- Index pour la table `foldercategory`
--
ALTER TABLE `foldercategory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folders_statusid_foreign` (`statusId`),
  ADD KEY `folders_carid_foreign` (`carId`),
  ADD KEY `folders_userid_foreign` (`userId`),
  ADD KEY `folders_clientid_foreign` (`clientId`);

--
-- Index pour la table `inputs`
--
ALTER TABLE `inputs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inputs_subcategoryid_foreign` (`sub_category_id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_userid_foreign` (`userId`);

--
-- Index pour la table `packs`
--
ALTER TABLE `packs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pdf_urls`
--
ALTER TABLE `pdf_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pdf_urls_contractid_foreign` (`contractId`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sd_contract_fields`
--
ALTER TABLE `sd_contract_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sd_contract_fields_sdcontractid_foreign` (`sdContractId`);

--
-- Index pour la table `standard_contract`
--
ALTER TABLE `standard_contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `standard_contract_templateid_foreign` (`templateId`),
  ADD KEY `standard_contract_createdby_foreign` (`createdBy`);

--
-- Index pour la table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_categoryid_foreign` (`categoryId`);

--
-- Index pour la table `sub_category_defaults`
--
ALTER TABLE `sub_category_defaults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_category_defaults_category_id_foreign` (`default_category_id`);

--
-- Index pour la table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_langid_foreign` (`langId`),
  ADD KEY `templates_employerid_foreign` (`employerId`);

--
-- Index pour la table `template_content`
--
ALTER TABLE `template_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_content_langid_foreign` (`langId`),
  ADD KEY `template_content_templateid_foreign` (`templateId`);

--
-- Index pour la table `tm_contract`
--
ALTER TABLE `tm_contract`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_companyid_foreign` (`companyId`),
  ADD KEY `users_employerid_foreign` (`employerId`),
  ADD KEY `users_packid_foreign` (`packId`),
  ADD KEY `users_roleid_foreign` (`roleId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ac_contract`
--
ALTER TABLE `ac_contract`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `ai_context`
--
ALTER TABLE `ai_context`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `carstatus`
--
ALTER TABLE `carstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT pour la table `clientcar`
--
ALTER TABLE `clientcar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `context_flields`
--
ALTER TABLE `context_flields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `default_admin_categories`
--
ALTER TABLE `default_admin_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `default_admin_inputs`
--
ALTER TABLE `default_admin_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `default_admin_sub_categories`
--
ALTER TABLE `default_admin_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `default_categories`
--
ALTER TABLE `default_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `default_category_folder`
--
ALTER TABLE `default_category_folder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `default_inputs`
--
ALTER TABLE `default_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `foldercategory`
--
ALTER TABLE `foldercategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT pour la table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `inputs`
--
ALTER TABLE `inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT pour la table `packs`
--
ALTER TABLE `packs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `pdf_urls`
--
ALTER TABLE `pdf_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sd_contract_fields`
--
ALTER TABLE `sd_contract_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `standard_contract`
--
ALTER TABLE `standard_contract`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT pour la table `sub_category_defaults`
--
ALTER TABLE `sub_category_defaults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `template_content`
--
ALTER TABLE `template_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `tm_contract`
--
ALTER TABLE `tm_contract`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_folderid_foreign` FOREIGN KEY (`folderId`) REFERENCES `folders` (`id`);

--
-- Contraintes pour la table `clientcar`
--
ALTER TABLE `clientcar`
  ADD CONSTRAINT `clientcar_clientid_foreign` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_employerid_foreign` FOREIGN KEY (`employerId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `context_flields`
--
ALTER TABLE `context_flields`
  ADD CONSTRAINT `context_flields_contextid_foreign` FOREIGN KEY (`contextId`) REFERENCES `ai_context` (`id`);

--
-- Contraintes pour la table `default_admin_categories`
--
ALTER TABLE `default_admin_categories`
  ADD CONSTRAINT `default_admin_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `default_admin_inputs`
--
ALTER TABLE `default_admin_inputs`
  ADD CONSTRAINT `default_admin_inputs_default_admin_sub_category_id_foreign` FOREIGN KEY (`default_admin_sub_category_id`) REFERENCES `default_admin_sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `default_admin_inputs_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `default_admin_sub_categories`
--
ALTER TABLE `default_admin_sub_categories`
  ADD CONSTRAINT `default_admin_sub_categories_default_admin_category_id_foreign` FOREIGN KEY (`default_admin_category_id`) REFERENCES `default_admin_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `default_categories`
--
ALTER TABLE `default_categories`
  ADD CONSTRAINT `default_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `default_category_folder`
--
ALTER TABLE `default_category_folder`
  ADD CONSTRAINT `default_category_folder_default_category_id_foreign` FOREIGN KEY (`default_category_id`) REFERENCES `default_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `default_category_folder_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `default_inputs`
--
ALTER TABLE `default_inputs`
  ADD CONSTRAINT `default_inputs_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `default_inputs_sub_category_default_id_foreign` FOREIGN KEY (`sub_category_default_id`) REFERENCES `sub_category_defaults` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `folders`
--
ALTER TABLE `folders`
  ADD CONSTRAINT `folders_carid_foreign` FOREIGN KEY (`carId`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `folders_clientid_foreign` FOREIGN KEY (`clientId`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `folders_statusid_foreign` FOREIGN KEY (`statusId`) REFERENCES `folders` (`id`),
  ADD CONSTRAINT `folders_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `inputs`
--
ALTER TABLE `inputs`
  ADD CONSTRAINT `inputs_subcategoryid_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `subcategories` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `pdf_urls`
--
ALTER TABLE `pdf_urls`
  ADD CONSTRAINT `pdf_urls_contractid_foreign` FOREIGN KEY (`contractId`) REFERENCES `standard_contract` (`id`);

--
-- Contraintes pour la table `sd_contract_fields`
--
ALTER TABLE `sd_contract_fields`
  ADD CONSTRAINT `sd_contract_fields_sdcontractid_foreign` FOREIGN KEY (`sdContractId`) REFERENCES `standard_contract` (`id`);

--
-- Contraintes pour la table `standard_contract`
--
ALTER TABLE `standard_contract`
  ADD CONSTRAINT `standard_contract_createdby_foreign` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `standard_contract_templateid_foreign` FOREIGN KEY (`templateId`) REFERENCES `templates` (`id`);

--
-- Contraintes pour la table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `sub_category_defaults`
--
ALTER TABLE `sub_category_defaults`
  ADD CONSTRAINT `sub_category_defaults_category_id_foreign` FOREIGN KEY (`default_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `templates`
--
ALTER TABLE `templates`
  ADD CONSTRAINT `templates_employerid_foreign` FOREIGN KEY (`employerId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `templates_langid_foreign` FOREIGN KEY (`langId`) REFERENCES `languages` (`id`);

--
-- Contraintes pour la table `template_content`
--
ALTER TABLE `template_content`
  ADD CONSTRAINT `template_content_langid_foreign` FOREIGN KEY (`langId`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `template_content_templateid_foreign` FOREIGN KEY (`templateId`) REFERENCES `templates` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_companyid_foreign` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `users_employerid_foreign` FOREIGN KEY (`employerId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_packid_foreign` FOREIGN KEY (`packId`) REFERENCES `packs` (`id`),
  ADD CONSTRAINT `users_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
