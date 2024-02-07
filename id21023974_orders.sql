-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 07, 2024 at 08:37 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21023974_orders`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `dt`) VALUES
(1, 'Sunglasses', '2024-01-05'),
(2, 'Specs', '2024-01-05'),
(3, 'Packing Box', '2024-01-05'),
(5, 'Box', '2024-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `orderId` int(11) NOT NULL,
  `Dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fitting`
--

CREATE TABLE `fitting` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fitting`
--

INSERT INTO `fitting` (`id`, `name`, `amount`, `dt`) VALUES
(10, 'fitting', '350', '2024-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investment`
--

INSERT INTO `investment` (`id`, `name`, `amount`, `dt`) VALUES
(2, 'Fixed Deposit', 50000, '2024-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneousexpenses`
--

CREATE TABLE `miscellaneousexpenses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `miscellaneousexpenses`
--

INSERT INTO `miscellaneousexpenses` (`id`, `name`, `amount`, `dt`) VALUES
(37, 'Jhola ', '720', '2024-02-03'),
(38, 'Spray', '1210', '2024-02-06'),
(39, 'Kapda', '900', '2024-02-06'),
(40, 'Pathao and recharger', '265', '2024-02-06'),
(41, 'lunch', '140', '2024-02-06'),
(42, 'card', '1000', '2024-02-06'),
(43, 'card delivery', '140', '2024-02-06'),
(44, 'dollar load', '6218', '2024-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `openingstock`
--

CREATE TABLE `openingstock` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `openingstock`
--

INSERT INTO `openingstock` (`id`, `amount`, `dt`) VALUES
(1, 98615, '2024-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `contact2` varchar(1000) NOT NULL DEFAULT '0',
  `Product` varchar(100) NOT NULL,
  `Colour` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `deliveryCharge` varchar(100) NOT NULL,
  `Amount` varchar(100) NOT NULL,
  `COD` varchar(100) NOT NULL,
  `prePayment` varchar(100) NOT NULL,
  `Message` text NOT NULL,
  `Stage` varchar(100) NOT NULL,
  `Dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `Name`, `Address`, `Contact`, `contact2`, `Product`, `Colour`, `Quantity`, `deliveryCharge`, `Amount`, `COD`, `prePayment`, `Message`, `Stage`, `Dt`) VALUES
(366, 'Sanam Balami', '9766545407', 'Jawalakhel veda institute/ veda salon', '0', 'box', 'black', 1, '110', '1240', '1240', '0', '', 'Delivered', '2024-02-01'),
(367, 'Aayushi karki', 'Thamel nursing chwok Skyline hotel pvt ltd', '9861054035', '0', 'v', 'matt', 1, '100', '1050', '1050', '0', '', 'Delivered', '2024-02-01'),
(368, 'Jamuna Gurung', 'Kharibot,Banasthali', '9703222325', '0', 'retro', 'black', 1, '100', '1000', '1000', '0', '', 'Delivered', '2024-02-01'),
(369, 'Saroj Thapa ', 'Global ime bank kamaladi near by Rising mall. ', '9849766726', '0', 'fancy trending', 'green', 1, '100', '1000', '1000', '0', '', 'Delivered', '2024-02-01'),
(370, 'Chhabi sunuwar rai', 'Banasthali kharibot', '9813383595', '0', 'rayban wayfarer big', 'black', 1, '100', '2200', '2200', '0', '', 'Delivered', '2024-02-01'),
(371, 'Chhabi sunuwar rai', 'Banasthali kharibot', '9813383595', '0', 'aviator', 'black', 1, '0', '0', '0', '0', '', 'Delivered', '2024-02-01'),
(372, 'Anil maharjan', 'Bauwatar ktm', '9860303551', '0', 'fancy trending', 'white', 1, '100', '950', '950', '0', '', 'Delivered', '2024-02-01'),
(373, 'Gaurab Gurung ', 'Butwal', '9827538098', '0', 'fancy trending', 'black', 2, '140', '2000', '0', '2000', '', 'Delivered', '2024-02-01'),
(374, 'Roman Magar', 'Surkhet Birendranagar, Tinkune Chowk', '9812586248', '0', 'fancy trending', 'black', 1, '180', '1080', '0', '1080', '', 'Delivered', '2024-02-01'),
(375, 'Sujata', 'Kadaghari Force Park saathi Mart Building', '9808346634', '0', 'box', 'brown', 1, '110', '1190', '0', '1190', '', 'Delivered', '2024-02-01'),
(376, 'Krishab jung shahi', 'Anamnagar bhatbhateni', '9842504578', '0', 'clubmaster', 'black', 1, '100', '1000', '0', '1000', '', 'Delivered', '2024-02-02'),
(377, 'Anoop saru ', 'Butwal ', '9869674861', '0', 'fancy trending', 'transparent', 1, '150', '1050', '0', '1050', '', 'Delivered', '2024-02-02'),
(378, 'Akash kshetri', 'Kirtipur ,Tyanglaphant (near little bud school)', '9866894382, 9806587000', '0', 'fancy trending', 'green', 1, '110', '1000', '1000', '0', '', 'Delivered', '2024-02-02'),
(379, 'Jyoti chaudhari', 'Lalitupr imadole futsall', '9818912090', '0', 'fancy trending', 'black', 1, '110', '950', '950', '0', '', 'Delivered', '2024-02-02'),
(380, 'SANDESH PRAJA', 'Bhandara chowk, Nmb Bank building, Chitwan', '9845770134', '0', 'fancy trending', 'black', 1, '140', '1050', '750', '300', '', 'Delivered', '2024-02-02'),
(381, 'Biplav pokharel', 'Easy way trail center sankahmul', '9864106490', '0', 'box', 'brown', 1, '100', '1190', '1190', '0', '', 'Delivered', '2024-02-02'),
(382, 'Ravi tandukar', 'Newroad khichhapokhari', '9841758656', '0', 'clubmaster', 'green', 1, '100', '2180', '2180', '0', '', 'Delivered', '2024-02-02'),
(383, 'Ravi tandukar', 'Newroad khichhapokhari', '9841758656', '0', 'box', 'brown', 1, '0', '0', '0', '0', '', 'Delivered', '2024-02-02'),
(384, 'sanju thanait', 'Kawasoti', '9805429035', '0', 'fancy trending', 'white', 1, '170', '1080', '0', '1080', '', 'Delivered', '2024-02-02'),
(386, 'Tribikram sapkota', 'Chitwan,saptagandaki chowk,nearby marfa kitchen ', '9846893419', '0', 'box', 'black', 1, '150', '1190', '0', '1190', '', 'Delivered', '2024-02-03'),
(387, 'Yukesh Bal Tamang      ', 'Bhanimandal', '9863444353', '0', 'round metal', 'silver', 1, '220', '1170', '0', '1170', '', 'Delivered', '2024-02-03'),
(388, 'Harishankar sah   ', 'Siraha madar bus park', '9805932737', '0', 'fancy trending', 'maroon', 1, '220', '1080', '780', '300', '\r\n\r\n', 'Delivered', '2024-02-03'),
(389, 'Bibek GHIMIRE', 'Thankot checkpost', '9863501707', '0', 'fancy trending', 'black', 1, '110', '1000', '1000', '0', '', 'Delivered', '2024-02-03'),
(390, ' prinsha tuladhar', 'checkpost', '9703759485', '0', 'big square', 'black', 1, '245', '1100', '1100', '0', '', 'Delivered', '2024-02-03'),
(391, 'Rajesh Thapa     ', 'Tokha Ktm', '9851108288', '0', 'v', 'matt', 1, '110', '990', '990', '0', '', 'Delivered', '2024-02-03'),
(393, 'samip adhikari', 'sitapaila kathamandu', '9865174601', '0', 'fancy trending', 'transparent', 1, '110', '950', '950', '0', '', 'Delivered', '2024-02-03'),
(394, 'Pooja Kunwar ', 'Narayanghat, Chitwan ', '9865008194', '0', 'round metal', 'silver', 1, '150', '1150', '0', '1150', '', 'Delivered', '2024-02-03'),
(395, 'Nabindra poudel', 'Shantinagar nagendrakancha chowk', '986-3978694', '0', 'fancy trending', 'black', 1, '100', '1000', '1000', '0', '', 'Delivered', '2024-02-04'),
(396, 'Chiya pasal', 'Junction chiya gahr', '9800000000', '0', 'big square', 'black', 1, '0', '850', '0', '850', '', 'Delivered', '2024-02-04'),
(397, 'Pratikshya Swornakar', 'Tulsipur dang', '9827803421', '0', 'fancy trending', 'black', 1, '190', '1085', '0', '1085', '', 'Delivered', '2024-02-04'),
(398, 'Sagar Kunwar Chhetri', 'Jhapa birtamode', '9803036967', '0', 'fancy trending', 'grey', 1, '170', '2390', '1390', '1000', 'Power blue cut blue\r\nLeft ko 0.75\r\nRight ko 1.5', 'Delivered', '2024-02-04'),
(399, 'Amshu Neupane', 'Mahalaxmisthan, lalitpur', '9867218935', '0', 'dior', 'black', 1, '100', '1040', '1040', '0', '', 'Delivered', '2024-02-04'),
(400, 'Suresh Bam', 'Mahadevsthan mandir, koteshowr', '9815651455', '0', 'fancy trending', 'green', 1, '100', '950', '950', '0', '', 'Delivered', '2024-02-05'),
(401, 'Bhima Poudel', 'Nawalparasi, Bhumahi', '9768293889', '0', 'small rectangle', 'black', 1, '140', '1140', '840', '300', '', 'Delivered', '2024-02-05'),
(402, 'subu ghimire', 'Dharan, D cafeteria ', '9815396333', '0', 'metal hard', 'black', 1, '160', '1220', '920', '300', '', 'Delivered', '2024-02-05'),
(403, 'Roshak giri', 'koteshwor 32 setiop marga sungava girls hostel', '9864097945', '0', 'fancy trending', 'black', 1, '100', '1000', '1000', '0', '', 'Delivered', '2024-02-05'),
(404, 'Bharat Kumar ganesh', 'Bhadrapur,jhapa birtamod', '9807973770', '0', 'fancy trending', 'black', 1, '170', '1080', '780', '300', '', 'Delivered', '2024-02-05'),
(405, 'Amar Thapa Magar ', 'High Vision Coloni vitra (Thankot Checkpost)', '9807447052', '0', 'fancy trending', 'transparent', 1, '110', '1000', '110', '0', '', 'Delivered', '2024-02-05'),
(406, 'Jeevan KC', 'Surkhet Yarichowk', '9860106563', '0', 'fancy trending', 'green', 1, '180', '1080', '0', '1080', '', 'Delivered', '2024-02-05'),
(407, 'Roshani singh', 'Alfabeta complex new Baneshwor', '9848064557', '0', 'fancy trending', 'black', 1, '100', '950', '950', '0', 'delivery before 4 pm', 'Delivered', '2024-02-05'),
(408, 'Rahul Rauniyar ', 'Rahul oil store parwanipur Birgunj Nepal ', '9855035308', '0', 'box', 'brown', 1, '150', '1240', '1040', '200', '', 'Delivered', '2024-02-06'),
(409, 'Rachit Dangal ', 'kaushaltar near amenity secondary school ', '9761805260', '0', 'fancy trending v2', 'shaded', 1, '110', '950', '950', '0', '', 'Delivered', '2024-02-06'),
(410, 'Sagun Basnet', 'Naya Naikap', '9860925980 / 9860372201', '0', 'fancy trending', 'transparent', 1, '110', '1750', '1750', '0', '', 'Delivered', '2024-02-06'),
(411, 'Subash ray', 'Teku', '9827654024', '0', 'fancy trending', 'grey', 1, '100', '950', '950', '0', '', 'Delivered', '2024-02-06'),
(412, 'Dipa Lamsal', 'Pokhara, Birauta', '9848264075', '0', 'retro', 'black', 1, '140', '1050', '0', '1050', '', 'Delivered', '2024-02-06'),
(413, 'Nabin malla', 'Kapan welcomparty place', '9818581008', '0', 'fancy trending', 'black', 1, '110', '950', '950', '0', '', 'Delivered', '2024-02-06'),
(414, 'Manish kumar sah', 'Bharatpur- 10 Dipendar chwok ho daraz office ko near', '9845013805', '0', 'fancy trending', 'black', 1, '140', '1050', '755', '295', '', 'Delivered', '2024-02-06'),
(415, 'sanjiv raut ', 'banepa chardobhato', '9863604995', '0', 'metal hard', 'black', 1, '150', '1050', '1050', '0', '', 'Delivered', '2024-02-06'),
(416, 'Sandesh Chaudhary', 'Dhangadhi, kailali', '9869566126', '0', 'magnetic', 'black', 1, '180', '2050', '0', '2050', '', 'Delivered', '2024-02-06'),
(417, 'Kedar Chaulagain', 'Baluwatar, KTM', '9801046498', '0', 'fancy trending', 'black', 1, '100', '1000', '1000', '0', '', 'Delivered', '2024-02-06'),
(418, 'Rabin magar', 'sathi', 'sathi', '0', 'rayban wayfarer small', 'black', 1, '0', '2600', '0', '2600', '', 'Delivered', '2024-02-06'),
(419, 'sathi', 'sathi', 'sathi', '0', 'alternative', 'black', 1, '0', '1500', '0', '1500', '', 'Delivered', '2024-02-06'),
(421, 'Lelina bhattarai ', 'Tnkune VS niketan college ', '9815948590', '', 'box', 'brown', 1, '100', '1190', '1190', '0', '', 'Delivered', '2024-02-06'),
(422, 'Prava karki', 'Balaju Industries area', '9843649103', '', 'fancy trending', 'transparent', 1, '0', '950', '950', '0', '', 'Delivered', '2024-02-06'),
(423, 'Grisha', 'Imadole ', '9844836774', '', 'round metal', 'black', 1, '300', '1250', '0', '1250', '', 'Delivered', '2024-02-06'),
(424, 'Priyanka Tandon', 'House no. 18, Royal housing, (opposite to Bhat bhateni) Greenland, Dhapasi, Kathmandu.', '9826454130', '', 'metal hard', 'silver', 1, '100', '1050', '1050', '0', '', 'Delivered', '2024-02-06'),
(425, 'chyoden lama ', 'banepa kavre', '9823262146', '', 'fancy trending', 'black', 1, '110', '1050', '1050', '0', '', 'Delivered', '2024-02-06'),
(426, 'Rubi Pandey ', 'Tinkune global ime bank', '9846332810', '', 'box', 'black', 1, '100', '2380', '2380', '0', '', 'Delivered', '2024-02-06'),
(427, 'Rubi Pandey ', 'Tinkune global ime bank', '9846332810', '', 'box', 'brown', 1, '0', '0', '0', '0', '\r\n', 'Delivered', '2024-02-06'),
(428, 'Bibek bishwokarma ', 'Jhapa dhulabarai ', '9824091263', '', 'fancy trending', 'black', 1, '170', '1100', '800', '300', '', 'Dispatched', '2024-02-07'),
(429, 'Radhika thapa', 'Kirtipur', '9863314390', '', 'fancy trending', 'transparent', 1, '110', '1000', '0', '1000', 'Delivery time 4PM\r\n', 'Dispatched', '2024-02-07'),
(430, 'Kirtipur', 'Imadol lalitpur', '9808531889', '', 'round metal', 'gold', 1, '110', '1100', '1100', '0', '', 'Dispatched', '2024-02-07'),
(432, ' Dipak bhandari', 'M&S tower F1SOFT international, Pulchowk', '9866207140', '', 'fancy trending', 'black', 1, '100', '950', '950', '0', '', 'Dispatched', '2024-02-07'),
(433, 'Saru kusum rai ', 'Imadol mahendra adarsha school ', '9863001179', '', 'fancy trending', 'transparent', 1, '110', '1000', '1000', '0', '', 'Dispatched', '2024-02-07'),
(434, 'Sahil maharjan', 'Kirtipur , jatra restaurant ', '9840497727', '', 'fancy trending v2', 'shaded', 2, '110', '1900', '1900', '0', '', 'Dispatched', '2024-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `modelName` varchar(100) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `modelName`, `colour`, `quantity`, `amount`, `dt`) VALUES
(151, 'aviator', 'black', '1', '450', '2024-02-01'),
(152, 'aviator', 'black', '1', '450', '2024-02-01'),
(153, 'bat', 'black', '1', '375', '2024-02-03'),
(154, 'fancy trending', 'black', '14', '4900', '2024-02-06'),
(155, 'fancy trending', 'green', '8', '2800', '2024-02-06'),
(156, 'fancy trending', 'maroon', '3', '1050', '2024-02-06'),
(157, 'specs box', 'black', '60', '3600', '2024-02-06'),
(158, 'brown box', 'brown', '60', '4500', '2024-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `modelNumber` varchar(100) NOT NULL,
  `modelName` varchar(100) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `boxNumber` varchar(100) NOT NULL,
  `costPrice` int(11) NOT NULL,
  `sellingPrice` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `img` text NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `modelNumber`, `modelName`, `colour`, `quantity`, `boxNumber`, `costPrice`, `sellingPrice`, `category`, `img`, `dt`) VALUES
(1, '', 'brown box', 'brown', 57, '0', 75, 0, 'Packing Box', 'IMG_20230728_140507_129.jpg', '2024-01-05'),
(2, '', 'specs box', 'black', 83, '0', 60, 0, 'Packing Box', 'IMG_20230728_140502_263.jpg', '2024-01-05'),
(6, 'W9046', 'dior', 'black', 3, '2', 375, 990, 'Sunglasses', '3E5FDAED-26EC-4132-99E3-9DEED6C22AF5.png', '2024-01-06'),
(7, 'W9046', 'dior', 'purple', 1, '2', 375, 990, 'Sunglasses', 'FF4D9E2D-45B6-428C-B65D-2155C1BC7F68.png', '2024-01-06'),
(8, 'W9046', 'dior', 'brown', 1, '2', 375, 990, 'Sunglasses', 'EC15E0BA-085E-4BFB-ACFC-4578E647EF49.png', '2024-01-06'),
(9, 'W9046', 'dior', 'shaded', 0, '2', 375, 990, 'Sunglasses', 'EF2A0153-4C9E-4268-A7C0-89568C39B10B.png', '2024-01-06'),
(10, '1.2', 'magnetic', 'black', -1, '2', 1250, 1950, 'Sunglasses', 'https://instagram.fktm10-1.fna.fbcdn.net/v/t51.2885-15/346372470_1880703078983635_4486118781495330945_n.jpg?stp=dst-jpg_e35_p480x480&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=instagram.fktm10-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=GXndYbPOF64AX_f7JfO&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzEwMjQ5NjY2MDA5MzQ2MzA1OQ%3D%3D.2-ccb7-5&oh=00_AfDEEkQnPvXDUO3Vh9HowygwqQhyfewxtH483F6gTjrvTw&oe=659EEBB1&_nc_sid=b41fef', '2024-01-06'),
(11, 'OFF8828', 'v', 'matt', 1, '2', 350, 990, 'Sunglasses', 'IMG_2697.jpeg', '2024-01-06'),
(12, '10 ', 'balen', 'gold', 2, '2', 450, 1090, 'Sunglasses', '', '2024-01-06'),
(13, '10.1', 'balen', 'silver', 2, '2', 450, 1090, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/404309761_17947182647723532_4854018142767698876_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=3635dc&_nc_ohc=cPizu2aVcLUAX-nY1LZ&_nc_ht=scontent.fktm10-1.fna&oh=00_AfDmdOnQzV98XdQWinfJ5k9A5enG2hH0DMiAajQkCP2PWQ&oe=659EE889', '2024-01-06'),
(14, '', 'balen', 'black', 2, '2', 450, 1090, 'Sunglasses', 'img_-goibzhHM.png', '2024-01-06'),
(15, 'Z3399', 'retro', 'black', 1, '2', 300, 950, 'Sunglasses', 'https://instagram.fktm10-1.fna.fbcdn.net/v/t51.2885-15/317006033_870273404387637_1051265412343108171_n.jpg?stp=dst-jpg_e15&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEwODAuc2RyIn0&_nc_ht=instagram.fktm10-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=0pwnqApBTkwAX_qrMl0&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=Mjk4MDQ5NTMyOTA5NzE2ODM5OA%3D%3D.2-ccb7-5&oh=00_AfCkSzLbkKU_6VTFnjNyQS71q1NUWw4AkDDfGCgfZBV_RQ&oe=659E9596&_nc_sid=b41fef', '2024-01-06'),
(16, 'Z3399', 'retro', 'leo', 0, '2', 300, 950, 'Sunglasses', 'https://instagram.fktm10-1.fna.fbcdn.net/v/t51.2885-15/316925387_1859779137713173_8288539843860197742_n.jpg?stp=dst-jpg_e15&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEwODAuc2RyIn0&_nc_ht=instagram.fktm10-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=Oo06J8ljH6wAX-GJAK5&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=Mjk4MDQ5NTMyOTExMzk1OTAyMQ%3D%3D.2-ccb7-5&oh=00_AfCdHyStCEeuNidsUAV4JfTgIXZpmAn0bcpcburRea3KfQ&oe=659EABB1&_nc_sid=b41fef', '2024-01-06'),
(17, 'Z3399', 'retro', 'white', 1, '2', 300, 950, 'Sunglasses', 'https://instagram.fktm10-1.fna.fbcdn.net/v/t51.2885-15/317279303_1003535434372511_1332474737230874691_n.jpg?stp=dst-jpg_e15&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEwODAuc2RyIn0&_nc_ht=instagram.fktm10-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=-ij-yUtxX1EAX_1kGNK&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=Mjk4MDQ5NTMyOTA4ODkwNjQwMA%3D%3D.2-ccb7-5&oh=00_AfCsJkMFwxxjth01VhETzFR1jQnOnMoWqibQffKq0gZCVw&oe=659DC507&_nc_sid=b41fef', '2024-01-06'),
(18, '', 'small new', 'black', 2, '2', 300, 950, 'Sunglasses', 'E8356E2A-D0F2-4597-8D88-A601E2E62E28.jpeg', '2024-01-06'),
(19, '18.5', 'tr90', 'brown', 1, '2', 350, 890, 'Sunglasses', '', '2024-01-06'),
(20, '19', 'vintage', 'gold', 0, '2', 350, 950, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/405911028_17948033231723532_1806517437926898429_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=3635dc&_nc_ohc=7ZuWsaSb-VgAX-jq5rU&_nc_ht=scontent.fktm10-1.fna&oh=00_AfDvBT98SIkiulk03O0oj4fh7LRuwOIJ-nSkfuzDLTpFTQ&oe=659ECEA2https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/405911028_17948033231723532_1806517437926898429_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=3635dc&_nc_ohc=SsD5bLpeXPYAX-dYpSq&_nc_ht=scontent.fktm10-1.fna&oh=00_AfBrDKtTO9S5-q7NT-AFkI0zLsUF283rfIuQb4D_JkJDzQ&oe=65A8B1E2', '2024-01-06'),
(21, '19.5', 'vintage', 'silver', 2, '2', 350, 950, 'Sunglasses', '', '2024-01-06'),
(22, '5344', 'plastic cateye', 'black', 0, '2', 250, 890, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/409220256_17949979514723532_6410193462741682644_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=3635dc&_nc_ohc=pjY4sWnMXSYAX9GyIAI&_nc_ht=scontent.fktm10-1.fna&oh=00_AfC4aXTHAPTCS89G0DzrPQG8sgrvrPRhyBN8zGfr2ZmZhA&oe=65A99498', '2024-01-06'),
(23, '5344', 'plastic cateye', 'nude', 1, '2', 200, 890, 'Sunglasses', '', '2024-01-06'),
(24, '22084', 'big square', 'orange', 2, '2', 350, 950, 'Sunglasses', 'IMG_0984.jpeg', '2024-01-06'),
(25, '22084', 'big square', 'grey', 2, '2', 350, 950, 'Sunglasses', 'IMG_0992.jpeg', '2024-01-06'),
(26, '22084', 'big square', 'black', 1, '2', 350, 950, 'Sunglasses', 'IMG_0987.jpeg', '2024-01-06'),
(27, '58030', 'retro colourful', 'peach', 1, '3', 300, 950, 'Sunglasses', '', '2024-01-06'),
(28, 'W9099', 'prada big', 'black', 0, '3', 375, 990, 'Sunglasses', '', '2024-01-06'),
(29, 'W9099', 'prada big', 'brown', 2, '3', 375, 990, 'Sunglasses', '', '2024-01-06'),
(30, 'W9099', 'prada big', 'white', 0, '3', 375, 990, 'Sunglasses', '', '2024-01-06'),
(31, 'B80-652', 'bat', 'black', 0, '3', 375, 990, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/415485837_17952928745723532_1577701646051021394_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=3635dc&_nc_ohc=t9MV9QC0LFsAX9c6AP1&_nc_ht=scontent.fktm10-1.fna&oh=00_AfBKKf5OvS8zmby84zhSNZYCM_sEZgsbcIN5DPIGEF7APg&oe=65A8C012', '2024-01-06'),
(32, 'B80-652', 'bat', 'brown', 1, '3', 375, 990, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/415482500_17952928754723532_6482264105306193607_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=3635dc&_nc_ohc=E59hA-3JVMkAX-ptsfS&_nc_ht=scontent.fktm10-1.fna&oh=00_AfB4aSqJ-TtI09gx0Yjh2XIbBnRD5ZcKbWiVlimQkoNh9A&oe=65A8F43F', '2024-01-06'),
(33, '61', 'new square', 'black', 0, '3', 375, 990, 'Sunglasses', '', '2024-01-06'),
(34, '61', 'new square', 'green', 0, '3', 375, 990, 'Sunglasses', '', '2024-01-06'),
(35, 'B329', 'th square 2 dot', 'black', 2, '3', 450, 1150, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/402862715_17947035980723532_3303411017572502104_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=3635dc&_nc_ohc=70_at2P7jcgAX8znj2f&_nc_ht=scontent.fktm10-1.fna&oh=00_AfChZE2NWswzrSTl92yVmj_29Jo9P9M_lly0Jrwhey6pVA&oe=659DE788', '2024-01-06'),
(36, '47', 'changeable', 'black', 1, '5', 350, 950, 'Specs', 'IMG_20240128_180111.jpg', '2024-01-06'),
(37, 'TR83042', 'square dhakal', 'transparent', 2, '5', 350, 950, 'Specs', 'mero-bluecut.jpg', '2024-01-06'),
(38, 'TR83042', 'square dhakal', 'shade', 0, '5', 350, 950, 'Specs', '359710360_982583742884491_3345728521849105304_n.jpg', '2024-01-06'),
(39, 'TR83042', 'square dhakal', 'black', 1, '5', 350, 950, 'Specs', '360035979_1080173206700926_7964719271854504022_n.jpg', '2024-01-06'),
(40, 'G95-156', 'saksham', 'black', 3, '5', 375, 950, 'Specs', '361905639_17929497890723532_4537.png', '2024-01-06'),
(41, '20331', 'fancy trending v2', 'black', 3, '5', 250, 950, 'Specs', 'IMG_20240112_211318_128.jpg', '2024-01-06'),
(42, '20331', 'fancy trending v2', 'transparent', 1, '5', 250, 950, 'Specs', 'IMG_20240112_211322_786.jpg', '2024-01-06'),
(43, '20331', 'fancy trending v2', 'shaded', -1, '5', 250, 950, 'Specs', 'IMG_20240112_211319_393.jpg', '2024-01-06'),
(44, '20331', 'fancy trending v2', 'grey', 2, '5', 250, 950, 'Specs', 'IMG_20240112_211321_076.jpg', '2024-01-06'),
(45, '8342', 'plastic cateye', 'transparent', 2, 'New b/c', 350, 950, 'Specs', '', '2024-01-06'),
(46, '8342', 'plastic cateye', 'pink', 2, 'New b/c', 350, 950, 'Specs', '', '2024-01-06'),
(47, '8342', 'plastic cateye', 'orange', 2, 'New b/c', 350, 950, 'Specs', '', '2024-01-06'),
(48, '12', 'cateye metal', 'gold', 2, '5', 350, 950, 'Specs', 'IMG_2519.jpeg', '2024-01-06'),
(49, '', 'cateye metal', 'silver', 2, '5', 350, 950, 'Specs', 'IMG_2507.jpeg', '2024-01-06'),
(50, '20098', 'fancy trending', 'grey', 7, '20098', 350, 950, 'Specs', 'IMG_2717.jpg', '2024-01-06'),
(51, '20098', 'fancy trending', 'green', 10, '20098', 350, 950, 'Specs', 'IMG_2722.jpg', '2024-01-06'),
(52, '20098', 'fancy trending', 'transparent', 3, '20098', 350, 950, 'Specs', 'IMG_2725.jpg', '2024-01-06'),
(53, '20098', 'fancy trending', 'maroon', 4, '20098', 350, 950, 'Specs', '357479198_17926921640723532_8542559865777062478_n.jpg', '2024-01-06'),
(54, '20098', 'fancy trending', 'black', 9, '20098', 350, 950, 'Specs', '357397434_17926921664723532_2051197398090303000_n.jpg', '2024-01-06'),
(55, '20098', 'fancy trending', 'white', 15, '20098', 350, 950, 'Specs', '358092468_17926921673723532_8256412402177610980_n.jpg', '2024-01-06'),
(56, 'G95-154', 'cateye v2', 'pink', 0, '5', 375, 950, 'Specs', '', '2024-01-06'),
(57, 'G95-154', 'cateye v2', 'blue', 3, '5', 350, 950, 'Specs', 'IMG_5740.jpg', '2024-01-06'),
(58, 'Tr90 7003', 'mens tr90', 'black', 1, 'New b/c', 375, 950, 'Specs', '8B8C00BD-D2F5-43F0-97D3-6D379F059614.jpeg', '2024-01-06'),
(59, 'Tr90 7003', 'mens tr90', 'transparent', 1, 'New b/c', 375, 950, 'Specs', '9837B58D-32BF-4E6C-91E1-BEC368B84FC0.jpeg', '2024-01-06'),
(60, 'Zn 2598', 'hospital', 'black', 0, '5', 350, 950, 'Specs', 'IMG_6275.jpg', '2024-01-06'),
(61, '2155', 'top bar plastic', 'transparent', 0, '5', 350, 950, 'Specs', 'IMG_6247.jpg', '2024-01-06'),
(62, 'Tr90 7014', 'round plastic', 'transparent', 0, 'New b/c', 350, 950, 'Specs', 'IMG_2479.jpeg', '2024-01-06'),
(63, 'Tr90 7014', 'round plastic', 'black', 1, 'New b/c', 350, 950, 'Specs', 'IMG_2474.jpeg', '2024-01-06'),
(64, 'ZN3663', 'small fancy', 'black', 0, '5', 350, 950, 'Specs', 'IMG_6262.jpg', '2024-01-06'),
(65, 'ZN3663', 'small fancy', 'grey', 1, '5', 350, 950, 'Specs', 'IMG_6264.jpg', '2024-01-06'),
(66, 'ZN3663', 'small fancy', 'transparent', 1, '5', 350, 950, 'Specs', 'IMG_6263.jpg', '2024-01-06'),
(67, '8313', 'octagon', 'black', 1, 'New b/c', 350, 950, 'Specs', 'IMG_20240112_211258_775.jpg', '2024-01-06'),
(68, '8313', 'octagon', 'matte', 1, 'New b/c', 350, 950, 'Specs', 'IMG_20240112_211258_775.jpg', '2024-01-06'),
(69, '8313', 'octagon', 'pink', 1, 'New b/c', 350, 950, 'Specs', 'IMG_20240112_211300_839.jpg', '2024-01-06'),
(70, '8313', 'octagon', 'blue', 2, 'New b/c', 350, 950, 'Specs', 'D16B5B1D-118C-4399-86EF-22FA4A552674.png', '2024-01-06'),
(71, '', 'round metal', 'black', 3, '6', 400, 1050, 'Sunglasses', 'IMG_0886.jpg', '2024-01-06'),
(72, '', 'round metal', 'silver', 1, '6', 400, 1050, 'Sunglasses', 'IMG_0898.jpg', '2024-01-06'),
(73, '', 'round metal', 'gold', 0, '6', 400, 1050, 'Sunglasses', 'IMG_0889.jpg', '2024-01-06'),
(74, 'B80-701', 'top bar', 'silver', 1, '6', 400, 1050, 'Sunglasses', 'IMG_6225.jpg', '2024-01-06'),
(75, 'P1836', 'thoplo matrix', 'black', 0, '6', 350, 1150, 'Sunglasses', 'IMG_2453.jpeg', '2024-01-06'),
(76, '', 'sanya', 'black', 3, '6', 350, 950, 'Sunglasses', '387794076_17941616033723532_2492.png', '2024-01-06'),
(77, '', 'sanya', 'brown', 4, '6', 350, 950, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/387790423_17941616051723532_1746738612216974000_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=3635dc&_nc_ohc=gjQChxXF0YsAX-UXFEl&_nc_ht=scontent.fktm10-1.fna&oh=00_AfAqL7wlcI_z134Om66bsDJCDvSXYmvUJTenAPXh_smq3Q&oe=659D5687', '2024-01-06'),
(78, '', 'newmew', 'black', 4, '1', 350, 950, 'Sunglasses', 'IMG_2562.jpeg', '2024-01-06'),
(79, '', 'newmew', 'leo', 4, '1', 350, 950, 'Sunglasses', 'IMG_2584.jpeg', '2024-01-06'),
(80, 'P1841', 'old matrix', 'black', 1, '1', 425, 1090, 'Sunglasses', 'https://instagram.fktm10-1.fna.fbcdn.net/v/t39.30808-6/358053420_17927242976723532_8623141569352018731_n.jpg?stp=dst-jpg_e15&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEwODAuc2RyIn0&_nc_ht=instagram.fktm10-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=pwT-1P_ASN0AX8G4zkf&edm=ABmJApAAAAAA&ccb=7-5&ig_cache_key=MzE0MDk3NTU5NDkzMzY3Mjg2OQ%3D%3D.2-ccb7-5&oh=00_AfCeThHn44mCnJLa40SR9kzp3tzO66rRitbZOVoLo5tPiQ&oe=659DB3FB&_nc_sid=b41fef', '2024-01-06'),
(81, '9093', 'prada', 'purple', 1, '1', 375, 990, 'Sunglasses', '2.jpeg', '2024-01-06'),
(82, '', 'metal hard', 'silver', 2, '1', 400, 1050, 'Sunglasses', 'IMG_5569.jpg', '2024-01-06'),
(83, '', 'metal hard', 'black', 0, '1', 400, 1050, 'Sunglasses', 'IMG_5566.jpg', '2024-01-06'),
(84, '', 'david beckham', 'black', 3, '4', 400, 990, 'Sunglasses', 'db.png', '2024-01-06'),
(85, '', 'david beckham', 'leo', 2, '4', 400, 990, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/407976656_17949576284723532_4971376061151343828_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=3635dc&_nc_ohc=tXFSSEseRrgAX_BsH7A&_nc_ht=scontent.fktm10-1.fna&oh=00_AfAj658bZCXcRga15DF-o9IZ9J-shmPO5Twj4_tsLZxt7w&oe=65A96F22', '2024-01-06'),
(86, '8342', 'plastic cateye', 'black', 2, 'New b/c', 350, 950, 'Specs', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/387168349_17941616018723532_7795234219002189539_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=3635dc&_nc_ohc=ToKRsnCLU0AAX82DIh3&_nc_ht=scontent.fktm10-1.fna&oh=00_AfBq2h8zoZR5HlYX_kOrohktIQ1WWR8rF07yX-tHezMNLw&oe=659DB8C4', '2024-01-06'),
(87, '', 'small rectangle', 'black', 1, '4', 400, 990, 'Sunglasses', 'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/405475109_17947745054723532_2185570267702059327_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=3635dc&_nc_ohc=pq2WsEop7GkAX8SfIW3&_nc_oc=AQkp10Xn3FrNtfHyxCdxJ7E_MX2PHeROqCS8iBEJYrCp32AP5cIWV7eRqa9Hh2acrE685Q2VlC2_lyu-vDQhCL3X&_nc_ht=scontent.fktm10-1.fna&oh=00_AfATiI_8S1g-ZOK0Hz-7XNwkN_OxPGms1fgTrZu-1oU7jA&oe=65A80129', '2024-01-06'),
(88, '', 'small rectangle', 'leo', 1, '4', 400, 990, 'Sunglasses', 'slick.png', '2024-01-06'),
(89, '', 'box', 'brown', 11, '0', 600, 1190, 'Box', 'IMG_20240111_203434_252.jpg', '2024-01-06'),
(90, '', 'box', 'black', 19, '0', 600, 1190, 'Box', 'IMG_2734.jpg', '2024-01-06'),
(91, '52', 'plastic cateye v2', 'black', 2, '4', 350, 950, 'Sunglasses', 'cateyev2.png', '2024-01-07'),
(92, '', 'th square 2 dot', 'matte', 2, '3', 450, 1150, 'Sunglasses', '', '2024-01-11'),
(93, '3016', 'clubmaster', 'black', 0, '1', 300, 950, 'Sunglasses', '', '2024-01-11'),
(94, '3016', 'clubmaster', 'green', 1, '1', 300, 950, 'Sunglasses', 'IMG_3024.jpeg', '2024-01-11'),
(95, '', 'vintage', 'black', 2, '2', 350, 950, 'Sunglasses', '', '2024-01-17'),
(96, '', 'vintage', 'gold brown', 2, '2', 350, 950, 'Sunglasses', '', '2024-01-17'),
(97, '9093', 'prada', 'brown', 1, '1', 375, 990, 'Sunglasses', 'IMG_5658.jpeg', '2024-01-17'),
(98, '', 'small new', 'transparent', 4, '2', 300, 950, 'Sunglasses', 'IMG_2795.jpeg', '2024-01-17'),
(99, '', 'aviator', 'black', 1, '2', 450, 1190, 'Sunglasses', 'IMG_5551.jpg', '2024-01-25'),
(100, '', 'mens bluecut', 'grey', 0, '5', 350, 950, 'Specs', '', '2024-01-27'),
(101, '', 'oval', 'silver', 1, '1', 350, 950, 'Sunglasses', 'IMG_6063.jpg', '2024-01-28'),
(102, '', 'alternative', 'black', 0, '0', 350, 950, 'Sunglasses', '', '2024-01-28'),
(103, '', 'Oval', 'black', 1, '1', 350, 950, 'Sunglasses', 'IMG-20240104-WA0003.jpg', '2024-01-29'),
(104, '', 'oval', 'gold', 1, '1', 350, 950, 'Sunglasses', 'IMG_6062.jpg', '2024-01-29'),
(105, '', 'rayban wayfarer small', 'black', 0, '1', 500, 1190, 'Sunglasses', 'IMG_2745.jpeg', '2024-01-30'),
(106, '', 'rayban wayfarer big', 'black', 0, '1', 400, 1190, 'Sunglasses', 'IMG_2743.jpeg', '2024-01-30'),
(107, '', 'octagon', 'purple', 1, 'New b/c', 350, 950, 'Specs', 'IMG_20240112_211258_775.jpg', '2024-01-30'),
(108, '', '5 in 1', 'black', 1, '1', 500, 1190, 'Sunglasses', 'IMG_20240204_180649_123.jpg', '2024-01-30'),
(109, '', '5 in 1', 'matt', 1, '1', 500, 1190, 'Sunglasses', 'IMG_20240204_180649_123.jpg', '2024-01-30'),
(110, '', 'round metal', 'black gold', 2, '6', 400, 1050, 'Sunglasses', 'IMG_2634.jpeg', '2024-01-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitting`
--
ALTER TABLE `fitting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment`
--
ALTER TABLE `investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `miscellaneousexpenses`
--
ALTER TABLE `miscellaneousexpenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openingstock`
--
ALTER TABLE `openingstock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fitting`
--
ALTER TABLE `fitting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `investment`
--
ALTER TABLE `investment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `miscellaneousexpenses`
--
ALTER TABLE `miscellaneousexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `openingstock`
--
ALTER TABLE `openingstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
