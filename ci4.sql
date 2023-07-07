-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 05:20 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin3000@gmail.com', 1, '2023-07-07 01:53:08', 1),
(2, '::1', 'admin3000@gmail.com', 1, '2023-07-07 01:56:37', 1),
(3, '::1', 'admin2100', NULL, '2023-07-07 01:58:31', 0),
(4, '::1', 'admin3000@gmail.com', 1, '2023-07-07 01:58:37', 1),
(5, '::1', 'admin3000@gmail.com', 1, '2023-07-07 02:08:06', 1),
(6, '::1', 'admin2100', NULL, '2023-07-07 02:14:22', 0),
(7, '::1', 'admin2100', NULL, '2023-07-07 02:14:29', 0),
(8, '::1', 'admin3000@gmail.com', 1, '2023-07-07 02:14:41', 1),
(9, '::1', 'admin3000@gmail.com', 1, '2023-07-07 02:53:57', 1),
(10, '::1', 'admin3000@gmail.com', 1, '2023-07-07 02:55:31', 1),
(11, '::1', 'admin3000@gmail.com', 1, '2023-07-07 02:56:27', 1),
(12, '::1', 'admin', NULL, '2023-07-07 02:59:23', 0),
(13, '::1', 'admin12', NULL, '2023-07-07 02:59:32', 0),
(14, '::1', 'admin12', NULL, '2023-07-07 02:59:53', 0),
(15, '::1', 'admin12', NULL, '2023-07-07 03:00:17', 0),
(16, '::1', 'admin12', NULL, '2023-07-07 03:00:49', 0),
(17, '::1', 'admin3000@gmail.com', 1, '2023-07-07 03:05:34', 1),
(18, '::1', 'admin', NULL, '2023-07-07 03:07:14', 0),
(19, '::1', 'admin', NULL, '2023-07-07 03:07:37', 0),
(20, '::1', 'admin2100', 1, '2023-07-07 03:07:47', 0),
(21, '::1', 'admin', NULL, '2023-07-07 03:08:24', 0),
(22, '::1', 'admin12', NULL, '2023-07-07 03:08:38', 0),
(23, '::1', 'admin2100', NULL, '2023-07-07 03:09:19', 0),
(24, '::1', 'admin3000@gmail.com', 1, '2023-07-07 03:19:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `picture`, `name`, `type`, `description`, `price`) VALUES
(371, '8bad05c5d52e48278b5caa6e88536e81_912x516.jpg', 'Audi A6', 'Sedan', NULL, '1250000000'),
(372, '6f0ad030f41447f1aa951c2b953c1f26_912x516.jpg', 'Audi A5', 'Coupe', NULL, '1250000000'),
(373, '96e9de4d8d1c4759a7af8260466cb977_912x516.jpg', 'Audi A4', 'Sedan', NULL, '1280000000'),
(374, 'bda2a8ebf7c84d239bf890ac53a7bda7_912x516.jpg', 'Audi TT Coupe', 'Coupe', NULL, '1420000000'),
(375, '601c32c10e2a452fb42c9ec57597b779_912x516.jpg', 'Audi Q5', 'SUV', NULL, '1550000000'),
(376, '0868b58d90c449b29e0d370c69c52080_912x516.jpg', 'Audi TTS Coupe', 'Coupe', NULL, '1820000000'),
(377, '7a698adec97b4753b2bac90758c034bb_912x516.jpg', 'Audi A7', 'Coupe', NULL, '1900000000'),
(378, 'b9ad6627d2394707923750b059f3c729_912x516.jpg', 'Audi A3', 'Sedan', NULL, '678000000'),
(379, '8be3dede51ea46508985ebbd19885a92_912x516.jpg', 'Audi Q3', 'SUV', NULL, '875000000'),
(380, '46cbc6d334d44b02853bc716db9cc6b2_912x516.jpg', 'BMW 5 Series Sedan', 'Sedan', 'BMW 5 Series Sedan 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 1,25Milyar hingga Rp 1,44Milyar , varian entry levelnya yaitu BMW 5 Series Sedan 520i Rp 1,25Milyar dan varian tertingi BMW 5 Series Sedan yaitu BMW 5 Series Sedan 530i M Sport ditawarka', '1250000000'),
(381, '8ae699a6bc4c4ba8a2432bbcfdbf2b73_912x516.jpg', 'BMW I3s', 'Hatchback', NULL, '1350000000'),
(382, '250dfe2c35c14619857e0d2ac8990390_912x516.jpg', 'BMW 4 Series Coupe', 'Coupe', NULL, '1400000000'),
(383, '763ce5f266054eb3a7ca4023fc71a763_912x516.jpg', 'BMW 3 Series Touring', 'Hatchback', NULL, '1460000000'),
(384, 'b6094a118f4a4f4992c04e51e78dfe29_912x516.jpg', 'BMW X1', 'SUV', 'BMW X1 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 669,00Juta hingga Rp 851,00Juta , varian entry levelnya yaitu 2021 BMW X1 sDrive18i Rp 669,00Juta dan varian tertingi BMW X1 yaitu BMW X1 2020 sDrive18i xLine ditawarkan dengan harga Rp 851,00Juta.', '669000000'),
(385, '6ec3b760836544ef8c10be0d61b5fc2f_912x516.jpg', 'BMW 2 Series Gran Coupe', 'Sedan', NULL, '795000000'),
(386, '41c54feed02548c0a597326699f037a8_912x516.jpg', 'BMW 3 Series Sedan', 'Sedan', 'BMW 3 Series Sedan 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 799,00Juta hingga Rp 1,15Milyar , varian entry levelnya yaitu 2021 BMW 3 Series Sedan 320i Dynamic Rp 799,00Juta dan varian tertingi BMW 3 Series Sedan yaitu BMW 3 Series Sedan 330i M Sp', '799000000'),
(387, '3f6ca5af43b8499ca6952cbb8f7c1c72_912x516.jpg', 'BMW X2', 'SUV', NULL, '839000000'),
(388, '451dfedb16e74b739113305078136b39_912x516.jpg', 'BMW X3', 'SUV', 'BMW X3 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 969,00Juta hingga Rp 1,14Milyar , varian entry levelnya yaitu 2021 BMW X3 sDrive20i Rp 969,00Juta dan varian tertingi BMW X3 yaitu 2021 BMW X3 xDrive30i M Sport ditawarkan dengan harga Rp 1,14Milyar', '969000000'),
(389, '59437ec13a534bef8714b875c29e6990_912x516.jpg', 'Chery Omoda 5', 'SUV', 'Chery Omoda 5 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 329,80Juta hingga Rp 399,80Juta , varian entry levelnya yaitu Chery Omoda 5 Z 2023 Rp 329,80Juta dan varian tertingi Chery Omoda 5 yaitu Chery Omoda 5 RZ 2023 ditawarkan dengan harga Rp 399,8', '329800000'),
(390, 'cc2186109f9d44f0bc3f5562c5e67c74_912x516.jpg', 'Chery Tiggo 7 Pro', 'SUV', 'Chery Tiggo 7 Pro 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 368,50Juta hingga Rp 428,50Juta , varian entry levelnya yaitu Chery Tiggo 7 Pro Comfort 2023 Rp 368,50Juta dan varian tertingi Chery Tiggo 7 Pro yaitu Chery Tiggo 7 Pro Premium 2023 ditaw', '368500000'),
(391, '1cead2f16cb44174ab9a37b8d02ae3f1_912x516.jpg', 'Chery Tiggo 8 Pro', 'SUV', 'Chery Tiggo 8 Pro 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 518,50Juta hingga Rp 548,50Juta , varian entry levelnya yaitu Chery Tiggo 8 Pro Luxury 2023 Rp 518,50Juta dan varian tertingi Chery Tiggo 8 Pro yaitu Chery Tiggo 8 Pro Premium 2023 ditawa', '518500000'),
(392, '38f235e9368f47b7bf62e57e83fc963f_912x516.jpg', 'Daihatsu Ayla', 'Hatchback', 'Daihatsu Ayla 2023 - 2024 ditawarkan dalam 18 varian -  mulai Rp 103,30Juta hingga Rp 161,05Juta , varian entry levelnya yaitu Daihatsu Ayla 1.0L D MT Rp 103,30Juta dan varian tertingi Daihatsu Ayla yaitu Daihatsu Ayla 1.2L R AT DLX ditawarkan dengan harg', '103300000'),
(393, '7616904f1e13457a84b592cbf951ff77_912x516.jpg', 'Daihatsu Hi Max', 'Pickup', 'Daihatsu Hi Max 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 105,75Juta hingga Rp 116,15Juta , varian entry levelnya yaitu Daihatsu Hi Max STD Rp 105,75Juta dan varian tertingi Daihatsu Hi Max yaitu Daihatsu Hi Max AC & PS ditawarkan dengan harga Rp ', '105750000'),
(394, '02d6c1f794934bd9846d182c21129072_912x516.jpg', 'Daihatsu Sigra', 'MPV', 'Daihatsu Sigra 2023 - 2024 ditawarkan dalam 6 varian -  mulai Rp 129,50Juta hingga Rp 170,90Juta , varian entry levelnya yaitu Daihatsu Sigra 1.0 D MT 2022 Rp 129,50Juta dan varian tertingi Daihatsu Sigra yaitu Daihatsu Sigra 1.2 R AT 2022 ditawarkan deng', '129500000'),
(395, '5ec01c85de4f49148ab4171804d1ce2f_912x516.jpg', 'Daihatsu Gran Max PU', 'Pickup', 'Daihatsu Gran Max PU 2023 - 2024 ditawarkan dalam 8 varian -  mulai Rp 143,05Juta hingga Rp 177,80Juta , varian entry levelnya yaitu Daihatsu Gran Max PU 1.3 3W Rp 143,05Juta dan varian tertingi Daihatsu Gran Max PU yaitu Daihatsu Gran Max PU Box 1.5 dita', '143050000'),
(396, 'c8a068d4adae466896c080a0e9e744aa_912x516.jpg', 'Daihatsu Gran Max MB', 'Commercial', 'Daihatsu Gran Max MB 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 175,10Juta hingga Rp 191,10Juta , varian entry levelnya yaitu Daihatsu Gran Max MB 1.3 D FH Rp 175,10Juta dan varian tertingi Daihatsu Gran Max MB yaitu Daihatsu Gran Max MB 1.5 D PS F', '175100000'),
(397, 'cc03088495b343f8aa774bb111dcfdba_912x516.jpg', 'Daihatsu Xenia', 'MPV', 'Daihatsu Xenia 2023 - 2024 ditawarkan dalam 8 varian -  mulai Rp 190,90Juta hingga Rp 242,40Juta , varian entry levelnya yaitu 2022 Daihatsu Xenia 1.3 M MT Rp 190,90Juta dan varian tertingi Daihatsu Xenia yaitu 2022 Daihatsu Xenia 1.5 R CVT ASA ditawarkan', '190900000'),
(398, 'c6593687a33049f5808b2a28263ab38a_912x516.jpg', 'Daihatsu Sirion', 'Hatchback', 'Daihatsu Sirion 2023 - 2024 ditawarkan dalam 6 varian -  mulai Rp 201,75Juta hingga Rp 236,80Juta , varian entry levelnya yaitu Daihatsu Sirion STD MT Rp 201,75Juta dan varian tertingi Daihatsu Sirion yaitu Daihatsu Sirion R CVT 2022 ditawarkan dengan har', '201750000'),
(399, 'b1bce3b6a7ea4033a799fcec8df5698a_912x516.jpg', 'Daihatsu Luxio', 'Commercial', 'Daihatsu Luxio 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 205,95Juta hingga Rp 235,20Juta , varian entry levelnya yaitu Daihatsu Luxio 1.5 D M/T Rp 205,95Juta dan varian tertingi Daihatsu Luxio yaitu Daihatsu Luxio 1.5 X A/T ditawarkan dengan harga', '205950000'),
(400, 'cb7f56441716458d9d15a37ccc5ca8d7_912x516.jpg', 'Daihatsu Rocky', 'SUV', 'Daihatsu Rocky 2023 - 2024 ditawarkan dalam 6 varian -  mulai Rp 214,20Juta hingga Rp 265,00Juta , varian entry levelnya yaitu 2021 Daihatsu Rocky 1.0 R TC MT Rp 214,20Juta dan varian tertingi Daihatsu Rocky yaitu Daihatsu Rocky hybrid 2022 ditawarkan den', '214200000'),
(401, '5166dcb3749d41e5bb97d76012355bbf_912x516.jpg', 'Datsun GO', 'Hatchback', NULL, '112090000'),
(402, 'fba4eb2e6a454921939d81c85b8b39c8_912x516.jpg', 'Datsun GO Plus', 'Hatchback', NULL, '120270000'),
(403, '66c32b53945e4f2982f2aa3f736674cf_912x516.jpg', 'Datsun Cross', 'SUV', NULL, '161490000'),
(404, '713ab889c45641ecba5b8f65bbf85c09_912x516.JPG', 'Honda Brio', 'Hatchback', 'Honda Brio 2023 - 2024 ditawarkan dalam 5 varian -  mulai Rp 156,90Juta hingga Rp 227,10Juta , varian entry levelnya yaitu Honda Brio Satya S M/T 2022 Rp 156,90Juta dan varian tertingi Honda Brio yaitu Honda Brio RS CVT 2022 ditawarkan dengan harga Rp 227', '156900000'),
(405, '0ce3428c64654a72b63e441044efa61c_912x516.jpg', 'Honda Mobilio', 'MPV', NULL, '229900000'),
(406, 'f7bf7c9498574e9dbc142dc1c37eb827_912x516.jpg', 'Honda WR-V', 'SUV', 'Honda WRV 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 271,90Juta hingga Rp 309,90Juta , varian entry levelnya yaitu Honda WR-V 1.5L E 2023 Rp 271,90Juta dan varian tertingi Honda WRV yaitu Honda WR-V 1.5L RS with Honda Sensing 2023 ditawarkan dengan', '271900000'),
(407, 'f192623530e94c969c3b3661b98fff7b_912x516.jpg', 'Honda BR-V', 'MPV', 'Honda BRV 2023 - 2024 ditawarkan dalam 5 varian -  mulai Rp 275,90Juta hingga Rp 339,90Juta , varian entry levelnya yaitu 2022 Honda BR-V 1.5 S M/T Rp 275,90Juta dan varian tertingi Honda BRV yaitu 2022 Honda BR-V 1.5 Prestige Honda Sensing ditawarkan den', '275900000'),
(408, 'b1c539d67def44298a637809525eb5a8_912x516.JPG', 'Honda City Hatchback', 'Hatchback', 'Honda City Hatchback 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 333,60Juta hingga Rp 362,60Juta , varian entry levelnya yaitu Honda City Hatchback RS 1.5 M/T 2022 Rp 333,60Juta dan varian tertingi Honda City Hatchback yaitu Honda City Hatchback RS ', '333600000'),
(409, '89a2a88726ae4115bf531076bbb6f8c9_912x516.jpg', 'Honda City', 'Sedan', 'Honda City 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 337,00Juta hingga Rp 365,40Juta , varian entry levelnya yaitu Honda City E MT Rp 337,00Juta dan varian tertingi Honda City yaitu Honda City Sedan 2022 ditawarkan dengan harga Rp 365,40Juta.', '337000000'),
(410, 'f01915f8606048f2ad0f7436296a4733_912x516.jpg', 'Honda HR-V', 'SUV', 'Honda HRV 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 355,90Juta hingga Rp 499,90Juta , varian entry levelnya yaitu Honda HR-V 1.5L S 2022 Rp 355,90Juta dan varian tertingi Honda HRV yaitu Honda HR-V 1.5L Turbo RS 2022 ditawarkan dengan harga Rp 499', '355900000'),
(411, 'ad70268bbe94408b85f2046d7f8c1835_912x516.jpg', 'Honda Civic Hatchback', 'Hatchback', 'Honda Civic Hatchback 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 431,60Juta hingga Rp 499,00Juta , varian entry levelnya yaitu Honda Civic Hatchback S CVT Rp 431,60Juta dan varian tertingi Honda Civic Hatchback yaitu Honda Civic Hatchback RS ditawa', '431600000'),
(412, '10582bf825e14eb2b93ad74d37edd256_912x516.jpg', 'Honda CR-V', 'SUV', 'Honda CRV 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 489,00Juta hingga Rp 577,00Juta , varian entry levelnya yaitu 2021 Honda CR-V 2.0L Rp 489,00Juta dan varian tertingi Honda CRV yaitu 2021 Honda CR-V 1.5L Turbo Prestige ditawarkan dengan harga Rp', '489000000'),
(413, 'cf74aecbdee944478c58692d665532d4_912x516.jpg', 'Hyundai Ioniq 6', 'Sedan', NULL, '900000000'),
(414, '14b50aee06fb4d319d0bf1fe0fa26529_912x516.jpg', 'Hyundai Stargazer', 'MPV', 'Hyundai Stargazer 2023 - 2024 ditawarkan dalam 6 varian -  mulai Rp 175,90Juta hingga Rp 307,10Juta , varian entry levelnya yaitu Hyundai Stargazer Trend IVT 2022 Rp 175,90Juta dan varian tertingi Hyundai Stargazer yaitu Hyundai Stargazer Prime IVT 2022 d', '175900000'),
(415, '8ee52b2665994f4bb307d887bc096f28_912x516.jpg', 'Hyundai Grand i10', 'Hatchback', 'Hyundai Grand i10 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 184,00Juta hingga Rp 211,50Juta , varian entry levelnya yaitu Hyundai Grand i10 GLX MT Rp 184,00Juta dan varian tertingi Hyundai Grand i10 yaitu Hyundai Grand i10 X AT ditawarkan dengan h', '184000000'),
(416, 'f1a46582103f4fd18043bd2e68917fa4_912x516.jpg', 'Hyundai Creta', 'SUV', 'Hyundai Creta 2023 - 2024 ditawarkan dalam 6 varian -  mulai Rp 288,00Juta hingga Rp 404,00Juta , varian entry levelnya yaitu Hyundai Creta Active M/T 2022 Rp 288,00Juta dan varian tertingi Hyundai Creta yaitu Hyundai Creta Prime IVT 2022 ditawarkan denga', '288000000'),
(417, '25682d4b9d3341e590e3ce2e52d054a1_912x516.jpg', 'Hyundai H100', 'Pickup', 'Hyundai H100 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 300,50Juta hingga Rp 314,50Juta , varian entry levelnya yaitu Hyundai H100 Van Minibus Rp 300,50Juta dan varian tertingi Hyundai H100 yaitu Hyundai H100 Van Minibus High Roof ditawarkan dengan', '300500000'),
(418, '33e5b3c01e8a4c20bc20a7a429ea9b08_912x516.jpg', 'Hyundai Kona', 'SUV', NULL, '363900000'),
(419, '178510558e0e42858117e2c329a3d3c7_912x516.jpg', 'Hyundai Tucson', 'SUV', 'Hyundai Tucson 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 399,00Juta hingga Rp 477,00Juta , varian entry levelnya yaitu Hyundai Tucson GLS Rp 399,00Juta dan varian tertingi Hyundai Tucson yaitu Hyundai Tucson XG CRDi ditawarkan dengan harga Rp 477,', '399000000'),
(420, '44a1fbda908948d6a31fe4d7e0a985fe_912x516.jpg', 'Hyundai Starex', 'SUV', NULL, '422000000'),
(421, '1e33b00c195245358b4222b54c5371e7_912x516.jpg', 'Hyundai H1', 'MPV', 'Hyundai H1 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 506,50Juta hingga Rp 619,50Juta , varian entry levelnya yaitu Hyundai H1 2.5L CRDi Elegance Rp 506,50Juta dan varian tertingi Hyundai H1 yaitu Hyundai H1 2.5L CRDi Royale ditawarkan dengan harga', '506500000'),
(422, 'dfcba0cf1d9a4358875feb1e4ae86ea3_912x516.jpg', 'Isuzu Panther', 'MPV', NULL, '230000000'),
(423, '2133383df10a4395a99a2b509297e09e_912x516.jpg', 'Isuzu Traga', 'Pickup', 'Isuzu Traga 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 211,80Juta hingga Rp 239,80Juta , varian entry levelnya yaitu Isuzu Traga Pick Up (FD) Rp 211,80Juta dan varian tertingi Isuzu Traga yaitu Isuzu Traga Box Aluminium ditawarkan dengan harga Rp 2', '211800000'),
(424, '0e08b8c5aa7c43529214d3f56c2e04bb_912x516.jpg', 'Isuzu D-MAX', 'Pickup', 'Isuzu D MAX 2023 - 2024 ditawarkan dalam 7 varian -  mulai Rp 362,60Juta hingga Rp 536,70Juta , varian entry levelnya yaitu Isuzu D MAX Single Cab 2.5 VGS MT Rp 362,60Juta dan varian tertingi Isuzu D MAX yaitu Isuzu D MAX Rodeo 2.5L VGS AT ditawarkan deng', '362600000'),
(425, 'c1ca5131355240f3864d8934a8969651_912x516.jpg', 'Isuzu MU-X', 'SUV', 'Isuzu MU-X 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 490,00Juta hingga Rp 559,80Juta , varian entry levelnya yaitu Isuzu MU-X 4X4 MT Rp 490,00Juta dan varian tertingi Isuzu MU-X yaitu Isuzu MU-X 2022 4x4 ditawarkan dengan harga Rp 559,80Juta.', '490000000'),
(426, '7a47f613fa1f4689917f01d30d22b24b_912x516.jpg', 'Jeep Grand Cherokee', 'SUV', 'Jeep Grand Cherokee 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 1,34Milyar hingga Rp 1,41Milyar , varian entry levelnya yaitu Jeep Grand Cherokee Overland 4x4 Rp 1,34Milyar dan varian tertingi Jeep Grand Cherokee yaitu Jeep Grand Cherokee Limited 4x', '1340000000'),
(427, '65b7b426bcd94936a546a490922adc9d_912x516.jpg', 'Jeep Cherokee', 'SUV', 'Jeep Cherokee 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 1,52Milyar hingga Rp 1,62Milyar , varian entry levelnya yaitu Jeep Cherokee Limited AWD Rp 1,52Milyar dan varian tertingi Jeep Cherokee yaitu Jeep Cherokee Trailhawk AWD ditawarkan dengan har', '1520000000'),
(428, 'd0ac82c0caf24942bb1123bfb4b67cc3_912x516.jpg', 'Jeep Gladiator', 'Pickup', 'Jeep Gladiator 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 2,18Milyar hingga Rp 2,35Milyar , varian entry levelnya yaitu 2021 Jeep Gladiator Rubicon Rp 2,18Milyar dan varian tertingi Jeep Gladiator yaitu 2021 Jeep Gladiator Rubicon Altitude ditawark', '2180000000'),
(429, '93e79b1718804d098ba9624b75acf9a8_912x516.jpg', 'Jeep Renegade', 'SUV', 'Jeep Renegade 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 599,00Juta hingga Rp 699,00Juta , varian entry levelnya yaitu Jeep Renegade LONGITUDE Rp 599,00Juta dan varian tertingi Jeep Renegade yaitu Jeep Renegade LIMITED ditawarkan dengan harga Rp 69', '599000000'),
(430, 'f6648b0f1212453b98c337a907fd1919_912x516.jpg', 'Jeep Compass', 'SUV', NULL, '615000000'),
(431, '42ae03c0766f4447bc850b616bb0fde0_912x516.jpg', 'Jeep Wrangler', 'SUV', 'Jeep Wrangler 2023 - 2024 ditawarkan dalam 8 varian -  mulai Rp 919,00Juta hingga Rp 1,90Milyar , varian entry levelnya yaitu Jeep Wrangler Unlimited Sport 4x4 Rp 919,00Juta dan varian tertingi Jeep Wrangler yaitu Jeep Wrangler Rubicon 4-Door ditawarkan d', '919000000'),
(432, '27a892cba63a44c6860ec09ecdf72041_912x516.jpg', 'Kia Sorento', 'SUV', NULL, '500000000'),
(433, 'e14838f8ad3c4e6f8ad1245f115c4a1a_912x516.jpg', 'Kia Sportage', 'SUV', NULL, '400000000'),
(434, '0e0585984ec846c1b3837457e44a02cf_912x516.jpg', 'Kia Sonet', 'SUV', 'Kia Sonet 2023 - 2024 ditawarkan dalam 11 varian -  mulai Rp 193,00Juta hingga Rp 296,00Juta , varian entry levelnya yaitu 2021 Kia Sonet 1.5L Standard MT Rp 193,00Juta dan varian tertingi Kia Sonet yaitu 2021 KIA Sonet Premier 7 iVT ditawarkan dengan har', '193000000'),
(435, '3c0c513e1c5c4af4b9625c1b8cee9bde_912x516.jpg', 'Kia Picanto', 'Hatchback', 'Kia Picanto 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 220,95Juta hingga Rp 236,23Juta , varian entry levelnya yaitu Kia Picanto MT Rp 220,95Juta dan varian tertingi Kia Picanto yaitu Kia Picanto AT ditawarkan dengan harga Rp 236,23Juta.', '220950000'),
(436, 'f28599c9313343bb822f598fa2258126_912x516.jpg', 'Kia Rio', 'Hatchback', 'Kia Rio 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 276,60Juta hingga Rp 291,90Juta , varian entry levelnya yaitu Kia Rio MT Sunroof Rp 276,60Juta dan varian tertingi Kia Rio yaitu Kia Rio AT Sunroof ditawarkan dengan harga Rp 291,90Juta.', '276600000'),
(437, 'e4ed93349a6643679c681e79753a9810_912x516.jpg', 'Kia Seltos', 'SUV', 'Kia Seltos 2023 - 2024 ditawarkan dalam 5 varian -  mulai Rp 310,80Juta hingga Rp 415,00Juta , varian entry levelnya yaitu KIA Seltos E 2021 Rp 310,80Juta dan varian tertingi Kia Seltos yaitu KIA Seltos GT Line 2021 ditawarkan dengan harga Rp 415,00Juta.', '310800000'),
(438, 'f37a8c19c1964f989c3b7ad4bdab360a_912x516.jpg', 'Kia Carens', 'MPV', 'Kia Carens 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 389,00Juta hingga Rp 449,00Juta , varian entry levelnya yaitu Kia Carens 1.5MPI Premiere (7 seats) 2022 Rp 389,00Juta dan varian tertingi Kia Carens yaitu Kia Carens 1.4T Premiere (6 seats) 2022', '389000000'),
(439, '7bd8e7c8d97c4b73bda86cf28644ca76_912x516.jpg', 'Kia Grand Sedona', 'MPV', 'Kia Grand Sedona 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 656,70Juta hingga Rp 692,40Juta , varian entry levelnya yaitu 2020 Kia Grand Sedona Gasoline Rp 656,70Juta dan varian tertingi Kia Grand Sedona yaitu 2020 Kia Grand Sedona Diesel ditawarka', '656700000'),
(440, '7b6b0cb0146b463f8a457c72568dc14a_912x516.jpg', 'KIA Grand Carnival', 'MPV', NULL, '886800000'),
(441, '8a58adc07c624770af99dbaf0afb0e4e_912x516.jpg', 'Lamborghini Aventador', 'Coupe', 'Lamborghini Aventador 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 6,40Milyar hingga Rp 8,70Milyar , varian entry levelnya yaitu Lamborghini Aventador LP 750-4 Superveloce Rp 6,40Milyar dan varian tertingi Lamborghini Aventador yaitu Lamborghini Aven', '6400000000'),
(442, 'e7d86b1bb6194c05ab8cd217bc14c1e8_912x516.jpg', 'Lamborghini Urus', 'SUV', NULL, '8500000000'),
(443, 'dde4382a2036421fa5713c6060fd8ef7_912x516.jpg', 'Lamborghini Huracan', 'Coupe', NULL, '8900000000'),
(444, '133977a82c6643bdbeb946ef5a8c513d_912x516.jpg', 'Lexus NX', 'SUV', 'Lexus NX 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 1,12Milyar hingga Rp 1,16Milyar , varian entry levelnya yaitu Lexus NX 300 Rp 1,12Milyar dan varian tertingi Lexus NX yaitu Lexus NX 300 F-Sport ditawarkan dengan harga Rp 1,16Milyar.', '1120000000'),
(445, '6bd9873ebc444620bc6cbab9d5e348aa_912x516.jpg', 'Lexus ES', 'Sedan', NULL, '1130000000'),
(446, '8ce4946399f84d6bb42a2f4569884cab_912x516.jpg', 'Lexus GS', 'Sedan', 'Lexus GS 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 1,20Milyar hingga Rp 1,26Milyar , varian entry levelnya yaitu Lexus GS 200t Rp 1,20Milyar dan varian tertingi Lexus GS yaitu Lexus GS F ditawarkan dengan harga Rp 1,26Milyar.', '1200000000'),
(447, '4b070d8f9a254c3080825b27977cf1ec_912x516.jpg', 'Lexus RX', 'SUV', 'Lexus RX 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 1,40Milyar hingga Rp 1,45Milyar , varian entry levelnya yaitu Lexus RX 300 Luxury Rp 1,40Milyar dan varian tertingi Lexus RX yaitu Lexus RX 300 F Sport ditawarkan dengan harga Rp 1,45Milyar.', '1400000000'),
(448, '9668c1a0c8964881b29c8b98f3de51ad_912x516.jpg', 'Lexus LM', 'MPV', 'Lexus LM 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 2,40Milyar hingga Rp 3,04Milyar , varian entry levelnya yaitu LM 350 4-SEATER Rp 2,40Milyar dan varian tertingi Lexus LM yaitu LM 350 7-SEATER ditawarkan dengan harga Rp 3,04Milyar.', '2400000000'),
(449, '0a9990d772644a9d898c2ff7ab88df8d_912x516.jpg', 'Lexus LX', 'SUV', 'Lexus LX 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 3,09Milyar hingga Rp 3,44Milyar , varian entry levelnya yaitu Lexus LX 570 Rp 3,09Milyar dan varian tertingi Lexus LX yaitu Lexus LX 570 Sport ditawarkan dengan harga Rp 3,44Milyar.', '3090000000'),
(450, '5d3f030e45434d29a080de18987d2ed8_912x516.jpg', 'Lexus LS', 'Sedan', 'Lexus LS 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 3,74Milyar hingga Rp 4,66Milyar , varian entry levelnya yaitu Lexus LS 500 Rp 3,74Milyar dan varian tertingi Lexus LS yaitu Lexus LS 500h ditawarkan dengan harga Rp 4,66Milyar.', '3740000000'),
(451, '3ab20800980d412da12364f820f0b07d_912x516.jpg', 'Lexus LC', 'Coupe', NULL, '4290000000'),
(452, '05d4033d928d48399fd89fd23c8bc26f_912x516.jpg', 'Lexus UX', 'SUV', 'Lexus UX 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 885,00Juta hingga Rp 1,25Milyar , varian entry levelnya yaitu Lexus UX 200 Luxury Rp 885,00Juta dan varian tertingi Lexus UX yaitu 2021 Lexus UX 300e ditawarkan dengan harga Rp 1,25Milyar.', '885000000'),
(453, 'e053a5927c6340b3a70803e7a25a1c5d_912x516.jpg', 'Mazda BT-50', 'Pickup', NULL, '450000000'),
(454, '5ede34ed1dff46f894ec1ac7997dc775_912x516.jpg', 'Mazda 2', 'Hatchback', 'Mazda 2 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 287,30Juta hingga Rp 338,80Juta , varian entry levelnya yaitu Mazda 2 R AT Rp 287,30Juta dan varian tertingi Mazda 2 yaitu Mazda 2 GT AT 2022 ditawarkan dengan harga Rp 338,80Juta.', '287300000'),
(455, '044607f0e0b1499baa8473afd51867d2_912x516.jpg', 'Mazda 2 Sedan', 'Sedan', NULL, '333800000'),
(456, 'b7ad9e8d65db48939f75b8c6e425f0c1_912x516.jpg', 'Mazda CX-3', 'SUV', 'Mazda CX 3 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 365,50Juta hingga Rp 445,50Juta , varian entry levelnya yaitu Mazda CX-3 1.5L Sport 2022 Rp 365,50Juta dan varian tertingi Mazda CX 3 yaitu Mazda CX-3 2.0L PRO 2022 ditawarkan dengan harga Rp 44', '365500000'),
(457, '082f81dde41841d1b682bad3148c339f_912x516.jpg', 'Mazda CX-30', 'SUV', 'Mazda CX 30 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 479,90Juta hingga Rp 519,90Juta , varian entry levelnya yaitu Mazda CX 30 Touring Rp 479,90Juta dan varian tertingi Mazda CX 30 yaitu Mazda CX 30 GT ditawarkan dengan harga Rp 519,90Juta.', '479900000'),
(458, 'cf46937e3aa34e4ea28f82af80d1afb0_912x516.jpg', 'Mazda 3', 'Sedan', 'Mazda 3 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 492,20Juta hingga Rp 523,30Juta , varian entry levelnya yaitu Mazda 3 Skyactive-G 2.0 Sedan Rp 492,20Juta dan varian tertingi Mazda 3 yaitu Mazda 3 Skyactive-G 2.0 Hatchback 2022 ditawarkan dengan ', '492200000'),
(459, '1ffca3dd705445ecb18bbfe458e8d269_912x516.jpg', 'Mazda CX-5', 'SUV', 'Mazda CX 5 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 509,80Juta hingga Rp 589,80Juta , varian entry levelnya yaitu Mazda CX 5 Touring Rp 509,80Juta dan varian tertingi Mazda CX 5 yaitu Mazda CX 5 Elite ditawarkan dengan harga Rp 589,80Juta.', '509800000'),
(460, '361dc076292642a6b723be8a63cd86e3_912x516.jpg', 'Mazda 6', 'Sedan', NULL, '682800000'),
(461, '2bdf22d5974e4d3e85d07be1af647b02_912x516.jpg', 'Mercedes-Benz GLC-Class', 'SUV', 'Mercedes-Benz GLC-Class 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 1,01Milyar hingga Rp 1,75Milyar , varian entry levelnya yaitu Mercedes-Benz GLC-Class 200 AMG Line Rp 1,01Milyar dan varian tertingi Mercedes-Benz GLC-Class yaitu Mercedes-Benz GLC-', '1010000000'),
(462, '6cbfc9a65d2c495fa5b044e896d4fa2f_912x516.jpg', 'Mercedes-Benz B-Class', 'Hatchback', NULL, '700000000'),
(463, '99cf39551bb147bfbca9e0b8e22290e6_912x516.jpg', 'Mercedes-Benz A-Class', 'Hatchback', 'Mercedes-Benz A-Class 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 700,00Juta hingga Rp 1,23Milyar , varian entry levelnya yaitu Mercedes-Benz A-Class A 200 Progressive Line Rp 700,00Juta dan varian tertingi Mercedes-Benz A-Class yaitu Mercedes-Benz ', '700000000'),
(464, '3ad63e29ece945d990e84a6712e09582_912x516.jpg', 'Mercedes-Benz GLA-Class', 'SUV', 'Mercedes-Benz GLA-Class 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 775,00Juta hingga Rp 779,00Juta , varian entry levelnya yaitu Mercedes-Benz GLA-Class 200 AMG Line Rp 775,00Juta dan varian tertingi Mercedes-Benz GLA-Class yaitu Mercedes-Benz GLA-', '775000000'),
(465, 'd3476ef87dfc41b58ddfde2bbf6312ae_912x516.jpeg', 'Mercedes-Benz CLA-Class', 'Coupe', NULL, '779000000'),
(466, 'caac77a2ecfe42cdb000d547fe1c765c_912x516.jpg', 'Mercedes-Benz A-Class Sedan', 'Sedan', NULL, '800000000'),
(467, '85ac7749d7c74d2cb6eda9161d84e3d5_912x516.jpg', 'Mercedes-Benz GLB-Class', 'SUV', NULL, '875000000'),
(468, '6f82b54eacf64aab8f034f5196914462_912x516.jpg', 'Mercedes-Benz C-Class', 'Sedan', 'Mercedes-Benz C-Class 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 890,00Juta hingga Rp 1,02Milyar , varian entry levelnya yaitu Mercedes-Benz C-Class C 200 Avantgarde Line Rp 890,00Juta dan varian tertingi Mercedes-Benz C-Class yaitu 2021 Mercedes-B', '890000000'),
(469, '3577b1b909e44a429c3384089701b92c_912x516.jpg', 'Mercedes-Benz Sprinter', 'Commercial', 'Mercedes-Benz Sprinter 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 955,00Juta hingga Rp 975,00Juta , varian entry levelnya yaitu Mercedes-Benz Sprinter 315 CDI A2 Rp 955,00Juta dan varian tertingi Mercedes-Benz Sprinter yaitu Mercedes-Benz Sprinter ', '955000000'),
(470, '2458be5db0f2423eada991725479ba6f_912x516.jpg', 'Mitsubishi T120SS', 'Pickup', NULL, '120000000'),
(471, '6bbc5b545bbf49c6a3ed65e2a5712856_912x516.jpg', 'Mitsubishi Outlander PHEV', 'SUV', NULL, '1310000000'),
(472, '10f8a7c2b54f4536b717f8a3a1b35dd0_912x516.jpg', 'Mitsubishi L300', 'Pickup', 'Mitsubishi L300 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 213,65Juta hingga Rp 218,65Juta , varian entry levelnya yaitu Mitsubishi L300 Cab Chasiss 2022 Rp 213,65Juta dan varian tertingi Mitsubishi L300 yaitu Mitsubishi L300 Pick Up Flat Deck 2022', '213650000'),
(473, 'c5ad2ec2256648169a6ef002476f62a4_912x516.jpg', 'Mitsubishi Xpander', 'MPV', 'Mitsubishi Xpander 2023 - 2024 ditawarkan dalam 7 varian -  mulai Rp 253,40Juta hingga Rp 307,10Juta , varian entry levelnya yaitu Mitsubishi Xpander GLS MT 2022 Rp 253,40Juta dan varian tertingi Mitsubishi Xpander yaitu Mitsubishi Xpander Ultimate CVT 20', '253400000'),
(474, '43d18f95479540a3aaac29ad1b4d2459_912x516.jpg', 'Mitsubishi Triton', 'Pickup', 'Mitsubishi Triton 2023 - 2024 ditawarkan dalam 6 varian -  mulai Rp 262,65Juta hingga Rp 492,65Juta , varian entry levelnya yaitu Mitsubishi Triton GLX MT Single Cab 2WD Rp 262,65Juta dan varian tertingi Mitsubishi Triton yaitu Mitsubishi Triton Ultimate ', '262650000'),
(475, '0c42eb60ce194a8490b355119d0f8660_912x516.jpg', 'Mitsubishi Xpander Cross', 'MPV', 'Mitsubishi Xpander Cross 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 300,95Juta hingga Rp 335,75Juta , varian entry levelnya yaitu Mitsubishi Xpander Cross MT 2022 Rp 300,95Juta dan varian tertingi Mitsubishi Xpander Cross yaitu 2021 Mitsubishi Xpan', '300950000'),
(476, 'b19394712281469d8bc76f1cc024c928_912x516.jpg', 'Mitsubishi Outlander Sport', 'SUV', 'Mitsubishi Outlander Sport 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 338,00Juta hingga Rp 383,50Juta , varian entry levelnya yaitu Mitsubishi Outlander Sport GLX Rp 338,00Juta dan varian tertingi Mitsubishi Outlander Sport yaitu Mitsubishi Outland', '338000000'),
(477, 'c840ada99fd943cbb1da41a1261f66de_912x516.jpg', 'Mitsubishi Eclipse Cross', 'SUV', NULL, '487650000'),
(478, 'fcf1b2fc4175433294f25bda0ae41f1d_912x516.jpg', 'Mitsubishi Pajero Sport', 'SUV', 'Mitsubishi Pajero Sport 2023 - 2024 ditawarkan dalam 8 varian -  mulai Rp 502,80Juta hingga Rp 733,70Juta , varian entry levelnya yaitu 2021 Mitsubishi Pajero Sport Exceed 4x2 MT Rp 502,80Juta dan varian tertingi Mitsubishi Pajero Sport yaitu 2021 Mitsubi', '502800000'),
(479, 'c78aeadd272f49ea96881c021e56dc84_912x516.jpg', 'Nissan Note', 'MPV', NULL, '250000000'),
(480, 'f36e0fd85c014b17a7afea377cf54f9f_912x516.jpg', 'Nissan Z Proto', 'Sedan', NULL, '250000000'),
(481, 'd13492642bf04f96a6b339fa151c5e1c_912x516.jpg', 'Nissan March', 'Hatchback', 'Nissan March 2023 - 2024 ditawarkan dalam 5 varian -  mulai Rp 185,80Juta hingga Rp 225,60Juta , varian entry levelnya yaitu Nissan March 1.2L MT Rp 185,80Juta dan varian tertingi Nissan March yaitu Nissan March 1.5L AT ditawarkan dengan harga Rp 225,60Ju', '185800000'),
(482, '802eca355e8e42e8a991e235f34fda0e_912x516.jpg', 'Nissan Livina', 'MPV', 'Nissan Livina 2023 - 2024 ditawarkan dalam 5 varian -  mulai Rp 208,30Juta hingga Rp 272,10Juta , varian entry levelnya yaitu Nissan Livina E MT Rp 208,30Juta dan varian tertingi Nissan Livina yaitu Nissan Livina VL AT ditawarkan dengan harga Rp 272,10Jut', '208300000'),
(483, 'ac2c84bde91443f9835016abdcea2b68_912x516.jpg', 'Nissan Magnite', 'SUV', 'Nissan Magnite 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 208,80Juta hingga Rp 238,80Juta , varian entry levelnya yaitu 2021 Nissan Magnite Upper MT Rp 208,80Juta dan varian tertingi Nissan Magnite yaitu 2021 Nissan Magnite Premium CVT ditawarkan d', '208800000'),
(484, 'cc4849844f34483a9988b5213cf6cec2_912x516.jpg', 'Nissan Juke', 'SUV', 'Nissan Juke 2023 - 2024 ditawarkan dalam 5 varian -  mulai Rp 303,30Juta hingga Rp 332,60Juta , varian entry levelnya yaitu Nissan Juke 1.5 CVT Black Interior Rp 303,30Juta dan varian tertingi Nissan Juke yaitu Nissan Juke 1.5 Revolt CVT Red Interior dita', '303300000'),
(485, '6e699724186f462b85138b0bba616936_912x516.jpg', 'Nissan Kicks', 'SUV', 'Nissan Kicks 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 428,80Juta hingga Rp 519,00Juta , varian entry levelnya yaitu Nissan Kicks e-Power 2022 Rp 428,80Juta dan varian tertingi Nissan Kicks yaitu Nissan Kicks e-Power 2023 ditawarkan dengan harga R', '428800000'),
(486, '1b82f9789f3d4148a35cd24801438fe4_912x516.jpg', 'Nissan Navara', 'Pickup', 'Nissan Navara 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 448,46Juta hingga Rp 551,00Juta , varian entry levelnya yaitu Nissan Navara 2.5 SL MT Rp 448,46Juta dan varian tertingi Nissan Navara yaitu Nissan Navara 2.5 VL AT ditawarkan dengan harga Rp ', '448460000'),
(487, 'aba676a2aceb44bea11afc632ae5b541_912x516.jpg', 'Nissan Serena', 'MPV', 'Nissan Serena 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 462,90Juta hingga Rp 481,00Juta , varian entry levelnya yaitu Nissan Serena X Rp 462,90Juta dan varian tertingi Nissan Serena yaitu Nissan Serena Highway Star ditawarkan dengan harga Rp 481,0', '462900000'),
(488, '9991abf43d6a4ad7bb3b50c16444c415_912x516.jpg', 'Porsche 718', 'Coupe', 'Porsche 718 2023 - 2024 ditawarkan dalam 13 varian -  mulai Rp 1,50Milyar hingga Rp 25,00Milyar , varian entry levelnya yaitu Porsche 718 Boxter Manual Rp 1,50Milyar dan varian tertingi Porsche 718 yaitu Porsche 718 Cayman 2022 ditawarkan dengan harga Rp ', '1500000000'),
(489, 'ff90ce3b0ebe492696fca3c408822e01_912x516.jpg', 'Porsche Macan', 'SUV', 'Porsche Macan 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 2,10Milyar hingga Rp 2,70Milyar , varian entry levelnya yaitu Porsche Macan PDK Rp 2,10Milyar dan varian tertingi Porsche Macan yaitu Porsche Macan Turbo PDK ditawarkan dengan harga Rp 2,70Mi', '2100000000'),
(490, 'd17e5f9c7f3943978e0ab7bfb0ac92b6_912x516.jpg', 'Porsche Panamera', 'Coupe', 'Porsche Panamera 2023 - 2024 ditawarkan dalam 12 varian -  mulai Rp 2,20Milyar hingga Rp 3,90Milyar , varian entry levelnya yaitu Porsche Panamera PDK Rp 2,20Milyar dan varian tertingi Porsche Panamera yaitu Porsche Panamera Diesel 250 hp Edition Tiptroni', '2200000000'),
(491, '98b771113a984a0385295fdf79473040_912x516.jpg', 'Porsche Taycan', 'Sedan', NULL, '2850000000'),
(492, '1f9d81e9408540b7989f3144a76c48b9_912x516.jpg', 'Porsche 911', 'Coupe', 'Porsche 911 2023 - 2024 ditawarkan dalam 45 varian -  mulai Rp 3,30Milyar hingga Rp 5,90Milyar , varian entry levelnya yaitu Porsche 911 Carrera  MT Rp 3,30Milyar dan varian tertingi Porsche 911 yaitu Porsche 911 Turbo S Cabriolet PDK ditawarkan dengan ha', '3300000000'),
(493, 'e2bc6c839f064ea1ac5c7e62782b12fc_912x516.jpg', 'Porsche Cayenne', 'SUV', 'Porsche Cayenne 2023 - 2024 ditawarkan dalam 7 varian -  mulai Rp 3,43Milyar hingga Rp 3,97Milyar , varian entry levelnya yaitu Porsche Cayenne S Tiptronic Rp 3,43Milyar dan varian tertingi Porsche Cayenne yaitu Porsche Cayenne GTS Tiptronic ditawarkan de', '3430000000'),
(494, 'e349df01b0b44fc8a402d693199f83be_912x516.jpg', 'Suzuki Swift', 'Hatchback', NULL, '200000000'),
(495, '1d28efa78ea94a4e96072abd2cf9d103_912x516.jpg', 'Suzuki Vitara Brezza', 'SUV', NULL, '200000000'),
(496, 'b1f0fca9d44944d789c248829d7a77b0_912x516.jpg', 'Suzuki Karimun Wagon R', 'MPV', 'Suzuki Karimun Wagon R 2023 - 2024 ditawarkan dalam 9 varian -  mulai Rp 122,00Juta hingga Rp 152,50Juta , varian entry levelnya yaitu Suzuki Karimun Wagon R GA Airbag Rp 122,00Juta dan varian tertingi Suzuki Karimun Wagon R yaitu Suzuki Karimun Wagon R G', '122000000'),
(497, 'ab5bf8e90352489f98e1b57a569081e1_912x516.jpg', 'Suzuki Karimun Wagon R GS', 'MPV', 'Suzuki Karimun Wagon R GS 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 144,50Juta hingga Rp 152,50Juta , varian entry levelnya yaitu Suzuki Karimun Wagon R GS GL AGS Airbag Rp 144,50Juta dan varian tertingi Suzuki Karimun Wagon R GS yaitu Suzuki Kari', '144500000'),
(498, 'ad6430990a5a44269afd1b78f28ada72_912x516.jpg', 'Suzuki Carry', 'Pickup', 'Suzuki Carry 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 152,50Juta hingga Rp 162,00Juta , varian entry levelnya yaitu Suzuki Carry Flat Deck Rp 152,50Juta dan varian tertingi Suzuki Carry yaitu Suzuki Carry Wide Deck AC/PS ditawarkan dengan harga R', '152500000'),
(499, 'e18cd9aef1b24758ba98fe72f4fff62d_912x516.jpg', 'Suzuki S-Presso', 'SUV', 'Suzuki S-Presso 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 155,00Juta hingga Rp 164,00Juta , varian entry levelnya yaitu Suzuki S-Presso MT 2022 Rp 155,00Juta dan varian tertingi Suzuki S-Presso yaitu Suzuki S-Presso AGS 2022 ditawarkan dengan harg', '155000000'),
(500, '227d4ba318914513a994f0b3bf7aadd6_912x516.jpg', 'Suzuki APV Arena', 'MPV', 'Suzuki APV Arena 2023 - 2024 ditawarkan dalam 4 varian -  mulai Rp 160,50Juta hingga Rp 215,00Juta , varian entry levelnya yaitu Suzuki APV Arena Blind Van Rp 160,50Juta dan varian tertingi Suzuki APV Arena yaitu Suzuki APV Arena SGX MT ditawarkan dengan ', '160500000'),
(501, '003fb8b6fc234ce1b36ceee87be299e8_912x516.jpg', 'Suzuki Ignis', 'Hatchback', 'Suzuki Ignis 2023 - 2024 ditawarkan dalam 5 varian -  mulai Rp 175,50Juta hingga Rp 217,50Juta , varian entry levelnya yaitu Suzuki Ignis GL MT Rp 175,50Juta dan varian tertingi Suzuki Ignis yaitu Suzuki Ignis GX AT 2022 ditawarkan dengan harga Rp 217,50J', '175500000'),
(502, '9030a8aaddcb4776b77db5c9c3d4a4dd_912x516.jpg', 'Suzuki Ertiga', 'MPV', 'Suzuki Ertiga 2023 - 2024 ditawarkan dalam 11 varian -  mulai Rp 225,10Juta hingga Rp 292,30Juta , varian entry levelnya yaitu Suzuki Ertiga GA MT 2022 Rp 225,10Juta dan varian tertingi Suzuki Ertiga yaitu Suzuki Ertiga Hybrid Sport AT 2022 ditawarkan den', '225100000'),
(503, '6e0842f1859b404fb3741a5fa74275a5_912x516.jpg', 'Tesla Model X', 'SUV', NULL, '1200000000'),
(504, 'ef67b00d4ae1434cb34ea52561a9c977_912x516.jpg', 'Tesla Model S', 'Coupe', NULL, '1060000000'),
(505, 'a4682651b46848069774e70936dd05eb_912x516.jpg', 'Tesla Model 3', 'Sedan', NULL, '600000000'),
(506, '28a84bebbb8e4c44b49648f4ae222a8a_912x516.jpg', 'Toyota GR', 'Coupe', NULL, '400000000'),
(507, 'c86e038d0afa4ca4b7e7c83143c64a24_912x516.jpg', 'Toyota RAV4', 'SUV', NULL, '350000000'),
(508, '95db27a697e64fa798e8ee9a5794099d_912x516.jpg', 'Toyota bZ4X', 'SUV', NULL, '1500000000'),
(509, 'c405675bed0246e6ace63c5ed7a5484b_912x516.jpg', 'Toyota Prius', 'Sedan', NULL, '300000000'),
(510, '8e667bccaa784b159f4857bc21cff56e_912x516.jpg', 'Toyota Yaris Cross', 'SUV', NULL, '250000000'),
(511, '6efe7385411d42ec8705d00f161c3e44_912x516.jpg', 'Toyota Agya', 'Hatchback', 'Toyota Agya 2023 - 2024 ditawarkan dalam 7 varian -  mulai Rp 144,90Juta hingga Rp 173,30Juta , varian entry levelnya yaitu 2021 Toyota Agya 1.0 G M/T Rp 144,90Juta dan varian tertingi Toyota Agya yaitu Toyota Agya G 2023 ditawarkan dengan harga Rp 173,30', '144900000'),
(512, '2f444c64549540ebb220be85936a884a_912x516.jpg', 'Toyota Calya', 'MPV', 'Toyota Calya 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 161,50Juta hingga Rp 181,10Juta , varian entry levelnya yaitu Toyota Calya E MT Rp 161,50Juta dan varian tertingi Toyota Calya yaitu Toyota Calya G AT ditawarkan dengan harga Rp 181,10Juta.', '161500000'),
(513, 'c7f5d58eda3a4d6b90e4a28a2a8e4f7f_912x516.jpg', 'Toyota Raize', 'SUV', 'Toyota Raize 2023 - 2024 ditawarkan dalam 6 varian -  mulai Rp 229,80Juta hingga Rp 299,20Juta , varian entry levelnya yaitu 2021 Toyota Raize 1.2L G M/T Rp 229,80Juta dan varian tertingi Toyota Raize yaitu 2021 Toyota Raize 1.0TG Sport CVT TSS ditawarkan', '229800000'),
(514, 'ac6dbdba3f284f0ea02a1a3d824e63b8_912x516.jpg', 'Toyota Avanza', 'MPV', 'Toyota Avanza 2023 - 2024 ditawarkan dalam 5 varian -  mulai Rp 233,10Juta hingga Rp 295,80Juta , varian entry levelnya yaitu 2022 Toyota Avanza 1.3 E M/T Rp 233,10Juta dan varian tertingi Toyota Avanza yaitu 2022 Toyota Avanza 1.5 G CVT TSS ditawarkan de', '233100000'),
(515, 'a86f2d74c6de4c3a8eecf422055ecc8f_912x516.jpg', 'Wuling Formo Max', 'Pickup', NULL, '130000000'),
(516, 'f9dc3f0ea2f0481e997c3a04670c93b4_912x516.jpg', 'Wuling Mini EV', 'Hatchback', NULL, '100000000'),
(517, 'f6662eaa93b64ae8a3cfc056c15ac8e7_912x516.jpg', 'Wuling Victory', 'MPV', NULL, '130000000'),
(518, 'bfa724e785a64e6aa5a5438217c4d16a_912x516.jpg', 'Wuling Baojun 310', 'Hatchback', NULL, '100000000'),
(519, '29514dbb383f49f9940c9e1981456912_912x516.jpg', 'Wuling Formo', 'MPV', 'Wuling Formo 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 140,80Juta hingga Rp 141,80Juta , varian entry levelnya yaitu Wuling Formo 1.2 Standard 8-Seat Rp 140,80Juta dan varian tertingi Wuling Formo yaitu Wuling Formo 1.2 MB 7-Seat ditawarkan dengan', '140800000'),
(520, '5986e0cf37f140a589d21ecc6366548f_912x516.jpg', 'Wuling Confero S', 'SUV', 'Wuling Confero S 2023 - 2024 ditawarkan dalam 7 varian -  mulai Rp 150,80Juta hingga Rp 210,30Juta , varian entry levelnya yaitu Wuling Confero 1.5 MT Double Blower Rp 150,80Juta dan varian tertingi Wuling Confero S yaitu 2021 Wuling Confero S L ACT ditaw', '150800000'),
(521, 'f4c0958641fe40e7862e7d7696ffb684_912x516.jpg', 'Wuling Alvez', 'SUV', 'Wuling Alvez 2023 - 2024 ditawarkan dalam 3 varian -  mulai Rp 209,00Juta hingga Rp 295,00Juta , varian entry levelnya yaitu Wuling Alvez SE 2023 Rp 209,00Juta dan varian tertingi Wuling Alvez yaitu Wuling Alvez EX 2023 ditawarkan dengan harga Rp 295,00Ju', '209000000'),
(522, 'a927d56ac0a1458babdcaf9fa410d75f_912x516.jpg', 'Wuling Air EV', 'Hatchback', 'Wuling Air EV 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 238,00Juta hingga Rp 295,00Juta , varian entry levelnya yaitu Wuling Air EV Standard Range 2022 Rp 238,00Juta dan varian tertingi Wuling Air EV yaitu Wuling Air EV Long Range 2022 ditawarkan ', '238000000'),
(523, '433030622cdf49deaf38afef4fb18254_912x516.jpg', 'Wuling Cortez', 'MPV', 'Wuling Cortez 2023 - 2024 ditawarkan dalam 2 varian -  mulai Rp 273,80Juta hingga Rp 310,65Juta , varian entry levelnya yaitu Wuling Cortez CE 2022 Rp 273,80Juta dan varian tertingi Wuling Cortez yaitu Wuling Cortez EX 2022 ditawarkan dengan harga Rp 310,', '273800000');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone_number`, `email`, `address`) VALUES
(9, 'Andi Prasetyo', '08123456789', 'andi.prasetyo@example.com', 'Jl. Diponegoro No. 123'),
(10, 'Siti Rahmawati', '08234567890', 'siti.rahmawati@example.com', 'Jl. Ahmad Yani No. 456'),
(11, 'Ahmad Faisal', '08345678901', 'ahmad.faisal@example.com', 'Jl. Gatot Subroto No. 789'),
(12, 'Rina Dewi', '08456789012', 'rina.dewi@example.com', 'Jl. Sudirman No. 246'),
(13, 'Hendra Kurniawan', '08567890123', 'hendra.kurniawan@example.com', 'Jl. Merdeka No. 789'),
(14, 'Desi Putri', '08678901234', 'desi.putri@example.com', 'Jl. Gajah Mada No. 345'),
(15, 'Budi Santoso', '08789012345', 'budi.santoso@example.com', 'Jl. Thamrin No. 678'),
(16, 'Dewi Indah', '08890123456', 'dewi.indah@example.com', 'Jl. Pemuda No. 901'),
(17, 'Yudi Hartono', '08901234567', 'yudi.hartono@example.com', 'Jl. Hayam Wuruk No. 234'),
(18, 'Lina Wijaya', '09012345678', 'lina.wijaya@example.com', 'Jl. Imam Bonjol No. 567');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1688694722, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`id`, `name`, `phone_number`, `email`) VALUES
(9, 'Andi Gunawan', '0812-1234-5678', 'andi.gunawan@example.com'),
(10, 'Siti Rahayu', '0856-9876-5432', 'siti.rahayu@example.com'),
(11, 'Budi Santoso', '0899-5555-5555', 'budi.santoso@example.com'),
(12, 'Rina Wahyuni', '0821-2222-3333', 'rina.wahyuni@example.com'),
(13, 'Ahmad Hidayat', '0813-4444-5555', 'ahmad.hidayat@example.com'),
(14, 'Rika Puspita', '0857-6666-7777', 'rika.puspita@example.com'),
(15, 'Hendra Wijaya', '0822-8888-9999', 'hendra.wijaya@example.com'),
(16, 'Sari Utami', '0855-1111-2222', 'sari.utami@example.com'),
(17, 'Joko Susanto', '0821-3333-4444', 'joko.susanto@example.com'),
(18, 'Dewi Hartono', '0812-5555-6666', 'dewi.hartono@example.com'),
(19, 'Surya Putra', '0856-7777-8888', 'surya.putra@example.com'),
(20, 'Eka Kusuma', '0899-9999-1111', 'eka.kusuma@example.com'),
(21, 'Rudi Hermawan', '0821-2222-3333', 'rudi.hermawan@example.com'),
(22, 'Dina Wijaya', '0813-4444-5555', 'dina.wijaya@example.com'),
(23, 'Anita Nugraha', '0857-6666-7777', 'anita.nugraha@example.com'),
(24, 'Agus Suryanto', '0822-8888-9999', 'agus.suryanto@example.com'),
(25, 'Maya Indriani', '0855-1111-2222', 'maya.indriani@example.com'),
(26, 'Bambang Harianto', '0821-3333-4444', 'bambang.harianto@example.com'),
(27, 'Andi Gunawan', '0812-1234-5678', 'andi.gunawan@example.com'),
(28, 'Siti Rahayu', '0856-9876-5432', 'siti.rahayu@example.com'),
(29, 'Budi Santoso', '0899-5555-5555', 'budi.santoso@example.com'),
(30, 'Rina Wahyuni', '0821-2222-3333', 'rina.wahyuni@example.com'),
(31, 'Ahmad Hidayat', '0813-4444-5555', 'ahmad.hidayat@example.com'),
(32, 'Rika Puspita', '0857-6666-7777', 'rika.puspita@example.com'),
(33, 'Hendra Wijaya', '0822-8888-9999', 'hendra.wijaya@example.com'),
(34, 'Sari Utami', '0855-1111-2222', 'sari.utami@example.com'),
(35, 'Joko Susanto', '0821-3333-4444', 'joko.susanto@example.com'),
(36, 'Dewi Hartono', '0812-5555-6666', 'dewi.hartono@example.com'),
(37, 'Surya Putra', '0856-7777-8888', 'surya.putra@example.com'),
(38, 'Eka Kusuma', '0899-9999-1111', 'eka.kusuma@example.com'),
(39, 'Rudi Hermawan', '0821-2222-3333', 'rudi.hermawan@example.com'),
(40, 'Dina Wijaya', '0813-4444-5555', 'dina.wijaya@example.com'),
(41, 'Anita Nugraha', '0857-6666-7777', 'anita.nugraha@example.com'),
(42, 'Agus Suryanto', '0822-8888-9999', 'agus.suryanto@example.com'),
(43, 'Maya Indriani', '0855-1111-2222', 'maya.indriani@example.com'),
(44, 'Bambang Harianto', '0821-3333-4444', 'bambang.harianto@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  `salesperson_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `car_id`, `salesperson_id`, `price`, `created_at`, `updated_at`) VALUES
(1260, 'Budi Santoso', 'Toyota Raize', 'Anita Nugraha', '489000000', '2023-05-31 22:20:32', '2023-07-07 09:45:06'),
(1261, 'Siti Rahmawati', 'Audi Q3', 'Anita Nugraha', '800000000', '2023-05-14 05:54:48', '2023-07-07 09:45:06'),
(1262, 'Desi Putri', 'Toyota Agya', 'Maya Indriani', '462900000', '2023-06-11 08:39:45', '2023-07-07 09:45:06'),
(1263, 'Desi Putri', 'Chery Tiggo 8 Pro', 'Dewi Hartono', '700000000', '2023-05-11 19:30:08', '2023-07-07 09:45:06'),
(1264, 'Siti Rahmawati', 'Isuzu Panther', 'Rudi Hermawan', '120000000', '2023-05-31 14:03:40', '2023-07-07 09:45:06'),
(1265, 'Siti Rahmawati', 'Hyundai Grand i10', 'Dewi Hartono', '615000000', '2023-05-28 10:05:14', '2023-07-07 09:45:06'),
(1266, 'Rina Dewi', 'Hyundai Grand i10', 'Rika Puspita', '1200000000', '2023-06-21 05:39:08', '2023-07-07 09:45:06'),
(1267, 'Hendra Kurniawan', 'Jeep Cherokee', 'Budi Santoso', '193000000', '2023-05-27 15:47:50', '2023-07-07 09:45:06'),
(1268, 'Hendra Kurniawan', 'Wuling Baojun 310', 'Maya Indriani', '362600000', '2023-04-23 08:15:32', '2023-07-07 09:45:06'),
(1269, 'Rina Dewi', 'Isuzu MU-X', 'Sari Utami', '288000000', '2023-04-10 23:12:26', '2023-07-07 09:45:06'),
(1270, 'Yudi Hartono', 'Lamborghini Huracan', 'Anita Nugraha', '1200000000', '2023-05-21 23:14:11', '2023-07-07 09:45:06'),
(1271, 'Dewi Indah', 'Mercedes-Benz B-Class', 'Rudi Hermawan', '462900000', '2023-06-15 04:29:18', '2023-07-07 09:45:06'),
(1272, 'Lina Wijaya', 'Audi A5', 'Hendra Wijaya', '875000000', '2023-06-19 12:13:39', '2023-07-07 09:45:06'),
(1273, 'Hendra Kurniawan', 'Mazda 6', 'Maya Indriani', '890000000', '2023-04-08 11:29:57', '2023-07-07 09:45:06'),
(1274, 'Dewi Indah', 'Suzuki APV Arena', 'Bambang Harianto', '211800000', '2023-06-05 12:39:18', '2023-07-07 09:45:06'),
(1275, 'Rina Dewi', 'Suzuki S-Presso', 'Sari Utami', '779000000', '2023-05-26 14:56:30', '2023-07-07 09:45:06'),
(1276, 'Andi Prasetyo', 'Mazda 2', 'Budi Santoso', '3430000000', '2023-06-20 20:24:28', '2023-07-07 09:45:06'),
(1277, 'Rina Dewi', 'Lexus LC', 'Sari Utami', '2400000000', '2023-06-30 01:08:45', '2023-07-07 09:45:06'),
(1278, 'Budi Santoso', 'Toyota GR', 'Eka Kusuma', '1280000000', '2023-06-28 12:15:36', '2023-07-07 09:45:06'),
(1279, 'Rina Dewi', 'Toyota Agya', 'Andi Gunawan', '682800000', '2023-04-24 13:18:16', '2023-07-07 09:45:06'),
(1280, 'Dewi Indah', 'Porsche Macan', 'Rina Wahyuni', '303300000', '2023-06-09 01:01:25', '2023-07-07 09:45:06'),
(1281, 'Rina Dewi', 'Jeep Compass', 'Sari Utami', '103300000', '2023-05-23 06:24:46', '2023-07-07 09:45:06'),
(1282, 'Ahmad Faisal', 'Hyundai Kona', 'Hendra Wijaya', '250000000', '2023-05-20 10:12:35', '2023-07-07 09:45:06'),
(1283, 'Budi Santoso', 'BMW 2 Series Gran Coupe', 'Anita Nugraha', '1820000000', '2023-06-11 21:06:50', '2023-07-07 09:45:06'),
(1284, 'Andi Prasetyo', 'Jeep Gladiator', 'Surya Putra', '6400000000', '2023-07-04 21:16:49', '2023-07-07 09:45:06'),
(1285, 'Rina Dewi', 'Honda City Hatchback', 'Rika Puspita', '209000000', '2023-06-25 09:11:36', '2023-07-07 09:45:06'),
(1286, 'Dewi Indah', 'Honda HR-V', 'Anita Nugraha', '487650000', '2023-05-02 21:27:16', '2023-07-07 09:45:06'),
(1287, 'Siti Rahmawati', 'Nissan Livina', 'Surya Putra', '200000000', '2023-05-12 10:23:25', '2023-07-07 09:45:06'),
(1288, 'Ahmad Faisal', 'Nissan Juke', 'Rina Wahyuni', '303300000', '2023-04-09 18:09:27', '2023-07-07 09:45:06'),
(1289, 'Rina Dewi', 'Audi A4', 'Dina Wijaya', '1500000000', '2023-05-26 00:34:34', '2023-07-07 09:45:06'),
(1290, 'Yudi Hartono', 'Lexus ES', 'Agus Suryanto', '238000000', '2023-05-02 17:41:09', '2023-07-07 09:45:06'),
(1291, 'Siti Rahmawati', 'BMW I3s', 'Bambang Harianto', '599000000', '2023-04-12 22:00:04', '2023-07-07 09:45:06'),
(1292, 'Rina Dewi', 'Mercedes-Benz A-Class', 'Anita Nugraha', '333600000', '2023-05-06 17:19:37', '2023-07-07 09:45:06'),
(1293, 'Rina Dewi', 'Suzuki Ignis', 'Eka Kusuma', '1120000000', '2023-05-05 04:36:45', '2023-07-07 09:45:06'),
(1294, 'Budi Santoso', 'Toyota Prius', 'Rina Wahyuni', '700000000', '2023-04-01 15:17:06', '2023-07-07 09:45:06'),
(1295, 'Andi Prasetyo', 'Mitsubishi Xpander Cross', 'Sari Utami', '1310000000', '2023-05-04 00:53:47', '2023-07-07 09:45:06'),
(1296, 'Desi Putri', 'Lexus GS', 'Siti Rahayu', '8500000000', '2023-05-10 03:35:47', '2023-07-07 09:45:06'),
(1297, 'Lina Wijaya', 'Porsche 911', 'Bambang Harianto', '775000000', '2023-05-15 14:25:21', '2023-07-07 09:45:06'),
(1298, 'Lina Wijaya', 'Lamborghini Huracan', 'Sari Utami', '276600000', '2023-06-14 03:32:18', '2023-07-07 09:45:06'),
(1299, 'Budi Santoso', 'Hyundai Kona', 'Budi Santoso', '400000000', '2023-04-02 20:43:03', '2023-07-07 09:45:06'),
(1300, 'Yudi Hartono', 'Wuling Confero S', 'Rina Wahyuni', '112090000', '2023-06-05 03:43:57', '2023-07-07 09:45:06'),
(1301, 'Hendra Kurniawan', 'Chery Tiggo 7 Pro', 'Siti Rahayu', '213650000', '2023-04-29 20:10:49', '2023-07-07 09:45:06'),
(1302, 'Andi Prasetyo', 'Isuzu D-MAX', 'Budi Santoso', '799000000', '2023-06-18 06:48:47', '2023-07-07 09:45:06'),
(1303, 'Rina Dewi', 'BMW X2', 'Ahmad Hidayat', '303300000', '2023-07-03 05:51:33', '2023-07-07 09:45:06'),
(1304, 'Lina Wijaya', 'Mazda 2 Sedan', 'Rina Wahyuni', '1250000000', '2023-05-31 13:26:33', '2023-07-07 09:45:06'),
(1305, 'Rina Dewi', 'Lexus NX', 'Joko Susanto', '8500000000', '2023-07-01 03:40:41', '2023-07-07 09:45:06'),
(1306, 'Yudi Hartono', 'Hyundai Starex', 'Dewi Hartono', '238000000', '2023-04-08 01:57:36', '2023-07-07 09:45:06'),
(1307, 'Lina Wijaya', 'Kia Picanto', 'Hendra Wijaya', '130000000', '2023-06-14 13:35:34', '2023-07-07 09:45:06'),
(1308, 'Siti Rahmawati', 'Porsche Cayenne', 'Rina Wahyuni', '6400000000', '2023-06-27 21:28:38', '2023-07-07 09:45:06'),
(1309, 'Dewi Indah', 'Mazda 2', 'Dewi Hartono', '368500000', '2023-06-09 22:38:32', '2023-07-07 09:45:06'),
(1310, 'Siti Rahmawati', 'Honda WR-V', 'Rina Wahyuni', '2100000000', '2023-07-03 14:50:40', '2023-07-07 09:45:06'),
(1311, 'Rina Dewi', 'Porsche 718', 'Bambang Harianto', '288000000', '2023-04-19 05:23:10', '2023-07-07 09:45:06'),
(1312, 'Lina Wijaya', 'Suzuki Karimun Wagon R GS', 'Rina Wahyuni', '389000000', '2023-04-26 11:06:15', '2023-07-07 09:45:06'),
(1313, 'Hendra Kurniawan', 'Daihatsu Sigra', 'Anita Nugraha', '161490000', '2023-05-30 17:58:57', '2023-07-07 09:45:06'),
(1314, 'Hendra Kurniawan', 'Daihatsu Gran Max MB', 'Agus Suryanto', '122000000', '2023-04-07 04:34:55', '2023-07-07 09:45:06'),
(1315, 'Budi Santoso', 'Hyundai H1', 'Sari Utami', '678000000', '2023-05-14 07:00:46', '2023-07-07 09:45:06'),
(1316, 'Budi Santoso', 'Mitsubishi Eclipse Cross', 'Anita Nugraha', '233100000', '2023-04-20 08:22:48', '2023-07-07 09:45:06'),
(1317, 'Andi Prasetyo', 'Datsun Cross', 'Siti Rahayu', '400000000', '2023-06-17 21:30:51', '2023-07-07 09:45:06'),
(1318, 'Lina Wijaya', 'Audi TTS Coupe', 'Budi Santoso', '1310000000', '2023-06-18 09:59:25', '2023-07-07 09:45:06'),
(1319, 'Andi Prasetyo', 'Mitsubishi Xpander', 'Joko Susanto', '200000000', '2023-04-24 13:09:14', '2023-07-07 09:45:06'),
(1320, 'Siti Rahmawati', 'Porsche 718', 'Hendra Wijaya', '303300000', '2023-04-24 13:57:22', '2023-07-07 09:45:06'),
(1321, 'Ahmad Faisal', 'Wuling Formo', 'Maya Indriani', '368500000', '2023-05-06 13:47:14', '2023-07-07 09:45:06'),
(1322, 'Rina Dewi', 'Audi Q3', 'Siti Rahayu', '288000000', '2023-04-20 12:38:47', '2023-07-07 09:45:06'),
(1323, 'Lina Wijaya', 'Mitsubishi Eclipse Cross', 'Hendra Wijaya', '105750000', '2023-04-11 01:22:39', '2023-07-07 09:45:06'),
(1324, 'Yudi Hartono', 'Wuling Formo', 'Agus Suryanto', '100000000', '2023-04-10 07:07:58', '2023-07-07 09:45:06'),
(1325, 'Desi Putri', 'Daihatsu Luxio', 'Budi Santoso', '175900000', '2023-04-10 02:24:34', '2023-07-07 09:45:06'),
(1326, 'Hendra Kurniawan', 'Jeep Cherokee', 'Rika Puspita', '273800000', '2023-04-16 02:44:15', '2023-07-07 09:45:06'),
(1327, 'Dewi Indah', 'Audi TT Coupe', 'Dewi Hartono', '500000000', '2023-04-08 11:59:43', '2023-07-07 09:45:06'),
(1328, 'Dewi Indah', 'Lexus RX', 'Dewi Hartono', '422000000', '2023-05-11 06:52:25', '2023-07-07 09:45:06'),
(1329, 'Dewi Indah', 'Jeep Renegade', 'Dina Wijaya', '144500000', '2023-05-28 06:36:28', '2023-07-07 09:45:06'),
(1330, 'Dewi Indah', 'Tesla Model X', 'Rina Wahyuni', '400000000', '2023-05-01 15:58:59', '2023-07-07 09:45:06'),
(1331, 'Siti Rahmawati', 'Kia Picanto', 'Dina Wijaya', '919000000', '2023-06-05 02:12:40', '2023-07-07 09:45:06'),
(1332, 'Andi Prasetyo', 'Nissan Note', 'Budi Santoso', '656700000', '2023-06-02 11:50:13', '2023-07-07 09:45:06'),
(1333, 'Hendra Kurniawan', 'Audi A4', 'Bambang Harianto', '6400000000', '2023-06-01 16:55:40', '2023-07-07 09:45:06'),
(1334, 'Lina Wijaya', 'Daihatsu Sigra', 'Andi Gunawan', '229800000', '2023-05-10 04:57:47', '2023-07-07 09:45:06'),
(1335, 'Lina Wijaya', 'Datsun GO', 'Dina Wijaya', '338000000', '2023-06-10 18:08:51', '2023-07-07 09:45:06'),
(1336, 'Yudi Hartono', 'Mitsubishi L300', 'Dina Wijaya', '337000000', '2023-06-26 20:28:03', '2023-07-07 09:45:06'),
(1337, 'Lina Wijaya', 'Porsche Cayenne', 'Agus Suryanto', '890000000', '2023-04-19 00:46:20', '2023-07-07 09:45:06'),
(1338, 'Andi Prasetyo', 'Mazda 2', 'Siti Rahayu', '875000000', '2023-07-03 23:57:12', '2023-07-07 09:45:06'),
(1339, 'Rina Dewi', 'Toyota Agya', 'Rudi Hermawan', '130000000', '2023-04-28 03:36:00', '2023-07-07 09:45:06'),
(1340, 'Siti Rahmawati', 'Suzuki Carry', 'Rina Wahyuni', '1500000000', '2023-04-25 11:58:45', '2023-07-07 09:45:06'),
(1341, 'Lina Wijaya', 'Nissan Kicks', 'Maya Indriani', '1520000000', '2023-05-19 07:52:33', '2023-07-07 09:45:06'),
(1342, 'Hendra Kurniawan', 'Mitsubishi Eclipse Cross', 'Rudi Hermawan', '184000000', '2023-05-14 05:58:42', '2023-07-07 09:45:06'),
(1343, 'Dewi Indah', 'Honda Brio', 'Budi Santoso', '156900000', '2023-06-16 12:17:45', '2023-07-07 09:45:06'),
(1344, 'Hendra Kurniawan', 'Mercedes-Benz GLC-Class', 'Ahmad Hidayat', '355900000', '2023-06-27 15:07:02', '2023-07-07 09:45:06'),
(1345, 'Hendra Kurniawan', 'Honda City', 'Dewi Hartono', '875000000', '2023-04-30 21:00:18', '2023-07-07 09:45:06'),
(1346, 'Budi Santoso', 'Hyundai H1', 'Rika Puspita', '175900000', '2023-06-22 12:13:50', '2023-07-07 09:45:06'),
(1347, 'Desi Putri', 'Porsche Taycan', 'Agus Suryanto', '1060000000', '2023-04-24 18:33:27', '2023-07-07 09:45:06'),
(1348, 'Desi Putri', 'Toyota Yaris Cross', 'Rudi Hermawan', '487650000', '2023-05-11 01:04:58', '2023-07-07 09:45:06'),
(1349, 'Hendra Kurniawan', 'Mercedes-Benz A-Class Sedan', 'Rika Puspita', '130000000', '2023-06-11 07:20:30', '2023-07-07 09:45:06'),
(1350, 'Desi Putri', 'Daihatsu Ayla', 'Joko Susanto', '599000000', '2023-04-29 20:01:26', '2023-07-07 09:45:06'),
(1351, 'Ahmad Faisal', 'Toyota Avanza', 'Anita Nugraha', '919000000', '2023-07-05 14:20:05', '2023-07-07 09:45:06'),
(1352, 'Desi Putri', 'Toyota GR', 'Rudi Hermawan', '229900000', '2023-04-07 02:02:17', '2023-07-07 09:45:06'),
(1353, 'Budi Santoso', 'Mercedes-Benz Sprinter', 'Andi Gunawan', '448460000', '2023-07-03 05:10:37', '2023-07-07 09:45:06'),
(1354, 'Ahmad Faisal', 'Datsun Cross', 'Surya Putra', '489000000', '2023-04-02 16:47:32', '2023-07-07 09:45:06'),
(1355, 'Rina Dewi', 'Jeep Wrangler', 'Hendra Wijaya', '1500000000', '2023-05-05 18:28:18', '2023-07-07 09:45:06'),
(1356, 'Budi Santoso', 'Audi A4', 'Surya Putra', '300500000', '2023-04-25 02:23:12', '2023-07-07 09:45:06'),
(1357, 'Hendra Kurniawan', 'Lamborghini Huracan', 'Joko Susanto', '229900000', '2023-06-03 07:00:14', '2023-07-07 09:45:06'),
(1358, 'Dewi Indah', 'Mercedes-Benz GLB-Class', 'Bambang Harianto', '2100000000', '2023-06-21 23:14:33', '2023-07-07 09:45:06'),
(1359, 'Desi Putri', 'Hyundai Kona', 'Dewi Hartono', '1060000000', '2023-06-11 08:07:20', '2023-07-07 09:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin3000@gmail.com', 'admin2100', '$2y$10$qiDENjaD1IZvXGxMI4EJ3Opls8zSLrD6UF/eETMkttJFPAUdo4wPq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-07-07 01:52:50', '2023-07-07 01:52:50', NULL),
(2, 'admin@admin.com', 'admin12', '$2y$10$hs7tUUMMC0BtRbw8Qk8tjeUoXd8Y6KXb.x3zi0F14ZDjPAln0Yvn6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-07-07 10:00:30', '2023-07-07 10:00:30', NULL),
(3, 'admin1@admin.com', 'admin', '$2y$10$2P5dMg7MUKnuZ9O5bgPqh.0wt5lF2ljWWq4MlVuvS3sy8PHBnxsLm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salesperson`
--
ALTER TABLE `salesperson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1387;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
