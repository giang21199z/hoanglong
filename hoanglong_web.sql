-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 29, 2017 lúc 06:40 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoanglong_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about_us`
--

CREATE TABLE `about_us` (
  `idnews` int(11) NOT NULL,
  `images` varchar(120) DEFAULT 'news.jpg',
  `title` text,
  `summary` text,
  `content` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_about_us_idcategory_about_us` int(11) NOT NULL,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `about_us`
--

INSERT INTO `about_us` (`idnews`, `images`, `title`, `summary`, `content`, `created_at`, `updated_at`, `category_about_us_idcategory_about_us`, `priority`) VALUES
(6, '75998b6e9a477e4a2074a2f50c1bed9211077182.png', 'Giới thiệu chung', 'Năm 2003, Bệnh viện Đa khoa Hoàng Long được thành lập trong bối cảnh ở Việt Nam còn khá lạ lẫm với hệ thống bệnh viện tư nhân. Từ những ngày đầu đi vào hoạt động, Hồng Ngọc đã từng bước tạo dựng uy tín và danh tiếng với mô hình bệnh viện – khách sạn tiên phong ở Hà Nội cũng như toàn khu vực miền Bắc.', '<p>Năm 2003, Bệnh viện Đa khoa Ho&agrave;ng Long được th&agrave;nh lập trong bối cảnh ở Việt Nam c&ograve;n kh&aacute; lạ lẫm với hệ thống bệnh viện tư nh&acirc;n. Từ những ng&agrave;y đầu đi v&agrave;o hoạt động, Hồng Ngọc đ&atilde; từng bước tạo dựng uy t&iacute;n v&agrave; danh tiếng với m&ocirc; h&igrave;nh bệnh viện &ndash; kh&aacute;ch sạn ti&ecirc;n phong ở H&agrave; Nội cũng như to&agrave;n khu vực miền Bắc.</p>\r\n\r\n<p>Năm 2003, Bệnh viện Đa khoa Ho&agrave;ng Long được th&agrave;nh lập trong bối cảnh ở Việt Nam c&ograve;n kh&aacute; lạ lẫm với hệ thống bệnh viện tư nh&acirc;n. Từ những ng&agrave;y đầu đi v&agrave;o hoạt động, Hồng Ngọc đ&atilde; từng bước tạo dựng uy t&iacute;n v&agrave; danh tiếng với m&ocirc; h&igrave;nh bệnh viện &ndash; kh&aacute;ch sạn ti&ecirc;n phong ở H&agrave; Nội cũng như to&agrave;n khu vực miền Bắc.</p>\r\n\r\n<p>Năm 2003, Bệnh viện Đa khoa Ho&agrave;ng Long được th&agrave;nh lập trong bối cảnh ở Việt Nam c&ograve;n kh&aacute; lạ lẫm với hệ thống bệnh viện tư nh&acirc;n. Từ những ng&agrave;y đầu đi v&agrave;o hoạt động, Hồng Ngọc đ&atilde; từng bước tạo dựng uy t&iacute;n v&agrave; danh tiếng với m&ocirc; h&igrave;nh bệnh viện &ndash; kh&aacute;ch sạn ti&ecirc;n phong ở H&agrave; Nội cũng như to&agrave;n khu vực miền Bắc.</p>\r\n\r\n<p>Năm 2003, Bệnh viện Đa khoa Ho&agrave;ng Long được th&agrave;nh lập trong bối cảnh ở Việt Nam c&ograve;n kh&aacute; lạ lẫm với hệ thống bệnh viện tư nh&acirc;n. Từ những ng&agrave;y đầu đi v&agrave;o hoạt động, Hồng Ngọc đ&atilde; từng bước tạo dựng uy t&iacute;n v&agrave; danh tiếng với m&ocirc; h&igrave;nh bệnh viện &ndash; kh&aacute;ch sạn ti&ecirc;n phong ở H&agrave; Nội cũng như to&agrave;n khu vực miền Bắc.</p>', '2017-05-27 00:33:35', '2017-05-27 00:33:35', 0, 5),
(7, 'news.jpg', 'Cơ sở hạ tầng', 'klsjdflask', '<p>fgasdfasdf</p>', '2017-05-27 00:33:45', '2017-05-27 00:33:45', 0, 1),
(8, 'news.jpg', 'Báo chí dân chí', 'kljsdgsdfgq', '<p>sdfgsdfg</p>', '2017-05-27 00:52:08', '2017-05-27 00:52:08', 2, 1),
(9, 'news.jpg', 'Tiep theo', 'gsdfg', '<p>sdfg</p>', '2017-05-27 01:07:25', '2017-05-27 01:07:25', 0, 1),
(10, 'news.jpg', 'gsdfg', 'sdfg', '<p>sdfg</p>', '2017-05-27 01:07:29', '2017-05-27 01:07:29', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullname` varchar(120) DEFAULT 'admin',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_about_us`
--

CREATE TABLE `category_about_us` (
  `idcategory_about_us` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_about_us`
--

INSERT INTO `category_about_us` (`idcategory_about_us`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Menu About us', NULL, NULL),
(2, 'Báo chí', '2017-05-25 00:54:58', '2017-05-25 00:54:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_gallery`
--

CREATE TABLE `category_gallery` (
  `idcategory_gallery` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_gallery`
--

INSERT INTO `category_gallery` (`idcategory_gallery`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gallery Phòng khám', NULL, NULL),
(2, 'Menu Gallery', '2017-05-27 02:00:28', '2017-05-27 02:00:28'),
(3, 'Gallery Sự kiện', '2017-05-27 02:01:09', '2017-05-27 02:01:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_news`
--

CREATE TABLE `category_news` (
  `idcategory_news` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_news`
--

INSERT INTO `category_news` (`idcategory_news`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Menu Tin tức', '2017-05-27 01:51:06', '2017-05-27 01:51:06'),
(1, 'Tin tức chuyên môn', '2017-05-23 00:37:01', '2017-05-23 00:37:01'),
(2, 'Tin tức y khoa', '2017-05-23 00:38:21', '2017-05-23 00:38:21'),
(3, 'Hội thảo chuyên ngành', '2017-05-23 00:38:32', '2017-05-23 00:38:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_service`
--

CREATE TABLE `category_service` (
  `idcategory_service` int(11) NOT NULL,
  `name` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_service`
--

INSERT INTO `category_service` (`idcategory_service`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Menu dịch vụ', '2017-05-23 01:06:28', '2017-05-23 01:06:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doctor`
--

CREATE TABLE `doctor` (
  `iddoctor` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `degree` text,
  `summary` text,
  `content` text,
  `avatar` varchar(120) DEFAULT 'doctor.jpg',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `specialist_idspecialist` int(11) NOT NULL,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `doctor`
--

INSERT INTO `doctor` (`iddoctor`, `name`, `degree`, `summary`, `content`, `avatar`, `created_at`, `updated_at`, `specialist_idspecialist`, `priority`) VALUES
(1, 'NGHIÊM ĐÌNH PHÀN', 'Tiến sĩ', 'Hướng dẫn và chấm các luận án cho các Nghiên cứu sinh, Thạc sĩ, Bác sĩ chuyên khoa II thuộc 5 chuyên ngành: Y học quân sự, Ngoại tổng hợp, Chấn thương chỉnh hình, Bỏng và Y học cổ truyền', '<p>\r\n                            Từ năm 2013-6/2016<br>\r\n                            Phó chủ nhiệm bộ môn nội đại học y Hà Nội .<br>\r\n                            Giám đốc trung tâm nội soi đại học y Hà Nội . <br>\r\n                            Trưởng khoa tiêu hóa bệnh viện Bạch Mai. <br>\r\n                            Bác Si Đào Văn Long là chuyên gia có hơn 30 năm kinh nghiệm trong lĩnh vực Tiêu hóa-Gan mật .Trước khi đứng ra\r\n                            thành lập và trở thành giám đốc phòng khám đa khoa Hoàng Long bác sĩ từng nắm giữ nhiều vị trí quan trong trong các bệnh viện ,\r\n                            trường đại học lớn và uy tín tại Hà Nội .\r\n                        </p>\r\n                        <p class=\"title-image text-center\">\r\n                            Bác sĩ Đào Văn Long\r\n                        </p>\r\n                        <p>\r\n                            Từ năm 2013-6/2016<br>\r\n                            Phó chủ nhiệm bộ môn nội đại học y Hà Nội .\r\n                            Giám đốc trung tâm nội soi đại học y Hà Nội .\r\n                            Trưởng khoa tiêu hóa bệnh viện Bạch Mai.\r\n                            Bác Si Đào Văn Long là chuyên gia có hơn 30 năm kinh nghiệm trong lĩnh vực Tiêu hóa-Gan mật .Trước khi đứng ra\r\n                            thành lập và trở thành giám đốc phòng khám đa khoa Hoàng Long bác sĩ từng nắm giữ nhiều vị trí quan trong trong các bệnh viện ,\r\n                            trường đại học lớn và uy tín tại Hà Nội .\r\n                        </p>', 'a54dc8589e814b25090371332bdd8dd5a1d91181.jpg', '2017-05-23 01:17:35', '2017-05-23 01:17:35', 1, 1),
(2, 'KIỀU THỊ MINH NGUYỆT', 'Tiến sĩ', 'Công tác tại Khoa khám bệnh Bệnh viện Quân y 103 ( 1977-2012)\r\nPGĐ chuyên môn Bệnh viện 16A Hà Đông (2013 - 3/2015)', 'Sợlkjag', '8fc1c4d3649b98c9d499cf5895b69c2cfdafad9d.jpg', '2017-05-27 11:09:22', '2017-05-27 11:09:22', 1, 1),
(3, 'PHẠM THỊ LAN HƯƠNG', 'Tiến sĩ', 'Bác sỹ chuyên khoa II\n\nNguyên Trưởng khoa Tiêu hóa Bệnh viện E (1985 - 2015)', 'dklfgj', '69a84a7b680e86516d367af660114fffde081514.jpg', '2017-05-27 11:09:40', '2017-05-27 11:09:40', 1, 1),
(4, 'ĐÀO VĂN LONG', 'Tiến sĩ', 'Ngoài ra, Giáo sư còn nhiều bài báo được đăng trong Tạp chí nghiên cứu y học.', 'jlkdjfgsdfg', '194937302cfbe7ed0e2e64e9f0fd280ad3a2c336.png', '2017-05-27 11:09:58', '2017-05-27 11:09:58', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feed_back`
--

CREATE TABLE `feed_back` (
  `idfeed_back` int(11) NOT NULL,
  `name_customer` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `avatar` varchar(120) DEFAULT 'avatar.jpg',
  `content` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feed_back`
--

INSERT INTO `feed_back` (`idfeed_back`, `name_customer`, `address`, `avatar`, `content`, `created_at`, `updated_at`, `priority`) VALUES
(1, 'Nguyễn Đình Giang', 'Yên Sở - Hoài Đức - Hà Nội', '4c2423d41f5a3ed6f7f54ee4aff3987c249533b6.jpg', 'Tôi rất hài lòng về dịch vụ của phòng khám. Tôi bệnh trĩ mà cũng có thể nội soi ra khỏi hihi. Tôi rất hài lòng về dịch vụ của phòng khám. Tôi bệnh trĩ mà cũng có thể nội soi ra khỏi hihi. Tôi rất hài lòng về dịch vụ của phòng khám. Tôi bệnh trĩ mà cũng có thể nội soi ra khỏi hihi.', '2017-05-27 11:43:18', '2017-05-27 11:43:18', 1),
(2, 'Hoàng Minh Trang', 'Daechon - Korean', 'f9296ff93710785d3e9a7d1029254b66d2bc734f.jpg', 'Tôi cảm thấy rất thoải mái', '2017-05-27 11:44:47', '2017-05-27 11:44:47', 1),
(3, 'Trần Hữu Hòa', 'Đường 70 - Tây Mỗ - Hà Nội', '71e324cd5ffba6e1f51a9a5ca4b988eca4402276.jpg', 'glksdfjgsdfg', '2017-05-27 11:46:51', '2017-05-27 11:46:51', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `idgallery` int(11) NOT NULL,
  `name` text,
  `url` varchar(120) DEFAULT 'gallery.jpg',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `category_gallery_idcategory_about_us` int(11) NOT NULL,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `idnews` int(11) NOT NULL,
  `images` varchar(120) DEFAULT 'news.jpg',
  `title` text,
  `summary` text,
  `content` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_news_idcategory` int(11) NOT NULL,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`idnews`, `images`, `title`, `summary`, `content`, `created_at`, `updated_at`, `category_news_idcategory`, `priority`) VALUES
(1, '6656733038ced8e8b26fa1ff4d797a4b73b8f6c2.jpg', 'Điều trị loét dạ dày tá tràng do sử dụng thuốc chống viêm giảm đau không steroid', 'Loét dạ dày tá tràng do thuốc chống viêm giảm đau không steroid hoặc thuốc chống ngưng tập tiểu cầu thường gặp  hình ảnh loét đa ổ ở nhiều vị trí của dạ dày, hành tá tràng, tá tràng, theo phân loại Johnson cải tiến thuộc loại V', '<p>Lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng do thuốc chống vi&ecirc;m giảm đau kh&ocirc;ng steroid hoặc thuốc chống ngưng tập tiểu cầu thường gặp &nbsp;h&igrave;nh ảnh lo&eacute;t đa ổ ở nhiều vị tr&iacute; của&nbsp;dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng, t&aacute; tr&agrave;ng, theo ph&acirc;n loại&nbsp;Johnson cải tiến&nbsp;thuộc loại V</p>\r\n\r\n<p><strong>1.Nguy&ecirc;n tắc điều trị</strong></p>\r\n\r\n<p>- Ngừng thuốc chống vi&ecirc;m giảm đau hoặc giảm liều đến mức thấp nhất c&oacute; thể.</p>\r\n\r\n<p>- D&ugrave;ng PPI với liều chuẩn.</p>\r\n\r\n<p>- C&aacute;c trường hợp lo&eacute;t lớn hoặc bắt buộc phải d&ugrave;ng thuốc chống vi&ecirc;m giảm đau kh&ocirc;ng steroid (NSAID) chỉ định d&ugrave;ng PPI l&agrave; bắt buộc v&agrave; liều cũng c&oacute; thể tăng l&ecirc;n.</p>\r\n\r\n<p>- Cần ch&uacute; &yacute; với bệnh nh&acirc;n bắt buộc phải d&ugrave;ng aspirin (v&iacute; dụ bệnh nh&acirc;n tim mạch), kể cả liều thấp, việc dừng aspirin v&agrave; chỉ d&ugrave;ng PPI sẽ l&agrave;m tăng tỷ lệ tử vong của người bệnh. Do vậy khi xem x&eacute;t dừng aspirin nhưng kh&ocirc;ng được k&eacute;o d&agrave;i tr&ecirc;n 5 ng&agrave;y v&agrave; cần hội chẩn th&ecirc;m &yacute; kiến của b&aacute;c sỹ chuy&ecirc;n khoa tim mạch.</p>\r\n\r\n<p>- N&ecirc;n x&aacute;c định sự c&oacute; mặt của&nbsp;<em>H.p</em>&nbsp;để c&oacute; biện ph&aacute;p xử tr&iacute; th&iacute;ch hợp.</p>\r\n\r\n<p><strong>2. Điều trị dự ph&ograve;ng lo&eacute;t khi bắt buộc phải sử dụng thuốc chống vi&ecirc;m giảm đau hoặc thuốc chống ngưng tập tiểu cầu</strong></p>\r\n\r\n<p><strong><em>2.1.C&aacute;c yếu tố nguy cơ ti&ecirc;u h&oacute;a thường gặp:</em></strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tuổi &gt; 65</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&ugrave;ng NSAID liều cao</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; tiền sử lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hiện đang sử dụng aspirin (kể cả liều thấp) + thuốc corticoid hoặc thuốc chống ngưng tập tiểu cầu.</p>\r\n\r\n<p><strong><em>2.2.Tr&ecirc;n cơ sở c&aacute;c yếu tố nguy cơ ti&ecirc;u h&oacute;a n&ecirc;u tr&ecirc;n, đối với những người c&oacute; hay kh&ocirc;ng c&oacute; nguy cơ tim mạch người ta ph&acirc;n ra c&aacute;c mức độ điều trị dự ph&ograve;ng kh&aacute;c nhau khi d&ugrave;ng (NSAID) như sau:</em></strong></p>\r\n\r\n<p><em>a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</em><em>Đối với c&aacute;c bệnh nh&acirc;n kh&ocirc;ng d&ugrave;ng aspirin liều thấp đề ph&ograve;ng biến chứng hoặc kh&ocirc;ng d&ugrave;ng thuốc chống ngưng tập tiểu cầu&nbsp;<strong>(nguy cơ tim mạch thấp)</strong></em></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n kh&ocirc;ng c&oacute; 4 nguy cơ ti&ecirc;u h&oacute;a n&ecirc;u tr&ecirc;n c&oacute; thể d&ugrave;ng NSAID liều thấp nhất đ&aacute;p ứng điều trị.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n c&oacute; 1-2 nguy cơ ti&ecirc;u h&oacute;a d&ugrave;ng NSAID kết hợp với PPI</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n c&oacute; tr&ecirc;n 2 nguy cơ ti&ecirc;u h&oacute;a n&ecirc;n chọn thuốc điều trị kh&aacute;c hoặc d&ugrave;ng thuốc ức chế COX2&nbsp;+ PPI</p>\r\n\r\n<p><strong>b.&nbsp;&nbsp;&nbsp;&nbsp;</strong><em>Đối với c&aacute;c bệnh nh&acirc;n c&oacute; d&ugrave;ng aspirin hoặc</em><strong>&nbsp;</strong><em>thuốc chống ngưng tập tiểu cầu&nbsp;</em><strong>(<em>nguy cơ tim mạch cao)</em></strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n kh&ocirc;ng c&oacute; 4 nguy cơ ti&ecirc;u h&oacute;a n&ecirc;u tr&ecirc;n d&ugrave;ng Naproxen kết hợp với PPI</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n c&oacute; 1-2 nguy cơ ti&ecirc;u h&oacute;a d&ugrave;ng Naproxen kết hợp với PPI</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n c&oacute; tr&ecirc;n 2 nguy cơ ti&ecirc;u h&oacute;a n&ecirc;n tr&aacute;nh d&ugrave;ng NSAID hoặc&nbsp; COX2&nbsp;n&ecirc;n sử dụng điều trị kh&aacute;c.</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:285.75pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/t1.jpg\" style=\"height:325px; width:410px\" /></p>\r\n			</td>\r\n			<td style=\"width:205.3pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/t2.jpg\" style=\"height:325px; width:410px\" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:285.75pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/t3.jpg\" style=\"height:325px; width:410px\" /></p>\r\n			</td>\r\n			<td style=\"width:205.3pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/t4.jpg\" style=\"height:325px; width:410px\" /></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; BN: L&ecirc; Văn D, 45 tuổi, soi ng&agrave;y 14.1.2017&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BN.&nbsp;Nguyễn Văn L, 66 tuổi, soi ng&agrave;y 09.1.2017</p>\r\n\r\n<p>Nguồn h&igrave;nh ảnh từ Ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long: h&igrave;nh ảnh b&ecirc;n phải l&agrave; dưới &aacute;nh s&aacute;ng trắng th&ocirc;ng thường, b&ecirc;n tr&aacute;i l&agrave; ở chế độ &aacute;nh s&aacute;ng BLI.</p>', '2017-05-23 00:43:04', '2017-05-23 00:43:04', 2, 2),
(2, 'b2b5e73c649a6170ac5420fbf477f3dc6723b7a8.jpg', 'Cắt khối u lớp niêm mạc thực quản qua nội soi dạ dày ống mềm', 'Ngày 28 tháng 04 năm 2017 tại phòng khám đa khoa Hoàng Long đã khám và điều trị cho bệnh nhân Đinh Thị Mai P, 36 tuổi, tỉnh Vĩnh Phúc.\r\n\r\nBệnh sử: Bệnh nhân bị đau vùng dưới xương ức cách đây 2 tuần, cơn đau thường xuất hiện về đêm, đau tức nhiều hơn. Bệnh nhân hay bị nôn, nôn sau khi ăn no. Ăn cơm cũng nôn, ăn cháo cũng nôn. Buổi tối sau khi ăn xong hay bị buồn nôn. Tình trạng nôn xuất hiện khá lâu (đã vài tháng). Bệnh nhân có cảm giác nhạt miệng, không muốn ăn. Trong vòng một tháng gần đây bệnh nhân sút 1kg. Bệnh nhân hay bị mất ngủ và có khó thở về đêm.', '<p>Ng&agrave;y 28 th&aacute;ng 04 năm 2017 tại ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long đ&atilde; kh&aacute;m v&agrave; điều trị cho bệnh nh&acirc;n Đinh Thị Mai P, 36 tuổi, tỉnh Vĩnh Ph&uacute;c.</p>\r\n\r\n<p><strong>Bệnh sử:</strong>&nbsp;Bệnh nh&acirc;n bị đau v&ugrave;ng dưới xương ức c&aacute;ch đ&acirc;y 2 tuần, cơn đau thường xuất hiện về đ&ecirc;m, đau tức nhiều hơn. Bệnh nh&acirc;n hay bị n&ocirc;n, n&ocirc;n sau khi ăn no. Ăn cơm cũng n&ocirc;n, ăn ch&aacute;o cũng n&ocirc;n. Buổi tối sau khi ăn xong hay bị buồn n&ocirc;n. T&igrave;nh trạng n&ocirc;n xuất hiện kh&aacute; l&acirc;u (đ&atilde; v&agrave;i th&aacute;ng). Bệnh nh&acirc;n c&oacute; cảm gi&aacute;c nhạt miệng, kh&ocirc;ng muốn ăn. Trong v&ograve;ng một th&aacute;ng gần đ&acirc;y bệnh nh&acirc;n s&uacute;t 1kg. Bệnh nh&acirc;n hay bị mất ngủ v&agrave; c&oacute; kh&oacute; thở về đ&ecirc;m.</p>\r\n\r\n<p><strong>Tiền sử bản th&acirc;n</strong>: C&aacute;ch đ&acirc;y 2 năm, bệnh nh&acirc;n đ&atilde; đến kh&aacute;m v&agrave; nội soi dạ d&agrave;y, nội soi đại tr&agrave;ng tại ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long v&agrave; được chẩn đo&aacute;n lo&eacute;t h&agrave;nh t&aacute; tr&agrave;ng . Soi đại tr&agrave;ng &nbsp;c&oacute; v&agrave;i t&uacute;i thừa nhỏ ở manh tr&agrave;ng. Bệnh nh&acirc;n đ&atilde; được điều trị ổn định.</p>\r\n\r\n<p><strong>Tiền sử gia đ&igrave;nh</strong>: Trong gia đ&igrave;nh, Bệnh nh&acirc;n c&oacute; bố đẻ bị ung thư manh tr&agrave;ng đ&atilde; 2 năm nay, &Ocirc;ng đ&atilde; được phẫu thuật tại Bệnh viện Việt Đức v&agrave; điều trị h&oacute;a chất, hiện c&ograve;n sống. Chị g&aacute;i của bố bệnh nh&acirc;n (B&aacute;c) cũng đ&atilde; được chẩn đo&aacute;n ung thư dạ d&agrave;y v&agrave; đ&atilde; phẫu thuật v&agrave; điều trị h&oacute;a chất hiện c&ograve;n sống. Với tiền sử gia đ&igrave;nh như vậy n&ecirc;n bệnh nh&acirc;n c&oacute; ch&uacute;t lo lắng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Qu&aacute; tr&igrave;nh điều trị:</strong></p>\r\n\r\n<p><br />\r\nBệnh nh&acirc;n được chỉ định nội soi dạ d&agrave;y thực quản tiền m&ecirc; với thế hệ m&aacute;y nội soi Laser. Kết quả cho thấy c&aacute;ch cung răng tr&ecirc;n 28cm, thực quản c&oacute; một khối nh&ocirc; l&ecirc;n cao, ni&ecirc;m mạc phủ tr&ecirc;n khối lồi nhẵn m&agrave;u sắc giống ni&ecirc;m mạc khu vực xung quanh. Khối u ch&acirc;n rộng k&iacute;ch thước d&agrave;i xấp xỉ 3cm. Ni&ecirc;m mạc hang vị xung huyết c&oacute; trợt. Bệnh nh&acirc;n được chẩn đo&aacute;n theo d&otilde;i u dưới ni&ecirc;m mạc thực quản v&agrave; vi&ecirc;m dạ d&agrave;y v&agrave; Hp (+).</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/khoiuhangv1.JPG\" style=\"height:315px; width:707px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;Để x&aacute;c định khối u thực quản xuất ph&aacute;t từ lớp n&agrave;o của th&agrave;nh thực quản. C&aacute;c b&aacute;c sĩ của ph&ograve;ng kh&aacute;m quyết định thăm kh&aacute;m th&ecirc;m một bước tiếp theo, thực hiện si&ecirc;u &acirc;m nội soi trước khi ra quyết định c&oacute; cắt khối u qua nội soi hay kh&ocirc;ng? &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Như ch&uacute;ng ta đ&atilde; biết, kỹ thuật si&ecirc;u &acirc;m nội soi l&agrave; kỹ thuật kết hợp giữa nội soi v&agrave; si&ecirc;u &acirc;m, trong đ&oacute; đầu d&ograve; si&ecirc;u &acirc;m được &aacute;p s&aacute;t với c&aacute;c tổn thương cần thăm d&ograve; qua đường nội soi: tổn thương th&agrave;nh thực quản, dạ d&agrave;y, trực tr&agrave;ng, tụy, mật. Trong trường hợp của bệnh nh&acirc;n n&agrave;y đầu d&ograve; si&ecirc;u &acirc;m &aacute;p s&aacute;t với khối u của th&agrave;nh thực quản. &nbsp;M&ocirc; tả h&igrave;nh ảnh si&ecirc;u &acirc;m nội soi khối u l&agrave; một khối thưa &acirc;m tương đối đồng nhất k&iacute;ch thước chỗ lớn nhất d&agrave;i ~3cm, d&agrave;y 0,8cm, ranh giới r&otilde;. Ở một số diện cắt thấy khối u nằm dưới lớp tế b&agrave;o biểu m&ocirc; bề mặt, tr&ecirc;n lớp dưới ni&ecirc;m mạc v&agrave; li&ecirc;n tục với lớp cơ ni&ecirc;m của th&agrave;nh thực quản. Tr&ecirc;n si&ecirc;u &acirc;m nội soi đo độ đ&agrave;n hồi của m&ocirc; (Elastography) nhu m&ocirc; trong khối u mềm. Tr&ecirc;n si&ecirc;u &acirc;m Doppler b&ecirc;n trong khối u kh&ocirc;ng thấy c&oacute; mạch. Xung quanh khối u v&agrave; trung thất kh&ocirc;ng thấy c&oacute; hạch. Kết luận: &nbsp;Khối u th&agrave;nh thực quản nghĩ nhiều đến khối u lớp ni&ecirc;m mạc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/khoiuhangv2.JPG\" style=\"height:309px; width:713px\" /></p>\r\n\r\n<p>Với khối u lớp ni&ecirc;m mạc k&iacute;ch thước d&agrave;i ~ 3cm, d&agrave;y ~ 0.8cm. C&aacute;c B&aacute;c sĩ đ&atilde; tiến h&agrave;nh cắt khối u &nbsp;2 th&igrave;, &frac12; nh&acirc;n khối u ph&iacute;a trong cắt trước sau đ&oacute; cắt nốt &frac12; nh&acirc;n khối u c&ograve;n lại. Sau cắt kiểm tra ch&acirc;n cắt tốt, kh&ocirc;ng chảy m&aacute;u. Ch&uacute;ng t&ocirc;i cũng đ&atilde; gửi mẫu khối u được cắt l&agrave;m x&eacute;t nghiệm m&ocirc; bệnh học xem khối u l&agrave;nh t&iacute;nh hay &aacute;c t&iacute;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kết quả M&ocirc; bệnh học l&agrave; khối u cơ trơn l&agrave;nh t&iacute;nh dưới ni&ecirc;m mạc thực quản.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/khoiuhangv3.JPG\" style=\"height:322px; width:727px\" /></p>\r\n\r\n<p>B&agrave;n luận về qu&aacute; tr&igrave;nh điều trị của bệnh nh&acirc;n ch&uacute;ng t&ocirc;i cho rằng với bệnh nh&acirc;n n&agrave;y đ&atilde; được thực hiện 4 bước thăm kh&aacute;m từ đơn giản đến phức tạp về y&ecirc;u cầu tr&igrave;nh độ chuy&ecirc;n m&ocirc;n của b&aacute;c sĩ cũng như đ&ograve;i hỏi trang thiết bị hiện đại.</p>\r\n\r\n<p><strong>Bước 1</strong>: Thăm kh&aacute;m l&acirc;m s&agrave;ng nội khoa v&agrave; c&aacute;c x&eacute;t nghiệm sinh h&oacute;a, huyết học, đ&ocirc;ng m&aacute;u thường quy m&agrave; cơ sở y tế n&agrave;o cũng c&oacute; thể thực hiện được.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Nội soi dạ d&agrave;y, nội soi đại tr&agrave;ng g&acirc;y m&ecirc; theo c&ocirc;ng nghệ Laser, rất &iacute;t cơ sở y tế thực hiện được v&igrave; c&ocirc;ng nghệ n&agrave;y c&aacute;c h&igrave;nh ảnh tổn thương được ph&oacute;ng đại l&ecirc;n gấp 150 lần.</p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Si&ecirc;u &acirc;m nội soi để x&aacute;c định khối u thuộc lớp n&agrave;o của th&agrave;nh thực quản. Nhờ si&ecirc;u &acirc;m nội soi thấy khối u mới ở lớp ni&ecirc;m mạc của thực quản chưa lan ra đến lớp cơ, khối u chưa c&oacute; x&acirc;m lấn ra xung quanh v&agrave; định hướng cho B&aacute;c sĩ c&oacute; thể cắt được khối u qua nội soi tr&aacute;nh được một cuộc phẫu thuật cho bệnh nh&acirc;n. Với c&ocirc;ng nghệ n&agrave;y đ&ograve;i hỏi tr&igrave;nh độ b&aacute;c sĩ c&oacute; tay nghề cao, chuy&ecirc;n s&acirc;u mới thực hiện được si&ecirc;u &acirc;m nội soi v&agrave; nhận định ch&iacute;nh x&aacute;c tổn thương.</p>\r\n\r\n<p><strong>Bước 4</strong>: Cắt khối u th&agrave;nh thực quản qua nội soi. Th&agrave;nh thực quản l&agrave; một tổ chức rất mỏng, y&ecirc;u cầu cắt khối u &nbsp;chỉ ở lớp ni&ecirc;m mạc kh&ocirc;ng l&agrave;m tổn thương xuống lớp dưới ni&ecirc;m mạc v&agrave; lớp cơ. Y&ecirc;u cầu thực hiện kỹ thuật cắt được khối u nhưng kh&ocirc;ng l&agrave;m chảy m&aacute;u hoặc thủng thực quản. Với kỹ thuật cắt u th&agrave;nh thực quản qua nội soi cần B&aacute;c sĩ c&oacute; tr&igrave;nh độ tay nghề cao mới thực hiện th&agrave;nh c&ocirc;ng kỹ thuật v&agrave; đảm bảo an to&agrave;n cho người bệnh. Đồng thời cần c&oacute; một Bệnh viện để c&oacute; thể can thiệp phẫu thuật khi c&oacute; biến chứng xảy ra khi cắt khối u qua nội soi.</p>\r\n\r\n<p>Bệnh nh&acirc;n bị đau v&ugrave;ng thượng vị do vi&ecirc;m dạ d&agrave;y c&oacute; nhiễm vi khuẩn H.p, v&igrave; vậy B&aacute;c sĩ đ&atilde; k&ecirc; đơn thuốc điều trị cho bệnh nh&acirc;n theo ph&aacute;c đồ 4 thuốc c&oacute; Bismuth v&agrave; PPI thế hệ 2 liều gấp đ&ocirc;i liều chuẩn theo khuyến c&aacute;o chung của Maastricht V v&agrave; Toronto 2016.</p>\r\n\r\n<p>Bệnh nh&acirc;n được khuy&ecirc;n ăn thức ăn mềm, ăn nguội, ăn nhiều bữa trong ng&agrave;y. Trong thời gian sử dụng thuốc kh&ocirc;ng n&ecirc;n c&oacute; thai, kh&ocirc;ng uống rượu bia v&agrave; nước c&oacute; ga.</p>\r\n\r\n<p>5 ng&agrave;y sau cắt hớt khối u ni&ecirc;m mạc thực quản, Ch&uacute;ng t&ocirc;i gọi điện cho bệnh nh&acirc;n v&agrave; được biết sau điều trị đ&atilde; hết n&ocirc;n, đỡ đau nhiều, kh&ocirc;ng c&oacute; dấu hiệu của chảy m&aacute;u, ăn uống tốt v&agrave; sức khỏe đ&atilde; từng bước ổn định.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một điều l&yacute; th&uacute; đối với bệnh nh&acirc;n n&agrave;y l&agrave; mặc d&ugrave; cần phải thực hiện đầy đủ 4 bước của qu&aacute; tr&igrave;nh thăm kh&aacute;m v&agrave; điều trị nhưng&nbsp;<strong><em>bệnh nh&acirc;n đ&atilde; được thực hiện tại một cơ sở l&agrave; Ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long v&agrave; thời gian một ng&agrave;y từ 7h30 s&aacute;ng đến 17h00 c&ugrave;ng ng&agrave;y</em></strong>.&nbsp;</p>', '2017-05-23 00:43:09', '2017-05-23 00:43:09', 1, 2),
(3, 'ff10505faae70fe45ca394e0e0e05cb1177b111b.jpg', 'Điều trị nội khoa bệnh trào ngược dạ dày thực quản', 'Bệnh trào ngược dạ dày thực quản (GERD) nếu không được điều trị lâu ngày sẽ gây ra các biến chứng như chít hẹp thực quản, chảy máu,  rò thực quản, Barret thực quản và ung thư thực quản.\r\n\r\nPhương pháp điều trị nội khoa bệnh trào ngược dạ dày thực quản bao gồm giáo dục sức khỏe thay đổi lối sống và thuốc điều trị GERD', '<p>&nbsp;Bệnh tr&agrave;o ngược dạ d&agrave;y thực quản (GERD) nếu kh&ocirc;ng được điều trị l&acirc;u ng&agrave;y sẽ g&acirc;y ra c&aacute;c biến chứng như ch&iacute;t hẹp thực quản, chảy m&aacute;u,&nbsp;&nbsp;r&ograve; thực quản, Barret thực quản v&agrave; ung thư thực quản.</p>\r\n\r\n<p>Phương ph&aacute;p điều trị nội khoa bệnh tr&agrave;o ngược dạ d&agrave;y thực quản bao gồm gi&aacute;o dục sức khỏe thay đổi lối sống v&agrave; thuốc điều trị GERD</p>\r\n\r\n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Thay đổi về lối sống</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N&ecirc;n k&ecirc; đầu giường l&ecirc;n cao khoảng 30cm sẽ gi&uacute;p l&agrave;m sạch thực quản tốt hơn.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Những người b&eacute;o giảm c&acirc;n l&agrave; biện ph&aacute;p hữu &iacute;ch v&igrave; sẽ giảm triệu chứng tr&agrave;o ngược</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng n&ecirc;n mặc quần &aacute;o chật, kh&ocirc;ng nằm sau khi ăn, kh&ocirc;ng c&uacute;i gập người sau ăn. Hạn chế sử dụng rượu, thuốc l&aacute; v&agrave; kh&ocirc;ng n&ecirc;n ăn nhẹ trước khi đi ngủ. Hạn chế ăn thức ăn c&oacute; mỡ động vật, socola, h&agrave;nh, một số thuốc chẹn k&ecirc;nh canxi, thuốc ức chế ph&oacute; giao cảm, k&iacute;ch th&iacute;ch giao cảm, theophylline v&agrave; nitrat l&agrave;m giảm &aacute;p lực cơ thắt thực quản dưới. Kh&ocirc;ng n&ecirc;n d&ugrave;ng đồ ăn ảnh hưởng đến ni&ecirc;m mạc thực quản như cam, qu&yacute;t, c&agrave; chua, c&agrave; ph&ecirc;, tr&agrave;, c&aacute;c thuốc aspirin, thuốc chống vi&ecirc;m giảm đau kh&ocirc;ng steroid, tetracyclin, quinidine, kali.</p>\r\n\r\n<p><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Thuốc điều trị GERD</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc kh&aacute;ng toan c&oacute; thể sử dụng một số trường hợp GERD nhẹ, nhưng nh&igrave;n chung loại thuốc n&agrave;y kh&ocirc;ng được khuyến c&aacute;o sử dụng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sucralfat: thuốc bảo vệ ni&ecirc;m mạc thực quản khỏi sự tấn c&ocirc;ng của acid v&agrave; pepsin, tuy nhi&ecirc;n đ&acirc;y l&agrave; thuốc được chỉ định khi bệnh nh&acirc;n c&oacute; thai liều 1gam x 4lần/ng&agrave;y. Thuốc c&oacute; thể g&acirc;y t&aacute;o b&oacute;n kh&ocirc;ng c&oacute; lợi cho người c&oacute; thai.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc prokinetic: tăng co b&oacute;p thực quản v&agrave; tăng trương lực của cơ thắt thực quản dưới như metoclopramide, domperidone, itopride, mosapride. Hiện loại thuốc n&agrave;y &iacute;t được d&ugrave;ng trong điều trị GERD</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc ức chế thụ thể H2: nh&oacute;m thuốc n&agrave;y n&ecirc;n d&ugrave;ng cho trường hợp bệnh nhẹ hoặc điều trị duy tr&igrave;.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc ức chế bơm proton: cả 5 loại PPI đang c&oacute; mặt ở Việt Nam l&agrave; Omeprazole, Lansoprazole,&nbsp;Rabeprazole,&nbsp;Pantoprazole v&agrave; Esomeprazole đều l&agrave; những thuốc ức chế b&agrave;i tiết acid tốt. C&aacute;c trường hợp GERD nhẹ v&agrave; trung b&igrave;nh kết quả điều trị giữa c&aacute;c PPI kh&ocirc;ng c&oacute; sự kh&aacute;c biệt nhiều. C&aacute;c trường hợp GERD nặng th&igrave; Esomeprazole tỏ ra ưu thế hơn. Hiệu quả điều trị được đ&aacute;nh gi&aacute; bằng việc giảm hoặc mất triệu chứng v&agrave; liền tổn thương.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc t&aacute;c dụng l&ecirc;n cơ thắt thực quản dưới ức chế receptor GABAB&nbsp;l&agrave; khuynh hướng mới trong điều trị GERD hiện nay. Thuốc sử dụng baclofen 10mg x 2lần/ ng&agrave;y&nbsp;hoặc lesogaberan 60mg &ndash; 240mg/ ng&agrave;y chia 2 lần.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Phối hợp thuốc</strong></p>\r\n\r\n<p>Theo khuyến c&aacute;o hiện nay điều trị GERD chủ yếu sử dụng PPI. T&ugrave;y theo t&igrave;nh trạng bệnh c&aacute;c ph&aacute;c đồ sử dụng từ thấp đến cao như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/dieutri.jpg\" style=\"height:262px; width:346px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đối với c&aacute;c trường hợp GERD nhẹ v&agrave; trung b&igrave;nh PPI liều ti&ecirc;u chuẩn hoặc &frac12; liều ti&ecirc;u chuẩn &nbsp;điều trị đ&atilde; c&oacute; kết quả.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đối với vi&ecirc;m thực quản v&agrave; c&aacute;c trường hợp GERD nặng theo ph&acirc;n loại Los Angeles mức độ C v&agrave; D: Thời gian điều trị 4 tuần với PPI đa số cho kết quả liền vi&ecirc;m v&agrave; tr&agrave;o ngược rất tốt. Liều esomeprazole 40mg tỏ ra hiệu quả hơn Omeprazole 20mg, Lansoprazole 30mg v&agrave; Pantoprazole 40mg. Gần đ&acirc;y một số nghi&ecirc;n cứu cho thấy Dexlansoprazole liều 60mg cũng đạt kết quả rất tốt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Điều trị duy tr&igrave;</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Tại sao phải điều trị duy tr&igrave;:&nbsp;</em>Thường &aacute;p dụng cho những bệnh nh&acirc;n nặng.&nbsp;Sở dĩ phải điều trị duy tr&igrave; l&agrave; do những bệnh nh&acirc;n GERD nặng theo d&otilde;i 6 th&aacute;ng sau khi ngưng thuốc điều trị c&oacute; 80% bệnh nh&acirc;n bị t&aacute;i ph&aacute;t. Đối với bệnh nh&acirc;n nhẹ th&igrave; tỷ lệ t&aacute;i ph&aacute;t 15-30%.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Chỉ định điều trị duy tr&igrave;:</em></p>\r\n\r\n<p>+ Vi&ecirc;m thực quản nặng theo ph&acirc;n loại Los Angeles mức độ C v&agrave; D</p>\r\n\r\n<p>+ Hẹp thực quản do GERD</p>\r\n\r\n<p>+ Barrett thực quản</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Thuốc điều trị duy tr&igrave;</em>: theo khuyến c&aacute;o điều trị GERD mới nhất đều x&aacute;c định PPI l&agrave; ưu ti&ecirc;n số 1. Thuốc ức chế H2&nbsp;cũng l&agrave; một lựa chọn cho điều trị dự ph&ograve;ng trong một số trường hợp cần thiết. Liều lượng trong điều trị duy tr&igrave; đối với PPI liều ti&ecirc;u chuẩn, &frac12; liều ti&ecirc;u chuẩn, điều trị theo nhu cầu (khi c&oacute; triệu chứng th&igrave; d&ugrave;ng thuốc) v&agrave; điều trị ngắt qu&atilde;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nh&igrave;n chung việc lựa chọn thuốc phụ thuộc v&agrave;o từng bệnh nh&acirc;n v&agrave; mức độ bệnh cũng như mức độ đ&aacute;p ứng thuốc. Nguy&ecirc;n tắc d&ugrave;ng thuốc liều thấp nhất duy tr&igrave; được kết quả điều trị. Lưu &yacute; khi d&ugrave;ng PPI l&acirc;u d&agrave;i&nbsp;ở&nbsp;bệnh nh&acirc;n bị nhiễm&nbsp;<em>H.p</em>&nbsp;cần điều trị tiệt trừ&nbsp;<em>H.p</em>.</p>', '2017-05-23 00:43:17', '2017-05-23 00:43:17', 1, 2),
(4, '6ba05a502f9d1b9cb2025a953844a42959d23f7c.jpg', 'Hội thảo \" Vai trò của PPI thế hệ 2 trong điều trị H. Pylori và GERD\"', 'Với mục đích cập nhật các hướng dẫn của Quốc tế trong điều trị bệnh trào ngược dạ dày thực quản và thương tổn dạ dày do nhiễm trực khuẩn H. Pylori, Ngày 3 tháng 3 năm 2017, Phòng khám Hoàng Long đã phối hợp với Công ty EISAI tổ chức Hội thảo \"Vai trò của PPI thế hệ hai trong điều trị H.Pylori và GERD – cập nhật APDW 2016\".', '<p>Với mục đ&iacute;ch cập nhật c&aacute;c hướng dẫn của Quốc tế trong điều trị bệnh tr&agrave;o ngược dạ d&agrave;y thực quản v&agrave; thương tổn dạ d&agrave;y do nhiễm trực khuẩn H. Pylori, Ng&agrave;y 3 th&aacute;ng 3 năm 2017, Ph&ograve;ng kh&aacute;m Ho&agrave;ng Long đ&atilde; phối hợp với C&ocirc;ng ty EISAI tổ chức Hội thảo &ldquo;Vai tr&ograve; của PPI thế hệ hai trong điều trị H.Pylori v&agrave; GERD &ndash; cập nhật APDW 2016&rdquo;.</p>\r\n\r\n<p>Hội thảo đ&atilde; c&oacute; sự tham dự của hơn 80 b&aacute;c sĩ Nội khoa đang thực hiện c&ocirc;ng t&aacute;c kh&aacute;m chữa bệnh chuy&ecirc;n khoa Nội, nội soi Ti&ecirc;u h&oacute;a của c&aacute;c bệnh viện khu vực H&agrave; Nội về tham dự v&agrave; chia sẻ kinh nghiệm trong điều trị cho bệnh nh&acirc;n vi&ecirc;m lo&eacute;t dạ d&agrave;y v&agrave; tr&agrave;o ngược dạ d&agrave;y thực quản.</p>\r\n\r\n<p>Hội thảo đ&atilde; được nghe PGS.TS. Vũ Văn Khi&ecirc;n, trưởng khoa Nội soi ti&ecirc;u h&oacute;a, Bệnh viện 108, Tổng thư k&yacute; Hội Khoa học Ti&ecirc;u h&oacute;a Việt Nam tr&igrave;nh b&agrave;y c&aacute;c nội dung chuy&ecirc;n m&ocirc;n của Hội thảo.</p>\r\n\r\n<p>Với sự chủ tr&igrave; của GS.TS. Đ&agrave;o Văn Long, nguy&ecirc;n trưởng khoa Ti&ecirc;u h&oacute;a bệnh viện Bạch Mai, nguy&ecirc;n Gi&aacute;m đốc bệnh viện Đại học Y H&agrave; Nội đ&atilde; thảo luận về c&aacute;c nội dung &aacute;p dụng điều trị nhiễm H.pylori trong bệnh l&yacute; dạ d&agrave;y t&aacute; tr&agrave;ng theo hướng dẫn của tuần lễ Ti&ecirc;u h&oacute;a khu vực ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh dương năm 2016 được tổ chức tại Nhật Bản như sau:</p>\r\n\r\n<p><strong><em>Về chỉ định điều trị diệt HP đối với những trường hợp nhiễm HP (+)&nbsp;&nbsp;v&agrave; c&oacute; c&aacute;c tổn thương k&egrave;m theo như:&nbsp;</em></strong></p>\r\n\r\n<p>+ Lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng,</p>\r\n\r\n<p>+ Sau cắt hớt ni&ecirc;m mạc dạ d&agrave;y</p>\r\n\r\n<p>+ Vi&ecirc;m teo ni&ecirc;m mạc dạ d&agrave;y</p>\r\n\r\n<p>+ C&oacute; bố, mẹ, anh chị em ruột hoặc con ruột bị ung thư dạ d&agrave;y,</p>\r\n\r\n<p>+ Bệnh nh&acirc;n c&oacute; polyp dạ d&agrave;y</p>\r\n\r\n<p>+ Những trường hợp thiếu m&aacute;u thiếu sắt chưa r&otilde; nguy&ecirc;n nh&acirc;n</p>\r\n\r\n<p><img alt=\"collage\" src=\"/uploads/collage_photocat1.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><strong><em>Về ph&aacute;c đồ điều trị diệt Hp c&aacute;c Chuy&ecirc;n gia cũng đ&atilde; thảo luận những điểm cần ch&uacute; &yacute; trong điều trị diệt Hp như sau:</em></strong></p>\r\n\r\n<p>+ Thời gian điều trị 14 ng&agrave;y</p>\r\n\r\n<p>+ Liều của PPI n&ecirc;n gấp 2 lần liều theo khuyến c&aacute;o trước đ&acirc;y, v&agrave; n&ecirc;n sử dụng PPI thế hệ II c&oacute; điểm pKa cao nhất để n&acirc;ng t&aacute;c dụng của c&aacute;c kh&aacute;ng sinh điều trị diệt Hp</p>\r\n\r\n<p>+ T&ugrave;y thuộc v&agrave;o vị tr&iacute; ph&acirc;n v&ugrave;ng sự kh&aacute;ng kh&aacute;ng sinh ở từng địa phương m&agrave; ch&uacute;ng ta lựa chọn ph&aacute;c đồ điều trị bậc 1 hay ph&aacute;c đồ bậc 2.</p>\r\n\r\n<p>+ Lựa chọn ph&aacute;c đồ bậc 1 gồm 4 thuốc: PPI (liều gấp đ&ocirc;i) + Kh&aacute;ng sinh (2 loại kh&aacute;ng sinh) + thuốc bao bọc ni&ecirc;m mạc dạ d&agrave;y Bismuth.</p>\r\n\r\n<p>+ Lựa chọn ph&aacute;c đồ bậc 2 &ndash; ph&aacute;c đồ đồng thời: PPI (liều gấp đ&ocirc;i) + Kh&aacute;ng sinh (3 loại kh&aacute;ng sinh)&nbsp;&nbsp;+ c&oacute; thể phối hợp th&ecirc;m thuốc bao bọc ni&ecirc;m mạc dạ d&agrave;y Bismuth.</p>\r\n\r\n<p>+ Đối với phối hợp kh&aacute;ng sinh n&ecirc;n phối hợp c&aacute;c kh&aacute;ng sinh c&oacute; tỷ lệ kh&aacute;ng kh&aacute;ng sinh thấp v&agrave; c&oacute; t&aacute;c dụng hiệp đồng để điều trị.</p>\r\n\r\n<p><strong><em>Hội thảo cũng đề cập đến vấn đề dự ph&ograve;ng nhiễm H.Pylori.</em></strong></p>\r\n\r\n<p>Tỷ lệ cha mẹ c&oacute; Hp (+) khả năng con c&aacute;i của họ nhiễm Hp chiếm 40%, v&agrave; khả năng l&acirc;y sang giữa vợ chồng l&agrave; 68%. Trực khuẩn Hp l&acirc;y nhiễm theo đường ti&ecirc;u h&oacute;a v&igrave; vậy lời khuy&ecirc;n của c&aacute;c B&aacute;c sĩ l&agrave; trong gia đ&igrave;nh nếu Bố/ hoặc Mẹ bị nhiễm Hp th&igrave; con c&aacute;i v&agrave; vợ/chồng của người đ&oacute; n&ecirc;n đi kiểm tra xem m&igrave;nh c&oacute; bị nhiễm Hp hay kh&ocirc;ng.</p>\r\n\r\n<p>C&aacute;c B&aacute;c sĩ tham dự đ&atilde; đ&aacute;nh gi&aacute; rất cao những th&ocirc;ng tin cập nhật trong điều trị bệnh l&yacute; do nhiễm Hp g&acirc;y ra v&agrave; gi&uacute;p &iacute;ch nhiều cho c&aacute;c B&aacute;c sĩ trong c&ocirc;ng t&aacute;c thực h&agrave;nh l&acirc;m s&agrave;ng của m&igrave;nh</p>', '2017-05-23 00:54:49', '2017-05-23 00:54:49', 2, 1),
(5, 'c0fc5a7e84f0c3fd80038b9511b5c7572239279b.jpg', 'Hướng dẫn theo dõi sau thủ thuật cắt polyp qua nội soi dạ dày - đại tràng', 'Polyp đường tiêu hóa là một trong những nguyên nhân gây ung thư, qua đường nội soi bác sỹ có thể dùng đụng cụ chuyên dụng để cắt bỏ sớm nhằm ngăn ngừa các biến chứng (ác tính hóa thành ung thư, chảy máu từ polyp, tắc ruột…)', '<table cellspacing=\"0\" style=\"width:709px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:80.05pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/1(2).png\" style=\"height:90px; width:106px\" /></p>\r\n			</td>\r\n			<td style=\"width:451.75pt\">\r\n			<p><strong>&nbsp;</strong></p>\r\n\r\n			<p><strong>PH&Ograve;NG KH&Aacute;M ĐA KHOA HO&Agrave;NG LONG</strong>&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>HƯỚNG DẪN THEO D&Otilde;I SAU THỦ THUẬT CẮT POLYP QUA</strong></p>\r\n\r\n<p><strong>NỘI SOI DẠ D&Agrave;Y &ndash; ĐẠI TR&Agrave;NG</strong></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><em>Polyp đường ti&ecirc;u h&oacute;a l&agrave; một trong những nguy&ecirc;n nh&acirc;n g&acirc;y ung thư, qua đường nội soi b&aacute;c sỹ c&oacute; thể d&ugrave;ng đụng cụ chuy&ecirc;n dụng để cắt bỏ sớm nhằm ngăn ngừa c&aacute;c biến chứng (&aacute;c t&iacute;nh h&oacute;a th&agrave;nh ung thư, chảy m&aacute;u từ polyp, tắc ruột&hellip;)</em></p>\r\n\r\n<p><em>T&ugrave;y theo k&iacute;ch thước v&agrave; số lượng polyp cắt, t&igrave;nh trạng sau thủ thuật bệnh nh&acirc;n c&oacute; thể phải &nbsp;nhập vi&ecirc;n theo d&otilde;i hoặc theo d&otilde;i tại nh&agrave;; điều n&agrave;y b&aacute;c sỹ thực hiện thủ thuật hoặc b&aacute;c sỹ kh&aacute;m sẽ c&oacute; chỉ định cụ thể.</em></p>\r\n\r\n<p><strong>Hướng dẫn bệnh nh&acirc;n tự theo d&otilde;i v&agrave; chăm s&oacute;c tại nh&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>Sau thủ thuật nội soi g&acirc;y m&ecirc;, bệnh nh&acirc;n kh&ocirc;ng được tự điều khiển c&aacute;c phương tiện giao th&ocirc;ng, phải c&oacute; người nh&agrave; đi soi c&ugrave;ng v&agrave; đưa về từ bệnh viện.</li>\r\n	<li>Nghỉ ngơi, kh&ocirc;ng lao động nặng, kh&ocirc;ng đi bộ nhiều, leo n&uacute;i hoặc di chuyển xa.</li>\r\n	<li>Ăn thức ăn mềm, dễ ti&ecirc;u h&oacute;a (tốt nhất l&agrave; ch&aacute;o xay nhuyễn c&ugrave;ng với rau trong v&ograve;ng 3 ng&agrave;y) sau đ&oacute; ăn chia nhỏ 5 &ndash; 6 bữa/ng&agrave;y.</li>\r\n	<li>Hạn chế đồ ăn cay n&oacute;ng, nhiều dầu mỡ, đồ ăn nhiều b&atilde;, đồ qu&aacute; ngọt&hellip;</li>\r\n	<li>N&ecirc;n ăn chậm, ăn nhiều đồ ăn rau quả, uống nhiều sữa để bổ sung vitamin.</li>\r\n	<li>Kh&ocirc;ng được để t&aacute;o b&oacute;n, hạn chế rặn khi đại tiện.</li>\r\n</ul>\r\n\r\n<p>Trường hợp bệnh nh&acirc;n c&oacute; đau tuyệt đối kh&ocirc;ng được sử dụng c&aacute;c thuốc c&oacute; ảnh hưởng đến chức năng m&aacute;u như aspirin, giảm đau c&oacute; ibuprofen, naproxen trong 2 tuần sau khi soi. Chỉ n&ecirc;n sử dụng thuốc giảm đau Acetaminophen / Paracetamol.</p>\r\n\r\n<p>Trường hợp bệnh nh&acirc;n c&oacute; polyp đại tr&agrave;ng n&ecirc;n soi đại tr&agrave;ng 1 năm 1 lần. Người th&acirc;n của bệnh nh&acirc;n n&ecirc;n soi đại tr&agrave;ng kiểm tra nếu &gt; 50 tuổi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/IMG_0442.jpg\" style=\"height:512px; width:768px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tiến triển b&igrave;nh thường sau cắt polyp:</strong></p>\r\n\r\n<ul>\r\n	<li>Với c&aacute;c polyp nhỏ: ch&acirc;n vết cắt sẽ tự liền sẹo trong v&ograve;ng 1 tuần.</li>\r\n	<li>Với c&aacute;c polyp lớn c&oacute; v&ograve;ng thắt ch&acirc;n polyp trước khi cắt: v&ograve;ng cắt hoặc kẹp clip sẽ tự rời khỏi vết cắt thường trong khoảng 1 tuần.</li>\r\n</ul>\r\n\r\n<p><strong>Dấu hiệu bất thường:</strong></p>\r\n\r\n<ul>\r\n	<li>Sốt, ớn lạnh</li>\r\n	<li>Ph&ugrave; nền v&ugrave;ng hậu m&ocirc;n, chảy m&aacute;u hoặc c&oacute; dịch tiết ra ở trực tr&agrave;ng với số lượng nhiều.</li>\r\n	<li>Ho, kh&oacute; thở, đau ngực, t&ecirc; hoặc run ch&acirc;n tay&hellip;</li>\r\n	<li>Hoa mắt, ch&oacute;ng mặt, buồn n&ocirc;n hoặc n&ocirc;n ra dịch n&acirc;u bẩn, m&aacute;u tươi, m&aacute;u cục&hellip;</li>\r\n	<li>T&igrave;nh trạng đau bụng tăng l&ecirc;n sau l&agrave;m thủ thuật, bụng chướng căng hoặc co cứng.</li>\r\n	<li>Đại tiện ph&acirc;n c&oacute; m&aacute;u tươi với số lương tăng dần hoặc ph&acirc;n hắc &iacute;n, m&ugrave;i khắm, hoặc ph&acirc;n đen như b&atilde; cafe.</li>\r\n</ul>\r\n\r\n<p><strong>Nếu c&oacute; một trong c&aacute;c triệu chứng tr&ecirc;n cần:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Li&ecirc;n lạc ngay với Ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long (04 62 811 331 &ndash; 0936.398.123) để đ&aacute;nh gi&aacute; v&agrave; tư vấn.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hoặc đem theo c&aacute;c giấy tờ li&ecirc;n quan đến việc cắt polyp đến cơ sở y tế gần nhất để kịp xử tr&iacute;.</p>', '2017-05-27 11:58:31', '2017-05-27 11:58:31', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule`
--

CREATE TABLE `schedule` (
  `idschedule` int(11) NOT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` text,
  `phone` varchar(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text,
  `status` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `schedule`
--

INSERT INTO `schedule` (`idschedule`, `fullname`, `age`, `address`, `phone`, `date`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đình Giang', 26, 'Hà Nội', '064965416', '2017-05-10', '12123123', 0, '2017-05-27 17:49:34', '2017-05-27 17:49:34'),
(2, 'Nguyễn Đình Giang', 26, 'Hà Nội', '064965416', '2017-05-10', '12123123', 0, '2017-05-27 17:49:42', '2017-05-27 17:49:42'),
(3, 'Nguyễn Đình Giang', 26, 'Hà Nội', '064965416', '2017-05-10', '12123123', 0, '2017-05-27 17:49:42', '2017-05-27 17:49:42'),
(4, 'Nguyễn Đình Giang', 26, 'Hà Nội', '064965416', '2017-05-10', '12123123', 1, '2017-05-27 17:49:43', '2017-05-27 17:49:43'),
(8, 'Nguyễn Đình Giang', 26, NULL, '01649607996', '0000-00-00', 'Tôi bị ho rất nhiều', 0, '2017-05-27 19:04:18', '2017-05-27 19:04:18'),
(9, 'Giang', 123, NULL, '123', '0000-00-00', '123', 0, '2017-05-27 19:04:55', '2017-05-27 19:04:55'),
(10, '12312', 3123, NULL, '123', '0000-00-00', '23', 0, '2017-05-27 19:05:36', '2017-05-27 19:05:36'),
(11, '123123', 1231, NULL, '123', '0000-00-00', '123', 0, '2017-05-27 19:06:37', '2017-05-27 19:06:37'),
(12, 'Trần Hữu Hòa', 23, NULL, '01649960946', '0000-00-00', 'Cho tôi đặt lịch', 0, '2017-05-27 19:07:10', '2017-05-27 19:07:10'),
(13, 'Giang', 26, NULL, '01649607996', '0000-00-00', 'gsdfgsdfg', 0, '2017-05-28 23:56:33', '2017-05-28 23:56:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `idnews` int(11) NOT NULL,
  `images` varchar(120) DEFAULT 'news.jpg',
  `title` text,
  `summary` text,
  `content` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `priority` int(11) DEFAULT '1',
  `category_service_idcategory_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`idnews`, `images`, `title`, `summary`, `content`, `created_at`, `updated_at`, `priority`, `category_service_idcategory_service`) VALUES
(1, '96535b7bf2fa876f9d3b0d55fff250c76769bc7a.jpg', 'Nội soi chuẩn đoán bệnh', 'Nội soi chuẩn đoán bệnh', '<p>Nội soi chuẩn đo&aacute;n bệnh</p>', '2017-05-23 00:21:22', '2017-05-23 00:21:22', 1, 0),
(2, 'ac70f392fc5fa56954bb6e7a93552468c330c26e.jpg', 'Nội soi can thiệp', 'Nội soi can thiệp', '<p>Nội soi can thiệp</p>', '2017-05-23 00:21:49', '2017-05-23 00:21:49', 1, 0),
(3, 'f24b8e92f690e6a8c25bf0bb67eb77f5850b447d.jpg', 'Chuẩn đoán hình ảnh', 'Chuẩn đoán hình ảnh', '<p>Chuẩn đon&aacute; hinh ianh</p>', '2017-05-23 00:22:10', '2017-05-23 00:22:10', 1, 0),
(4, '0476f565c4f63d49d51834dfebfa30085a8f31d2.jpg', 'Thăm dò chức năng', 'Thăm dò chắc năng', '<p>Thăm d&ograve; chawcns năgn</p>', '2017-05-23 00:22:26', '2017-05-23 00:22:26', 1, 0),
(5, '08d01ec4cb6a41a0a32c73d5fa6985b49f5fde96.jpg', 'Xét nghiệm', 'Xet nghiem', '<p>Bao hiem</p>', '2017-05-23 00:22:55', '2017-05-23 00:22:55', 1, 0),
(6, 'fb3d3b9718963b0ad3e017021119f5461cda1a17.jpg', 'Liên kết bảo hiểm', 'Liên kết bảo hiểm', '<p>Li&ecirc;n kết bảo hiểm</p>', '2017-05-23 00:23:08', '2017-05-23 00:23:08', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `specialist`
--

CREATE TABLE `specialist` (
  `idspecialist` int(11) NOT NULL,
  `name` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `specialist`
--

INSERT INTO `specialist` (`idspecialist`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Răng hàm mặt', '2017-05-23 01:17:12', '2017-05-23 01:17:12');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`idnews`,`category_about_us_idcategory_about_us`),
  ADD KEY `fk_about_us_category_about_us1_idx` (`category_about_us_idcategory_about_us`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Chỉ mục cho bảng `category_about_us`
--
ALTER TABLE `category_about_us`
  ADD PRIMARY KEY (`idcategory_about_us`);

--
-- Chỉ mục cho bảng `category_gallery`
--
ALTER TABLE `category_gallery`
  ADD PRIMARY KEY (`idcategory_gallery`);

--
-- Chỉ mục cho bảng `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`idcategory_news`);

--
-- Chỉ mục cho bảng `category_service`
--
ALTER TABLE `category_service`
  ADD PRIMARY KEY (`idcategory_service`);

--
-- Chỉ mục cho bảng `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`iddoctor`,`specialist_idspecialist`),
  ADD KEY `fk_doctor_specialist1_idx` (`specialist_idspecialist`);

--
-- Chỉ mục cho bảng `feed_back`
--
ALTER TABLE `feed_back`
  ADD PRIMARY KEY (`idfeed_back`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`idgallery`,`category_gallery_idcategory_about_us`),
  ADD KEY `fk_gallery_category_gallery1_idx` (`category_gallery_idcategory_about_us`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idnews`,`category_news_idcategory`),
  ADD KEY `fk_news_category_news_idx` (`category_news_idcategory`);

--
-- Chỉ mục cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`idschedule`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idnews`,`category_service_idcategory_service`),
  ADD KEY `fk_service_category_service1_idx` (`category_service_idcategory_service`);

--
-- Chỉ mục cho bảng `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`idspecialist`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about_us`
--
ALTER TABLE `about_us`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `category_about_us`
--
ALTER TABLE `category_about_us`
  MODIFY `idcategory_about_us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `category_gallery`
--
ALTER TABLE `category_gallery`
  MODIFY `idcategory_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `category_news`
--
ALTER TABLE `category_news`
  MODIFY `idcategory_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `doctor`
--
ALTER TABLE `doctor`
  MODIFY `iddoctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `feed_back`
--
ALTER TABLE `feed_back`
  MODIFY `idfeed_back` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `idgallery` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `schedule`
--
ALTER TABLE `schedule`
  MODIFY `idschedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `specialist`
--
ALTER TABLE `specialist`
  MODIFY `idspecialist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `about_us`
--
ALTER TABLE `about_us`
  ADD CONSTRAINT `fk_about_us_category_about_us1` FOREIGN KEY (`category_about_us_idcategory_about_us`) REFERENCES `category_about_us` (`idcategory_about_us`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `fk_doctor_specialist1` FOREIGN KEY (`specialist_idspecialist`) REFERENCES `specialist` (`idspecialist`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `fk_gallery_category_gallery1` FOREIGN KEY (`category_gallery_idcategory_about_us`) REFERENCES `category_gallery` (`idcategory_gallery`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_category_news` FOREIGN KEY (`category_news_idcategory`) REFERENCES `category_news` (`idcategory_news`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_service_category_service1` FOREIGN KEY (`category_service_idcategory_service`) REFERENCES `category_service` (`idcategory_service`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
