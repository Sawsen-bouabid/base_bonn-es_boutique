-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 04, 2021 at 07:39 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boutique_base`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'cat 1'),
(2, 'cat 2'),
(3, 'cat 3');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`) VALUES
(1, 'Chuck', 'Norris'),
(2, 'Charlize', 'Theron'),
(3, 'Rayen', 'Gosling');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `number` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `number`, `date`, `customer_id`) VALUES
(1, '03-06-CN', '2021-06-03 14:47:21', 1),
(2, '25-05-CN', '2021-05-25 14:47:21', 1),
(3, '25-05-CT', '2021-05-25 14:47:21', 2),
(4, '01-06-CT', '2021-06-01 14:56:10', 2),
(5, '03-06-CT', '2021-06-03 14:47:21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 53, 1),
(2, 1, 55, 1),
(3, 1, 56, 1),
(4, 2, 63, 1),
(5, 2, 61, 1),
(6, 2, 62, 1),
(7, 3, 53, 1),
(8, 3, 62, 1),
(12, 4, 55, 1),
(13, 4, 56, 1),
(14, 4, 65, 1),
(15, 5, 54, 1),
(16, 5, 65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` mediumint(255) NOT NULL,
  `weight` mediumint(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `quantity` smallint(255) NOT NULL,
  `available` varchar(255) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `weight`, `picture`, `quantity`, `available`, `categorie_id`) VALUES
(53, 'Banne', 'banane bonne sucré', 10000, 1000, 'https://www.lovemysalad.com/sites/default/files/styles/home_carousel_item_768/public/banaan-large.jpg?itok=qRLZa1EH', 10, 'oui', 1),
(54, 'banne_nain', 'banane de l\'asie', 10000, 1000, 'https://resize.prod.docfr.doc-media.fr/img/var/doctissimo/storage/images/media/images/quels-sont-les-bienfaits-de-la-banane/7851433-1-fre-FR/Quels-sont-les-bienfaits-de-la-banane.jpg', 10, 'oui', 1),
(55, 'melon', 'bonn melonn', 1000, 500, 'https://img-3.journaldesfemmes.fr/n85bAULtAzJF1LR12le4hL83KOs=/910x607/smart/119301ef3867425f942297c2c59b5b74/ccmcms-jdf/11298579.jpg', 1, 'oui', 1),
(56, 'melon jaune', 'melon jaune', 1000, 500, 'https://www.grainesdefolie.com/5426-medium_default/melon-charentais.jpg', 1, 'oui', 1),
(57, 'watermelon', 'trés sucrée', 1000, 500, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRJb0WaXmfn6Kw8JHOOtHzdKX7_yCxfvrgLg&usqp=CAU', 1, 'non', 1),
(58, 'big watermelon', 'taille géga', 1000, 500, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVWQQqa_peHHsUoLIi0T_Am4ABZRx4LtnSAw&usqp=CAU', 1, 'non', 1),
(59, 'fraise', 'super bon', 1300, 500, 'https://www.academiedugout.fr/images/17155/1200-auto/poire_000.jpg?poix=50&poiy=50', 0, 'oui', 2),
(60, 'strawberry', 'sweeetyy', 1300, 500, 'https://img.cuisineaz.com/680x357/2018-06-15/i140414-fraises.jpeg', 0, 'oui', 2),
(61, 'poire', 'poire willams', 5000, 1200, 'https://www.academiedugout.fr/images/17155/1200-auto/poire_000.jpg?poix=50&poiy=50', 2, 'oui', 2),
(62, 'poire jaune', 'swzzty', 5000, 1200, 'https://cooking-chef.sa.metacdn.com/sites/default/files/recettes/poire_0.jpg', 2, 'oui', 2),
(63, 'Avocat', 'bonnnn', 50000, 1200, 'https://www.frutasmontosa.com/fr/wp-content/uploads/2019/01/variedades-aguacate-avocado-600x600.jpg', 5, 'oui', 3),
(64, 'Abvocat noir', '', 50000, 1200, 'https://static.passeportsante.net/i91733-.jpeg', 5, 'oui', 3),
(65, 'Avocat Gem', 'Si sa pulpe très onctueuse n’est pas une raison suffisante pour le déguste', 50000, 1200, 'https://cdn.futura-sciences.com/buildsv6/images/largeoriginal/4/3/0/430dad0bb1_50035739_avocat-dr.jpg', 5, 'oui', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
