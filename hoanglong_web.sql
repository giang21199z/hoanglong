-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 07, 2017 lúc 07:06 CH
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
(6, '75998b6e9a477e4a2074a2f50c1bed9211077182.png', 'Giới thiệu chung', 'Năm 2003, Bệnh viện Đa khoa Hoàng Long được thành lập trong bối cảnh ở Việt Nam còn khá lạ lẫm với hệ thống bệnh viện tư nhân. Từ những ngày đầu đi vào hoạt động, Hồng Ngọc đã từng bước tạo dựng uy tín và danh tiếng với mô hình bệnh viện – khách sạn tiên phong ở Hà Nội cũng như toàn khu vực miền Bắc.', '<p>Nội soi ti&ecirc;u h&oacute;a l&agrave; một kỹ thuật phổ biến. H&agrave;ng năm, tại ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long c&oacute; tr&ecirc;n chục ng&agrave;n bệnh nh&acirc;n được thực hiện nội soi dạ d&agrave;y, nội soi đại tr&agrave;ng &nbsp;ống mềm. C&ocirc;ng t&aacute;c tiệt khuẩn d&acirc;y nội soi ống mềm (DNSOM) l&agrave; một trong những kh&acirc;u quan trọng trong việc đảm bảo chất lượng của thủ thuật v&agrave; an to&agrave;n cho người bệnh. Nếu c&ocirc;ng t&aacute;c khử khuẩn kh&ocirc;ng tốt người bệnh c&oacute; thể bị l&acirc;y nhiễm c&aacute;c loại vi khuẩn như vi khuẩn Helicobacter Pylori, vi rut g&acirc;y vi&ecirc;m gan B, vi&ecirc;m gan C, vi rut HPV g&acirc;y c&aacute;c bệnh u nh&uacute; ở đường ti&ecirc;u h&oacute;a thậm ch&iacute; cả vi rut HIV.</p>\r\n\r\n<p><strong>Tại sao ph&ograve;ng kh&aacute;m của ch&uacute;ng t&ocirc;i lại chọn phương ph&aacute;p tiệt khuẩn d&acirc;y nội soi ống mềm bằng m&aacute;y khử khuẩn ozone, h&atilde;ng IHI của Nhật Bản</strong></p>\r\n\r\n<p>Nhận thức được tầm quan trọng của việc khử khuẩn, Ch&uacute;ng t&ocirc;i chọn hệ thống m&aacute;y tạo ozone h&atilde;ng IHI để khử khuẩn d&acirc;y nội soi ống mềm (DNSOM). Đ&acirc;y l&agrave; c&ocirc;ng nghệ khử khuẩn bằng Ozone kh&ocirc;ng độc hại, kh&ocirc;ng sử dụng h&oacute;a chất, th&acirc;n thiện với m&ocirc;i trường, ph&ugrave; hợp với mọi loại d&acirc;y soi.</p>\r\n\r\n<p>Từ năm 2012, nh&oacute;m t&aacute;c giả của GS. Đ&agrave;o Văn Long v&agrave; cộng sự đ&atilde; tiến h&agrave;nh nghi&ecirc;n cứu gh&eacute;p cặp trước v&agrave; sau tiệt khuẩn, nhằm x&aacute;c định hiệu quả tiệt trừ vi khuẩn của phương ph&aacute;p khử khuẩn bằng OZONE cho 59 cặp mẫu d&acirc;y nội soi ống mềm v&agrave; 75 cặp mẫu d&acirc;y nội soi ống mềm được khử khuẩn bằng dung dịch Cidex OPA&nbsp;(l&agrave; dung dịch khử khuẩn thường d&ugrave;ng ở Việt Nam). Kết quả cho thấy hiệu quả&nbsp;<strong>tiệt khuẩn</strong>&nbsp;của phương ph&aacute;p khử khuẩn bằng ozone&nbsp;<strong>cao hơn</strong>khử khuẩn Cidex OPA c&oacute; &yacute; nghĩa thống k&ecirc; cả về hiệu quả tiệt khuẩn (94,6% so với 85,1%) v&agrave; mật độ vi khuẩn. Hệ thống khử khuẩn bằng m&aacute;y tạo Ozone IHI tốt cho sức khoẻ&nbsp;c&aacute;n bộ y tế&nbsp;trực tiếp thực hiện khử khuẩn. Chi ph&iacute; vận h&agrave;nh bằng m&aacute;y tạo Ozone rẻ hơn so với phương ph&aacute;p khử khuẩn bằng dung dịch khử khuẩn Cidex OPA. Tuy nhi&ecirc;n muốn trang bị m&aacute;y khử khuẩn Ozone IHI&nbsp; đ&ograve;i hỏi cơ sở y tế phải c&oacute; điện v&agrave; cần c&oacute; kinh ph&iacute; đầu tư ban đầu lớn.</p>\r\n\r\n<p>Đề t&agrave;i nghi&ecirc;n cứu n&agrave;y đ&atilde; được b&aacute;o c&aacute;o tại nhiều hội nghị về c&ocirc;ng t&aacute;c khử khuẩn v&agrave; đ&atilde; đăng tải tr&ecirc;n Tạp ch&iacute; Y học thực H&agrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&aacute;y tạo ozone IHI đ&atilde; được cấp giấy chứng nhận của Bộ Y Tế, Hiệp hội Lao động v&agrave; Ph&uacute;c Lợi Nhật Bản.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&aacute;y đ&atilde; được Bộ Y tế cấp ph&eacute;p cho v&agrave;o thị trường Việt Nam&nbsp;l&agrave; cơ sở ph&aacute;p l&yacute; cho c&aacute;c cơ sở y tế thực hiện.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M&aacute;y đ&atilde; được nhiều cơ sở nội soi tr&ecirc;n thế giới cũng như ở Việt Nam sử dụng</p>\r\n\r\n<p><strong>Quy tr&igrave;nh khử khuẩn d&acirc;y nội soi ống mềm bằng m&aacute;y tạo OZONE IHI như sau:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/1%281%29.png\" style=\"height:390px; width:520px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/collage-2017-04-14.jpg\" style=\"height:390px; width:520px\" /></p>', '2017-05-27 00:33:35', '2017-05-27 00:33:35', 0, 5),
(7, 'news.jpg', 'Cơ sở hạ tầng', 'klsjdflask', '<p>fgasdfasdf</p>', '2017-05-27 00:33:45', '2017-05-27 00:33:45', 0, 1),
(8, '09db265c3960125cc73a5b26201f316f05760b9e.jpg', 'Cảnh giác dấu hiệu đi ngoài ra máu ở trẻ nhỏ', 'Ở trẻ nhỏ, đi ngoài ra máu có thể là tình trạng táo bón, nứt hậu môn nhưng cũng có thể là dấu hiệu của polyp đại tràng. Trên thực tế, nhiều bệnh nhi được phát hiện tình trạng polyp đại tràng từ dấu hiệu cứ ngỡ do táo bón gây ra này.', '<p>B&eacute; N.V.H (7 tuổi, H&agrave; Tĩnh) được gia đ&igrave;nh đưa đi kh&aacute;m v&igrave; thường xuy&ecirc;n đại tiện lẫn m&aacute;u tươi. L&uacute;c đầu nghĩ do trẻ bị t&aacute;o b&oacute;n, gia đ&igrave;nh đ&atilde; thay đổi chế độ ăn cho trẻ, ăn to&agrave;n rau lang, rau m&ugrave;ng tơi, chuối, đu đủ&hellip; B&eacute; đi ngo&agrave;i kh&ocirc;ng t&aacute;o b&oacute;n nhưng vẫn lẫn rất nhiều m&aacute;u tươi trong ph&acirc;n khiến gia đ&igrave;nh sốt ruột mới đưa b&eacute; ra H&agrave; Nội kh&aacute;m.</p>\r\n\r\n<p>GS.TS Đ&agrave;o Văn Long, nguy&ecirc;n Gi&aacute;m đốc trung t&acirc;m nội soi bệnh viện Đại học Y H&agrave; Nội cho biết, bệnh nhi đến kh&aacute;m c&oacute; t&igrave;nh trạng đi ngo&agrave;i ra m&aacute;u thường xuy&ecirc;n, nhất l&agrave; 1 tuần trở lại đ&acirc;y d&ugrave; ph&acirc;n kh&ocirc;ng cứng, c&oacute; biểu hiện thiếu m&aacute;u.</p>\r\n\r\n<p>B&aacute;c sĩ quyết định tiến h&agrave;nh nội soi đại tr&agrave;ng cho ch&aacute;u b&eacute; bằng ống nội soi mềm, d&ugrave;ng thuốc an thần. Kết quả ph&aacute;t hiện tại đại tr&agrave;ng sigma c&oacute; 2 polyp k&iacute;ch thước nhỏ 0,4 cm, tại trực tr&agrave;ng cũng c&oacute; một polyp lớn k&iacute;ch thước 1,5 cm;. Trong qu&aacute; tr&igrave;nh nội soi b&aacute;c sĩ đ&atilde; cắt cả 3 polyp tr&ecirc;n.</p>\r\n\r\n<p><img alt=\"Một bệnh nhi được nội soi dạ dày do có dấu hiệu viêm loét dạ dày do vi khuẩn HP.\" src=\"https://dantricdn.com/thumb_w/640/2017/noisoi-1495505456078.jpg\" /></p>\r\n\r\n<p>Một bệnh nhi được nội soi dạ d&agrave;y do c&oacute; dấu hiệu vi&ecirc;m lo&eacute;t dạ d&agrave;y do vi khuẩn HP.</p>\r\n\r\n<p>Polyp đại trực tr&agrave;ng (đặc biệt l&agrave; loại c&oacute; cuống) dễ bị chảy m&aacute;u khi ph&acirc;n đi qua ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y chảy m&aacute;u khi đại tiện ở ch&aacute;u b&eacute;. Ngay sau khi cắt polyp t&igrave;nh trạng đại tiện ra m&aacute;u kh&ocirc;ng c&ograve;n. Bệnh nhi được chỉ định th&ecirc;m sắt acid folic, dinh dưỡng hợp l&yacute; để phục hồi sức khỏe.</p>\r\n\r\n<p>GS Long cho biết, một số trường hợp trẻ nhỏ từ 3 &ndash; 9 tuổi do &ocirc;ng trực tiếp kh&aacute;m được ph&aacute;t hiện polyp đại trực tr&agrave;ng chỉ từ dấu hiệu ban đầu l&agrave; đại tiện ra m&aacute;u thường xuy&ecirc;n. Đ&acirc;y l&agrave; bệnh l&yacute; gặp kh&aacute; nhiều ở trẻ em, với đặc trưng l&agrave; đi ngo&agrave;i ph&acirc;n d&iacute;nh m&aacute;u. V&igrave; thế n&oacute; cũng dễ bị nhầm sang t&aacute;o b&oacute;n, nứt hậu m&ocirc;n (tuy nhi&ecirc;n những trường hợp n&agrave;y thường hiếm)&hellip;</p>\r\n\r\n<p><img alt=\"Hình ảnh polyp trên đường tiêu hóa của một bệnh nhi được phát hiện nhờ nội soi. Ảnh: BS cung cấp.\" src=\"https://dantricdn.com/thumb_w/640/2017/noisoi1-1495505456081.jpg\" /></p>\r\n\r\n<p>H&igrave;nh ảnh polyp tr&ecirc;n đường ti&ecirc;u h&oacute;a của một bệnh nhi được ph&aacute;t hiện nhờ nội soi. Ảnh: BS cung cấp.</p>\r\n\r\n<p>Nhưng tr&ecirc;n thực tế, c&oacute; những trẻ đại tiện ra m&aacute;u l&agrave; l&agrave; do polyp đại tr&agrave;ng m&agrave; phải qua thăm kh&aacute;m b&aacute;c sĩ mới chẩn đo&aacute;n được. C&oacute; trường hợp bệnh nhi 14 tuổi đến kh&aacute;m ban đầu chỉ với biểu hiện rối loạn ti&ecirc;u h&oacute;a, đau bụng, đi ngo&agrave;i ra m&aacute;u, qua nội soi b&aacute;c sĩ ph&aacute;t hiện h&agrave;ng ngh&igrave;n polyp. Nhưng trường hợp n&agrave;y l&agrave; bệnh hiếm, mang yếu tố gene, yếu tố gia đ&igrave;nh.</p>\r\n\r\n<p>&ldquo;Bệnh polyp trực tr&agrave;ng ở trẻ nhỏ c&oacute; thể c&oacute; yếu tố gia đ&igrave;nh hoặc kh&ocirc;ng. Đ&acirc;y kh&ocirc;ng phải l&agrave; bệnh l&yacute; qu&aacute; nguy hiểm, nhưng khi c&aacute;c polyp g&acirc;y ra t&igrave;nh trạng chảy m&aacute;u khi đại tiện th&igrave; cần phải can thiệp để giảm nguy cơ mất m&aacute;u, thiếu m&aacute;u nặng. Hơn nữa, c&aacute;c polyp n&agrave;y đa phần l&agrave; l&agrave;nh t&iacute;nh, nhưng một số c&oacute; thể trở th&agrave;nh ung thư. Ở người lớn, phần lớn ung thư đại trực tr&agrave;ng bắt nguồn từ c&aacute;c polyp n&agrave;y do theo thời gian, một v&agrave;i polyp c&oacute; thể h&oacute;a &aacute;c trở th&agrave;nh ung thư&rdquo;, GS Long n&oacute;i.</p>\r\n\r\n<p>Trong khi đ&oacute;, polyp l&uacute;c đầu thường nhỏ v&agrave; sinh sản chậm, kh&ocirc;ng g&acirc;y triệu chứng. Ch&iacute;nh v&igrave; thế, khi ph&aacute;t hiện c&aacute;c polyp trẻ cũng cần được cắt bỏ để tr&aacute;nh đại tiện k&eacute;m, nguy cơ &aacute;c t&iacute;nh th&agrave;nh ung thư.</p>\r\n\r\n<p>Gi&aacute;o sư Long khuyến c&aacute;o khi trẻ c&oacute; biểu hiện đau bụng, rối loạn ti&ecirc;u h&oacute;a nhiều, đặc biệt đại tiện ra m&aacute;u, thay đổi ph&acirc;n, số lần đại tiện, đặc điểm điểm ph&acirc;n kh&ocirc;ng b&igrave;nh thường cha mẹ n&ecirc;n đưa con đi kh&aacute;m ở c&aacute;c cơ sở Nhi khoa, nếu thấy cần thiết sẽ được chỉ định nội soi đại tr&agrave;ng, cần thiết sẽ được nội soi to&agrave;n bộ đại trực tr&agrave;ng. Tr&ecirc;n thực tế đa phần những trường hợp chảy m&aacute;u tươi khi đi đại tiện lặp lại nhiều lần phần lớn lớn nguy&ecirc;n nh&acirc;n do polyp.</p>\r\n\r\n<p>Ở trẻ nhỏ sau khi cắt polyp thời gian t&aacute;i kh&aacute;m l&acirc;u hơn, ri&ecirc;ng với người lớn, đặc biệt người tr&ecirc;n 50 tuổi th&igrave; sau 12 th&aacute;ng &ndash; 18 th&aacute;ng n&ecirc;n đi kiểm tra lại một lần để kịp thời ph&aacute;t hiện nguy cơ t&aacute;i ph&aacute;t nếu c&oacute;.</p>', '2017-05-27 00:52:08', '2017-05-27 00:52:08', 2, 1),
(10, '81636d1c412a8f62bdf24eb484b824df974c7c87.jpg', 'Cảnh giác dấu hiệu đi ngoài ra máu ở trẻ nhỏ 2', 'Ở trẻ nhỏ, đi ngoài ra máu có thể là tình trạng táo bón, nứt hậu môn nhưng cũng có thể là dấu hiệu của polyp đại tràng. Trên thực tế, nhiều bệnh nhi được phát hiện tình trạng polyp đại tràng từ dấu hiệu cứ ngỡ do táo bón gây ra này.', '<p>B&eacute; N.V.H (7 tuổi, H&agrave; Tĩnh) được gia đ&igrave;nh đưa đi kh&aacute;m v&igrave; thường xuy&ecirc;n đại tiện lẫn m&aacute;u tươi. L&uacute;c đầu nghĩ do trẻ bị t&aacute;o b&oacute;n, gia đ&igrave;nh đ&atilde; thay đổi chế độ ăn cho trẻ, ăn to&agrave;n rau lang, rau m&ugrave;ng tơi, chuối, đu đủ&hellip; B&eacute; đi ngo&agrave;i kh&ocirc;ng t&aacute;o b&oacute;n nhưng vẫn lẫn rất nhiều m&aacute;u tươi trong ph&acirc;n khiến gia đ&igrave;nh sốt ruột mới đưa b&eacute; ra H&agrave; Nội kh&aacute;m.</p>\r\n\r\n<p>GS.TS Đ&agrave;o Văn Long, nguy&ecirc;n Gi&aacute;m đốc trung t&acirc;m nội soi bệnh viện Đại học Y H&agrave; Nội cho biết, bệnh nhi đến kh&aacute;m c&oacute; t&igrave;nh trạng đi ngo&agrave;i ra m&aacute;u thường xuy&ecirc;n, nhất l&agrave; 1 tuần trở lại đ&acirc;y d&ugrave; ph&acirc;n kh&ocirc;ng cứng, c&oacute; biểu hiện thiếu m&aacute;u.</p>\r\n\r\n<p>B&aacute;c sĩ quyết định tiến h&agrave;nh nội soi đại tr&agrave;ng cho ch&aacute;u b&eacute; bằng ống nội soi mềm, d&ugrave;ng thuốc an thần. Kết quả ph&aacute;t hiện tại đại tr&agrave;ng sigma c&oacute; 2 polyp k&iacute;ch thước nhỏ 0,4 cm, tại trực tr&agrave;ng cũng c&oacute; một polyp lớn k&iacute;ch thước 1,5 cm;. Trong qu&aacute; tr&igrave;nh nội soi b&aacute;c sĩ đ&atilde; cắt cả 3 polyp tr&ecirc;n.</p>\r\n\r\n<p><img alt=\"Một bệnh nhi được nội soi dạ dày do có dấu hiệu viêm loét dạ dày do vi khuẩn HP.\" src=\"https://dantricdn.com/thumb_w/640/2017/noisoi-1495505456078.jpg\" /></p>\r\n\r\n<p>Một bệnh nhi được nội soi dạ d&agrave;y do c&oacute; dấu hiệu vi&ecirc;m lo&eacute;t dạ d&agrave;y do vi khuẩn HP.</p>\r\n\r\n<p>Polyp đại trực tr&agrave;ng (đặc biệt l&agrave; loại c&oacute; cuống) dễ bị chảy m&aacute;u khi ph&acirc;n đi qua ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y chảy m&aacute;u khi đại tiện ở ch&aacute;u b&eacute;. Ngay sau khi cắt polyp t&igrave;nh trạng đại tiện ra m&aacute;u kh&ocirc;ng c&ograve;n. Bệnh nhi được chỉ định th&ecirc;m sắt acid folic, dinh dưỡng hợp l&yacute; để phục hồi sức khỏe.</p>\r\n\r\n<p>GS Long cho biết, một số trường hợp trẻ nhỏ từ 3 &ndash; 9 tuổi do &ocirc;ng trực tiếp kh&aacute;m được ph&aacute;t hiện polyp đại trực tr&agrave;ng chỉ từ dấu hiệu ban đầu l&agrave; đại tiện ra m&aacute;u thường xuy&ecirc;n. Đ&acirc;y l&agrave; bệnh l&yacute; gặp kh&aacute; nhiều ở trẻ em, với đặc trưng l&agrave; đi ngo&agrave;i ph&acirc;n d&iacute;nh m&aacute;u. V&igrave; thế n&oacute; cũng dễ bị nhầm sang t&aacute;o b&oacute;n, nứt hậu m&ocirc;n (tuy nhi&ecirc;n những trường hợp n&agrave;y thường hiếm)&hellip;</p>\r\n\r\n<p><img alt=\"Hình ảnh polyp trên đường tiêu hóa của một bệnh nhi được phát hiện nhờ nội soi. Ảnh: BS cung cấp.\" src=\"https://dantricdn.com/thumb_w/640/2017/noisoi1-1495505456081.jpg\" /></p>\r\n\r\n<p>H&igrave;nh ảnh polyp tr&ecirc;n đường ti&ecirc;u h&oacute;a của một bệnh nhi được ph&aacute;t hiện nhờ nội soi. Ảnh: BS cung cấp.</p>\r\n\r\n<p>Nhưng tr&ecirc;n thực tế, c&oacute; những trẻ đại tiện ra m&aacute;u l&agrave; l&agrave; do polyp đại tr&agrave;ng m&agrave; phải qua thăm kh&aacute;m b&aacute;c sĩ mới chẩn đo&aacute;n được. C&oacute; trường hợp bệnh nhi 14 tuổi đến kh&aacute;m ban đầu chỉ với biểu hiện rối loạn ti&ecirc;u h&oacute;a, đau bụng, đi ngo&agrave;i ra m&aacute;u, qua nội soi b&aacute;c sĩ ph&aacute;t hiện h&agrave;ng ngh&igrave;n polyp. Nhưng trường hợp n&agrave;y l&agrave; bệnh hiếm, mang yếu tố gene, yếu tố gia đ&igrave;nh.</p>\r\n\r\n<p>&ldquo;Bệnh polyp trực tr&agrave;ng ở trẻ nhỏ c&oacute; thể c&oacute; yếu tố gia đ&igrave;nh hoặc kh&ocirc;ng. Đ&acirc;y kh&ocirc;ng phải l&agrave; bệnh l&yacute; qu&aacute; nguy hiểm, nhưng khi c&aacute;c polyp g&acirc;y ra t&igrave;nh trạng chảy m&aacute;u khi đại tiện th&igrave; cần phải can thiệp để giảm nguy cơ mất m&aacute;u, thiếu m&aacute;u nặng. Hơn nữa, c&aacute;c polyp n&agrave;y đa phần l&agrave; l&agrave;nh t&iacute;nh, nhưng một số c&oacute; thể trở th&agrave;nh ung thư. Ở người lớn, phần lớn ung thư đại trực tr&agrave;ng bắt nguồn từ c&aacute;c polyp n&agrave;y do theo thời gian, một v&agrave;i polyp c&oacute; thể h&oacute;a &aacute;c trở th&agrave;nh ung thư&rdquo;, GS Long n&oacute;i.</p>\r\n\r\n<p>Trong khi đ&oacute;, polyp l&uacute;c đầu thường nhỏ v&agrave; sinh sản chậm, kh&ocirc;ng g&acirc;y triệu chứng. Ch&iacute;nh v&igrave; thế, khi ph&aacute;t hiện c&aacute;c polyp trẻ cũng cần được cắt bỏ để tr&aacute;nh đại tiện k&eacute;m, nguy cơ &aacute;c t&iacute;nh th&agrave;nh ung thư.</p>\r\n\r\n<p>Gi&aacute;o sư Long khuyến c&aacute;o khi trẻ c&oacute; biểu hiện đau bụng, rối loạn ti&ecirc;u h&oacute;a nhiều, đặc biệt đại tiện ra m&aacute;u, thay đổi ph&acirc;n, số lần đại tiện, đặc điểm điểm ph&acirc;n kh&ocirc;ng b&igrave;nh thường cha mẹ n&ecirc;n đưa con đi kh&aacute;m ở c&aacute;c cơ sở Nhi khoa, nếu thấy cần thiết sẽ được chỉ định nội soi đại tr&agrave;ng, cần thiết sẽ được nội soi to&agrave;n bộ đại trực tr&agrave;ng. Tr&ecirc;n thực tế đa phần những trường hợp chảy m&aacute;u tươi khi đi đại tiện lặp lại nhiều lần phần lớn lớn nguy&ecirc;n nh&acirc;n do polyp.</p>\r\n\r\n<p>Ở trẻ nhỏ sau khi cắt polyp thời gian t&aacute;i kh&aacute;m l&acirc;u hơn, ri&ecirc;ng với người lớn, đặc biệt người tr&ecirc;n 50 tuổi th&igrave; sau 12 th&aacute;ng &ndash; 18 th&aacute;ng n&ecirc;n đi kiểm tra lại một lần để kịp thời ph&aacute;t hiện nguy cơ t&aacute;i ph&aacute;t nếu c&oacute;.</p>', '2017-05-27 01:07:29', '2017-05-27 01:07:29', 2, 1);

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

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `fullname`, `created_at`, `updated_at`) VALUES
(1, 'dev', '123456', 'Giang', '2017-05-31 00:21:27', '2017-05-31 00:21:27');

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
(19, 'gsd', 0, NULL, '123', '2017-05-31', '123123', 0, '2017-05-30 01:15:33', '2017-05-30 01:15:33'),
(20, '1231', 23123, NULL, '123', '2017-05-29', '123123', 0, '2017-05-30 01:18:06', '2017-05-30 01:18:06'),
(21, '1234', 1234, NULL, '12314', '2017-05-30', '123412', 0, '2017-05-30 01:19:46', '2017-05-30 01:19:46'),
(22, 'Giang', 23, NULL, '016161196166', '0000-00-00', 'gsdfgsg', 1, '2017-05-31 21:17:23', '2017-05-31 21:17:23'),
(23, 'Giang Nguyen', 23, NULL, '013461563156', '0000-00-00', 'Cho toi kham', 0, '2017-06-01 00:03:33', '2017-06-01 00:03:33'),
(24, 'Nguyen DInh Giang', 12, NULL, '014111616', '0000-00-00', 'Giang Nguyen', 0, '2017-06-01 00:06:23', '2017-06-01 00:06:23'),
(25, 'Trang', 24, NULL, '013161610', '0000-00-00', 'àgsdgsdfg', 0, '2017-06-01 00:08:37', '2017-06-01 00:08:37'),
(26, '1231', 23123, NULL, '123', '0000-00-00', '123', 0, '2017-06-01 00:09:42', '2017-06-01 00:09:42');

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
(2, '342499f7b31d118ef75f99cfdc47e4c6c95225ad.jpg', 'Nội soi can thiệp', 'Nội soi can thiệp', '<p><strong>I. Tại sao phải Nội soi ti&ecirc;u h&oacute;a?&nbsp;</strong><em>Ống ti&ecirc;u h&oacute;a l&agrave; một cơ quan rất kh&oacute; chẩn đo&aacute;n bệnh l&yacute;, tuy nhi&ecirc;n v</em><em>ới sự tiến bộ của khoa học, c&aacute;c b&aacute;c sĩ ti&ecirc;u h&oacute;a c&oacute; th&ecirc;m phương tiện mới l&agrave; Nội soi ti&ecirc;u h&oacute;a &ndash; đ&acirc;y phương ph&aacute;p thăm kh&aacute;m ưu việt nhất gi&uacute;p xem trực tiếp h&igrave;nh ảnh<strong>&nbsp;</strong>ống ti&ecirc;u h&oacute;a (thực quản, dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng, t&aacute; tr&agrave;ng, đại tr&agrave;ng, trực tr&agrave;ng v&agrave; ống hậu m&ocirc;n) th&ocirc;ng qua h&igrave;nh ảnh thu được. Qua nội soi, c&aacute;c b&aacute;c sĩ mới c&oacute; thể ph&aacute;t hiện những tổn thương rất nhỏ (v&agrave;i milim&eacute;t), ph&aacute;t hiện c&aacute;c bệnh l&yacute; trong ống ti&ecirc;u h&oacute;a từ đ&oacute; sẽ c&oacute; được chẩn đo&aacute;n ch&iacute;nh x&aacute;c v&agrave; phương ph&aacute;p điều trị th&iacute;ch hợp.</em></p>\r\n\r\n<p><strong>II. Khoa Nội soi Ti&ecirc;u h&oacute;a BV Ho&agrave;n Mỹ S&agrave;i G&ograve;n</strong></p>\r\n\r\n<p>Được th&agrave;nh lập ngay từ những ng&agrave;y đầu th&agrave;nh lập bệnh viện, với trang thiết bị hiện đại v&agrave; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n cao của đội ngũ y b&aacute;c sĩ, h&agrave;ng năm Khoa Nội soi ti&ecirc;u h&oacute;a phục vụ cho hơn 23000 lượt soi dạ d&agrave;y, hơn 3000 lượt soi đại tr&agrave;ng v&agrave; ti&ecirc;n phong trong triển khai nội soi mật tụy ngược d&ograve;ng (ERCP). Kh&ocirc;ng chỉ dừng trong lĩnh vực&nbsp;<strong>Nội soi Chẩn đo&aacute;n</strong>, Khoa Nội soi ti&ecirc;u h&oacute;a cũng đi ti&ecirc;n phong trong lĩnh vực&nbsp;<strong>Nội soi Điều trị</strong>, đ&atilde; c&oacute; nhiều bệnh l&yacute; ở ống ti&ecirc;u h&oacute;a đ&atilde; được điều trị th&agrave;nh c&ocirc;ng th&ocirc;ng qua phương ph&aacute;p n&agrave;y.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&aacute;c b&aacute;c sĩ l&agrave;m việc trong khoa đều c&oacute; hơn 5 năm kinh nghiệm trong lĩnh vực nội soi, mỗi b&aacute;c sĩ đều thực hiện v&agrave;i chục ng&agrave;n trường hợp nội soi, ri&ecirc;ng Bác sĩ trưởng khoa đ&atilde; c&oacute; 16 năm kinh nghiệm trong ng&agrave;nh nội soi gồm 5 năm trong ng&agrave;nh ti&ecirc;u h&oacute;a v&agrave; nội soi nhi v&agrave; 11 năm trong nội soi ở em v&agrave; người lớn.</p>\r\n\r\n<p><strong>* H&igrave;nh ảnh Nội soi</strong></p>\r\n\r\n<p><img alt=\"Image\" src=\"http://www.hoanmy.com/Data/Sites/5/media/stories/2012/02-2012/23/1.jpg\" style=\"height:179px; width:469px\" />&nbsp;</p>\r\n\r\n<p><strong>* Nội soi Điều trị&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong><img alt=\"Image\" src=\"http://www.hoanmy.com/Data/Sites/5/media/stories/2012/02-2012/23/2.jpg\" style=\"height:195px; width:463px\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p><strong>III. Nội soi chẩn đo&aacute;n bệnh v&agrave; nội soi điều trị</strong></p>\r\n\r\n<p><strong>1.</strong>&nbsp;&nbsp;<strong>Nội soi chẩn đo&aacute;n</strong></p>\r\n\r\n<p><strong>a.</strong>&nbsp;&nbsp;<strong>Nội soi dạ d&agrave;y t&aacute; tr&agrave;ng</strong></p>\r\n\r\n<p>- Nội soi th&ocirc;ng thường: chẩn đo&aacute;n, sinh thiết, x&eacute;t nghiệm vi tr&ugrave;ng Helicobacter Pylori.</p>\r\n\r\n<p>- Nội soi c&oacute; an thần v&agrave; giảm đau.</p>\r\n\r\n<p>- Nội soi cho trẻ em.</p>\r\n\r\n<p><strong>b.</strong>&nbsp;<strong>Nội soi trực tr&agrave;ng &ndash; đại tr&agrave;ng</strong></p>\r\n\r\n<p>- Nội soi th&ocirc;ng thường</p>\r\n\r\n<p>- Nội soi c&oacute; an thần v&agrave; giảm đau.</p>\r\n\r\n<p>- Nội soi cho trẻ em</p>\r\n\r\n<p><strong>c.</strong>&nbsp;<strong>Nội soi mật tụy ngược d&ograve;ng chẩn đo&aacute;n</strong>:&nbsp;chẩn đo&aacute;n sỏi mật, hẹp đường mật, bướu đường mật&hellip;.</p>\r\n\r\n<p><br />\r\n<img alt=\"Image\" src=\"http://www.hoanmy.com/Data/Sites/5/media/stories/2012/02-2012/23/3.jpg\" style=\"height:429px; width:456px\" />&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>2. Nội soi điều trị</strong></p>\r\n\r\n<p><strong>a.</strong>&nbsp;<strong>Nội soi dạ d&agrave;y t&aacute; tr&agrave;ng điều trị:</strong></p>\r\n\r\n<p>- Điều trị chảy m&aacute;u dạ d&agrave;y, t&aacute; tr&agrave;ng, thực quản: do vi&ecirc;m&nbsp;&nbsp;lo&eacute;t, do d&atilde;n tĩnh mạch thực quản, dạ d&agrave;y&hellip;</p>\r\n\r\n<p>+ Ti&ecirc;m c&acirc;̀m máu</p>\r\n\r\n<p>+ Đ&ocirc;́t đi&ecirc;̣n c&acirc;̀m máu &ocirc;̉ loét: đơn cực, lưỡng cực.</p>\r\n\r\n<p>+ Clip c&acirc;̀m máu</p>\r\n\r\n<p>+ Thắt tĩnh mạch thực quản</p>\r\n\r\n<p><em>+&nbsp;</em>Ti&ecirc;m&nbsp;<em>Histoacryl</em><em>&reg;</em><em>&nbsp;</em>xóa tĩnh mạch t&acirc;m, đáy vị</p>\r\n\r\n<p>- &nbsp;Lấy dị vật trong dạ d&agrave;y.</p>\r\n\r\n<p>- Cắt polyp dạ d&agrave;y t&aacute; tr&agrave;ng.</p>\r\n\r\n<p>- Đặt ống kim loại (stent kim loại) điều trị ung thư thực quản, dạ d&agrave;y t&aacute; tr&agrave;ng khi kh&ocirc;ng c&ograve;n khả năng phẫu thuật.</p>\r\n\r\n<p>- Mở dạ d&agrave;y ra da qua nội soi: nu&ocirc;i ăn trong những trường hợp kh&ocirc;ng tự ăn được.</p>\r\n\r\n<p>- Nong t&acirc;m vị điều trị co thắt t&acirc;m vị.</p>\r\n\r\n<p>- Nong điều trị hẹp thực quản.</p>\r\n\r\n<p><br />\r\n<img alt=\"Image\" src=\"http://www.hoanmy.com/Data/Sites/5/media/stories/2012/02-2012/23/4.jpg\" style=\"height:415px; width:436px\" />&nbsp;</p>\r\n\r\n<p><strong>&nbsp;b.&nbsp;Nội soi trực tr&agrave;ng &ndash; đại tr&agrave;ng điều trị:</strong></p>\r\n\r\n<p>- Cắt polyp đại tr&agrave;ng,&nbsp;trực tr&agrave;ng.</p>\r\n\r\n<p>- Cầm m&aacute;u: lo&eacute;t chảy m&aacute;u, cắt polyp chảy m&aacute;u</p>\r\n\r\n<p>-&nbsp;Lấy dị vật trong đại trực tr&agrave;ng.</p>\r\n\r\n<p>- Thắt trĩ điều trị trĩ nội độ I-II-III: kh&ocirc;ng cần nằm viện, &iacute;t đau, l&agrave;m việc b&igrave;nh thường.</p>\r\n\r\n<p>- Đặt ống kim loại (stent kim loại) điều trị ung thư kh&ocirc;ng c&ograve;n khả năng phẫu thuật.</p>\r\n\r\n<p>- Nong hẹp miệng nối sau phẫu thuật đại trực tr&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Image\" src=\"http://www.hoanmy.com/Data/Sites/5/media/stories/2012/02-2012/23/5.jpg\" style=\"height:214px; width:403px\" /><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>c.</strong>&nbsp;<strong>Nội soi mật tụy điều trị</strong></p>\r\n\r\n<p>- Lấy sỏi mật, lấy sỏi ống tụy, lấy giun trong đường mật.</p>\r\n\r\n<p>-&nbsp;&nbsp;Điều trị hẹp đường mật.</p>\r\n\r\n<p>- Đặt ống điều trị tắc mật do ung thư đường mật.</p>\r\n\r\n<p>- Cắt cơ v&ograve;ng điều trị tắc mật do hẹp nh&uacute; vater, t&uacute;i thừa t&aacute; tr&agrave;ng.</p>\r\n\r\n<p>- N&ocirc;̣i soi m&acirc;̣t tụy đi&ecirc;̀u trị&nbsp; dò m&acirc;̣t sau cắt túi m&acirc;̣t.</p>', '2017-05-23 00:21:49', '2017-05-23 00:21:49', 1, 0),
(3, 'f24b8e92f690e6a8c25bf0bb67eb77f5850b447d.jpg', 'Chuẩn đoán hình ảnh', 'Chuẩn đoán hình ảnh', '<p>Chuẩn đon&aacute; hinh ianh</p>', '2017-05-23 00:22:10', '2017-05-23 00:22:10', 1, 0),
(4, '0476f565c4f63d49d51834dfebfa30085a8f31d2.jpg', 'Thăm dò chức năng', 'Thăm dò chắc năng', '<p>Thăm d&ograve; chawcns năgn</p>', '2017-05-23 00:22:26', '2017-05-23 00:22:26', 1, 0),
(5, '08d01ec4cb6a41a0a32c73d5fa6985b49f5fde96.jpg', 'Xét nghiệm', 'Xet nghiem', '<p>Bao hiem</p>', '2017-05-23 00:22:55', '2017-05-23 00:22:55', 1, 0),
(6, 'fb3d3b9718963b0ad3e017021119f5461cda1a17.jpg', 'Liên kết bảo hiểm', 'Liên kết bảo hiểm', '<p>Li&ecirc;n kết bảo hiểm</p>', '2017-05-23 00:23:08', '2017-05-23 00:23:08', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `idslide` int(11) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT 'hoàng long',
  `images` varchar(120) NOT NULL DEFAULT 'slide.jpg',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`idslide`, `name`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Array', 'slide.jpg', '2017-06-03 00:17:39', '2017-06-03 00:17:39');

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
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`idslide`);

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
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `idschedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `idslide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
