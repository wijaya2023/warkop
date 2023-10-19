-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 06:40 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restotest`
--

-- --------------------------------------------------------

--
-- Table structure for table `zarest_categories`
--

CREATE TABLE `zarest_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_categories`
--

INSERT INTO `zarest_categories` (`id`, `name`, `created_at`) VALUES
(22, 'Menu Utama', '2020-12-16 20:21:20'),
(23, 'Menu Penutup', '2020-12-16 20:21:28'),
(24, 'Snack', '2020-12-16 20:21:36'),
(25, 'Minuman', '2020-12-16 20:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `zarest_categorie_expences`
--

CREATE TABLE `zarest_categorie_expences` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_categorie_expences`
--

INSERT INTO `zarest_categorie_expences` (`id`, `name`, `created_date`) VALUES
(4, 'Belanja Rutin', '2020-12-16 13:20:58'),
(5, 'Belanja Tidak Terduga', '2020-12-16 13:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `zarest_combo_items`
--

CREATE TABLE `zarest_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zarest_customers`
--

CREATE TABLE `zarest_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_customers`
--

INSERT INTO `zarest_customers` (`id`, `name`, `phone`, `email`, `discount`, `created_at`) VALUES
(11, 'Alex Nurdin', '08645363737473', 'alex@gmail.com', '20', '2020-12-16 20:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `zarest_expences`
--

CREATE TABLE `zarest_expences` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(150) NOT NULL,
  `note` text,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zarest_holds`
--

CREATE TABLE `zarest_holds` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_holds`
--

INSERT INTO `zarest_holds` (`id`, `number`, `time`, `register_id`, `table_id`, `waiter_id`, `customer_id`) VALUES
(269, 1, '23:01', 61, 44, 0, 0),
(270, 1, '00:39', 61, 48, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `zarest_payements`
--

CREATE TABLE `zarest_payements` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `paid` float NOT NULL,
  `paidmethod` varchar(300) NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `register_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `waiter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zarest_posales`
--

CREATE TABLE `zarest_posales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `options` text,
  `time` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zarest_products`
--

CREATE TABLE `zarest_products` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `cost` float NOT NULL,
  `tax` varchar(11) DEFAULT NULL,
  `description` mediumtext,
  `price` float NOT NULL,
  `photo` varchar(200) NOT NULL,
  `photothumb` varchar(500) DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `modified_at` varchar(30) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `alertqt` int(10) DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `taxmethod` tinyint(4) DEFAULT NULL,
  `h_stores` varchar(300) DEFAULT NULL,
  `options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_products`
--

INSERT INTO `zarest_products` (`id`, `code`, `name`, `category`, `cost`, `tax`, `description`, `price`, `photo`, `photothumb`, `color`, `created_at`, `modified_at`, `type`, `alertqt`, `supplier`, `unit`, `taxmethod`, `h_stores`, `options`) VALUES
(155, 'fse4te454', 'Kopi Arabica', 'Minuman', 15000, '10', '<p>Kopi Arabica asli Bangka Belitung dan Fresh dari Petani langsung dengan cita rasa local yang menakjubkan</p>', 20000, 'fd6ba67baecfd4224a4aec00db472923.jpg', 'fd6ba67baecfd4224a4aec00db472923_thumb.jpg', 'color01', '2020-12-16 23:27:25', '2020-12-16 23:27:25', 0, 150, 'Supplier', 'Cangkir', 0, NULL, 'Plus Keju, Plus Gula Merah'),
(156, 'KS123', 'Kopi Susu', 'Minuman', 15000, '10', 'Kopi Susu dari kopi pilihan yang di seduh dan diperoleh dari petani asli dari petani local Pulau Bangka', 25000, 'c4d4a370cb82bccfec780481fe5a6235.jpg', 'c4d4a370cb82bccfec780481fe5a6235_thumb.jpg', 'color01', '2020-12-16 23:33:45', '2020-12-16 23:33:45', 0, 100, 'Petani Kopi Bangka Tengah Group', 'Cangkir', 0, NULL, 'Gula, Caramel, Dingin, Panas'),
(157, 'NG0001', 'Nasi Goreng', 'Menu Utama', 10000, '10', '<p>Nasi Goreng biasa dengan bumbu dan rempah - rempah pilihan</p>', 25000, '1c1184dc32b31b10c67bbbbd4bca6848.jpg', '1c1184dc32b31b10c67bbbbd4bca6848_thumb.jpg', 'color01', '2020-12-16 23:38:44', '2020-12-16 23:38:44', 0, 100, 'Suplier CV Al Akbar Company', 'Piring', 0, NULL, 'Pedas, Sedang, Biasa'),
(158, 'AG0001', 'Ayam Geprex Special', 'Menu Utama', 20000, '10', '<p>Pedas, Sedang, Biasa, Jumbo, Double, Sedang</p>', 30000, 'fef22db0852ebbdc3e7c1cad99ca7983.png', 'fef22db0852ebbdc3e7c1cad99ca7983_thumb.png', 'color01', '2020-12-16 23:46:22', '2020-12-16 23:46:22', 0, 100, 'Suplier CV Al Akbar Company', 'Piring', 0, NULL, 'Pedas, Sedang, Biasa'),
(159, 'AB0001', 'Ayam Bakar', 'Menu Utama', 15000, '10', '<p>Pedas, Sedang, Biasa, Lalapan</p>', 25000, 'df8d11bfa4f5b760bd37c1978939f436.jpg', 'df8d11bfa4f5b760bd37c1978939f436_thumb.jpg', 'color01', '2020-12-16 23:42:38', '2020-12-16 23:42:37', 0, 100, 'Suplier CV Al Akbar Company', 'Piring', 0, NULL, 'Pedas, Sedang, Biasa'),
(160, 'GG0001', 'Gado Gado', 'Menu Utama', 10000, '10', '<p>gado gado adalah menu andalan di toko kami</p>', 20000, '82c6e866f1cbf78b127efe57af4862ee.jpg', '82c6e866f1cbf78b127efe57af4862ee_thumb.jpg', 'color01', '2020-12-16 23:45:03', '2020-12-16 23:45:03', 0, 100, 'Suplier CV Al Akbar Company', 'Piring', 0, NULL, 'Pedas, Sedang, Biasa'),
(161, 'UB0001', 'Singkong Goreng', 'Snack', 10000, '10', '<p>Ubi Goreng, Singkong Goreng</p>', 20000, '62593d50e19fe9313236c1c5b8bf56d1.jpg', '62593d50e19fe9313236c1c5b8bf56d1_thumb.jpg', 'color01', '2020-12-16 23:48:58', '2020-12-16 23:48:58', 0, 100, 'Suplier CV Al Akbar Company', 'Porsi', 0, NULL, 'original, Pedas, keju, Cokelat, Misis, Saus'),
(162, 'RT0001', 'Roti Original', 'Snack', 8000, '10', '<p>Roti dengan Gandum pilihan dan cita rasa yang khas dari Bangka Belitung</p>', 15000, 'd3c0d1e3d2b9341cd2533b4be83f8327.jpeg', 'd3c0d1e3d2b9341cd2533b4be83f8327_thumb.jpeg', 'color01', '2020-12-16 23:50:56', '2020-12-16 23:50:56', 0, 100, 'Suplier CV Al Akbar Company', 'Buah', 0, NULL, 'Keju, Cokelat, original'),
(163, 'KG0001', 'Kentang Goreng', 'Snack', 10000, '10', '<p>Kentang Goreng Fresh</p>', 15000, '9fa71034d190da74145603ea5e057a96.jpg', '9fa71034d190da74145603ea5e057a96_thumb.jpg', 'color01', '2020-12-16 23:53:20', '2020-12-16 23:53:20', 0, 100, 'Suplier CV Al Akbar Company', 'Porsi', 0, NULL, 'keju, Cokelat, Garing'),
(164, 'PB001', 'Puding Buah', 'Menu Penutup', 10000, '10', '<p>Puding dengan Rasa Maksimal</p>', 20000, '2bf76ae2602f54509b9cd8b49a477ebf.jpg', '2bf76ae2602f54509b9cd8b49a477ebf_thumb.jpg', 'color01', '2020-12-16 23:55:04', '2020-12-16 23:55:04', 0, 100, 'Suplier CV Al Akbar Company', 'Porsi', 0, NULL, 'Manis, Keju, Cokelat'),
(165, 'JA001', 'Jus Alpukat', 'Minuman', 10000, '10', '<p>Jus Alpukat dengan banyak cita rasa</p>', 20000, '56c2c72206b4a163d5a854bb244f0947.jpg', '56c2c72206b4a163d5a854bb244f0947_thumb.jpg', 'color01', '2020-12-16 23:57:23', '2020-12-16 23:57:23', 0, 100, 'Suplier CV Al Akbar Company', 'Gelas', 0, NULL, 'Manis, Cokelat, Toping'),
(166, 'BB0001', 'Boba Cokelat Spesial', 'Minuman', 10000, '10', '<p>Boba Spesial dengan Varian Cokelat, Keju, Campur</p>', 20000, 'a226d90a093916c20850d74248eb3769.jpg', 'a226d90a093916c20850d74248eb3769_thumb.jpg', 'color01', '2020-12-17 00:08:25', '2020-12-17 00:08:25', 0, 100, 'Suplier CV Al Akbar Company', 'Cup', 0, NULL, 'Cokelat, Keju, Campur'),
(167, 'KP001', 'Kepiting sauce Padang', 'Menu Utama', 120000, '10', '<p>Kepiting fresh dari Pantai Bangka yang di Oleh dengan Cinta</p>', 250000, '1788db1792e94a31af049947cf5d1209.jpg', '1788db1792e94a31af049947cf5d1209_thumb.jpg', 'color01', '2020-12-17 00:16:22', '2020-12-17 00:16:22', 0, 20, 'Suplier CV Al Akbar Company', 'Porsi', 0, NULL, 'Pedas, Sedang, Biasa'),
(168, 'MGS', 'Indomie Goreng Spesial', 'Menu Utama', 8000, '10', '<p>Indomie Goreng yang dimasak dan disajikan secara spesial</p>', 15000, '4808dc9b690fd9bc4256be8310814975.jpg', '4808dc9b690fd9bc4256be8310814975_thumb.jpg', 'color01', '2020-12-17 00:18:53', '2020-12-17 00:18:53', 0, 100, 'Suplier CV Al Akbar Company', 'Porsi', 0, NULL, 'Pedas, Sedang, Biasa, telor, Sosis'),
(169, 'SLD001', 'salad', 'Menu Penutup', 15000, '10', '<p>salad Fresh yang di olah dengan cita rasa penuh</p>', 20000, '9797904cbf4d80f251a4ad2103c95acc.jpg', '9797904cbf4d80f251a4ad2103c95acc_thumb.jpg', 'color01', '2020-12-17 00:20:32', '2020-12-17 00:20:32', 0, 100, 'Suplier CV Al Akbar Company', 'Porsi', 0, NULL, 'Pedas, Sedang, Biasa, Komplit'),
(170, 'EC0001', 'Es Cream Chocolate', 'Menu Penutup', 20000, '10', '<p>Ice Cream Spesial</p>', 30000, 'c008ea8c923f6555b47ae1894ade7d9c.jpeg', 'c008ea8c923f6555b47ae1894ade7d9c_thumb.jpeg', 'color01', '2020-12-17 00:24:01', '2020-12-17 00:24:01', 0, 100, 'Suplier CV Al Akbar Company', 'Cup', 0, NULL, 'Chocolate, Keju, Campur'),
(171, 'MK0001', 'Macaroni', 'Menu Penutup', 20000, '10', '<p>Macaroni Spesial</p>', 25000, 'f5ba98daff510ea0e7d9c16c4e3f43c0.jpg', 'f5ba98daff510ea0e7d9c16c4e3f43c0_thumb.jpg', 'color01', '2020-12-17 00:25:38', '2020-12-17 00:25:38', 0, 100, 'Suplier CV Al Akbar Company', 'Porsi', 0, NULL, 'Spesial, Biasa'),
(172, 'CS001', 'Pan Cake', 'Menu Penutup', 20000, '10', '<p>Pan Cake Spesial</p>', 40000, 'c9fec434d9ae46ec749fb516b9bb1889.jpg', 'c9fec434d9ae46ec749fb516b9bb1889_thumb.jpg', 'color01', '2020-12-17 00:28:56', '2020-12-17 00:28:56', 0, 100, 'Suplier CV Al Akbar Company', 'Porsi', 0, NULL, 'Toping, Biasa');

-- --------------------------------------------------------

--
-- Table structure for table `zarest_purchases`
--

CREATE TABLE `zarest_purchases` (
  `id` int(11) NOT NULL,
  `ref` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `total` float DEFAULT NULL,
  `attachement` varchar(200) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` mediumtext,
  `modified_at` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zarest_purchase_items`
--

CREATE TABLE `zarest_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qt` int(10) NOT NULL,
  `cost` float NOT NULL,
  `subtot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zarest_registers`
--

CREATE TABLE `zarest_registers` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `waiterscih` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_registers`
--

INSERT INTO `zarest_registers` (`id`, `date`, `status`, `user_id`, `cash_total`, `cash_sub`, `cc_total`, `cc_sub`, `cheque_total`, `cheque_sub`, `cash_inhand`, `note`, `closed_at`, `closed_by`, `store_id`, `waiterscih`) VALUES
(60, '2020-12-16 13:43:21', 0, 1, 144000, 144000, 0, 0, 0, 0, 1, '', '2020-12-16 22:52:02', 1, 1, '8,1,'),
(61, '2020-12-16 15:52:53', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1000000, NULL, NULL, NULL, 1, '8,1000000,'),
(62, '2020-12-16 16:01:01', 0, 1, 0, 0, 0, 0, 0, 0, 1000000, '', '2020-12-16 23:01:12', 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `zarest_sales`
--

CREATE TABLE `zarest_sales` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `subtotal` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `totalitems` int(20) NOT NULL,
  `paid` varchar(15) DEFAULT NULL,
  `paidmethod` varchar(700) DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `discountamount` float DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `firstpayement` float DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_sales`
--

INSERT INTO `zarest_sales` (`id`, `client_id`, `clientname`, `tax`, `discount`, `subtotal`, `total`, `created_at`, `modified_at`, `status`, `created_by`, `totalitems`, `paid`, `paidmethod`, `taxamount`, `discountamount`, `register_id`, `firstpayement`, `waiter_id`) VALUES
(35, 0, 'Walk in Customer', '0%', '', '20000.0', 20000, '2020-12-16', NULL, 0, 'admin Doe', 1, '100000', '0', 0, 0, 60, 20000, 0),
(36, 0, 'Walk in Customer', '0%', '', '20000.0', 20000, '2020-12-16', NULL, 0, 'admin Doe', 1, '100000', '0', 0, 0, 60, 20000, 0),
(37, 0, 'Walk in Customer', '0%', '', '20000.0', 20000, '2020-12-16', NULL, 0, 'admin Doe', 1, '100000', '0', 0, 0, 60, 20000, 0),
(38, 0, 'Walk in Customer', '0%', '', '20000.0', 20000, '2020-12-16', NULL, 0, 'admin Doe', 1, '100000', '0', 0, 0, 60, 20000, 0),
(39, 0, 'Walk in Customer', '0%', '', '20000.0', 20000, '2020-12-16', NULL, 0, 'admin Doe', 1, '20000.0', '0', 0, 0, 60, 20000, 0),
(40, 0, 'Walk in Customer', '0%', '', '0.0', 0, '2020-12-16', NULL, 0, 'admin Doe', 0, '100000', '0', 0, 0, 60, 0, 0),
(41, 0, 'Walk in Customer', '10%', '', '20000.00', 22000, '2020-12-16', NULL, 0, 'admin Doe', 1, '100000.00', '0', 2000, 0, 60, 22000, 0),
(42, 0, 'Walk in Customer', '10%', '', '20000.00', 22000, '2020-12-16', NULL, 0, 'admin Doe', 1, '100000', '0', 2000, 0, 60, 22000, 0),
(43, 0, 'Walk in Customer', '10%', '', '20000.00', 22000, '2020-12-16', NULL, 0, 'robi al akbar', 1, '100000', '0', 2000, 0, 61, 22000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `zarest_sale_items`
--

CREATE TABLE `zarest_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `subtotal` varchar(20) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_sale_items`
--

INSERT INTO `zarest_sale_items` (`id`, `sale_id`, `product_id`, `name`, `price`, `qt`, `subtotal`, `date`) VALUES
(1023, 35, 155, 'Kopi Arabica', 20000, 1, '20000', '2020-12-16'),
(1024, 36, 155, 'Kopi Arabica', 20000, 1, '20000', '2020-12-16'),
(1025, 37, 155, 'Kopi Arabica', 20000, 1, '20000', '2020-12-16'),
(1026, 38, 155, 'Kopi Arabica', 20000, 1, '20000', '2020-12-16'),
(1027, 39, 155, 'Kopi Arabica', 20000, 1, '20000', '2020-12-16'),
(1028, 41, 155, 'Kopi Arabica', 20000, 1, '20000', '2020-12-16'),
(1029, 42, 155, 'Kopi Arabica', 20000, 1, '20000', '2020-12-16'),
(1030, 43, 155, 'Kopi Arabica', 20000, 1, '20000', '2020-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `zarest_settings`
--

CREATE TABLE `zarest_settings` (
  `id` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `receiptheader` text,
  `receiptfooter` text NOT NULL,
  `theme` varchar(20) NOT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `timezone` varchar(400) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_secret_key` varchar(150) DEFAULT NULL,
  `stripe_publishable_key` varchar(150) DEFAULT NULL,
  `decimals` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_settings`
--

INSERT INTO `zarest_settings` (`id`, `companyname`, `logo`, `phone`, `currency`, `keyboard`, `receiptheader`, `receiptfooter`, `theme`, `discount`, `tax`, `timezone`, `language`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `decimals`) VALUES
(1, 'Al Akbar Store', 'eb846f217da24c1700c83c0ecea45627.png', '0878-9627-7897', 'IDR', 1, '<p>Selamat Datang di Al Akbar Store</p>', 'Terima Kasih Telah mampir ...', 'Light', '', '10%', 'Asia/Bangkok', 'indonesian', 0, '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zarest_stocks`
--

CREATE TABLE `zarest_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_stocks`
--

INSERT INTO `zarest_stocks` (`id`, `product_id`, `type`, `store_id`, `warehouse_id`, `quantity`, `price`) VALUES
(60, 155, NULL, 1, NULL, 142, 20000),
(61, 156, NULL, 1, NULL, 100, 100),
(62, 156, NULL, 5, NULL, 100, 100),
(63, 156, NULL, 6, NULL, 100, 100),
(64, 156, NULL, NULL, 3, 200, NULL),
(65, 157, NULL, 1, NULL, 100, 100),
(66, 157, NULL, 5, NULL, 100, 100),
(67, 157, NULL, 6, NULL, 100, 100),
(68, 157, NULL, NULL, 3, 100, NULL),
(69, 158, NULL, 1, NULL, 100, 100),
(70, 158, NULL, 5, NULL, 100, 100),
(71, 158, NULL, 6, NULL, 100, 100),
(72, 158, NULL, NULL, 3, 100, NULL),
(73, 159, NULL, 1, NULL, 100, 100),
(74, 159, NULL, 5, NULL, 100, 100),
(75, 159, NULL, 6, NULL, 100, 100),
(76, 159, NULL, NULL, 3, 100, NULL),
(77, 160, NULL, 1, NULL, 100, 100),
(78, 160, NULL, 5, NULL, 100, 100),
(79, 160, NULL, 6, NULL, 100, 100),
(80, 160, NULL, NULL, 3, 100, NULL),
(81, 161, NULL, 1, NULL, 100, 100),
(82, 161, NULL, 5, NULL, 100, 100),
(83, 161, NULL, 6, NULL, 100, 100),
(84, 161, NULL, NULL, 3, 100, NULL),
(85, 162, NULL, 1, NULL, 100, 100),
(86, 162, NULL, 5, NULL, 100, 100),
(87, 162, NULL, 6, NULL, 100, 100),
(88, 162, NULL, NULL, 3, 100, NULL),
(89, 163, NULL, 1, NULL, 100, 100),
(90, 163, NULL, 5, NULL, 100, 100),
(91, 163, NULL, 6, NULL, 100, 100),
(92, 163, NULL, NULL, 3, 100, NULL),
(93, 164, NULL, 1, NULL, 100, 100),
(94, 164, NULL, 5, NULL, 100, 100),
(95, 164, NULL, 6, NULL, 100, 100),
(96, 164, NULL, NULL, 3, 100, NULL),
(97, 165, NULL, 1, NULL, 100, 100),
(98, 165, NULL, 5, NULL, 100, 100),
(99, 165, NULL, 6, NULL, 100, 100),
(100, 165, NULL, NULL, 3, 100, NULL),
(101, 166, NULL, 1, NULL, 100, 100),
(102, 166, NULL, 5, NULL, 100, 100),
(103, 166, NULL, 6, NULL, 100, 100),
(104, 166, NULL, NULL, 3, 100, NULL),
(105, 167, NULL, 1, NULL, 50, 50),
(106, 167, NULL, 5, NULL, 50, 50),
(107, 167, NULL, 6, NULL, 50, 50),
(108, 167, NULL, NULL, 3, 50, NULL),
(109, 168, NULL, 1, NULL, 100, 100),
(110, 168, NULL, 5, NULL, 100, 100),
(111, 168, NULL, 6, NULL, 100, 100),
(112, 168, NULL, NULL, 3, 100, NULL),
(113, 169, NULL, 1, NULL, 100, 100),
(114, 169, NULL, 5, NULL, 100, 100),
(115, 169, NULL, 6, NULL, 100, 100),
(116, 169, NULL, NULL, 3, 100, NULL),
(117, 170, NULL, 1, NULL, 100, 100),
(118, 170, NULL, 5, NULL, 100, 100),
(119, 170, NULL, 6, NULL, 100, 100),
(120, 170, NULL, NULL, 3, 100, NULL),
(121, 171, NULL, 1, NULL, 100, 100),
(122, 171, NULL, 5, NULL, 100, 100),
(123, 171, NULL, 6, NULL, 100, 100),
(124, 171, NULL, NULL, 3, 100, NULL),
(125, 172, NULL, 1, NULL, 100, 100),
(126, 172, NULL, 5, NULL, 100, 100),
(127, 172, NULL, 6, NULL, 100, 100),
(128, 172, NULL, NULL, 3, 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zarest_stores`
--

CREATE TABLE `zarest_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `footer_text` varchar(400) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_stores`
--

INSERT INTO `zarest_stores` (`id`, `name`, `email`, `phone`, `adresse`, `footer_text`, `city`, `country`, `created_at`, `status`) VALUES
(1, 'Cafe Lavada', 'robialakbar@gmail.com', '087896277897', 'Jalan Ahmad yani Pangkalpinang, Indonesia', 'Terima kasih telah datang', 'Pangkalpinang', 'Indonesia', '2016-05-10 12:44:33', 1),
(5, 'Cafe Tung Tau', 'tungtau@gmail.com', '08786465786', 'Jalan Ahmad yani Pangkalpinang, Indonesia', 'Terima kasih telah datang', 'Pangkalpinang', 'Indonesia', '2020-12-16 20:36:23', 0),
(6, 'Bolak Balik Caafe', 'bolakbalik@gmail.com', '08767567568756', 'Jalan Ahmad yani Pangkalpinang, Indonesia', 'Terima kasih telah datang, Datang Kembali Ya', 'Pangkalpinang', 'Indonesia', '2020-12-16 21:24:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zarest_suppliers`
--

CREATE TABLE `zarest_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `note` mediumtext,
  `created_at` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_suppliers`
--

INSERT INTO `zarest_suppliers` (`id`, `name`, `phone`, `email`, `note`, `created_at`) VALUES
(4, 'Petani Kopi Bangka Tengah Group', '087645366354', 'kopibateng@gmail.com', '<p>Penyedia dari Petani Local yang tergabung dalam group usaha</p>', '2020-12-16 20:19:47'),
(5, 'Suplier CV Al Akbar Company', '087896277897', 'robialakbar@gmail.com', '<p>Supplier Andalan</p>', '2020-12-16 23:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `zarest_tables`
--

CREATE TABLE `zarest_tables` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `checked` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_tables`
--

INSERT INTO `zarest_tables` (`id`, `name`, `zone_id`, `status`, `time`, `store_id`, `checked`) VALUES
(44, 'Meja 1', 9, 1, '22:53', 1, NULL),
(45, 'Meja 2', 9, 0, '', 1, NULL),
(46, 'Meja 3', 9, 0, '', 1, NULL),
(47, 'Meja 4', 9, 0, '', 1, NULL),
(48, 'Meja 1', 10, 1, '23:01', 1, NULL),
(49, 'Meja 2', 10, 0, '', 1, NULL),
(50, 'Meja 1', 11, 0, '', 1, NULL),
(51, 'Meja 2', 11, 0, '', 1, NULL),
(52, 'Meja 3', 11, 0, '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zarest_users`
--

CREATE TABLE `zarest_users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` varchar(300) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_users`
--

INSERT INTO `zarest_users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `role`, `last_active`, `avatar`, `created_at`, `store_id`) VALUES
(1, 'admin', 'robi', 'al akbar', '8091d35190efa5d080867aa44c596d0f269f2d3faee949c7a056fbef12a8a67ffbc7a34efe4ac206b15a2747ca63b6c9684a98d94f376aa929e4ebe04a50c16b', 'admin@dar-elweb.com', 'admin', '2020-12-17 00:39:17', '9fff9cc26e539214e9a5fd3b6a10cde9.jpg', '2020-12-16 22:48:13', 1),
(16, 'waiter', 'waiter1', 'wa', 'daa5fc9f9c0397d44100f5a7f5709d43b54628294ed405037d950453b690c7c1159806086ff0b6aa5f50c90d0a2fe18bb7974d9f6ed0eb422cc14c37984eb9c7', 'robialakbar@gmail.com', 'waiter', NULL, '92575b48214fd3a85a9af6621b40279e.png', '2020-12-16 20:41:31', 1),
(17, 'Sales', 'Sales1', 'as', '18e43db7427f18e7c3e3c0528e3c6cbcb41a92d5448b9b0d3d0f166de9b4587ddc1513446383992cd2c2e958117cdb9979452ac2e21181c6148274401e255045', 'sales@gmail.com', 'sales', '2020-12-16 23:00:08', '897daf1dc066ea5fcb2c9fd6d3bd553b.jpg', '2020-12-16 22:54:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zarest_variations`
--

CREATE TABLE `zarest_variations` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zarest_waiters`
--

CREATE TABLE `zarest_waiters` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_waiters`
--

INSERT INTO `zarest_waiters` (`id`, `name`, `phone`, `email`, `created_at`, `store_id`) VALUES
(8, 'Rahmawati', '087896566787', 'rahmawati@gmail.com', '2020-12-16 20:18:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zarest_warehouses`
--

CREATE TABLE `zarest_warehouses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_warehouses`
--

INSERT INTO `zarest_warehouses` (`id`, `name`, `phone`, `email`, `adresse`, `created_at`) VALUES
(3, 'Gudang 2', '087565656574', 'admingudang@gmail.com', 'Jalan Ahmad Yani', '2020-12-16 20:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `zarest_zones`
--

CREATE TABLE `zarest_zones` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zarest_zones`
--

INSERT INTO `zarest_zones` (`id`, `store_id`, `name`) VALUES
(9, 1, 'Zona Dalam Cafe'),
(10, 1, 'Zona Luar Cafe'),
(11, 1, 'Zona VVIP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zarest_categories`
--
ALTER TABLE `zarest_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_categorie_expences`
--
ALTER TABLE `zarest_categorie_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_combo_items`
--
ALTER TABLE `zarest_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_customers`
--
ALTER TABLE `zarest_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_expences`
--
ALTER TABLE `zarest_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_holds`
--
ALTER TABLE `zarest_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_payements`
--
ALTER TABLE `zarest_payements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_posales`
--
ALTER TABLE `zarest_posales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_products`
--
ALTER TABLE `zarest_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_purchases`
--
ALTER TABLE `zarest_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_purchase_items`
--
ALTER TABLE `zarest_purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_registers`
--
ALTER TABLE `zarest_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_sales`
--
ALTER TABLE `zarest_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_sale_items`
--
ALTER TABLE `zarest_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_settings`
--
ALTER TABLE `zarest_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_stocks`
--
ALTER TABLE `zarest_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_stores`
--
ALTER TABLE `zarest_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_suppliers`
--
ALTER TABLE `zarest_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_tables`
--
ALTER TABLE `zarest_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_users`
--
ALTER TABLE `zarest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_waiters`
--
ALTER TABLE `zarest_waiters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_warehouses`
--
ALTER TABLE `zarest_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zarest_zones`
--
ALTER TABLE `zarest_zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zarest_categories`
--
ALTER TABLE `zarest_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `zarest_categorie_expences`
--
ALTER TABLE `zarest_categorie_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zarest_combo_items`
--
ALTER TABLE `zarest_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `zarest_customers`
--
ALTER TABLE `zarest_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `zarest_expences`
--
ALTER TABLE `zarest_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `zarest_holds`
--
ALTER TABLE `zarest_holds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `zarest_payements`
--
ALTER TABLE `zarest_payements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `zarest_posales`
--
ALTER TABLE `zarest_posales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1566;

--
-- AUTO_INCREMENT for table `zarest_products`
--
ALTER TABLE `zarest_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `zarest_purchases`
--
ALTER TABLE `zarest_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zarest_purchase_items`
--
ALTER TABLE `zarest_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zarest_registers`
--
ALTER TABLE `zarest_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `zarest_sales`
--
ALTER TABLE `zarest_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `zarest_sale_items`
--
ALTER TABLE `zarest_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1031;

--
-- AUTO_INCREMENT for table `zarest_settings`
--
ALTER TABLE `zarest_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zarest_stocks`
--
ALTER TABLE `zarest_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `zarest_stores`
--
ALTER TABLE `zarest_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zarest_suppliers`
--
ALTER TABLE `zarest_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zarest_tables`
--
ALTER TABLE `zarest_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `zarest_users`
--
ALTER TABLE `zarest_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `zarest_waiters`
--
ALTER TABLE `zarest_waiters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zarest_warehouses`
--
ALTER TABLE `zarest_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zarest_zones`
--
ALTER TABLE `zarest_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
