-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 20, 2020 lúc 03:33 AM
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
-- Cơ sở dữ liệu: `backup_data`
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
(1, 'Admin', 'vietpro@gmail.com', '$2y$10$LOnyc7RsSAUL9zElC3W2c.8hNIcgLtxld/kvHewatgRyvPwVWeuTG', '', '01658015035', 1, 'b9Tmw86IIDm3N3oFLgoFA8uLqeuktW6QAWHta132hhSqcZS2BtYIursvT2zB', '2020-09-15 15:49:24', '2018-07-24 01:57:54');

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
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` int(11) DEFAULT NULL,
  `tom_tat_tin` longtext COLLATE utf8mb4_unicode_ci,
  `chi_tiet_tin` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `tieu_de`, `anh`, `tom_tat_tin`, `chi_tiet_tin`, `created_at`, `updated_at`) VALUES
(4, 'Juno khai trương địa chỉ mới Tân Kỳ Tân Quý - Giày đồng giá 250K', 66, '<p>Ng&agrave;y 19/04 - Juno mừng khai trương địa chỉ mới 122 - 124 T&acirc;n Kỳ T&acirc;n Qu&yacute;, phường Sơn Kỳ, quận T&acirc;n Ph&uacute;- thay thế địa chỉ cũ 74 T&acirc;n Kỳ T&acirc;n Qu&yacute;, Phường Thạnh T&acirc;y cụ thể từ ng&agrave;y 19/04 - 25/04 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:Nội dung khuyến m&atilde;i:- Đồng gi&aacute; tất cả gi&agrave;y...</p>', '<p><em><strong>Ng&agrave;y 19/04 - Juno mừng khai trương địa chỉ mới 122 - 124 T&acirc;n Kỳ T&acirc;n Qu&yacute;, phường Sơn Kỳ, quận T&acirc;n Ph&uacute;- thay thế địa chỉ cũ 74 T&acirc;n Kỳ T&acirc;n Qu&yacute;, Phường Thạnh T&acirc;y cụ thể từ ng&agrave;y 19/04 - 25/04 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:</strong></em></p>\r\n\r\n<p><em><strong><img class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-01/tin1_01.jpg\" style=\"height:628px; width:1200px\" /></strong></em></p>\r\n\r\n<p><em><strong>Nội dung khuyến m&atilde;i:</strong></em></p>\r\n\r\n<p>- Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute;&nbsp; 250.000 đồng</p>\r\n\r\n<p>- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute; v&agrave; bal&ocirc; với mức gi&aacute; 350.000 đồng, 500.000 đồng</p>\r\n\r\n<p>- Đồng gi&aacute; gi&agrave;y thể thao v&agrave; gi&agrave;y boots với mức gi&aacute; l&agrave; 350.000 đồng</p>\r\n\r\n<p><em><strong>Tham khảo 1 số sản phẩm &quot;hot&quot; tại cửa h&agrave;ng</strong></em></p>\r\n\r\n<p><em><strong><img class=\"img-fluid\" alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-01/tin_02.jpg\" style=\"height:595px; width:842px\" /></strong></em></p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</p>\r\n\r\n<p>- CT Kh&aacute;ch H&agrave;ng Th&acirc;n Thiết giảm 30% sản phẩm thứ 4 kh&ocirc;ng được &aacute;p dụng. (đ&atilde; dừng chương tr&igrave;nh).</p>\r\n\r\n<p>- Chương tr&igrave;nh Kh&aacute;ch H&agrave;ng Th&acirc;n&nbsp;Thiết&nbsp;sinh nhật 49% được &aacute;p dụng trong chương tr&igrave;nh&nbsp;khai&nbsp;trương.</p>\r\n\r\n<p><strong>Thời gian &aacute;p dụng:&nbsp;</strong>Từ ng&agrave;y 19/04 -25/04</p>\r\n\r\n<p><strong>Địa điểm &aacute;p dụng:</strong>&nbsp;122- 124 T&acirc;n Kỳ T&acirc;n Qu&yacute;, Phường Sơn Kỳ, quận T&acirc;n Ph&uacute;</p>', '2018-08-20 02:42:05', '2018-08-20 15:18:23'),
(5, 'Juno mừng khai trương cửa hàng thứ 70 và 71- Đồng giá giày 200K - 250K', 67, '<p>Ng&agrave;y 26/04 - Juno mừng khai trương 02 cửa h&agrave;ng mới thứ 70 v&agrave; 71 tại B&igrave;nh Dương v&agrave; Thanh H&oacute;a, từ ng&agrave;y 26/4 - 05/05 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:Nội dung khuyến m&atilde;i:-&nbsp;Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute;&nbsp; 200.000 đồng - 250.000 đồng.- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute; v&agrave; bal&ocirc; với mức gi&aacute;...</p>', '<p><em><strong>Ng&agrave;y 26/04 - Juno mừng khai trương 02 cửa h&agrave;ng mới thứ 70 v&agrave; 71 tại B&igrave;nh Dương v&agrave; Thanh H&oacute;a, từ ng&agrave;y 26/4 - 05/05 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/IMG2/IMG2-01/khai-truong-1200-628-fb__2_.jpg\" style=\"height:628px; width:1200px\" /></strong></em></p>\r\n\r\n<p><em><strong>Nội dung khuyến m&atilde;i:</strong></em></p>\r\n\r\n<p>-&nbsp;Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute;&nbsp; 200.000 đồng - 250.000 đồng.</p>\r\n\r\n<p>- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute; v&agrave; bal&ocirc; với mức gi&aacute; 350.000 đồng, 500.000 đồng</p>\r\n\r\n<p>- Đồng gi&aacute; gi&agrave;y thể thao v&agrave; gi&agrave;y boots với mức gi&aacute; l&agrave; 350.000 đồng</p>\r\n\r\n<p><em><strong>Tham khảo 1 số sản phẩm &quot;hot&quot; tại cửa h&agrave;ng</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/IMG2/IMG2-01/binh-duong__3_.jpg\" style=\"height:595px; width:842px\" /></strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" class=\"img-fluid\" src=\"/storage/avatar/images/IMG2/IMG2-01/thanh-hoa__3_.jpg\" style=\"height:595px; width:842px\" /></strong></em></p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</p>\r\n\r\n<p>- Chương tr&igrave;nh Kh&aacute;ch H&agrave;ng Th&acirc;n&nbsp;Thiết&nbsp;sinh nhật 49% được &aacute;p dụng trong chương tr&igrave;nh&nbsp;khai&nbsp;trương.</p>\r\n\r\n<p><strong>Thời gian &aacute;p dụng:&nbsp;</strong>Từ ng&agrave;y 26/04- 05/05</p>\r\n\r\n<p><strong>Địa điểm &aacute;p dụng:</strong></p>\r\n\r\n<p>-&nbsp;242/<a href=\"https://maps.google.com/?q=1A+%C4%90%E1%BA%A1i+L%E1%BB%99+B%C3%ACnh+D%C6%B0%C6%A1ng&amp;entry=gmail&amp;source=g\" style=\"text-decoration:none; color:#000;\">1A Đại Lộ B&igrave;nh Dương</a>, KP Thạnh H&ograve;a B, Phường An Thạnh, Thuận An, tỉnh B&igrave;nh Dương.</p>\r\n\r\n<p>-&nbsp; 98 &ndash; 100 L&ecirc; Ho&agrave;n, Phường Lam Sơn, Th&agrave;nh phố Thanh H&oacute;a, Tỉnh Thanh H&oacute;a</p>', '2018-08-20 10:57:53', '2018-08-20 15:35:33'),
(7, 'Juno mừng khai trương cửa hàng thứ 72 và 73- Đồng giá giày 200K - 250K', 68, '<p>Ng&agrave;y 10/05 - Juno mừng khai trương 02 cửa h&agrave;ng mới thứ 72 v&agrave; 73 tại 2 tỉnh Bắc Ninh v&agrave; L&acirc;m Đồng, theo đ&oacute; từ ng&agrave;y 10/05 - 19/05 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:Nội dung khuyến m&atilde;i:-&nbsp;Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute;&nbsp; 200.000 đồng - 250.000 đồng.- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute;, bal&ocirc;...</p>', '<p><em><strong>Ng&agrave;y 10/05 - Juno mừng khai trương 02 cửa h&agrave;ng mới thứ 72 v&agrave; 73 tại 2 tỉnh Bắc Ninh v&agrave; L&acirc;m Đồng, theo đ&oacute; từ ng&agrave;y 10/05 - 19/05 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-01/1200x628-bao-loc-x-bac-ninh.jpg\" style=\"height:628px; width:1200px\" /></strong></em></p>\r\n\r\n<p><em><strong>Nội dung khuyến m&atilde;i:</strong></em></p>\r\n\r\n<p>-&nbsp;Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute;&nbsp; 200.000 đồng - 250.000 đồng.</p>\r\n\r\n<p>- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute;, bal&ocirc; với mức gi&aacute; 250.000 đồng, 350.000 đồng, 500.000 đồng</p>\r\n\r\n<p>- Đồng gi&aacute; gi&agrave;y thể thao v&agrave; gi&agrave;y boots với mức gi&aacute; l&agrave; 350.000 đồng</p>\r\n\r\n<p><em><strong>Tham khảo 1 số sản phẩm &quot;hot&quot; tại cửa h&agrave;ng</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-01/to-roi-bac-ninh.jpg\" style=\"height:595px; width:842px\" /></strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-01/to-roi-bao-loc.jpg\" style=\"height:595px; width:842px\" /></strong></em></p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</p>\r\n\r\n<p>- Chương tr&igrave;nh Kh&aacute;ch H&agrave;ng Th&acirc;n&nbsp;Thiết&nbsp;sinh nhật 49% được &aacute;p dụng trong chương tr&igrave;nh&nbsp;khai&nbsp;trương.</p>\r\n\r\n<p><strong>Thời gian &aacute;p dụng:&nbsp;</strong>Từ ng&agrave;y 10/05- 19/05</p>\r\n\r\n<p><strong>Địa điểm &aacute;p dụng:</strong></p>\r\n\r\n<p>-&nbsp;258 Trần Hưng Đạo, Phường Đại Ph&uacute;c,&nbsp;Th&agrave;nh phố&nbsp;Bắc&nbsp;Ninh, Tỉnh&nbsp;Bắc&nbsp;Ninh.</p>\r\n\r\n<p>-&nbsp;97 L&ecirc; Hồng Phong, Phường 01, Th&agrave;nh Phố Bảo Lộc, Tỉnh L&acirc;m Đồng</p>', '2018-08-20 15:32:14', '2018-08-20 15:32:14'),
(8, 'Juno mừng khai trương địa chỉ mới Ba Cu Vũng Tàu- Giày đồng giá 200K-250K', 69, '<p>Ng&agrave;y 24/04 - Juno mừng khai trương địa chỉ mới 138 - 140 Ba Cu, phường 3, TP Vũng T&agrave;u thay thế địa chỉ cũ 143 Ba Cu, phường 4,&nbsp;cụ thể từ ng&agrave;y 24/05 - 2/06 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:Nội dung khuyến m&atilde;i:- Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute; 200.000 đồng, 250.000 đồng-...</p>', '<p><strong><em>Ng&agrave;y 24/04 - Juno mừng khai trương địa chỉ mới 138 - 140 Ba Cu, phường 3, TP Vũng T&agrave;u thay thế địa chỉ cũ 143 Ba Cu, phường 4,&nbsp;cụ thể từ ng&agrave;y 24/05 - 2/06 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:</em></strong></p>\r\n\r\n<p><strong><em><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-02/khaitruong-bacu-lbb.jpg\" style=\"height:710px; width:1200px\" /></em></strong></p>\r\n\r\n<p><em><strong>Nội dung khuyến m&atilde;i:</strong></em></p>\r\n\r\n<p>- Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute; 200.000 đồng, 250.000 đồng</p>\r\n\r\n<p>- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute; v&agrave; bal&ocirc; với mức gi&aacute; 250.000 đồng, 350.000 đồng, 500.000 đồng</p>\r\n\r\n<p>- Đồng gi&aacute; gi&agrave;y thể thao v&agrave; gi&agrave;y boots với mức gi&aacute; l&agrave; 350.000 đồng.</p>\r\n\r\n<p><em><strong>Tham khảo 1 số sản phẩm &quot;hot&quot; tại cửa h&agrave;ng</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-02/to-roi_-ba-cu.jpg\" style=\"height:595px; width:842px\" /></strong></em></p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</p>\r\n\r\n<p>- CT Kh&aacute;ch H&agrave;ng Th&acirc;n Thiết giảm 40% sản phẩm thứ 4 kh&ocirc;ng được &aacute;p dụng</p>\r\n\r\n<p>- Chương tr&igrave;nh Kh&aacute;ch H&agrave;ng Th&acirc;n&nbsp;Thiết&nbsp;sinh nhật 49% được &aacute;p dụng trong chương tr&igrave;nh&nbsp;khai&nbsp;trương.</p>\r\n\r\n<p><strong>Thời gian &aacute;p dụng:&nbsp;</strong>Từ ng&agrave;y 24/05 -02/06</p>\r\n\r\n<p><strong>Địa điểm &aacute;p dụng:</strong>&nbsp;138- 140 Ba Cu, phường 3, TP Vũng T&agrave;u</p>', '2018-08-20 15:52:32', '2018-08-20 15:52:32'),
(9, 'Juno mừng khai trương cửa hàng thứ 74 - Đồng giá giày 200K - 250K', 70, '<p>Ng&agrave;y 27/05 - Juno mừng khai trương cửa h&agrave;ng mới thứ 74 tại L&ecirc; Hồng Phong - Vũng T&agrave;u, theo đ&oacute; từ ng&agrave;y 27/05 - 05/06 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:Nội dung khuyến m&atilde;i:- Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute; 200.000d đồng, 250.000 đồng.- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute; v&agrave; bal&ocirc; với mức gi&aacute;...</p>', '<p><em><strong>Ng&agrave;y 27/05 - Juno mừng khai trương cửa h&agrave;ng mới thứ 74 tại L&ecirc; Hồng Phong - Vũng T&agrave;u, theo đ&oacute; từ ng&agrave;y 27/05 - 05/06 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-02/le-hongphong111111111111.jpg\" style=\"height:710px; width:1200px\" /></strong></em></p>\r\n\r\n<p><strong>Nội dung khuyến m&atilde;i:</strong></p>\r\n\r\n<p>- Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute; 200.000d đồng, 250.000 đồng.</p>\r\n\r\n<p>- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute; v&agrave; bal&ocirc; với mức gi&aacute; 250.000 đồng, 350.000 đồng, 500.000 đồng.</p>\r\n\r\n<p>- Đồng gi&aacute; gi&agrave;y thể thao v&agrave; gi&agrave;y boots với mức gi&aacute; l&agrave; 350.000 đồng</p>\r\n\r\n<p><strong>Tham khảo 1 số sản phẩm &quot;hot&quot; tại cửa h&agrave;ng</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-02/to-roi_-le-hong-phong--_-vung-tau_.jpg\" style=\"height:595px; width:842px\" /></strong></p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</p>\r\n\r\n<p>- Chương tr&igrave;nh Kh&aacute;ch H&agrave;ng Th&acirc;n&nbsp;Thiết&nbsp;sinh nhật 49% được &aacute;p dụng trong chương tr&igrave;nh&nbsp;khai&nbsp;trương</p>\r\n\r\n<p>- Chương tr&igrave;nh KHTT giảm 40% sản phẩm thứ 4 kh&ocirc;ng được &aacute;p dụng chung trong chương tr&igrave;nh KTCH L&ecirc; Hồng Phong.&nbsp;</p>\r\n\r\n<p><strong>Thời gian &aacute;p dụng:&nbsp;</strong>Từ ng&agrave;y 27/05- 05/06</p>\r\n\r\n<p><strong>Địa điểm &aacute;p dụng: 173 L&ecirc; Hồng Phong, phường 08, Th&agrave;nh phố Vũng T&agrave;u</strong></p>', '2018-08-20 15:58:06', '2018-08-20 15:58:06'),
(10, 'Juno mừng khai trương cửa hàng thứ 75 - Đồng giá giày 200K - 250K', 71, '<p>Ng&agrave;y 08/06 - Juno mừng khai trương cửa h&agrave;ng mới thứ 75 tại&nbsp;220 Nguyễn An Ninh, Dĩ An, B&igrave;nh Dương theo đ&oacute; từ ng&agrave;y 08/06 - 17/06 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:Nội dung khuyến m&atilde;i:- Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute; 200.000 đồng, 250.000 đồng.- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute; v&agrave; bal&ocirc; với mức...</p>', '<p><em><strong>Ng&agrave;y 08/06 - Juno mừng khai trương cửa h&agrave;ng mới thứ 75 tại&nbsp;220 Nguyễn An Ninh, Dĩ An, B&igrave;nh Dương theo đ&oacute; từ ng&agrave;y 08/06 - 17/06 Juno thực hiện chương tr&igrave;nh khuyến m&atilde;i như sau:</strong></em></p>\r\n\r\n<p><em><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-02/an-ninh-02-binhduong.jpg\" style=\"height:710px; width:1200px\" /></strong></em></p>\r\n\r\n<p><strong>Nội dung khuyến m&atilde;i:</strong></p>\r\n\r\n<p>- Đồng gi&aacute; tất cả gi&agrave;y với mức gi&aacute; 200.000 đồng, 250.000 đồng.</p>\r\n\r\n<p>- Đồng gi&aacute; t&uacute;i x&aacute;ch, v&iacute; v&agrave; bal&ocirc; với mức gi&aacute; 250.000 đồng, 350.000 đồng, 500.000 đồng.</p>\r\n\r\n<p>- Đồng gi&aacute; gi&agrave;y thể thao v&agrave; gi&agrave;y boots với mức gi&aacute; l&agrave; 350.000 đồng</p>\r\n\r\n<p><strong>Tham khảo 1 số sản phẩm &quot;hot&quot; tại cửa h&agrave;ng</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-02/to-roi_nguyen-an-ninh__3_.jpg\" style=\"height:595px; width:842px\" /></strong></p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong></p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.</p>\r\n\r\n<p>- Chương tr&igrave;nh Kh&aacute;ch H&agrave;ng Th&acirc;n&nbsp;Thiết&nbsp;sinh nhật 49% được &aacute;p dụng trong chương tr&igrave;nh&nbsp;khai&nbsp;trương</p>\r\n\r\n<p>- Chương tr&igrave;nh KHTT giảm 40% sản phẩm thứ 4 kh&ocirc;ng được &aacute;p dụng chung trong chương tr&igrave;nh KTCH Nguyễn An Ninh</p>\r\n\r\n<p><strong>Thời gian &aacute;p dụng:&nbsp;</strong>Từ ng&agrave;y 08/06- 17/06</p>\r\n\r\n<p><strong>Địa điểm &aacute;p dụng:&nbsp;</strong>220 Nguyễn An Ninh, Kp B&igrave;nh Minh 2, Phường Dĩ An, Thị X&atilde; Dĩ An, tỉnh B&igrave;nh Dương.</p>', '2018-08-20 16:04:58', '2018-08-20 16:04:58');

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
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_des` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_des`, `created_at`, `updated_at`) VALUES
(6, 'Giới thiệu', '<p><strong><em>&quot;Kh&ocirc;ng có phụ nữ x&acirc;́u, chỉ có phụ nữ kh&ocirc;ng bi&ecirc;́t làm đẹp &quot;- Trích c&acirc;u danh ng&ocirc;n n&ocirc;̉i ti&ecirc;́ng của LaBruyere đ&ecirc;̉ thay lời của Juno - những người góp ph&acirc;̀n t&ocirc;n vinh, khơi dậy vẻ đẹp phụ nữ Việt Nam.</em></strong></p>\r\n\r\n<p style=\"text-align:center\"><iframe frameborder=\"0\" height=\"360\" scrolling=\"no\" src=\"https://player.vimeo.com/video/167077282?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1&amp;loop=1\" width=\"640\"></iframe></p>\r\n\r\n<p><strong><em><img alt=\" Ông Đinh Anh Huân - Chủ tịch Juno phát biểu trong sự kiện Juno ra mắt bộ sưu tập mới\" src=\"/storage/avatar/images/img_gioithieu_01.jpg\" style=\"height:533px; width:1000px\" /></em></strong></p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>Bạn biết g&igrave; về ch&uacute;ng t&ocirc;i?</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">Trải qua thời gian h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển Juno đ&atilde; trở th&agrave;nh một thương hiệu thời trang gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch v&agrave; phụ kiện, được phụ nữ Việt Nam y&ecirc;u th&iacute;ch v&agrave; chọn lựa. Hiện nay, thương hiệu Juno đ&atilde; ph&aacute;t triển mạnh mẽ với h&agrave;ng chục cửa h&agrave;ng trải d&agrave;i tr&ecirc;n to&agrave;n quốc v&agrave; website b&aacute;n h&agrave;ng trực tuyến th&acirc;n thiện, chuy&ecirc;n nghiệp h&agrave;ng đầu Việt Nam. Kh&ocirc;ng dừng lại ở đ&oacute;, dịch vụ của Juno lu&ocirc;n mang đến sự h&agrave;i l&ograve;ng v&agrave; quyền lợi của kh&aacute;ch h&agrave;ng lu&ocirc;n được đ&aacute;p ứng, thoả m&atilde;n&hellip;</p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>Sản phẩm của ch&uacute;ng t&ocirc;i c&oacute; g&igrave; nổi bật?</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">Với mục ti&ecirc;u kh&ocirc;ng ngừng ph&aacute;t triển v&agrave; ho&agrave;n thiện, sản phẩm của Juno lu&ocirc;n mang đến cho phụ nữ sự tự tin, toả s&aacute;ng để th&agrave;nh c&ocirc;ng trong c&ocirc;ng việc, cuộc sống với phong c&aacute;ch thời trang ri&ecirc;ng biệt, ấn tượng. B&ecirc;n cạnh việc ch&uacute; trọng đến sự &ecirc;m &aacute;i, gi&aacute; cả phải chăng, sản phẩm Juno lu&ocirc;n được chỉnh chu trong từng chi tiết, mẫu m&atilde; đa dạng, ph&ugrave; hợp mọi ho&agrave;n cảnh v&agrave; mang hơi thở thời trang trong nước, thế giới...</p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>Thế mạnh của ch&uacute;ng t&ocirc;i?</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">Ch&uacute;ng t&ocirc;i c&oacute; nh&agrave; m&aacute;y sản xuất được đặt tại Huyện B&igrave;nh Ch&aacute;nh, Th&agrave;nh phố Hồ Ch&iacute; Minh, Việt Nam. Những sản phẩm gi&agrave;y d&eacute;p của ch&uacute;ng t&ocirc;i được ch&iacute;nh b&agrave;n tay, khối &oacute;c của người c&ocirc;ng nh&acirc;n Việt c&oacute; tay nghề cao, t&acirc;m huyết, tỉ mỉ trong từng c&ocirc;ng đoạn sản xuất từ thiết kế mẫu, chọn lựa nguy&ecirc;n vật liệu, kỹ thuật tạo form d&aacute;ng v&agrave; sản xuất theo đ&uacute;ng tr&igrave;nh tự ti&ecirc;u chuẩn v&ocirc; c&ugrave;ng chặt chẽ, chuy&ecirc;n nghiệp để tạo ra những sản phẩm gi&agrave;y d&eacute;p &ldquo;Made in Viet Nam&rdquo; chất lượng, mang đến vẻ đẹp mềm mại, uyển chuyển, chứa đựng linh hồn của người l&agrave;m ra n&oacute; m&agrave; &iacute;t sản phẩm n&agrave;o c&oacute; được.</p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>Cam kết của ch&uacute;ng t&ocirc;i?</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">Cam kết của ch&uacute;ng t&ocirc;i l&agrave; tạo ra những sản phẩm chất lượng, &ecirc;m &aacute;i, kiểu d&aacute;ng đẹp, thời trang v&agrave; gi&aacute; cả hợp l&yacute;&hellip;để mọi phụ nữ Việt Nam đều h&agrave;i l&ograve;ng khi sử dụng sản phẩm của Juno.</p>\r\n\r\n<p style=\"text-align:justify\"><em><strong>Sứ mệnh của ch&uacute;ng t&ocirc;i?</strong></em></p>\r\n\r\n<p style=\"text-align:justify\">Juno sẽ kh&ocirc;ng ngừng đổi mới v&agrave; ph&aacute;t triển, trở th&agrave;nh người bạn đồng h&agrave;nh th&acirc;n thiết g&oacute;p phần v&agrave;o sự th&agrave;nh đạt, hạnh ph&uacute;c v&agrave; thịnh vượng của mọi phụ nữ Việt Nam.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/img16.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/img17.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/img18.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/img19.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/img20.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/img21.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/img22.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/img23.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/img24.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/img25.jpg\" style=\"height:533px; width:800px\" /></p>', '2018-08-09 19:18:51', '2018-08-10 02:38:51'),
(7, 'Hướng dẫn chọn cỡ giày', '<p><em><strong>Để biết cỡ ch&acirc;n của bạn ph&ugrave; hợp với Size gi&agrave;y bao nhi&ecirc;u của Juno, bạn h&atilde;y thực hiện c&aacute;ch đo như sau.</strong></em></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:15px\"><strong>Hướng dẫn c&aacute;ch đo ch&acirc;n</strong></span></p>\r\n\r\n<p><span style=\"font-size:15px\"><strong><img alt=\"\" src=\"/storage/avatar/images/IMG2/size.png\" style=\"height:711px; width:841px\" /></strong></span></p>', '2018-08-09 20:10:05', '2018-08-09 20:10:05'),
(8, 'Chính sách đổi trả', '<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/a5.jpg\" style=\"height:608px; width:800px\" /></p>\r\n\r\n<p><em><strong>Kh&aacute;ch mua h&agrave;ng Online muốn ĐỔI/TRẢ l&agrave;m theo c&aacute;c bước sau:&nbsp;</strong></em></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/a6.jpg\" style=\"height:844px; width:900px\" /></p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN CHI TIẾT CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ V&Agrave; HO&Agrave;N TIỀN JUNO.VN</strong></p>\r\n\r\n<p><em>Nhằm gi&uacute;p qu&yacute; kh&aacute;ch an t&acirc;m chọn lựa cho m&igrave;nh một đ&ocirc;i gi&agrave;y ưng &yacute; v&agrave; phục vụ kh&aacute;ch h&agrave;ng chu đ&aacute;o, JUNO th&ocirc;ng b&aacute;o đến qu&yacute; kh&aacute;ch h&agrave;ng CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ SẢN PHẨM chi tiết sau:</em><br />\r\n<br />\r\n<strong>I. ĐIỀU KIỆN ĐỔI - TRẢ</strong></p>\r\n\r\n<p><em><strong>Kh&ocirc;ng c&oacute;</strong>&nbsp;</em>(lu&ocirc;n lu&ocirc;n chấp nhận Đổi &ndash; Trả trong thời gian quy định Đổi &ndash; Trả)</p>\r\n\r\n<p><strong>II. THỜI GIAN ĐỔI - TRẢ</strong></p>\r\n\r\n<p><strong>2.1/ Hệ thống cửa h&agrave;ng :</strong></p>\r\n\r\n<p>+ Gi&agrave;y đổi/trả trong&nbsp;<strong>90 ng&agrave;y&nbsp;</strong>kể từ ng&agrave;y mua h&agrave;ng.</p>\r\n\r\n<p>+ T&uacute;i x&aacute;ch, v&iacute;, balo, d&eacute;p l&agrave;o đổi/trả trong&nbsp;<strong>30 ng&agrave;y&nbsp;</strong>kể từ ng&agrave;y mua h&agrave;ng</p>\r\n\r\n<p>+ Sản phẩm khuyến mại ClearStock c&oacute; gi&aacute; trị thanh to&aacute;n&nbsp;<em><strong>dưới 250,000</strong>&nbsp;</em>đồng được đổi/trả trong&nbsp;<strong>7 ng&agrave;y&nbsp;</strong>kể từ ng&agrave;y mua h&agrave;ng.&nbsp;Sản phẩm khuyến m&atilde;i c&oacute; gi&aacute; thực thanh to&aacute;n = hoặc lớn hơn 250,000 đồng đổi trả như&nbsp;sản phẩm mới.<br />\r\n<strong>2.2/ Online :</strong></p>\r\n\r\n<p>+ Gi&agrave;y đổi/trả trong&nbsp;<strong>90 ng&agrave;y&nbsp;</strong>(T&iacute;nh từ ng&agrave;y kh&aacute;ch nhận h&agrave;ng).</p>\r\n\r\n<p>+ T&uacute;i x&aacute;ch, v&iacute;, balo, d&eacute;p l&agrave;o đổi/trả trong&nbsp;<strong>30 ng&agrave;y&nbsp;</strong>(T&iacute;nh từ ng&agrave;y kh&aacute;ch nhận h&agrave;ng).</p>\r\n\r\n<p>+ Sản phẩm khuyến mại ClearStock c&oacute; gi&aacute; trị thanh to&aacute;n&nbsp;<strong>dưới 250,000 đồng</strong>&nbsp;được đổi/trả trong&nbsp;<strong>7 ng&agrave;y&nbsp;</strong>(T&iacute;nh từ ng&agrave;y kh&aacute;ch nhận h&agrave;ng).&nbsp;Sản phẩm khuyến m&atilde;i c&oacute; gi&aacute; thực thanh to&aacute;n = hoặc lớn hơn 250,000 đồng đổi trả như&nbsp;sản phẩm mới.<br />\r\n<strong>2.3/ Market Place (sản phẩm Juno b&aacute;n tại c&aacute;c trang Market Place):</strong></p>\r\n\r\n<p>+ Theo ch&iacute;nh s&aacute;ch đổi trả của c&aacute;c trang Market Place.&nbsp;<br />\r\n+ Vui l&ograve;ng li&ecirc;n hệ bộ phận Chăm s&oacute;c kh&aacute;ch h&agrave;ng của Market Place để được hướng dẫn chi tiết</p>\r\n\r\n<p><strong>+ Market Place:</strong>&nbsp;Lazada; Zalora; Tiki; Shopee</p>\r\n\r\n<p><strong>III. QUY TR&Igrave;NH ĐỔI TRẢ</strong></p>\r\n\r\n<p><strong>3.1/ &Aacute;p dụng đổi trả ch&eacute;o tr&ecirc;n to&agrave;n hệ thống:</strong></p>\r\n\r\n<p>- Cho ph&eacute;p Đổi Trả ch&eacute;o giữa c&aacute;c cửa h&agrave;ng</p>\r\n\r\n<p>- Cho ph&eacute;p Đổi Trả ch&eacute;o giữa mua Online v&agrave; cửa h&agrave;ng.</p>\r\n\r\n<p>- Kh&ocirc;ng &aacute;p dụng ĐỔI - TRẢ với c&aacute;c k&ecirc;nh Market Place như b&aacute;n qua Tiki, Zalora, Lazada, Shopee...</p>\r\n\r\n<p><strong>3.2/ C&ugrave;ng m&atilde; sản phẩm (chỉ đổi size, đổi m&agrave;u)</strong>:&nbsp;<strong>Đổi miễn ph&iacute;</strong></p>\r\n\r\n<p><strong>3.3/ Đổi kh&aacute;c m&atilde; sản phẩm: T&iacute;nh theo gi&aacute; trị tại thời điểm đổi h&agrave;ng:</strong></p>\r\n\r\n<p>- Gi&aacute; trị SP mới tại thời điểm đổi h&agrave;ng &gt;Gi&aacute; trị SP cũ (dựa theo gi&aacute; trị tr&ecirc;n h&oacute;a đơn thanh to&aacute;n): kh&aacute;ch h&agrave;ng sẽ b&ugrave; th&ecirc;m tiền phần ch&ecirc;nh lệch.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>V&iacute; dụ: SP mua với gi&aacute; 250.000đ . SP muốn đổi gi&aacute; trị 300.000đ =&gt; KH sẽ b&ugrave; 50.000đ</em></p>\r\n\r\n<p>- Gi&aacute; trị SP mới tại thời điểm đổi h&agrave;ng &lt; Gi&aacute; trị SP cũ (dựa tr&ecirc;n gi&aacute; trị tr&ecirc;n h&oacute;a đơn thanh to&aacute;n):<strong>JUNO sẽ ho&agrave;n lại tiền thừa</strong>.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>&nbsp;V&iacute; dụ: SP mua với gi&aacute; 250.000đ, SP muốn đổi gi&aacute; trị 200.000đ =&gt; JUNO sẽ ho&agrave;n lại 50.000đ cho kh&aacute;ch h&agrave;ng</em><br />\r\n<strong>Ghi ch&uacute;:</strong></p>\r\n\r\n<p>Chương tr&igrave;nh kh&aacute;ch h&agrave;ng th&acirc;n thiết Giảm 49% Dịp Sinh Nhật v&agrave; Ưu Đ&atilde;i Giảm Mỗi Lần Mua Sắm (-5% cho th&agrave;nh vi&ecirc;n Bạc, -10% cho th&agrave;nh vi&ecirc;n V&agrave;ng, -15% cho th&agrave;nh vi&ecirc;n Kim Cương):</p>\r\n\r\n<p>- Thời gian sử dụng ưu đ&atilde;i giảm 49%: 7 ng&agrave;y (3 ng&agrave;y trước sinh nhật, ng&agrave;y sinh nhật v&agrave; 3 ng&agrave;y sau sinh nhật).<br />\r\n- Thời hạn đổi trả sản phẩm sử dụng ưu đ&atilde;i Giảm 49% Dịp Sinh Nhật v&agrave; Ưu Đ&atilde;i Giảm Mỗi Lần Mua Sắm: Theo gi&aacute; trị thanh to&aacute;n.<br />\r\n<strong>90 ng&agrave;y với gi&agrave;y (Gi&aacute; trị thanh to&aacute;n tr&ecirc;n 250.000đ)</strong><br />\r\n<strong>30 ng&agrave;y với T&uacute;i (Gi&aacute; trị thanh to&aacute;n tr&ecirc;n 250.000đ)</strong><br />\r\n<strong>7 ng&agrave;y với sản phẩm c&oacute; gi&aacute; trị thanh to&aacute;n dưới 250.000đ</strong></p>\r\n\r\n<p><strong>3.4/ Trường hợp TRẢ sản phẩm:</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng được quyền trả lại sản phẩm v&agrave; nhận lại 100% số tiền đ&atilde; thanh to&aacute;n bằng tiền mặt ngay tại cửa h&agrave;ng JUNO hoặc bằng chuyển khoản nếu kh&aacute;ch mua Online.</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong></p>\r\n\r\n<p>- Online: (kh&aacute;ch h&agrave;ng gửi h&igrave;nh ảnh hoặc sản phẩm về cho kho h&agrave;ng online)</p>\r\n\r\n<p>+ Sản phẩm do lỗi sản xuất: mọi chi ph&iacute; vận chuyển trả h&agrave;ng do Juno chi trả</p>\r\n\r\n<p>+ L&yacute; do kh&aacute;c: mọi ch&iacute; ph&iacute; vận chuyển do kh&aacute;ch h&agrave;ng chi trả.</p>\r\n\r\n<p><strong><em>Mọi thắc mắc về chương tr&igrave;nh, vui l&ograve;ng li&ecirc;n hệ:</em></strong></p>\r\n\r\n<p>Hotline chăm s&oacute;c kh&aacute;ch h&agrave;ng: 1800 1160 (miễn ph&iacute; cuộc gọi)&nbsp;</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://juno.vn/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"juno.vn\">juno.vn</a></p>\r\n\r\n<p>Email:&nbsp;<a href=\"mailto:cskh@juno.vn\">cskh@juno.vn</a></p>\r\n\r\n<p>Fanpage:&nbsp;<a href=\"https://www.facebook.com/giayjuno/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"facebook.com/giayjuno\">facebook.com/giayjuno</a></p>', '2018-08-09 20:57:43', '2018-08-09 21:05:35'),
(9, 'Thanh toán và giao nhận', '<p><strong>NỘI DUNG CHI TIẾT CH&Iacute;NH S&Aacute;CH THANH TO&Aacute;N, GIAO NHẬN</strong></p>\r\n\r\n<p><em>Nhằm gi&uacute;p qu&yacute; kh&aacute;ch an t&acirc;m chọn lựa cho m&igrave;nh một đ&ocirc;i gi&agrave;y ưng &yacute; v&agrave; phục vụ kh&aacute;ch h&agrave;ng chu đ&aacute;o, JUNO th&ocirc;ng b&aacute;o đến qu&yacute; kh&aacute;ch h&agrave;ng CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ SẢN PHẨM chi tiết sau:</em></p>\r\n\r\n<p><strong>I. Ch&iacute;nh s&aacute;ch giao nhận</strong></p>\r\n\r\n<p><strong>&nbsp;1.&nbsp;</strong><strong>Ph&iacute; ship</strong></p>\r\n\r\n<p>- Juno miễn ph&iacute; giao h&agrave;ng tr&ecirc;n to&agrave;n quốc với sản phẩm trị gi&aacute; từ 300.000 VND</p>\r\n\r\n<p>- &Aacute;p dụng ph&iacute; vận chuyển 20.000 VND với sản phẩm dưới 300.000 VND</p>\r\n\r\n<p><strong>&nbsp;2.&nbsp;Thời gian giao h&agrave;ng</strong></p>\r\n\r\n<p>- Khu vực nội th&agrave;nh H&agrave; Nội v&agrave; TP.HCM: Từ 1 &ndash; 2 ng&agrave;y</p>\r\n\r\n<p>- Khu vực ngoại th&agrave;nh v&agrave; c&aacute;c th&agrave;nh phố lớn: 3 &ndash; 4 ng&agrave;y</p>\r\n\r\n<p>- C&aacute;c khu vực kh&aacute;c: 4 &ndash; 5 ng&agrave;y</p>\r\n\r\n<p>&nbsp;<strong>II.</strong>&nbsp;<strong>Ch&iacute;nh s&aacute;ch thanh to&aacute;n</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn c&aacute;c h&igrave;nh thức thanh to&aacute;n sau khi mua sắm trực tuyến tại Juno.vn.</p>\r\n\r\n<p>&nbsp;<strong>1.&nbsp;</strong><strong>Thanh to&aacute;n trực tiếp COD :</strong></p>\r\n\r\n<p>COD (dịch vụ giao h&agrave;ng nhận tiền):&nbsp; Nh&acirc;n vi&ecirc;n vận chuyển thu tiền mặt khi giao h&agrave;ng cho kh&aacute;c.</p>\r\n\r\n<p><strong>&nbsp;2.</strong>&nbsp;<strong>Chuyển khoản trực tiếp v&agrave;o số t&agrave;i khoản JUNO:</strong></p>\r\n\r\n<p>Th&ocirc;ng tin chuyển khoản: 1</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Kỹ Thương Việt Nam - Chi Nh&aacute;nh S&agrave;i G&ograve;n ( Techcombank)</p>\r\n\r\n<p>- T&ecirc;n t&agrave;i khoản:&nbsp;C&ocirc;ng ty cổ phần sản xuất thương mại dịch vụ Juno</p>\r\n\r\n<p>- Số t&agrave;i khoản:&nbsp;&lrm;19166686668998</p>\r\n\r\n<p>Th&ocirc;ng tin chuyển khoản :2&nbsp;</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP &Aacute; Ch&acirc;u - Chi Nh&aacute;nh Nh&agrave; Rồng (ACB)</p>\r\n\r\n<p>- T&ecirc;n T&agrave;i khoản: C&ocirc;ng ty cổ phần sản xuất thương mại dịch vụ Juno</p>\r\n\r\n<p>- Số t&agrave;i khoản: 900990098</p>\r\n\r\n<p><strong>&nbsp;3.&nbsp;</strong><strong>Thanh to&aacute;n online quả cổng Napas bằng thẻ ATM nội địa</strong></p>\r\n\r\n<p><strong>&nbsp;4. Thanh to&aacute;n online quả cổng Napas bằng thẻ Visa/Master Card</strong></p>\r\n\r\n<p>* Để sử dụng phương thức thanh to&aacute;n n&agrave;y, t&agrave;i khoản ng&acirc;n h&agrave;ng của qu&yacute; kh&aacute;ch cần đăng k&yacute; dịch vụ Internet Banking với ng&acirc;n h&agrave;ng để chuyển khoản Online được.&nbsp;</p>\r\n\r\n<p>* Danh s&aacute;ch thẻ nội địa được chấp nhận thanh to&aacute;n qua cổng Banknetvn (Smartlink):</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng N&ocirc;ng nghiệp v&agrave; Ph&aacute;t triển N&ocirc;ng th&ocirc;n (Agribank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Đầu tư v&agrave; Ph&aacute;t triển Việt Nam (BIDV)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP C&ocirc;ng thương Việt Nam (Vietinbank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP &Aacute; Ch&acirc;u (ACB)</p>\r\n\r\n<p>&nbsp;-Ng&acirc;n h&agrave;ng TMCP Đ&ocirc;ng Nam &Aacute; (SeABank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP S&agrave;i G&ograve;n Thương t&iacute;n( Sacombank )</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP S&agrave;i G&ograve;n C&ocirc;ng thương( Saigonbank )</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP An B&igrave;nh( ABBank )</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng Ph&aacute;t triển nh&agrave; Đồng bằng song Cửu Long ( MHB )</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Nh&agrave; H&agrave; Nội (Habubank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Đại Dương (OceanbankNg&acirc;n h&agrave;ng TMCP Phương T&acirc;y( Westernbank )</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng Xăng dầu Petrolimex( PG Bank )</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng li&ecirc;n doanh Việt Nga( VRB )</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Đại T&iacute;n (TRUSTBank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Nam &Aacute; (Nam A Bank)</p>\r\n\r\n<p>- Quĩ T&iacute;n dụng Nh&acirc;n d&acirc;n Trung Ương (CCF)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng Thương mại TNHH Một Th&agrave;nh Vi&ecirc;n Dầu kh&iacute; To&agrave;n cầu (GPBank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Đại &Aacute; (Dai A Bank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng Ngoại thương Việt Nam (Vietcombank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Kỹ thương (Techcombank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP S&agrave;i G&ograve;n (SCB)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Nam Việt (Navibank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Ti&ecirc;n Phong (Tien Phong Bank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Phương Nam (Southern Bank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Việt &Aacute; (VietA Bank)</p>\r\n\r\n<p>- h&agrave;ng TMCP Quốc tế (VIBank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Thịnh Vượng (VP Bank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Xuất nhập khẩu (EIB)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP H&agrave;ng Hải (MSB)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng Ph&aacute;t triển nh&agrave; tp Hồ Ch&iacute; Minh (HD Bank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TNHH Indo Vina Bank (IVB)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP S&agrave;i G&ograve;n H&agrave; Nội (SHB)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng Li&ecirc;n doanh VID Public</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Bắc &Aacute; (Nasbank)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Phương Đ&ocirc;ng (OCB)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TNHH MTV Standard Chartered (SCVN)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TNHH MTV Hong Leong VN (HLBVN)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Li&ecirc;n Việt (LVB)</p>\r\n\r\n<p>- Ng&acirc;n h&agrave;ng TMCP Đ&ocirc;ng &Aacute; (DongABank)</p>\r\n\r\n<p><strong><em>Mọi thắc mắc về chương tr&igrave;nh, vui l&ograve;ng li&ecirc;n hệ:</em></strong></p>\r\n\r\n<p>Hotline chăm s&oacute;c kh&aacute;ch h&agrave;ng: 1800 1160 (miễn ph&iacute; cuộc gọi)&nbsp;</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://juno.vn/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"juno.vn\">juno.vn</a></p>\r\n\r\n<p>Email:&nbsp;<a href=\"mailto:cskh@juno.vn\">cskh@juno.vn</a></p>\r\n\r\n<p>Fanpage:&nbsp;<a href=\"https://www.facebook.com/giayjuno\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"facebook.com/giayjuno\">facebook.com/giayjuno</a></p>', '2018-08-09 21:03:35', '2018-08-09 21:03:35'),
(10, 'Chính sách bảo mật', '<p><strong>NỘI DUNG CHI TIẾT CH&Iacute;NH S&Aacute;CH BẢO MẬT</strong></p>\r\n\r\n<p><strong>I.&nbsp;Ch&iacute;nh s&aacute;ch bảo mật v&agrave; chia sẻ th&ocirc;ng tin</strong></p>\r\n\r\n<p><strong>1. Mục đ&iacute;ch</strong></p>\r\n\r\n<p><em>JUNO.VN t&ocirc;n trọng sự ri&ecirc;ng tư, muốn bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; th&ocirc;ng tin thanh to&aacute;n của bạn. &quot;Ch&iacute;nh s&aacute;ch bảo mật&quot; dưới đ&acirc;y l&agrave; những cam kết m&agrave; ch&uacute;ng t&ocirc;i thực hiện, nhằm t&ocirc;n trọng v&agrave; bảo vệ quyền lợi của người truy cập.</em></p>\r\n\r\n<p><strong>2.&nbsp;</strong><strong>Quy định cụ thể</strong></p>\r\n\r\n<p><strong>2.1/&nbsp;Thu thập th&ocirc;ng tin</strong></p>\r\n\r\n<p>- Khi kh&aacute;ch h&agrave;ng thực hiện giao dịch/ đăng k&yacute; mở t&agrave;i khoản tại Juno.vn kh&aacute;ch h&agrave;ng phải cung cấp một số th&ocirc;ng tin cần thiết.</p>\r\n\r\n<p>- Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm bảo đảm th&ocirc;ng tin đ&uacute;ng v&agrave; lu&ocirc;n cập nhật đầy đủ v&agrave; ch&iacute;nh x&aacute;c nhất.</p>\r\n\r\n<p><strong>2.2/&nbsp;Lưu trữ v&agrave; bảo mật th&ocirc;ng tin ri&ecirc;ng</strong></p>\r\n\r\n<p>- Th&ocirc;ng tin kh&aacute;ch h&agrave;ng, cũng như c&aacute;c trao đổi giữa kh&aacute;ch h&agrave;ng v&agrave; Juno, đều được lưu trữ v&agrave; bảo mật bởi hệ thống của Juno.</p>\r\n\r\n<p>- Juno c&oacute; c&aacute;c biện ph&aacute;p th&iacute;ch hợp về kỹ thuật v&agrave; an ninh để ngăn chặn việc truy cập , sử dụng tr&aacute;i ph&eacute;p th&ocirc;ng tin kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong>2.3/&nbsp;Sử dụng th&ocirc;ng tin kh&aacute;ch h&agrave;ng</strong></p>\r\n\r\n<p>* Juno c&oacute; quyền sử dụng th&ocirc;ng tin kh&aacute;ch h&agrave;ng cung cấp để:</p>\r\n\r\n<p>- Giao h&agrave;ng theo địa chỉ m&agrave; qu&yacute; kh&aacute;ch cung cấp.</p>\r\n\r\n<p>- Cung cấp th&ocirc;ng tin li&ecirc;n quan đến sản phẩm, lợi &iacute;ch, ưu đ&atilde;i hay c&aacute;c thư từ kh&aacute;c.</p>\r\n\r\n<p>- Xử l&yacute; đơn đặt h&agrave;ng v&agrave; cung cấp dịch vụ, th&ocirc;ng tin qua trang web Juno.vn theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>- Sử dụng th&ocirc;ng tin đ&atilde; thu thập được từ c&aacute;c cookies nhằm cải thiện trải nghiệm người d&ugrave;ng v&agrave; chất lượng c&aacute;c dịch vụ của Juno.vn.</p>\r\n\r\n<p><strong>3.&nbsp;Li&ecirc;n kết với website kh&aacute;c</strong></p>\r\n\r\n<p>&nbsp;-&nbsp;Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm bảo vệ th&ocirc;ng tin t&agrave;i khoản của m&igrave;nh v&agrave; kh&ocirc;ng cung cấp bất kỳ th&ocirc;ng tin n&agrave;o li&ecirc;n quan đến t&agrave;i khoản v&agrave; mật khẩu truy cập tr&ecirc;n Juno.vn tr&ecirc;n c&aacute;c website kh&aacute;c.</p>\r\n\r\n<p><strong>4.&nbsp;Chia sẻ th&ocirc;ng tin kh&aacute;ch h&agrave;ng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>JUNO cam kết sẽ kh&ocirc;ng chia sẻ th&ocirc;ng tin của kh&aacute;ch h&agrave;ng cho bất kỳ một c&ocirc;ng ty n&agrave;o kh&aacute;c ngoại trừ những c&ocirc;ng ty v&agrave; c&aacute;c b&ecirc;n thứ ba c&oacute; li&ecirc;n quan trực tiếp đến việc giao h&agrave;ng. Ch&uacute;ng t&ocirc;i c&oacute; thể tiết lộ hoặc cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch trong c&aacute;c trường hợp thật sự cần thiết như sau:</p>\r\n\r\n<p>- Khi c&oacute; y&ecirc;u cầu của c&aacute;c cơ quan ph&aacute;p luật.</p>\r\n\r\n<p>- Chia sẻ th&ocirc;ng tin kh&aacute;ch h&agrave;ng với đối t&aacute;c chạy quảng c&aacute;o như Google v&iacute; dụ như tiếp thị lại kh&aacute;ch h&agrave;ng dựa theo h&agrave;nh vi của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>- Nghi&ecirc;n cứu thị trường v&agrave; c&aacute;c b&aacute;o c&aacute;o ph&acirc;n t&iacute;ch v&agrave; tuyệt đối kh&ocirc;ng chuyển cho b&ecirc;n thứ ba.</p>\r\n\r\n<p><strong>5.&nbsp;Sử dụng Cookie</strong></p>\r\n\r\n<p>Khi kh&aacute;ch h&agrave;ng sử dụng dịch vụ hoặc xem nội dung do JUNO&nbsp;cung cấp, ch&uacute;ng t&ocirc;i tự động thu thập v&agrave; lưu trữ một số th&ocirc;ng tin trong nhật k&yacute; m&aacute;y chủ. Những th&ocirc;ng tin n&agrave;y bao gồm:</p>\r\n\r\n<p>- C&aacute;c chi tiết về c&aacute;ch kh&aacute;ch h&agrave;ng sử dụng dịch vụ của Juno chẳng hạn như truy vấn t&igrave;m kiếm.</p>\r\n\r\n<p>- Địa chỉ giao thức Internet.</p>\r\n\r\n<p>- Th&ocirc;ng tin sự cố thiết bị như lỗi, hoạt động của hệ thống, c&agrave;i đặt phần cứng, loại tr&igrave;nh duyệt, ng&ocirc;n ngữ tr&igrave;nh duyệt, ng&agrave;y v&agrave; thời gian bạn y&ecirc;u cầu v&agrave; URL giới thiệu.</p>\r\n\r\n<p>- Cookie c&oacute; thể nhận dạng duy nhất tr&igrave;nh duyệt hoặc T&agrave;i khoản của kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p><strong>6. Li&ecirc;n hệ, giải đ&aacute;p, thắc mắc.</strong></p>\r\n\r\n<p>Bất kỳ khi n&agrave;o kh&aacute;ch h&agrave;ng cần hỗ trợ, xin vui l&ograve;ng li&ecirc;n hệ với JUNO tại Emai: cskh@juno.vn - ĐT: 1800 1160</p>\r\n\r\n<p><strong>II.&nbsp;Ch&iacute;nh s&aacute;ch bảo mật thanh to&aacute;n</strong></p>\r\n\r\n<p>- Hệ thống thanh to&aacute;n thẻ tr&ecirc;n Juno.vn được cung cấp bởi c&aacute;c đối t&aacute;c cổng thanh to&aacute;n đ&atilde; được cấp ph&eacute;p hoạt động hợp ph&aacute;p tại Việt Nam. Do đ&oacute;, c&aacute;c ti&ecirc;u chuẩn bảo mật thanh to&aacute;n thẻ của JUNO đảm bảo tu&acirc;n thủ theo c&aacute;c ti&ecirc;u chuẩn bảo mật của Đối t&aacute;c cộng thanh to&aacute;n.</p>\r\n\r\n<p>- Ngo&agrave;i ra, JUNO c&ograve;n c&oacute; c&aacute;c ti&ecirc;u chuẩn bảo mật giao dịch thanh to&aacute;n ri&ecirc;ng để đảm bảo an to&agrave;n c&aacute;c th&ocirc;ng tin thanh to&aacute;n của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong><em>Mọi thắc mắc về chương tr&igrave;nh, vui l&ograve;ng li&ecirc;n hệ:</em></strong></p>\r\n\r\n<p>Hotline chăm s&oacute;c kh&aacute;ch h&agrave;ng: 1800 1160 (miễn ph&iacute; cuộc gọi)&nbsp;</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://juno.vn/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"juno.vn\">juno.vn</a></p>\r\n\r\n<p>Email:&nbsp;<a href=\"mailto:cskh@juno.vn\">cskh@juno.vn</a></p>\r\n\r\n<p>Fanpage:&nbsp;<a href=\"https://www.facebook.com/giayjuno\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"facebook.com/giayjuno\">facebook.com/giayjuno</a></p>', '2018-08-09 21:09:34', '2018-08-09 21:09:34'),
(11, 'Câu hỏi thường gặp', '<p><strong>I. GIAO H&Agrave;NG, VẬN CHUYỂN</strong></p>\r\n\r\n<p><strong>1. Nếu t&ocirc;i đặt h&agrave;ng từ JUNO online, t&ocirc;i c&oacute; được giao h&agrave;ng tận nơi kh&ocirc;ng?</strong></p>\r\n\r\n<p>Nếu đặt h&agrave;ng JUNO online bạn sẽ được giao h&agrave;ng trực tiếp tận nơi.</p>\r\n\r\n<p><strong>2. T&ocirc;i phải trả ph&iacute; vận chuyển như thế n&agrave;o?</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sẽ được miễn ph&iacute; 100% cước vận chuyển trong nước với đơn h&agrave;ng trị gi&aacute; tr&ecirc;n 300.000vnd.</p>\r\n\r\n<p><strong>3. T&ocirc;i ở Tỉnh, t&ocirc;i sẽ nhận h&agrave;ng trong thời gian bao l&acirc;u?</strong></p>\r\n\r\n<p>Ở tỉnh bạn sẽ được nhận h&agrave;ng trong v&ograve;ng 4 - 5 ng&agrave;y (t&iacute;nh theo ng&agrave;y l&agrave;m việc) kể từ ng&agrave;y x&aacute;c nhận đơn h&agrave;ng.</p>\r\n\r\n<p><strong>4. Nếu trả lại sản phẩm ai sẽ l&agrave; người chịu ph&iacute; vận chuyển?</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sẽ chịu ph&iacute; vận chuyển khi chuyển ho&agrave;n sản phẩm về cho Juno.</p>\r\n\r\n<p><strong>5. T&ocirc;i c&oacute; thể nhận bưu kiện tại địa chỉ c&ocirc;ng ty t&ocirc;i l&agrave;m việc được kh&ocirc;ng?</strong></p>\r\n\r\n<p>V&acirc;ng, bưu kiện của bạn c&oacute; thể gửi đến địa chỉ văn ph&ograve;ng. Xin vui l&ograve;ng nhập địa chỉ v&agrave; t&ecirc;n họ đầy đủ của qu&yacute; kh&aacute;ch khi đặt h&agrave;ng.</p>\r\n\r\n<p><strong>6. T&ocirc;i c&oacute; thể nhận được lịch giao h&agrave;ng như thế n&agrave;o?</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sẽ được bộ phận đặt h&agrave;ng li&ecirc;n hệ trực tiếp để th&ocirc;ng b&aacute;o lịch giao h&agrave;ng.</p>\r\n\r\n<p><strong>II. HO&Agrave;N TRẢ, ĐỔI SẢN PHẨM</strong></p>\r\n\r\n<p><strong>1. Quy đinh ho&agrave;n trả v&agrave; đổi sản phẩm của JUNO như thế n&agrave;o?</strong></p>\r\n\r\n<p>Bạn h&atilde;y tham khảo ch&iacute;nh s&aacute;ch đổi trả sản phẩm của JUNO&nbsp;<a href=\"http://localhost:8000/pages/8\">tại đ&acirc;y</a>, để được cung cấp th&ocirc;ng tin đầy đủ v&agrave; chi tiết nhất. Ri&ecirc;ng đối với d&ograve;ng sản phẩm t&uacute;i v&agrave; phụ kiện điều kiện đổi trả chỉ được thực hiện trong v&ograve;ng 30 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng.</p>\r\n\r\n<p><strong>2. T&ocirc;i sẽ nhận lại sản phẩm đổi trong thời gian bao l&acirc;u?</strong></p>\r\n\r\n<p>Bạn h&atilde;y tham khảo trang thanh to&aacute;n giao nhận&nbsp;<a href=\"http://juno.vn/pages/thanh-toan-giao-nhan\">tại đ&acirc;y</a>, để được cung cấp th&ocirc;ng tin đầy đủ v&agrave; chi tiết nhất.&nbsp;</p>\r\n\r\n<p><strong>3. &nbsp;Nếu đổi trả t&ocirc;i kh&ocirc;ng mang theo ho&aacute; đơn v&agrave; phiếu th&ocirc;ng tin sản phẩm th&igrave; c&oacute; được đổi kh&ocirc;ng?</strong></p>\r\n\r\n<p>Trường hợp, kh&aacute;ch h&agrave;ng kh&ocirc;ng c&oacute; h&oacute;a đơn hoặc phiếu th&ocirc;ng tin sản phẩm th&igrave; phải chứng minh ng&agrave;y mua v&agrave; nh&acirc;n vi&ecirc;n sẽ đối so&aacute;t lại với hệ thống để hỗ trợ kh&aacute;ch h&agrave;ng nhanh nhất.</p>\r\n\r\n<p><strong>4. Lỗi như thế n&agrave;o mới được gọi l&agrave; lỗi về chất lượng sản phẩm</strong></p>\r\n\r\n<p><em>Đối với gi&agrave;y d&eacute;p:&nbsp;</em></p>\r\n\r\n<p>Lỗi chất lượng sản phẩm như: G&oacute;t kh&ocirc;ng vững (bị lắc); Bong si, tr&oacute;c si (l&atilde;o si). Một số trường hợp kh&aacute;c JUNO sẽ kiểm tra nguy&ecirc;n nh&acirc;n trước khi giải quyết.</p>\r\n\r\n<p><em>T&uacute;i x&aacute;ch:</em></p>\r\n\r\n<p>Lỗi chất lượng sản phẩm như: Logo d&aacute;n ngược, g&atilde;y tay cầm d&acirc;y kho&aacute;, đường chỉ may bị lỗi hoặc đứt, bề mặt da bị bong tr&oacute;c, bung kho&aacute; d&acirc;y đeo.</p>\r\n\r\n<p><em>Phụ kiện:</em></p>\r\n\r\n<p>Lỗi chất lượng sản phẩm như: da bong tr&oacute;c, mặt kho&aacute; bị rỉ s&eacute;t.</p>\r\n\r\n<p><strong>5. &nbsp;C&oacute; được đổi sản phẩm mới hoặc ho&agrave;n trả tiền kh&ocirc;ng?</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch sẽ được đổi trả v&agrave; ho&agrave;n tiền trong mọi trường hợp.</p>\r\n\r\n<p><strong>6. L&agrave;m thế n&agrave;o để được đổi h&agrave;ng?&nbsp;</strong></p>\r\n\r\n<p>Bạn h&atilde;y tham khảo ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng&nbsp;<a href=\"http://localhost:8000/pages/8\">tại đ&acirc;y</a>.</p>\r\n\r\n<p><strong>7. &nbsp;C&oacute; phải t&iacute;nh ph&iacute; vận chuyển khi đổi trả sản phẩm?</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sẽ chịu ph&iacute; vận chuyển khi gửi trả sản phẩm ho&agrave;n về cho Juno.</p>\r\n\r\n<p><strong>8. &nbsp;T&ocirc;i muốn đổi h&agrave;ng v&igrave; size, m&agrave;u sắc kh&ocirc;ng đ&uacute;ng c&oacute; được kh&ocirc;ng?</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng được đổi - trả với bất k&igrave; l&yacute; do g&igrave; trong thời gian đổi trả 90 ng&agrave;y cho sản phẩm gi&agrave;y d&eacute;p, 30 ng&agrave;y cho t&uacute;i v&agrave; phụ kiện.</p>\r\n\r\n<p><strong>9. &nbsp;T&ocirc;i mua h&agrave;ng rồi, kh&ocirc;ng vừa &yacute; c&oacute; thể đổi lại hay kh&ocirc;ng?</strong></p>\r\n\r\n<p>Tất nhi&ecirc;n rồi, khi mua h&agrave;ng nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng vừa &yacute; với sản phẩm, h&atilde;y cho Juno được biết, ch&uacute;ng t&ocirc;i sẽ đổi ngay sản phẩm cho kh&aacute;ch h&agrave;ng. Thời gian đổi trả 90 ng&agrave;y cho sản phẩm gi&agrave;y d&eacute;p, 30 ng&agrave;y cho t&uacute;i v&agrave; phụ kiện.</p>\r\n\r\n<p><strong>10. T&ocirc;i được thanh to&aacute;n qua h&igrave;nh thức n&agrave;o?</strong></p>\r\n\r\n<p><strong>- COD:</strong>&nbsp;Thanh to&aacute;n trực tiếp khi nhận h&agrave;ng cho nh&acirc;n vi&ecirc;n bưu điện</p>\r\n\r\n<p><strong>- Chuyển khoản:</strong>&nbsp;C&Ocirc;NG TY CỔ PHẦN SẢN XUẤT THƯƠNG MẠI DỊCH VỤ JUNO; Số TK: 102010001987430; Tại Ng&acirc;n h&agrave;ng TMCP C&ocirc;ng Thương Việt Nam &ndash; CN 8 Tp.HCM &nbsp;&nbsp;</p>\r\n\r\n<p><strong>11. T&ocirc;i đ&atilde; đặt h&agrave;ng, giờ muốn huỷ đơn h&agrave;ng phải l&agrave;m sao?</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ Juno.vn qua số 18001162, ch&uacute;ng t&ocirc;i sẽ hủy đơn h&agrave;ng cho q&uacute;y kh&aacute;ch.</p>\r\n\r\n<p><strong>12. T&ocirc;i đ&atilde; chọn h&igrave;nh thức thanh to&aacute;n COD, nhưng khi h&agrave;ng tới nơi, t&ocirc;i kh&ocirc;ng muốn lấy c&oacute; được kh&ocirc;ng?</strong></p>\r\n\r\n<p>Juno sẵn s&agrave;ng nhận lại h&agrave;ng.</p>\r\n\r\n<p><strong>III. ĐẶT H&Agrave;NG V&Agrave; THANH TO&Aacute;N</strong></p>\r\n\r\n<p><strong>1. &nbsp;T&ocirc;i c&oacute; thể hủy đặt h&agrave;ng khi chưa nhận được sản phẩm kh&ocirc;ng?</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể huỷ đặt h&agrave;ng khi chưa nhận được sản phẩm ngay cả khi đơn h&agrave;ng đ&atilde; được giao cho đơn vị vận chuyển.</p>\r\n\r\n<p><strong>2. &nbsp;Khi đặt h&agrave;ng, t&ocirc;i phải thanh to&aacute;n như thế n&agrave;o?</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sẽ nhận h&agrave;ng, nh&acirc;n vi&ecirc;n bưu điện sẽ thu tiền trực tiếp từ kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong>3. &nbsp;Nếu t&ocirc;i mua sản phẩm với số lượng nhiều th&igrave; gi&aacute; c&oacute; được giảm kh&ocirc;ng?</strong></p>\r\n\r\n<p>Khi mua h&agrave;ng với số lượng nhiều kh&aacute;ch h&agrave;ng sẽ được hưởng chế độ ưu đ&atilde;i, giảm gi&aacute; ngay tại thời điểm mua h&agrave;ng.</p>\r\n\r\n<p><strong>4. &nbsp;L&agrave;m thế n&agrave;o để đặt h&agrave;ng JUNO?</strong></p>\r\n\r\n<p>Rất đơn giản, bạn h&atilde;y truy cập trang web: JUNO.VN để đặt h&agrave;ng hoặc gửi email: shopping@juno.vn, gọi điện thoại số: 1800 1162 để đặt sản phẩm.</p>\r\n\r\n<p><strong>5. &nbsp;L&agrave;m sao để biết sản phẩm c&ograve;n h&agrave;ng hay hết h&agrave;ng?</strong></p>\r\n\r\n<p>Tr&ecirc;n website JUNO sẽ cung cấp th&ocirc;ng tin sản phẩm đang c&ograve;n h&agrave;ng hoặc hết h&agrave;ng cho kh&aacute;ch h&agrave;ng tham khảo.</p>\r\n\r\n<p><strong>6. &nbsp;Đặt h&agrave;ng trực tuyến c&oacute; những rủi ro g&igrave; kh&ocirc;ng?</strong></p>\r\n\r\n<p>Với JUNO, kh&aacute;ch h&agrave;ng kh&ocirc;ng phải lo lắng, v&igrave; ch&uacute;ng t&ocirc;i cung cấp sản phẩm chất lượng tốt, gi&aacute; cả phải chăng. Đặc biệt, kh&aacute;ch h&agrave;ng sẽ nhận được sản phẩm v&agrave; thanh to&aacute;n c&ugrave;ng một thời điểm.</p>\r\n\r\n<p><strong>7. T&ocirc;i muốn biết c&aacute;ch li&ecirc;n hệ tới Dịch vụ kh&aacute;ch h&agrave;ng v&agrave; thời gian c&oacute; thể tư vấn kh&aacute;ch h&agrave;ng?</strong></p>\r\n\r\n<p><em>Qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ Dịch vụ kh&aacute;ch h&agrave;ng theo th&ocirc;ng tin sau:&nbsp;</em></p>\r\n\r\n<p>313 Nguyễn Thị Thập, Q. 7, TP.HCM. Email: cskh@juno.vn. ĐT: 1800 1160.&nbsp;</p>\r\n\r\n<p>Thời gian tư vấn: Thứ hai đến thứ bảy: từ 8h30 đến 17h30.</p>', '2018-08-09 21:12:33', '2018-08-09 21:18:04'),
(12, 'Hướng dẫn mua hàng online', '<p>Khi mua h&agrave;ng Online, bạn c&oacute; thể lựa chọn một trong c&aacute;ch mua h&agrave;ng sau.</p>\r\n\r\n<p><strong>C&aacute;ch 1:</strong></p>\r\n\r\n<p>Gọi điện đến tổng đ&agrave;i (Miễn ph&iacute; cuộc gọi đến) 18001162 từ 8h30 đến 21h30 tất cả c&aacute;c ng&agrave;y trong tuần. Nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng Online sẽ ghi nhận th&ocirc;ng tin đặt h&agrave;ng của bạn.</p>\r\n\r\n<p><strong>C&aacute;ch 2:&nbsp;</strong>Đặt h&agrave;ng tr&ecirc;n website</p>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp;Bạn c&oacute; thể truy cập v&agrave;o website Juno.vn v&agrave; thực hiện c&aacute;c c&aacute;ch đặt h&agrave;ng đơn giản sau:</p>\r\n\r\n<p>- Nhập th&ocirc;ng tin khi đ&atilde; biết sản phẩm v&agrave;o &ocirc; t&igrave;m kiếm, bạn sẽ c&oacute; kết quả ngay sau khi ho&agrave;n th&agrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/tt.png\" style=\"height:406px; width:798px\" /></p>\r\n\r\n<p>- Click v&agrave;o từng danh mục sản phẩm để t&igrave;m kiếm<img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-01/tt5.png\" style=\"height:402px; width:799px\" /></p>\r\n\r\n<p>- Chat để được tư vấn v&agrave; đặt h&agrave;ng v&agrave;o &ocirc; ch&aacute;t g&oacute;c b&ecirc;n phải của m&agrave;n h&igrave;nh</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/tt2.png\" style=\"height:370px; width:799px\" /></p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;T&igrave;m được sản phẩm cần mua</p>\r\n\r\n<p>- Sau khi t&igrave;m được sản phẩm cần mua, bạn tiến h&agrave;nh đặt h&agrave;ng hoặc nếu muốn mua th&ecirc;m c&aacute;c sản phẩm kh&aacute;c bạn h&atilde;y th&ecirc;m sản phẩm v&agrave;o giỏ h&agrave;ng v&agrave; quay trở lại sản phẩm kh&aacute;c để tiến h&agrave;ng mua th&ecirc;m.</p>\r\n\r\n<p><em>*Q&uacute;a tr&igrave;nh n&agrave;y c&oacute; thể lặp lại cho đến khi qu&yacute; kh&aacute;ch ho&agrave;n tất việc bỏ tất cả c&aacute;c sản phẩm cần đặt mua v&agrave;o giỏ h&agrave;ng.&nbsp;</em></p>\r\n\r\n<p>- Tại trang giỏ h&agrave;ng, bạn c&oacute; thể bấm n&uacute;t &quot;Xo&aacute;&quot; nếu muốn huỷ sản phẩm đ&atilde; chọn để mua sản phẩm kh&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/avatar/images/IMG2/tt3.jpg\" style=\"height:382px; width:1000px\" /></p>\r\n\r\n<p>- Sau khi đ&atilde; chọn được sản phẩm cần mua, bạn bấm v&agrave;o n&uacute;t&nbsp;<strong>THANH TO&Aacute;N</strong>&nbsp;v&agrave; điền đầy đủ th&ocirc;ng tin c&aacute; nh&acirc;n bảng th&ocirc;ng tin</p>\r\n\r\n<p><em>* Th&ocirc;ng tin c&aacute; nh&acirc;n người nhận h&agrave;ng cần được điền ch&iacute;nh x&aacute;c v&agrave; đầy đủ để sản phẩm đến tay kh&aacute;ch h&agrave;ng nhanh nhất.</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"/storage/avatar/images/IMG2/IMG2-01/tt4.png\" style=\"height:539px; width:633px\" /></em></p>\r\n\r\n<p>- Chọn h&igrave;nh thức thanh to&aacute;n</p>\r\n\r\n<p>+ Thanh to&aacute;n khi nhận h&agrave;ng</p>\r\n\r\n<p>+&nbsp;Thanh to&aacute;n online qua cổng Napas bằng thẻ ATM nội địa</p>\r\n\r\n<p>+&nbsp;Thanh to&aacute;n online qua cổng Napas bằng thẻ Visa/Master Card</p>\r\n\r\n<p>- Nếu c&oacute; m&atilde; giảm gi&aacute;, bạn h&atilde;y điền đầy đủ ngay dưới &ocirc;&nbsp;<strong>&quot;M&Atilde; GIẢM GI&Aacute;&quot;</strong></p>\r\n\r\n<p>- Sau khi điền đầy đủ th&ocirc;ng tin v&agrave; kiểm tra lại đơn h&agrave;ng, gi&aacute; tiền, bạn h&atilde;y bấm v&agrave;o n&uacute;t&nbsp;<strong>HO&Agrave;N TẤT ĐƠN H&Agrave;NG</strong>&nbsp;gửi về cho Juno.</p>\r\n\r\n<p>Juno sẽ gửi cho bạn Email hoặc sẽ gọi điện lại để x&aacute;c nhận đơn h&agrave;ng v&agrave; th&ocirc;ng tin giao h&agrave;ng.</p>', '2018-08-09 21:29:14', '2018-08-09 21:30:02');

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
(41, 'Giày búp bê mũi nhọn quai chữ X cách điệu-Nâu', 'BB01124', NULL, 390000, 0, NULL, '127', 'Con', '1', 38, 23, '2018-09-05 14:52:12', '2018-09-05 14:52:12'),
(42, 'test', 'aa', '<p>cxcxcx</p>', 120000, 110000, 10, '1', 'Con', '1', 0, 0, '2020-06-24 13:34:55', '2020-06-24 13:34:55'),
(44, 'test-Xanh', 'aa', '<p>d</p>', 120000, 110000, 10, '1', 'Con', '1', 43, 1, '2020-06-24 13:42:15', '2020-06-24 13:42:15');

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
(12, 155, '2018-09-05 15:19:26', '2018-09-05 15:19:26'),
(42, 1, '2020-06-24 13:34:03', '2020-06-24 13:34:03'),
(42, 2, '2020-06-24 13:34:04', '2020-06-24 13:34:04'),
(42, 3, '2020-06-24 13:34:04', '2020-06-24 13:34:04');

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
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`oder_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

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
  MODIFY `att_value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oders`
--
ALTER TABLE `oders`
  MODIFY `oder_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
