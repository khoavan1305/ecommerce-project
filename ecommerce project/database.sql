-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 05:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `subtitle`, `image`, `category`, `content`, `created_at`, `updated_at`) VALUES
(4, 6, '5 xu hướng thời trang từ đông sang xuân nên thử ngay', 'Xanh lá cây trở thành sắc màu “trendy” và được săn đón hơn bao giờ hết, đặc biệt trong hè 2023 với những item vô cùng đặc sắc. Điều gì đã tạo nên sức hút “không thể cưỡng lại” của màu xanh lá? Mix&match với nó như thế nào?', 'blog-01.jpg', 'FASHION', ' StreetStyle, Fashion, Couple |', '2023-07-05 11:58:05', NULL),
(5, 7, 'Danh sách lớn quà tặng dành cho nam giới trong ngày lễ', 'Những gam màu xanh lá luôn khiến các tín đồ thời trang phải “phát cuồng” mê mẩn, từ gam màu xanh pastel nhẹ nhàng, xanh bạc hà thư thái, rất sang trọng và thời thượng. Được nhận định là một gam màu “kén” người mặc bởi sự tương phản với màu da. Nhưng nó vẫn có sức hút mãnh liệt, là nguồn cảm hứng bất tận cho các item, đặc biệt thời trang hè.', 'blog-02.jpg', 'FASHION', ' StreetStyle, Fashion, Couple |', '2023-07-06 11:58:14', NULL),
(6, 9, '8 cách mặc váy đầy cảm hứng trong mùa đông', 'Không thể phủ nhận sút hút của tông màu này, tuy nhiên nhiều cô nàng vẫn do dự trước việc lựa chọn trang phục với sắc xanh.\n\nBởi chúng ta đều biết, để tạo ra một bản phối đồ hoàn hảo với gam màu “kén da” này quả thực không hề đơn giản. Vậy làm sao để có thể chinh phục nó, và cho ra đời những outfit thời thượng?', 'blog-03.jpg', 'FASHION', ' StreetStyle, Fashion, Couple |', '2023-07-07 11:58:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `user_id`, `email`, `name`, `messages`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '', '', 'Thời trang đẹp', NULL, NULL),
(2, 4, 1, '', '', 'Thời trang đẹp', NULL, NULL),
(3, 4, 1, '', '', 'Thời trang đẹp', NULL, NULL),
(4, 5, 1, '', '', 'Thời trang đẹp', NULL, NULL),
(5, 6, 2, '', '', 'Thời trang đẹp', NULL, NULL),
(6, 6, 3, '', '', 'Thời trang đẹp', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Calvin Klein', NULL, NULL),
(2, 'Diesel', NULL, NULL),
(3, 'Polo', NULL, NULL),
(4, 'Tommy Hilfiger', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2020_12_09_085528_create_orders_table', 1),
(6, '2020_12_09_085832_create_order_details_table', 1),
(7, '2020_12_09_085936_create_products_table', 1),
(8, '2020_12_09_090029_create_brands_table', 1),
(9, '2020_12_09_090110_create_product_categories_table', 1),
(10, '2020_12_09_090148_create_product_images_table', 1),
(11, '2020_12_09_090228_create_product_details_table', 1),
(12, '2020_12_09_090308_create_product_comments_table', 1),
(13, '2020_12_09_090355_create_blogs_table', 1),
(14, '2020_12_09_090437_create_blog_comments_table', 1),
(15, '2023_07_16_102547_create_sessions_table', 2),
(16, '2023_08_01_083117_sua_table_order', 3),
(17, '2023_08_01_085701_edit_table_order_details', 4),
(18, '2023_08_01_114301_sua_table_order1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pttt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 0,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`, `user_id`, `address1`, `address2`, `note`, `pttt`, `status`, `token`) VALUES
(1691600396, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 10:00:18', '2023-08-09 10:00:18', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'asdsad', '123123', 'Thanh toán khi nhận hàng', 0, 'HQDFQWYS2M5QJTOI318G'),
(1691600508, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 10:01:53', '2023-08-09 10:05:45', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'dasdas', 'dasdasd', 'Thanh toán khi nhận hàng', 1, 'ZS0W1ESK338FGYIZQENY'),
(1691600626, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 10:03:51', '2023-08-09 10:05:23', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'dasd', '12312', 'Thanh toán khi nhận hàng', 1, 'GMNEBDAOUAX9YGEFH1GU'),
(1691600683, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 10:04:48', '2023-08-09 10:04:57', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'dasd', NULL, 'Thanh toán khi nhận hàng', 1, 'VLZOUULNRCWE97HWQCLC'),
(1691600780, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 10:06:26', '2023-08-09 10:06:26', 6, '307 nguyễn văn khối,phường 14,gò vấp', '123', 'sad', 'Thanh toán khi nhận hàng', 0, 'MBSX99YMZQJSFCA6W1DF'),
(1691601058, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 10:11:03', '2023-08-09 10:11:12', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'asdsad', 'sdasd', 'Thanh toán khi nhận hàng', 1, 'EI4SSEQ1O3BCPMT0FD5I'),
(1691634358, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 19:26:13', '2023-08-09 19:26:13', 6, '307 nguyễn văn khối,phường 14,gò vấp', '307 nguyễn văn khối,phường 14,gò vấp', '307 nguyễn văn khối,phường 14,gò vấp', 'Thanh toán khi nhận hàng', 0, 'EZH1BEDLKPBVQPENS7PI'),
(1691634398, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 19:26:42', '2023-08-09 19:26:42', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'asd', 'asdasd', 'Thanh toán khi nhận hàng', 0, 'HSDYD7R6VWUPEGCZQ8B3'),
(1691634531, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 19:28:56', '2023-08-09 19:28:56', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'dsad', 'asdasd', 'Thanh toán khi nhận hàng', 0, 'COVCSDBW52O0HXIZ622K'),
(1691634686, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 19:31:32', '2023-08-09 19:31:32', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'abc', 'dasd', 'Thanh toán khi nhận hàng', 0, 'IIHCNHE8GG4WKGXMUFGB'),
(1691649111, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 23:31:56', '2023-08-09 23:31:56', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'dasd', 'asdasd', 'Thanh toán khi nhận hàng', 0, 'RLVLHY3TZWCJXYLNA1VS'),
(1691649318, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 23:35:25', '2023-08-09 23:35:25', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'dasd', 'asdasd', 'Thanh toán khi nhận hàng', 0, 'OBWNU6BXWPOA7CIDULTC'),
(1691649385, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 23:44:27', '2023-08-09 23:44:43', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'dsada', 'dasd', 'Thanh toán khi nhận hàng', 1, 'HX0CCCGXZMIUWEOBUC4T'),
(1691650102, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-09 23:48:27', '2023-08-09 23:48:27', 6, '307 nguyễn văn khối,phường 14,gò vấp', 'dasd', 'asdasd', 'Thanh toán khi nhận hàng', 0, '1INKMRXRB6KNVQRXZP7V'),
(1691650911, 'Khoa', 'Văn', 'khoavan1305@gmail.com', '0933418277', '2023-08-10 00:01:57', '2023-08-10 00:02:16', 510, '307 nguyễn văn khối,phường 14,gò vấp', 'dasdsa', 'asdasd', 'Thanh toán khi nhận hàng', 1, 'RFYNFTJGAWNCWQFXOZLU');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `amount`, `total`, `created_at`, `updated_at`, `size`, `color`) VALUES
(100, 1691600396, 6, 2, 237.4, '2023-08-09 10:00:18', '2023-08-09 10:00:18', 'M', 'red'),
(101, 1691600396, 3, 2, 237.4, '2023-08-09 10:00:18', '2023-08-09 10:00:18', 'S', 'red'),
(102, 1691600508, 6, 2, 237.4, '2023-08-09 10:01:53', '2023-08-09 10:01:53', 'M', 'red'),
(103, 1691600508, 3, 2, 237.4, '2023-08-09 10:01:53', '2023-08-09 10:01:53', 'S', 'red'),
(104, 1691600626, 6, 2, 237.4, '2023-08-09 10:03:51', '2023-08-09 10:03:51', 'M', 'red'),
(105, 1691600626, 3, 2, 237.4, '2023-08-09 10:03:51', '2023-08-09 10:03:51', 'S', 'red'),
(106, 1691600683, 6, 2, 237.4, '2023-08-09 10:04:48', '2023-08-09 10:04:48', 'M', 'red'),
(107, 1691600683, 3, 2, 237.4, '2023-08-09 10:04:48', '2023-08-09 10:04:48', 'S', 'red'),
(108, 1691600780, 4, 2, 150, '2023-08-09 10:06:26', '2023-08-09 10:06:26', 'S', 'red'),
(109, 1691601058, 3, 2, 51, '2023-08-09 10:11:03', '2023-08-09 10:11:03', 'S', 'red'),
(110, 1691634358, 2, 2, 70.62, '2023-08-09 19:26:13', '2023-08-09 19:26:13', 'S', 'red'),
(111, 1691634398, 2, 2, 70.62, '2023-08-09 19:26:42', '2023-08-09 19:26:42', 'S', 'red'),
(112, 1691634531, 2, 2, 70.62, '2023-08-09 19:28:56', '2023-08-09 19:28:56', 'S', 'red'),
(113, 1691634686, 2, 2, 70.62, '2023-08-09 19:31:32', '2023-08-09 19:31:32', 'S', 'red'),
(114, 1691649111, 7, 2, 255.32, '2023-08-09 23:31:56', '2023-08-09 23:31:56', 'M', 'Blue'),
(115, 1691649111, 4, 2, 255.32, '2023-08-09 23:31:56', '2023-08-09 23:31:56', 'M', 'Blue'),
(116, 1691649318, 7, 2, 255.32, '2023-08-09 23:35:25', '2023-08-09 23:35:25', 'M', 'Blue'),
(117, 1691649318, 4, 2, 255.32, '2023-08-09 23:35:25', '2023-08-09 23:35:25', 'M', 'Blue'),
(118, 1691649385, 7, 2, 255.32, '2023-08-09 23:44:27', '2023-08-09 23:44:27', 'M', 'Blue'),
(119, 1691649385, 4, 2, 255.32, '2023-08-09 23:44:27', '2023-08-09 23:44:27', 'M', 'Blue'),
(120, 1691650102, 6, 2, 186.4, '2023-08-09 23:48:27', '2023-08-09 23:48:27', 'S', 'red'),
(121, 1691650911, 17, 3, 600, '2023-08-10 00:01:57', '2023-08-10 00:01:57', 'S', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `product_category_id`, `name`, `description`, `content`, `price`, `images`, `qty`, `discount`, `weight`, `sku`, `featured`, `tag`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Esprit Ruffle Shirt', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', '', 16.64, 'product-01.jpg', 20, 495, 1.3, '00012', 1, 'women', NULL, NULL),
(2, 2, 2, 'Classic Trench Coat', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 35.31, 'product-02.jpg', 20, 13, NULL, NULL, 1, 'women', NULL, NULL),
(3, 3, 1, 'Front Pocket Jumper', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 25.5, 'product-03.jpg', 20, 34, NULL, NULL, 1, 'men', NULL, NULL),
(4, 4, 2, 'Vintage Inspired Classic', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 75, 'product-04.jpg', 20, 35, NULL, NULL, 1, 'women', NULL, NULL),
(5, 1, 2, 'Shirt in Stretch Cotton', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 34.75, 'product-05.jpg', 20, 35, NULL, NULL, 0, 'women', NULL, NULL),
(6, 1, 5, 'Pieces Metallic Printed', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 93.2, 'product-06.jpg', 20, 34, NULL, NULL, 1, 'watches', NULL, NULL),
(7, 1, 2, 'Converse All Star Hi Plimsolls', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 52.66, 'product-07.jpg', 20, 35, NULL, NULL, 1, 'women', NULL, NULL),
(8, 1, 2, 'Femme T-Shirt In Stripe', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 18.96, 'product-08.jpg', 20, 35, NULL, NULL, 1, 'women', NULL, NULL),
(9, 1, 4, 'Herschel supply', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 75.99, 'product-09.jpg', 20, 34, NULL, NULL, 1, 'shoes', NULL, NULL),
(10, 1, 2, 'Herschel supply', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', '', 35.31, 'product-10.jpg', 20, 495, 1.3, '00012', 1, 'women', NULL, NULL),
(11, 2, 1, 'Only Check Trouser', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 25.5, 'product-11.jpg', 20, 13, NULL, NULL, 1, 'men', NULL, NULL),
(12, 3, 3, 'Femme T-Shirt In Stripe', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 25.85, 'product-12.jpg', 20, 34, NULL, NULL, 1, 'bag', NULL, NULL),
(13, 4, 2, 'T-Shirt with Sleeve', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 18.49, 'product-13.jpg', 20, 35, NULL, NULL, 1, 'women', NULL, NULL),
(14, 1, 2, 'Pretty Little Thing', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 54.79, 'product-14.jpg', 20, 35, NULL, NULL, 0, 'women', NULL, NULL),
(15, 1, 5, 'Square Neck Back', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 29.64, 'product-15.jpg', 20, 34, NULL, NULL, 1, 'watches', NULL, NULL),
(16, 1, 2, 'Mini Silver Mesh Watch', 'Trượt nước bề mặt. Hiệu ứng Ombre chuyển màu thời trang. Chống thấm, thoáng khí nhờ kết cấu của lớp TPU Coating. Thiết kế thoát hơi thân sau áo. Áo có thể gấp gọn lộn ngược vào túi trong thân sau, nhỏ gọn và tiện lợi mang đi. Áo có 2 túi dây kéo ăn vô decoup bên sườn, 1 túi ngang ở bên trong, thuận tiện và an toàn đựng đồ. Logo in phảng quang trước + sau.', NULL, 86.85, 'product-16.jpg', 20, 35, NULL, NULL, 1, 'women', NULL, NULL),
(17, 1, 5, 'Esprit Ruffle Shirt 1', '<p>ABC</p>', NULL, 200, 'product-1691336719.jpg', NULL, 11, NULL, NULL, 0, NULL, '2023-08-02 09:50:57', '2023-08-06 08:45:19'),
(46, 1, 4, 'Lụm', '<p>abc</p>', NULL, 200, 'product-1691651039.jpg', NULL, 11, NULL, NULL, 1, NULL, '2023-08-10 00:03:59', '2023-08-10 00:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Men', NULL, NULL),
(2, 'Women', NULL, NULL),
(3, 'Shoes', NULL, NULL),
(4, 'Bag', NULL, NULL),
(5, 'Watches', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_comments`
--

CREATE TABLE `product_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_comments`
--

INSERT INTO `product_comments` (`id`, `product_id`, `user_id`, `email`, `name`, `messages`, `rating`, `created_at`, `updated_at`) VALUES
(3, 4, 2, 'khoavan1305@gmail.com', 'Bố Văn', 'Sản phẩm tuyệt vời', 5, '2023-07-14 18:06:14', NULL),
(18, 3, NULL, 'khoavan1305@gmail.com.vn', 'Bố Văn', 'Chất lượng', 5, '2023-07-17 00:13:38', '2023-07-17 00:13:38'),
(19, 11, 6, 'khoavan198@gmail.com', 'Lụm', 'Sản phẩm chất lượng', 5, '2023-07-17 00:14:12', '2023-07-17 00:14:12'),
(20, 11, NULL, 'khoavan1305@gmail.com.vn', 'Bố Văn', 'Tuyệt', 5, '2023-07-17 00:15:13', '2023-07-17 00:15:13'),
(22, 2, 6, 'khoavan198@gmail.com', 'Lụm', 'Rất đẹp', 0, '2023-07-17 02:23:13', '2023-07-17 02:23:13'),
(24, 11, 16, 'hung@gmail.com', 'Hùng', 'Sản phẩn chất lượng', 5, '2023-07-20 11:33:41', '2023-07-20 11:33:41'),
(25, 11, 6, 'khoavan198@gmail.com', 'Admin', 'Hàng chất lượng', 5, '2023-07-21 11:11:21', '2023-07-21 11:11:21'),
(26, 11, 6, 'khoavan198@gmail.com', 'Admin', 'Hàng chất lượng', 5, '2023-07-21 11:11:21', '2023-07-21 11:11:21'),
(27, 1, 7, 'khoavan1305@gmail.com', 'Văn Võ', 'Chất lượng', 5, '2023-07-21 12:32:39', '2023-07-21 12:32:39'),
(28, 1, 7, 'khoavan1305@gmail.com', 'Văn Võ', 'Ok!', 4, '2023-07-21 13:43:49', '2023-07-21 13:43:49'),
(29, 1, 7, 'khoavan1305@gmail.com', 'Văn Võ', 'Đẹp', 5, '2023-07-30 07:40:03', '2023-07-30 07:40:03'),
(30, 17, 6, 'khoavan198@gmail.com', 'Admin', 'Đẹp', 5, '2023-08-02 10:15:59', '2023-08-02 10:15:59'),
(31, 2, 510, 'khoavan11111@gmail.com', 'khoavan', 'dsad', 5, '2023-08-10 00:02:38', '2023-08-10 00:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `color`, `size`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 'blue', 'S', 5, NULL, NULL),
(2, 1, 'blue', 'M', 5, NULL, NULL),
(3, 1, 'blue', 'L', 5, NULL, NULL),
(4, 1, 'blue', 'XS', 5, NULL, NULL),
(5, 1, 'yellow', 'S', 0, NULL, NULL),
(6, 1, 'violet', 'S', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_min` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `path`, `path_min`, `created_at`, `updated_at`) VALUES
(1, 1, 'product-01.jpg', 'product-min-01.jpg', NULL, NULL),
(2, 2, 'product-02.jpg', 'product-min-02.jpg', NULL, NULL),
(3, 3, 'product-03.jpg', 'product-min-03.jpg', NULL, NULL),
(4, 4, 'product-04.jpg', '', NULL, NULL),
(5, 5, 'product-05.jpg', '', NULL, NULL),
(6, 6, 'product-06.jpg', '', NULL, NULL),
(7, 7, 'product-07.jpg', '', NULL, NULL),
(8, 8, 'product-08.jpg', '', NULL, NULL),
(9, 9, 'product-09.jpg', '', NULL, NULL),
(10, 10, 'product-10.jpg', '', NULL, NULL),
(11, 11, 'product-11.jpg', '', NULL, NULL),
(12, 12, 'product-12.jpg', '', NULL, NULL),
(13, 13, 'product-13.jpg', '', NULL, NULL),
(14, 14, 'product-14.jpg', '', NULL, NULL),
(15, 15, 'product-15.jpg', '', NULL, NULL),
(16, 16, 'product-16.jpg', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `level`, `description`, `created_at`, `updated_at`, `token`) VALUES
(6, 'Admin', 'khoavan198@gmail.com', NULL, '$2y$10$XuAXtqM4fSIr3N5QLlRrGu1fT7ehRXj1W/h5p9x79IOaozvYag6x2', NULL, '5.jpg', 0, NULL, '2023-07-15 23:44:04', '2023-08-07 08:36:36', 'SHSPZDR0TSJ5NMDHPM5Z'),
(7, 'Văn Võ', 'khoavan1305@gmail.com', NULL, '$2y$10$CqoZpGIKwPncJCQBsOGFeOLznbPP1CJR.eaHC9ZRnSKrWk3Dh2d8u', NULL, '7.jpg', 1, NULL, '2023-07-16 02:28:51', '2023-08-10 00:03:18', 'RWHHBWKXCKPQKQ47ERZS'),
(13, 'Hoài', 'hoai1999@gmail.com', NULL, '$2y$10$2MW4XZx/AImcsb7REeGJduGwZotn063JDiqD9bKlOBKrrDHqlX6UG', NULL, '6.jpg', 1, NULL, '2023-07-20 04:12:02', '2023-07-21 11:21:58', ''),
(114, 'khoa Văn48', 'khoavan48@gmailcom', NULL, '$2y$10$ws4rua/IYbxSDl.gAYG7tOei8cLO6Bd28WKI6MbYeRhA8vOOogTbm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(116, 'khoa Văn50', 'khoavan50@gmailcom', NULL, '$2y$10$E5YNWG8yOnPsWAwdMsOnUO3JVOWx4bQhtKDhPKpMh22u.YLQbvg5.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(119, 'khoa Văn53', 'khoavan53@gmailcom', NULL, '$2y$10$v6cNQrV75Q.z6jtIPcon1u4Te8pmaLLXsBQoGQ56G6YnQVvoc33Yy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(120, 'khoa Văn54', 'khoavan54@gmailcom', NULL, '$2y$10$3KZKJkMaJlYCgYQBxMv/dOMecVUSOOicwfd8p4J7BDaaSr2Zca.GG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(122, 'khoa Văn56', 'khoavan56@gmailcom', NULL, '$2y$10$OGRwbjXoX3.OMgkqUZdyFuio9l6G36OlbxdDy3hVRuiMvi7UOzA3W', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(123, 'khoa Văn57', 'khoavan57@gmailcom', NULL, '$2y$10$VCT38lj/S4FlC8Kdk6AIae0s9jCe8L2ot2xrHE0YVfS/VTYeSujq2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(124, 'khoa Văn58', 'khoavan58@gmailcom', NULL, '$2y$10$Hq9RJ01RB/saWwoeob.cu.el/kIlBxugJiFSJOUg1Aw8Ld4mllV.q', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(125, 'khoa Văn59', 'khoavan59@gmailcom', NULL, '$2y$10$aIvz5uzoUZmCKWcCioTnsOUMy9gl70a6247ns2Z8db2RVi2Vvh4c.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(126, 'khoa Văn60', 'khoavan60@gmailcom', NULL, '$2y$10$xO5UeMjtpeCOxBbE9ZBhLuSfOvPTO5vgJv3hkn6ZDaOwpGtO9Dvse', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(128, 'khoa Văn62', 'khoavan62@gmailcom', NULL, '$2y$10$1QLKUdcx1chl/UTFmEq8QOiyrkrY275p8wW410LNr64qFFG.KzTFO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(129, 'khoa Văn63', 'khoavan63@gmailcom', NULL, '$2y$10$uwIah/jBzk4VlbDQhPLUluqPtxFsaSvtzQP0S4yYcuzIwXvh511SC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(130, 'khoa Văn64', 'khoavan64@gmailcom', NULL, '$2y$10$oVdJfVgyv4.rIshx27Q6R.zjGl/9aGtCVLzrOpStT33b.SR9jHAxW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(131, 'khoa Văn65', 'khoavan65@gmailcom', NULL, '$2y$10$WLnWNdc6huxjLO7LAel2Pe.krcajcCxw.XC4fYhBV/ruMvFkPVqVa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(132, 'khoa Văn66', 'khoavan66@gmailcom', NULL, '$2y$10$bF.NG/m5Ytox6SHEQskJWeUZd8PN97ewAFbxU3vfYiJFot3Az8wIS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(133, 'khoa Văn67', 'khoavan67@gmailcom', NULL, '$2y$10$Is5lqpdw8uX36fd.pRmexu2CnQ4Oc/Ao5jE80e3lx8Ul6Hv/7gJxK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(134, 'khoa Văn68', 'khoavan68@gmailcom', NULL, '$2y$10$7DTuZC2/OQFC6VvLCeQVy.7M1.e2iV.LUGzE.1Kcvm8qoWsWEE2Fe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(135, 'khoa Văn69', 'khoavan69@gmailcom', NULL, '$2y$10$dQTEe8exPZhmjxqIP7I5Iubag4cR7pUYwcKX8Y.cSe.Rzute4WILK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(136, 'khoa Văn70', 'khoavan70@gmailcom', NULL, '$2y$10$wQXDDfEux1.pAep4kJDD9eBssUD.FI4MYMyKjsARadDYUK9AtZtPW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(137, 'khoa Văn71', 'khoavan71@gmailcom', NULL, '$2y$10$vq7WK20SsMiwnTejhO1fnOOFbCb18ncB4wULDFsATzCqoJEf2PUPe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(138, 'khoa Văn72', 'khoavan72@gmailcom', NULL, '$2y$10$q6ZxY3.I8pQ.rQZtdXgVWO6Al0Zwoygtuy7V5DveQUhhFhziXz/v6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(139, 'khoa Văn73', 'khoavan73@gmailcom', NULL, '$2y$10$THG9orszT.0DkHSOpNA0jOz/VQZO9aoN/aJMOSKGP/4du.w1f7UXO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(140, 'khoa Văn74', 'khoavan74@gmailcom', NULL, '$2y$10$NXJAke7EbSvYxWbGkR5UoeGBudAb62pGjSK2mwOzrbiKaLePhX.8q', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(141, 'khoa Văn75', 'khoavan75@gmailcom', NULL, '$2y$10$BG/Rb9KmXr8ctmQzkZ4e/uflWJnGhRkDFNocX0BY7Q6c0dpby56V.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(142, 'khoa Văn76', 'khoavan76@gmailcom', NULL, '$2y$10$lNuzdFP1pLahokKvvGwtXe2397BrWqMFNyuR5vvaeXJnTZfOCdUGm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(143, 'khoa Văn77', 'khoavan77@gmailcom', NULL, '$2y$10$h/9N7a2C7A1GHQVRO.FZmO3ilFdsu67Gbq71Ui.AY4lcj3YB40vYK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(144, 'khoa Văn78', 'khoavan78@gmailcom', NULL, '$2y$10$jPEF11yWNeODyCxrqaqeveg.ssRlkBstoCAK8jItqiogtiaPgaGoC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(145, 'khoa Văn79', 'khoavan79@gmailcom', NULL, '$2y$10$BzHfXmnrq9e4q4BYakMmzexA7RFwaxEXL830XXfvfMOXmq5bCZjTa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(146, 'khoa Văn80', 'khoavan80@gmailcom', NULL, '$2y$10$3vDeQn9lAbpbur/Fl5xNn.krrZkDat9oOvk1ZOTgbNb95L8giQznG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(147, 'khoa Văn81', 'khoavan81@gmailcom', NULL, '$2y$10$Rra3ncR5Nwh0SO.lf0rvtu67dTOiyw5D1Z8cbOPYj/jrvdcTUibp.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(148, 'khoa Văn82', 'khoavan82@gmailcom', NULL, '$2y$10$SRHPZW1ydYLkwi4r6lcb6uJOjpKloDpMEqraAgtGoHxxrizAqWmYW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(149, 'khoa Văn83', 'khoavan83@gmailcom', NULL, '$2y$10$x5//RSketVz8FyltwH0XMOjiY3jUqM/H6..x0d9mwgRf1DdDBVQ3.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(150, 'khoa Văn84', 'khoavan84@gmailcom', NULL, '$2y$10$GPW/OmMORt.Qy7NxdVtBPu4qB/XNeISxglI9d1.4Tzj7D/inlTzDW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(151, 'khoa Văn85', 'khoavan85@gmailcom', NULL, '$2y$10$Q0f2Ofsg5cpyV1qjmc61Ae4QrUh1T2st67.xJlELY.Iy7NzkdyJ9W', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(152, 'khoa Văn86', 'khoavan86@gmailcom', NULL, '$2y$10$IybZURtr2BnORMHp69NPD.9y1r6CbcBidBZ9B/nKaaER9/lmHMOtC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(153, 'khoa Văn87', 'khoavan87@gmailcom', NULL, '$2y$10$ySysvcQg9zdfW1RNtOEsuedLLvm0mno.Fzbuim9U86tlg4jCwVE6O', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(154, 'khoa Văn88', 'khoavan88@gmailcom', NULL, '$2y$10$uqwzr8i3dWMY2oe3BHmD0OlLuKLoa96NIGsxvWO2L0yki7MEYtIfK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(155, 'khoa Văn89', 'khoavan89@gmailcom', NULL, '$2y$10$w/qepXR/JzfWxClA792uie9n50.j4gyv1WxMgqd6U1RbFMCpdlPjW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(156, 'khoa Văn90', 'khoavan90@gmailcom', NULL, '$2y$10$yZJCbX4/4aaUSegAwYZAIOjW4oq2B4XVDF3jByMm2tQKp0K./rzkK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(157, 'khoa Văn91', 'khoavan91@gmailcom', NULL, '$2y$10$uAOfsqMVABPkj6D.ugSQZebVVnQ73PfO9T06tnUzOAzDzf3jOJwbu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(158, 'khoa Văn92', 'khoavan92@gmailcom', NULL, '$2y$10$v1fNd3fSOPUd9Q3Qye.tfuJwsOlWeFg6DHj0s3nOnbAFeZp.hmiWe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(159, 'khoa Văn93', 'khoavan93@gmailcom', NULL, '$2y$10$bVU6dHobxaZsiM/OkNLFHOhiMMIO97duorFOs/a/0bhOs1DD0FKOm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(160, 'khoa Văn94', 'khoavan94@gmailcom', NULL, '$2y$10$tS7ayldk/5ZT2HTSBke62uJVHoaNUH/PyuVbeFPzES.kSEfMvZ1ZK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(161, 'khoa Văn95', 'khoavan95@gmailcom', NULL, '$2y$10$mR7IgfvJdS8au.29O4OLteram0IQFG2Uxb1QA8NyIeC2OAz5Nis1.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(162, 'khoa Văn96', 'khoavan96@gmailcom', NULL, '$2y$10$cer8TmnOpF0UO6dQnlg.COJWkV1yhjkUDgzqcRRdsS2lRBG5/pDW2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(163, 'khoa Văn97', 'khoavan97@gmailcom', NULL, '$2y$10$4eHX8IypZhmmca4b6CF0VuVHBSxLVXGQCKn8jeWl4QiWa4kNYDRGa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(164, 'khoa Văn98', 'khoavan98@gmailcom', NULL, '$2y$10$7t8SagAFP/Fn3mxRoEiHGuJt4/jHRK3W4iazzsJsfsc5xE8yKFtKa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(165, 'khoa Văn99', 'khoavan99@gmailcom', NULL, '$2y$10$5EjxIJWH1Bc6JfDMs0hdj.e0WxBd1gNSSUlyvda2vLWWEhdukhcrC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(166, 'khoa Văn100', 'khoavan100@gmailcom', NULL, '$2y$10$a..WpKsJ1PZBz/mP9Tcmou.Sa6wDzZqPJyf27fL81itSIEYP7m6Dm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(167, 'khoa Văn101', 'khoavan101@gmailcom', NULL, '$2y$10$ef1Q4pYxfFxfztOKC8ckpusEFP40UtUh0d0Stz5Inc7BvcUtaIOza', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(168, 'khoa Văn102', 'khoavan102@gmailcom', NULL, '$2y$10$DEykGXJFopnB32NEaUrcle5AVIzjflMbbpCtZSQAucYpA5jdwmgZK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(169, 'khoa Văn103', 'khoavan103@gmailcom', NULL, '$2y$10$VtallTfhFWtYyco0mqGozOcuAjCwpxTWwaGJLd8lzEkjC0wZDXbUS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(170, 'khoa Văn104', 'khoavan104@gmailcom', NULL, '$2y$10$pAQbl7kB6IpFgd3zkAmf2eoZxxoxRv4fekVU3MvmLAled1tIHxo5e', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(171, 'khoa Văn105', 'khoavan105@gmailcom', NULL, '$2y$10$g0skXL1rDH21OrBifI.15O4QRIRa4oPfkSl5i0TtaDsciQVxeKjGC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(172, 'khoa Văn106', 'khoavan106@gmailcom', NULL, '$2y$10$B9h70AmmTon3T6y.NAmVpeTW1o6VsW3z6RUHdAOK2MrUOD846vg6W', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(173, 'khoa Văn107', 'khoavan107@gmailcom', NULL, '$2y$10$THwMoJSiSl7Uflt3bHnRQ.7UnKtTtCdvhVqfv.Bh7nMhUzjSU5dzC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(174, 'khoa Văn108', 'khoavan108@gmailcom', NULL, '$2y$10$VaGSnHrXzeVNyDE2SGikcOC.0h.j5lsjCcSwwrqjhbDPFjluigWS2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(175, 'khoa Văn109', 'khoavan109@gmailcom', NULL, '$2y$10$J4BxmsehyKreLEiIVSuKpO6d.BRkMWCHPowJ4JjmvYTYjqu2d0J4G', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(176, 'khoa Văn110', 'khoavan110@gmailcom', NULL, '$2y$10$daoZBQ2k7ret6kbpx43eeutV86pf1Hy.moafHxRAV3r0aCwcJDe.O', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(177, 'khoa Văn111', 'khoavan111@gmailcom', NULL, '$2y$10$7EzHFigmz6AMdMnLd06lF.mydMEaNO9HOgmcRO0jlrwtyJTqlCmQ.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(178, 'khoa Văn112', 'khoavan112@gmailcom', NULL, '$2y$10$ikyDYPE3RfLonGjheO.QYeIu3nQBV8zIRUYAiMUYx/B8/4Aet8D3q', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(179, 'khoa Văn113', 'khoavan113@gmailcom', NULL, '$2y$10$Xlb4VJ8SsBjXjry.x3gCouPEDe8aFucu22OJB4LPFETrVPOuQl.tS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(180, 'khoa Văn114', 'khoavan114@gmailcom', NULL, '$2y$10$0GCrwoEJh2X.ZOk1BICgnuKLIOWuP03V6mK1LF/dDzkHVTMR9B10O', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(181, 'khoa Văn115', 'khoavan115@gmailcom', NULL, '$2y$10$G9j6eq0JpITZnJFoWYAWK.7zcd09SyZbw82iTYDwIGOoqNzwHVviO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(182, 'khoa Văn116', 'khoavan116@gmailcom', NULL, '$2y$10$sBruiH9o5Lkjjoy1c2.m1uX8Shymc49teNrblmH8MNj1hkfIsw32.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(183, 'khoa Văn117', 'khoavan117@gmailcom', NULL, '$2y$10$XZk2mQn00gg9lF0rr5BnFuNVX8l9gDkvtiC9Eow4hRidFKgve6QyW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(184, 'khoa Văn118', 'khoavan118@gmailcom', NULL, '$2y$10$NjCUEgpmhoGD1azQYf3SYe.xv.hDuY1Q2aaQSbPpQRg4tTZeXllta', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(185, 'khoa Văn119', 'khoavan119@gmailcom', NULL, '$2y$10$9P.kQzZqEjZEWWBUOHw9kO./PYpVHbummWMQuD7jObdBfLbApzlHm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(186, 'khoa Văn120', 'khoavan120@gmailcom', NULL, '$2y$10$SgO46Gl7mieusjOIGQJSguuL9sm0gNWDpWkwyBiODUZhjVbUZzelK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(187, 'khoa Văn121', 'khoavan121@gmailcom', NULL, '$2y$10$KGyjtqKS0TtvyKi3dzVpCulcPwdRU/VFmog4eYBjOFx2plNoHK5g.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(188, 'khoa Văn122', 'khoavan122@gmailcom', NULL, '$2y$10$Y9VWO86GH.iW0Gargpbch.vXZ7TIT415NXq3658HBBZtHrEGKqwmu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(189, 'khoa Văn123', 'khoavan123@gmailcom', NULL, '$2y$10$ZphTX.FDiZDqAva2Z5OVr.m3q9pn.vbPTpgI8HBcy8RQw3HfEfmVC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(190, 'khoa Văn124', 'khoavan124@gmailcom', NULL, '$2y$10$1GGAqMdQlY6Ziyh2c6c8SusbpfONM4LipYkrWZmu7wuOPNi303pQO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(191, 'khoa Văn125', 'khoavan125@gmailcom', NULL, '$2y$10$a2TyvulPhHiwBp8dFfDrW.PiybTat8NzjUAOeqU6f9l1eO1bP54W2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(192, 'khoa Văn126', 'khoavan126@gmailcom', NULL, '$2y$10$3lgbFCtyiZ103M/uAsDdXunJdqd6G3pOeCbKqB9Oj44GLQat4wp5G', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(193, 'khoa Văn127', 'khoavan127@gmailcom', NULL, '$2y$10$1GLE9nYYAHiz6dy0CVaqPeKISm6Yz7ERXkLb5dNCcafFaE4lLs1Nq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(194, 'khoa Văn128', 'khoavan128@gmailcom', NULL, '$2y$10$11Qh3W8Rn3mffMF/PbxgAetw8GUwxIQGSyrUryl16LJSHxv5paLGS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(195, 'khoa Văn129', 'khoavan129@gmailcom', NULL, '$2y$10$8sUJLAC/pZb115bEBWUGE.OAM0VuLwn6ry33YlvSbGcN7fO44mBrS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(196, 'khoa Văn130', 'khoavan130@gmailcom', NULL, '$2y$10$.nhKuCR1gOddYiYy5WQnD.zdsb9RNx3HPAQRF.5GlUq6g8RdGfXaK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(197, 'khoa Văn131', 'khoavan131@gmailcom', NULL, '$2y$10$02QOMYzVppUf4hqYCUEaXOBYGvhfDn9sVYjue9wZO0kL6UF7w4huS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(198, 'khoa Văn132', 'khoavan132@gmailcom', NULL, '$2y$10$.FM/GDUwHhZRvGjxww2o0eHFGXpQUF9UBZTB9142aGHw3yREYaB2K', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(199, 'khoa Văn133', 'khoavan133@gmailcom', NULL, '$2y$10$SvGH.jZwbWQHqiZBylZCS.dqxxzQLaxOD8kFdEGPZvTf65Gb2Sqm2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(200, 'khoa Văn134', 'khoavan134@gmailcom', NULL, '$2y$10$wCrLUIvciK5e2DuEqEnPS.JJaNYg78mQoMl8vdbEx8qXIBqgDS5ja', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(201, 'khoa Văn135', 'khoavan135@gmailcom', NULL, '$2y$10$Q9VMK6sQUXjg35L1RWRx/.gqr6PdU/AHxQ.zFXkYTle8x166bpIjG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(202, 'khoa Văn136', 'khoavan136@gmailcom', NULL, '$2y$10$Apn686DcBPZMXB1AAXqWAe6gsW0XWJFmWsG7eQyzEG5hWmqIJMRQO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(203, 'khoa Văn137', 'khoavan137@gmailcom', NULL, '$2y$10$7r4K9w3nUyrA4UY7hMnNqOFhWWHsaEzUxCl8OqKMYyn9Esbqwr3j.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(204, 'khoa Văn138', 'khoavan138@gmailcom', NULL, '$2y$10$3DI.EZJyASk.ULNrloBUNONELh3l0AMnMagJn8j9nypBq/7tiTTG.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(205, 'khoa Văn139', 'khoavan139@gmailcom', NULL, '$2y$10$C4rcx1xPqvfMWEfSQEN9zusF0aK3f7NWqYSYWEHHf2Er9KTE3rDZK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(206, 'khoa Văn140', 'khoavan140@gmailcom', NULL, '$2y$10$wu00TIql/sKryeJpzdDjGuwnP8DKaflMW/mgsXo6HFdRibC9Nd/NG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(207, 'khoa Văn141', 'khoavan141@gmailcom', NULL, '$2y$10$.eDDF5I3i0GKtiO7u8qw4OCJIHkaRkGpjdebZZTOEAsqvmDywSlHW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(208, 'khoa Văn142', 'khoavan142@gmailcom', NULL, '$2y$10$NovtV1ktxqHMhPcvTsjOGeWfI29aILmy4vngRnMLY2l7kfBwWuxBm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(209, 'khoa Văn143', 'khoavan143@gmailcom', NULL, '$2y$10$1TV8G8xAKM7E3RL36kh8te6hTHh5ZHYn87EPUnSoY8SXRavNFL.zK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(210, 'khoa Văn144', 'khoavan144@gmailcom', NULL, '$2y$10$n.SsTSdj0glKsKII7ky0R.LE9KWoZ0da6v5NZO9n.9JHkKKZ1jEay', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(211, 'khoa Văn145', 'khoavan145@gmailcom', NULL, '$2y$10$RJYZWZvZk0yW10zp4gaeaOzqPnYATooMfsZgMOunMYJlCGvXG/UIC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(212, 'khoa Văn146', 'khoavan146@gmailcom', NULL, '$2y$10$FmnZ3R.U5GTh8.WJkwHF/eTnYlw5G/seVTeKg/sM0ifNy5tkFdL3a', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(213, 'khoa Văn147', 'khoavan147@gmailcom', NULL, '$2y$10$4kAW3qXib3SWbTRFjn1u.OUCagUjfT9AHzqn0EszKlJ6Udawu69BS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(214, 'khoa Văn148', 'khoavan148@gmailcom', NULL, '$2y$10$14r6nmdyVexUBnTUHZ41rO4anGU5mheCkHUM3CWmTUwQUwA6.AHRe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(215, 'khoa Văn149', 'khoavan149@gmailcom', NULL, '$2y$10$dyd4ieA0ZkUmAVIytoJ2LePbzj5wtviocNVjnM.YIjhECp9OXd54S', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(216, 'khoa Văn150', 'khoavan150@gmailcom', NULL, '$2y$10$vobMoEcSspWqTZ47Of6Uze.uh.GOWIlTjOVTdjmnsPen929a4Aa4S', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(217, 'khoa Văn151', 'khoavan151@gmailcom', NULL, '$2y$10$pUOqs/F.mUsYRjLtMN3lbOySpbAF7sV3pvanXS9goklBKD5M7Ba0C', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(218, 'khoa Văn152', 'khoavan152@gmailcom', NULL, '$2y$10$fu1bHEWYpysiGRbaLkwRmeVEzyF1lSQ4iLhj4H/THMv2NmG07SBVW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(219, 'khoa Văn153', 'khoavan153@gmailcom', NULL, '$2y$10$vScG72Fkxqm2a6QkRU0K7ubCu1d/tNY9NZ68NTnIZLRox2t/XfRFS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(220, 'khoa Văn154', 'khoavan154@gmailcom', NULL, '$2y$10$xy/aiYctHfVnxrSH.nBqmOmzspTu5dbksiD5JHpdYtkixH67/O9.i', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(221, 'khoa Văn155', 'khoavan155@gmailcom', NULL, '$2y$10$/gEkNPumCabMQPEqD00By.vJSVlTcoxzGkuXMdNqjEJbsnbeb8LYu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(222, 'khoa Văn156', 'khoavan156@gmailcom', NULL, '$2y$10$ROgCABgI0EsmzKNXZ/sy8.ICECXOpDpmwMrTSsxIlXbX81AfBg3E2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(223, 'khoa Văn157', 'khoavan157@gmailcom', NULL, '$2y$10$mjLIrGaomHKskvxRqdRSVuakGdxNpP4P9bSxtdm2hlXhoiFiz0kka', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(224, 'khoa Văn158', 'khoavan158@gmailcom', NULL, '$2y$10$jJO4uG91LDRNhMNL2qdOr.fd1ufzu355.1dTqmedPXEEcKwnSf8BO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(225, 'khoa Văn159', 'khoavan159@gmailcom', NULL, '$2y$10$GuczR.h/bWdlhTSt7iCjk.z8TluXWkIWQRkj6S8Dmxt2eLa4wPbWe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(226, 'khoa Văn160', 'khoavan160@gmailcom', NULL, '$2y$10$rhyCUpKgHokr4ai1HqTsJu/I75Bkbl2GqHwO8fal8hUYewmMCitMG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(227, 'khoa Văn161', 'khoavan161@gmailcom', NULL, '$2y$10$X/D3CuPgThMsLH6xVx7sg.PUftHawz1OLLglr7OZDt5/.Hc46KWsa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(228, 'khoa Văn162', 'khoavan162@gmailcom', NULL, '$2y$10$cmr.1Gd8igqFlIxlGoa07OwFMn9B2EwO8EFYKJVbEEhp.IyJJ2j9q', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(229, 'khoa Văn163', 'khoavan163@gmailcom', NULL, '$2y$10$bYlmiJxuI.NCxLf06AbRt.1u4Axs/ckEmPO.uNo00isi/RK2z5N8y', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(230, 'khoa Văn164', 'khoavan164@gmailcom', NULL, '$2y$10$5xd3/bO6wfqf.zHtJ8sjMeA9kZK7yLUg/fFmyJCqRGenJGkavZUo.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(231, 'khoa Văn165', 'khoavan165@gmailcom', NULL, '$2y$10$aw.gCq0Xp8pZ7E39eBTv/uQJn8U2x2kelZ/c0G5/MY/DYsnrc0N.S', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(232, 'khoa Văn166', 'khoavan166@gmailcom', NULL, '$2y$10$.BOTp.mI9RBFJY3sgm2D8e2EdKdvOn1bIbZCPlJ/E6/LroGaejEYa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(233, 'khoa Văn167', 'khoavan167@gmailcom', NULL, '$2y$10$P8kF7HlAw1Ga5GF2evgMAOdgteL4uGbJepp79/39gnoBzsALgd3GO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(234, 'khoa Văn168', 'khoavan168@gmailcom', NULL, '$2y$10$V8vBUbPhZfStkTa.1RcmzeJ4/5xmZiiSN5gN2f5y3f0v2II1n/CMm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(235, 'khoa Văn169', 'khoavan169@gmailcom', NULL, '$2y$10$V6m/BSed7yeW0HPatSIFu.3HMj24t58TXuoduCsmaVlAhBooXhC22', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(236, 'khoa Văn170', 'khoavan170@gmailcom', NULL, '$2y$10$L2xkVtFXtinJrXSbdOuEOeRJxdMNKAHOoeIhfieNspwPc.LLkfYsi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(237, 'khoa Văn171', 'khoavan171@gmailcom', NULL, '$2y$10$lCKIU5OVn32BlfrqXgHDAupvxE0RemGNrXkAqZXKJYERfa4CuMMrC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(238, 'khoa Văn172', 'khoavan172@gmailcom', NULL, '$2y$10$yEReC7hPrtVvM4k/fRHZqO5mVfPHrSFv0VsfhV/LSI0pktc7sCMF6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(239, 'khoa Văn173', 'khoavan173@gmailcom', NULL, '$2y$10$0q42TOzQcWiPkN.AJUUgkO2PDSIE94FeRqcrsdkb3teY9J98HyWGq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(240, 'khoa Văn174', 'khoavan174@gmailcom', NULL, '$2y$10$EPMnNBj51A/lt1TjgouK2ev9rl6iB4s3oiksuw3BP0DDBzPhpTZzG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(242, 'khoa Văn176', 'khoavan176@gmailcom', NULL, '$2y$10$sQyTeWuKNl79VSd1anjNpOrxbipUJBeXgn/PxZprIwqaa7TptDwKS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(243, 'khoa Văn177', 'khoavan177@gmailcom', NULL, '$2y$10$uiZaSi6rzLGWFsB7VPAiC..Rr/tH8PYxx9xRUcK0tiH4WC75f0pgS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(244, 'khoa Văn178', 'khoavan178@gmailcom', NULL, '$2y$10$yJM.AtqpXsmonEs48HK.ve6fAu4wb7ujdmxlX9vEy7/4xgPagtDUK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(245, 'khoa Văn179', 'khoavan179@gmailcom', NULL, '$2y$10$fZoUAo2Ab9HQlzETJBPgHObmgJAmmyiWWE3NtAfy8jUi27Fh5JYMm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(246, 'khoa Văn180', 'khoavan180@gmailcom', NULL, '$2y$10$lp2dbWoL991BVqC49EHI4OGHLMchqYFIACObGEGMJsifq6NZliU9a', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(247, 'khoa Văn181', 'khoavan181@gmailcom', NULL, '$2y$10$aqLOo6NVD5X7mQ9kdOoOduJa8WIYx4wqrbM4700by20wpk4RaLLIu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(248, 'khoa Văn182', 'khoavan182@gmailcom', NULL, '$2y$10$s3tYgvCtVA85DWvTZpzjKe8gvOYFPkSOJ/LoaI.4Riaqbh3rNxnbm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(249, 'khoa Văn183', 'khoavan183@gmailcom', NULL, '$2y$10$PfPRQ6Jpx7LUuP1Rd4mDQ.5u.PdF3.QukUZUxmEZQPKawQC1OHek6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(250, 'khoa Văn184', 'khoavan184@gmailcom', NULL, '$2y$10$YDa6BPedkuDAysUdyL0rgu2/8hF4sG5nyGj9IkrHq3YCmoxjDhPki', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(251, 'khoa Văn185', 'khoavan185@gmailcom', NULL, '$2y$10$N4KUThoB1RiQYzw.dqa02eO06TWsIlUAyivDNRhVPreRdqHs8G/82', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(252, 'khoa Văn186', 'khoavan186@gmailcom', NULL, '$2y$10$dwLl/lQGCHCj06jHuq6jPOHvte0i.83bdAyRM80dd1b1TjqOttlA6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(253, 'khoa Văn187', 'khoavan187@gmailcom', NULL, '$2y$10$UsMnEq2HS0oRanBa3EYFEOKHFMpMUe0ptOABVKu7WQ0K7lDvN9gry', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(254, 'khoa Văn188', 'khoavan188@gmailcom', NULL, '$2y$10$NMuLChorn5q3kB/yrdgB2u5unNmySUHU5uDgoQJ3ChIxN7aCE3Rr.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(255, 'khoa Văn189', 'khoavan189@gmailcom', NULL, '$2y$10$cch832aPvHt4QQaN7ufgN.6s4riqavSWn0Yo4NxaOIkCEM7hnYSgu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(256, 'khoa Văn190', 'khoavan190@gmailcom', NULL, '$2y$10$Z/KcIkhXxSaCUuHQSJFDqeN7B58C8zfnFfzFgbBjmS.RqVW0b6Xsi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(257, 'khoa Văn191', 'khoavan191@gmailcom', NULL, '$2y$10$9dZrK7F/L0fOo82BbeB93ek0YLFNTkg4r.huKgRWRRXOdaBGzym/a', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(258, 'khoa Văn192', 'khoavan192@gmailcom', NULL, '$2y$10$Or.N24NlD4h.10MP0jpy6e9lhWPYAi0RZjzSld77Yp0/mgRVQJG9u', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(259, 'khoa Văn193', 'khoavan193@gmailcom', NULL, '$2y$10$3gigS886OJop8tPn29t16OwQ4bABoYpShRAMbelwcjiS8Tf09hZZi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(260, 'khoa Văn194', 'khoavan194@gmailcom', NULL, '$2y$10$laD/Cbo5ExDJbBw7hMIb4OJjth69EQFvu/2d5ZhiZxqYlsACU3Kei', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(261, 'khoa Văn195', 'khoavan195@gmailcom', NULL, '$2y$10$1mkVwyZ/8R.HMY7rDNWWr.hQrzaInq1iYHj..Pk82oSTBKAuk6mi2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(262, 'khoa Văn196', 'khoavan196@gmailcom', NULL, '$2y$10$q8dXVP5k9g/p8dKqUpLp8.gHi4zed958NF6F45xOPYkDYkdsIFp8y', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(263, 'khoa Văn197', 'khoavan197@gmailcom', NULL, '$2y$10$gtq9Q6diowRWRMF2BqB/TOe9q1GxR9jY63nNUu51Fd.hqfylXQ4P6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(264, 'khoa Văn198', 'khoavan198@gmailcom', NULL, '$2y$10$nk2/sQJOW41FLxr6m5t5qufE9Sy//g6sAJU8b6XHfSngdT.OJHNAS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(265, 'khoa Văn199', 'khoavan199@gmailcom', NULL, '$2y$10$f8GEMczrZ3sfSyjbbz5fbeV3mxNd/C9kJscZuXRy22/zsDKuSXgo.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(266, 'khoa Văn265', 'khoavan265@gmailcom', NULL, '$2y$10$huuJhSpoKxUGVRBeoT0VX.D1bY2D2KzWFCGpRDqn2Gy8RxZVhwLpi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(267, 'khoa Văn266', 'khoavan266@gmailcom', NULL, '$2y$10$GtG0NBRz6Irf2Q/bu1jWce8pGAqSBG800FUHNooGb6lMQayhnVslW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(268, 'khoa Văn267', 'khoavan267@gmailcom', NULL, '$2y$10$klDuadtE2yNHqrlDeWTDP.O6WalgGoIQR7.fKPaiFsKOJdi37Og72', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(269, 'khoa Văn268', 'khoavan268@gmailcom', NULL, '$2y$10$mYqo.yHtK06yjZj7NTQe5eHoTrnatx9k42DYmSZB1fUQabyocipHe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(270, 'khoa Văn269', 'khoavan269@gmailcom', NULL, '$2y$10$23c86NsgFZkEGOL5hNZfP.wpWfg6TUtLT1PGwv1JQ5OjWDl5KfZUC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(271, 'khoa Văn270', 'khoavan270@gmailcom', NULL, '$2y$10$QJYednQJP1DoFKxXmq7bhuqAC0jssceKYQTp9XPbRQb2jcg5a/Xve', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(272, 'khoa Văn271', 'khoavan271@gmailcom', NULL, '$2y$10$BOYsKTdDeZ.M3J3gLQ9S/.98b9I2rUbjqlu8A38LS2SRwzjeC73MG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(273, 'khoa Văn272', 'khoavan272@gmailcom', NULL, '$2y$10$s3ttvIPUoiwegL2nFrIqNuhUZ7Gyk743O16ZYy963RkhYzJXj4uTO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(274, 'khoa Văn273', 'khoavan273@gmailcom', NULL, '$2y$10$n7/.w.ObzB6qclS93aEADef96YGUmnUWL.Ahp4deZNZQ5uy9udnJC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(275, 'khoa Văn274', 'khoavan274@gmailcom', NULL, '$2y$10$yfovxF6H.olEuRXH6zi3HeC5c9TsBW29ZRrx5wImW7pVUvq9ncL4G', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(276, 'khoa Văn275', 'khoavan275@gmailcom', NULL, '$2y$10$1/gibjv6i.xZX6JxX3r2ZOpYOxuxi5cOX4HGrFO.dgZwB6v3Ldr7W', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(277, 'khoa Văn276', 'khoavan276@gmailcom', NULL, '$2y$10$kiuP4uSnhGOBjE1btBwb3OuVtwQrAHWLBlDFuayhZcs//v5eMVndO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(278, 'khoa Văn277', 'khoavan277@gmailcom', NULL, '$2y$10$qX5c337OKYlh1MlC03pe6O0UBqZP6ZgpBuIIOj3ZG6nkUHN6n8.Ji', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(279, 'khoa Văn278', 'khoavan278@gmailcom', NULL, '$2y$10$sUlX/v/ZKiTH6RDAaqgRMu/SdPkyeZlhQblseJedVJ1ASCezINkky', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(280, 'khoa Văn279', 'khoavan279@gmailcom', NULL, '$2y$10$lae.ddr2hjGkUzkAkL4oJOQvwaKM5vAfY2maXsh4t8z.hrYZe3uTi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(281, 'khoa Văn280', 'khoavan280@gmailcom', NULL, '$2y$10$c/GCNZ62nGElTq.ZVdvCtOtqqjD4x1ERoHywB5uiyPK.0vIGJ.YQG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(282, 'khoa Văn281', 'khoavan281@gmailcom', NULL, '$2y$10$78w5IqDbiXjFyu4GYve8xO3oiaEr4n4ZmlihO0J7wCiJgLr/6ZhjS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(283, 'khoa Văn282', 'khoavan282@gmailcom', NULL, '$2y$10$e.0WHmDx9GODTlIT5bSnieyyZ5/LL2YHK0JzUJAlMTQTUZ691KnqO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(284, 'khoa Văn283', 'khoavan283@gmailcom', NULL, '$2y$10$xOUbttgP7xEokgdVNjXAoegb9yrcvTJNMdWL5eqtGOUBa.l3tpsTS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(285, 'khoa Văn284', 'khoavan284@gmailcom', NULL, '$2y$10$8lq4KmLJyytIKvMJutWRmeVk.0d2iIklUYLka248uqIqYeC2iReyy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(286, 'khoa Văn285', 'khoavan285@gmailcom', NULL, '$2y$10$yNK6qWctKx3aG0Dz1SPr.OGu3mgLgB8oQiAdW/wSfsjpMP04pxvvK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(287, 'khoa Văn286', 'khoavan286@gmailcom', NULL, '$2y$10$ADlTQGR15I9GOA74MfgedOX1VvYpeWGPcEQlNCqLNQboJkIpifLom', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(288, 'khoa Văn287', 'khoavan287@gmailcom', NULL, '$2y$10$DxgEOUpqUT/UoyyUWOzs3.2qn3AnO3oo0dIkhvUS86ywRJlByfwYm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(289, 'khoa Văn288', 'khoavan288@gmailcom', NULL, '$2y$10$ZlBWJsZYA0eY2X8VJtyZ8ueg7ZViKfQugwSQqB1zb.UGBA7QZv/Fu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(290, 'khoa Văn289', 'khoavan289@gmailcom', NULL, '$2y$10$MxsEiY2u1QFXdI/bvIss2e3TPXX0MGrdyTbkTK0xFA2oTmEQdrhPC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(291, 'khoa Văn290', 'khoavan290@gmailcom', NULL, '$2y$10$BzttDB05BcHFyfvbWA8hP.BbaD32PGxZeCMXpVj67NMZ0Jn2LbZX2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(292, 'khoa Văn291', 'khoavan291@gmailcom', NULL, '$2y$10$gl0uX.6l4JC5S4onoAfBTesGsiZoXcQRcoPk2sjIREqPC6FZFk7WS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(293, 'khoa Văn292', 'khoavan292@gmailcom', NULL, '$2y$10$Spba13eea9QiB/ZqpD6uLeXNJd2OZ9ctW/2hloB2D4yy1q9laWbCu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(294, 'khoa Văn293', 'khoavan293@gmailcom', NULL, '$2y$10$Hk5btlGBtEDkBCbLAzRuIukVxRJP8zUzSMaUkYfbLs6cGr/gRJr.y', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(295, 'khoa Văn294', 'khoavan294@gmailcom', NULL, '$2y$10$1TN2NrVx1fgr5OVxXvDDUuJNqbCNJCflhTnL8LhPt.7DivVzHjuJe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(296, 'khoa Văn295', 'khoavan295@gmailcom', NULL, '$2y$10$y7tZn70e7G2nu7ctrF5/7Ot1yMetsSz3coZDdUPDGf1O.f9lQXCa.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(297, 'khoa Văn296', 'khoavan296@gmailcom', NULL, '$2y$10$8p8x0tZXoWKt.Uj8fRagE.DKHgkU9zlIWKWjm8gofCZhAVEGXMYZG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(298, 'khoa Văn297', 'khoavan297@gmailcom', NULL, '$2y$10$jj2Rx96B5blFA1c5cS9KAexonwzyabtTYH11qx6k0lKL5qmRNzSW2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(299, 'khoa Văn298', 'khoavan298@gmailcom', NULL, '$2y$10$e/tJ2Nu/yHbI8rIsXddz9.ndg4eo2FU5e9qUWpNyIeATnC1TlvsrK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(300, 'khoa Văn299', 'khoavan299@gmailcom', NULL, '$2y$10$w8i3pIt3pzUqbItWEhVbruMmR.6SWx1xV0klGw3r9wdvywAxs2YEm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(301, 'khoa Văn300', 'khoavan300@gmailcom', NULL, '$2y$10$.8s2XiTcmqKT82wlN/mRSettJfEfmIxOz0BBGDgqH2q2DpANqSXT2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(302, 'khoa Văn301', 'khoavan301@gmailcom', NULL, '$2y$10$l3Kb2IQZY0fysBKpq9ZoWOxKmZ7P4fnSFemxLRmr4BLxmKkX83a76', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(303, 'khoa Văn302', 'khoavan302@gmailcom', NULL, '$2y$10$xcAmZGsDxI4Q.UGQcz6i3.PVYeQ.KA8dgDHcF05UlcC.IPYT/YThO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(304, 'khoa Văn303', 'khoavan303@gmailcom', NULL, '$2y$10$23TvEHDo4Mj.XBXSG3nQ..v4v/F/DXg/0x7NeQ0QBDk86OngW3mn2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(305, 'khoa Văn304', 'khoavan304@gmailcom', NULL, '$2y$10$JWQUJLor3TxNQ.EKKw/PEONUlUD3nDnsc25DPTuSb6w78lDFwCE4q', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(306, 'khoa Văn305', 'khoavan305@gmailcom', NULL, '$2y$10$hSO3eBhk3jhB5qji/U5nTuxrteDiqpRiqlF9raj2036aPTuGB4d7q', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(307, 'khoa Văn306', 'khoavan306@gmailcom', NULL, '$2y$10$706vXR2pWUk.kmlcJIcEUuAXKO99McCTeDvwrZkE8qdFQG1Tao0xC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(308, 'khoa Văn307', 'khoavan307@gmailcom', NULL, '$2y$10$AyQA4gZWp0LOVr.pvIlMaeDKvVq2Uu.N/a5YaYc29de/98k.MK7Zi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(309, 'khoa Văn308', 'khoavan308@gmailcom', NULL, '$2y$10$QfuxeYLLdYsAnJL3tuPOZOFaqyhAEFi/tc7y8Le1LQW1JP5P.SmJO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(310, 'khoa Văn309', 'khoavan309@gmailcom', NULL, '$2y$10$duReU3xhL/DZOUEjeds6GuzHgODY/Y96TJcdmPRnvQkzKhrgRzawS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(311, 'khoa Văn310', 'khoavan310@gmailcom', NULL, '$2y$10$WdgqI8y/kzj6dj0ccUE.TOszW/EDz6GDSaUwv0G5W1e4.5PktU9GC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(312, 'khoa Văn311', 'khoavan311@gmailcom', NULL, '$2y$10$QIpL4V7rXmUix0NppSJ0N.k7pXNkIafht9.jmUZ1tLwBKMcnQsa3e', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(313, 'khoa Văn312', 'khoavan312@gmailcom', NULL, '$2y$10$V6iG4jtLARyULSbFqOzVD.XJ08h5Es/vyF31DuAFT0tCasnRK/P3W', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(314, 'khoa Văn313', 'khoavan313@gmailcom', NULL, '$2y$10$GgCff2HtHzKMmZV1UTnZl.Ba05cIrbWvS9fzMFiA.izuixtmc7YOm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(315, 'khoa Văn314', 'khoavan314@gmailcom', NULL, '$2y$10$hMrkuAiWyiKqsrjQAUGUeeAREQkc9Wzg1tWPTXthFXTqBAEPHVKuO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(316, 'khoa Văn315', 'khoavan315@gmailcom', NULL, '$2y$10$RLgw8EUHyXcOZNM4brCoA.4.zbcV3pJHoNk9xL6JstPw0uAXBNe1K', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(317, 'khoa Văn316', 'khoavan316@gmailcom', NULL, '$2y$10$hmVg9lRrRbjIEBE3zYGTC.BgkAJezw6eFnSmceLza6E9a9/PZboVi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(318, 'khoa Văn317', 'khoavan317@gmailcom', NULL, '$2y$10$yjWAKXKTuFD2BXh.l7wY8e1A7bPZug5hNeYnFQijPdyHVylGAOexm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(319, 'khoa Văn318', 'khoavan318@gmailcom', NULL, '$2y$10$7HNKe6ESrMfYsDYPCUE0OenXahES3H198EDg.MWEuqDog/7RNnlri', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(320, 'khoa Văn319', 'khoavan319@gmailcom', NULL, '$2y$10$6hCs0GqPIKpFov1kEGBpsONs2hoUrl3QYp1U3LMZMREqGRuhXEoT2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(321, 'khoa Văn320', 'khoavan320@gmailcom', NULL, '$2y$10$Q77FYM5ose488uF8wPgPdOGArIWsHm.40t3QGDVE4ByKIYCf3cPJy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(322, 'khoa Văn321', 'khoavan321@gmailcom', NULL, '$2y$10$mFhX47MvXxRbHbLOlEbMnOGehjxJmbwybJKOtKSZOKw7Z2Lp/Iu9O', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(323, 'khoa Văn322', 'khoavan322@gmailcom', NULL, '$2y$10$S9T/6IPntYcUwBaiQOVr7OjX1g3d7PL2jF.1i/JePT8uk9H0Vqtui', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(324, 'khoa Văn323', 'khoavan323@gmailcom', NULL, '$2y$10$FjJ8ERNYIVYqni3r3fG1bOJz15firJDnGjgoBP029S58yLhChowEq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(325, 'khoa Văn324', 'khoavan324@gmailcom', NULL, '$2y$10$yWVnp5O68x.LQbgcc4U1zu85GYqxBpeWyfjBpDDnT0la.oS5sT4t2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(326, 'khoa Văn325', 'khoavan325@gmailcom', NULL, '$2y$10$8SjY3HWZ/Spq8CBqVO1NW.NtA2aedjrKp8fQjw86G6Orl8FbCh1Ie', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(327, 'khoa Văn326', 'khoavan326@gmailcom', NULL, '$2y$10$c42O0Fcxnl2kavUOAbCGMOqRBKt4Rc2v95OnfyDsfLejThqehLmvi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(328, 'khoa Văn327', 'khoavan327@gmailcom', NULL, '$2y$10$X.XB0FTt0cKD4.4LkdRfoOa6jKaPb5JHDU3wT0DfO/fj1ZxIz9u0W', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(329, 'khoa Văn328', 'khoavan328@gmailcom', NULL, '$2y$10$8wuQY9eJKUi3T9AXrmizxuIR9sdEwD4BS6lAv69lTMw6ZexSF4mCS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(330, 'khoa Văn329', 'khoavan329@gmailcom', NULL, '$2y$10$R20QqQS8r.J3aN95.kw0TeBU5UaCzCMotLtHJDQUYS11sAgVljBIy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(331, 'khoa Văn330', 'khoavan330@gmailcom', NULL, '$2y$10$oATlyeKNcbNhb.RKK5atWeGa9lzpVUcHPZ/QbTCmc/.RJ/nfHOpAu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(332, 'khoa Văn331', 'khoavan331@gmailcom', NULL, '$2y$10$iw57uL8b3hI0KkLRObhnE.Hprbr5Jnl2E4zqfxG4nFyTL26HahGru', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(333, 'khoa Văn332', 'khoavan332@gmailcom', NULL, '$2y$10$i4xIW051z1inv3OWKI8l4.qUHhBCjMlXhCpq5EADqLlUw440doZt.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(334, 'khoa Văn333', 'khoavan333@gmailcom', NULL, '$2y$10$T4OU6aqQ4VvuNkAlmOHrROMqiH9I9I/nOhUnidelTRwy8qoBZwTau', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(335, 'khoa Văn334', 'khoavan334@gmailcom', NULL, '$2y$10$xgVhfYxm4oYKEI8kn7HrO.AVaCGMwPt.c8Zig86uv5AEyPCDjtDDm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(336, 'khoa Văn335', 'khoavan335@gmailcom', NULL, '$2y$10$T3Jlz9p4taXcyan5qN8t0ufDHv1PiRJxfdR1yuQrumlfYvSGjOXPa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(337, 'khoa Văn336', 'khoavan336@gmailcom', NULL, '$2y$10$tx0dlxeYw/PIlHMx8wn1LOQE4dI.aPj9a9YpU45bJrZZRvUzUjjnW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(338, 'khoa Văn337', 'khoavan337@gmailcom', NULL, '$2y$10$32mS.aMTXcpxQZNeziuibOFOEuDjhUSG83m96WLnAXPj4a2/suula', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(339, 'khoa Văn338', 'khoavan338@gmailcom', NULL, '$2y$10$47xQt808zJSHldHagphfauWerhulfDi/NJHXgB51Q16E1lXPY/1Ci', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(340, 'khoa Văn339', 'khoavan339@gmailcom', NULL, '$2y$10$uGtFkQAMPTV3huI28Br8x.3B/ool7gxh9HmShSWKoAYfZp2sB/KBq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(341, 'khoa Văn340', 'khoavan340@gmailcom', NULL, '$2y$10$cpFsnY5x3DGoNa5HxCa0teqpYavz1GCQXwFbUOzBZj3jZsL0cui0a', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(342, 'khoa Văn341', 'khoavan341@gmailcom', NULL, '$2y$10$L0Rprew.DgLQw4IvZ254EevKMGr2ReVf/OUE5B9PIyiYsDyDTHv6e', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(343, 'khoa Văn342', 'khoavan342@gmailcom', NULL, '$2y$10$5QyVBB1obbb25TAS4KPsp.rL2N.GOAHM3oNjWTX4YRHCVR4W759IG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(344, 'khoa Văn343', 'khoavan343@gmailcom', NULL, '$2y$10$o.0YbCIhAVF4h6YTSu6tF.LTtkRs2XsXcgVAoaScIKjSpUoEYNg..', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(345, 'khoa Văn344', 'khoavan344@gmailcom', NULL, '$2y$10$mgR48.iwtA1R5AfQBN6B9OUnq8o9NR33abZJGxNQxZMj7PJCx55Lm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(346, 'khoa Văn345', 'khoavan345@gmailcom', NULL, '$2y$10$zu6nIPN5myk2rwB3W91/V.unzOtqzh5XaPYN6E1aU8u8WM9kHjNDu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(347, 'khoa Văn346', 'khoavan346@gmailcom', NULL, '$2y$10$bKin4kYoaK3XEaD1apIWQ.efpo8k5NJipkGQf/JwElru2EdsLQTMm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(348, 'khoa Văn347', 'khoavan347@gmailcom', NULL, '$2y$10$M5JQsf9BrnRUOkzFBwtjJeLsRrOXDUYFbgrde7IPMebDx2XSDYFYG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(349, 'khoa Văn348', 'khoavan348@gmailcom', NULL, '$2y$10$rUS0BLIY2t9Zjs8fsjaCqOJrPbTLSZN33lyNNc/6Lkjo7s1RFdioG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(350, 'khoa Văn349', 'khoavan349@gmailcom', NULL, '$2y$10$vK/cqIiSCKp9mn75sevb5eBSK4AZsLpxq85x9pv6fOF80WXN1ETy.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(351, 'khoa Văn350', 'khoavan350@gmailcom', NULL, '$2y$10$b2YPHkuT3nyof5hxIE5SQOGwRgVytDushI//OgH5Bfqiway8ASGuy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(352, 'khoa Văn351', 'khoavan351@gmailcom', NULL, '$2y$10$EezolskXkKf81CxbnUQzNuiP2EP.inWC6efjo1jzlptbWdHMX50VC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(353, 'khoa Văn352', 'khoavan352@gmailcom', NULL, '$2y$10$i4Mbf.m0e/FOgjHazzBOXOQBv15IMf67gN1udgzxFiZAjo8MTq1SG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(354, 'khoa Văn353', 'khoavan353@gmailcom', NULL, '$2y$10$LxQ./DZZlo/rM4U33mrHM.TuWM9fHfYYG6hJgDArhmjkcIaAMMODa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(355, 'khoa Văn354', 'khoavan354@gmailcom', NULL, '$2y$10$IvO76o0DYNRcufKRfZ0G5OkNEXf2D4TPWK7A5cD1TG6fzHEifKIh2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(356, 'khoa Văn355', 'khoavan355@gmailcom', NULL, '$2y$10$7GYcLtynx3bZdjof7PrFu.CHm0XNhsybd03UC2.vfy4gHfc3Iuesa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(357, 'khoa Văn356', 'khoavan356@gmailcom', NULL, '$2y$10$SR4ZAY/4Z.3s7W7pyO63GeoXi8nj08tL8Qq.dbGktUDfp7EvmhcRm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(358, 'khoa Văn357', 'khoavan357@gmailcom', NULL, '$2y$10$UlC6tNC4OEpboabK8p40aOF3eUYBGvdpGYas10MhdwvHpW2FcJ76G', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(359, 'khoa Văn358', 'khoavan358@gmailcom', NULL, '$2y$10$2bZawOcphGXPBonVsfJFW.G3IcmH8AOmKPrXXlZQEhYZlFAdYaDLq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(360, 'khoa Văn359', 'khoavan359@gmailcom', NULL, '$2y$10$aEiujz9nemQ5HPEuqrW1LuXbmJW27LfAuTbusfbQb1TAmzB.wzEfq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(361, 'khoa Văn360', 'khoavan360@gmailcom', NULL, '$2y$10$5JUZsGsz1X6IJF1fbnd4TOoPuoqnpWHsZ4TLo7EvYOKZ75VkT8ive', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(362, 'khoa Văn361', 'khoavan361@gmailcom', NULL, '$2y$10$PmqYXcPcBDHnKuGXdAvrhOvxk2AqMr0o72Alc.ZF4XOHb1uaeLdAi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(363, 'khoa Văn362', 'khoavan362@gmailcom', NULL, '$2y$10$mmzDqK6HxgYP0GNBFnIGjOv4cV0FX3MQAVQFawQC6I9uvcA7scwAO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(364, 'khoa Văn363', 'khoavan363@gmailcom', NULL, '$2y$10$yQN32.QRHyUlVWPwpLn7UuAsoyqgIoIDDeNdF9HhkLf9u2BbooKrW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(365, 'khoa Văn364', 'khoavan364@gmailcom', NULL, '$2y$10$qL4J8Z/wjHPs80ghwvOgYuoAFdNhvDYBCwlw7eRdgak6HPjPXLZvm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(366, 'khoa Văn365', 'khoavan365@gmailcom', NULL, '$2y$10$AsHm27MtjOUSu2Ruh6Bk5OeTgEwk3jO8.JvNwqg/F7t6Kx/2zzWPy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(367, 'khoa Văn366', 'khoavan366@gmailcom', NULL, '$2y$10$UK78WjKMapEV1Yy3HTDGoeyCA/HzeK/ZtWizIqjO4SHZVFSV4Jkw6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(368, 'khoa Văn367', 'khoavan367@gmailcom', NULL, '$2y$10$Wruca8IabIWQXyHz7TtwAOgSn5Nmjr4tGIDZjJozFhVJr1rDLzdGu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(369, 'khoa Văn368', 'khoavan368@gmailcom', NULL, '$2y$10$x9ogPT12Ol89EuY/sx8JeOq4C9U7eVd2yJA0PGJcbhmyYF5sm/uPq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(370, 'khoa Văn369', 'khoavan369@gmailcom', NULL, '$2y$10$ayeEjAm62jNLSmKtaghQ5e9rFAePm4yvf88naVW6sj.J5x.X2OIhS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(371, 'khoa Văn370', 'khoavan370@gmailcom', NULL, '$2y$10$B7yY15nGOohQSlaOXkliouUonWNLAjHymJpHwdzECfwbwWwAL21KG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(372, 'khoa Văn371', 'khoavan371@gmailcom', NULL, '$2y$10$wnLhMYQeme2DiF5rCcFpoe/B9.dvvUQjrfUr/NR4qEZhvlrG17cQW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(373, 'khoa Văn372', 'khoavan372@gmailcom', NULL, '$2y$10$2wkgBN06jtMk.7.gMns47eIXUyiuSvETpEppJgtzSnKBiD01oowY6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(374, 'khoa Văn373', 'khoavan373@gmailcom', NULL, '$2y$10$HbK/ARU6gKZIcXgsyT4Ey.3WqsbbAZPDqPyQnZVhhlr3vrX4ZXiW6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(375, 'khoa Văn374', 'khoavan374@gmailcom', NULL, '$2y$10$OYXESTVpviq8CaAT3L5NLuH5Z9EhmWIPk5Ph7FG9Waptoj5Ye4F86', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(376, 'khoa Văn375', 'khoavan375@gmailcom', NULL, '$2y$10$F.g/CuICHiUfmGXtoxcgzO1ETgq/0KeH/GpgPI5YrjSdmBOGxthQe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(377, 'khoa Văn376', 'khoavan376@gmailcom', NULL, '$2y$10$aHz6YckKkF0HXU5/6rJ1YOza0.mzPxW6IFZabU.RhkMsrHzjsE4/y', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(378, 'khoa Văn377', 'khoavan377@gmailcom', NULL, '$2y$10$JPhSwjTTlh2jnedNfA.ZnONgMm6sjBLeUKvF5Xww0zKxKHArJFcn.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(379, 'khoa Văn378', 'khoavan378@gmailcom', NULL, '$2y$10$9thcftzpkj0NFKzogyCLlu.oqL5KnyyiN0gP1udS4znkC7FXmwy1m', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(380, 'khoa Văn379', 'khoavan379@gmailcom', NULL, '$2y$10$LYI.Suq6jXsBi5gbUmRYbuVfNGJV6yYc7aWAe8QALK56WHRgVwR1a', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(381, 'khoa Văn380', 'khoavan380@gmailcom', NULL, '$2y$10$/IiWGm50NqVPqZJfNadqVuRYvK3KpMV6aNotaALwt8cvzGrjQR.R2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(382, 'khoa Văn381', 'khoavan381@gmailcom', NULL, '$2y$10$V7n5Jt2N8ZDvUSMkyX5eGOOwIxhcqCUMpqzPicU4sIXaXNvr5xYkm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(383, 'khoa Văn382', 'khoavan382@gmailcom', NULL, '$2y$10$2vys2.YSj/bBXmTEZvUqIuQ4384z0wEvm3VPqzhhcoAlqwhznNVma', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(384, 'khoa Văn383', 'khoavan383@gmailcom', NULL, '$2y$10$tEVEq1Xtmil.q5Q/CosbiuID8aphKM/fLiO2zbq66ZaYoToYeuuQi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(385, 'khoa Văn384', 'khoavan384@gmailcom', NULL, '$2y$10$vE77uomZTPq7aDvX/tpU8.ADhDPAytCDbpaFDhNeT1e8PHDsK/O4i', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(386, 'khoa Văn385', 'khoavan385@gmailcom', NULL, '$2y$10$YGruMjY2.szt9.U/Hp5OL.JbhspPEk9UBAQFcymAZzuuHqSMGssTK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(387, 'khoa Văn386', 'khoavan386@gmailcom', NULL, '$2y$10$Jgvh.BUWd8774c3Qbup9he/Urb2R9aCEwAQ7e9amOX71g3Xa2INK2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(388, 'khoa Văn387', 'khoavan387@gmailcom', NULL, '$2y$10$.U.fmUYBJmbbVWfHHGuGhOVa.EdpQuS/YlEnsyKF11gm5f74FCau.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(389, 'khoa Văn388', 'khoavan388@gmailcom', NULL, '$2y$10$qZqBRDuEQT.uOCAflT.qyO7sdIOVmgz1TOXeImtqtvw.jh1f8EEXq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(390, 'khoa Văn389', 'khoavan389@gmailcom', NULL, '$2y$10$vkm7aCE7T5P1dMLXSTKctOuHijkL0l945QsS/oYBzL9Uk6BOUgl5G', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(391, 'khoa Văn390', 'khoavan390@gmailcom', NULL, '$2y$10$/I8dN1suvTlu5BRZhR2ywuGI.sqUut06ZovujLhRZtkB3QiTzVqsK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(392, 'khoa Văn391', 'khoavan391@gmailcom', NULL, '$2y$10$oLO5m1RF2kpQCA2bx2d1SeD2snpX2WjX6WK.tL.qaeafQJEfGKwIq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(393, 'khoa Văn392', 'khoavan392@gmailcom', NULL, '$2y$10$AThCgK2wtX4.8xn6FdNqmeSR59QE4ZSnvucE7wNlfM2JW0n5ouAIa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(394, 'khoa Văn393', 'khoavan393@gmailcom', NULL, '$2y$10$ucyAjijhsMX9YmD6PGM8COPXTdJth7mJTcQXEx2ilx4OXgXu6tGVq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(395, 'khoa Văn394', 'khoavan394@gmailcom', NULL, '$2y$10$h8ba7VuKMzrouq6SKo1B3.SnR7FnuFio88zJJUFpMNTgoQXQWkd1K', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(396, 'khoa Văn395', 'khoavan395@gmailcom', NULL, '$2y$10$Xjjc4lIYHDT6BgnJdsyxvefDpVpA4UtURj.okQhMgKgvSRtMhk3jO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(397, 'khoa Văn396', 'khoavan396@gmailcom', NULL, '$2y$10$Xe6yDi0LiRr.MfMkpoivt.TqYTAKdvU6nA0N9ynbBWorNirWE89tG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(398, 'khoa Văn397', 'khoavan397@gmailcom', NULL, '$2y$10$JOrSwzEygtUIPBh63lKeo.gMhlKBTJ/siPhOQzYqAR.wC3MMz2Zq.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(399, 'khoa Văn398', 'khoavan398@gmailcom', NULL, '$2y$10$v0DtO9q6qUV0.x2hPuTgjO4DR7jATKa03pFXBH9oKo.Dr85EYFpVO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(400, 'khoa Văn399', 'khoavan399@gmailcom', NULL, '$2y$10$3wiywLr2mWbZQyggQ9rlB.PY189xXdEzBnGFsHCbV9GY4YwbqLGdW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(401, 'khoa Văn400', 'khoavan400@gmailcom', NULL, '$2y$10$u5/pGNlgMpDKbp145TPR7.X9l9.abz5V6PE.mTAKsNGzwN27TN/gS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(402, 'khoa Văn401', 'khoavan401@gmailcom', NULL, '$2y$10$i6OMC3QV549oZbIjRSNaP.rwTUr6oPFNc3w3N4wbc9n1PpkJJV.Ra', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(403, 'khoa Văn402', 'khoavan402@gmailcom', NULL, '$2y$10$3eCrk2OlhFobAeA2hMBqN.BH.92YT2QXXNkIRlOe7NCckwIF715sy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(404, 'khoa Văn403', 'khoavan403@gmailcom', NULL, '$2y$10$TMagetFV.SN6aVpiuW79L.lm.TLwdqX3ZeWHTHodEpJvNnQux5hAS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(405, 'khoa Văn404', 'khoavan404@gmailcom', NULL, '$2y$10$5/tyaYQCZ59TVKGsRJPaKuWjegYfJ.99gXqEjmUTu3N13AjbRObC.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(406, 'khoa Văn405', 'khoavan405@gmailcom', NULL, '$2y$10$VEW19h8L.vRyZo1B8ogKKerUcQ.4SG9.IU8NL7ryXAW1tWOToE8GO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(407, 'khoa Văn406', 'khoavan406@gmailcom', NULL, '$2y$10$adh8c/WJCYL3Ta8x4OPQ/Oc8EwkGhuyeLhGHJgbVNSesX6R8Pyuym', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(408, 'khoa Văn407', 'khoavan407@gmailcom', NULL, '$2y$10$5O4f6uPE/7agT9dmbE7x3OSGHmXu3a/346SoPp.oFT/PEZ7qzEAB6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(409, 'khoa Văn408', 'khoavan408@gmailcom', NULL, '$2y$10$nWJeZ3MGb/kVmJVfFZeAu.6Yvp168JtYtbCfv.veRHJpo4WR.euii', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(410, 'khoa Văn409', 'khoavan409@gmailcom', NULL, '$2y$10$7pwFRyfNUPhu/RrHlmieZO6qLQviMJaSX/MEUGUI7Pt.e2Ds.O96K', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(411, 'khoa Văn410', 'khoavan410@gmailcom', NULL, '$2y$10$ypCKOlzyNhyi/szBJcFV9.gwyPzET66Qr0WJB2Y9P1q.8TWmFtWz2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(412, 'khoa Văn411', 'khoavan411@gmailcom', NULL, '$2y$10$b6fwVdUfZkcVRG7pSxOWC.bwlQqZVZBrZ933h.6tSlju9VzyPzasu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(413, 'khoa Văn412', 'khoavan412@gmailcom', NULL, '$2y$10$0eEQYIHsAAatRBSZVhW5s.xY8cZTYgy8S30BZKvV/06wsy.mGqYaO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(414, 'khoa Văn413', 'khoavan413@gmailcom', NULL, '$2y$10$lhxy/PP8.njJeF7L.jSWzOZbRg7CZKzCju2ehuN2VLaSXyDK4.aky', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(415, 'khoa Văn414', 'khoavan414@gmailcom', NULL, '$2y$10$kqdWPxvmFXS/sggzMgsaOOwPCpTmOqNiqC.0mMDcvXl0B/iAZpyzS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(416, 'khoa Văn415', 'khoavan415@gmailcom', NULL, '$2y$10$BM7vpwD4C9StXA8x8y3Ug.5J0/x5aZxpO1KbB4M3LZT.eRIYHaTGC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(417, 'khoa Văn416', 'khoavan416@gmailcom', NULL, '$2y$10$5LiR5JI.CEONDuCBpWD0EuvyqVxXUPrXwA5fZnwNURhtKSqwEiVe2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(418, 'khoa Văn417', 'khoavan417@gmailcom', NULL, '$2y$10$K.qP3ZQTMko9TgTp5GzebuQNbunmLKmUsbiNFsAIhZ15GCzhOkaOa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(419, 'khoa Văn418', 'khoavan418@gmailcom', NULL, '$2y$10$dC3tc0BbWenTg3KYL3kUkefmE.85bVsN98XjZQ87zWdYODDmaLRLi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(420, 'khoa Văn419', 'khoavan419@gmailcom', NULL, '$2y$10$agutXKtEyJa14/1LCuWqcuyEYVpfJdEnZEQtss/qLi0wsM4tM2jey', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(421, 'khoa Văn420', 'khoavan420@gmailcom', NULL, '$2y$10$ntsfStpdgvKR5gaDYqFJ0.LwvSQdWj.SBMIpmPyfd9ScyLUNaC2li', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(422, 'khoa Văn421', 'khoavan421@gmailcom', NULL, '$2y$10$5VLUf05lTwZBDkkTNaDKHuDtUUqviL73wQCv0it.GTgXJ.xFvCBpO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(423, 'khoa Văn422', 'khoavan422@gmailcom', NULL, '$2y$10$6vVIOEqYudUN5diU0ucZgO5z.ucf448IfPe7V9mmQYhwTOZm7sP7S', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(424, 'khoa Văn423', 'khoavan423@gmailcom', NULL, '$2y$10$d26xLePl6dUFkzL98RztL.W1xH3whj8hB8b/l/Vchd65eFLJhQz12', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(425, 'khoa Văn424', 'khoavan424@gmailcom', NULL, '$2y$10$ohOM52xRfKAVBb7YRxkN/.Bi/r0wEwLZw39ADSdzzOHvgBU4YvlxO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(426, 'khoa Văn425', 'khoavan425@gmailcom', NULL, '$2y$10$Q2rBs2dE2xTC1DX9T8DINOMIpVuZru6JkiqrD9s.Ak.i9NrsyYSQK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(427, 'khoa Văn426', 'khoavan426@gmailcom', NULL, '$2y$10$lele0eM.ckHhabSDIAnTsuivlmZQrkoOhMflGaiTDrmx/Chv6K5Dy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(428, 'khoa Văn427', 'khoavan427@gmailcom', NULL, '$2y$10$sDXD.QPFGIMawYUcnJIBXOC5NV/mhfxIpAkMuJwQcYceO7j2oxPtS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(429, 'khoa Văn428', 'khoavan428@gmailcom', NULL, '$2y$10$877.rBkUxfKzfzYosMu9ROBQryfCg0NOZkS1sk0iigqAnxLtkNhdi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(430, 'khoa Văn429', 'khoavan429@gmailcom', NULL, '$2y$10$rwvJH/Z67xOMp3y5HVNN7u8PLLTdrmY4H3g9S5DVPXdqL0UQ2Wih.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(431, 'khoa Văn430', 'khoavan430@gmailcom', NULL, '$2y$10$i.RpYHXlPNsjhKzoNHs9Lex5zCcgiOiPAwIRS7a28Gzi7QBn/3Uae', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(432, 'khoa Văn431', 'khoavan431@gmailcom', NULL, '$2y$10$VdA8pnaDsKcZ8xlMbVZjL.bP8se5T4athCheij3IbBKvAhv4/pMNW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(433, 'khoa Văn432', 'khoavan432@gmailcom', NULL, '$2y$10$qUB7ZYo2pf076.phGhGS8.8.D2VtZKwE.cMmmp3TlXFO/77NKZcgm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(434, 'khoa Văn433', 'khoavan433@gmailcom', NULL, '$2y$10$D2akAHUPQ45DEMvI43AZFeZdw2TqLVkiABubiodkVZJyn/M6Ee1O6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(435, 'khoa Văn434', 'khoavan434@gmailcom', NULL, '$2y$10$YbbeWNBcLIUNLDNXFtJRceejCGtM/M1h/P5yFSHDNKfn5uNw9z4ku', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(436, 'khoa Văn435', 'khoavan435@gmailcom', NULL, '$2y$10$eU/NlHPhKYT4w4mKdkDVw.M5aw5.qDdl6CSZd0GZjJzt.GhBbjsoK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(437, 'khoa Văn436', 'khoavan436@gmailcom', NULL, '$2y$10$otDXyHrtW0hC7bwC.X4SXOIRUR4hobzr0QeYqWS4dFqfMcapUYPLO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(438, 'khoa Văn437', 'khoavan437@gmailcom', NULL, '$2y$10$AsDh/wskCr.Z.K4Dja66UeHJC02shdGopN2/QIHhUp/ga2NRuhdmW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(439, 'khoa Văn438', 'khoavan438@gmailcom', NULL, '$2y$10$Erb02y6sBGYb7LKPi/RUFeQK.eqsjj8nPSdIk43IZJJqKFXcEmtUa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(440, 'khoa Văn439', 'khoavan439@gmailcom', NULL, '$2y$10$VBfAd.C5mVRkXPAYSWsY2O2mhILVNPA5fQ1EeuwxXtdMGcxAAMmUO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(441, 'khoa Văn440', 'khoavan440@gmailcom', NULL, '$2y$10$s2JihoYYVf8rBtbJXzuNHuuGt6OV1P.ZDcZnaIWe4NIN.MoeWJmU2', NULL, '5.jpg', 1, NULL, NULL, NULL, '');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `level`, `description`, `created_at`, `updated_at`, `token`) VALUES
(442, 'khoa Văn441', 'khoavan441@gmailcom', NULL, '$2y$10$A/.HkZmJlAU12XGKXRAcBO.gQIVgoxmvcOii035vUddVxroum4pHG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(443, 'khoa Văn442', 'khoavan442@gmailcom', NULL, '$2y$10$.bcC.9TlcZxPdXjw5mcEZOhuLvh5HNIME/g6pjgQwEALNYtSwzZ/W', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(444, 'khoa Văn443', 'khoavan443@gmailcom', NULL, '$2y$10$E0MTYMo/i205yDj8Y69VYOV0pBrWPuZqfAx8S3L./ZGMr1wGGZEJu', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(445, 'khoa Văn444', 'khoavan444@gmailcom', NULL, '$2y$10$DJrP71HVkF4j/bxguxMDNule8VMPLpHtOTNdz01nWaGzfgk3SvCSK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(446, 'khoa Văn445', 'khoavan445@gmailcom', NULL, '$2y$10$C/Yt1fBCqVyYVRhTUGS93OAch7VCCPqn1.B/ywRBjk/iuiu40LSHa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(447, 'khoa Văn446', 'khoavan446@gmailcom', NULL, '$2y$10$JkAO8zVuMvQmBayeyohR7.QEz.PbqbUdqM6FEaHwbJ1EC8ycA7Vhm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(448, 'khoa Văn447', 'khoavan447@gmailcom', NULL, '$2y$10$.Wlo05rPHRmRKJn1D4PVduX5.SWm9tqdM5q1umCh9ctS1wi4CQxtW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(449, 'khoa Văn448', 'khoavan448@gmailcom', NULL, '$2y$10$OAJO8xyy2DzDMZ.z4Ucw3.hqj7yvpDtU5/zFULt7dWffUm.lQsx9a', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(450, 'khoa Văn449', 'khoavan449@gmailcom', NULL, '$2y$10$ve0PXTaQnnSBv3/NskF1P.XoXlftsAGK1tE1jXteUx0fQtKtMbjli', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(451, 'khoa Văn450', 'khoavan450@gmailcom', NULL, '$2y$10$BSHHftMbj8nCq75X9xrBA.tr8La7tt1Iox/awYR9lZlim.et3E1Uq', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(452, 'khoa Văn451', 'khoavan451@gmailcom', NULL, '$2y$10$dNUenp/Rd3qNHgpBagnx6uI5sayUw6buasoLwytHsybG/xJb4z7wO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(453, 'khoa Văn452', 'khoavan452@gmailcom', NULL, '$2y$10$ncgK6WM7fZLvA3HdRnDRROoFv1TThM7BUqrAyGk4mU5udOaQAsUU2', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(454, 'khoa Văn453', 'khoavan453@gmailcom', NULL, '$2y$10$90H9kcHrVg.k2od98ZlSD.zx0a2v7UFZ1PCw1so30DijSamMM6qUi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(455, 'khoa Văn454', 'khoavan454@gmailcom', NULL, '$2y$10$ESaUYDK0MiHG8I7a0c2v9eX1WsliVtArLn1oL8CGNgxRL800epx1u', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(456, 'khoa Văn455', 'khoavan455@gmailcom', NULL, '$2y$10$pIpfMndNmG1Vt4daUsnl5ujlHCTT2aihoXHEE7r5Sm0Qp6RGBQhIS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(457, 'khoa Văn456', 'khoavan456@gmailcom', NULL, '$2y$10$95ehlNBo44F.5pDRSi6uTeqO7CFFXcqVefAI1RVLG.VfOZxpAuXeW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(458, 'khoa Văn457', 'khoavan457@gmailcom', NULL, '$2y$10$/W0jmQx8F1oBEBZS4gJjF.Z8Mhzk01JPDT/io6FAQ1qsjypL2oYw.', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(459, 'khoa Văn458', 'khoavan458@gmailcom', NULL, '$2y$10$A8rrF0XJgTOyPJzf.aTJH.bNGPy80w8ngGc04WDloWfMzV4o2RPhe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(460, 'khoa Văn459', 'khoavan459@gmailcom', NULL, '$2y$10$F20lYTvGEfUun/2aI7LDb.Bux9jzsthG6YeWSG6kWl8n2hHHwP0ve', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(461, 'khoa Văn460', 'khoavan460@gmailcom', NULL, '$2y$10$5QUtef8yb3.DctZJRpMDkOy0yLsvGAJwI4tUg167rCRNGEXay3DUC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(462, 'khoa Văn461', 'khoavan461@gmailcom', NULL, '$2y$10$H7YJolnL/rzlpSeN20DPmO8DdFYfHDny.ZRG5NcOBiDop8p9upscO', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(463, 'khoa Văn462', 'khoavan462@gmailcom', NULL, '$2y$10$LTnnD5LxK3YEBqlwP5u6muY2FyoI3cDJCZyphck0yK/PRizietOfa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(464, 'khoa Văn463', 'khoavan463@gmailcom', NULL, '$2y$10$Y.kdsXg6QCw5zPtGHWra0OCoG7y4Tgzj8U1m9vOerRJ3lsOklyvGS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(465, 'khoa Văn464', 'khoavan464@gmailcom', NULL, '$2y$10$qxte7v9lldfOTys0pKr9du4h2sXE50FhKeqPnYY9g9v4knwigj2gG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(466, 'khoa Văn465', 'khoavan465@gmailcom', NULL, '$2y$10$FW8gxGEvrPtz93kevthJyOUJHXyTfeWZp4dNRyeQ6XDjtQ7qgnjZm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(467, 'khoa Văn466', 'khoavan466@gmailcom', NULL, '$2y$10$vS9S3JAYhvLBhfKzCH3UuO1ytU/rQp3jSmlMcT.8vs2mv5ljkEGTK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(468, 'khoa Văn467', 'khoavan467@gmailcom', NULL, '$2y$10$a4MvYTcMqk0k1A1N7e7OuuEob0kekcEYFwxSzQZOLZsO9l3PGMQGC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(469, 'khoa Văn468', 'khoavan468@gmailcom', NULL, '$2y$10$m30tSUgRfNQSx7dXzBgmre0DinT4JfCswK37SiU/uem/fssOegGfW', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(470, 'khoa Văn469', 'khoavan469@gmailcom', NULL, '$2y$10$5MadFpDgmw7LjYfwi5YSieS5QPVmWfVdqPyAj3t0qtRy0YkmFlwYC', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(471, 'khoa Văn470', 'khoavan470@gmailcom', NULL, '$2y$10$rSsAncEkQjbTsA02KcZYtuRLtE9dS8kiMIdudgSe9SWglDvDNhgCG', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(472, 'khoa Văn471', 'khoavan471@gmailcom', NULL, '$2y$10$2mxZex0sMuhq6BHH2gjylualFiFbmf08/O.dHcg6GTBMGuYpzhf.S', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(473, 'khoa Văn472', 'khoavan472@gmailcom', NULL, '$2y$10$lrk7z0g7pQLhGItdHcrc6OjFDIi19U9sfM4wWP2ikQHL9UFpT1BTm', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(474, 'khoa Văn473', 'khoavan473@gmailcom', NULL, '$2y$10$Hv.htpH4fIp8GF04T2lCneWPzfVMxYVqiR4xEyrZnD2EoSuwlGVsS', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(475, 'khoa Văn474', 'khoavan474@gmailcom', NULL, '$2y$10$zk9pQswmmbU/.w5ukySdUeQpv/apirKoqpbUz24JwgAL6bBfTaVmy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(476, 'khoa Văn475', 'khoavan475@gmailcom', NULL, '$2y$10$j54rM014fHUnlvJGwJRMRu81oHUDLX/bUdOEbv2GNqmTYSFysEZTy', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(477, 'khoa Văn476', 'khoavan476@gmailcom', NULL, '$2y$10$FyYdjqsWUvALFrPQdCFRoer06rig3fRoVlDb6BhBNPQTjw1beLt.m', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(478, 'khoa Văn477', 'khoavan477@gmailcom', NULL, '$2y$10$XwE3eJZ2M4WChxakLxobJ.2wNdJhI46fzlS1bw28DJ2YygiM72SRa', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(479, 'khoa Văn478', 'khoavan478@gmailcom', NULL, '$2y$10$dVsf2VIoep11sadQpAwoa.88lnVV/qmWELrnTAQ/hFeCAlAJ.3Cqe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(480, 'khoa Văn479', 'khoavan479@gmailcom', NULL, '$2y$10$JCSV2a2nvYVpzKX25YktSOr2yCiHzwOfkuRUJ8xSbAScCvWBeZXXe', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(481, 'khoa Văn480', 'khoavan480@gmailcom', NULL, '$2y$10$iVKUzUcArOsIaHAaUh9Sz.H5xhWonMjs5zUEHLMZiuxDPFxF2yDdi', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(482, 'khoa Văn481', 'khoavan481@gmailcom', NULL, '$2y$10$QOMhXR2PqPP4C.jmKr3iMe7EsQpqC80RYJGt57tbs2A1tZvHAa2NK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(483, 'khoa Văn482', 'khoavan482@gmailcom', NULL, '$2y$10$SQoPcuopqSiciLQU2sqfgOIvd/.h9CHMyJIBzXFntRne/wCToS4PK', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(484, 'khoa Văn483', 'khoavan483@gmailcom', NULL, '$2y$10$DHm4PNyLdJjwbz5XAtI7wufH/NCAhvyGRB1Np658BGI7UucABpK7C', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(485, 'khoa Văn484', 'khoavan484@gmailcom', NULL, '$2y$10$qYmvm1dJaksdsIt0Ed1EYesq3AMAR6/cqKaPGZqDnVpk8bA8Lr.C6', NULL, '5.jpg', 1, NULL, NULL, NULL, ''),
(504, 'Lụm', 'khoavan1305@gmail.com.vn11', NULL, '$2y$10$PzbxhFwXKK3v4TDT9Kn.4uYqTz1YVp.CnIQUme7v2sBFIQYj41zyu', NULL, '6.jpg', 1, NULL, '2023-07-22 03:53:12', '2023-07-22 03:53:12', ''),
(505, 'mrlong', 'mrlong@gmail.com', NULL, '$2y$10$xuvm9RAhroMf/PUf217Z0ukoru1TwLqvHfvVczJvuq9iIu.qdScQS', NULL, '7.jpg', 1, NULL, '2023-07-22 04:57:10', '2023-07-22 04:57:10', ''),
(506, 'Lụm123', 'khoavan111305@gmail.com.vn', NULL, '$2y$10$EgjnB8Z7q1AlJjbId7eyYutl1cmpX.gEJ7fh1qwDwGqgJ00v42oCa', NULL, NULL, 1, NULL, '2023-07-23 22:57:55', '2023-07-23 23:03:37', ''),
(508, 'Lụm', 'vanvdkps20220@fpt.edu.vn', NULL, '$2y$10$YuB.xr4lp7UgG2NzXzv4TuhPvGM7XEW/6EecdhgRqu4QKHROVLx92', NULL, NULL, 1, NULL, '2023-08-01 08:27:24', '2023-08-07 22:13:21', 'FTCAQINTYJSUETZKNCMY'),
(509, 'Văn Võ', 'khoavan1111@mail.com', NULL, '$2y$10$yGVblT6Zah/2/pa4BL03L.jiLIxaLp9hAvcJbeNim4qkV7gv4CEY2', NULL, NULL, 1, NULL, '2023-08-10 00:00:44', '2023-08-10 00:00:44', NULL),
(510, 'khoavan', 'khoavan11111@gmail.com', NULL, '$2y$10$g/EVyLQQgaf9W7f0krrRm.7zZZhFipthgCYHVMRB7Lwrtsw1QKwGW', NULL, NULL, 1, NULL, '2023-08-10 00:01:14', '2023-08-10 00:01:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1691650912;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
