-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 26, 2021 at 02:03 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yoorekka_hris`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_info`
--

CREATE TABLE `additional_info` (
  `additonal_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `tin` varchar(30) DEFAULT NULL,
  `sss` varchar(30) DEFAULT NULL,
  `philhealth` varchar(30) DEFAULT NULL,
  `pagibig` varchar(30) DEFAULT NULL,
  `height` varchar(30) DEFAULT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `dialect` varchar(255) DEFAULT NULL,
  `drivers_license` varchar(50) DEFAULT NULL,
  `date_issued_licensed_number` varchar(50) DEFAULT NULL,
  `special_skills` varchar(255) DEFAULT NULL,
  `illness` varchar(255) DEFAULT NULL,
  `own_bus` varchar(255) DEFAULT NULL,
  `nature_bus` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `license_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additional_info`
--

INSERT INTO `additional_info` (`additonal_id`, `personal_id`, `tin`, `sss`, `philhealth`, `pagibig`, `height`, `weight`, `dialect`, `drivers_license`, `date_issued_licensed_number`, `special_skills`, `illness`, `own_bus`, `nature_bus`, `profession`, `license_no`) VALUES
(1, 1, '307-362-709', '34-0715683-9', '21-050006084-5', '1070-0200-4264', '', '', 'FILIPINO, ENGLISH', '', '', '', '', '', '', '', ''),
(2, 2, '435-106-483-000', '04-2437885-5', '09-025523115-3', '1212-5099-7743', '', '', '', '', '', '', '', '', '', '', ''),
(3, 3, '447-842-097', '34-3815440-2', '01-025586774-7', '1211-2452-8921', '', '', 'FILIPINO, ENGLISH', '', '', '', '', '', '', '', ''),
(4, 4, '745-244-956', '34-8459681-0', '03-02643523-7', '1212-4988-4680', '', '', '', '', '', '', '', '', '', '', ''),
(5, 5, '345-061-905', '3468334302', '01-251162677-1', '1212-1346-2474', '', '', 'FILIPINO, ENGLISH', '', '', '', '', '', '', '', ''),
(6, 6, '217-352-462', '34-0312609-6', '03-050311892-7', '1080-0122-3397', '', '', '', '', '', '', '', '', '', '', ''),
(7, 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 9, '740-731-104', '34-8262617-7', '03-026416457-1', '1212-4717-5489', '', '', '', '', '', '', '', '', '', '', ''),
(9, 10, '746-933-175', '34-8430423-5', '02-027247745-1', '1212-5093-8761', '', '', '', '', '', '', '', '', '', '', ''),
(10, 11, '347-433-796', '34-7576319-9', '02-251568419-4', '1212-2857-0156', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `allowance`
--

CREATE TABLE `allowance` (
  `allowance_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `allowance_tmp`
--

CREATE TABLE `allowance_tmp` (
  `allowance_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `amendment`
--

CREATE TABLE `amendment` (
  `amendment_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL DEFAULT '0',
  `date_prepared` varchar(20) DEFAULT NULL,
  `date_effectivity` varchar(20) DEFAULT NULL,
  `change_reason` text,
  `remarks` text,
  `dept_head` int(11) NOT NULL DEFAULT '0',
  `general_manager` int(11) NOT NULL DEFAULT '0',
  `executive_director` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `draft` int(11) NOT NULL DEFAULT '0',
  `draft_date` varchar(20) DEFAULT NULL,
  `save_date` varchar(20) DEFAULT NULL,
  `saved_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `amendment_details`
--

CREATE TABLE `amendment_details` (
  `amend_det_id` int(11) NOT NULL,
  `amendment_id` int(11) NOT NULL DEFAULT '0',
  `change_name` varchar(50) DEFAULT NULL,
  `change_from` varchar(50) DEFAULT NULL,
  `change_to` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_unit`
--

CREATE TABLE `business_unit` (
  `bu_id` int(11) NOT NULL,
  `bu_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_unit`
--

INSERT INTO `business_unit` (`bu_id`, `bu_name`) VALUES
(2, 'ENERGREEN POWER INTER-ISLAND CORP'),
(3, 'MINDORO HARVEST ENERGY CO.'),
(4, 'SHOPPERS GUIDE MARKETING INC.'),
(5, 'CENTRAL NEGROS POWER RELIABILITY INC.'),
(6, 'STRESSCRETE POLE CORP.'),
(7, 'CALAPAN POWER GENERATION CORP.'),
(8, 'STA. ISABEL CPGC POWER CORP.');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `file_id` int(20) NOT NULL,
  `personal_id` int(20) NOT NULL,
  `cert_file` varchar(255) DEFAULT NULL,
  `cert_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_reference`
--

CREATE TABLE `character_reference` (
  `character_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `c_employer` varchar(50) DEFAULT NULL,
  `c_position` varchar(20) DEFAULT NULL,
  `c_relationship` varchar(50) DEFAULT NULL,
  `c_contact_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `character_reference`
--

INSERT INTO `character_reference` (`character_id`, `personal_id`, `c_name`, `c_employer`, `c_position`, `c_relationship`, `c_contact_no`) VALUES
(1, 1, 'ALEC ALLIAGE ADE', 'METROSTAR REALTY & DEVELOPMENT INC', 'SALES ADMIN HEAD', '', '09173916024');

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE `children` (
  `children_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `child_name` varchar(50) DEFAULT NULL,
  `child_bday` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `province_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `province_id`) VALUES
(1, 'Bangued', 1),
(2, 'Boliney', 1),
(3, 'Bucay', 1),
(4, 'Bucloc', 1),
(5, 'Daguioman', 1),
(6, 'Danglas', 1),
(7, 'Dolores', 1),
(8, 'La Paz', 1),
(9, 'Lacub', 1),
(10, 'Lagangilang', 1),
(11, 'Lagayan', 1),
(12, 'Langiden', 1),
(13, 'Licuan-Baay', 1),
(14, 'Luba', 1),
(15, 'Malibcong', 1),
(16, 'Manabo', 1),
(17, 'Penarrubia', 1),
(18, 'Pidigan', 1),
(19, 'Pilar', 1),
(20, 'Sallapadan', 1),
(21, 'San Isidro', 1),
(22, 'San Juan', 1),
(23, 'San Quintin', 1),
(24, 'Tayum', 1),
(25, 'Tineg', 1),
(26, 'Tubo', 1),
(27, 'Villaviciosa', 1),
(28, 'Butuan City', 2),
(29, 'Buenavista', 2),
(30, 'Cabadbaran', 2),
(31, 'Carmen', 2),
(32, 'Jabonga', 2),
(33, 'Kitcharao', 2),
(34, 'Las Nieves', 2),
(35, 'Magallanes', 2),
(36, 'Nasipit', 2),
(37, 'Remedios T. Romualdez', 2),
(38, 'Santiago', 2),
(39, 'Tubay', 2),
(40, 'Bayugan', 3),
(41, 'Bunawan', 3),
(42, 'Esperanza', 3),
(43, 'La Paz', 3),
(44, 'Loreto', 3),
(45, 'Prosperidad', 3),
(46, 'Rosario', 3),
(47, 'San Francisco', 3),
(48, 'San Luis', 3),
(49, 'Santa Josefa', 3),
(50, 'Sibagat', 3),
(51, 'Talacogon', 3),
(52, 'Trento', 3),
(53, 'Veruela', 3),
(54, 'Altavas', 4),
(55, 'Balete', 4),
(56, 'Banga', 4),
(57, 'Batan', 4),
(58, 'Buruanga', 4),
(59, 'Ibajay', 4),
(60, 'Kalibo', 4),
(61, 'Lezo', 4),
(62, 'Libacao', 4),
(63, 'Madalag', 4),
(64, 'Makato', 4),
(65, 'Malay', 4),
(66, 'Malinao', 4),
(67, 'Nabas', 4),
(68, 'New Washington', 4),
(69, 'Numancia', 4),
(70, 'Tangalan', 4),
(71, 'Legazpi City', 5),
(72, 'Ligao City', 5),
(73, 'Tabaco City', 5),
(74, 'Bacacay', 5),
(75, 'Camalig', 5),
(76, 'Daraga', 5),
(77, 'Guinobatan', 5),
(78, 'Jovellar', 5),
(79, 'Libon', 5),
(80, 'Malilipot', 5),
(81, 'Malinao', 5),
(82, 'Manito', 5),
(83, 'Oas', 5),
(84, 'Pio Duran', 5),
(85, 'Polangui', 5),
(86, 'Rapu-Rapu', 5),
(87, 'Santo Domingo', 5),
(88, 'Tiwi', 5),
(89, 'Anini-y', 6),
(90, 'Barbaza', 6),
(91, 'Belison', 6),
(92, 'Bugasong', 6),
(93, 'Caluya', 6),
(94, 'Culasi', 6),
(95, 'Hamtic', 6),
(96, 'Laua-an', 6),
(97, 'Libertad', 6),
(98, 'Pandan', 6),
(99, 'Patnongon', 6),
(100, 'San Jose', 6),
(101, 'San Remigio', 6),
(102, 'Sebaste', 6),
(103, 'Sibalom', 6),
(104, 'Tibiao', 6),
(105, 'Tobias Fornier', 6),
(106, 'Valderrama', 6),
(107, 'Calanasan', 7),
(108, 'Conner', 7),
(109, 'Flora', 7),
(110, 'Kabugao', 7),
(111, 'Luna', 7),
(112, 'Pudtol', 7),
(113, 'Santa Marcela', 7),
(114, 'Baler', 8),
(115, 'Casiguran', 8),
(116, 'Dilasag', 8),
(117, 'Dinalungan', 8),
(118, 'Dingalan', 8),
(119, 'Dipaculao', 8),
(120, 'Maria Aurora', 8),
(121, 'San Luis', 8),
(122, 'Isabela City', 9),
(123, 'Akbar', 9),
(124, 'Al-Barka', 9),
(125, 'Hadji Mohammad Ajul', 9),
(126, 'Hadji Muhtamad', 9),
(127, 'Lamitan', 9),
(128, 'Lantawan', 9),
(129, 'Maluso', 9),
(130, 'Sumisip', 9),
(131, 'Tabuan-Lasa', 9),
(132, 'Tipo-Tipo', 9),
(133, 'Tuburan', 9),
(134, 'Ungkaya Pukan', 9),
(135, 'Balanga City', 10),
(136, 'Abucay', 10),
(137, 'Bagac', 10),
(138, 'Dinalupihan', 10),
(139, 'Hermosa', 10),
(140, 'Limay', 10),
(141, 'Mariveles', 10),
(142, 'Morong', 10),
(143, 'Orani', 10),
(144, 'Orion', 10),
(145, 'Pilar', 10),
(146, 'Samal', 10),
(147, 'Basco', 11),
(148, 'Itbayat', 11),
(149, 'Ivana', 11),
(150, 'Mahatao', 11),
(151, 'Sabtang', 11),
(152, 'Uyugan', 11),
(153, 'Batangas City', 12),
(154, 'Lipa City', 12),
(155, 'Tanauan City', 12),
(156, 'Agoncillo', 12),
(157, 'Alitagtag', 12),
(158, 'Balayan', 12),
(159, 'Balete', 12),
(160, 'Bauan', 12),
(161, 'Calaca', 12),
(162, 'Calatagan', 12),
(163, 'Cuenca', 12),
(164, 'Ibaan', 12),
(165, 'Laurel', 12),
(166, 'Lemery', 12),
(167, 'Lian', 12),
(168, 'Lobo', 12),
(169, 'Mabini', 12),
(170, 'Malvar', 12),
(171, 'Mataas na Kahoy', 12),
(172, 'Nasugbu', 12),
(173, 'Padre Garcia', 12),
(174, 'Rosario', 12),
(175, 'San Jose', 12),
(176, 'San Juan', 12),
(177, 'San Luis', 12),
(178, 'San Nicolas', 12),
(179, 'San Pascual', 12),
(180, 'Santa Teresita', 12),
(181, 'Santo Tomas', 12),
(182, 'Taal', 12),
(183, 'Talisay', 12),
(184, 'Taysan', 12),
(185, 'Tingloy', 12),
(186, 'Tuy', 12),
(187, 'Baguio City', 13),
(188, 'Atok', 13),
(189, 'Bakun', 13),
(190, 'Bokod', 13),
(191, 'Buguias', 13),
(192, 'Itogon', 13),
(193, 'Kabayan', 13),
(194, 'Kapangan', 13),
(195, 'Kibungan', 13),
(196, 'La Trinidad', 13),
(197, 'Mankayan', 13),
(198, 'Sablan', 13),
(199, 'Tuba', 13),
(200, 'Tublay', 13),
(201, 'Almeria', 14),
(202, 'Biliran', 14),
(203, 'Cabucgayan', 14),
(204, 'Caibiran', 14),
(205, 'Culaba', 14),
(206, 'Kawayan', 14),
(207, 'Maripipi', 14),
(208, 'Naval', 14),
(209, 'Tagbilaran City', 15),
(210, 'Alburquerque', 15),
(211, 'Alicia', 15),
(212, 'Anda', 15),
(213, 'Antequera', 15),
(214, 'Baclayon', 15),
(215, 'Balilihan', 15),
(216, 'Batuan', 15),
(217, 'Bien Unido', 15),
(218, 'Bilar', 15),
(219, 'Buenavista', 15),
(220, 'Calape', 15),
(221, 'Candijay', 15),
(222, 'Carmen', 15),
(223, 'Catigbian', 15),
(224, 'Clarin', 15),
(225, 'Corella', 15),
(226, 'Cortes', 15),
(227, 'Dagohoy', 15),
(228, 'Danao', 15),
(229, 'Dauis', 15),
(230, 'Dimiao', 15),
(231, 'Duero', 15),
(232, 'Garcia Hernandez', 15),
(233, 'Getafe', 15),
(234, 'Guindulman', 15),
(235, 'Inabanga', 15),
(236, 'Jagna', 15),
(237, 'Lila', 15),
(238, 'Loay', 15),
(239, 'Loboc', 15),
(240, 'Loon', 15),
(241, 'Mabini', 15),
(242, 'Maribojoc', 15),
(243, 'Panglao', 15),
(244, 'Pilar', 15),
(245, 'President Carlos P. Garcia', 15),
(246, 'Sagbayan', 15),
(247, 'San Isidro', 15),
(248, 'San Miguel', 15),
(249, 'Sevilla', 15),
(250, 'Sierra Bullones', 15),
(251, 'Sikatuna', 15),
(252, 'Talibon', 15),
(253, 'Trinidad', 15),
(254, 'Tubigon', 15),
(255, 'Ubay', 15),
(256, 'Valencia', 15),
(257, 'Malaybalay City', 16),
(258, 'Valencia City', 16),
(259, 'Baungon', 16),
(260, 'Cabanglasan', 16),
(261, 'Damulog', 16),
(262, 'Dangcagan', 16),
(263, 'Don Carlos', 16),
(264, 'Impasug-ong', 16),
(265, 'Kadingilan', 16),
(266, 'Kalilangan', 16),
(267, 'Kibawe', 16),
(268, 'Kitaotao', 16),
(269, 'Lantapan', 16),
(270, 'Libona', 16),
(271, 'Malitbog', 16),
(272, 'Manolo Fortich', 16),
(273, 'Maramag', 16),
(274, 'Pangantucan', 16),
(275, 'Quezon', 16),
(276, 'San Fernando', 16),
(277, 'Sumilao', 16),
(278, 'Talakag', 16),
(279, 'Malolos City', 17),
(280, 'Meycauayan City', 17),
(281, 'San Jose del Monte City', 17),
(282, 'Angat', 17),
(283, 'Balagtas', 17),
(284, 'Baliuag', 17),
(285, 'Bocaue', 17),
(286, 'Bulacan', 17),
(287, 'Bustos', 17),
(288, 'Calumpit', 17),
(289, 'Do?a Remedios Trinidad', 17),
(290, 'Guiguinto', 17),
(291, 'Hagonoy', 17),
(292, 'Marilao', 17),
(293, 'Norzagaray', 17),
(294, 'Obando', 17),
(295, 'Pandi', 17),
(296, 'Paombong', 17),
(297, 'Plaridel', 17),
(298, 'Pulilan', 17),
(299, 'San Ildefonso', 17),
(300, 'San Miguel', 17),
(301, 'San Rafael', 17),
(302, 'Santa Maria', 17),
(303, 'Tuguegarao City', 18),
(304, 'Abulug', 18),
(305, 'Alcala', 18),
(306, 'Allacapan', 18),
(307, 'Amulung', 18),
(308, 'Aparri', 18),
(309, 'Baggao', 18),
(310, 'Ballesteros', 18),
(311, 'Buguey', 18),
(312, 'Calayan', 18),
(313, 'Camalaniugan', 18),
(314, 'Claveria', 18),
(315, 'Enrile', 18),
(316, 'Gattaran', 18),
(317, 'Gonzaga', 18),
(318, 'Iguig', 18),
(319, 'Lal-lo', 18),
(320, 'Lasam', 18),
(321, 'Pamplona', 18),
(322, 'Penablanca', 18),
(323, 'Piat', 18),
(324, 'Rizal', 18),
(325, 'Sanchez-Mira', 18),
(326, 'Santa Ana', 18),
(327, 'Santa Praxedes', 18),
(328, 'Santa Teresita', 18),
(329, 'Santo Ni', 18),
(330, 'Solana', 18),
(331, 'Tuao', 18),
(332, 'Basud', 19),
(333, 'Capalonga', 19),
(334, 'Daet', 19),
(335, 'Jose Panganiban', 19),
(336, 'Labo', 19),
(337, 'Mercedes', 19),
(338, 'Paracale', 19),
(339, 'San Lorenzo Ruiz', 19),
(340, 'San Vicente', 19),
(341, 'Santa Elena', 19),
(342, 'Talisay', 19),
(343, 'Vinzons', 19),
(344, 'Iriga City', 20),
(345, 'Naga City', 20),
(346, 'Baao', 20),
(347, 'Balatan', 20),
(348, 'Bato', 20),
(349, 'Bombon', 20),
(350, 'Buhi', 20),
(351, 'Bula', 20),
(352, 'Cabusao', 20),
(353, 'Calabanga', 20),
(354, 'Camaligan', 20),
(355, 'Canaman', 20),
(356, 'Caramoan', 20),
(357, 'Del Gallego', 20),
(358, 'Gainza', 20),
(359, 'Garchitorena', 20),
(360, 'Goa', 20),
(361, 'Lagonoy', 20),
(362, 'Libmanan', 20),
(363, 'Lupi', 20),
(364, 'Magarao', 20),
(365, 'Milaor', 20),
(366, 'Minalabac', 20),
(367, 'Nabua', 20),
(368, 'Ocampo', 20),
(369, 'Pamplona', 20),
(370, 'Pasacao', 20),
(371, 'Pili', 20),
(372, 'Presentacion', 20),
(373, 'Ragay', 20),
(374, 'Sag', 20),
(375, 'San Fernando', 20),
(376, 'San Jose', 20),
(377, 'Sipocot', 20),
(378, 'Siruma', 20),
(379, 'Tigaon', 20),
(380, 'Tinambac', 20),
(381, 'Catarman', 21),
(382, 'Guinsiliban', 21),
(383, 'Mahinog', 21),
(384, 'Mambajao', 21),
(385, 'Sagay', 21),
(386, 'Roxas City', 22),
(387, 'Cuartero', 22),
(388, 'Dao', 22),
(389, 'Dumalag', 22),
(390, 'Dumarao', 22),
(391, 'Ivisan', 22),
(392, 'Jamindan', 22),
(393, 'Ma-ayon', 22),
(394, 'Mambusao', 22),
(395, 'Panay', 22),
(396, 'Panitan', 22),
(397, 'Pilar', 22),
(398, 'Pontevedra', 22),
(399, 'President Roxas', 22),
(400, 'Sapi-an', 22),
(401, 'Sigma', 22),
(402, 'Tapaz', 22),
(403, 'Bagamanoc', 23),
(404, 'Baras', 23),
(405, 'Bato', 23),
(406, 'Caramoran', 23),
(407, 'Gigmoto', 23),
(408, 'Pandan', 23),
(409, 'Panganiban', 23),
(410, 'San Andres', 23),
(411, 'San Miguel', 23),
(412, 'Viga', 23),
(413, 'Virac', 23),
(414, 'Cavite City', 24),
(415, 'Dasmari?as City', 24),
(416, 'Tagaytay City', 24),
(417, 'Trece Martires City', 24),
(418, 'Alfonso', 24),
(419, 'Amadeo', 24),
(420, 'Bacoor', 24),
(421, 'Carmona', 24),
(422, 'General Mariano Alvarez', 24),
(423, 'General Emilio Aguinaldo', 24),
(424, 'General Trias', 24),
(425, 'Imus', 24),
(426, 'Indang', 24),
(427, 'Kawit', 24),
(428, 'Magallanes', 24),
(429, 'Maragondon', 24),
(430, 'Mendez', 24),
(431, 'Naic', 24),
(432, 'Noveleta', 24),
(433, 'Rosario', 24),
(434, 'Silang', 24),
(435, 'Tanza', 24),
(436, 'Ternate', 24),
(437, 'Bogo City', 25),
(438, 'Cebu City', 25),
(439, 'Carcar City', 25),
(440, 'Danao City', 25),
(441, 'Lapu-Lapu City', 25),
(442, 'Mandaue City', 25),
(443, 'Naga City', 25),
(444, 'Talisay City', 25),
(445, 'Toledo City', 25),
(446, 'Alcantara', 25),
(447, 'Alcoy', 25),
(448, 'Alegria', 25),
(449, 'Aloguinsan', 25),
(450, 'Argao', 25),
(451, 'Asturias', 25),
(452, 'Badian', 25),
(453, 'Balamban', 25),
(454, 'Bantayan', 25),
(455, 'Barili', 25),
(456, 'Boljoon', 25),
(457, 'Borbon', 25),
(458, 'Carmen', 25),
(459, 'Catmon', 25),
(460, 'Compostela', 25),
(461, 'Consolacion', 25),
(462, 'Cordoba', 25),
(463, 'Daanbantayan', 25),
(464, 'Dalaguete', 25),
(465, 'Dumanjug', 25),
(466, 'Ginatilan', 25),
(467, 'Liloan', 25),
(468, 'Madridejos', 25),
(469, 'Malabuyoc', 25),
(470, 'Medellin', 25),
(471, 'Minglanilla', 25),
(472, 'Moalboal', 25),
(473, 'Oslob', 25),
(474, 'Pilar', 25),
(475, 'Pinamungahan', 25),
(476, 'Poro', 25),
(477, 'Ronda', 25),
(478, 'Samboan', 25),
(479, 'San Fernando', 25),
(480, 'San Francisco', 25),
(481, 'San Remigio', 25),
(482, 'Santa Fe', 25),
(483, 'Santander', 25),
(484, 'Sibonga', 25),
(485, 'Sogod', 25),
(486, 'Tabogon', 25),
(487, 'Tabuelan', 25),
(488, 'Tuburan', 25),
(489, 'Tudela', 25),
(490, 'Compostela', 26),
(491, 'Laak', 26),
(492, 'Mabini', 26),
(493, 'Maco', 26),
(494, 'Maragusan', 26),
(495, 'Mawab', 26),
(496, 'Monkayo', 26),
(497, 'Montevista', 26),
(498, 'Nabunturan', 26),
(499, 'New Bataan', 26),
(500, 'Pantukan', 26),
(501, 'Kidapawan City', 27),
(502, 'Alamada', 27),
(503, 'Aleosan', 27),
(504, 'Antipas', 27),
(505, 'Arakan', 27),
(506, 'Banisilan', 27),
(507, 'Carmen', 27),
(508, 'Kabacan', 27),
(509, 'Libungan', 27),
(510, 'M\'lang', 27),
(511, 'Magpet', 27),
(512, 'Makilala', 27),
(513, 'Matalam', 27),
(514, 'Midsayap', 27),
(515, 'Pigkawayan', 27),
(516, 'Pikit', 27),
(517, 'President Roxas', 27),
(518, 'Tulunan', 27),
(519, 'Panabo City', 28),
(520, 'Island Garden City of Samal', 28),
(521, 'Tagum City', 28),
(522, 'Asuncion', 28),
(523, 'Braulio E. Dujali', 28),
(524, 'Carmen', 28),
(525, 'Kapalong', 28),
(526, 'New Corella', 28),
(527, 'San Isidro', 28),
(528, 'Santo Tomas', 28),
(529, 'Talaingod', 28),
(530, 'Davao City', 29),
(531, 'Digos City', 29),
(532, 'Bansalan', 29),
(533, 'Don Marcelino', 29),
(534, 'Hagonoy', 29),
(535, 'Jose Abad Santos', 29),
(536, 'Kiblawan', 29),
(537, 'Magsaysay', 29),
(538, 'Malalag', 29),
(539, 'Malita', 29),
(540, 'Matanao', 29),
(541, 'Padada', 29),
(542, 'Santa Cruz', 29),
(543, 'Santa Maria', 29),
(544, 'Sarangani', 29),
(545, 'Sulop', 29),
(546, 'Mati City', 30),
(547, 'Baganga', 30),
(548, 'Banaybanay', 30),
(549, 'Boston', 30),
(550, 'Caraga', 30),
(551, 'Cateel', 30),
(552, 'Governor Generoso', 30),
(553, 'Lupon', 30),
(554, 'Manay', 30),
(555, 'San Isidro', 30),
(556, 'Tarragona', 30),
(557, 'Arteche', 31),
(558, 'Balangiga', 31),
(559, 'Balangkayan', 31),
(560, 'Borongan', 31),
(561, 'Can-avid', 31),
(562, 'Dolores', 31),
(563, 'General MacArthur', 31),
(564, 'Giporlos', 31),
(565, 'Guiuan', 31),
(566, 'Hernani', 31),
(567, 'Jipapad', 31),
(568, 'Lawaan', 31),
(569, 'Llorente', 31),
(570, 'Maslog', 31),
(571, 'Maydolong', 31),
(572, 'Mercedes', 31),
(573, 'Oras', 31),
(574, 'Quinapondan', 31),
(575, 'Salcedo', 31),
(576, 'San Julian', 31),
(577, 'San Policarpo', 31),
(578, 'Sulat', 31),
(579, 'Taft', 31),
(580, 'Buenavista', 32),
(581, 'Jordan', 32),
(582, 'Nueva Valencia', 32),
(583, 'San Lorenzo', 32),
(584, 'Sibunag', 32),
(585, 'Aguinaldo', 33),
(586, 'Alfonso Lista', 33),
(587, 'Asipulo', 33),
(588, 'Banaue', 33),
(589, 'Hingyon', 33),
(590, 'Hungduan', 33),
(591, 'Kiangan', 33),
(592, 'Lagawe', 33),
(593, 'Lamut', 33),
(594, 'Mayoyao', 33),
(595, 'Tinoc', 33),
(596, 'Batac City', 34),
(597, 'Laoag City', 34),
(598, 'Adams', 34),
(599, 'Bacarra', 34),
(600, 'Badoc', 34),
(601, 'Bangui', 34),
(602, 'Banna', 34),
(603, 'Burgos', 34),
(604, 'Carasi', 34),
(605, 'Currimao', 34),
(606, 'Dingras', 34),
(607, 'Dumalneg', 34),
(608, 'Marcos', 34),
(609, 'Nueva Era', 34),
(610, 'Pagudpud', 34),
(611, 'Paoay', 34),
(612, 'Pasuquin', 34),
(613, 'Piddig', 34),
(614, 'Pinili', 34),
(615, 'San Nicolas', 34),
(616, 'Sarrat', 34),
(617, 'Solsona', 34),
(618, 'Vintar', 34),
(619, 'Candon City', 35),
(620, 'Vigan City', 35),
(621, 'Alilem', 35),
(622, 'Banayoyo', 35),
(623, 'Bantay', 35),
(624, 'Burgos', 35),
(625, 'Cabugao', 35),
(626, 'Caoayan', 35),
(627, 'Cervantes', 35),
(628, 'Galimuyod', 35),
(629, 'Gregorio Del Pilar', 35),
(630, 'Lidlidda', 35),
(631, 'Magsingal', 35),
(632, 'Nagbukel', 35),
(633, 'Narvacan', 35),
(634, 'Quirino', 35),
(635, 'Salcedo', 35),
(636, 'San Emilio', 35),
(637, 'San Esteban', 35),
(638, 'San Ildefonso', 35),
(639, 'San Juan', 35),
(640, 'San Vicente', 35),
(641, 'Santa', 35),
(642, 'Santa Catalina', 35),
(643, 'Santa Cruz', 35),
(644, 'Santa Lucia', 35),
(645, 'Santa Maria', 35),
(646, 'Santiago', 35),
(647, 'Santo Domingo', 35),
(648, 'Sigay', 35),
(649, 'Sinait', 35),
(650, 'Sugpon', 35),
(651, 'Suyo', 35),
(652, 'Tagudin', 35),
(653, 'Iloilo City', 36),
(654, 'Passi City', 36),
(655, 'Ajuy', 36),
(656, 'Alimodian', 36),
(657, 'Anilao', 36),
(658, 'Badiangan', 36),
(659, 'Balasan', 36),
(660, 'Banate', 36),
(661, 'Barotac Nuevo', 36),
(662, 'Barotac Viejo', 36),
(663, 'Batad', 36),
(664, 'Bingawan', 36),
(665, 'Cabatuan', 36),
(666, 'Calinog', 36),
(667, 'Carles', 36),
(668, 'Concepcion', 36),
(669, 'Dingle', 36),
(670, 'Due', 36),
(671, 'Dumangas', 36),
(672, 'Estancia', 36),
(673, 'Guimbal', 36),
(674, 'Igbaras', 36),
(675, 'Janiuay', 36),
(676, 'Lambunao', 36),
(677, 'Leganes', 36),
(678, 'Lemery', 36),
(679, 'Leon', 36),
(680, 'Maasin', 36),
(681, 'Miagao', 36),
(682, 'Mina', 36),
(683, 'New Lucena', 36),
(684, 'Oton', 36),
(685, 'Pavia', 36),
(686, 'Pototan', 36),
(687, 'San Dionisio', 36),
(688, 'San Enrique', 36),
(689, 'San Joaquin', 36),
(690, 'San Miguel', 36),
(691, 'San Rafael', 36),
(692, 'Santa Barbara', 36),
(693, 'Sara', 36),
(694, 'Tigbauan', 36),
(695, 'Tubungan', 36),
(696, 'Zarraga', 36),
(697, 'Cauayan City', 37),
(698, 'Santiago City', 37),
(699, 'Alicia', 37),
(700, 'Angadanan', 37),
(701, 'Aurora', 37),
(702, 'Benito Soliven', 37),
(703, 'Burgos', 37),
(704, 'Cabagan', 37),
(705, 'Cabatuan', 37),
(706, 'Cordon', 37),
(707, 'Delfin Albano', 37),
(708, 'Dinapigue', 37),
(709, 'Divilacan', 37),
(710, 'Echague', 37),
(711, 'Gamu', 37),
(712, 'Ilagan', 37),
(713, 'Jones', 37),
(714, 'Luna', 37),
(715, 'Maconacon', 37),
(716, 'Mallig', 37),
(717, 'Naguilian', 37),
(718, 'Palanan', 37),
(719, 'Quezon', 37),
(720, 'Quirino', 37),
(721, 'Ramon', 37),
(722, 'Reina Mercedes', 37),
(723, 'Roxas', 37),
(724, 'San Agustin', 37),
(725, 'San Guillermo', 37),
(726, 'San Isidro', 37),
(727, 'San Manuel', 37),
(728, 'San Mariano', 37),
(729, 'San Mateo', 37),
(730, 'San Pablo', 37),
(731, 'Santa Maria', 37),
(732, 'Santo Tomas', 37),
(733, 'Tumauini', 37),
(734, 'Tabuk', 38),
(735, 'Balbalan', 38),
(736, 'Lubuagan', 38),
(737, 'Pasil', 38),
(738, 'Pinukpuk', 38),
(739, 'Rizal', 38),
(740, 'Tanudan', 38),
(741, 'Tinglayan', 38),
(742, 'San Fernando City', 39),
(743, 'Agoo', 39),
(744, 'Aringay', 39),
(745, 'Bacnotan', 39),
(746, 'Bagulin', 39),
(747, 'Balaoan', 39),
(748, 'Bangar', 39),
(749, 'Bauang', 39),
(750, 'Burgos', 39),
(751, 'Caba', 39),
(752, 'Luna', 39),
(753, 'Naguilian', 39),
(754, 'Pugo', 39),
(755, 'Rosario', 39),
(756, 'San Gabriel', 39),
(757, 'San Juan', 39),
(758, 'Santo Tomas', 39),
(759, 'Santol', 39),
(760, 'Sudipen', 39),
(761, 'Tubao', 39),
(762, 'Bi?an City', 40),
(763, 'Calamba City', 40),
(764, 'San Pablo City', 40),
(765, 'Santa Rosa City', 40),
(766, 'Alaminos', 40),
(767, 'Bay', 40),
(768, 'Cabuyao', 40),
(769, 'Calauan', 40),
(770, 'Cavinti', 40),
(771, 'Famy', 40),
(772, 'Kalayaan', 40),
(773, 'Liliw', 40),
(774, 'Los Ba', 40),
(775, 'Luisiana', 40),
(776, 'Lumban', 40),
(777, 'Mabitac', 40),
(778, 'Magdalena', 40),
(779, 'Majayjay', 40),
(780, 'Nagcarlan', 40),
(781, 'Paete', 40),
(782, 'Pagsanjan', 40),
(783, 'Pakil', 40),
(784, 'Pangil', 40),
(785, 'Pila', 40),
(786, 'Rizal', 40),
(787, 'San Pedro', 40),
(788, 'Santa Cruz', 40),
(789, 'Santa Maria', 40),
(790, 'Siniloan', 40),
(791, 'Victoria', 40),
(792, 'Iligan City', 41),
(793, 'Bacolod', 41),
(794, 'Baloi', 41),
(795, 'Baroy', 41),
(796, 'Kapatagan', 41),
(797, 'Kauswagan', 41),
(798, 'Kolambugan', 41),
(799, 'Lala', 41),
(800, 'Linamon', 41),
(801, 'Magsaysay', 41),
(802, 'Maigo', 41),
(803, 'Matungao', 41),
(804, 'Munai', 41),
(805, 'Nunungan', 41),
(806, 'Pantao Ragat', 41),
(807, 'Pantar', 41),
(808, 'Poona Piagapo', 41),
(809, 'Salvador', 41),
(810, 'Sapad', 41),
(811, 'Sultan Naga Dimaporo', 41),
(812, 'Tagoloan', 41),
(813, 'Tangcal', 41),
(814, 'Tubod', 41),
(815, 'Marawi City', 42),
(816, 'Bacolod-Kalawi', 42),
(817, 'Balabagan', 42),
(818, 'Balindong', 42),
(819, 'Bayang', 42),
(820, 'Binidayan', 42),
(821, 'Buadiposo-Buntong', 42),
(822, 'Bubong', 42),
(823, 'Bumbaran', 42),
(824, 'Butig', 42),
(825, 'Calanogas', 42),
(826, 'Ditsaan-Ramain', 42),
(827, 'Ganassi', 42),
(828, 'Kapai', 42),
(829, 'Kapatagan', 42),
(830, 'Lumba-Bayabao', 42),
(831, 'Lumbaca-Unayan', 42),
(832, 'Lumbatan', 42),
(833, 'Lumbayanague', 42),
(834, 'Madalum', 42),
(835, 'Madamba', 42),
(836, 'Maguing', 42),
(837, 'Malabang', 42),
(838, 'Marantao', 42),
(839, 'Marogong', 42),
(840, 'Masiu', 42),
(841, 'Mulondo', 42),
(842, 'Pagayawan', 42),
(843, 'Piagapo', 42),
(844, 'Poona Bayabao', 42),
(845, 'Pualas', 42),
(846, 'Saguiaran', 42),
(847, 'Sultan Dumalondong', 42),
(848, 'Picong', 42),
(849, 'Tagoloan II', 42),
(850, 'Tamparan', 42),
(851, 'Taraka', 42),
(852, 'Tubaran', 42),
(853, 'Tugaya', 42),
(854, 'Wao', 42),
(855, 'Ormoc City', 43),
(856, 'Tacloban City', 43),
(857, 'Abuyog', 43),
(858, 'Alangalang', 43),
(859, 'Albuera', 43),
(860, 'Babatngon', 43),
(861, 'Barugo', 43),
(862, 'Bato', 43),
(863, 'Baybay', 43),
(864, 'Burauen', 43),
(865, 'Calubian', 43),
(866, 'Capoocan', 43),
(867, 'Carigara', 43),
(868, 'Dagami', 43),
(869, 'Dulag', 43),
(870, 'Hilongos', 43),
(871, 'Hindang', 43),
(872, 'Inopacan', 43),
(873, 'Isabel', 43),
(874, 'Jaro', 43),
(875, 'Javier', 43),
(876, 'Julita', 43),
(877, 'Kananga', 43),
(878, 'La Paz', 43),
(879, 'Leyte', 43),
(880, 'Liloan', 43),
(881, 'MacArthur', 43),
(882, 'Mahaplag', 43),
(883, 'Matag-ob', 43),
(884, 'Matalom', 43),
(885, 'Mayorga', 43),
(886, 'Merida', 43),
(887, 'Palo', 43),
(888, 'Palompon', 43),
(889, 'Pastrana', 43),
(890, 'San Isidro', 43),
(891, 'San Miguel', 43),
(892, 'Santa Fe', 43),
(893, 'Sogod', 43),
(894, 'Tabango', 43),
(895, 'Tabontabon', 43),
(896, 'Tanauan', 43),
(897, 'Tolosa', 43),
(898, 'Tunga', 43),
(899, 'Villaba', 43),
(900, 'Cotabato City', 44),
(901, 'Ampatuan', 44),
(902, 'Barira', 44),
(903, 'Buldon', 44),
(904, 'Buluan', 44),
(905, 'Datu Abdullah Sangki', 44),
(906, 'Datu Anggal Midtimbang', 44),
(907, 'Datu Blah T. Sinsuat', 44),
(908, 'Datu Hoffer Ampatuan', 44),
(909, 'Datu Montawal', 44),
(910, 'Datu Odin Sinsuat', 44),
(911, 'Datu Paglas', 44),
(912, 'Datu Piang', 44),
(913, 'Datu Salibo', 44),
(914, 'Datu Saudi-Ampatuan', 44),
(915, 'Datu Unsay', 44),
(916, 'General Salipada K. Pendatun', 44),
(917, 'Guindulungan', 44),
(918, 'Kabuntalan', 44),
(919, 'Mamasapano', 44),
(920, 'Mangudadatu', 44),
(921, 'Matanog', 44),
(922, 'Northern Kabuntalan', 44),
(923, 'Pagalungan', 44),
(924, 'Paglat', 44),
(925, 'Pandag', 44),
(926, 'Parang', 44),
(927, 'Rajah Buayan', 44),
(928, 'Shariff Aguak', 44),
(929, 'Shariff Saydona Mustapha', 44),
(930, 'South Upi', 44),
(931, 'Sultan Kudarat', 44),
(932, 'Sultan Mastura', 44),
(933, 'Sultan sa Barongis', 44),
(934, 'Talayan', 44),
(935, 'Talitay', 44),
(936, 'Upi', 44),
(937, 'Boac', 45),
(938, 'Buenavista', 45),
(939, 'Gasan', 45),
(940, 'Mogpog', 45),
(941, 'Santa Cruz', 45),
(942, 'Torrijos', 45),
(943, 'Masbate City', 46),
(944, 'Aroroy', 46),
(945, 'Baleno', 46),
(946, 'Balud', 46),
(947, 'Batuan', 46),
(948, 'Cataingan', 46),
(949, 'Cawayan', 46),
(950, 'Claveria', 46),
(951, 'Dimasalang', 46),
(952, 'Esperanza', 46),
(953, 'Mandaon', 46),
(954, 'Milagros', 46),
(955, 'Mobo', 46),
(956, 'Monreal', 46),
(957, 'Palanas', 46),
(958, 'Pio V. Corpuz', 46),
(959, 'Placer', 46),
(960, 'San Fernando', 46),
(961, 'San Jacinto', 46),
(962, 'San Pascual', 46),
(963, 'Uson', 46),
(964, 'Caloocan', 47),
(965, 'Las Pi', 47),
(966, 'Makati', 47),
(967, 'Malabon', 47),
(968, 'Mandaluyong', 47),
(969, 'Manila', 47),
(970, 'Marikina', 47),
(971, 'Muntinlupa', 47),
(972, 'Navotas', 47),
(973, 'Para?aque', 47),
(974, 'Pasay', 47),
(975, 'Pasig', 47),
(976, 'Quezon City', 47),
(977, 'San Juan City', 47),
(978, 'Taguig', 47),
(979, 'Valenzuela City', 47),
(980, 'Pateros', 47),
(981, 'Oroquieta City', 48),
(982, 'Ozamiz City', 48),
(983, 'Tangub City', 48),
(984, 'Aloran', 48),
(985, 'Baliangao', 48),
(986, 'Bonifacio', 48),
(987, 'Calamba', 48),
(988, 'Clarin', 48),
(989, 'Concepcion', 48),
(990, 'Don Victoriano Chiongbian', 48),
(991, 'Jimenez', 48),
(992, 'Lopez Jaena', 48),
(993, 'Panaon', 48),
(994, 'Plaridel', 48),
(995, 'Sapang Dalaga', 48),
(996, 'Sinacaban', 48),
(997, 'Tudela', 48),
(998, 'Cagayan de Oro', 49),
(999, 'Gingoog City', 49),
(1000, 'Alubijid', 49),
(1001, 'Balingasag', 49),
(1002, 'Balingoan', 49),
(1003, 'Binuangan', 49),
(1004, 'Claveria', 49),
(1005, 'El Salvador', 49),
(1006, 'Gitagum', 49),
(1007, 'Initao', 49),
(1008, 'Jasaan', 49),
(1009, 'Kinoguitan', 49),
(1010, 'Lagonglong', 49),
(1011, 'Laguindingan', 49),
(1012, 'Libertad', 49),
(1013, 'Lugait', 49),
(1014, 'Magsaysay', 49),
(1015, 'Manticao', 49),
(1016, 'Medina', 49),
(1017, 'Naawan', 49),
(1018, 'Opol', 49),
(1019, 'Salay', 49),
(1020, 'Sugbongcogon', 49),
(1021, 'Tagoloan', 49),
(1022, 'Talisayan', 49),
(1023, 'Villanueva', 49),
(1024, 'Barlig', 50),
(1025, 'Bauko', 50),
(1026, 'Besao', 50),
(1027, 'Bontoc', 50),
(1028, 'Natonin', 50),
(1029, 'Paracelis', 50),
(1030, 'Sabangan', 50),
(1031, 'Sadanga', 50),
(1032, 'Sagada', 50),
(1033, 'Tadian', 50),
(1034, 'Bacolod City', 51),
(1035, 'Bago City', 51),
(1036, 'Cadiz City', 51),
(1037, 'Escalante City', 51),
(1038, 'Himamaylan City', 51),
(1039, 'Kabankalan City', 51),
(1040, 'La Carlota City', 51),
(1041, 'Sagay City', 51),
(1042, 'San Carlos City', 51),
(1043, 'Silay City', 51),
(1044, 'Sipalay City', 51),
(1045, 'Talisay City', 51),
(1046, 'Victorias City', 51),
(1047, 'Binalbagan', 51),
(1048, 'Calatrava', 51),
(1049, 'Candoni', 51),
(1050, 'Cauayan', 51),
(1051, 'Enrique B. Magalona', 51),
(1052, 'Hinigaran', 51),
(1053, 'Hinoba-an', 51),
(1054, 'Ilog', 51),
(1055, 'Isabela', 51),
(1056, 'La Castellana', 51),
(1057, 'Manapla', 51),
(1058, 'Moises Padilla', 51),
(1059, 'Murcia', 51),
(1060, 'Pontevedra', 51),
(1061, 'Pulupandan', 51),
(1062, 'Salvador Benedicto', 51),
(1063, 'San Enrique', 51),
(1064, 'Toboso', 51),
(1065, 'Valladolid', 51),
(1066, 'Bais City', 52),
(1067, 'Bayawan City', 52),
(1068, 'Canlaon City', 52),
(1069, 'Guihulngan City', 52),
(1070, 'Dumaguete City', 52),
(1071, 'Tanjay City', 52),
(1072, 'Amlan', 52),
(1073, 'Ayungon', 52),
(1074, 'Bacong', 52),
(1075, 'Basay', 52),
(1076, 'Bindoy', 52),
(1077, 'Dauin', 52),
(1078, 'Jimalalud', 52),
(1079, 'La Libertad', 52),
(1080, 'Mabinay', 52),
(1081, 'Manjuyod', 52),
(1082, 'Pamplona', 52),
(1083, 'San Jose', 52),
(1084, 'Santa Catalina', 52),
(1085, 'Siaton', 52),
(1086, 'Sibulan', 52),
(1087, 'Tayasan', 52),
(1088, 'Valencia', 52),
(1089, 'Vallehermoso', 52),
(1090, 'Zamboanguita', 52),
(1091, 'Allen', 53),
(1092, 'Biri', 53),
(1093, 'Bobon', 53),
(1094, 'Capul', 53),
(1095, 'Catarman', 53),
(1096, 'Catubig', 53),
(1097, 'Gamay', 53),
(1098, 'Laoang', 53),
(1099, 'Lapinig', 53),
(1100, 'Las Navas', 53),
(1101, 'Lavezares', 53),
(1102, 'Lope de Vega', 53),
(1103, 'Mapanas', 53),
(1104, 'Mondragon', 53),
(1105, 'Palapag', 53),
(1106, 'Pambujan', 53),
(1107, 'Rosario', 53),
(1108, 'San Antonio', 53),
(1109, 'San Isidro', 53),
(1110, 'San Jose', 53),
(1111, 'San Roque', 53),
(1112, 'San Vicente', 53),
(1113, 'Silvino Lobos', 53),
(1114, 'Victoria', 53),
(1115, 'Cabanatuan City', 54),
(1116, 'Gapan City', 54),
(1117, 'Science City of Mu', 54),
(1118, 'Palayan City', 54),
(1119, 'San Jose City', 54),
(1120, 'Aliaga', 54),
(1121, 'Bongabon', 54),
(1122, 'Cabiao', 54),
(1123, 'Carranglan', 54),
(1124, 'Cuyapo', 54),
(1125, 'Gabaldon', 54),
(1126, 'General Mamerto Natividad', 54),
(1127, 'General Tinio', 54),
(1128, 'Guimba', 54),
(1129, 'Jaen', 54),
(1130, 'Laur', 54),
(1131, 'Licab', 54),
(1132, 'Llanera', 54),
(1133, 'Lupao', 54),
(1134, 'Nampicuan', 54),
(1135, 'Pantabangan', 54),
(1136, 'Penaranda', 54),
(1137, 'Quezon', 54),
(1138, 'Rizal', 54),
(1139, 'San Antonio', 54),
(1140, 'San Isidro', 54),
(1141, 'San Leonardo', 54),
(1142, 'Santa Rosa', 54),
(1143, 'Santo Domingo', 54),
(1144, 'Talavera', 54),
(1145, 'Talugtug', 54),
(1146, 'Zaragoza', 54),
(1147, 'Alfonso Castaneda', 55),
(1148, 'Ambaguio', 55),
(1149, 'Aritao', 55),
(1150, 'Bagabag', 55),
(1151, 'Bambang', 55),
(1152, 'Bayombong', 55),
(1153, 'Diadi', 55),
(1154, 'Dupax del Norte', 55),
(1155, 'Dupax del Sur', 55),
(1156, 'Kasibu', 55),
(1157, 'Kayapa', 55),
(1158, 'Quezon', 55),
(1159, 'Santa Fe', 55),
(1160, 'Solano', 55),
(1161, 'Villaverde', 55),
(1162, 'Abra de Ilog', 56),
(1163, 'Calintaan', 56),
(1164, 'Looc', 56),
(1165, 'Lubang', 56),
(1166, 'Magsaysay', 56),
(1167, 'Mamburao', 56),
(1168, 'Paluan', 56),
(1169, 'Rizal', 56),
(1170, 'Sablayan', 56),
(1171, 'San Jose', 56),
(1172, 'Santa Cruz', 56),
(1173, 'Calapan City', 57),
(1174, 'Baco', 57),
(1175, 'Bansud', 57),
(1176, 'Bongabong', 57),
(1177, 'Bulalacao', 57),
(1178, 'Gloria', 57),
(1179, 'Mansalay', 57),
(1180, 'Naujan', 57),
(1181, 'Pinamalayan', 57),
(1182, 'Pola', 57),
(1183, 'Puerto Galera', 57),
(1184, 'Roxas', 57),
(1185, 'San Teodoro', 57),
(1186, 'Socorro', 57),
(1187, 'Victoria', 57),
(1188, 'Puerto Princesa City', 58),
(1189, 'Aborlan', 58),
(1190, 'Agutaya', 58),
(1191, 'Araceli', 58),
(1192, 'Balabac', 58),
(1193, 'Bataraza', 58),
(1194, 'Brooke\'s Point', 58),
(1195, 'Busuanga', 58),
(1196, 'Cagayancillo', 58),
(1197, 'Coron', 58),
(1198, 'Culion', 58),
(1199, 'Cuyo', 58),
(1200, 'Dumaran', 58),
(1201, 'El Nido', 58),
(1202, 'Kalayaan', 58),
(1203, 'Linapacan', 58),
(1204, 'Magsaysay', 58),
(1205, 'Narra', 58),
(1206, 'Quezon', 58),
(1207, 'Rizal', 58),
(1208, 'Roxas', 58),
(1209, 'San Vicente', 58),
(1210, 'Sofronio Espa?ola', 58),
(1211, 'Taytay', 58),
(1212, 'Angeles City', 59),
(1213, 'City of San Fernando', 59),
(1214, 'Apalit', 59),
(1215, 'Arayat', 59),
(1216, 'Bacolor', 59),
(1217, 'Candaba', 59),
(1218, 'Floridablanca', 59),
(1219, 'Guagua', 59),
(1220, 'Lubao', 59),
(1221, 'Mabalacat', 59),
(1222, 'Macabebe', 59),
(1223, 'Magalang', 59),
(1224, 'Masantol', 59),
(1225, 'Mexico', 59),
(1226, 'Minalin', 59),
(1227, 'Porac', 59),
(1228, 'San Luis', 59),
(1229, 'San Simon', 59),
(1230, 'Santa Ana', 59),
(1231, 'Santa Rita', 59),
(1232, 'Santo Tomas', 59),
(1233, 'Sasmuan', 59),
(1234, 'Alaminos City', 60),
(1235, 'Dagupan City', 60),
(1236, 'San Carlos City', 60),
(1237, 'Urdaneta City', 60),
(1238, 'Agno', 60),
(1239, 'Aguilar', 60),
(1240, 'Alcala', 60),
(1241, 'Anda', 60),
(1242, 'Asingan', 60),
(1243, 'Balungao', 60),
(1244, 'Bani', 60),
(1245, 'Basista', 60),
(1246, 'Bautista', 60),
(1247, 'Bayambang', 60),
(1248, 'Binalonan', 60),
(1249, 'Binmaley', 60),
(1250, 'Bolinao', 60),
(1251, 'Bugallon', 60),
(1252, 'Burgos', 60),
(1253, 'Calasiao', 60),
(1254, 'Dasol', 60),
(1255, 'Infanta', 60),
(1256, 'Labrador', 60),
(1257, 'Laoac', 60),
(1258, 'Lingayen', 60),
(1259, 'Mabini', 60),
(1260, 'Malasiqui', 60),
(1261, 'Manaoag', 60),
(1262, 'Mangaldan', 60),
(1263, 'Mangatarem', 60),
(1264, 'Mapandan', 60),
(1265, 'Natividad', 60),
(1266, 'Pozzorubio', 60),
(1267, 'Rosales', 60),
(1268, 'San Fabian', 60),
(1269, 'San Jacinto', 60),
(1270, 'San Manuel', 60),
(1271, 'San Nicolas', 60),
(1272, 'San Quintin', 60),
(1273, 'Santa Barbara', 60),
(1274, 'Santa Maria', 60),
(1275, 'Santo Tomas', 60),
(1276, 'Sison', 60),
(1277, 'Sual', 60),
(1278, 'Tayug', 60),
(1279, 'Umingan', 60),
(1280, 'Urbiztondo', 60),
(1281, 'Villasis', 60),
(1282, 'Lucena City', 61),
(1283, 'Tayabas City', 61),
(1284, 'Agdangan', 61),
(1285, 'Alabat', 61),
(1286, 'Atimonan', 61),
(1287, 'Buenavista', 61),
(1288, 'Burdeos', 61),
(1289, 'Calauag', 61),
(1290, 'Candelaria', 61),
(1291, 'Catanauan', 61),
(1292, 'Dolores', 61),
(1293, 'General Luna', 61),
(1294, 'General Nakar', 61),
(1295, 'Guinayangan', 61),
(1296, 'Gumaca', 61),
(1297, 'Infanta', 61),
(1298, 'Jomalig', 61),
(1299, 'Lopez', 61),
(1300, 'Lucban', 61),
(1301, 'Macalelon', 61),
(1302, 'Mauban', 61),
(1303, 'Mulanay', 61),
(1304, 'Padre Burgos', 61),
(1305, 'Pagbilao', 61),
(1306, 'Panukulan', 61),
(1307, 'Patnanungan', 61),
(1308, 'Perez', 61),
(1309, 'Pitogo', 61),
(1310, 'Plaridel', 61),
(1311, 'Polillo', 61),
(1312, 'Quezon', 61),
(1313, 'Real', 61),
(1314, 'Sampaloc', 61),
(1315, 'San Andres', 61),
(1316, 'San Antonio', 61),
(1317, 'San Francisco', 61),
(1318, 'San Narciso', 61),
(1319, 'Sariaya', 61),
(1320, 'Tagkawayan', 61),
(1321, 'Tiaong', 61),
(1322, 'Unisan', 61),
(1323, 'Aglipay', 62),
(1324, 'Cabarroguis', 62),
(1325, 'Diffun', 62),
(1326, 'Maddela', 62),
(1327, 'Nagtipunan', 62),
(1328, 'Saguday', 62),
(1329, 'Antipolo City', 63),
(1330, 'Angono', 63),
(1331, 'Baras', 63),
(1332, 'Binangonan', 63),
(1333, 'Cainta', 63),
(1334, 'Cardona', 63),
(1335, 'Jalajala', 63),
(1336, 'Morong', 63),
(1337, 'Pililla', 63),
(1338, 'Rodriguez', 63),
(1339, 'San Mateo', 63),
(1340, 'Tanay', 63),
(1341, 'Taytay', 63),
(1342, 'Teresa', 63),
(1343, 'Alcantara', 64),
(1344, 'Banton', 64),
(1345, 'Cajidiocan', 64),
(1346, 'Calatrava', 64),
(1347, 'Concepcion', 64),
(1348, 'Corcuera', 64),
(1349, 'Ferrol', 64),
(1350, 'Looc', 64),
(1351, 'Magdiwang', 64),
(1352, 'Odiongan', 64),
(1353, 'Romblon', 64),
(1354, 'San Agustin', 64),
(1355, 'San Andres', 64),
(1356, 'San Fernando', 64),
(1357, 'San Jose', 64),
(1358, 'Santa Fe', 64),
(1359, 'Santa Maria', 64),
(1360, 'Calbayog City', 65),
(1361, 'Catbalogan City', 65),
(1362, 'Almagro', 65),
(1363, 'Basey', 65),
(1364, 'Calbiga', 65),
(1365, 'Daram', 65),
(1366, 'Gandara', 65),
(1367, 'Hinabangan', 65),
(1368, 'Jiabong', 65),
(1369, 'Marabut', 65),
(1370, 'Matuguinao', 65),
(1371, 'Motiong', 65),
(1372, 'Pagsanghan', 65),
(1373, 'Paranas', 65),
(1374, 'Pinabacdao', 65),
(1375, 'San Jorge', 65),
(1376, 'San Jose De Buan', 65),
(1377, 'San Sebastian', 65),
(1378, 'Santa Margarita', 65),
(1379, 'Santa Rita', 65),
(1380, 'Santo Ni', 65),
(1381, 'Tagapul-an', 65),
(1382, 'Talalora', 65),
(1383, 'Tarangnan', 65),
(1384, 'Villareal', 65),
(1385, 'Zumarraga', 65),
(1386, 'Alabel', 66),
(1387, 'Glan', 66),
(1388, 'Kiamba', 66),
(1389, 'Maasim', 66),
(1390, 'Maitum', 66),
(1391, 'Malapatan', 66),
(1392, 'Malungon', 66),
(1393, 'Enrique Villanueva', 67),
(1394, 'Larena', 67),
(1395, 'Lazi', 67),
(1396, 'Maria', 67),
(1397, 'San Juan', 67),
(1398, 'Siquijor', 67),
(1399, 'Sorsogon City', 68),
(1400, 'Barcelona', 68),
(1401, 'Bulan', 68),
(1402, 'Bulusan', 68),
(1403, 'Casiguran', 68),
(1404, 'Castilla', 68),
(1405, 'Donsol', 68),
(1406, 'Gubat', 68),
(1407, 'Irosin', 68),
(1408, 'Juban', 68),
(1409, 'Magallanes', 68),
(1410, 'Matnog', 68),
(1411, 'Pilar', 68),
(1412, 'Prieto Diaz', 68),
(1413, 'Santa Magdalena', 68),
(1414, 'General Santos City', 69),
(1415, 'Koronadal City', 69),
(1416, 'Banga', 69),
(1417, 'Lake Sebu', 69),
(1418, 'Norala', 69),
(1419, 'Polomolok', 69),
(1420, 'Santo Ni', 69),
(1421, 'Surallah', 69),
(1422, 'T\'boli', 69),
(1423, 'Tampakan', 69),
(1424, 'Tantangan', 69),
(1425, 'Tupi', 69),
(1426, 'Maasin City', 70),
(1427, 'Anahawan', 70),
(1428, 'Bontoc', 70),
(1429, 'Hinunangan', 70),
(1430, 'Hinundayan', 70),
(1431, 'Libagon', 70),
(1432, 'Liloan', 70),
(1433, 'Limasawa', 70),
(1434, 'Macrohon', 70),
(1435, 'Malitbog', 70),
(1436, 'Padre Burgos', 70),
(1437, 'Pintuyan', 70),
(1438, 'Saint Bernard', 70),
(1439, 'San Francisco', 70),
(1440, 'San Juan', 70),
(1441, 'San Ricardo', 70),
(1442, 'Silago', 70),
(1443, 'Sogod', 70),
(1444, 'Tomas Oppus', 70),
(1445, 'Tacurong City', 71),
(1446, 'Bagumbayan', 71),
(1447, 'Columbio', 71),
(1448, 'Esperanza', 71),
(1449, 'Isulan', 71),
(1450, 'Kalamansig', 71),
(1451, 'Lambayong', 71),
(1452, 'Lebak', 71),
(1453, 'Lutayan', 71),
(1454, 'Palimbang', 71),
(1455, 'President Quirino', 71),
(1456, 'Senator Ninoy Aquino', 71),
(1457, 'Banguingui', 72),
(1458, 'Hadji Panglima Tahil', 72),
(1459, 'Indanan', 72),
(1460, 'Jolo', 72),
(1461, 'Kalingalan Caluang', 72),
(1462, 'Lugus', 72),
(1463, 'Luuk', 72),
(1464, 'Maimbung', 72),
(1465, 'Old Panamao', 72),
(1466, 'Omar', 72),
(1467, 'Pandami', 72),
(1468, 'Panglima Estino', 72),
(1469, 'Pangutaran', 72),
(1470, 'Parang', 72),
(1471, 'Pata', 72),
(1472, 'Patikul', 72),
(1473, 'Siasi', 72),
(1474, 'Talipao', 72),
(1475, 'Tapul', 72),
(1476, 'Surigao City', 73),
(1477, 'Alegria', 73),
(1478, 'Bacuag', 73),
(1479, 'Basilisa', 73),
(1480, 'Burgos', 73),
(1481, 'Cagdianao', 73),
(1482, 'Claver', 73),
(1483, 'Dapa', 73),
(1484, 'Del Carmen', 73),
(1485, 'Dinagat', 73),
(1486, 'General Luna', 73),
(1487, 'Gigaquit', 73),
(1488, 'Libjo', 73),
(1489, 'Loreto', 73),
(1490, 'Mainit', 73),
(1491, 'Malimono', 73),
(1492, 'Pilar', 73),
(1493, 'Placer', 73),
(1494, 'San Benito', 73),
(1495, 'San Francisco', 73),
(1496, 'San Isidro', 73),
(1497, 'San Jose', 73),
(1498, 'Santa Monica', 73),
(1499, 'Sison', 73),
(1500, 'Socorro', 73),
(1501, 'Tagana-an', 73),
(1502, 'Tubajon', 73),
(1503, 'Tubod', 73),
(1504, 'Bislig City', 74),
(1505, 'Tandag City', 74),
(1506, 'Barobo', 74),
(1507, 'Bayabas', 74),
(1508, 'Cagwait', 74),
(1509, 'Cantilan', 74),
(1510, 'Carmen', 74),
(1511, 'Carrascal', 74),
(1512, 'Cortes', 74),
(1513, 'Hinatuan', 74),
(1514, 'Lanuza', 74),
(1515, 'Lianga', 74),
(1516, 'Lingig', 74),
(1517, 'Madrid', 74),
(1518, 'Marihatag', 74),
(1519, 'San Agustin', 74),
(1520, 'San Miguel', 74),
(1521, 'Tagbina', 74),
(1522, 'Tago', 74),
(1523, 'Tarlac City', 75),
(1524, 'Anao', 75),
(1525, 'Bamban', 75),
(1526, 'Camiling', 75),
(1527, 'Capas', 75),
(1528, 'Concepcion', 75),
(1529, 'Gerona', 75),
(1530, 'La Paz', 75),
(1531, 'Mayantoc', 75),
(1532, 'Moncada', 75),
(1533, 'Paniqui', 75),
(1534, 'Pura', 75),
(1535, 'Ramos', 75),
(1536, 'San Clemente', 75),
(1537, 'San Jose', 75),
(1538, 'San Manuel', 75),
(1539, 'Santa Ignacia', 75),
(1540, 'Victoria', 75),
(1541, 'Bongao', 76),
(1542, 'Languyan', 76),
(1543, 'Mapun', 76),
(1544, 'Panglima Sugala', 76),
(1545, 'Sapa-Sapa', 76),
(1546, 'Sibutu', 76),
(1547, 'Simunul', 76),
(1548, 'Sitangkai', 76),
(1549, 'South Ubian', 76),
(1550, 'Tandubas', 76),
(1551, 'Turtle Islands', 76),
(1552, 'Olongapo City', 77),
(1553, 'Botolan', 77),
(1554, 'Cabangan', 77),
(1555, 'Candelaria', 77),
(1556, 'Castillejos', 77),
(1557, 'Iba', 77),
(1558, 'Masinloc', 77),
(1559, 'Palauig', 77),
(1560, 'San Antonio', 77),
(1561, 'San Felipe', 77),
(1562, 'San Marcelino', 77),
(1563, 'San Narciso', 77),
(1564, 'Santa Cruz', 77),
(1565, 'Subic', 77),
(1566, 'Dapitan City', 78),
(1567, 'Dipolog City', 78),
(1568, 'Bacungan', 78),
(1569, 'Baliguian', 78),
(1570, 'Godod', 78),
(1571, 'Gutalac', 78),
(1572, 'Jose Dalman', 78),
(1573, 'Kalawit', 78),
(1574, 'Katipunan', 78),
(1575, 'La Libertad', 78),
(1576, 'Labason', 78),
(1577, 'Liloy', 78),
(1578, 'Manukan', 78),
(1579, 'Mutia', 78),
(1580, 'Pi', 78),
(1581, 'Polanco', 78),
(1582, 'President Manuel A. Roxas', 78),
(1583, 'Rizal', 78),
(1584, 'Salug', 78),
(1585, 'Sergio Osme?a Sr.', 78),
(1586, 'Siayan', 78),
(1587, 'Sibuco', 78),
(1588, 'Sibutad', 78),
(1589, 'Sindangan', 78),
(1590, 'Siocon', 78),
(1591, 'Sirawai', 78),
(1592, 'Tampilisan', 78),
(1593, 'Pagadian City', 79),
(1594, 'Zamboanga City', 79),
(1595, 'Aurora', 79),
(1596, 'Bayog', 79),
(1597, 'Dimataling', 79),
(1598, 'Dinas', 79),
(1599, 'Dumalinao', 79),
(1600, 'Dumingag', 79),
(1601, 'Guipos', 79),
(1602, 'Josefina', 79),
(1603, 'Kumalarang', 79),
(1604, 'Labangan', 79),
(1605, 'Lakewood', 79),
(1606, 'Lapuyan', 79),
(1607, 'Mahayag', 79),
(1608, 'Margosatubig', 79),
(1609, 'Midsalip', 79),
(1610, 'Molave', 79),
(1611, 'Pitogo', 79),
(1612, 'Ramon Magsaysay', 79),
(1613, 'San Miguel', 79),
(1614, 'San Pablo', 79),
(1615, 'Sominot', 79),
(1616, 'Tabina', 79),
(1617, 'Tambulig', 79),
(1618, 'Tigbao', 79),
(1619, 'Tukuran', 79),
(1620, 'Vincenzo A. Sagun', 79),
(1621, 'Alicia', 80),
(1622, 'Buug', 80),
(1623, 'Diplahan', 80),
(1624, 'Imelda', 80),
(1625, 'Ipil', 80),
(1626, 'Kabasalan', 80),
(1627, 'Mabuhay', 80),
(1628, 'Malangas', 80),
(1629, 'Naga', 80),
(1630, 'Olutanga', 80),
(1631, 'Payao', 80),
(1632, 'Roseller Lim', 80),
(1633, 'Siay', 80),
(1634, 'Talusan', 80),
(1635, 'Titay', 80),
(1636, 'Tungawan', 80);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `sheet_name` varchar(50) DEFAULT NULL COMMENT 'for excel purposes only - export salary adj'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `sheet_name`) VALUES
(2, 'HUMAN RESOURCE DEPT.', ''),
(3, 'ACCOUNTING', ''),
(4, 'FINANCE', 'FINANCE'),
(5, 'ADMIN', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `disciplinary_action`
--

CREATE TABLE `disciplinary_action` (
  `discipline_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL DEFAULT '0',
  `offense_date` varchar(20) DEFAULT NULL,
  `offense_type` varchar(50) DEFAULT NULL,
  `offense_no` varchar(100) DEFAULT NULL,
  `offense_desc` text,
  `disp_action` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `disciplinary_action_tmp`
--

CREATE TABLE `disciplinary_action_tmp` (
  `discipline_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL DEFAULT '0',
  `offense_date` varchar(20) DEFAULT NULL,
  `offense_type` varchar(50) DEFAULT NULL,
  `offense_no` varchar(100) DEFAULT NULL,
  `offense_desc` text,
  `disp_action` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `educational_background`
--

CREATE TABLE `educational_background` (
  `educational_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `college` text,
  `course` varchar(50) DEFAULT NULL,
  `ed_from` varchar(50) DEFAULT NULL,
  `ed_to` varchar(50) DEFAULT NULL,
  `date_graduated` varchar(50) DEFAULT NULL,
  `highschool` text,
  `h_course` varchar(50) DEFAULT NULL,
  `h_from` varchar(50) DEFAULT NULL,
  `h_to` varchar(50) DEFAULT NULL,
  `h_date_graduated` varchar(50) DEFAULT NULL,
  `elementary` text,
  `e_course` varchar(50) DEFAULT NULL,
  `e_from` varchar(50) DEFAULT NULL,
  `e_to` varchar(50) DEFAULT NULL,
  `e_date_graduated` varchar(50) DEFAULT NULL,
  `post_grad` text,
  `p_course` varchar(50) DEFAULT NULL,
  `p_from` varchar(50) DEFAULT NULL,
  `p_to` varchar(50) DEFAULT NULL,
  `p_date_graduated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educational_background`
--

INSERT INTO `educational_background` (`educational_id`, `personal_id`, `college`, `course`, `ed_from`, `ed_to`, `date_graduated`, `highschool`, `h_course`, `h_from`, `h_to`, `h_date_graduated`, `elementary`, `e_course`, `e_from`, `e_to`, `e_date_graduated`, `post_grad`, `p_course`, `p_from`, `p_to`, `p_date_graduated`) VALUES
(1, 1, 'BULACAN STATE UNIVERSITY', 'BS COMPUTER ENGINEER', '', '', '', 'MAYOR RAMONA S. TRILLANA HIGH SCHOOL HAGONOY BULACAN', '', '', '', '', 'HAGONOY WEST CENTRAL SCHOOL ', '', '', '', '', 'MASTERS IN EDUCATIONAL MANAGEMENT MANILA', 'EDUCATIONAL MGT', '', '', ''),
(2, 2, 'PALAWAN POLYTECHNIC COLLEGE INC', 'BACHELOR OF SCIENCE IN NURSING', '', '', '', 'PALAWAN NATIONAL HIGHSCHOOL', '', '', '', '', 'SALAWAGAN CENTRAL ELEM SCHOOL', '', '', '', '', '', '', '', '', ''),
(3, 3, 'ADAMSON UNIVERSITY MANILA', 'BS INFORMATION TECHNOLOGY', '', '', '2013-05', 'PITOGO HIGH SCHOOL', '', '', '', '', 'GUADALUPE NUEVO ELEM SCHOOL', '', '', '', '', '', '', '', '', ''),
(4, 4, 'NEW ERA UNIVERSITY', 'BA - COMMUNICATION', '2015-06', '2019-03', '2019-04', 'KASIGLAHAN VILLAGE NATIONAL HIGHSCHOOL', '', '', '', '', 'KASIGLAHAN VILLAGE ELEMENTARY SCHOOL', '', '', '', '', '', '', '', '', ''),
(5, 5, 'ARELLANO UNIVERSITY ', 'BSBA MARKETING', '', '', '2017-04', 'STAR OF HOPE CHRISTIAN SCHOOL', '', '', '', '', 'STAR OF HOME CHRISTIAN SCHOOL', '', '', '', '', '', '', '', '', ''),
(6, 6, 'INTEGRATED MARKETING COMMUNICATION', 'MARKETING', '', '', '', 'POVEDA LEARNING CENTRE', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 8, 'SAN BEDA COLLEGE ALABANG', 'BSBA - HUMAN RESOURCE', '', '', '2017-04', 'ESCUELA DE SAN LORENZO RUIZ HIGH SCHOOL', '', '', '', '', 'ST. PAUL LEARNING SCHOOL', '', '', '', '', '', '', '', '', ''),
(9, 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 10, 'COLEGIO DE SAN JUAN DE LETRAN', 'AB BROADCASTING', '', '', '2019-05', 'DOMINICAN COLLEGE STA. ROSA', '', '', '', '', 'DOMINICAN COLLEGE SAN JUAN', '', '', '', '', '', '', '', '', ''),
(11, 11, 'RIZAL TECHNOLOGICAL UNIVERSITY', '', '', '', '2018-05', 'ISAAC LOPEZ INTERGRATED SCHOOL', '', '', '', '', 'ISAAC LOPEZ INTERGRATED SCHOOL', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

CREATE TABLE `employment_history` (
  `employment_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `name_address_employer` varchar(150) DEFAULT NULL,
  `em_position` varchar(100) DEFAULT NULL,
  `em_from` varchar(100) DEFAULT NULL,
  `em_to` varchar(100) DEFAULT NULL,
  `em_remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`employment_id`, `personal_id`, `name_address_employer`, `em_position`, `em_from`, `em_to`, `em_remarks`) VALUES
(1, 2, 'SHOPPERSGUIDE MARKETING', 'MARKETING ASSISTANT', '2013-01-01', '2018-01-01', ''),
(2, 2, 'CROMAGON CORPORATION', 'SALES AND MARKETING EXECUTIVE', '2018-01-01', '2018-01-01', ''),
(3, 3, 'TRANSPROCURE CORPORATION', 'SOURCING SPECIALIST', '', '', ''),
(4, 6, 'HEWLETT-PACKARD PHILIPPINES CORPORATION', 'MARKETING MANAGER', '2012-06-01', '2014-07-31', ''),
(5, 8, 'ROBINSONS DAISO DIVERSIFIED CORP.', 'HR ASST.', '2019-04-08', '2020-08-15', ''),
(6, 9, 'YABANG PINOY', 'INTERN', '2017-12-01', '2018-06-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `eval_id` int(11) NOT NULL,
  `personal_id` int(20) NOT NULL,
  `eval_file` varchar(255) DEFAULT NULL,
  `eval_period` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_history`
--

CREATE TABLE `evaluation_history` (
  `evalhist_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `eval_date` varchar(50) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  `eval_type` varchar(50) DEFAULT NULL,
  `adjustment` double(10,2) NOT NULL DEFAULT '0.00',
  `per_day` varchar(50) DEFAULT NULL,
  `effective_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_history_tmp`
--

CREATE TABLE `evaluation_history_tmp` (
  `evalhist_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `eval_date` varchar(50) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  `eval_type` varchar(50) DEFAULT NULL,
  `adjustment` double(10,2) NOT NULL DEFAULT '0.00',
  `per_day` varchar(50) DEFAULT NULL,
  `effective_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `family_background`
--

CREATE TABLE `family_background` (
  `family_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `fa_age` int(3) NOT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `m_age` int(3) NOT NULL,
  `m_occupation` varchar(50) NOT NULL,
  `name_spouse` varchar(50) DEFAULT NULL,
  `n_age` int(3) NOT NULL,
  `n_occupation` varchar(50) DEFAULT NULL,
  `employers_name_address` varchar(150) DEFAULT NULL,
  `fa_bday` varchar(20) DEFAULT NULL,
  `m_bday` varchar(20) DEFAULT NULL,
  `n_bday` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_background`
--

INSERT INTO `family_background` (`family_id`, `personal_id`, `father_name`, `fa_age`, `occupation`, `mother_name`, `m_age`, `m_occupation`, `name_spouse`, `n_age`, `n_occupation`, `employers_name_address`, `fa_bday`, `m_bday`, `n_bday`) VALUES
(1, 1, 'MARCIANO CARAIG', 0, '', 'ANGELINA CARAIG', 0, '', '', 0, '', '', '', '', ''),
(2, 2, 'EDWIN AFFORTADERA', 0, 'SELF EMPLOYED', 'ROWENA TORRES', 0, 'BUSINESS WOMAN', '', 0, '', '', '', '', ''),
(3, 3, 'VICENTE ALCONCHER', 0, 'SELF EMPLOYED', 'JOSEPHINE ALCONCHER', 0, 'HOUSEWIFE', '', 0, '', '', '', '', ''),
(4, 4, 'DIONISTO JUMAGDAO', 0, 'N/A', 'ADELAIDAO JUMAGDAO', 0, 'N/A', '', 0, '', '', '', '', ''),
(5, 5, 'PABLO MEDALLA', 0, '', 'JANGENITA MEDALLA', 0, '', '', 0, '', '', '', '', ''),
(6, 6, 'JOSE MARI ALDEGUER', 0, '', 'TRINIDAD GARCIA', 0, '', 'LEONARD ROSS SANTOS', 0, '', 'ALVEO LAND CORP', '', '', '0085-02-19'),
(7, 7, 'VICTORINO NOBLE', 0, 'OFW', 'JENNIFER NOBLE', 0, 'TESDA TRAINER', '', 0, '', '', '', '', ''),
(8, 8, 'BRAULIO N. JACOB JR.', 0, 'DECEASED', 'ROSALIN JACOB', 0, 'HOUSEWIFE', '', 0, '', '', '', '1968-07-18', ''),
(9, 9, 'DECOROSO GUUEVARRA', 0, 'OFFICE WORKER', 'ANNA MARIE GUEVARRA', 0, 'RESPIRATORY THERAPIST', '', 0, '', '', '', '', ''),
(10, 10, 'LUISITO GUIAO', 0, 'CALL CENTER AGENT', 'CATHERINE GUIAO', 0, 'CALL CENTER', '', 0, '', '', '', '', ''),
(11, 11, 'RICKY ECLAR', 0, 'FACTORY WORKER', 'ANICIA ECLAR', 0, 'HOUSEWIFE', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

CREATE TABLE `job_history` (
  `history_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `effective_date` varchar(50) DEFAULT NULL,
  `emp_status` varchar(100) DEFAULT NULL,
  `j_position` varchar(50) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `bu_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `salary` double(10,2) NOT NULL DEFAULT '0.00',
  `per_day` varchar(50) DEFAULT NULL,
  `supervisor` int(11) NOT NULL,
  `end_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_history`
--

INSERT INTO `job_history` (`history_id`, `personal_id`, `effective_date`, `emp_status`, `j_position`, `department_id`, `bu_id`, `location_id`, `salary`, `per_day`, `supervisor`, `end_date`) VALUES
(1, 3, '2018-01-10', 'Regular', 'WEB DEVELOPER', 0, 0, 2, 20000.00, '', 0, ''),
(2, 7, '2019-02-01', 'Regular', 'FIELD SERVICE ASSISTANT', 0, 0, 0, 17000.00, '', 0, ''),
(3, 7, '2017-07-01', 'Regular', 'CONTENT MARKETING ASST', 0, 4, 1, 17000.00, '', 0, ''),
(4, 5, '2019-10-01', 'Regular', 'MARKETING ASSISTANT', 0, 4, 1, 16754.40, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `job_history_tmp`
--

CREATE TABLE `job_history_tmp` (
  `history_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `effective_date` varchar(50) DEFAULT NULL,
  `emp_status` varchar(100) DEFAULT NULL,
  `j_position` varchar(50) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `bu_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `salary` double(10,2) NOT NULL DEFAULT '0.00',
  `per_day` varchar(50) DEFAULT NULL,
  `supervisor` int(11) NOT NULL,
  `end_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`) VALUES
(1, 'HEAD OFFICE - ORTIGAS, PASIG'),
(2, 'BINANGONAN DATA CENTER');

-- --------------------------------------------------------

--
-- Table structure for table `other_files`
--

CREATE TABLE `other_files` (
  `other_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `other_file` varchar(255) DEFAULT NULL,
  `other_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_data`
--

CREATE TABLE `personal_data` (
  `personal_id` int(11) NOT NULL,
  `date_encoded` varchar(20) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `name_ext` varchar(5) DEFAULT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `permanent_address` varchar(100) DEFAULT NULL,
  `provincial_address` varchar(100) DEFAULT NULL,
  `pre_city` varchar(100) DEFAULT NULL,
  `pre_prov` varchar(50) DEFAULT NULL,
  `perm_city` varchar(50) DEFAULT NULL,
  `perm_prov` varchar(50) DEFAULT NULL,
  `bdate` date NOT NULL,
  `place_birth` varchar(50) DEFAULT NULL,
  `contact_no` varchar(13) DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `map_file` varchar(255) DEFAULT NULL,
  `resume_file` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `essay_file` varchar(255) DEFAULT NULL,
  `photo_upload` varchar(255) DEFAULT NULL,
  `bio_num` varchar(255) DEFAULT NULL,
  `date_hired` varchar(50) DEFAULT NULL,
  `emp_num` varchar(50) DEFAULT NULL,
  `emp_status` varchar(255) DEFAULT NULL,
  `current_dept` int(11) NOT NULL DEFAULT '0',
  `current_bu` int(11) NOT NULL DEFAULT '0',
  `current_location` int(11) NOT NULL DEFAULT '0',
  `current_supervisor` int(11) NOT NULL,
  `supervisor` int(11) NOT NULL DEFAULT '0',
  `date_separated` varchar(20) DEFAULT NULL,
  `remarks` text,
  `done` int(11) NOT NULL DEFAULT '0',
  `retrieve` int(11) NOT NULL DEFAULT '0',
  `applied_company` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_data`
--

INSERT INTO `personal_data` (`personal_id`, `date_encoded`, `lname`, `fname`, `mname`, `name_ext`, `age`, `sex`, `civil_status`, `permanent_address`, `provincial_address`, `pre_city`, `pre_prov`, `perm_city`, `perm_prov`, `bdate`, `place_birth`, `contact_no`, `nationality`, `religion`, `map_file`, `resume_file`, `email`, `status`, `essay_file`, `photo_upload`, `bio_num`, `date_hired`, `emp_num`, `emp_status`, `current_dept`, `current_bu`, `current_location`, `current_supervisor`, `supervisor`, `date_separated`, `remarks`, `done`, `retrieve`, `applied_company`) VALUES
(1, '2020-11-17', 'CARAIG', 'NINA MIRASOL', 'ALONZO', '', 0, 'Female', 'Single', 'B9 0152 C STO NINO HAGONOY BULACAN', 'B9 0152 C STO NINO HAGONOY BULACAN', '', '17', '', '17', '1985-11-10', 'HOGONOY BULACAN', '09437070467', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2014-11-03', NULL, 'Regular', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 4),
(2, '2020-11-17', 'AFORTADERA', 'WINSTON', 'TORRES', '', 0, 'Male', 'Single', 'DIAZ ST PUERTO PRINCESA CITY PALAWAN', '292 PANACAN RD NARRA PALAWAN', '', '58', '', '', '1988-10-11', 'CAGAYAN DE ORO', '09052404918', 'FILIPINO', 'BAPTIST', NULL, NULL, NULL, 'Separated', NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 4),
(3, '2020-11-17', 'ALCONCHER', 'JOVIE ANN', 'SUMOG-OY', '', 0, 'Female', 'Single', '129 LUZON ST PITOGO MAKATI CITY', '129 LUZON ST PITOGO MAKATI CITY', '', '47', '', '47', '1992-10-30', 'MAKATI CITY', '09051210912', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2017-07-10', '2017060', 'Regular', 0, 0, 2, 0, 0, NULL, NULL, 0, 0, 0),
(4, '2020-11-18', 'JUMAGDAO', 'GABRIEL', 'LABRAGUE', '', 0, 'Male', 'Single', 'B3 L 114 BRGY SAN JOSE RODRIGUEZ RIZAL', 'B3 L 114 BRGY SAN JOSE RODRIGUEZ RIZAL', '', '63', '', '63', '1998-10-19', 'QUEZON CITY', '09565590090', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Separated', NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 4),
(5, '2020-11-18', 'MEDALLA', 'KIM CLAIRE', 'OMAMBAC', '', 0, 'Female', 'Single', 'BLK 4 LOT 114 J LUNA ST BAY GARDEN HOMES IN PUROK 3 BRGY STA ANA TAYTAY RIZAL', 'TAMBULILID ORMOC CITY', '', '63', '', '43', '1997-03-09', 'ORMOC CITY', '09350549130', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2018-06-18', '2018-073', 'Regular', 0, 4, 1, 0, 0, NULL, NULL, 0, 0, 4),
(6, '2020-11-18', 'SANTOS', 'ISABEL BEATRIZ', 'ALDEGUER', '', 0, 'Female', 'Married', 'UNIT D23 THE ALEXANDRA CONDOMINIUM MERALCO AVENUE PASIG CITY', 'UNIT D23 THE ALEXANDRA CONDOMINIUM MERALCO AVENUE PASIG CITY', '', '47', '', '', '0000-00-00', '', '', '', '', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 'Regular', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 4),
(7, '2020-11-18', 'AMAR', 'MA. VICKY JOYCE', 'NOBLE', '', 0, 'Female', 'Married', 'Purok 3 Gulod Itaas, Batangas City', '', '', '12', '', '', '1983-08-18', 'TONDO MANILA', '09431305973', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2016-07-06', '2016048', 'Regular', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0),
(8, '2020-11-19', 'JACOB', 'CHRISTINE', 'VILLALOBOS', '', 0, 'Female', 'Single', 'BLK 151 LOT 1 ANGELICA DRIVE ROBINSONS HOMES EAST ANTIPOLO CITY', 'BLK 151 LOT 1 ANGELICA DRIVE ROBINSONS HOMES EAST ANTIPOLO CITY', '', '63', '', '', '1996-11-02', 'QUEZON CITY', '09770984768', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2020-10-19', NULL, 'Probationary', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 4),
(9, '2020-11-19', 'GUEVARRA', 'DENISE MARIE', 'SANTIAGO', '', 0, 'Female', 'Single', '3561 BUENOS AIRES ST. STA. MESA MANILA', '3561 BUENOS AIRES ST. STA. MESA MANILA', '', '47', '', '47', '1997-03-03', 'MANILA', '09451030237', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2019-04-22', NULL, 'Regular', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0),
(10, '2020-11-19', 'GUIAO', 'ANTONETTE LOUISE', 'MEDIANA', '', 0, 'Female', 'Single', '343 NANINRAHAN ST. MANDALUYONG CITY', '343 NANINRAHAN ST. MANDALUYONG CITY', '', '47', '', '47', '1997-11-22', 'STA. MESA MANILA', '09369627821', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2020-06-19', '2019-014', 'Regular', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 4),
(11, '2020-11-19', 'ECLAR', 'RIAN', 'ATIENZA', '', 0, 'Female', 'Single', '434 J RIZAL ST. NAMAYAN MANDALUYONG CITY', 'PALAHANAN 2ND SAN JUAN BATANGAS', '', '47', '', '12', '1998-05-19', 'SAN JUAN BATANGAS', '09063278071', 'FILIPINO', 'CATHOLIC', NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2018-06-18', '2018-082', 'Regular', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `person_to_contact`
--

CREATE TABLE `person_to_contact` (
  `person_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `p_relationship` varchar(50) DEFAULT NULL,
  `p_contact_no` varchar(100) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_to_contact`
--

INSERT INTO `person_to_contact` (`person_id`, `personal_id`, `p_name`, `p_relationship`, `p_contact_no`, `address`) VALUES
(1, 1, '', '', '', ''),
(2, 2, '', '', '', ''),
(3, 3, 'JOSIE ALCONCHER', 'MOTHER', '8827839', 'MAKATI CITY'),
(4, 4, 'ADELAIDAO JUMAGDAO', 'MOTHER', '09502550908', ''),
(5, 5, 'Pablo Medalla', 'FATHER', '0917-814-9868', 'BLK 4 LOT 114 J. Luna St. Bay Garden Homes in Puro'),
(6, 6, '', '', '', ''),
(7, 7, '', '', '', ''),
(8, 8, 'ROSALIN V. JACOB', 'MOTHER', '09668669983', 'ANTIPOLO CITY'),
(9, 9, 'SALLY S. TAN', 'AUNT', '9173142199', '3561 BUENOS AIRES ST. STA. MESA MANILA'),
(10, 10, 'LUISITO GUIAO', 'FATHER', '09064462502', 'MANDALUYONG CITY'),
(11, 11, 'ANICIA ECLAR', 'MOTHER', '0915-9896419', '434 J. Rizal St. Namayan Mandaluyong City');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `p_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `position_applied` varchar(50) DEFAULT NULL,
  `expected_salary` double(10,2) NOT NULL DEFAULT '0.00',
  `sal_from` double(10,2) DEFAULT '0.00',
  `sal_to` double(10,2) DEFAULT '0.00',
  `date_applied` varchar(100) DEFAULT NULL,
  `date_available` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`p_id`, `personal_id`, `position_applied`, `expected_salary`, `sal_from`, `sal_to`, `date_applied`, `date_available`) VALUES
(1, 1, 'EXECUTIVE ASSISTANT', 0.00, 25000.00, 30000.00, '2014-06-05', '2014-07-01'),
(2, 2, 'MARKETING ASSISTANT', 0.00, 18000.00, 0.00, '2019-04-03', ''),
(3, 3, 'JUNIOR FRONT END WEB DEVELOPER', 0.00, 18000.00, 20000.00, '2017-06-19', ''),
(4, 4, 'RESEARCH ASSISTANT', 0.00, 15000.00, 20000.00, '2019-05-27', ''),
(5, 5, 'MARKETING ASSISTANT', 0.00, 0.00, 0.00, '2018-01-24', ''),
(6, 6, 'MARKETING DIRECTOR', 0.00, 0.00, 0.00, '2014-07-15', ''),
(7, 7, 'CONTENT DEVELOPMENT', 0.00, 0.00, 0.00, '', ''),
(8, 8, 'HR Business Partner', 0.00, 18000.00, 20000.00, '2020-09-22', ''),
(9, 9, 'VIDEO EDITOR', 0.00, 16000.00, 0.00, '2019-03-14', ''),
(10, 10, 'CONTENT WRITER', 0.00, 18000.00, 0.00, '2019-05-17', ''),
(11, 11, 'MARKETING ASSISTANT', 0.00, 12000.00, 14000.00, '2018-06-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'Abra'),
(2, 'Agusan del Norte'),
(3, 'Agusan del Sur'),
(4, 'Aklan'),
(5, 'Albay'),
(6, 'Antique'),
(7, 'Apayao'),
(8, 'Aurora'),
(9, 'Basilan'),
(10, 'Bataan'),
(11, 'Batanes'),
(12, 'Batangas'),
(13, 'Benguet'),
(14, 'Biliran'),
(15, 'Bohol'),
(16, 'Bukidnon'),
(17, 'Bulacan'),
(18, 'Cagayan'),
(19, 'Camarines Norte'),
(20, 'Camarines Sur'),
(21, 'Camiguin'),
(22, 'Capiz'),
(23, 'Catanduanes'),
(24, 'Cavite'),
(25, 'Cebu'),
(26, 'Compostela Valley'),
(27, 'Cotabato'),
(28, 'Davao del Norte'),
(29, 'Davao del Sur'),
(30, 'Davao Oriental'),
(31, 'Eastern Samar'),
(32, 'Guimaras'),
(33, 'Ifugao'),
(34, 'Ilocos Norte'),
(35, 'Ilocos Sur'),
(36, 'Iloilo'),
(37, 'Isabela'),
(38, 'Kalinga'),
(39, 'La Union'),
(40, 'Laguna'),
(41, 'Lanao del Norte'),
(42, 'Lanao del Sur'),
(43, 'Leyte'),
(44, 'Maguindanao'),
(45, 'Marinduque'),
(46, 'Masbate'),
(47, 'Metro Manila'),
(48, 'Misamis Occidental'),
(49, 'Misamis Oriental'),
(50, 'Mountain Province'),
(51, 'Negros Occidental'),
(52, 'Negros Oriental'),
(53, 'Northern Samar'),
(54, 'Nueva Ecija'),
(55, 'Nueva Vizcaya'),
(56, 'Occidental Mindoro'),
(57, 'Oriental Mindoro'),
(58, 'Palawan'),
(59, 'Pampanga'),
(60, 'Pangasinan'),
(61, 'Quezon'),
(62, 'Quirino'),
(63, 'Rizal'),
(64, 'Romblon'),
(65, 'Samar'),
(66, 'Sarangani'),
(67, 'Siquijor'),
(68, 'Sorsogon'),
(69, 'South Cotabato'),
(70, 'Southern Leyte'),
(71, 'Sultan Kudarat'),
(72, 'Sulu'),
(73, 'Surigao del Norte'),
(74, 'Surigao del Sur'),
(75, 'Tarlac'),
(76, 'Tawi-Tawi'),
(77, 'Zambales'),
(78, 'Zamboanga del Norte'),
(79, 'Zamboanga del Sur'),
(80, 'Zamboanga Sibugay');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `reminder_id` int(11) NOT NULL,
  `reminder_date` varchar(100) DEFAULT NULL,
  `notes` text,
  `created_by` varchar(50) DEFAULT NULL,
  `date_created` varchar(255) DEFAULT NULL,
  `done` int(11) NOT NULL DEFAULT '0',
  `personal_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_new`
--

CREATE TABLE `reminders_new` (
  `todo_id` int(11) NOT NULL,
  `todo_date` varchar(100) DEFAULT NULL,
  `notes` text,
  `created_by` varchar(50) DEFAULT NULL,
  `date_created` varchar(255) DEFAULT NULL,
  `cancel_reason` text,
  `cancel` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_tmp`
--

CREATE TABLE `reminders_tmp` (
  `reminder_id` int(11) NOT NULL,
  `reminder_date` varchar(100) DEFAULT NULL,
  `notes` text,
  `created_by` varchar(50) DEFAULT NULL,
  `date_created` varchar(255) DEFAULT NULL,
  `done` int(11) NOT NULL DEFAULT '0',
  `personal_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siblings`
--

CREATE TABLE `siblings` (
  `siblings_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `siblings_name` varchar(50) DEFAULT NULL,
  `siblings_age` int(3) NOT NULL,
  `siblings_occupation` varchar(50) DEFAULT NULL,
  `emp_na_add` varchar(255) DEFAULT NULL,
  `siblings_bday` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siblings`
--

INSERT INTO `siblings` (`siblings_id`, `personal_id`, `siblings_name`, `siblings_age`, `siblings_occupation`, `emp_na_add`, `siblings_bday`) VALUES
(1, 1, 'LEO ALDRIN CARAIG', 0, '', '', '1988-03-20'),
(2, 2, 'PHILIP AFORTADERA', 0, '', '', '1988-10-11'),
(3, 3, 'JENNIVIE ALCONCHER', 0, '', '', '1994-10-01'),
(4, 3, 'JOYCE ALCONCHER', 0, '', '', '1999-07-27'),
(5, 4, 'FLORICEL JUMAGDAO', 0, '', '', '1988-09-17'),
(6, 4, 'CRISTINA JUMAGDAO', 0, '', '', '0990-12-31'),
(7, 4, 'DIONISIO JUMAGDAO JR', 0, '', '', '1993-04-23'),
(8, 4, 'CARLO JUMAGDAO', 0, '', '', '1996-06-03'),
(9, 5, 'RICHIE MEDALLA', 0, '', '', '1995-10-28'),
(10, 5, 'ANGELYN MEDALLA', 0, '', '', '1999-07-21'),
(11, 5, 'MIGUELMEDALLA', 0, '', '', '2002-02-28'),
(12, 5, 'MICHAEL MEDALLA', 0, '', '', '2002-02-28'),
(13, 5, 'MICAH ELIJAH MEDALLA', 0, '', '', '2010-03-25'),
(14, 7, 'VAUGH PHILIP SAMUEL', 0, '', '', '2004-12-16'),
(15, 7, 'JANELLE CLAIRE', 0, '', '', '2007-05-05'),
(16, 7, 'JEAN MARIEL', 0, '', '', '2009-10-10'),
(17, 9, 'DEAN MARCUS GUEVARRA', 0, '', '', '1999-06-04'),
(18, 11, 'ROY MARK ECLAR', 0, '', '', '2004-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(20) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(20) NOT NULL,
  `usertype_id` int(20) NOT NULL,
  `department_id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usertype`
--

CREATE TABLE `tbl_usertype` (
  `usertype_id` int(20) NOT NULL,
  `usertype_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_table`
--

CREATE TABLE `tmp_table` (
  `tmp_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `emp_status` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `emp_num` varchar(50) DEFAULT NULL,
  `date_hired` varchar(20) DEFAULT NULL,
  `bio_num` varchar(50) DEFAULT NULL,
  `date_separated` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin1234'),
(2, 'hradmin', 'hradmin'),
(3, 'irene', 'irene123'),
(4, 'tessa', 'tessa123'),
(5, 'irish', 'irish123'),
(6, 'christine', 'jacob1234'),
(7, 'shayne', 'garcia1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_info`
--
ALTER TABLE `additional_info`
  ADD PRIMARY KEY (`additonal_id`),
  ADD KEY `persional_id` (`personal_id`);

--
-- Indexes for table `allowance`
--
ALTER TABLE `allowance`
  ADD PRIMARY KEY (`allowance_id`);

--
-- Indexes for table `allowance_tmp`
--
ALTER TABLE `allowance_tmp`
  ADD PRIMARY KEY (`allowance_id`);

--
-- Indexes for table `amendment`
--
ALTER TABLE `amendment`
  ADD PRIMARY KEY (`amendment_id`);

--
-- Indexes for table `amendment_details`
--
ALTER TABLE `amendment_details`
  ADD PRIMARY KEY (`amend_det_id`);

--
-- Indexes for table `business_unit`
--
ALTER TABLE `business_unit`
  ADD PRIMARY KEY (`bu_id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `character_reference`
--
ALTER TABLE `character_reference`
  ADD PRIMARY KEY (`character_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`children_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `disciplinary_action`
--
ALTER TABLE `disciplinary_action`
  ADD PRIMARY KEY (`discipline_id`);

--
-- Indexes for table `educational_background`
--
ALTER TABLE `educational_background`
  ADD PRIMARY KEY (`educational_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD PRIMARY KEY (`employment_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`eval_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `evaluation_history`
--
ALTER TABLE `evaluation_history`
  ADD PRIMARY KEY (`evalhist_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `evaluation_history_tmp`
--
ALTER TABLE `evaluation_history_tmp`
  ADD PRIMARY KEY (`evalhist_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `family_background`
--
ALTER TABLE `family_background`
  ADD PRIMARY KEY (`family_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `job_history`
--
ALTER TABLE `job_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `job_history_tmp`
--
ALTER TABLE `job_history_tmp`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `other_files`
--
ALTER TABLE `other_files`
  ADD PRIMARY KEY (`other_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `personal_data`
--
ALTER TABLE `personal_data`
  ADD PRIMARY KEY (`personal_id`);

--
-- Indexes for table `person_to_contact`
--
ALTER TABLE `person_to_contact`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`reminder_id`);

--
-- Indexes for table `reminders_new`
--
ALTER TABLE `reminders_new`
  ADD PRIMARY KEY (`todo_id`);

--
-- Indexes for table `reminders_tmp`
--
ALTER TABLE `reminders_tmp`
  ADD PRIMARY KEY (`reminder_id`);

--
-- Indexes for table `siblings`
--
ALTER TABLE `siblings`
  ADD PRIMARY KEY (`siblings_id`),
  ADD KEY `personal_id` (`personal_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_usertype`
--
ALTER TABLE `tbl_usertype`
  ADD PRIMARY KEY (`usertype_id`);

--
-- Indexes for table `tmp_table`
--
ALTER TABLE `tmp_table`
  ADD PRIMARY KEY (`tmp_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_info`
--
ALTER TABLE `additional_info`
  MODIFY `additonal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `allowance`
--
ALTER TABLE `allowance`
  MODIFY `allowance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowance_tmp`
--
ALTER TABLE `allowance_tmp`
  MODIFY `allowance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amendment`
--
ALTER TABLE `amendment`
  MODIFY `amendment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amendment_details`
--
ALTER TABLE `amendment_details`
  MODIFY `amend_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_unit`
--
ALTER TABLE `business_unit`
  MODIFY `bu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `file_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `character_reference`
--
ALTER TABLE `character_reference`
  MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `children`
--
ALTER TABLE `children`
  MODIFY `children_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1637;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `disciplinary_action`
--
ALTER TABLE `disciplinary_action`
  MODIFY `discipline_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `educational_background`
--
ALTER TABLE `educational_background`
  MODIFY `educational_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employment_history`
--
ALTER TABLE `employment_history`
  MODIFY `employment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `eval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evaluation_history`
--
ALTER TABLE `evaluation_history`
  MODIFY `evalhist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `evaluation_history_tmp`
--
ALTER TABLE `evaluation_history_tmp`
  MODIFY `evalhist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_background`
--
ALTER TABLE `family_background`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_history`
--
ALTER TABLE `job_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_history_tmp`
--
ALTER TABLE `job_history_tmp`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `other_files`
--
ALTER TABLE `other_files`
  MODIFY `other_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_data`
--
ALTER TABLE `personal_data`
  MODIFY `personal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `person_to_contact`
--
ALTER TABLE `person_to_contact`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders_new`
--
ALTER TABLE `reminders_new`
  MODIFY `todo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders_tmp`
--
ALTER TABLE `reminders_tmp`
  MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siblings`
--
ALTER TABLE `siblings`
  MODIFY `siblings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_usertype`
--
ALTER TABLE `tbl_usertype`
  MODIFY `usertype_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tmp_table`
--
ALTER TABLE `tmp_table`
  MODIFY `tmp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
