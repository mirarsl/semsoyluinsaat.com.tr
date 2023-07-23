-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 22 Tem 2023, 15:05:50
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `semsoyluinsaat`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `abouts`
--

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `about` longtext COLLATE utf8mb4_unicode_ci,
  `mission` longtext COLLATE utf8mb4_unicode_ci,
  `vision` longtext COLLATE utf8mb4_unicode_ci,
  `history` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `history1` text COLLATE utf8mb4_unicode_ci,
  `history2` text COLLATE utf8mb4_unicode_ci,
  `history3` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `abouts`
--

INSERT INTO `abouts` (`id`, `about`, `mission`, `vision`, `history`, `created_at`, `updated_at`, `image`, `image2`, `image3`, `history1`, `history2`, `history3`) VALUES
(1, '<p>Yenilik&ccedil;i inşaat modelimiz, hızlı ve verimli bir şekilde yapıların tasarımını ve inşasını ger&ccedil;ekleştiriyoruz. Uzman ekibimizle y&uuml;ksek kalitede yapılar &uuml;retiyoruz. G&uuml;venilirlik, m&uuml;kemmellik ve yenilik&ccedil;ilikle tanışın!</p>\n<p>In veniam aute incididunt aliquip ex culpa ex aliquip cillum dolor adipisicing dolore dolor culpa voluptate ea adipisicing enim consectetur qui qui consequat dolore commodo cillum proident officia veniam pariatur veniam eiusmod sit cillum.</p>', '<p>Yenilik&ccedil;i inşaat modelimiz, hızlı ve verimli bir şekilde yapıların tasarımını ve inşasını ger&ccedil;ekleştiriyoruz. Uzman ekibimizle y&uuml;ksek kalitede yapılar &uuml;retiyoruz. G&uuml;venilirlik, m&uuml;kemmellik ve yenilik&ccedil;ilikle tanışın!</p>\n<p>In veniam aute incididunt aliquip ex culpa ex aliquip cillum dolor adipisicing dolore dolor culpa voluptate ea adipisicing enim consectetur qui qui consequat dolore commodo cillum proident officia veniam pariatur veniam eiusmod sit cillum.</p>', '<p>Enim reprehenderit laborum cupidatat laboris cillum veniam reprehenderit eiusmod amet. Voluptate occaecat eiusmod laborum magna officia velit commodo nisi cillum irure laborum adipisicing cupidatat. Cillum ullamco ut tempor incididunt est reprehenderit tempor proident minim.</p>', '<p>Enim reprehenderit laborum cupidatat laboris cillum veniam reprehenderit eiusmod amet. Voluptate occaecat eiusmod laborum magna officia velit commodo nisi cillum irure laborum adipisicing cupidatat. Cillum ullamco ut tempor incididunt est reprehenderit tempor proident minim.</p>', '2023-07-20 05:27:00', '2023-07-22 09:10:26', 'abouts\\July2023\\qefdQvjSNxwq9URjhLBu.jpg', 'abouts\\July2023\\iOzUttVpRIIdhQSbii0h.jpg', 'abouts\\July2023\\bSMNl8nE5dBzzco38qMw.jpg', 'abouts\\July2023\\fImcz1Ecknuf0dv0estI.jpg', 'abouts\\July2023\\4UHlscN0fwZzRhhKATSo.jpg', 'abouts\\July2023\\lCdndQVi8D9UdlgH2oza.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `phone2` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `email2` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `address2` text COLLATE utf8mb4_unicode_ci,
  `map` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `phone2`, `email`, `email2`, `address`, `address2`, `map`, `created_at`, `updated_at`) VALUES
(1, '90 123 456 78 90', NULL, 'info@semsoyluinsaat.com.tr', NULL, 'Köseköy Kocaeli', NULL, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12093.128721581594!2d30.0198174!3d40.733816!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cb5bbc16c61169%3A0x828d480e87351ff6!2zxZ5lbXNveWx1IMSwbsWfYWF0IFJvemEgWWHFn2FtIEV2bGVyaQ!5e0!3m2!1str!2str!4v1689608712975!5m2!1str!2str', '2023-07-22 10:51:00', '2023-07-22 10:53:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `counters`
--

DROP TABLE IF EXISTS `counters`;
CREATE TABLE IF NOT EXISTS `counters` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `counters`
--

INSERT INTO `counters` (`id`, `status`, `ordering`, `title`, `text`, `count`, `created_at`, `updated_at`) VALUES
(1, 1, 999, 'Yıllık Derin Tecrübe', 'İnşaat Sektöründe Köklü Deneyimle Öne Çıkıyoruz. Uzmanlığımızla Projelerinizi Güvenle İnşa Ediyoruz.', 15, '2023-07-22 07:35:42', '2023-07-22 07:35:42'),
(2, 1, 999, 'Tamamlanan Proje', 'Hızla bu sayıyı arttırmaya devam ediyoruz.', 100, '2023-07-22 07:36:02', '2023-07-22 07:36:02'),
(3, 1, 999, 'Mutlu Müşteri', 'Projelerimizi tercih eden mutlu müşteri sayımız bizim için çok önemli.', 2000, '2023-07-22 07:36:15', '2023-07-22 07:36:15'),
(4, 1, 999, 'Devam Eden Proje', 'Hiç durmadan projelerimize devam ediyoruz.', 22, '2023-07-22 07:36:30', '2023-07-22 07:36:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Başlık', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'text', 'rich_text_box', 'Açıklama', 0, 0, 1, 1, 1, 1, '{}', 3),
(25, 4, 'meta_title', 'text', 'Meta Başlığı', 0, 0, 1, 1, 1, 1, '{}', 4),
(26, 4, 'meta_desc', 'text_area', 'Meta Açıklaması', 0, 0, 1, 1, 1, 1, '{}', 5),
(27, 4, 'meta_tags', 'text', 'Meta Etiketleri (virgül ile ayırınız)', 0, 0, 1, 1, 1, 1, '{}', 6),
(28, 4, 'image', 'image', 'Görsel', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'created_at', 'timestamp', 'Oluşturulma Tarihi', 0, 0, 1, 1, 0, 1, '{}', 8),
(30, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(31, 4, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 10),
(32, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 5, 'about', 'rich_text_box', 'Hakkımızda', 0, 0, 1, 1, 1, 1, '{}', 2),
(34, 5, 'mission', 'rich_text_box', 'Misyon', 0, 0, 1, 1, 1, 1, '{}', 3),
(35, 5, 'vision', 'rich_text_box', 'Vizyon', 0, 0, 1, 1, 1, 1, '{}', 4),
(36, 5, 'history', 'rich_text_box', 'Tarihçe', 0, 0, 1, 1, 1, 1, '{}', 5),
(38, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(39, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(40, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 6, 'status', 'checkbox', 'Durum', 0, 1, 1, 1, 1, 1, '{\"on\":\"Aktif\",\"off\":\"Pasif\",\"checked\":true}', 2),
(42, 6, 'ordering', 'number', 'Sıralama', 0, 1, 1, 1, 1, 1, '{\"default\":999}', 3),
(43, 6, 'title', 'text', 'Başlık', 1, 1, 1, 1, 1, 1, '{}', 4),
(44, 6, 'text', 'text_area', 'Açıklama', 1, 0, 1, 1, 1, 1, '{}', 5),
(45, 6, 'icon', 'image', 'İkon', 1, 1, 1, 1, 1, 1, '{}', 6),
(46, 6, 'created_at', 'timestamp', 'Oluşturulma Tarihi', 0, 1, 1, 1, 0, 1, '{}', 7),
(47, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(48, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 7, 'status', 'checkbox', 'Durum', 0, 1, 1, 1, 1, 1, '{\"on\":\"Aktif\",\"off\":\"Pasif\",\"checked\":true}', 2),
(50, 7, 'ordering', 'number', 'Sıralama', 0, 1, 1, 1, 1, 1, '{\"default\":999}', 3),
(51, 7, 'title', 'text', 'Başlık', 1, 1, 1, 1, 1, 1, '{}', 4),
(52, 7, 'text', 'rich_text_box', 'Açıklama', 0, 0, 1, 1, 1, 1, '{}', 6),
(53, 7, 'image', 'image', 'Kapak Görseli', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":true}', 7),
(54, 7, 'video', 'file', 'Video', 0, 0, 1, 1, 1, 1, '{}', 9),
(55, 7, 'type', 'text', 'Tür', 1, 0, 1, 1, 1, 1, '{}', 10),
(56, 7, 'stage', 'select_dropdown', 'Aşaması', 1, 0, 1, 1, 1, 1, '{\"default\":1,\"options\":{\"1\":\"Devam Ediyor\",\"2\":\"Tamamland\\u0131\"}}', 11),
(57, 7, 'spot', 'text_area', 'Kısa Açıklama', 1, 0, 1, 1, 1, 1, '{}', 5),
(58, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(60, 7, 'gallery', 'multiple_images', 'Foto Galeri', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":true}', 8),
(61, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 8, 'status', 'checkbox', 'Durum', 0, 1, 1, 1, 1, 1, '{\"on\":\"Aktif\",\"off\":\"Pasif\",\"checked\":true}', 2),
(63, 8, 'ordering', 'number', 'Sıralama', 0, 1, 1, 1, 1, 1, '{\"default\":999}', 3),
(64, 8, 'title', 'text', 'Başlık', 1, 1, 1, 1, 1, 1, '{}', 4),
(65, 8, 'text', 'text', 'Açıklama', 1, 1, 1, 1, 1, 1, '{}', 5),
(66, 8, 'count', 'number', 'Sayı', 1, 1, 1, 1, 1, 1, '{}', 6),
(67, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(68, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 9, 'status', 'checkbox', 'Durum', 0, 1, 1, 1, 1, 1, '{\"on\":\"Aktif\",\"off\":\"Pasif\",\"checked\":true}', 2),
(71, 9, 'ordering', 'number', 'Sıralama', 0, 1, 1, 1, 1, 1, '{\"default\":999}', 3),
(72, 9, 'title', 'text', 'Başlık', 1, 1, 1, 1, 1, 1, '{}', 4),
(73, 9, 'text', 'rich_text_box', 'Açıklama', 1, 0, 1, 1, 1, 1, '{}', 5),
(74, 9, 'image', 'image', 'Kapak Görseli', 1, 1, 1, 1, 1, 1, '{}', 6),
(75, 9, 'created_at', 'timestamp', 'Oluşturulma Tarihi', 0, 1, 1, 1, 0, 1, '{}', 7),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(77, 5, 'image', 'image', 'Görsel', 1, 1, 1, 1, 1, 1, '{}', 9),
(78, 5, 'image2', 'image', 'Görsel', 1, 0, 1, 1, 1, 1, '{}', 10),
(79, 5, 'image3', 'image', 'Görsel', 1, 0, 1, 1, 1, 1, '{}', 11),
(80, 7, 'slug', 'hidden', 'Slug', 0, 0, 0, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 14),
(81, 9, 'slug', 'hidden', 'Slug', 1, 0, 0, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 9),
(82, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 10, 'title', 'text', 'Başlık', 1, 1, 1, 1, 1, 1, '{}', 3),
(85, 10, 'text', 'text_area', 'Açıklama', 1, 1, 1, 1, 1, 1, '{}', 4),
(86, 10, 'year', 'number', 'Yıl', 1, 1, 1, 1, 1, 1, '{}', 5),
(87, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(88, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(89, 10, 'ordering', 'text', 'Ordering', 0, 1, 1, 1, 1, 1, '{}', 2),
(90, 5, 'history1', 'image', 'Tarihçe Görseli', 0, 1, 1, 1, 1, 1, '{}', 12),
(91, 5, 'history2', 'image', 'Tarihçe Görseli', 0, 1, 1, 1, 1, 1, '{}', 13),
(92, 5, 'history3', 'image', 'Tarihçe Görseli', 0, 1, 1, 1, 1, 1, '{}', 14),
(93, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 12, 'phone', 'text', 'Telefon', 0, 1, 1, 1, 1, 1, '{}', 2),
(95, 12, 'phone2', 'text', 'Telefon', 0, 1, 1, 1, 1, 1, '{}', 3),
(96, 12, 'email', 'text', 'E-Posta', 0, 1, 1, 1, 1, 1, '{}', 4),
(97, 12, 'email2', 'text', 'E-Posta', 0, 1, 1, 1, 1, 1, '{}', 5),
(98, 12, 'address', 'text', 'Adres', 0, 1, 1, 1, 1, 1, '{}', 6),
(99, 12, 'address2', 'text', 'Adres', 0, 1, 1, 1, 1, 1, '{}', 7),
(100, 12, 'map', 'text', 'Map', 0, 1, 1, 1, 1, 1, '{}', 8),
(101, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(102, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(103, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 13, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 2),
(105, 13, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 3),
(106, 13, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 4),
(107, 13, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 5),
(108, 13, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 6),
(109, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(110, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(111, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 14, 'name', 'text', 'İsim Soyisim', 1, 1, 1, 0, 0, 0, '{}', 2),
(113, 14, 'email', 'text', 'E-Posta', 1, 1, 1, 0, 0, 0, '{}', 3),
(114, 14, 'message', 'text', 'Mesaj', 1, 1, 1, 0, 0, 0, '{}', 4),
(115, 14, 'created_at', 'timestamp', 'Mesaj Tarihi', 0, 1, 1, 1, 0, 0, '{}', 5),
(116, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(4, 'pages', 'pages', 'Sabit Sayfalar', 'Sabit Sayfalar', NULL, 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-20 03:52:47', '2023-07-20 03:58:36'),
(5, 'abouts', 'abouts', 'Kurumsal', 'Kurumsal', NULL, 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-20 05:27:06', '2023-07-22 09:18:06'),
(6, 'services', 'services', 'Hizmetler', 'Hizmetler', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-22 06:37:54', '2023-07-22 06:38:10'),
(7, 'projects', 'projects', 'Projeler', 'Projeler', NULL, 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-22 07:16:19', '2023-07-22 08:26:54'),
(8, 'counters', 'counters', 'Sayaç Alanı', 'Sayaç Alanı', NULL, 'App\\Counter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-22 07:35:16', '2023-07-22 07:35:16'),
(9, 'news', 'news', 'Haberler', 'Haberler', NULL, 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-22 07:39:03', '2023-07-22 08:39:18'),
(10, 'histories', 'histories', 'Tarihler', 'Tarihler', NULL, 'App\\History', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-22 09:00:06', '2023-07-22 09:03:43'),
(12, 'contacts', 'contacts', 'İletişim', 'İletişim', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-22 10:51:06', '2023-07-22 10:51:06'),
(13, 'socials', 'socials', 'Sosyal Medyalar', 'Sosyal Medyalar', NULL, 'App\\Social', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-07-22 11:02:02', '2023-07-22 11:03:24'),
(14, 'messages', 'messages', 'İletişim Mesajları', 'İletişim Mesajları', NULL, 'App\\Message', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-07-22 11:09:58', '2023-07-22 11:09:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `histories`
--

DROP TABLE IF EXISTS `histories`;
CREATE TABLE IF NOT EXISTS `histories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ordering` int DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `histories`
--

INSERT INTO `histories` (`id`, `ordering`, `title`, `text`, `year`, `created_at`, `updated_at`) VALUES
(1, 999, 'Deneme 123', 'Kısa Açıklama', 1995, '2023-07-22 09:00:35', '2023-07-22 09:00:35'),
(2, 999, 'İlk Yapı', 'kısa bilgi', 1998, '2023-07-22 09:00:53', '2023-07-22 09:00:53'),
(3, 999, 'Yeni nesil teknoloji', 'kısa açıklama', 2005, '2023-07-22 09:01:15', '2023-07-22 09:01:15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-07-20 03:34:34', '2023-07-20 03:34:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-07-20 03:34:34', '2023-07-20 03:34:34', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-07-20 03:34:34', '2023-07-20 03:34:34', 'voyager.settings.index', NULL),
(11, 1, 'Sabit Sayfalar', '', '_self', NULL, NULL, NULL, 15, '2023-07-20 03:52:47', '2023-07-20 03:52:47', 'voyager.pages.index', NULL),
(12, 1, 'Kurumsal', '', '_self', NULL, '#000000', NULL, 16, '2023-07-20 05:27:06', '2023-07-20 05:28:20', 'voyager.abouts.edit', '1'),
(13, 1, 'Hizmetler', '', '_self', NULL, '#000000', NULL, 17, '2023-07-22 06:37:54', '2023-07-22 06:38:21', 'voyager.services.index', 'null'),
(14, 1, 'Projeler', '', '_self', NULL, NULL, NULL, 18, '2023-07-22 07:16:19', '2023-07-22 07:16:19', 'voyager.projects.index', NULL),
(15, 1, 'Sayaç Alanı', '', '_self', NULL, NULL, NULL, 19, '2023-07-22 07:35:16', '2023-07-22 07:35:16', 'voyager.counters.index', NULL),
(16, 1, 'Haberler', '', '_self', NULL, NULL, NULL, 20, '2023-07-22 07:39:03', '2023-07-22 07:39:03', 'voyager.news.index', NULL),
(17, 1, 'Tarihler', '', '_self', NULL, NULL, NULL, 21, '2023-07-22 09:00:06', '2023-07-22 09:00:06', 'voyager.histories.index', NULL),
(19, 1, 'İletişim', '', '_self', NULL, '#000000', NULL, 22, '2023-07-22 10:51:06', '2023-07-22 10:51:26', 'voyager.contacts.edit', '1'),
(20, 1, 'Sosyal Medyalar', '', '_self', NULL, '#000000', NULL, 23, '2023-07-22 11:02:03', '2023-07-22 11:02:27', 'voyager.socials.edit', '1'),
(21, 1, 'İletişim Mesajları', '', '_self', NULL, NULL, NULL, 24, '2023-07-22 11:09:58', '2023-07-22 11:09:58', 'voyager.messages.index', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `status`, `ordering`, `title`, `text`, `image`, `created_at`, `updated_at`, `slug`) VALUES
(1, 1, 999, 'Nezahat Koral projesine start veriyoruz', '<p>Haber detayları Sed et ut et magna nulla pariatur eiusmod et quis consequat dolore labore id consequat pariatur elit in labore in mollit mollit id veniam dolor velit do sint non ex ex aliquip officia velit laborum minim occaecat incididunt excepteur voluptate sed culpa nostrud adipisicing non dolor qui id incididunt labore minim proident laborum id consequat ut est proident pariatur aute excepteur consectetur in in nostrud ut aute ullamco adipisicing occaecat eiusmod consectetur cupidatat dolore pariatur aliquip dolore dolor et consectetur enim cillum ullamco proident exercitation consectetur voluptate ad irure veniam proident exercitation incididunt veniam dolor dolor sunt esse deserunt ut eu ea excepteur irure sint non in nulla excepteur laboris ut dolore laborum in dolor elit ad nulla quis laborum sunt amet laboris tempor pariatur aliquip aute sit proident enim reprehenderit et ullamco incididunt aliqua adipisicing aliqua amet sit eiusmod deserunt officia cillum magna cupidatat reprehenderit exercitation ex dolor do culpa aliquip sint officia occaecat occaecat quis ut cupidatat dolore anim commodo proident cillum sed consequat amet sit irure consectetur veniam aute cillum amet velit sit laboris commodo sunt nulla consectetur.</p>', 'news\\July2023\\4YGJJRWygymfNZU4gfNT.jpg', '2023-07-22 07:39:00', '2023-07-22 08:40:27', 'nezahat-koral-projesine-start-veriyoruz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `text`, `meta_title`, `meta_desc`, `meta_tags`, `image`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Anasayfa', '', 'Anasayfa', 'Şemsoylu İnşaat Web Sitesi anasayfası', 'şemsoylu inşaat', 'pages\\July2023\\GPJJA9vHEI1LKmiSsIFM.jpg', '2023-07-20 03:53:00', '2023-07-20 04:00:55', 'anasayfa'),
(2, 'Kalite İnşaa Ediyoruz', '', 'Biz Kimiz', '', '', NULL, '2023-07-20 04:01:00', '2023-07-22 09:14:59', 'hakkimizda'),
(5, 'İnsan Kaynakları', '<p>Bizimle &ccedil;alışmak i&ccedil;in cv\'nizi <a href=\"mailto:info@semsoyluinsaat.com.tr\">info@semsoyluinsaat.com.tr</a> mail adresine ileterek, bizimle &ccedil;alışam fırsatı yakalayabiliriniz..</p>', 'İnsan Kaynakları', '', '', NULL, '2023-07-20 04:02:00', '2023-07-22 09:17:34', 'insan-kaynaklari'),
(6, 'Projeler', '', 'Projeler', '', '', NULL, '2023-07-20 04:03:06', '2023-07-20 04:03:06', 'projeler'),
(7, 'Haberler', '', 'Haberler', '', '', NULL, '2023-07-20 04:03:26', '2023-07-20 04:03:26', 'haberler'),
(8, 'İletişime Geç', '', 'İletişim', '', '', NULL, '2023-07-20 04:03:00', '2023-07-22 10:39:43', 'iletisim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(2, 'browse_bread', NULL, '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(3, 'browse_database', NULL, '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(4, 'browse_media', NULL, '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(5, 'browse_compass', NULL, '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(6, 'browse_menus', 'menus', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(7, 'read_menus', 'menus', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(8, 'edit_menus', 'menus', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(9, 'add_menus', 'menus', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(10, 'delete_menus', 'menus', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(11, 'browse_roles', 'roles', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(12, 'read_roles', 'roles', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(13, 'edit_roles', 'roles', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(14, 'add_roles', 'roles', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(15, 'delete_roles', 'roles', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(16, 'browse_users', 'users', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(17, 'read_users', 'users', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(18, 'edit_users', 'users', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(19, 'add_users', 'users', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(20, 'delete_users', 'users', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(21, 'browse_settings', 'settings', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(22, 'read_settings', 'settings', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(23, 'edit_settings', 'settings', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(24, 'add_settings', 'settings', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(25, 'delete_settings', 'settings', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(26, 'browse_pages', 'pages', '2023-07-20 03:52:47', '2023-07-20 03:52:47'),
(27, 'read_pages', 'pages', '2023-07-20 03:52:47', '2023-07-20 03:52:47'),
(28, 'edit_pages', 'pages', '2023-07-20 03:52:47', '2023-07-20 03:52:47'),
(29, 'add_pages', 'pages', '2023-07-20 03:52:47', '2023-07-20 03:52:47'),
(30, 'delete_pages', 'pages', '2023-07-20 03:52:47', '2023-07-20 03:52:47'),
(31, 'browse_abouts', 'abouts', '2023-07-20 05:27:06', '2023-07-20 05:27:06'),
(32, 'read_abouts', 'abouts', '2023-07-20 05:27:06', '2023-07-20 05:27:06'),
(33, 'edit_abouts', 'abouts', '2023-07-20 05:27:06', '2023-07-20 05:27:06'),
(34, 'add_abouts', 'abouts', '2023-07-20 05:27:06', '2023-07-20 05:27:06'),
(35, 'delete_abouts', 'abouts', '2023-07-20 05:27:06', '2023-07-20 05:27:06'),
(36, 'browse_services', 'services', '2023-07-22 06:37:54', '2023-07-22 06:37:54'),
(37, 'read_services', 'services', '2023-07-22 06:37:54', '2023-07-22 06:37:54'),
(38, 'edit_services', 'services', '2023-07-22 06:37:54', '2023-07-22 06:37:54'),
(39, 'add_services', 'services', '2023-07-22 06:37:54', '2023-07-22 06:37:54'),
(40, 'delete_services', 'services', '2023-07-22 06:37:54', '2023-07-22 06:37:54'),
(41, 'browse_projects', 'projects', '2023-07-22 07:16:19', '2023-07-22 07:16:19'),
(42, 'read_projects', 'projects', '2023-07-22 07:16:19', '2023-07-22 07:16:19'),
(43, 'edit_projects', 'projects', '2023-07-22 07:16:19', '2023-07-22 07:16:19'),
(44, 'add_projects', 'projects', '2023-07-22 07:16:19', '2023-07-22 07:16:19'),
(45, 'delete_projects', 'projects', '2023-07-22 07:16:19', '2023-07-22 07:16:19'),
(46, 'browse_counters', 'counters', '2023-07-22 07:35:16', '2023-07-22 07:35:16'),
(47, 'read_counters', 'counters', '2023-07-22 07:35:16', '2023-07-22 07:35:16'),
(48, 'edit_counters', 'counters', '2023-07-22 07:35:16', '2023-07-22 07:35:16'),
(49, 'add_counters', 'counters', '2023-07-22 07:35:16', '2023-07-22 07:35:16'),
(50, 'delete_counters', 'counters', '2023-07-22 07:35:16', '2023-07-22 07:35:16'),
(51, 'browse_news', 'news', '2023-07-22 07:39:03', '2023-07-22 07:39:03'),
(52, 'read_news', 'news', '2023-07-22 07:39:03', '2023-07-22 07:39:03'),
(53, 'edit_news', 'news', '2023-07-22 07:39:03', '2023-07-22 07:39:03'),
(54, 'add_news', 'news', '2023-07-22 07:39:03', '2023-07-22 07:39:03'),
(55, 'delete_news', 'news', '2023-07-22 07:39:03', '2023-07-22 07:39:03'),
(56, 'browse_histories', 'histories', '2023-07-22 09:00:06', '2023-07-22 09:00:06'),
(57, 'read_histories', 'histories', '2023-07-22 09:00:06', '2023-07-22 09:00:06'),
(58, 'edit_histories', 'histories', '2023-07-22 09:00:06', '2023-07-22 09:00:06'),
(59, 'add_histories', 'histories', '2023-07-22 09:00:06', '2023-07-22 09:00:06'),
(60, 'delete_histories', 'histories', '2023-07-22 09:00:06', '2023-07-22 09:00:06'),
(66, 'browse_contacts', 'contacts', '2023-07-22 10:51:06', '2023-07-22 10:51:06'),
(67, 'read_contacts', 'contacts', '2023-07-22 10:51:06', '2023-07-22 10:51:06'),
(68, 'edit_contacts', 'contacts', '2023-07-22 10:51:06', '2023-07-22 10:51:06'),
(69, 'add_contacts', 'contacts', '2023-07-22 10:51:06', '2023-07-22 10:51:06'),
(70, 'delete_contacts', 'contacts', '2023-07-22 10:51:06', '2023-07-22 10:51:06'),
(71, 'browse_socials', 'socials', '2023-07-22 11:02:03', '2023-07-22 11:02:03'),
(72, 'read_socials', 'socials', '2023-07-22 11:02:03', '2023-07-22 11:02:03'),
(73, 'edit_socials', 'socials', '2023-07-22 11:02:03', '2023-07-22 11:02:03'),
(74, 'add_socials', 'socials', '2023-07-22 11:02:03', '2023-07-22 11:02:03'),
(75, 'delete_socials', 'socials', '2023-07-22 11:02:03', '2023-07-22 11:02:03'),
(76, 'browse_messages', 'messages', '2023-07-22 11:09:58', '2023-07-22 11:09:58'),
(77, 'read_messages', 'messages', '2023-07-22 11:09:58', '2023-07-22 11:09:58'),
(78, 'edit_messages', 'messages', '2023-07-22 11:09:58', '2023-07-22 11:09:58'),
(79, 'add_messages', 'messages', '2023-07-22 11:09:58', '2023-07-22 11:09:58'),
(80, 'delete_messages', 'messages', '2023-07-22 11:09:58', '2023-07-22 11:09:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 2),
(32, 2),
(33, 1),
(33, 2),
(34, 2),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(68, 1),
(69, 2),
(73, 1),
(76, 1),
(77, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` text COLLATE utf8mb4_unicode_ci,
  `type` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `spot` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `projects`
--

INSERT INTO `projects` (`id`, `status`, `ordering`, `title`, `text`, `image`, `video`, `type`, `stage`, `spot`, `created_at`, `updated_at`, `gallery`, `slug`) VALUES
(1, 1, 999, 'Nezahat Koral ', '<p>Minim reprehenderit et do id eiusmod aliquip ullamco aute adipisicing et magna nulla dolore voluptate ea elit ut cillum ex non aliquip qui excepteur ut laboris consectetur sunt officia dolor consectetur in commodo eu dolore incididunt sed quis minim.</p>', 'projects\\July2023\\XU8m1gdplIIAYNBnRfTR.jpg', '[]', 'Bina', '1', 'Hayallerinizdeki eve sahip olacaksınız!', '2023-07-22 07:24:00', '2023-07-22 08:27:14', '[\"projects\\\\July2023\\\\FOwkQ3LfbO7YuLpzFdeg.jpg\",\"projects\\\\July2023\\\\VENvKZHr0ozUyONoFnPK.jpg\",\"projects\\\\July2023\\\\zg8ljIqfaDNLMikOZHU5.jpg\",\"projects\\\\July2023\\\\oRsV82ipnFBqruwPAiDx.jpg\",\"projects\\\\July2023\\\\ASMcL3FgJ6cTpgXOXk66.jpg\",\"projects\\\\July2023\\\\VnlJ1B2XhDJvR7jJTcJQ.jpg\",\"projects\\\\July2023\\\\B1MfhakTpYIkJGeVE0EA.jpg\"]', 'nezahat-koral'),
(2, 1, 999, 'Next', '', 'projects\\July2023\\G7T02SdIHTN1MOisha4p.jpg', '[]', 'Site', '2', 'deneme', '2023-07-22 09:52:24', '2023-07-22 09:52:24', NULL, 'next');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-07-20 03:34:34', '2023-07-20 03:34:34'),
(2, 'user', 'Normal User', '2023-07-20 03:34:34', '2023-07-20 03:34:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `status`, `ordering`, `title`, `text`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 999, 'Tasarım ve Planlama', 'İnşaat projelerinizin başarısı için etkili tasarım ve planlama hizmetleri sunuyoruz. Uzman mimarlarımız ve mühendislerimiz, hayallerinizi gerçeğe dönüştürecek özgün ve işlevsel tasarımlar oluştururken, projenizin tüm aşamalarını titizlikle planlıyoruz.', 'services\\July2023\\Bduns9sXf2mam0uVSjm2.png', '2023-07-22 06:46:17', '2023-07-22 06:46:17'),
(2, 1, 999, 'İnşaat ve Yapım', 'Deneyimli ekiplerimizle kalite standartlarına uygun olarak inşaat ve yapım hizmetleri sunuyoruz. Modern ekipmanlarımız ve ileri teknolojilerimizle, süreçleri verimli bir şekilde yönetiyor ve projenizin zamanında ve bütçeye uygun olarak tamamlanmasını sağlıyoruz.', 'services\\July2023\\i9Y0aUhKXKWLdDiaSrFC.png', '2023-07-22 06:47:13', '2023-07-22 06:47:13'),
(3, 1, 999, 'Proje Yönetimi ve Danışmanlık', 'Projenizin her aşamasında size destek olmak için proje yönetimi ve danışmanlık hizmetleri sunuyoruz. İş takibi, maliyet kontrolü, kaynak yönetimi ve risk analizi gibi konularda uzmanlığımızı kullanarak, projenizin başarılı bir şekilde ilerlemesini ve hedeflerinize ulaşmasını sağlıyoruz.', 'services\\July2023\\Z0OCXIX2yW1VhgKgwKrS.png', '2023-07-22 06:47:43', '2023-07-22 06:47:43');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `socials`
--

DROP TABLE IF EXISTS `socials`;
CREATE TABLE IF NOT EXISTS `socials` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `youtube` text COLLATE utf8mb4_unicode_ci,
  `linkedin` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `instagram`, `twitter`, `youtube`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, '#', '#', '#', '#', '#', NULL, '2023-07-22 11:03:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'pages', 'title', 1, 'ar', 'الصفحة الرئيسية', '2023-07-20 03:57:46', '2023-07-20 03:57:46'),
(2, 'pages', 'meta_title', 1, 'ar', 'الصفحة الرئيسية', '2023-07-20 04:00:55', '2023-07-20 04:00:55'),
(3, 'pages', 'slug', 1, 'ar', 'alsfhh-alreysyh', '2023-07-20 04:00:55', '2023-07-20 04:00:55'),
(4, 'pages', 'title', 2, 'ar', 'معلومات عنا', '2023-07-20 04:01:13', '2023-07-20 04:01:13'),
(5, 'pages', 'meta_title', 2, 'ar', 'معلومات عنا', '2023-07-20 04:01:13', '2023-07-20 04:01:13'),
(6, 'pages', 'slug', 2, 'ar', 'malwmat-ana', '2023-07-20 04:01:13', '2023-07-20 04:01:13'),
(13, 'pages', 'title', 5, 'ar', 'الموارد البشرية', '2023-07-20 04:02:48', '2023-07-20 04:02:48'),
(14, 'pages', 'meta_title', 5, 'ar', 'الموارد البشرية', '2023-07-20 04:02:48', '2023-07-20 04:02:48'),
(15, 'pages', 'slug', 5, 'ar', 'almward-albshryh', '2023-07-20 04:02:48', '2023-07-20 04:02:48'),
(16, 'pages', 'title', 6, 'ar', 'المشاريع', '2023-07-20 04:03:06', '2023-07-20 04:03:06'),
(17, 'pages', 'meta_title', 6, 'ar', 'المشاريع', '2023-07-20 04:03:06', '2023-07-20 04:03:06'),
(18, 'pages', 'slug', 6, 'ar', 'almsharya', '2023-07-20 04:03:06', '2023-07-20 04:03:06'),
(19, 'pages', 'title', 7, 'ar', 'أخبار', '2023-07-20 04:03:26', '2023-07-20 04:03:26'),
(20, 'pages', 'meta_title', 7, 'ar', 'أخبار', '2023-07-20 04:03:26', '2023-07-20 04:03:26'),
(21, 'pages', 'slug', 7, 'ar', 'akhbar', '2023-07-20 04:03:26', '2023-07-20 04:03:26'),
(22, 'pages', 'title', 8, 'ar', 'تواصل', '2023-07-20 04:03:47', '2023-07-20 04:03:47'),
(23, 'pages', 'meta_title', 8, 'ar', 'تواصل', '2023-07-20 04:03:47', '2023-07-20 04:03:47'),
(24, 'pages', 'slug', 8, 'ar', 'twasl', '2023-07-20 04:03:47', '2023-07-20 04:03:47'),
(25, 'projects', 'title', 1, 'ar', 'Nezahat Koral Binası', '2023-07-22 08:26:19', '2023-07-22 08:26:19'),
(26, 'projects', 'spot', 1, 'ar', 'açıklama', '2023-07-22 08:26:19', '2023-07-22 08:26:19'),
(27, 'projects', 'type', 1, 'ar', 'Bina', '2023-07-22 08:26:19', '2023-07-22 08:26:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Batuhan Arslan', 'batuhanarslan.developer@gmail.com', 'users/default.png', NULL, '$2y$10$efXuwZOKplsykEjyLg.onuca7vrVNNnzNNfnSyBkogSVdVNTbzUNC', 's5ikyw9OryRv8wvqN17DlqefvpINQLXmQmgSgB5vXtEQTSyEaRLURxRT3Cxb', NULL, '2023-07-20 03:35:01', '2023-07-20 03:35:01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
