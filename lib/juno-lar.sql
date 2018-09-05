-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 05, 2018 lúc 05:31 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `juno-lar`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`user_id`, `user_name`, `user_email`, `password`, `user_avatar`, `user_phone`, `user_role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'vietpro@gmail.com', '$2y$10$LOnyc7RsSAUL9zElC3W2c.8hNIcgLtxld/kvHewatgRyvPwVWeuTG', '', '01658015035', 1, '35hTc5yCYLBelvQvD6Y4KYg9rXdW1FSOCW9AcX9yJl0ms35GKBNAXNt14tFj', '2018-08-13 02:05:45', '2018-07-24 01:57:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `att_id` int(10) UNSIGNED NOT NULL,
  `att_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`att_id`, `att_name`, `att_slug`, `created_at`, `updated_at`) VALUES
(1, 'Màu sắc', 'mau-sac', '2018-07-23 00:00:43', '2018-07-23 00:00:43'),
(2, 'Kích thước', 'kich-thuoc', '2018-07-23 00:01:05', '2018-07-23 00:01:05'),
(3, 'Chất liệu', 'chat-lieu', '2018-09-05 14:21:47', '2018-09-05 14:21:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_values`
--

CREATE TABLE `attribute_values` (
  `att_value_id` int(10) UNSIGNED NOT NULL,
  `att_id` int(10) UNSIGNED NOT NULL,
  `att_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_values`
--

INSERT INTO `attribute_values` (`att_value_id`, `att_id`, `att_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Xanh', '2018-09-05 14:38:34', '2018-09-05 14:38:34'),
(2, 1, 'Hồng', '2018-09-05 14:38:34', '2018-09-05 14:38:34'),
(3, 1, 'Xám', '2018-09-05 14:38:34', '2018-09-05 14:38:34'),
(4, 1, 'Xanh xám', '2018-09-05 14:38:34', '2018-09-05 14:38:34'),
(5, 2, '35', '2018-07-23 00:01:05', '2018-07-23 00:01:05'),
(6, 2, '36', '2018-07-23 00:01:05', '2018-07-23 00:01:05'),
(7, 2, '37', '2018-07-23 00:01:05', '2018-07-23 00:01:05'),
(8, 2, '38', '2018-07-23 00:01:05', '2018-07-23 00:01:05'),
(9, 2, '39', '2018-07-23 00:01:05', '2018-07-23 00:01:05'),
(20, 2, '40', '2018-07-26 18:26:20', '2018-07-26 18:26:20'),
(21, 1, 'Đen', '2018-09-05 14:38:34', '2018-09-05 14:38:34'),
(22, 1, 'Đỏ đô', '2018-09-05 14:38:34', '2018-09-05 14:38:34'),
(23, 1, 'Nâu', '2018-09-05 14:38:34', '2018-09-05 14:38:34'),
(24, 3, 'Da tổng hợp', '2018-09-05 14:21:47', '2018-09-05 14:21:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

CREATE TABLE `categorys` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_thumbnail` int(255) DEFAULT NULL,
  `cate_slug` varchar(265) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_parent` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`cate_id`, `cate_name`, `cate_thumbnail`, `cate_slug`, `cate_parent`, `created_at`, `updated_at`) VALUES
(10, 'Giày cao gót', 27, 'giay-cao-got', 0, '2018-08-05 20:50:19', '2018-08-05 20:50:19'),
(11, 'Giày cao gót 5cm', NULL, 'giay-cao-got-5cm', 10, '2018-08-05 20:50:30', '2018-08-05 20:50:30'),
(12, 'Giày xăng đan', 28, 'giay-xang-dan', 0, '2018-08-05 20:50:54', '2018-08-05 20:50:54'),
(14, 'Giày búp bê', 60, 'giay-bup-be', 0, '2018-08-06 08:36:57', '2018-08-06 01:36:57'),
(15, 'Túi xách', 59, 'tui-xach', 0, '2018-08-06 01:41:12', '2018-08-06 01:41:12'),
(16, 'Cao 5cm', NULL, 'cao-5cm', 12, '2018-08-10 21:04:53', '2018-08-10 21:04:53'),
(17, 'Giày cao gót 7cm', NULL, 'giay-cao-got-7cm', 10, '2018-08-10 21:11:53', '2018-08-10 21:11:53'),
(18, 'Xăng đan bệt', NULL, 'xang-dan-bet', 12, '2018-09-05 10:21:54', '2018-09-05 10:21:54'),
(19, 'Túi cỡ lớn', NULL, 'tui-co-lon', 15, '2018-09-05 13:30:06', '2018-09-05 13:30:06'),
(20, 'Giày mũi nhọn', NULL, 'giay-mui-nhon', 14, '2018-09-05 14:41:24', '2018-09-05 14:41:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `comment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_name`, `comment_content`, `comment_status`, `created_at`, `updated_at`) VALUES
(1, 'Vũ Thanh Tùng', 'Sản phẩm đẹp', 1, '2018-08-06 03:54:59', '2018-08-05 20:54:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(10) UNSIGNED NOT NULL,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_addr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `img_id` int(10) UNSIGNED NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`img_id`, `img_name`, `img_type`, `created_at`, `updated_at`) VALUES
(1, '51_4cf7d5a1f434421c90702ecb7572ae59.jpg', 'jpg', '2018-08-05 20:37:10', '2018-08-05 20:37:10'),
(2, 'cg05054-w.jpg', 'jpg', '2018-08-05 20:37:10', '2018-08-05 20:37:10'),
(3, 'cg05054-w-2.jpg', 'jpg', '2018-08-05 20:37:10', '2018-08-05 20:37:10'),
(4, 'den_dai_dien_con.jpg', 'jpg', '2018-08-05 20:37:10', '2018-08-05 20:37:10'),
(5, 'hong_dai_dien_con.jpg', 'jpg', '2018-08-05 20:37:10', '2018-08-05 20:37:10'),
(6, 'hong_slide_1.jpg', 'jpg', '2018-08-05 20:37:10', '2018-08-05 20:37:10'),
(7, 'hong_slide_2.jpg', 'jpg', '2018-08-05 20:37:10', '2018-08-05 20:37:10'),
(8, 'hong_slide_3.jpg', 'jpg', '2018-08-05 20:37:10', '2018-08-05 20:37:10'),
(9, 'hong_slide_4.jpg', 'jpg', '2018-08-05 20:37:11', '2018-08-05 20:37:11'),
(10, 'hong_slide_5.jpg', 'jpg', '2018-08-05 20:37:11', '2018-08-05 20:37:11'),
(11, 'hong_slide_6.jpg', 'jpg', '2018-08-05 20:37:11', '2018-08-05 20:37:11'),
(12, 'hong-dai-dien.jpg', 'jpg', '2018-08-05 20:37:11', '2018-08-05 20:37:11'),
(13, 'hong-galery-1.jpg', 'jpg', '2018-08-05 20:37:11', '2018-08-05 20:37:11'),
(14, 'hong-galery-2.jpg', 'jpg', '2018-08-05 20:37:11', '2018-08-05 20:37:11'),
(15, 'xam_dai_dien_con.jpg', 'jpg', '2018-08-05 20:37:11', '2018-08-05 20:37:11'),
(16, '_mg_6093_grande.jpg', 'jpg', '2018-08-05 20:37:29', '2018-08-05 20:37:29'),
(17, '_mg_6835_grande.jpg', 'jpg', '2018-08-05 20:37:29', '2018-08-05 20:37:29'),
(18, '_mg_6836_grande.jpg', 'jpg', '2018-08-05 20:37:30', '2018-08-05 20:37:30'),
(19, '_mg_6838_grande.jpg', 'jpg', '2018-08-05 20:37:30', '2018-08-05 20:37:30'),
(20, '_mg_6839_grande.jpg', 'jpg', '2018-08-05 20:37:30', '2018-08-05 20:37:30'),
(21, 'banner-top.png', 'png', '2018-08-05 20:37:30', '2018-08-05 20:37:30'),
(22, 'den_sd07022_1_d0127e911f9945a888286eddca9e9d20_grande.jpg', 'jpg', '2018-08-05 20:37:30', '2018-08-05 20:37:30'),
(23, 'do_cg05048_1_grande - Copy.jpg', 'jpg', '2018-08-05 20:37:30', '2018-08-05 20:37:30'),
(24, 'do_cg05048_1_grande.jpg', 'jpg', '2018-08-05 20:37:30', '2018-08-05 20:37:30'),
(26, 'do-do_sd07022_1_2efe8e7240fd4c5ca798fe9e2417578e_grande.jpg', 'jpg', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(27, 'ic2.png', 'png', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(28, 'ic3.png', 'png', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(29, 'ic8.png', 'png', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(30, 'ic9.png', 'png', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(31, 'ic10.png', 'png', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(32, 'juno__58_of_6__grande.jpg', 'jpg', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(33, 'juno__59_of_6__grande.jpg', 'jpg', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(34, 'juno__60_of_6__grande.jpg', 'jpg', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(35, 'logo.png', 'png', '2018-08-05 20:37:31', '2018-08-05 20:37:31'),
(36, 'maps.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(37, 'no.png', 'png', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(38, 'phone.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(39, 'sp1.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(40, 'sp1-1.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(41, 'sp2.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(42, 'sp2-1.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(43, 'sp3.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(44, 'sp3-1.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(45, 'sp4.jpg', 'jpg', '2018-08-05 20:37:32', '2018-08-05 20:37:32'),
(46, 'sp4-1.jpg', 'jpg', '2018-08-05 20:37:33', '2018-08-05 20:37:33'),
(47, 'sp5.jpg', 'jpg', '2018-08-05 20:37:33', '2018-08-05 20:37:33'),
(48, 'sp5-1.jpg', 'jpg', '2018-08-05 20:37:33', '2018-08-05 20:37:33'),
(49, 'sp10-1.jpg', 'jpg', '2018-08-05 20:37:33', '2018-08-05 20:37:33'),
(50, 'xam-dam_sd07022_1_grande.jpg', 'jpg', '2018-08-05 20:37:33', '2018-08-05 20:37:33'),
(51, 'den_slide_01.jpg', 'jpg', '2018-08-05 21:13:52', '2018-08-05 21:13:52'),
(52, 'sen_slide_02.jpg', 'jpg', '2018-08-05 21:13:55', '2018-08-05 21:13:55'),
(53, 'den-slide-02.jpg', 'jpg', '2018-08-05 21:14:37', '2018-08-05 21:14:37'),
(54, 'den_slide_04.jpg', 'jpg', '2018-08-05 21:15:01', '2018-08-05 21:15:01'),
(55, 'den_slide_05.jpg', 'jpg', '2018-08-05 21:15:08', '2018-08-05 21:15:08'),
(56, 'den_slide_06.jpg', 'jpg', '2018-08-05 21:15:13', '2018-08-05 21:15:13'),
(57, 'den_slide-5.jpg', 'jpg', '2018-08-05 21:16:54', '2018-08-05 21:16:54'),
(58, 'den_slide_06.jpg', 'jpg', '2018-08-05 21:16:57', '2018-08-05 21:16:57'),
(59, 'ic1.png', 'png', '2018-08-06 01:24:53', '2018-08-06 01:24:53'),
(60, 'ic4.png', 'png', '2018-08-06 01:24:53', '2018-08-06 01:24:53'),
(61, 'ic5.png', 'png', '2018-08-06 01:24:53', '2018-08-06 01:24:53'),
(62, 'ic6.png', 'png', '2018-08-06 01:24:53', '2018-08-06 01:24:53'),
(63, 'ic7.png', 'png', '2018-08-06 01:24:53', '2018-08-06 01:24:53'),
(64, 'ic8.png', 'png', '2018-08-06 01:24:53', '2018-08-06 01:24:53'),
(65, 'ic9.png', 'png', '2018-08-06 01:24:53', '2018-08-06 01:24:53'),
(66, 'tanky_tanquy.jpg', 'jpg', '2018-08-19 20:35:35', '2018-08-19 20:35:35'),
(67, 'anhchinh02.jpg', 'jpg', '2018-08-19 23:53:04', '2018-08-19 23:53:04'),
(68, 'anhchinh03.jpg', 'jpg', '2018-08-20 15:26:36', '2018-08-20 15:26:36'),
(69, '1200x710-fb-khaitruong-bacu-lbb_grande.jpg', 'jpg', '2018-08-20 15:48:26', '2018-08-20 15:48:26'),
(70, '1200x710-kt-le-hongphong_grande.jpg', 'jpg', '2018-08-20 15:55:29', '2018-08-20 15:55:29'),
(71, 'an-ninh-binhduong_grande.jpg', 'jpg', '2018-08-20 16:01:11', '2018-08-20 16:01:11'),
(72, 'xanh-xam_sd01057_1_1024x1024.jpg', 'jpg', '2018-09-05 10:31:01', '2018-09-05 10:31:01'),
(73, 'xanh-xam_sd01057_1.jpg', 'jpg', '2018-09-05 10:31:21', '2018-09-05 10:31:21'),
(74, 'xanh-xam_sd01057_3.jpg', 'jpg', '2018-09-05 10:31:21', '2018-09-05 10:31:21'),
(75, 'den_sd01057_3.jpg', 'jpg', '2018-09-05 10:53:54', '2018-09-05 10:53:54'),
(76, 'do-do_sd01057_3.jpg', 'jpg', '2018-09-05 10:53:54', '2018-09-05 10:53:54'),
(77, 'xanh-xam_sd01057_3.jpg', 'jpg', '2018-09-05 10:53:54', '2018-09-05 10:53:54'),
(78, 'xanh-xam_sd01057_2_1024x1024.jpg', 'jpg', '2018-09-05 10:58:18', '2018-09-05 10:58:18'),
(79, 'xanh-xam_sd01057_3_1024x1024.jpg', 'jpg', '2018-09-05 10:58:19', '2018-09-05 10:58:19'),
(80, 'xanh-xam_sd01057_4_1024x1024.jpg', 'jpg', '2018-09-05 10:58:19', '2018-09-05 10:58:19'),
(81, 'xanh-xam_sd01057_5_1024x1024.jpg', 'jpg', '2018-09-05 10:58:19', '2018-09-05 10:58:19'),
(82, 'xanh-xam_sd01057_6_1024x1024.jpg', 'jpg', '2018-09-05 10:58:19', '2018-09-05 10:58:19'),
(83, 'den_sd01057_1_1024x1024.jpg', 'jpg', '2018-09-05 11:05:58', '2018-09-05 11:05:58'),
(84, 'den_sd01057_2_1024x1024.jpg', 'jpg', '2018-09-05 11:05:59', '2018-09-05 11:05:59'),
(85, 'den_sd01057_3_1024x1024.jpg', 'jpg', '2018-09-05 11:05:59', '2018-09-05 11:05:59'),
(86, 'den_sd01057_4_1024x1024.jpg', 'jpg', '2018-09-05 11:05:59', '2018-09-05 11:05:59'),
(87, 'den_sd01057_5_1024x1024.jpg', 'jpg', '2018-09-05 11:05:59', '2018-09-05 11:05:59'),
(88, 'den_sd01057_6_1024x1024.jpg', 'jpg', '2018-09-05 11:05:59', '2018-09-05 11:05:59'),
(89, 'do-do_sd01057_1_1024x1024.jpg', 'jpg', '2018-09-05 13:09:20', '2018-09-05 13:09:20'),
(90, 'do-do_sd01057_2_1024x1024.jpg', 'jpg', '2018-09-05 13:09:20', '2018-09-05 13:09:20'),
(91, 'do-do_sd01057_3_1024x1024.jpg', 'jpg', '2018-09-05 13:09:21', '2018-09-05 13:09:21'),
(92, 'do-do_sd01057_4_1024x1024.jpg', 'jpg', '2018-09-05 13:09:21', '2018-09-05 13:09:21'),
(93, 'do-do_sd01057_5_1024x1024.jpg', 'jpg', '2018-09-05 13:09:21', '2018-09-05 13:09:21'),
(94, 'do-do_sd01057_6_1024x1024.jpg', 'jpg', '2018-09-05 13:09:21', '2018-09-05 13:09:21'),
(95, 'sd01057_1.jpg', 'jpg', '2018-09-05 13:11:26', '2018-09-05 13:11:26'),
(96, 'sd01057_2.jpg', 'jpg', '2018-09-05 13:11:26', '2018-09-05 13:11:26'),
(97, 'sd01057_3.jpg', 'jpg', '2018-09-05 13:11:26', '2018-09-05 13:11:26'),
(98, '1__11_.jpg', 'jpg', '2018-09-05 13:11:39', '2018-09-05 13:11:39'),
(99, '2__11_.jpg', 'jpg', '2018-09-05 13:11:39', '2018-09-05 13:11:39'),
(102, 'xanh_txl021_3.jpg', 'jpg', '2018-09-05 13:29:02', '2018-09-05 13:29:02'),
(103, 'xanh_txl021_1.jpg', 'jpg', '2018-09-05 13:29:09', '2018-09-05 13:29:09'),
(104, 'den_txl021_1.jpg', 'jpg', '2018-09-05 13:37:08', '2018-09-05 13:37:08'),
(105, 'do_txl021_1.jpg', 'jpg', '2018-09-05 13:37:08', '2018-09-05 13:37:08'),
(106, 'xanh_txl021_1_1024x1024.jpg', 'jpg', '2018-09-05 14:11:05', '2018-09-05 14:11:05'),
(107, 'xanh_txl021_2_1024x1024.jpg', 'jpg', '2018-09-05 14:11:05', '2018-09-05 14:11:05'),
(108, 'xanh_txl021_3_1024x1024.jpg', 'jpg', '2018-09-05 14:11:05', '2018-09-05 14:11:05'),
(109, 'xanh_txl021_4_1024x1024.jpg', 'jpg', '2018-09-05 14:11:05', '2018-09-05 14:11:05'),
(110, 'xanh_txl021_5_1024x1024.jpg', 'jpg', '2018-09-05 14:11:05', '2018-09-05 14:11:05'),
(111, 'xanh_txl021_6_1024x1024.jpg', 'jpg', '2018-09-05 14:11:05', '2018-09-05 14:11:05'),
(112, 'den_txl021_1_1024x1024.jpg', 'jpg', '2018-09-05 14:13:15', '2018-09-05 14:13:15'),
(113, 'den_txl021_2_1024x1024.jpg', 'jpg', '2018-09-05 14:13:15', '2018-09-05 14:13:15'),
(114, 'den_txl021_3_1024x1024.jpg', 'jpg', '2018-09-05 14:13:15', '2018-09-05 14:13:15'),
(115, 'den_txl021_4_1024x1024.jpg', 'jpg', '2018-09-05 14:13:15', '2018-09-05 14:13:15'),
(116, 'den_txl021_5_1024x1024.jpg', 'jpg', '2018-09-05 14:13:15', '2018-09-05 14:13:15'),
(117, 'den_txl021_6_1024x1024.jpg', 'jpg', '2018-09-05 14:13:16', '2018-09-05 14:13:16'),
(118, 'do_txl021_1_1024x1024.jpg', 'jpg', '2018-09-05 14:14:49', '2018-09-05 14:14:49'),
(119, 'do_txl021_2_1024x1024.jpg', 'jpg', '2018-09-05 14:14:49', '2018-09-05 14:14:49'),
(120, 'do_txl021_3_1024x1024.jpg', 'jpg', '2018-09-05 14:14:49', '2018-09-05 14:14:49'),
(121, 'do_txl021_4_1024x1024.jpg', 'jpg', '2018-09-05 14:14:49', '2018-09-05 14:14:49'),
(122, 'do_txl021_5_1024x1024.jpg', 'jpg', '2018-09-05 14:14:49', '2018-09-05 14:14:49'),
(123, 'do_txl021_6_1024x1024.jpg', 'jpg', '2018-09-05 14:14:49', '2018-09-05 14:14:49'),
(124, 'xanh_bb01124_1.jpg', 'jpg', '2018-09-05 14:40:13', '2018-09-05 14:40:13'),
(125, 'xanh_bb01124_3.jpg', 'jpg', '2018-09-05 14:40:25', '2018-09-05 14:40:25'),
(126, 'den_bb01124_3.jpg', 'jpg', '2018-09-05 14:51:00', '2018-09-05 14:51:00'),
(127, 'nau_bb01124_3.jpg', 'jpg', '2018-09-05 14:51:58', '2018-09-05 14:51:58'),
(128, 'xanh_bb01124_1_1024x1024.jpg', 'jpg', '2018-09-05 14:56:03', '2018-09-05 14:56:03'),
(129, 'xanh_bb01124_2_1024x1024.jpg', 'jpg', '2018-09-05 14:56:03', '2018-09-05 14:56:03'),
(130, 'xanh_bb01124_3_1024x1024.jpg', 'jpg', '2018-09-05 14:56:03', '2018-09-05 14:56:03'),
(131, 'xanh_bb01124_4_1024x1024.jpg', 'jpg', '2018-09-05 14:56:03', '2018-09-05 14:56:03'),
(132, 'xanh_bb01124_5_1024x1024.jpg', 'jpg', '2018-09-05 14:56:03', '2018-09-05 14:56:03'),
(133, 'xanh_bb01124_6_1024x1024.jpg', 'jpg', '2018-09-05 14:56:03', '2018-09-05 14:56:03'),
(134, 'nau_bb01124_1_1024x1024.jpg', 'jpg', '2018-09-05 14:56:42', '2018-09-05 14:56:42'),
(135, 'nau_bb01124_2_1024x1024.jpg', 'jpg', '2018-09-05 14:56:43', '2018-09-05 14:56:43'),
(136, 'nau_bb01124_3_1024x1024.jpg', 'jpg', '2018-09-05 14:56:43', '2018-09-05 14:56:43'),
(137, 'nau_bb01124_4_1024x1024.jpg', 'jpg', '2018-09-05 14:56:43', '2018-09-05 14:56:43'),
(138, 'nau_bb01124_5_1024x1024.jpg', 'jpg', '2018-09-05 14:56:43', '2018-09-05 14:56:43'),
(139, 'nau_bb01124_6_1024x1024.jpg', 'jpg', '2018-09-05 14:56:43', '2018-09-05 14:56:43'),
(140, 'den_bb01124_1_1024x1024.jpg', 'jpg', '2018-09-05 14:57:26', '2018-09-05 14:57:26'),
(141, 'den_bb01124_2_1024x1024.jpg', 'jpg', '2018-09-05 14:57:26', '2018-09-05 14:57:26'),
(142, 'den_bb01124_3.jpg', 'jpg', '2018-09-05 14:57:26', '2018-09-05 14:57:26'),
(143, 'den_bb01124_4_1024x1024.jpg', 'jpg', '2018-09-05 14:57:26', '2018-09-05 14:57:26'),
(144, 'den_bb01124_5_1024x1024.jpg', 'jpg', '2018-09-05 14:57:26', '2018-09-05 14:57:26'),
(145, 'den_bb01124_6_1024x1024.jpg', 'jpg', '2018-09-05 14:57:26', '2018-09-05 14:57:26'),
(146, 'hong_cg05054_1.jpg', 'jpg', '2018-09-05 15:10:38', '2018-09-05 15:10:38'),
(147, 'hong_cg05054_3.jpg', 'jpg', '2018-09-05 15:10:50', '2018-09-05 15:10:50'),
(148, 'xam_cg05054_3.jpg', 'jpg', '2018-09-05 15:15:10', '2018-09-05 15:15:10'),
(149, 'den_cg05054_3.jpg', 'jpg', '2018-09-05 15:15:18', '2018-09-05 15:15:18'),
(150, 'xam_cg05054_1_1024x1024 (1).jpg', 'jpg', '2018-09-05 15:18:12', '2018-09-05 15:18:12'),
(151, 'xam_cg05054_2_1024x1024.jpg', 'jpg', '2018-09-05 15:18:12', '2018-09-05 15:18:12'),
(152, 'xam_cg05054_3_1024x1024.jpg', 'jpg', '2018-09-05 15:18:12', '2018-09-05 15:18:12'),
(153, 'xam_cg05054_4_1024x1024 (1).jpg', 'jpg', '2018-09-05 15:18:12', '2018-09-05 15:18:12'),
(154, 'xam_cg05054_5_1024x1024.jpg', 'jpg', '2018-09-05 15:18:12', '2018-09-05 15:18:12'),
(155, 'xam_cg05054_6_1024x1024.jpg', 'jpg', '2018-09-05 15:18:12', '2018-09-05 15:18:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_06_11_085752_create_categorys_table', 1),
(3, '2018_06_11_090510_create_products_table', 1),
(4, '2018_06_11_145614_create_oders_table', 1),
(5, '2018_06_11_145651_create_product_oders_table', 1),
(6, '2018_06_11_145740_create_votes_table', 1),
(7, '2018_06_11_145802_create_product_votes_table', 1),
(8, '2018_06_11_145830_create_attributes_table', 1),
(9, '2018_06_11_145909_create_attribute_values_table', 1),
(10, '2018_06_11_145938_create_product_attributes_table', 1),
(11, '2018_06_11_150001_create_comments_table', 1),
(12, '2018_06_11_150040_create_product_comments_table', 1),
(13, '2018_06_11_150130_create_images_table', 1),
(14, '2018_06_11_150153_create_product_images_table', 1),
(15, '2018_06_11_150249_create_accounts_table', 1),
(16, '2018_06_27_022933_create_customers_table', 1),
(17, '2018_08_08_143936_pages', 2),
(18, '2018_08_20_015307_news', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oders`
--

CREATE TABLE `oders` (
  `oder_id` int(10) UNSIGNED NOT NULL,
  `oder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oders`
--

INSERT INTO `oders` (`oder_id`, `oder_name`, `oder_phone`, `oder_email`, `oder_address`, `oder_status`, `oder_note`, `created_at`, `updated_at`) VALUES
(1, 'Thanh Tung Vu', '1658015035', 'vietpro@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '3', 'adadad', '2018-08-10 02:51:38', '2018-08-09 19:51:38'),
(2, 'Thanh Tung Vu 11111111', '1658015035', 'thanhtung9617@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '2', 'aaa', '2018-08-10 02:51:23', '2018-08-09 19:51:23'),
(23, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'aaaaaaaaa', '2018-08-21 04:56:56', '2018-08-21 04:56:56'),
(24, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'hhhhhhhhhhhh', '2018-08-21 08:47:40', '2018-08-21 08:47:40'),
(25, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'hhhhhhhhhhhh', '2018-08-21 08:49:24', '2018-08-21 08:49:24'),
(26, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'hhhhhhhhhhhh', '2018-08-21 08:51:28', '2018-08-21 08:51:28'),
(27, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'aaaaaaaa', '2018-08-21 08:55:29', '2018-08-21 08:55:29'),
(28, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', '111111111111111', '2018-08-21 09:17:22', '2018-08-21 09:17:22'),
(29, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', '11111111111111', '2018-08-21 09:20:40', '2018-08-21 09:20:40'),
(30, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'eeeeeeeeee', '2018-08-21 09:29:17', '2018-08-21 09:29:17'),
(31, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'eeeeeeeeee', '2018-08-21 09:30:03', '2018-08-21 09:30:03'),
(32, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'âs', '2018-08-21 09:34:30', '2018-08-21 09:34:30'),
(33, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'dâd', '2018-08-21 09:35:23', '2018-08-21 09:35:23'),
(34, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'âsas', '2018-08-21 09:40:30', '2018-08-21 09:40:30'),
(35, 'Thanh Tung Vu', '1658015035', 'thanhtung9617sss@gmail.com', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'ưdwdwd', '2018-08-21 09:48:12', '2018-08-21 09:48:12'),
(36, 'Thanh Tung Vu', '1658015035', 'thanhtung19796@yahoo.com.vn', 'Hoàng Cầu Mới - Ô Chợ Dừa - Đống Đa - Hà Nội', '0', 'sâs', '2018-08-21 09:52:21', '2018-08-21 09:52:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_des` longtext COLLATE utf8mb4_unicode_ci,
  `prod_price` int(11) DEFAULT NULL,
  `prod_sale_price` int(11) DEFAULT NULL,
  `prod_cate` int(10) UNSIGNED DEFAULT NULL,
  `prod_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prod_parent` int(11) DEFAULT NULL,
  `prod_value_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_code`, `prod_des`, `prod_price`, `prod_sale_price`, `prod_cate`, `prod_thumbnail`, `prod_type`, `prod_status`, `prod_parent`, `prod_value_id`, `created_at`, `updated_at`) VALUES
(7, 'Giày cao gót 5cm mũi nhọn chất liệu êm ái-Hồng', 'CG05054', NULL, 410000, 0, NULL, '5', 'Con', '1', 6, 2, '2018-08-06 03:44:50', '2018-08-05 20:44:50'),
(8, 'Giày cao gót 5cm mũi nhọn chất liệu êm ái-Xám', 'CG05054', NULL, 410000, 0, NULL, '15', 'Con', '1', 6, 3, '2018-08-06 03:45:08', '2018-08-05 20:45:08'),
(9, 'Giày cao gót 5cm mũi nhọn chất liệu êm ái-Đen', 'CG05054', NULL, 410000, 0, NULL, '4', 'Con', '1', 6, 4, '2018-08-06 03:45:22', '2018-08-05 20:45:22'),
(10, 'Giày cao gót 5cm mũi nhọn chất liệu êm ái', 'CG05054', '<p><span style=\"font-size:20px\">-Chất liệu da tổng hợp mềm mịn, &ecirc;m &aacute;i</span></p>\r\n\r\n<p><span style=\"font-size:20px\">-Gi&agrave;y mũi nhọn, &ocirc;m gọn b&agrave;n ch&acirc;n</span></p>\r\n\r\n<p><span style=\"font-size:20px\">-Thiết kế thanh lịch, trang nh&atilde;</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/cg05054-w-2.jpg\" style=\"height:531px; width:800px\" /></span></p>\r\n\r\n<p><span style=\"font-size:20px\"><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/cg05054-w.jpg\" style=\"height:1200px; width:800px\" /></span></p>\r\n\r\n<p><span style=\"font-size:20px\"><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/51_4cf7d5a1f434421c90702ecb7572ae59.jpg\" style=\"height:450px; width:800px\" /></span></p>', 410000, 0, 11, '12', 'Nhom', '2', 0, 0, '2018-09-05 15:11:32', '2018-09-05 15:11:32'),
(11, 'Giày cao gót 5cm mũi nhọn chất liệu êm ái-Hồng', 'CG05054', NULL, 410000, 0, NULL, '147', 'Con', '1', 10, 2, '2018-09-05 15:13:37', '2018-09-05 15:13:37'),
(12, 'Giày cao gót 5cm mũi nhọn chất liệu êm ái-Xám', 'CG05054', NULL, 410000, 0, NULL, '148', 'Con', '1', 10, 3, '2018-09-05 15:15:35', '2018-09-05 15:15:35'),
(22, 'Giày xăng đan quai ngang bản to', 'SD01057', '<p><span style=\"font-size:20px\">-Chất liệu da mềm mịn, &ecirc;m &aacute;i</span></p>\r\n\r\n<p><span style=\"font-size:20px\">-Kiểu d&aacute;ng năng động, trẻ trung</span></p>\r\n\r\n<p><span style=\"font-size:20px\">-Quai hậu &ocirc;m g&oacute;t ch&acirc;n, thoải m&aacute;i khi di chuyển</span></p>\r\n\r\n<p><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/IMG2/IMG2-03/sd01057_1.jpg\" style=\"height:1120px; width:800px\" /></p>\r\n\r\n<p><img class=\"img-fluid\"  alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-03/sd01057_2.jpg\" style=\"height:1200px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/IMG2/IMG2-03/sd01057_3.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/IMG2/IMG2-03/1__11_.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/IMG2/IMG2-03/2__11_.jpg\" style=\"height:450px; width:800px\" /></p>', 350000, 0, 18, '72', 'Nhom', '1', 0, 0, '2018-09-05 13:21:28', '2018-09-05 13:21:28'),
(23, 'Giày xăng đan quai ngang bản to-Xanh xám', 'SD01057', NULL, 350000, 0, NULL, '74', 'Con', '1', 22, 4, '2018-09-05 10:54:48', '2018-09-05 10:54:48'),
(24, 'Giày xăng đan quai ngang bản to-Đen', 'SD01057', NULL, 350000, 0, NULL, '75', 'Con', '1', 22, 21, '2018-09-05 10:55:03', '2018-09-05 10:55:03'),
(25, 'Giày xăng đan quai ngang bản to-Đỏ đô', 'SD01057', NULL, 350000, 0, NULL, '76', 'Con', '1', 22, 22, '2018-09-05 10:55:22', '2018-09-05 10:55:22'),
(32, 'Túi xách lớn với hoạ tiết chỉ màu', 'TXL021', '<p><span style=\"font-size:20px\">-Chất liệu da mềm, dễ d&agrave;ng di chuyển</span></p>\r\n\r\n<p><span style=\"font-size:20px\">-Kiểu d&aacute;ng oxford hiện đại, THỜI TRANG</span></p>\r\n\r\n<p><span style=\"font-size:20px\">-Thiết kế chỉ viền c&aacute;ch điệu, bắt mắt</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><img class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-03/txl021_1.jpg\" style=\"height:1120px; width:800px\" /></span></p>\r\n\r\n<p><span style=\"font-size:20px\"><img  class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-03/txl021_2.jpg\" style=\"height:1200px; width:800px\" /></span></p>\r\n\r\n<p><span style=\"font-size:20px\"><img  class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-03/txl021_3.jpg\" style=\"height:1200px; width:800px\" /></span></p>', 650000, 0, 19, '103', 'Nhom', '1', 0, 0, '2018-09-05 14:25:38', '2018-09-05 14:25:38'),
(35, 'Túi xách lớn với hoạ tiết chỉ màu-Xanh', 'TXL021', NULL, 650000, 0, NULL, '103', 'Con', '1', 32, 1, '2018-09-05 14:11:33', '2018-09-05 14:11:33'),
(36, 'Túi xách lớn với hoạ tiết chỉ màu-Đen', 'TXL021', NULL, 650000, 0, NULL, '104', 'Con', '1', 32, 21, '2018-09-05 13:43:13', '2018-09-05 13:43:13'),
(37, 'Túi xách lớn với hoạ tiết chỉ màu-Đỏ', 'TXL021', NULL, 650000, 0, NULL, '105', 'Con', '1', 32, 23, '2018-09-05 13:43:29', '2018-09-05 13:43:29'),
(38, 'Giày búp bê mũi nhọn quai chữ X cách điệu', 'BB01124', '<p><span style=\"font-size:20px\">-Chất liệu da tổng hợp bền, đẹp</span></p>\r\n\r\n<p><span style=\"font-size:20px\">-Điểm nhấn quai chữ X, thời trang</span></p>\r\n\r\n<p><span style=\"font-size:20px\">-Phom gi&agrave;y mũi nhọn, thon gọn b&agrave;n ch&acirc;n</span></p>\r\n\r\n<p><img class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-04/1_bb01124.jpg\" style=\"height:1200px; width:800px\" /></p>\r\n\r\n<p><img class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-04/2_bb01124.jpg\" style=\"height:1189px; width:800px\" /></p>\r\n\r\n<p><img class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-04/3_bb01124.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-04/1_f7b30e1c4cb54ed9ae1493b25d3f4334.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-04/2_1d169bb4afc0453f9f0cc4d14d963e97.jpg\" style=\"height:450px; width:800px\" /></p>', 390000, 0, 20, '124', 'Nhom', '1', 0, 0, '2018-09-05 15:06:41', '2018-09-05 15:06:41'),
(39, 'Giày búp bê mũi nhọn quai chữ X cách điệu-Xanh', 'BB01124', NULL, 390000, 0, NULL, '125', 'Con', '1', 38, 1, '2018-09-05 15:21:46', '2018-09-05 15:21:46'),
(40, 'Giày búp bê mũi nhọn quai chữ X cách điệu-Đen', 'BB01124', NULL, 390000, 0, NULL, '126', 'Con', '1', 38, 21, '2018-09-05 14:51:30', '2018-09-05 14:51:30'),
(41, 'Giày búp bê mũi nhọn quai chữ X cách điệu-Nâu', 'BB01124', NULL, 390000, 0, NULL, '127', 'Con', '1', 38, 23, '2018-09-05 14:52:12', '2018-09-05 14:52:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attributes`
--

CREATE TABLE `product_attributes` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `att_value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_attributes`
--

INSERT INTO `product_attributes` (`prod_id`, `att_value_id`, `created_at`, `updated_at`) VALUES
(10, 3, '2018-08-05 20:53:20', '2018-08-05 20:53:20'),
(10, 4, '2018-08-05 20:53:20', '2018-08-05 20:53:20'),
(10, 5, '2018-08-05 20:53:20', '2018-08-05 20:53:20'),
(10, 6, '2018-08-05 20:53:20', '2018-08-05 20:53:20'),
(10, 7, '2018-08-05 20:53:20', '2018-08-05 20:53:20'),
(10, 8, '2018-08-05 20:53:20', '2018-08-05 20:53:20'),
(10, 9, '2018-08-05 20:53:20', '2018-08-05 20:53:20'),
(10, 2, '2018-08-06 01:42:13', '2018-08-06 01:42:13'),
(22, 4, '2018-09-05 10:37:01', '2018-09-05 10:37:01'),
(22, 21, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(22, 22, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(22, 5, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(22, 6, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(22, 7, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(22, 8, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(22, 9, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(32, 1, '2018-09-05 13:33:32', '2018-09-05 13:33:32'),
(32, 21, '2018-09-05 13:33:32', '2018-09-05 13:33:32'),
(32, 23, '2018-09-05 13:36:40', '2018-09-05 13:36:40'),
(32, 24, '2018-09-05 14:23:06', '2018-09-05 14:23:06'),
(38, 1, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 21, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 23, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 5, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 6, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 7, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 8, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 9, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 24, '2018-09-05 14:45:23', '2018-09-05 14:45:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comments`
--

CREATE TABLE `product_comments` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comments`
--

INSERT INTO `product_comments` (`prod_id`, `comment_id`, `created_at`, `updated_at`) VALUES
(10, 1, '2018-08-05 20:54:49', '2018-08-05 20:54:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `img_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`prod_id`, `img_id`, `created_at`, `updated_at`) VALUES
(11, 7, '2018-08-05 20:56:58', '2018-08-05 20:56:58'),
(11, 9, '2018-08-05 20:56:58', '2018-08-05 20:56:58'),
(11, 10, '2018-08-05 20:56:58', '2018-08-05 20:56:58'),
(11, 11, '2018-08-05 20:56:58', '2018-08-05 20:56:58'),
(11, 12, '2018-08-05 20:56:58', '2018-08-05 20:56:58'),
(11, 13, '2018-08-05 20:56:58', '2018-08-05 20:56:58'),
(22, 73, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(22, 74, '2018-09-05 10:37:02', '2018-09-05 10:37:02'),
(23, 72, '2018-09-05 10:58:51', '2018-09-05 10:58:51'),
(23, 78, '2018-09-05 10:58:51', '2018-09-05 10:58:51'),
(23, 79, '2018-09-05 10:58:51', '2018-09-05 10:58:51'),
(23, 80, '2018-09-05 10:58:51', '2018-09-05 10:58:51'),
(23, 81, '2018-09-05 10:58:51', '2018-09-05 10:58:51'),
(23, 82, '2018-09-05 10:58:51', '2018-09-05 10:58:51'),
(24, 83, '2018-09-05 11:06:24', '2018-09-05 11:06:24'),
(24, 84, '2018-09-05 11:06:25', '2018-09-05 11:06:25'),
(24, 85, '2018-09-05 11:06:25', '2018-09-05 11:06:25'),
(24, 86, '2018-09-05 11:06:25', '2018-09-05 11:06:25'),
(24, 87, '2018-09-05 11:06:25', '2018-09-05 11:06:25'),
(24, 88, '2018-09-05 11:06:25', '2018-09-05 11:06:25'),
(25, 89, '2018-09-05 13:09:52', '2018-09-05 13:09:52'),
(25, 90, '2018-09-05 13:09:52', '2018-09-05 13:09:52'),
(25, 91, '2018-09-05 13:09:52', '2018-09-05 13:09:52'),
(25, 92, '2018-09-05 13:09:52', '2018-09-05 13:09:52'),
(25, 93, '2018-09-05 13:09:52', '2018-09-05 13:09:52'),
(25, 94, '2018-09-05 13:09:52', '2018-09-05 13:09:52'),
(32, 102, '2018-09-05 13:33:32', '2018-09-05 13:33:32'),
(32, 103, '2018-09-05 13:33:32', '2018-09-05 13:33:32'),
(35, 106, '2018-09-05 14:11:33', '2018-09-05 14:11:33'),
(35, 107, '2018-09-05 14:11:34', '2018-09-05 14:11:34'),
(35, 108, '2018-09-05 14:11:34', '2018-09-05 14:11:34'),
(35, 109, '2018-09-05 14:11:34', '2018-09-05 14:11:34'),
(35, 110, '2018-09-05 14:11:34', '2018-09-05 14:11:34'),
(35, 111, '2018-09-05 14:11:34', '2018-09-05 14:11:34'),
(36, 112, '2018-09-05 14:13:32', '2018-09-05 14:13:32'),
(36, 113, '2018-09-05 14:13:33', '2018-09-05 14:13:33'),
(36, 114, '2018-09-05 14:13:33', '2018-09-05 14:13:33'),
(36, 115, '2018-09-05 14:13:33', '2018-09-05 14:13:33'),
(36, 116, '2018-09-05 14:13:33', '2018-09-05 14:13:33'),
(36, 117, '2018-09-05 14:13:33', '2018-09-05 14:13:33'),
(37, 118, '2018-09-05 14:15:20', '2018-09-05 14:15:20'),
(37, 119, '2018-09-05 14:15:21', '2018-09-05 14:15:21'),
(37, 120, '2018-09-05 14:15:21', '2018-09-05 14:15:21'),
(37, 122, '2018-09-05 14:15:21', '2018-09-05 14:15:21'),
(37, 123, '2018-09-05 14:15:21', '2018-09-05 14:15:21'),
(37, 121, '2018-09-05 14:16:21', '2018-09-05 14:16:21'),
(38, 124, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(38, 125, '2018-09-05 14:45:23', '2018-09-05 14:45:23'),
(39, 128, '2018-09-05 14:58:20', '2018-09-05 14:58:20'),
(39, 129, '2018-09-05 14:58:20', '2018-09-05 14:58:20'),
(39, 130, '2018-09-05 14:58:20', '2018-09-05 14:58:20'),
(39, 131, '2018-09-05 14:58:20', '2018-09-05 14:58:20'),
(39, 132, '2018-09-05 14:58:20', '2018-09-05 14:58:20'),
(39, 133, '2018-09-05 14:58:20', '2018-09-05 14:58:20'),
(40, 140, '2018-09-05 14:58:54', '2018-09-05 14:58:54'),
(40, 141, '2018-09-05 14:58:54', '2018-09-05 14:58:54'),
(40, 142, '2018-09-05 14:58:54', '2018-09-05 14:58:54'),
(40, 143, '2018-09-05 14:58:54', '2018-09-05 14:58:54'),
(40, 144, '2018-09-05 14:58:54', '2018-09-05 14:58:54'),
(40, 145, '2018-09-05 14:58:54', '2018-09-05 14:58:54'),
(41, 134, '2018-09-05 14:59:19', '2018-09-05 14:59:19'),
(41, 135, '2018-09-05 14:59:19', '2018-09-05 14:59:19'),
(41, 136, '2018-09-05 14:59:19', '2018-09-05 14:59:19'),
(41, 137, '2018-09-05 14:59:19', '2018-09-05 14:59:19'),
(41, 138, '2018-09-05 14:59:19', '2018-09-05 14:59:19'),
(41, 139, '2018-09-05 14:59:19', '2018-09-05 14:59:19'),
(10, 146, '2018-09-05 15:11:32', '2018-09-05 15:11:32'),
(10, 147, '2018-09-05 15:11:32', '2018-09-05 15:11:32'),
(12, 150, '2018-09-05 15:19:26', '2018-09-05 15:19:26'),
(12, 151, '2018-09-05 15:19:26', '2018-09-05 15:19:26'),
(12, 152, '2018-09-05 15:19:26', '2018-09-05 15:19:26'),
(12, 153, '2018-09-05 15:19:26', '2018-09-05 15:19:26'),
(12, 154, '2018-09-05 15:19:26', '2018-09-05 15:19:26'),
(12, 155, '2018-09-05 15:19:26', '2018-09-05 15:19:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_oder`
--

CREATE TABLE `product_oder` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `oder_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_oder`
--

INSERT INTO `product_oder` (`prod_id`, `oder_id`, `qty`, `price`, `options`, `created_at`, `updated_at`) VALUES
(11, 1, 2, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:6:\"Hồng\";s:8:\"thumnail\";s:21:\"hong_dai_dien_con.jpg\";}', '2018-08-06 18:38:42', '2018-08-06 18:38:42'),
(12, 1, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:4:\"Xám\";s:8:\"thumnail\";s:20:\"xam_dai_dien_con.jpg\";}', '2018-08-06 18:38:42', '2018-08-06 18:38:42'),
(12, 2, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:4:\"Xám\";s:8:\"thumnail\";s:20:\"xam_dai_dien_con.jpg\";}', '2018-08-06 18:48:02', '2018-08-06 18:48:02'),
(11, 28, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:6:\"Hồng\";s:8:\"thumnail\";s:21:\"hong_dai_dien_con.jpg\";}', '2018-08-21 09:17:26', '2018-08-21 09:17:26'),
(11, 29, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:6:\"Hồng\";s:8:\"thumnail\";s:21:\"hong_dai_dien_con.jpg\";}', '2018-08-21 09:20:43', '2018-08-21 09:20:43'),
(11, 31, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:6:\"Hồng\";s:8:\"thumnail\";s:21:\"hong_dai_dien_con.jpg\";}', '2018-08-21 09:30:06', '2018-08-21 09:30:06'),
(11, 32, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:6:\"Hồng\";s:8:\"thumnail\";s:21:\"hong_dai_dien_con.jpg\";}', '2018-08-21 09:34:34', '2018-08-21 09:34:34'),
(11, 33, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:6:\"Hồng\";s:8:\"thumnail\";s:21:\"hong_dai_dien_con.jpg\";}', '2018-08-21 09:35:26', '2018-08-21 09:35:26'),
(11, 34, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:6:\"Hồng\";s:8:\"thumnail\";s:21:\"hong_dai_dien_con.jpg\";}', '2018-08-21 09:40:33', '2018-08-21 09:40:33'),
(11, 35, 1, 410000, 'a:3:{s:4:\"size\";s:2:\"35\";s:5:\"color\";s:6:\"Hồng\";s:8:\"thumnail\";s:21:\"hong_dai_dien_con.jpg\";}', '2018-08-21 09:48:16', '2018-08-21 09:48:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_votes`
--

CREATE TABLE `product_votes` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `vote_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(10) UNSIGNED NOT NULL,
  `vote_rate` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`att_id`);

--
-- Chỉ mục cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`att_value_id`),
  ADD KEY `attribute_values_att_id_foreign` (`att_id`);

--
-- Chỉ mục cho bảng `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`img_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`oder_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `product_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD KEY `product_attributes_prod_id_foreign` (`prod_id`),
  ADD KEY `product_attributes_att_value_id_foreign` (`att_value_id`);

--
-- Chỉ mục cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD KEY `product_comments_prod_id_foreign` (`prod_id`),
  ADD KEY `product_comments_comment_id_foreign` (`comment_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD KEY `product_images_prod_id_foreign` (`prod_id`),
  ADD KEY `product_images_img_id_foreign` (`img_id`);

--
-- Chỉ mục cho bảng `product_oder`
--
ALTER TABLE `product_oder`
  ADD KEY `product_oder_prod_id_foreign` (`prod_id`),
  ADD KEY `product_oder_oder_id_foreign` (`oder_id`);

--
-- Chỉ mục cho bảng `product_votes`
--
ALTER TABLE `product_votes`
  ADD KEY `product_votes_prod_id_foreign` (`prod_id`),
  ADD KEY `product_votes_vote_id_foreign` (`vote_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `att_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `att_value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `categorys`
--
ALTER TABLE `categorys`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `img_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `oders`
--
ALTER TABLE `oders`
  MODIFY `oder_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_att_id_foreign` FOREIGN KEY (`att_id`) REFERENCES `attributes` (`att_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `categorys` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_att_value_id_foreign` FOREIGN KEY (`att_value_id`) REFERENCES `attribute_values` (`att_value_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_prod_id_foreign` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_comments`
--
ALTER TABLE `product_comments`
  ADD CONSTRAINT `product_comments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_comments_prod_id_foreign` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_img_id_foreign` FOREIGN KEY (`img_id`) REFERENCES `images` (`img_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_images_prod_id_foreign` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_oder`
--
ALTER TABLE `product_oder`
  ADD CONSTRAINT `product_oder_oder_id_foreign` FOREIGN KEY (`oder_id`) REFERENCES `oders` (`oder_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_oder_prod_id_foreign` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_votes`
--
ALTER TABLE `product_votes`
  ADD CONSTRAINT `product_votes_prod_id_foreign` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_votes_vote_id_foreign` FOREIGN KEY (`vote_id`) REFERENCES `votes` (`vote_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
