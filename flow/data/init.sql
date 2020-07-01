-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2020-07-01 22:14:19
-- 服务器版本： 5.6.47-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crash`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '仪表盘', 'fa-bar-chart', '/', NULL, NULL, '2020-06-19 18:30:26'),
(2, 0, 2, '管理员', 'fa-tasks', NULL, NULL, NULL, '2020-06-19 18:30:59'),
(3, 2, 3, '用户管理', 'fa-users', 'auth/users', NULL, NULL, '2020-06-19 18:31:18'),
(4, 2, 4, '角色管理', 'fa-user', 'auth/roles', NULL, NULL, '2020-06-19 18:31:35'),
(5, 2, 5, '权限管理', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-06-19 18:31:49'),
(6, 2, 6, '菜单管理', 'fa-bars', 'auth/menu', NULL, NULL, '2020-06-19 18:32:05'),
(7, 2, 7, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2020-06-19 18:32:21'),
(8, 2, 8, 'Redis管理', 'fa-database', 'redis', NULL, '2020-06-19 18:28:25', '2020-06-19 18:32:55');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 18:06:58', '2020-06-19 18:06:58'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 18:20:32', '2020-06-19 18:20:32'),
(3, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:20:45', '2020-06-19 18:20:45'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 18:25:56', '2020-06-19 18:25:56'),
(5, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:26:03', '2020-06-19 18:26:03'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 18:28:32', '2020-06-19 18:28:32'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:28:39', '2020-06-19 18:28:39'),
(8, 1, 'admin/redis', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:29:14', '2020-06-19 18:29:14'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 18:29:15', '2020-06-19 18:29:15'),
(10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:29:39', '2020-06-19 18:29:39'),
(11, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_order":"[{\\"id\\":1},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7},{\\"id\\":8}]}]"}', '2020-06-19 18:29:47', '2020-06-19 18:29:47'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:29:47', '2020-06-19 18:29:47'),
(13, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:29:59', '2020-06-19 18:29:59'),
(14, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:30:02', '2020-06-19 18:30:02'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:30:10', '2020-06-19 18:30:10'),
(16, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:30:15', '2020-06-19 18:30:15'),
(17, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u4eea\\u8868\\u76d8","icon":"fa-bar-chart","uri":"\\/","roles":[null],"permission":null,"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/menu"}', '2020-06-19 18:30:26', '2020-06-19 18:30:26'),
(18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:30:26', '2020-06-19 18:30:26'),
(19, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:30:32', '2020-06-19 18:30:32'),
(20, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u7ba1\\u7406\\u5458","icon":"fa-tasks","uri":null,"roles":["1",null],"permission":null,"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/menu"}', '2020-06-19 18:30:58', '2020-06-19 18:30:58'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:30:59', '2020-06-19 18:30:59'),
(22, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:31:05', '2020-06-19 18:31:05'),
(23, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"fa-users","uri":"auth\\/users","roles":[null],"permission":null,"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/menu"}', '2020-06-19 18:31:17', '2020-06-19 18:31:17'),
(24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:31:18', '2020-06-19 18:31:18'),
(25, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:31:24', '2020-06-19 18:31:24'),
(26, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:31:24', '2020-06-19 18:31:24'),
(27, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u89d2\\u8272\\u7ba1\\u7406","icon":"fa-user","uri":"auth\\/roles","roles":[null],"permission":null,"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT"}', '2020-06-19 18:31:34', '2020-06-19 18:31:34'),
(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:31:35', '2020-06-19 18:31:35'),
(29, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:31:38', '2020-06-19 18:31:38'),
(30, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u6743\\u9650\\u7ba1\\u7406","icon":"fa-ban","uri":"auth\\/permissions","roles":[null],"permission":null,"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/menu"}', '2020-06-19 18:31:48', '2020-06-19 18:31:48'),
(31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:31:49', '2020-06-19 18:31:49'),
(32, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:31:57', '2020-06-19 18:31:57'),
(33, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u83dc\\u5355\\u7ba1\\u7406","icon":"fa-bars","uri":"auth\\/menu","roles":[null],"permission":null,"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/menu"}', '2020-06-19 18:32:05', '2020-06-19 18:32:05'),
(34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:32:06', '2020-06-19 18:32:06'),
(35, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:32:11', '2020-06-19 18:32:11'),
(36, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u64cd\\u4f5c\\u65e5\\u5fd7","icon":"fa-history","uri":"auth\\/logs","roles":[null],"permission":null,"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/menu"}', '2020-06-19 18:32:21', '2020-06-19 18:32:21'),
(37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:32:22', '2020-06-19 18:32:22'),
(38, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:32:27', '2020-06-19 18:32:27'),
(39, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"Redis\\u7ba1\\u7406","icon":"fa-database","uri":"redis","roles":[null],"permission":null,"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/menu"}', '2020-06-19 18:32:54', '2020-06-19 18:32:54'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:32:56', '2020-06-19 18:32:56'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-19 18:33:00', '2020-06-19 18:33:00'),
(42, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:33:14', '2020-06-19 18:33:14'),
(43, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:33:23', '2020-06-19 18:33:23'),
(44, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{"username":"admin","name":"\\u7ba1\\u7406\\u5458","password":"$2y$10$B.mToLzXSO5PNqB.RVuTCeoHToCHk2mm3OstBq5NxaufEDuJw3Qre","password_confirmation":"$2y$10$B.mToLzXSO5PNqB.RVuTCeoHToCHk2mm3OstBq5NxaufEDuJw3Qre","roles":["1",null],"permissions":["1",null],"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/users"}', '2020-06-19 18:33:39', '2020-06-19 18:33:39'),
(45, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-06-19 18:33:41', '2020-06-19 18:33:41'),
(46, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:34:52', '2020-06-19 18:34:52'),
(47, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{"username":"admin","name":"\\u7ba1\\u7406\\u5458","password":"$2y$10$B.mToLzXSO5PNqB.RVuTCeoHToCHk2mm3OstBq5NxaufEDuJw3Qre","password_confirmation":"$2y$10$B.mToLzXSO5PNqB.RVuTCeoHToCHk2mm3OstBq5NxaufEDuJw3Qre","roles":["1",null],"permissions":["1",null],"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT","_previous_":"http:\\/\\/dev.crash.11taotao.com\\/admin\\/auth\\/users"}', '2020-06-19 18:35:00', '2020-06-19 18:35:00'),
(48, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-06-19 18:35:02', '2020-06-19 18:35:02'),
(49, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:35:13', '2020-06-19 18:35:13'),
(50, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-06-19 18:36:24', '2020-06-19 18:36:24'),
(51, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{"username":"admin","name":"\\u7ba1\\u7406\\u5458","password":"$2y$10$B.mToLzXSO5PNqB.RVuTCeoHToCHk2mm3OstBq5NxaufEDuJw3Qre","password_confirmation":"$2y$10$B.mToLzXSO5PNqB.RVuTCeoHToCHk2mm3OstBq5NxaufEDuJw3Qre","roles":["1",null],"permissions":["1",null],"_token":"IZYhkjZyGfHmrGApqBmSVE2tN4Tc4HI8WC3mDqdk","_method":"PUT"}', '2020-06-19 18:36:36', '2020-06-19 18:36:36'),
(52, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-06-19 18:36:37', '2020-06-19 18:36:37'),
(53, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:36:45', '2020-06-19 18:36:45'),
(54, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 18:39:03', '2020-06-19 18:39:03'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 18:39:57', '2020-06-19 18:39:57'),
(56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:40:09', '2020-06-19 18:40:09'),
(57, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:40:15', '2020-06-19 18:40:15'),
(58, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:40:25', '2020-06-19 18:40:25'),
(59, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:44:57', '2020-06-19 18:44:57'),
(60, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:44:58', '2020-06-19 18:44:58'),
(61, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:00', '2020-06-19 18:45:00'),
(62, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:02', '2020-06-19 18:45:02'),
(63, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:04', '2020-06-19 18:45:04'),
(64, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:13', '2020-06-19 18:45:13'),
(65, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:14', '2020-06-19 18:45:14'),
(66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:16', '2020-06-19 18:45:16'),
(67, 1, 'admin/redis', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:18', '2020-06-19 18:45:18'),
(68, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:50', '2020-06-19 18:45:50'),
(69, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:51', '2020-06-19 18:45:51'),
(70, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:52', '2020-06-19 18:45:52'),
(71, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:54', '2020-06-19 18:45:54'),
(72, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 18:45:54', '2020-06-19 18:45:54'),
(73, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 22:55:42', '2020-06-19 22:55:42'),
(74, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 22:55:45', '2020-06-19 22:55:45'),
(75, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 22:55:47', '2020-06-19 22:55:47'),
(76, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 22:56:25', '2020-06-19 22:56:25'),
(77, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 22:56:40', '2020-06-19 22:56:40'),
(78, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:03:31', '2020-06-19 23:03:31'),
(79, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:03:44', '2020-06-19 23:03:44'),
(80, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:03:57', '2020-06-19 23:03:57'),
(81, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:04:25', '2020-06-19 23:04:25'),
(82, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:06:10', '2020-06-19 23:06:10'),
(83, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:06:21', '2020-06-19 23:06:21'),
(84, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:06:29', '2020-06-19 23:06:29'),
(85, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 23:06:45', '2020-06-19 23:06:45'),
(86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:06:53', '2020-06-19 23:06:53'),
(87, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-19 23:07:01', '2020-06-19 23:07:01'),
(88, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 23:07:13', '2020-06-19 23:07:13'),
(89, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-19 23:07:16', '2020-06-19 23:07:16'),
(90, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-20 02:00:07', '2020-06-20 02:00:07'),
(91, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:00:19', '2020-06-20 02:00:19'),
(92, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:00:22', '2020-06-20 02:00:22'),
(93, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:00:31', '2020-06-20 02:00:31'),
(94, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:01:36', '2020-06-20 02:01:36'),
(95, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:01:39', '2020-06-20 02:01:39'),
(96, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:01:43', '2020-06-20 02:01:43'),
(97, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:02:40', '2020-06-20 02:02:40'),
(98, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:03:06', '2020-06-20 02:03:06'),
(99, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:03:09', '2020-06-20 02:03:09'),
(100, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:03:15', '2020-06-20 02:03:15'),
(101, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:03:22', '2020-06-20 02:03:22'),
(102, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-20 02:04:09', '2020-06-20 02:04:09'),
(103, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-21 00:47:50', '2020-06-21 00:47:50'),
(104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-21 00:47:51', '2020-06-21 00:47:51'),
(105, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-21 00:47:55', '2020-06-21 00:47:55'),
(106, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:47:57', '2020-06-21 00:47:57'),
(107, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:48:01', '2020-06-21 00:48:01'),
(108, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:48:02', '2020-06-21 00:48:02'),
(109, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:48:06', '2020-06-21 00:48:06'),
(110, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:48:12', '2020-06-21 00:48:12'),
(111, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:48:14', '2020-06-21 00:48:14'),
(112, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:48:17', '2020-06-21 00:48:17'),
(113, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:48:26', '2020-06-21 00:48:26'),
(114, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:49:45', '2020-06-21 00:49:45'),
(115, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:49:54', '2020-06-21 00:49:54'),
(116, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-21 00:52:58', '2020-06-21 00:52:58'),
(117, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-22 17:18:59', '2020-06-22 17:18:59'),
(118, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 17:19:02', '2020-06-22 17:19:02'),
(119, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 17:19:05', '2020-06-22 17:19:05'),
(120, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 17:19:09', '2020-06-22 17:19:09'),
(121, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 17:19:24', '2020-06-22 17:19:24'),
(122, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 17:19:26', '2020-06-22 17:19:26'),
(123, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container","per_page":"100"}', '2020-06-22 17:19:31', '2020-06-22 17:19:31'),
(124, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:13', '2020-06-22 20:41:13'),
(125, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:17', '2020-06-22 20:41:17'),
(126, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:18', '2020-06-22 20:41:18'),
(127, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:19', '2020-06-22 20:41:19'),
(128, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:20', '2020-06-22 20:41:20'),
(129, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:35', '2020-06-22 20:41:35'),
(130, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:37', '2020-06-22 20:41:37'),
(131, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:37', '2020-06-22 20:41:37'),
(132, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-22 20:41:42', '2020-06-22 20:41:42'),
(133, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-24 01:59:14', '2020-06-24 01:59:14'),
(134, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-24 01:59:19', '2020-06-24 01:59:19'),
(135, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-24 01:59:23', '2020-06-24 01:59:23'),
(136, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-25 01:08:35', '2020-06-25 01:08:35'),
(137, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-25 01:08:40', '2020-06-25 01:08:40'),
(138, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-25 01:08:42', '2020-06-25 01:08:42'),
(139, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-25 01:08:44', '2020-06-25 01:08:44'),
(140, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-06-25 01:08:49', '2020-06-25 01:08:49');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Redis Manager', 'ext.redis-manager', '', '/redis*', '2020-06-19 18:28:25', '2020-06-19 18:28:25');

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-06-19 16:59:43', '2020-06-19 16:59:43');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$B.mToLzXSO5PNqB.RVuTCeoHToCHk2mm3OstBq5NxaufEDuJw3Qre', '管理员', NULL, 'ucD8isBybHXl0grjBDGhybt2bSwz4nL400OiJcTDsg0OI6w1VqIZXmh8qEy2', '2020-06-19 16:59:43', '2020-06-19 18:33:40');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_04_173148_create_admin_tables', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
