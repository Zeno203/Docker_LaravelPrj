-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 06:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmovie`
--
CREATE DATABASE IF NOT EXISTS `webmovie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webmovie`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`) VALUES
(3, 'Phim bộ', 'Phim gồm nhiều tập', 1, 'phim-bo'),
(4, 'Phim lẻ', 'Phim chỉ có 1 tập', 1, 'phim-le'),
(6, 'Độc quyền', 'Phim render trên server', 0, 'doc-quyen');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Nhật Bản', 'Japan', 1, 'nhat-ban'),
(2, 'Trung Quốc', 'China, Trung Quốc', 1, 'trung-quoc'),
(4, 'Âu Mỹ', 'Form API', 1, 'au-my'),
(5, 'Thổ Nhĩ Kỳ', 'Form API', 1, 'tho-nhi-ky'),
(6, 'Thái Lan', 'Form API', 1, 'thai-lan'),
(7, 'Hàn Quốc', 'Form API', 1, 'han-quoc');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `linkphim` varchar(255) NOT NULL,
  `episode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`) VALUES
(2108, 38, 'https://vip.opstream13.com/share/852c44ddce7e0c7e4c64d86147300831', 1),
(2109, 38, 'https://vip.opstream13.com/share/8f125da0b3432ed853c0b6f7ee5aaa6b', 2),
(2110, 38, 'https://vip.opstream13.com/share/ef1e491a766ce3127556063d49bc2f98', 3),
(2111, 38, 'https://vip.opstream13.com/share/74934548253bcab8490ebd74afed7031', 4),
(2112, 38, 'https://vip.opstream13.com/share/17b3c7061788dbe82de5abe9f6fe22b3', 5),
(2113, 38, 'https://vip.opstream13.com/share/309a8e73b2cdb95fc1affa8845504e87', 6),
(2114, 38, 'https://vip.opstream13.com/share/bd70364a8fcba02366697df66f50b4d4', 7),
(2115, 38, 'https://vip.opstream13.com/share/339a18def9898dd60a634b2ad8fbbd58', 8),
(2116, 38, 'https://vip.opstream13.com/share/4ebccfb3e317c7789f04f7a558df4537', 9),
(2117, 38, 'https://vip.opstream13.com/share/50abc3e730e36b387ca8e02c26dc0a22', 10),
(2118, 38, 'https://vip.opstream13.com/share/32b991e5d77ad140559ffb95522992d0', 11),
(2119, 38, 'https://vip.opstream13.com/share/e02e27e04fdff967ba7d76fb24b8069d', 12),
(2120, 38, 'https://vip.opstream13.com/share/8dc5983b8c4ef1d8fcd5f325f9a65511', 13),
(2121, 38, 'https://vip.opstream13.com/share/321cf86b4c9f5ddd04881a44067c2a5a', 14),
(2122, 38, 'https://vip.opstream13.com/share/75e33da9b103b7b91dcd8da0abe1354b', 15),
(2123, 38, 'https://vip.opstream13.com/share/6aed000af86a084f9cb0264161e29dd3', 16),
(2124, 38, 'https://vip.opstream13.com/share/5df07ecf4cea616e3eb384a9be3511bb', 17),
(2125, 38, 'https://vip.opstream13.com/share/c4f796afbc6267501964b46427b3f6ba', 18),
(2126, 38, 'https://vip.opstream13.com/share/8420d359404024567b5aefda1231af24', 19),
(2127, 38, 'https://vip.opstream13.com/share/c61fbef63df5ff317aecdc3670094472', 20),
(2128, 38, 'https://vip.opstream13.com/share/c60d870eaad6a3946ab3e8734466e532', 21),
(2129, 38, 'https://vip.opstream13.com/share/7c4bf50b715509a963ce81b168ca674b', 22),
(2130, 38, 'https://vip.opstream13.com/share/09a5e2a11bea20817477e0b1dfe2cc21', 23),
(2131, 38, 'https://vip.opstream13.com/share/1680e9fa7b4dd5d62ece800239bb53bd', 24),
(2132, 38, 'https://vip.opstream13.com/share/41ab1b1d6bf108f388dfb5cd282fb76c', 25),
(2133, 38, 'https://vip.opstream13.com/share/3a0844cee4fcf57de0c71e9ad3035478', 26),
(2134, 38, 'https://vip.opstream13.com/share/5ac8bb8a7d745102a978c5f8ccdb61b8', 27),
(2135, 38, 'https://vip.opstream13.com/share/573eec40e4ef4f2089531dd5cbf629f8', 28),
(2136, 38, 'https://vip.opstream13.com/share/028ee724157b05d04e7bdcf237d12e60', 29),
(2137, 38, 'https://vip.opstream13.com/share/b38e5ff5f816ac6e4169bce9314b2996', 30),
(2138, 38, 'https://vip.opstream13.com/share/577fd60255d4bb0f466464849ffe6d8e', 31),
(2139, 38, 'https://vip.opstream13.com/share/f6185f0ef02dcaec414a3171cd01c697', 32),
(2140, 38, 'https://vip.opstream13.com/share/110eec23201d80e40d0c4a48954e2ff5', 33),
(2141, 38, 'https://vip.opstream13.com/share/d790c9e6c0b5e02c87b375e782ac01bc', 34),
(2142, 38, 'https://vip.opstream13.com/share/3bd4017318837e92a66298c7855f4427', 35),
(2143, 38, 'https://vip.opstream13.com/share/cf9b2d0406020c56599f9a93708832b5', 36),
(2144, 38, 'https://vip.opstream13.com/share/403ea2e851b9ab04a996beab4a480a30', 37),
(2145, 38, 'https://vip.opstream13.com/share/7aee26c309def8c5a2a076eb250b8f36', 38),
(2146, 38, 'https://vip.opstream13.com/share/ff2cc3b8c7caeaa068f2abbc234583f5', 39),
(2147, 38, 'https://vip.opstream13.com/share/cdd96eedd7f695f4d61802f8105ba2b0', 40),
(2148, 38, 'https://vip.opstream13.com/share/058d6f2fbe951a5a56d96b1f1a6bca1c', 41),
(2149, 38, 'https://vip.opstream13.com/share/ad47a008a2f806aa6eb1b53852cd8b37', 42),
(2150, 38, 'https://vip.opstream13.com/share/b1c00bcd4b5183705c134b3365f8c45e', 43),
(2151, 38, 'https://vip.opstream13.com/share/361440528766bbaaaa1901845cf4152b', 44),
(2152, 38, 'https://vip.opstream13.com/share/5e751896e527c862bf67251a474b3819', 45),
(2153, 38, 'https://vip.opstream13.com/share/a4613e8d72a61b3b69b32d040f89ad81', 46),
(2154, 38, 'https://vip.opstream13.com/share/421b3ac5c24ee992edd6087611c60dbb', 47),
(2155, 38, 'https://vip.opstream13.com/share/08f38e0434442128fab5ead6217ca759', 48),
(2156, 38, 'https://vip.opstream13.com/share/96f2b50b5d3613adf9c27049b2a888c7', 49),
(2157, 38, 'https://vip.opstream13.com/share/cdcb2f5c7b071143529ef7f2705dfbc4', 50),
(2158, 38, 'https://vip.opstream13.com/share/78f7d96ea21ccae89a7b581295f34135', 51),
(2159, 38, 'https://vip.opstream13.com/share/566a9968b43628588e76be5a85a0f9e8', 52),
(2160, 38, 'https://vip.opstream13.com/share/d37124c4c79f357cb02c655671a432fa', 53),
(2161, 38, 'https://vip.opstream13.com/share/2b6921f2c64dee16ba21ebf17f3c2c92', 54),
(2162, 38, 'https://vip.opstream13.com/share/868b7df964b1af24c8c0a9e43a330c6a', 55),
(2163, 38, 'https://vip.opstream13.com/share/1006ff12c465532f8c574aeaa4461b16', 56),
(2164, 38, 'https://vip.opstream13.com/share/d37b3ca37106b2bfdeaa12647e3bb1c9', 57),
(2165, 38, 'https://vip.opstream13.com/share/fc192b0c0d270dbf41870a63a8c76c2f', 58),
(2166, 38, 'https://vip.opstream13.com/share/d58e2f077670f4de9cd7963c857f2534', 59),
(2167, 38, 'https://vip.opstream13.com/share/b2ea5e977c5fc1ccfa74171a9723dd61', 60),
(2168, 38, 'https://vip.opstream13.com/share/a7a3d70c6d17a73140918996d03c014f', 61),
(2169, 38, 'https://vip.opstream13.com/share/98d8a23fd60826a2a474c5b4f5811707', 62),
(2170, 38, 'https://vip.opstream13.com/share/370bfb31abd222b582245b977ea5f25a', 63),
(2171, 38, 'https://vip.opstream13.com/share/045cf83ab0722e782cf72d14e44adf98', 64),
(2172, 38, 'https://vip.opstream13.com/share/f75526659f31040afeb61cb7133e4e6d', 65),
(2173, 38, 'https://vip.opstream13.com/share/f499d34bd87b42948b3960b8f6b82e74', 66),
(2174, 38, 'https://vip.opstream13.com/share/42a6845a557bef704ad8ac9cb4461d43', 67),
(2175, 38, 'https://vip.opstream13.com/share/aeefb050911334869a7a5d9e4d0e1689', 68),
(2176, 38, 'https://vip.opstream13.com/share/5be278a9e02bed9248a4674ff62fea2c', 69),
(2177, 38, 'https://vip.opstream13.com/share/663772ea088360f95bac3dc7ffb841be', 70),
(2178, 38, 'https://vip.opstream13.com/share/2e0bff759d057e28460eaa5b2cb118e5', 71),
(2179, 38, 'https://vip.opstream13.com/share/d210cf373cf002a04ec72ee395f66306', 72),
(2180, 38, 'https://vip.opstream13.com/share/46b2644cbdf489fac0e2d192212d206d', 73),
(2181, 38, 'https://vip.opstream13.com/share/0738069b244a1c43c83112b735140a16', 74),
(2182, 38, 'https://vip.opstream13.com/share/4ea6a546c19499318091a9df40a13181', 75),
(2183, 38, 'https://vip.opstream13.com/share/6775a0635c302542da2c32aa19d86be0', 76),
(2184, 38, 'https://vip.opstream13.com/share/ade55409d1224074754035a5a937d2e0', 77),
(2185, 38, 'https://vip.opstream13.com/share/9752d873fa71c19dc602bf2a0696f9b5', 78),
(2186, 39, 'https://vip.opstream11.com/share/c5daf8f412cb6470ad672ceb57717192', 1),
(2187, 39, 'https://vip.opstream11.com/share/ac83d3f400e95a5d31e7c59d2743bf73', 2),
(2188, 39, 'https://vip.opstream11.com/share/544d86a583c877780b83a3b31e226465', 3),
(2189, 39, 'https://vip.opstream11.com/share/ec25d36848f1c8eed1c6729bb73fc7f9', 4),
(2190, 39, 'https://vip.opstream11.com/share/37563f059c2d815bf5fc637cb88e1df3', 5),
(2191, 39, 'https://vip.opstream11.com/share/a352147f3aad581bed027339ac1d5dd9', 6),
(2192, 39, 'https://vip.opstream11.com/share/b67d084d74c3f7c0145f96a0ac4c82a8', 7),
(2193, 39, 'https://vip.opstream11.com/share/35c1124dd508ead6eb8c4aee9a7f5d71', 8),
(2194, 39, 'https://vip.opstream11.com/share/61dee0400b6103176dbc54320450c12f', 9),
(2195, 39, 'https://vip.opstream11.com/share/6ce9f61e2ff2bc4b922aeda874e96d5b', 10),
(2196, 39, 'https://vip.opstream11.com/share/0e11c5d19204c3c8e967811d54adbede', 11),
(2197, 39, 'https://vip.opstream11.com/share/c45b876541ee45037b6ba8c7af1608ac', 12),
(2198, 39, 'https://vip.opstream11.com/share/dd397459f8f50e4cd7c5e9d77b8b19f1', 13),
(2199, 39, 'https://vip.opstream11.com/share/5c6839e11219ac4b4021d194b43665f7', 14),
(2200, 39, 'https://vip.opstream11.com/share/251fbd782fec91a50eb1b6050f8d7f2b', 15),
(2201, 39, 'https://vip.opstream11.com/share/1e5afae270de728fd14f20133233d33a', 16),
(2202, 39, 'https://vip.opstream11.com/share/1130d3f4bee922658eb1347e27ff55f3', 17),
(2203, 39, 'https://vip.opstream11.com/share/4825f2b20fb569c346c060a2f8c31c18', 18),
(2204, 39, 'https://vip.opstream11.com/share/14253cc3324fa4766ffbe5f12a7dba10', 19),
(2205, 39, 'https://vip.opstream11.com/share/b7d20eb3c83c02646cd3d927de1c36bf', 20),
(2206, 39, 'https://vip.opstream11.com/share/1084a91264d0a5d47eeb3659f9c36935', 21),
(2207, 39, 'https://vip.opstream11.com/share/fdccddea8522e14b9d8a41551d9256fa', 22),
(2208, 39, 'https://vip.opstream11.com/share/1427649dc26d209f0b0bd9d3c025ad98', 23),
(2209, 39, 'https://vip.opstream11.com/share/1ff6e4e242c43c4d51c98e65659083a3', 24),
(2210, 39, 'https://vip.opstream11.com/share/e74843b99da8b29775c6aa9080436844', 25),
(2211, 39, 'https://vip.opstream11.com/share/6964e9d5cd1aab8c7c72b12b77f2fd20', 26),
(2212, 39, 'https://vip.opstream11.com/share/7a456d7f29b4e7e92bb9a14c24dce430', 27),
(2213, 39, 'https://vip.opstream11.com/share/00d4e0aa728e91def3ee7293fcda8670', 28),
(2214, 39, 'https://vip.opstream11.com/share/80154d0cf42299d38de5046efc2429a3', 29),
(2215, 39, 'https://vip.opstream11.com/share/3a51104c66686fac95156c1a1d632bd4', 30),
(2216, 39, 'https://vip.opstream11.com/share/f4401dd087608e344ac946c2f5a982e4', 31),
(2217, 39, 'https://vip.opstream11.com/share/2a8efa289025a74ce50cae9e92e0edb2', 32),
(2218, 39, 'https://vip.opstream11.com/share/a62aade1e0954398c32f6f090f50ee1b', 33),
(2219, 39, 'https://vip.opstream11.com/share/7c2174131255d8e906a502237185a436', 34),
(2220, 39, 'https://vip.opstream11.com/share/46a62c34c7b8b0c0d02f0833df49ec20', 35),
(2221, 39, 'https://vip.opstream11.com/share/0d7c463832b871c20405a6c9296b5517', 36),
(2222, 39, 'https://vip.opstream11.com/share/45a042358c47c0059ee86d8508dfcbec', 37),
(2223, 39, 'https://vip.opstream11.com/share/82bdd6d74c304d5130239833c88d2f18', 38),
(2224, 39, 'https://vip.opstream11.com/share/94397fe878869449f866b64722a0b7c9', 39),
(2225, 39, 'https://vip.opstream11.com/share/9e925259d9d363b290c7e47209cd2ad7', 40),
(2226, 39, 'https://vip.opstream11.com/share/8ca33d44648cc9feecef21e5a7123291', 41),
(2227, 39, 'https://vip.opstream11.com/share/21e04c4536ac1ee11ab991e1dea13c47', 42),
(2228, 39, 'https://vip.opstream11.com/share/7c08f51438fbd3ee4cbb942a0b87eb9e', 43),
(2229, 39, 'https://vip.opstream11.com/share/d1dd537846e529e1101d7c23e170fe4b', 44),
(2230, 39, 'https://vip.opstream11.com/share/355cd105f79507780fad8848469baca1', 45),
(2231, 39, 'https://vip.opstream11.com/share/3464ce4186536a9855a8a7967b121b3e', 46),
(2232, 39, 'https://vip.opstream11.com/share/45b36e5ecc568d49a32b60f80f332b69', 47),
(2233, 39, 'https://vip.opstream11.com/share/f9dd94e7acd400658ac4fd2817ea4fef', 48),
(2234, 39, 'https://vip.opstream11.com/share/f9c1e83924ec2b3b79247ac16c7c966b', 49),
(2235, 39, 'https://vip.opstream11.com/share/9828cb4d004ea22ddad5fb03c84a2379', 50),
(2236, 39, 'https://vip.opstream11.com/share/b41ceb1791257df1e55b59ec7ad75533', 51),
(2237, 39, 'https://vip.opstream11.com/share/991becb4d6456d01dad848301495f0ea', 52),
(2238, 39, 'https://vip.opstream11.com/share/7b061988b655fa9f9d4ffc41d1d68160', 53),
(2239, 39, 'https://vip.opstream11.com/share/b387056cb9e8740f37727d8ca2d0db1c', 54),
(2240, 39, 'https://vip.opstream11.com/share/f5bdd987e82cfcad049b164a59d1fe2f', 55),
(2241, 39, 'https://vip.opstream11.com/share/4e2e81310c1a604b24775dd7cb008573', 56),
(2242, 39, 'https://vip.opstream11.com/share/4e17f2a258effb8ae350f8a8062d9a4c', 57),
(2243, 39, 'https://vip.opstream11.com/share/11bf14c1513b62f30e5e8be425774d30', 58),
(2244, 39, 'https://vip.opstream11.com/share/1ed021a05ef5089233379be996f7bbdd', 59),
(2245, 39, 'https://vip.opstream11.com/share/f5abe18064d57c2e5a768504a2041036', 60),
(2246, 39, 'https://vip.opstream11.com/share/a7352f283d027c32643c4a1b42a699c0', 61),
(2247, 39, 'https://vip.opstream11.com/share/f95490b29665f1400527d32a286f63ad', 62),
(2248, 39, 'https://vip.opstream11.com/share/3f2b8decc6771a77dad1fa90ced28eaa', 63),
(2249, 39, 'https://vip.opstream11.com/share/1aa4d17f2dcdae2f4ced909341741792', 64),
(2250, 39, 'https://vip.opstream11.com/share/80577d9cb5c479e8e8b85252f1bfe005', 65),
(2251, 39, 'https://vip.opstream11.com/share/e6ceb6cde9578ed6229ba2da69234a14', 66),
(2252, 39, 'https://vip.opstream11.com/share/d9a11bb21bc9ba7d56e152baed4a3c9c', 67),
(2253, 39, 'https://vip.opstream11.com/share/e40cce862b0fb75635e102bc1dd07f6f', 68),
(2254, 39, 'https://vip.opstream11.com/share/cd65710fc56d8163dfaed043e4129690', 69),
(2255, 39, 'https://vip.opstream11.com/share/2c09b237b3fe0a29b7ae5b63cd8632aa', 70),
(2256, 39, 'https://vip.opstream11.com/share/d1d2b7387785026488d8ffeeea82fb8a', 71),
(2257, 39, 'https://vip.opstream11.com/share/b0e3a2dce163aba52c5c6e4860bdc005', 72),
(2258, 39, 'https://vip.opstream11.com/share/4bd5096853abc791756085adf90dfe7f', 73),
(2259, 39, 'https://vip.opstream11.com/share/cfdb837185d240f5ac2271882e295c23', 74),
(2260, 39, 'https://vip.opstream11.com/share/e3fd383f6ed435f35f70175031cb4697', 75),
(2261, 39, 'https://vip.opstream11.com/share/ef295b7a92930794597daf0d4a1b9bf7', 76),
(2262, 39, 'https://vip.opstream11.com/share/133cc6b5565f9a47831eeea9854a29a2', 77),
(2263, 39, 'https://vip.opstream11.com/share/6bbf194c8de8177cb0942bf4620eac11', 78),
(2264, 39, 'https://vip.opstream11.com/share/9366088bf5e4cc99d4d04ed9f2940d24', 79),
(2265, 39, 'https://vip.opstream11.com/share/6acf2725b339ee1695ebf86253f75221', 80),
(2266, 39, 'https://vip.opstream11.com/share/a0d26bf79de52c1ebbcb63c52542825f', 81),
(2267, 39, 'https://vip.opstream11.com/share/1fcf9224f1f09a97ad293c680a215696', 82),
(2268, 39, 'https://vip.opstream11.com/share/bddf76687dc8ab77f05b2e75fd3176c3', 83),
(2269, 39, 'https://vip.opstream11.com/share/f4431fbd60ca4a4e72238472ebb7c421', 84),
(2270, 39, 'https://vip.opstream11.com/share/1b23472f67289de0c4b159c73c4ad194', 85),
(2271, 39, 'https://vip.opstream11.com/share/a75a8ecb7cea780ca37daff6501c60a2', 86),
(2272, 39, 'https://vip.opstream11.com/share/22c1acb3539e1aeba278f7885ddb8d35', 87),
(2273, 39, 'https://vip.opstream11.com/share/8cc3d0d6ce79806cac8e6ac80e3b4cdb', 88),
(2274, 39, 'https://vip.opstream11.com/share/1c76fb9381aac8712c2d06e31a05702b', 89),
(2275, 39, 'https://vip.opstream11.com/share/8d0e8d50eb0bad1727b38382d4fa42ef', 90),
(2276, 39, 'https://vip.opstream11.com/share/7a1e01c1f482effc90f8e7d0e2581aff', 91),
(2277, 39, 'https://vip.opstream11.com/share/a5526b5c1e15754a534e9ff97728a32f', 92),
(2278, 39, 'https://vip.opstream11.com/share/3484e1bac36fc0d1f0e86ae3b5aed870', 93),
(2279, 39, 'https://vip.opstream11.com/share/11a5b5ef81cff76a0a1f3d042f635df3', 94),
(2280, 39, 'https://vip.opstream11.com/share/11172787bdf65ba27b6349969d340af4', 95),
(2281, 39, 'https://vip.opstream11.com/share/ae7a1abc672c5913a8338992ec6b7e72', 96),
(2282, 39, 'https://vip.opstream11.com/share/6e4c10382ea6d02e196ebcab34cfbffb', 97),
(2283, 39, 'https://vip.opstream11.com/share/636e0538092a048a7d49aa0b20e2bff1', 98),
(2284, 39, 'https://vip.opstream11.com/share/c634461583738aa142215561fe7f0248', 99),
(2285, 39, 'https://vip.opstream11.com/share/bfbf094d7555f22ae3bd5056dfedfd56', 100),
(2286, 39, 'https://vip.opstream11.com/share/72d967ccf9faca785116600afd44ce7e', 101),
(2287, 39, 'https://vip.opstream11.com/share/7cecf722c8d4a33fe1be826c0c897889', 102),
(2288, 39, 'https://vip.opstream11.com/share/5ff4fb7b73fa956e5a0382824f85c96a', 103),
(2289, 39, 'https://vip.opstream11.com/share/85c8395916ffc2198dd670da1b20d108', 104),
(2290, 39, 'https://vip.opstream11.com/share/db649c1d69f2a2d2af63f4c5567e7244', 105),
(2291, 39, 'https://vip.opstream11.com/share/25557eaf26d046e1e08f4f8dfe82d1c4', 106),
(2292, 39, 'https://vip.opstream11.com/share/b9b5c1aceaf0491b0c041bca34418f07', 107),
(2293, 39, 'https://vip.opstream11.com/share/3f5cd3a48812c9fd54fba7f63d556f3e', 108),
(2294, 39, 'https://vip.opstream11.com/share/4a850ecfb32efa4f6e894ed5b631d445', 109),
(2295, 39, 'https://vip.opstream11.com/share/35f4421c476ab29bd7492717ccb0642c', 110),
(2296, 39, 'https://vip.opstream11.com/share/1fee5d8b6b5230e47fc933334d03ff5b', 111),
(2297, 39, 'https://vip.opstream11.com/share/5afa3c562f5bf2eff62de390e531c25d', 112),
(2298, 39, 'https://vip.opstream11.com/share/be4b74cc626578c5fbed9a26c481d8cb', 113),
(2299, 39, 'https://vip.opstream11.com/share/41eed75111d927aa8cce63e2757c100d', 114),
(2300, 39, 'https://vip.opstream11.com/share/54d2d10822ea47f64edaa52fa184dfb0', 115),
(2301, 39, 'https://vip.opstream11.com/share/a12848aeac58ac57e95977f93fec17fd', 116),
(2302, 39, 'https://vip.opstream11.com/share/b9cb90ded76b1da4a32a8e0b4c112950', 117),
(2303, 39, 'https://vip.opstream11.com/share/cfcb7077d0bda605e84974ded63d24c1', 118),
(2304, 39, 'https://vip.opstream11.com/share/15bffa22eafc325bb53266ecefb25d5c', 119),
(2305, 39, 'https://vip.opstream11.com/share/789334de6daa80d83ab4acb6a4bf5ac7', 120),
(2306, 39, 'https://vip.opstream11.com/share/b5f73d2f8c5e4aa26041effe5fbdf930', 121),
(2307, 39, 'https://vip.opstream11.com/share/ae490cce121bcb4989be859bcbda433a', 122),
(2308, 39, 'https://vip.opstream11.com/share/52d3882d85ec8a840371c62855241ceb', 123),
(2309, 39, 'https://vip.opstream11.com/share/c98cf9a1bc982029683b6b136654777f', 124),
(2310, 39, 'https://vip.opstream11.com/share/638c1a4f003b46aad4aa5cf3f424d215', 125),
(2311, 39, 'https://vip.opstream11.com/share/974e2945a18e0bfb8e3aa8becac3e65c', 126),
(2312, 39, 'https://vip.opstream11.com/share/d5eeeb68551631bceacdeeb4e2a9d3c1', 127),
(2313, 39, 'https://vip.opstream11.com/share/e4b6786bef5f306479ebdcc6fec136b3', 128),
(2314, 39, 'https://vip.opstream11.com/share/149f6a58b66493adaa38bc178da51e75', 129),
(2315, 39, 'https://vip.opstream11.com/share/19b3c3d268102aa5779a02e2bd3fb899', 130),
(2316, 39, 'https://vip.opstream11.com/share/c79bb048121bbc1d20d79c6b83ef17b5', 131),
(2317, 39, 'https://vip.opstream11.com/share/33ce1e734d9d50629fa2c36769285d53', 132),
(2318, 39, 'https://vip.opstream11.com/share/f2c41f31655fe4735c50168fce9b688f', 133),
(2319, 39, 'https://vip.opstream11.com/share/d3b32eb5eaa0ea26fbf960dbf6800c84', 134),
(2320, 39, 'https://vip.opstream11.com/share/2ef13886ae1ff812f347d9af833fa57a', 135),
(2321, 39, 'https://vip.opstream11.com/share/2210bc8c8682f678d552ff7add41b418', 136),
(2322, 39, 'https://vip.opstream11.com/share/ececf8310d5c47ae7dbdf1cda6163c72', 137),
(2323, 39, 'https://vip.opstream11.com/share/5b32eb1adf7d661dfc01777ed24cc7ad', 138),
(2324, 39, 'https://vip.opstream11.com/share/8b024d7a384eb3df4157cd1e53027137', 139),
(2325, 39, 'https://vip.opstream11.com/share/39acb542878b92997468cd17aa72399e', 140),
(2326, 39, 'https://vip.opstream11.com/share/b2b9efa258316b09890cf697c00be8a6', 141),
(2327, 39, 'https://vip.opstream11.com/share/f87ce61286012c89c54a93e61a88e761', 142),
(2328, 39, 'https://vip.opstream11.com/share/f69fa2398b84837cc8852e447e161e3e', 143),
(2329, 39, 'https://vip.opstream11.com/share/66c09e532723ddc385975dfd869f2e94', 144),
(2330, 39, 'https://vip.opstream11.com/share/caec17d84884addeec35c3610645ab63', 145),
(2331, 39, 'https://vip.opstream11.com/share/9c26f743a1c2d7d8a27fb9e8d366d365', 146),
(2332, 39, 'https://vip.opstream16.com/share/d03c09dc34c53657aff1f459a86b20ed', 147),
(2333, 39, 'https://vip.opstream11.com/share/d7ce4c420a30736d81b6a9fde18fc13c', 148),
(2334, 39, 'https://vip.opstream11.com/share/7007052b2206fece53fd3750fb3016d0', 149),
(2335, 39, 'https://vip.opstream11.com/share/7da3270fafd99ed8fcc9e395f4e7c181', 150),
(2336, 39, 'https://vip.opstream11.com/share/54aba384bebf7d76045bc3dad7251d5b', 151),
(2337, 39, 'https://vip.opstream11.com/share/a809dc00968793d620e4aa35255f09e4', 152),
(2338, 39, 'https://vip.opstream11.com/share/ac3d7f8fd40bd1debfff97fc0667e95a', 153),
(2339, 39, 'https://vip.opstream11.com/share/6e958d69ccac1ad04342b584042c3db5', 154),
(2340, 39, 'https://vip.opstream11.com/share/851e8eaf4988ed55c3d335ea8d5ed61b', 155),
(2341, 39, 'https://vip.opstream11.com/share/a5ae76409740d5b7536719ff1d14cb1f', 156),
(2342, 39, 'https://vip.opstream11.com/share/a188366540b081052eb44432bc73c6a3', 157),
(2343, 39, 'https://vip.opstream11.com/share/89bdedf8c38bda669ba5aba697d7703b', 158),
(2344, 39, 'https://vip.opstream11.com/share/382c43c484ddee6d1c699d2fd5980d32', 159),
(2345, 39, 'https://vip.opstream11.com/share/a401bed218424c069af5121745e2c46f', 160),
(2346, 39, 'https://vip.opstream11.com/share/668a2b1ccec82d575177212da2570e5d', 161),
(2347, 39, 'https://vip.opstream11.com/share/710ebadf55558b46b755c665a9177880', 162),
(2348, 39, 'https://vip.opstream11.com/share/023974618d255e24c14b5b47c5282260', 163),
(2349, 39, 'https://vip.opstream11.com/share/9455dcfda0fa353956e83513b7952168', 164),
(2350, 39, 'https://vip.opstream11.com/share/74a564781bf38f42f6d60ae0c8e2d63a', 165),
(2351, 39, 'https://vip.opstream11.com/share/8ff28835276bec79658f56f14f699674', 166),
(2352, 39, 'https://vip.opstream11.com/share/c022cf41a12658e227aeb252f734364d', 167),
(2353, 39, 'https://vip.opstream11.com/share/19f560c0fc2e02c530e64152bb9ec137', 168),
(2354, 39, 'https://vip.opstream11.com/share/d5bb9cf6866fa9b987b5b64c6c28f1f3', 169),
(2355, 39, 'https://vip.opstream11.com/share/bd3b6d65837918be98d962d845a83737', 170),
(2356, 39, 'https://vip.opstream11.com/share/cd54dcc3bfd0a46070d85f99e5880342', 171),
(2357, 39, 'https://vip.opstream11.com/share/3236fb951518ec5f7e607422b67cd180', 172),
(2358, 39, 'https://vip.opstream11.com/share/baec4b85c94a47b7d30a2e8bc779faeb', 173),
(2359, 39, 'https://vip.opstream11.com/share/e2f925f4bbb3c006b9add15fcf797a78', 174),
(2360, 39, 'https://vip.opstream11.com/share/e7cdf7ba8ccaec414712f15d40280d50', 175),
(2361, 39, 'https://vip.opstream11.com/share/4b84a4fbb709d5887d092b74ee5d6724', 176),
(2362, 39, 'https://vip.opstream11.com/share/5d95e1b002788032a4a4f4de3f7aac0f', 177),
(2363, 39, 'https://vip.opstream11.com/share/9767eb6137bb1e88380c96bbf5ad99bb', 178),
(2364, 39, 'https://vip.opstream11.com/share/7446e64c368d215c1786214f5118b5bc', 179),
(2365, 39, 'https://vip.opstream11.com/share/b34cff5ba1f72525e525dd444eceaa99', 180),
(2366, 39, 'https://vip.opstream11.com/share/ecc1d44b677d62d29e0f646131316ca6', 181),
(2367, 39, 'https://vip.opstream11.com/share/59a57dd9c157d6b95b56dfaebb6a45e3', 182),
(2368, 39, 'https://vip.opstream11.com/share/671ee9fb86338a4643eb6d3f2d00496c', 183),
(2369, 39, 'https://vip.opstream11.com/share/67a83eab0da5d5e1357e82cee4ea9907', 184),
(2370, 39, 'https://vip.opstream11.com/share/7b75a9a9404959d96c63d1f61ec75550', 185),
(2371, 39, 'https://vip.opstream11.com/share/0460c5723b287202cf850b7ae996f03e', 186),
(2372, 39, 'https://vip.opstream11.com/share/b7799d0004c7a0b7c5e0672f7848ff04', 187),
(2373, 39, 'https://vip.opstream11.com/share/4367fac13a0c0b12eabbd2f483581b2a', 188),
(2374, 39, 'https://vip.opstream11.com/share/92f57807d7a38f80a3b0f7fd4b639da9', 189),
(2375, 39, 'https://vip.opstream11.com/share/86c26c7eb678214b9749fe1c5364cff2', 190),
(2376, 39, 'https://vip.opstream11.com/share/d0bc2050431b6f182680677fc8feb896', 191),
(2377, 39, 'https://vip.opstream11.com/share/9c31737d2e075dc48cffaee6253b790c', 192),
(2378, 39, 'https://vip.opstream11.com/share/0107acb41ef20db2289d261d4e34fd38', 193),
(2379, 39, 'https://vip.opstream11.com/share/a60e1e1f6684d5cb9efcb8a6131f8b74', 194),
(2380, 39, 'https://vip.opstream11.com/share/efa41f347fb5bfa798ab738ead1d2045', 195),
(2381, 39, 'https://vip.opstream11.com/share/fa5cca4a225bbc66d06943e6ece245fb', 196),
(2382, 39, 'https://vip.opstream11.com/share/a72175d72b0a550fe07250f711358a4c', 197),
(2383, 39, 'https://vip.opstream11.com/share/2e99f39ee5ebc8f125c2c4c2a13d96ef', 198),
(2384, 39, 'https://vip.opstream11.com/share/bd74971af53184c9911331d4f7bdb4a0', 199),
(2385, 39, 'https://vip.opstream11.com/share/f6276420f0e05d929d71f1dffe6705ea', 200),
(2386, 39, 'https://vip.opstream11.com/share/95b428e98d2b66a8ab324313cfc45300', 201),
(2387, 39, 'https://vip.opstream11.com/share/2d95d0882174e6abcf9ebe52b57a61a1', 202),
(2388, 39, 'https://vip.opstream11.com/share/2ff25221f48d387c7526f0abb70093f2', 203),
(2389, 39, 'https://vip.opstream11.com/share/47f85c5f8a98f293c9a687412f78cc6f', 204),
(2390, 39, 'https://vip.opstream11.com/share/0ec3d867002e7da0e75c898a89bc4097', 205),
(2391, 39, 'https://vip.opstream11.com/share/77c13bef784f87619c396282057de79a', 206),
(2392, 39, 'https://vip.opstream11.com/share/d37b9e2b497aa9312965a132d98279b0', 207),
(2393, 39, 'https://vip.opstream11.com/share/75a4e4c871852ede561ad7e3cbdd2757', 208),
(2394, 39, 'https://vip.opstream11.com/share/01f3ae292bbeea9a6cbe6c6f6e812cde', 209),
(2395, 39, 'https://vip.opstream11.com/share/de5b9939cb64c828db4806df02b88cfb', 210),
(2396, 39, 'https://vip.opstream11.com/share/0173323af651e967d638c3048c21a6a3', 211),
(2397, 39, 'https://vip.opstream14.com/share/97a92052cb5c3d1089ebbfa01e8f7997', 212),
(2398, 39, 'https://vip.opstream14.com/share/4963e568b60129071a6836087915b103', 213),
(2399, 39, 'https://vip.opstream14.com/share/6b4a9e228208a5008088d8ad6e1b3dd7', 214),
(2400, 39, 'https://vip.opstream11.com/share/b0f47015b6ace4492dd96d63e515e779', 215),
(2401, 39, 'https://vip.opstream14.com/share/8f4e1425e9f07a29ec859da931ad2f20', 216),
(2402, 39, 'https://vip.opstream14.com/share/d5e50295cc02e37f39533a47aa4a9549', 217),
(2403, 39, 'https://vip.opstream14.com/share/f376b03403415c12c017f20313af8c51', 218),
(2404, 39, 'https://vip.opstream14.com/share/45f71a702b70bc7415bcd9fcc790e551', 219),
(2405, 39, 'https://vip.opstream14.com/share/8ebb270c06eb053c6d0b0bb201f0d739', 220),
(2406, 39, 'https://vip.opstream15.com/share/b42642e0e25d857ec10edd4bae859d1b', 221),
(2407, 39, 'https://vip.opstream14.com/share/331715f2fe524ed42a3f58aabf89f08e', 222),
(2408, 39, 'https://vip.opstream14.com/share/5e26868bd52fd169086cc736cbf03946', 223),
(2409, 39, 'https://vip.opstream14.com/share/1d8535d9bbe1c66cb6ba50e7f9bb9ee9', 224),
(2410, 39, 'https://vip.opstream14.com/share/3a909674b845c826ecccfbe8a42247f6', 225),
(2411, 39, 'https://vip.opstream10.com/share/6ca2a46ddef1ae69e6f8b205456fd3ae', 226),
(2412, 39, 'https://vip.opstream10.com/share/0b7127c966fa2dc3e83d3c9651e9d9b6', 227),
(2413, 39, 'https://vip.opstream10.com/share/9940dc91e5d2185602912ef38945fcea', 228),
(2414, 39, 'https://vip.opstream12.com/share/dcd68320d762579423e846dea3179930', 229),
(2415, 39, 'https://vip.opstream15.com/share/c9adc1dfd14d7b8622477ac0629b3d13', 230),
(2416, 39, 'https://vip.opstream15.com/share/5c98b0539591b13b7ba78b3b614407ef', 231),
(2417, 39, 'https://vip.opstream15.com/share/30c395dcc0e469d351859f1e0499bd16', 232),
(2418, 39, 'https://vip.opstream16.com/share/18cd1cd589e0558e181846f152da973f', 233),
(2419, 39, 'https://vip.opstream15.com/share/f6a81a05f0dc6797d195dfb9aad909bb', 234),
(2420, 39, 'https://vip.opstream15.com/share/418234c913e9bcd6132d551c8cbdd594', 235),
(2421, 39, 'https://vip.opstream16.com/share/8eef6ff991f69d436ef38262bb3eef52', 236),
(2422, 39, 'https://vip.opstream15.com/share/c1092c40dfa01c731017bd0dd7cf63ef', 237),
(2423, 39, 'https://vip.opstream14.com/share/e5d5e4d7daa84ec47d4de5373b97d797', 238),
(2424, 39, 'https://vip.opstream16.com/share/00b546d495d29ea025af220831ceee42', 239),
(2425, 39, 'https://vip.opstream11.com/share/2cfdb14e053ad700dcb0a4eabb9147d6', 240);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Hoạt hình', 'Phim hoạt hình hay phim hoạt họa là một hình thức sử dụng ảo ảnh quang học về sự chuyển động do nhiều hình ảnh tĩnh được chiếu tiếp diễn liên tục. Trong phim và trong kỹ nghệ dàn dựng, hoạt họa ám chỉ đến kỹ thuật trong đó từng khung hình của phim được chế tác riêng rẽ.', 1, 'hoat-hinh'),
(2, 'Học đường', 'Phim học đường là một thể loại phim thường tập trung vào cuộc sống và trải nghiệm của các nhân vật tuổi teen, khám phá các chủ đề như tình yêu, tình bạn, gia đình, trường học, danh tính và tuổi mới lớn, thường đề cập đến những thách thức và khó khăn mà những người trẻ tuổi phải đối mặt.', 1, 'hoc-duong'),
(3, 'Chính kịch', 'Form API', 1, 'chinh-kich'),
(4, 'Bí ẩn', 'Form API', 1, 'bi-an'),
(5, 'Hài Hước', 'Form API', 1, 'hai-huoc'),
(6, 'Hành Động', 'Form API', 1, 'hanh-dong'),
(7, 'Phiêu Lưu', 'Form API', 1, 'phieu-luu'),
(8, 'Tình Cảm', 'Form API', 1, 'tinh-cam'),
(9, 'Viễn Tưởng', 'Form API', 1, 'vien-tuong'),
(10, 'Khoa Học', 'Form API', 1, 'khoa-hoc'),
(11, 'Hình Sự', 'Form API', 1, 'hinh-su'),
(12, 'Gia Đình', 'Form API', 1, 'gia-dinh'),
(13, 'Tâm Lý', 'Form API', 1, 'tam-ly'),
(14, 'Cổ Trang', 'Form API', 1, 'co-trang'),
(15, 'Võ Thuật', 'Form API', 1, 'vo-thuat');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_17_153248_create_visits_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `ngaytao` date NOT NULL,
  `resolution` int(11) NOT NULL,
  `phude` int(11) NOT NULL,
  `thoiluong` varchar(255) NOT NULL,
  `sotap` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tags` longtext NOT NULL,
  `year` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `status`, `image`, `category_id`, `genre_id`, `country_id`, `phim_hot`, `ngaycapnhat`, `ngaytao`, `resolution`, `phude`, `thoiluong`, `sotap`, `slug`, `tags`, `year`, `view`) VALUES
(38, 'Trò Chơi Trí Mệnh', '<p><br>Nhà thiết kế trò chơi thực tế ảo Lăng Cửu Thời quyết định nghỉ việc vì công việc không suôn sẻ, một trò chơi thử nghiệm đã giúp anh tìm được niềm vui quên đi nỗi buồn, anh bất ngờ nhận được một đĩa game được gửi từ nước ngoài. Sau một tai nạn xe hơi, anh tới một hành lang với 12 cánh cửa sắt. Khi bước vào bên trong, một người bí ẩn giúp anh thoát khỏi nanh vuốt của bầy sói trong rừng núi tuyết, chào đón anh đến với thế giới của các cánh cửa. Thế giới bên trong cánh cửa đầy rẫy hiểm nguy, một sơ sẩy nhỏ cũng có thể mất mạng. Kế tiếp, Lăng Cửu Thời phát hiện một điều kỳ lạ, rằng khi gặp nguy hiểm bên trong cánh cửa và quay trở lại thế giới bên ngoài, anh cũng sẽ gặp phải rủi ro.</p>', 1, 'https://img.ophim11.cc/uploads/movies/tro-choi-tri-menh-thumb.jpg', 3, 4, 2, 0, '2024-02-21', '2024-02-21', 0, 0, '20 phút/tập', '78', 'tro-choi-tri-menh', 'Form API', '2024', '3138'),
(39, 'Đấu La Đại Lục', '<p>Đệ tử ngoại môn Đường Tam của Đường Môn, vì học trộm bí kíp của nội môn mà bị Đường Môn bài xích, Đường Tam nhảy xuống vực để tỏ rõ ý chí nhưng không chết mà còn được bước vào một thế giới khác với một thân phận khác, một thế giới thuộc về võ hồn - được gọi là Đấu La Đại Lục. Nơi này không có ma pháp, không có đấu khí, không có võ thuật, nhưng lại có võ hồn thần kỳ. Ở nơi này, vào lúc 6 tuổi, đều sẽ ở trong điện võ hồn lệnh võ hồn thức tỉnh. Võ hồn có động vật, có thực vật, có đồ vật, chúng có thể phụ trợ mọi người sinh hoạt hằng ngày. Mà trong đó một vài võ hồn đặc biệt xuất sắc có thể dùng để tu luyện đồng thời có thể tiến hành chiến đấu, chức nghiệp này trên Đấu La Đại Lục là chức nghiệp mạnh mẽ nhất, cũng là vinh quang nhất - Hồn sư.</p>', 1, 'https://img.ophim11.cc/uploads/movies/dau-la-dai-luc-thumb.jpg', 4, 7, 2, 0, '2024-02-21', '2024-02-21', 0, 0, '20 phút/tập', '??', 'dau-la-dai-luc', 'Form API', '2018', '1740'),
(40, 'Trăng máu', 'from api', 1, 'tải xuống3077.jfif', 6, 6, 2, 1, '2024-02-21', '2024-02-21', 0, 0, '120 phút', '1', 'trang-mau', '#trangmau', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sa@gmail.com', '$2y$10$HApB6OaeZoNRswK5nByhZuH2QKe1SDNgE4b.BmM656hGW8IemvYXa', '2024-02-04 23:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sa', 'sa@gmail.com', NULL, '1234', NULL, '2024-01-02 07:14:35', '2024-01-02 07:14:35'),
(2, 'sa', 'sa123@gmail.com', NULL, '$2y$10$scgcKflW7bzwD/99CaASDOm34Pds40FsBRmbNv6irL/uflCtOjO42', NULL, '2024-02-02 00:22:25', '2024-02-02 00:22:25'),
(3, 'sa', 'sa1@gmail.com', NULL, '$2y$10$b7kFporY9teC1vzNdwk/WuSFKsvowHoTyNjOgrHcUbI9guhcPaWQS', NULL, '2024-02-04 23:17:31', '2024-02-04 23:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `visited_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `session_id`, `ip_address`, `visited_at`) VALUES
(1, 'QHVWgtoXWNwyYNI9CNL1QVEu3Y80VzC9qp7BeySL', '192.168.1.9', '2024-02-17 08:47:41'),
(2, 'jqbHm2EXcnjbiaKCRtrtdh36XldOYAJCZqPMHF0d', '192.168.1.4', '2024-02-17 08:47:13'),
(3, 'XaAvDIQ90aTCxdMMfvbGS5mesrQbHS6gQb4kNabu', '192.168.1.5', '2024-02-20 19:44:46'),
(4, 'RN0K4f6KqoAzcs8h1ZZ2LSrKpCY4q61DONhJllvk', '192.168.1.5', '2024-02-20 22:50:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visits_session_id_unique` (`session_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2426;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
