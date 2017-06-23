-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 22, 2017 lúc 05:27 CH
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
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_about_us_idcategory_about_us` int(11) NOT NULL,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `about_us`
--

INSERT INTO `about_us` (`idnews`, `images`, `title`, `summary`, `content`, `created_at`, `updated_at`, `category_about_us_idcategory_about_us`, `priority`) VALUES
(1, '75998b6e9a477e4a2074a2f50c1bed9211077182.png', 'Giới thiệu chung', 'Phòng khám Hoàng Long là phòng khám đa khoa nhưng chuyên sâu trong lĩnh vực Tiêu hóa và Gan mật. Tại đây, chúng tôi quy tụ đội ngũ bác sĩ chuyên nghiệp, có trình độ tay nghề cao và nhiều năm kinh nghiệm ở các bệnh viện lớn và uy tín của Việt Nam.', '<p>Giới thiệu ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long</p>\r\n\r\n<p>Ph&ograve;ng kh&aacute;m Ho&agrave;ng Long l&agrave; ph&ograve;ng kh&aacute;m đa khoa nhưng chuy&ecirc;n s&acirc;u trong lĩnh vực Ti&ecirc;u h&oacute;a v&agrave; Gan mật. Tại đ&acirc;y, ch&uacute;ng t&ocirc;i quy tụ đội ngũ b&aacute;c sĩ chuy&ecirc;n nghiệp, c&oacute; tr&igrave;nh độ tay nghề cao v&agrave; nhiều năm kinh nghiệm ở c&aacute;c bệnh viện lớn v&agrave; uy t&iacute;n của Việt Nam. Ho&agrave;ng Long cũng l&agrave; một trong những ph&ograve;ng kh&aacute;m đầu ti&ecirc;n tại Việt Nam &aacute;p dụng nhiều kỹ thuật mới, được thực hi&ecirc;n tr&ecirc;n c&aacute;c hệ thống m&aacute;y m&oacute;c thuộc loại ti&ecirc;n tiến nhất về nội soi để đem lại c&aacute;c dịch vụ kh&aacute;m chữa bệnh ch&iacute;nh x&aacute;c nhất, hiệu quả nhất v&agrave; an to&agrave;n nhất cho mỗi bệnh nh&acirc;n của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"/uploads/IMG_391910.jpg\" style=\"height:200px; width:200px\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;H&igrave;nh ảnh. B&aacute;c sĩ đang vệ sinh thiết bị</p>\r\n\r\n<p>Triết l&yacute; hoạt động của ph&ograve;ng kh&aacute;m:</p>\r\n\r\n<p>- Mỗi bệnh nh&acirc;n l&agrave; một người th&acirc;n, được đối xử b&igrave;nh đẳng, được quan t&acirc;m, chăm s&oacute;c với sự t&acirc;n t&igrave;nh v&agrave; chu đ&aacute;o nhất.</p>\r\n\r\n<p>- Mỗi dịch vụ cung cấp phải đạt chất lượng theo ti&ecirc;u chuẩn quốc tế.</p>\r\n\r\n<p>- Kh&ocirc;ng ngừng cải tiến, &aacute;p dụng c&aacute;c phương ph&aacute;p c&aacute;c c&ocirc;ng nghệ kh&aacute;m chữa bệnh mới để đem lại hiệu quả điều trị tốt nhất cho bệnh nh&acirc;n</p>\r\n\r\n<p>- Ph&ograve;ng kh&aacute;m lu&ocirc;n mở cửa cho đến l&uacute;c bệnh nh&acirc;n cuối c&ugrave;ng ra về.</p>\r\n\r\n<p>- Chất lượng v&agrave; sự an to&agrave;n của bệnh nhận l&agrave; n&ecirc;n tảng của mọi quyết định</p>\r\n\r\n<p>Điều g&igrave; tạo ra sự kh&aacute;c biệt của Ph&ograve;ng kh&aacute;m Đa Khoa Ho&agrave;ng Long?</p>\r\n\r\n<ul>\r\n	<li>Ch&uacute;ng t&ocirc;i tin rằng, với những bệnh nh&acirc;n c&oacute; nhu cầu kh&aacute;m v&agrave; điều trị c&aacute;c</li>\r\n	<li>bệnh về ti&ecirc;u h&oacute;a v&agrave; gan mật, ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long sẽ l&agrave; một trong những địa chỉ uy t&iacute;n v&agrave; đang tin cậy nhất để lựa chọn, v&igrave; tại đ&acirc;y:</li>\r\n	<li>Quy tụ đội ngũ b&aacute;c sĩ l&agrave; những chuy&ecirc;n gia h&agrave;ng đầu tại về lĩnh vực ti&ecirc;u h&oacute;a v&agrave; gan mật tại Việt Nam.</li>\r\n	<li>Sở hữu những thiết bị m&aacute;y m&oacute;c hiện đại v&agrave; ti&ecirc;n tiến bậc nhất hiện nay, trong đ&oacute; hệ thống m&aacute;y nội soi đường ti&ecirc;u h&oacute;a tr&ecirc;n, đường ti&ecirc;u h&oacute;a dưới c&oacute; c&ocirc;ng nghệ ngang tầm c&aacute;c nước trong khu vực Đ&ocirc;ng Nam &Aacute; với 2 gi&agrave;n m&aacute;y nội soi v&agrave; 120 d&acirc;y nội soi ống mềm c&aacute;c loại.</li>\r\n	<li>L&agrave; một trong những cơ sở kh&aacute;m chữa bệnh sở hữu m&aacute;y si&ecirc;u &acirc;m nội soi SU1 &ndash; d&ograve;ng m&aacute;y si&ecirc;u &acirc;m nội soi cao cấp nhất tr&ecirc;n thế giới.</li>\r\n	<li>100% thiết bị y tế của ph&ograve;ng kh&aacute;m được khử khuẩn, tiệt khuẩn bằng hệ thống hiện đại IHI v&agrave; Scopy Buddy Nhật Bản .</li>\r\n	<li>Tiến h&agrave;nh kh&aacute;m v&agrave; trả kết quả cho bệnh nh&acirc;n trong ng&agrave;y, gi&uacute;p bệnh nh&acirc;n tiết kiệm thời gian chờ đợi v&agrave; đi lại</li>\r\n	<li>Cơ sở hạ tầng sạch sẽ, ph&ograve;ng kh&aacute;m nằm ở trung t&acirc;m v&agrave; khả năng tiếp cận dễ d&agrave;ng.</li>\r\n	<li>Đem đến sự h&agrave;i long về chất lượng dịch vụ, sự đ&oacute;n tiếp chu đ&aacute;o v&agrave; gi&aacute; th&agrave;nh hợp l&yacute;</li>\r\n</ul>\r\n\r\n<p>Th&ocirc;ng tin li&ecirc;n hệ:</p>\r\n\r\n<p>Ph&ograve;ng kh&aacute;m Đa Khoa Ho&agrave;ng Long</p>\r\n\r\n<p>Địa chỉ: Tầng 10 T&ograve;a th&aacute;p VCCI, số 9 Đ&agrave;o Duy Anh, Đống Đa,H&agrave; Nội.</p>\r\n\r\n<p>Email:&nbsp;info@hoanglonghospital.vn</p>\r\n\r\n<p>Hotline :&nbsp;04 626 00 581</p>\r\n\r\n<p>Điện thoại:&nbsp;04 628 11 331 - 04 628 11 337&nbsp;|</p>\r\n\r\n<p>Website: http://hoanglonghospital.vn/</p>', '2017-05-27 00:33:35', '2017-06-15 19:01:48', 0, 5),
(2, 'news.jpg', 'Cơ sở hạ tầng', 'Phòng khám đa khoa Hoàng Long được Sở y tế cấp phép đi vào hoạt động từ ngày 1/12/2013.\r\nVới mong muốn xây dựng một phòng khám đạt tiêu chuẩn chất lượng quốc tế, Hoàng Lòng không chỉ chú trọng vào đầu tư cơ sở vật chất hiện đại mà còn quan tâm tới việc áp dụng các tiến bộ khoa học kỹ thuật, phương thức trị liệu tiên tiến để đem lại cho khách hàng những dịch vụ tốt nhất, an toàn nhất và hiệu quả nhất.', '<p>Giới thiệu cơ sở vật chất Ph&ograve;ng Kh&aacute;m Đa Khoa Ho&agrave;ng Long:</p>\r\n\r\n<p>Ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long được Sở y tế cấp ph&eacute;p đi v&agrave;o hoạt động từ ng&agrave;y 1/12/2013.</p>\r\n\r\n<p>Với mong muốn x&acirc;y dựng một ph&ograve;ng kh&aacute;m đạt ti&ecirc;u chuẩn chất lượng quốc tế, Ho&agrave;ng L&ograve;ng</p>\r\n\r\n<p>kh&ocirc;ng chỉ ch&uacute; trọng v&agrave;o đầu tư cơ sở vật chất hiện đại m&agrave; c&ograve;n quan t&acirc;m tới việc &aacute;p dụng c&aacute;c</p>\r\n\r\n<p>tiến bộ khoa học kỹ thuật, phương thức trị liệu ti&ecirc;n tiến để đem lại cho kh&aacute;ch h&agrave;ng những</p>\r\n\r\n<p>dịch vụ tốt nhất, an to&agrave;n nhất v&agrave; hiệu quả nhất.</p>\r\n\r\n<p>Ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long diện t&iacute;ch hơn 1000m2&nbsp;s&agrave;n bao trọn tầng 10 t&ograve;a nh&agrave; VCCI</p>\r\n\r\n<p>Tower, số 9 Đ&agrave;o Duy Anh H&agrave; Nội, được thiết kế hiện đại với c&acirc;u tr&uacute;c mặt bằng rộng v&agrave;</p>\r\n\r\n<p>tho&aacute;ng.</p>\r\n\r\n<p>Bộ cục ph&ograve;ng kh&aacute;m hợp l&yacute;, tiện lợi, c&ugrave;ng với hệ thống thang linh hoạt v&agrave; nhanh sẽ gi&uacute;p bệnh</p>\r\n\r\n<p>nh&acirc;n dễ d&agrave;ng trong việc di chuyển.</p>\r\n\r\n<p>Ấn tượng ban đầu khi người d&ugrave;ng bước v&agrave;o ph&ograve;ng kh&aacute;m đ&oacute; l&agrave; sự khang trang, sạch sẽ v&agrave;</p>\r\n\r\n<p>tho&aacute;ng đ&atilde;ng. Kh&ocirc;ng m&ugrave;i thuốc khử tr&ugrave;ng, kh&ocirc;ng c&oacute; sự ngột ngạt kh&oacute; chịu. Ch&iacute;nh điều n&agrave;y sẽ</p>\r\n\r\n<p>gi&uacute;p bệnh nh&acirc;n cảm thấy an t&acirc;m, thoải m&aacute;i, từ gi&uacute;p họ phục hồi, t&aacute;i tạo năng lượng nhanh</p>\r\n\r\n<p>hơn.</p>\r\n\r\n<p>Theo đuổi mục ti&ecirc;u trở th&agrave;nh ph&ograve;ng kh&aacute;m h&agrave;ng đầu tại Việt Nam về lĩnh vực ti&ecirc;u h&oacute;a v&agrave; gan</p>\r\n\r\n<p>mật, Ho&agrave;ng Long đ&atilde; đầu tư những trang thiết bị nội soi hiện đại v&agrave; hiếm c&oacute; ở Việt Nam.</p>\r\n\r\n<p>Một trong những trang thiết bị nội bật phải kể đến hệ thống m&aacute;y nội soi đường ti&ecirc;u h&oacute;a tr&ecirc;n,</p>\r\n\r\n<p>đường ti&ecirc;u h&oacute;a dưới c&oacute; c&ocirc;ng nghệ ngang tầm c&aacute;c nước trong khu vực Đ&ocirc;ng Nam &Aacute;, với 2</p>\r\n\r\n<p>gi&agrave;n m&aacute;y nội soi v&agrave; 120 d&acirc;y nội soi ống mềm c&aacute;c loại.</p>\r\n\r\n<p>Đặc biệt, Ho&agrave;ng Long l&agrave; một trong những cơ sở kh&aacute;m chữa bệnh sở hữu m&aacute;y si&ecirc;u &acirc;m nội soi</p>\r\n\r\n<p>SU1 &ndash; d&ograve;ng m&aacute;y si&ecirc;u &acirc;m nội soi cao cấp nhất tr&ecirc;n thế giới.</p>\r\n\r\n<p>Tại đ&acirc;y, ch&uacute;ng t&ocirc;i cũng trang bị c&aacute;c hệ thống m&aacute;y nội soi laser, nội soi CBT c&oacute; khả năng</p>\r\n\r\n<p>ph&oacute;ng đại h&igrave;nh ảnh gấp h&agrave;ng trăm lần.</p>\r\n\r\n<p>Trong lĩnh vực x&eacute;t nghiệm, ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long cũng trang bị hệ thống m&aacute;y</p>\r\n\r\n<p>m&oacute;c hiện đại, đồng bộ v&agrave; tự động như Hệ tự động sinh h&oacute;a miễn dịch Cobas 6000, m&aacute;y đo</p>\r\n\r\n<p>đ&ocirc;ng m&aacute;u ACL TOP, m&aacute;y Celltac Alpha, m&aacute;y Cobas U 411, Hệ thống tầm so&aacute;t vi khuẩn</p>\r\n\r\n<p>Helicobacter Pylori qua hơi thở C13-C14 v&agrave; nhiều thiết bị kh&aacute;c gi&uacute;p đưa ra kết quả x&eacute;t</p>\r\n\r\n<p>nghiệm nhanh ch&oacute;ng, hỗ trợ chẩn đo&aacute;n ch&iacute;nh x&aacute;c cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Trong lĩnh vực chẩn đo&aacute;n h&igrave;nh ảnh, phải kể đến c&aacute;c hệ thống m&aacute;y m&oacute;c như m&aacute;y hệ thống si&ecirc;u</p>\r\n\r\n<p>&acirc;m m&agrave;u 3D -4D, m&aacute;y chụp tuyến v&uacute; mammography, M&aacute;y chụp X- Quang, &hellip;</p>', '2017-05-27 00:33:45', '2017-05-27 00:33:45', 0, 1),
(11, '7d4e4f3db46cac73b1e0b4422c2775ee6ae50533.jpg', 'Kỹ thuật nội soi hiện đại giúp chẩn đoán trẻ viêm loét dạ dày, tá tràng không đau', 'SKĐS - Nhiều người lầm tưởng trẻ em không phải là nạn nhân của bệnh viêm loét dạ dày, nhưng trên thực tế, nhiều bệnh nhi cũng mắc căn bệnh này.\r\nĐau dạ dày là một loại bệnh rất phổ biến gây nhiều phiền toái và thường gặp phải ở người lớn. Nhiều người lầm tưởng trẻ em không phải là nạn nhân của bệnh viêm loét dạ dày, nhưng trên thực tế, nhiều bệnh nhi cũng mắc căn bệnh này.', '<p>SKĐS - Nhiều người lầm tưởng trẻ em kh&ocirc;ng phải l&agrave; nạn nh&acirc;n của bệnh vi&ecirc;m lo&eacute;t dạ d&agrave;y, nhưng tr&ecirc;n thực tế, nhiều bệnh nhi cũng mắc căn bệnh n&agrave;y.</p>\r\n\r\n<p><em>Đau dạ d&agrave;y l&agrave; một loại bệnh rất phổ biến g&acirc;y nhiều phiền to&aacute;i v&agrave; thường gặp phải ở người lớn. Nhiều người lầm tưởng trẻ em kh&ocirc;ng phải l&agrave; nạn nh&acirc;n của bệnh vi&ecirc;m lo&eacute;t dạ d&agrave;y, nhưng tr&ecirc;n thực tế, nhiều bệnh nhi cũng mắc căn bệnh n&agrave;y.</em></p>\r\n\r\n<p><strong>Trẻ đau bụng do vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng</strong></p>\r\n\r\n<p>Gần đ&acirc;y nhất, bệnh nhi Đ. P. B., 8 tuổi (qu&ecirc; Cao Bằng) bị đau bụng, buồn n&ocirc;n, n&ecirc;n gia đ&igrave;nh đ&atilde; cho b&eacute; đi kh&aacute;m ở địa phương nhưng về nh&agrave; b&eacute; vẫn bị đau bụng n&ecirc;n gia đ&igrave;nh đ&atilde; cho b&eacute; đi kh&aacute;m tiếp. Sau khi b&eacute; được nội soi v&agrave; kết quả cho thấy c&oacute; dịch dạ d&agrave;y trong, th&acirc;n v&agrave; ph&igrave;nh vị ni&ecirc;m mạc b&igrave;nh thường. Ni&ecirc;m mạc hang vị xung huyết nhẹ. Ngo&agrave;i ra, c&aacute;c b&aacute;c sĩ cũng đ&atilde; lấy mẫu ở hang vị để x&eacute;t nghiệm vi khuẩn HP. Kết luận cuối c&ugrave;ng cho thấy b&eacute; B. bị vi&ecirc;m dạ d&agrave;y. Theo GS.TS Đ&agrave;o Văn Long, chuy&ecirc;n gia cao cấp ti&ecirc;u h&oacute;a gan mật - Khoa Ti&ecirc;u h&oacute;a (bệnh viện Bạch Mai),&nbsp;đ&acirc;y chỉ l&agrave; một trong nhiều trường hợp được chẩn đo&aacute;n đ&uacute;ng bệnh v&agrave; được điều trị.</p>\r\n\r\n<p><strong>Dễ nhầm với rối loạn ti&ecirc;u h&oacute;a hoặc đau bụng giun</strong></p>\r\n\r\n<p>Theo GS. Long, trước đ&acirc;y, vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng l&agrave; bệnh rất hiếm gặp ở trẻ em, n&ecirc;n hễ trẻ bị đau bụng c&aacute;c bậc cha mẹ thường cho rằng trẻ c&oacute; thể bị rối loạn ti&ecirc;u h&oacute;a hoặc đau bụng giun. Tuy nhi&ecirc;n, thực tế kh&ocirc;ng phải vậy, 2/3 số trẻ dưới 15 tuổi đau bụng do vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng. C&oacute; nhiều trường hợp v&agrave;o cấp cứu v&igrave; n&ocirc;n ra m&aacute;u. Một số trường hợp biến chứng thủng dạ d&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"http://suckhoedoisong.vn/Images/hahien/2017/04/14/noi_soi_chan_doan_viem_loet_da_day_o_tre_em.jpg\" style=\"height:500px; width:374px\" /><em>Kỹ thuật nội soi hiện đại gi&uacute;p chẩn đo&aacute;n vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng ở trẻ em kh&ocirc;ng đau.</em></p>\r\n\r\n<p>GS.Long cho biết, c&oacute; rất nhiều nguy&ecirc;n nh&acirc;n g&acirc;y vi&ecirc;m dạ d&agrave;y ở trẻ em, trong đ&oacute; thường gặp l&agrave; vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng do vi khuẩn Helicobacter Pylori (HP), đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y ra vi&ecirc;m dạ d&agrave;y v&agrave; c&aacute;c biến chứng lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng, ung thư dạ d&agrave;y. Vi khuẩn n&agrave;y l&acirc;y qua đường miệng - miệng, nghĩa l&agrave; c&oacute; trẻ bị nhiễm khi ăn uống, sinh hoạt c&ugrave;ng với người nhiễm HP. Ngo&agrave;i ra, vi khuẩn theo đường m&ocirc;i trường do vệ sinh ăn uống k&eacute;m, &ocirc; nhiễm m&ocirc;i trường, nguồn nước nhiễm bẩn.</p>\r\n\r\n<p>Vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng do ăn uống kh&ocirc;ng điều độ, đ&uacute;ng c&aacute;ch, ăn uống kh&ocirc;ng đ&uacute;ng bữa, ăn qu&aacute; nhanh, vận động mạnh ngay sau khi ăn&hellip; l&agrave; một trong những nguy&ecirc;n nh&acirc;n trực tiếp v&agrave; phổ biến nhất khiến trẻ mắc phải bệnh dạ d&agrave;y.</p>\r\n\r\n<p>Một số loại thuốc (thuốc chống vi&ecirc;m giảm đau kh&ocirc;ng steroid) c&oacute; thể g&acirc;y ra vi&ecirc;m dạ d&agrave;y (cả đ&ocirc;ng y lẫn t&acirc;y y). Do vậy, phụ huynh cần lưu &yacute; khi cho trẻ d&ugrave;ng thuốc. Tr&agrave;o ngược dịch mật tụy cũng c&oacute; thể g&acirc;y n&ecirc;n vi&ecirc;m dạ d&agrave;y ở trẻ nhỏ. B&ecirc;n cạnh đ&oacute;, &aacute;p lực của gia đ&igrave;nh v&agrave; nỗi lo thi cử đ&atilde; v&ocirc; t&igrave;nh tạo ra một t&acirc;m l&yacute; nặng nề cho c&aacute;c b&eacute; dẫn đến căng thẳng v&agrave; đau dạ d&agrave;y.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c chế độ ăn uống như ăn đồ qu&aacute; n&oacute;ng, qu&aacute; lạnh, đồ cay, uống nhiều đồ uống c&oacute; ga, cồn cũng c&oacute; thể g&oacute;p phần l&agrave;m bệnh dạ d&agrave;y th&ecirc;m nặng.</p>\r\n\r\n<p><strong>Tiến bộ kỹ thuật nội soi ti&ecirc;u h&oacute;a chẩn đo&aacute;n ch&iacute;nh x&aacute;c, kh&ocirc;ng đau</strong></p>\r\n\r\n<p>Hiện nay, nhờ kỹ thuật nội soi ti&ecirc;u h&oacute;a tiến bộ, đặc biệt nội soi c&oacute; g&acirc;y m&ecirc;, n&ecirc;n việc chẩn đo&aacute;n vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng kh&ocirc;ng c&ograve;n kh&oacute; khăn nữa, nhất l&agrave; đối với trẻ nhỏ. GS. Long cho biết, Nhiều bậc phụ huynh sợ nội soi v&igrave; sẽ l&agrave;m con m&igrave;nh đau đớn. Thực tế kh&ocirc;ng phải vậy, hiện nay nhờ &aacute;p dụng kỹ thuật nội soi ti&ecirc;u h&oacute;a ti&ecirc;n tiến, đặc biệt c&oacute; loại ống soi mềm chuy&ecirc;n dụng d&agrave;nh cho trẻ nhỏ n&ecirc;n việc ph&aacute;t hiện v&agrave; chẩn đo&aacute;n bệnh được ch&iacute;nh x&aacute;c v&agrave; v&ocirc; c&ugrave;ng an to&agrave;n.</p>\r\n\r\n<p>C&aacute;c b&eacute; sẽ được kh&aacute;m tiền m&ecirc;, nếu đủ điều kiện b&eacute; sẽ được tiến h&agrave;nh nội soi tiền m&ecirc; n&ecirc;n ho&agrave;n to&agrave;n kh&ocirc;ng đau đớn. Ngo&agrave;i ra, c&ocirc;ng nghệ test thở C13 cho ph&eacute;p kiểm tra HP qua hơi thở của người bệnh, từ đ&oacute; c&oacute; thể x&aacute;c định được bệnh nh&acirc;n c&oacute; nhiễm HP hay kh&ocirc;ng.</p>\r\n\r\n<p>V&igrave; vậy, GS. Long khuyến c&aacute;o, nếu trẻ c&oacute; dấu hiệu đau bụng k&eacute;o d&agrave;i hoặc đau bụng dữ dội phải đi kh&aacute;m ngay để tr&aacute;nh c&aacute;c biến chứng nguy hiểm. N&ecirc;n kiểm tra khả năng b&eacute; bị nhiễm vi khuẩn HP dạ d&agrave;y.</p>', '2017-06-09 21:24:39', '2017-06-09 21:24:39', 2, 1),
(12, '07e4b40cec148d061535dfe890b773091b0382af.jpg', 'Bé đi tiêu ra máu coi chừng polyp đại trực tràng', 'Theo giáo sư, tiến sĩ Đào Văn Long, nguyên Trưởng khoa Tiêu hóa, Bệnh viện Bạch Mai (Hà Nội), bé trai ở Hà Tĩnh được gia đình đưa đi khám vì đi ngoài ra máu tươi. Bố mẹ nghĩ con bị táo bón nên đã thay đổi chế độ ăn bằng thực phẩm nhuận tràng, cho uống nhiều nước, tình trạng vẫn không giảm. Ngay cả khi bé không bị táo bón vẫn đi ngoài ra máu.', '<p>Theo gi&aacute;o sư, tiến sĩ Đ&agrave;o Văn Long, nguy&ecirc;n Trưởng khoa Ti&ecirc;u h&oacute;a, Bệnh viện Bạch Mai (H&agrave; Nội), b&eacute; trai ở H&agrave; Tĩnh được gia đ&igrave;nh đưa đi kh&aacute;m v&igrave; đi ngo&agrave;i ra m&aacute;u tươi. Bố mẹ nghĩ con bị t&aacute;o b&oacute;n n&ecirc;n đ&atilde; thay đổi chế độ ăn bằng thực phẩm nhuận tr&agrave;ng, cho uống nhiều nước, t&igrave;nh trạng vẫn kh&ocirc;ng giảm. Ngay cả khi b&eacute; kh&ocirc;ng bị t&aacute;o b&oacute;n vẫn đi ngo&agrave;i ra m&aacute;u.</p>\r\n\r\n<p>Trẻ được b&aacute;c sĩ chỉ định nội soi to&agrave;n bộ đại trực tr&agrave;ng. Kết quả ph&aacute;t hiện tại đại tr&agrave;ng sigma c&oacute; 2 polyp k&iacute;ch thước nhỏ 0,4 cm, tại trực tr&agrave;ng cũng c&oacute; một polyp lớn k&iacute;ch thước 1,5 cm. B&aacute;c sĩ đ&atilde; nội soi cắt cả 3 polyp.</p>\r\n\r\n<p>Theo gi&aacute;o sư Long, nhiều người nghĩ trẻ nhỏ đi ngo&agrave;i ra m&aacute;u l&agrave; t&aacute;o b&oacute;n m&agrave; kh&ocirc;ng biết c&oacute; thể do c&aacute;c polyp ở đại trực tr&agrave;ng hoặc một số bệnh l&yacute; kh&aacute;c. Số trẻ đến viện kh&aacute;m v&igrave; c&aacute;c polyp n&agrave;y kh&ocirc;ng phải hiếm gặp. Em b&eacute; nhỏ tuổi nhất &ocirc;ng gặp l&agrave; 3 tuổi.</p>\r\n\r\n<p>C&aacute;c polyp của đại tr&agrave;ng v&agrave; trực tr&agrave;ng (đặc biệt l&agrave; loại c&oacute; cuống) dễ bị chảy m&aacute;u khi ph&acirc;n đi qua. V&igrave; thế, biểu hiện hay gặp ở nhiều trẻ l&agrave; đi ngo&agrave;i ra m&aacute;u d&ugrave; kh&ocirc;ng bị t&aacute;o b&oacute;n. Nhiều trường hợp nội soi đại tr&agrave;ng ph&aacute;t hiện polyp lớn khiến trẻ hay bị chảy m&aacute;u, thiếu m&aacute;u.&nbsp;C&oacute; b&eacute; 13-14 tuổi đ&atilde; phải cắt to&agrave;n bộ đại tr&agrave;ng v&igrave; qu&aacute; nhiều polyp, rất may l&agrave; trường hợp n&agrave;y rất hiếm do bệnh về gene hay yếu tố gia đ&igrave;nh.&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"be-di-tieu-ra-mau-coi-chung-polyp-dai-truc-trang\" src=\"http://img.f41.suckhoe.vnecdn.net/2017/05/23/noisoi1-1314-1495510189.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>B&aacute;c sĩ nội soi đại trực tr&agrave;ng bệnh nh&acirc;n.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&ldquo;Polyp trực tr&agrave;ng ở trẻ nhỏ kh&ocirc;ng qu&aacute; nguy hiểm nhưng cần được ph&aacute;t hiện v&agrave; điều trị sớm bởi ch&uacute;ng c&oacute; thể g&acirc;y chảy m&aacute;u, thiếu m&aacute;u, c&oacute; thể ph&aacute;t triển qu&aacute; lớn g&acirc;y tắc ruột hoặc th&agrave;nh ung thư&rdquo;, gi&aacute;o sư Long nhấn mạnh.</p>\r\n\r\n<p>C&aacute;c polyp đa phần l&agrave; l&agrave;nh t&iacute;nh, một số c&oacute; thể tiến triển th&agrave;nh ung thư. Phần lớn ung thư đại trực tr&agrave;ng bắt nguồn từ c&aacute;c polyp n&agrave;y. Polyp l&uacute;c đầu thường nhỏ v&agrave; ph&aacute;t triển chậm, kh&ocirc;ng g&acirc;y triệu chứng. Ch&iacute;nh v&igrave; thế, khi ph&aacute;t hiện c&aacute;c polyp cần phải cắt bỏ để tr&aacute;nh nguy cơ &aacute;c t&iacute;nh th&agrave;nh ung thư.</p>\r\n\r\n<p>Gi&aacute;o sư Long khuyến c&aacute;o trẻ đau bụng, rối loạn ti&ecirc;u h&oacute;a, đặc biệt đại tiện ra m&aacute;u, thay đổi ph&acirc;n, số lần đại tiện, đặc điểm ph&acirc;n kh&ocirc;ng b&igrave;nh thường, cha mẹ n&ecirc;n đưa đi kh&aacute;m, cần thiết sẽ nội soi to&agrave;n bộ đại trực tr&agrave;ng. Trường hợp đi ti&ecirc;u chảy m&aacute;u tươi nhiều lần phần lớn nguy&ecirc;n nh&acirc;n do polyp.</p>', '2017-06-09 21:27:06', '2017-06-09 21:27:06', 2, 1),
(13, 'news.jpg', 'Cảnh giác dấu hiệu đi ngoài ra máu ở trẻ nhỏ', 'Ở trẻ nhỏ, đi ngoài ra máu có thể là tình trạng táo bón, nứt hậu môn nhưng cũng có thể là dấu hiệu của polyp đại tràng. Trên thực tế, nhiều bệnh nhi được phát hiện tình trạng polyp đại tràng từ dấu hiệu cứ ngỡ do táo bón gây ra này.', '<p>B&eacute; N.V.H (7 tuổi, H&agrave; Tĩnh) được gia đ&igrave;nh đưa đi kh&aacute;m v&igrave; thường xuy&ecirc;n đại tiện lẫn m&aacute;u tươi. L&uacute;c đầu nghĩ do trẻ bị t&aacute;o b&oacute;n, gia đ&igrave;nh đ&atilde; thay đổi chế độ ăn cho trẻ, ăn to&agrave;n rau lang, rau m&ugrave;ng tơi, chuối, đu đủ&hellip; B&eacute; đi ngo&agrave;i kh&ocirc;ng t&aacute;o b&oacute;n nhưng vẫn lẫn rất nhiều m&aacute;u tươi trong ph&acirc;n khiến gia đ&igrave;nh sốt ruột mới đưa b&eacute; ra H&agrave; Nội kh&aacute;m.</p>\r\n\r\n<p>GS.TS Đ&agrave;o Văn Long, nguy&ecirc;n Gi&aacute;m đốc trung t&acirc;m nội soi bệnh viện Đại học Y H&agrave; Nội cho biết, bệnh nhi đến kh&aacute;m c&oacute; t&igrave;nh trạng đi ngo&agrave;i ra m&aacute;u thường xuy&ecirc;n, nhất l&agrave; 1 tuần trở lại đ&acirc;y d&ugrave; ph&acirc;n kh&ocirc;ng cứng, c&oacute; biểu hiện thiếu m&aacute;u.</p>\r\n\r\n<p>B&aacute;c sĩ quyết định tiến h&agrave;nh nội soi đại tr&agrave;ng cho ch&aacute;u b&eacute; bằng ống nội soi mềm, d&ugrave;ng thuốc an thần. Kết quả ph&aacute;t hiện tại đại tr&agrave;ng sigma c&oacute; 2 polyp k&iacute;ch thước nhỏ 0,4 cm, tại trực tr&agrave;ng cũng c&oacute; một polyp lớn k&iacute;ch thước 1,5 cm;. Trong qu&aacute; tr&igrave;nh nội soi b&aacute;c sĩ đ&atilde; cắt cả 3 polyp tr&ecirc;n.</p>\r\n\r\n<p><img alt=\"Một bệnh nhi được nội soi dạ dày do có dấu hiệu viêm loét dạ dày do vi khuẩn HP.\" src=\"https://dantricdn.com/thumb_w/640/2017/noisoi-1495505456078.jpg\" /></p>\r\n\r\n<p>Một bệnh nhi được nội soi dạ d&agrave;y do c&oacute; dấu hiệu vi&ecirc;m lo&eacute;t dạ d&agrave;y do vi khuẩn HP.</p>\r\n\r\n<p>Polyp đại trực tr&agrave;ng (đặc biệt l&agrave; loại c&oacute; cuống) dễ bị chảy m&aacute;u khi ph&acirc;n đi qua ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y chảy m&aacute;u khi đại tiện ở ch&aacute;u b&eacute;. Ngay sau khi cắt polyp t&igrave;nh trạng đại tiện ra m&aacute;u kh&ocirc;ng c&ograve;n. Bệnh nhi được chỉ định th&ecirc;m sắt acid folic, dinh dưỡng hợp l&yacute; để phục hồi sức khỏe.</p>\r\n\r\n<p>GS Long cho biết, một số trường hợp trẻ nhỏ từ 3 &ndash; 9 tuổi do &ocirc;ng trực tiếp kh&aacute;m được ph&aacute;t hiện polyp đại trực tr&agrave;ng chỉ từ dấu hiệu ban đầu l&agrave; đại tiện ra m&aacute;u thường xuy&ecirc;n. Đ&acirc;y l&agrave; bệnh l&yacute; gặp kh&aacute; nhiều ở trẻ em, với đặc trưng l&agrave; đi ngo&agrave;i ph&acirc;n d&iacute;nh m&aacute;u. V&igrave; thế n&oacute; cũng dễ bị nhầm sang t&aacute;o b&oacute;n, nứt hậu m&ocirc;n (tuy nhi&ecirc;n những trường hợp n&agrave;y thường hiếm)&hellip;</p>\r\n\r\n<p><img alt=\"Hình ảnh polyp trên đường tiêu hóa của một bệnh nhi được phát hiện nhờ nội soi. Ảnh: BS cung cấp.\" src=\"https://dantricdn.com/thumb_w/640/2017/noisoi1-1495505456081.jpg\" /></p>\r\n\r\n<p>H&igrave;nh ảnh polyp tr&ecirc;n đường ti&ecirc;u h&oacute;a của một bệnh nhi được ph&aacute;t hiện nhờ nội soi. Ảnh: BS cung cấp.</p>\r\n\r\n<p>Nhưng tr&ecirc;n thực tế, c&oacute; những trẻ đại tiện ra m&aacute;u l&agrave; l&agrave; do polyp đại tr&agrave;ng m&agrave; phải qua thăm kh&aacute;m b&aacute;c sĩ mới chẩn đo&aacute;n được. C&oacute; trường hợp bệnh nhi 14 tuổi đến kh&aacute;m ban đầu chỉ với biểu hiện rối loạn ti&ecirc;u h&oacute;a, đau bụng, đi ngo&agrave;i ra m&aacute;u, qua nội soi b&aacute;c sĩ ph&aacute;t hiện h&agrave;ng ngh&igrave;n polyp. Nhưng trường hợp n&agrave;y l&agrave; bệnh hiếm, mang yếu tố gene, yếu tố gia đ&igrave;nh.</p>\r\n\r\n<p>&ldquo;Bệnh polyp trực tr&agrave;ng ở trẻ nhỏ c&oacute; thể c&oacute; yếu tố gia đ&igrave;nh hoặc kh&ocirc;ng. Đ&acirc;y kh&ocirc;ng phải l&agrave; bệnh l&yacute; qu&aacute; nguy hiểm, nhưng khi c&aacute;c polyp g&acirc;y ra t&igrave;nh trạng chảy m&aacute;u khi đại tiện th&igrave; cần phải can thiệp để giảm nguy cơ mất m&aacute;u, thiếu m&aacute;u nặng. Hơn nữa, c&aacute;c polyp n&agrave;y đa phần l&agrave; l&agrave;nh t&iacute;nh, nhưng một số c&oacute; thể trở th&agrave;nh ung thư. Ở người lớn, phần lớn ung thư đại trực tr&agrave;ng bắt nguồn từ c&aacute;c polyp n&agrave;y do theo thời gian, một v&agrave;i polyp c&oacute; thể h&oacute;a &aacute;c trở th&agrave;nh ung thư&rdquo;, GS Long n&oacute;i.</p>\r\n\r\n<p>Trong khi đ&oacute;, polyp l&uacute;c đầu thường nhỏ v&agrave; sinh sản chậm, kh&ocirc;ng g&acirc;y triệu chứng. Ch&iacute;nh v&igrave; thế, khi ph&aacute;t hiện c&aacute;c polyp trẻ cũng cần được cắt bỏ để tr&aacute;nh đại tiện k&eacute;m, nguy cơ &aacute;c t&iacute;nh th&agrave;nh ung thư.</p>\r\n\r\n<p>Gi&aacute;o sư Long khuyến c&aacute;o khi trẻ c&oacute; biểu hiện đau bụng, rối loạn ti&ecirc;u h&oacute;a nhiều, đặc biệt đại tiện ra m&aacute;u, thay đổi ph&acirc;n, số lần đại tiện, đặc điểm điểm ph&acirc;n kh&ocirc;ng b&igrave;nh thường cha mẹ n&ecirc;n đưa con đi kh&aacute;m ở c&aacute;c cơ sở Nhi khoa, nếu thấy cần thiết sẽ được chỉ định nội soi đại tr&agrave;ng, cần thiết sẽ được nội soi to&agrave;n bộ đại trực tr&agrave;ng. Tr&ecirc;n thực tế đa phần những trường hợp chảy m&aacute;u tươi khi đi đại tiện lặp lại nhiều lần phần lớn lớn nguy&ecirc;n nh&acirc;n do polyp.</p>\r\n\r\n<p>Ở trẻ nhỏ sau khi cắt polyp thời gian t&aacute;i kh&aacute;m l&acirc;u hơn, ri&ecirc;ng với người lớn, đặc biệt người tr&ecirc;n 50 tuổi th&igrave; sau 12 th&aacute;ng &ndash; 18 th&aacute;ng n&ecirc;n đi kiểm tra lại một lần để kịp thời ph&aacute;t hiện nguy cơ t&aacute;i ph&aacute;t nếu c&oacute;.</p>', '2017-06-09 21:28:27', '2017-06-09 21:28:27', 2, 1),
(14, 'b01c91f179a2f803a40fa5c42317b509561eb296.png', 'Tìm hiểu về prebiotics', 'Bạn có biết rằng số vi khuẩn sống trong hệ tiêu hóa của một người bình thường nhiều gấp 10 lần số tế bào không? Đó chính là vi thực vật. Vi thực vật trên mỗi người không giống nhau, cũng giống như vân tay hay DNA của mọi người vậy.', '<p>Bạn c&oacute; biết rằng số vi khuẩn sống trong hệ ti&ecirc;u h&oacute;a của một người b&igrave;nh thường nhiều gấp 10 lần số tế b&agrave;o kh&ocirc;ng? Đ&oacute; ch&iacute;nh l&agrave; vi thực vật. Vi thực vật tr&ecirc;n mỗi người kh&ocirc;ng giống nhau, cũng giống như v&acirc;n tay hay DNA của mọi người vậy.</p>\r\n\r\n<h1>Prebiotics l&agrave; g&igrave;</h1>\r\n\r\n<p>Bạn c&oacute; thể an t&acirc;m rằng phần lớn c&aacute;c vi khuẩn n&agrave;y thực sự c&oacute; lợi với sức khỏe con người v&agrave; được gọi l&agrave; probiotics. Prebiotics l&agrave; chất tương tự &iacute;t được biết đến hơn v&agrave; l&agrave; những chất xơ kh&ocirc;ng ti&ecirc;u h&oacute;a được nằm trong ruột non v&agrave; dạ d&agrave;y để nu&ocirc;i dưỡng probiotics v&agrave; gi&uacute;p ch&uacute;ng sinh s&ocirc;i ph&aacute;t triển. C&oacute; hai loại prebiotics - GOS (nguồn gốc động vật) v&agrave; FOS (nguồn gốc thực vật).</p>\r\n\r\n<h3>T&igrave;m hiểu về prebiotics</h3>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_1_animalorigins.png?h=105&amp;w=180&amp;la=vi-VN&amp;hash=70810F2F08300C25FA2D68DEEFAAEA2F4B181462\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguồn gốc động vật (GOS)</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_2_plantorigins.png?h=97&amp;w=180&amp;la=vi-VN&amp;hash=236C950A366D9B94DECB1C408F6D94D0BDE0BF8A\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguồn gốc thực vật (FOS)</p>\r\n\r\n<h3>Vai tr&ograve; của prebiotics</h3>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_3_undigestedfibre.png?h=143&amp;w=180&amp;la=vi-VN&amp;hash=59EFC1670AEFDCC2D5F9DFF9899114431B2F782C\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất xơ h&ograve;a tan kh&ocirc;ng ti&ecirc;u h&oacute;a trong ruột non v&agrave; dạ d&agrave;y</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_4_bacteriafood.png?h=142&amp;w=180&amp;la=vi-VN&amp;hash=D6837BB9DF1179C785FA88CB2EED19777729461A\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khi v&agrave;o đến đại tr&agrave;ng, prebiotics l&agrave; nguồn dinh dưỡng cho vi khuẩn c&oacute; lợi</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_5_healthbenefits.png?h=142&amp;w=180&amp;la=vi-VN&amp;hash=B65023FBA18FA7CB36DF67E3641FB8BCB3E0B945\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lượng vi khuẩn c&oacute; lợi gia tăng trong ruột non đem lại rất nhiều lợi &iacute;ch cho sức khỏe, đặc biệt l&agrave; hệ ti&ecirc;u h&oacute;a</p>\r\n\r\n<h1>Lợi &iacute;ch của prebiotics</h1>\r\n\r\n<p>Ăn uống bổ dưỡng v&agrave; đảm bảo lượng vi khuẩn c&oacute; lợi đầy đủ trong hệ ti&ecirc;u h&oacute;a của trẻ c&oacute; thể đem đến sự kh&aacute;c biệt cho thể chất cũng như tinh thần của trẻ. N&oacute; c&oacute; thể gi&uacute;p ph&ograve;ng ngừa tăng cholesterol trong m&aacute;u, ngăn ngừa s&acirc;u răng v&agrave; giảm nguy cơ dị ứng ở trẻ. C&aacute;c lợi &iacute;ch kh&aacute;c bao gồm:</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_1_protection.png?h=65&amp;w=180&amp;la=vi-VN&amp;hash=7D76CE00E8FD463860A48BBED6637929D664EF4B\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_2_strengthenimmune.png?h=102&amp;w=180&amp;la=vi-VN&amp;hash=84EF3A706BB14EBC01AFD97877343B07D2655977\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_3_preventstomachupset.png?h=108&amp;w=180&amp;la=vi-VN&amp;hash=59DF62CC0639855CB89DCCA421FEB064E0B42B5F\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảo vệ đường ruột</strong></p>\r\n\r\n<p>Gi&uacute;p l&agrave;m mềm ph&acirc;n chống t&aacute;o b&oacute;n. Tạo lớp bảo vệ đường ruột chống lại vi khuẩn c&oacute; hại.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Tăng cường hệ miễn dịch</strong></p>\r\n\r\n<p>Tăng vi khuẩn c&oacute; lợi để chống lại vi khuẩn c&oacute; hại. K&iacute;ch th&iacute;ch kh&aacute;ng thể tăng trưởng chống lại c&aacute;c cuộc tấn c&ocirc;ng của vi khuẩn c&oacute; hại.</p>\r\n\r\n<p><br />\r\n<strong>Tr&aacute;nh đau dạ d&agrave;y</strong></p>\r\n\r\n<p>Nu&ocirc;i dưỡng vi khuẩn c&oacute; lợi (probiotics) v&agrave; gi&uacute;p th&uacute;c đẩy qu&aacute; tr&igrave;nh l&ecirc;n men trong đường ruột</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_4_absorbnutrients.png?h=138&amp;w=180&amp;la=vi-VN&amp;hash=4E5018BC295B3CD12D0A7DC2CADB6328407C902C\" /></p>\r\n\r\n<p><br />\r\n<strong>Cải thiện khả năng hấp thụ chất dinh dưỡng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Nguồn prebiotics</h1>\r\n\r\n<p>Prebiotics c&oacute; trong sữa mẹ v&agrave; gi&uacute;p nu&ocirc;i dưỡng cũng như k&iacute;ch th&iacute;ch sự ph&aacute;t triển của c&aacute;c probiotics c&oacute; lợi trong ruột. Điều n&agrave;y cũng gi&uacute;p l&yacute; giải v&igrave; sao trẻ b&uacute; mẹ &iacute;t bị ốm hơn. Prebiotics cũng c&oacute; trong nhiều loại thực phẩm v&agrave; n&oacute;i chung, thực phẩm tươi sống chứa nhiều chất xơ prebiotic hơn thực phẩm đ&atilde; nấu ch&iacute;n, chẳng hạn như:</p>\r\n\r\n<ul>\r\n	<li>T&aacute;o</li>\r\n	<li>Măng t&acirc;y</li>\r\n	<li>Chuối</li>\r\n	<li>Hạt đậu</li>\r\n	<li>C&aacute;m</li>\r\n	<li>Bắp cải</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Tỏi</li>\r\n	<li>Tỏi t&acirc;y</li>\r\n	<li>C&acirc;y họ đậu</li>\r\n	<li>H&agrave;nh</li>\r\n	<li>Rau củ</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_3_1_prebioticsources.png?h=274&amp;w=266&amp;la=vi-VN&amp;hash=F5E61C68731CCD861F98B1410973BC7725DB8811\" /></p>\r\n\r\n<p>C&aacute;c nguồn gi&agrave;u prebiotics kh&aacute;c bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Sữa mẹ</li>\r\n	<li>Hạt hạnh nh&acirc;n</li>\r\n	<li>Rau diếp xoăn</li>\r\n	<li>Yến mạch nguy&ecirc;n hạt</li>\r\n	<li>Khoai lang</li>\r\n	<li>C&aacute;c sản phẩm từ sữa kh&aacute;c</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_4_1_othersources.png?h=149&amp;w=236&amp;la=vi-VN&amp;hash=596279F03EBCDF17D2FF92F7741D609C8B1181B3\" /></p>\r\n\r\n<p>B&iacute; quyết: Một ch&eacute;n ngũ cốc/s&uacute;p n&ecirc;n th&ecirc;m 1 th&igrave;a rau xanh th&aacute;i nhỏ v&agrave; chất xơ thực phẩm để bổ sung cả chất xơ h&ograve;a tan v&agrave; kh&ocirc;ng h&ograve;a tan.</p>', '2017-06-18 05:20:49', '2017-06-18 05:20:49', 2, 1),
(15, 'df184299a4f07ef814cc6d5964a0682da99201da.png', 'Tìm hiểu về prebiotics', 'Bạn có biết rằng số vi khuẩn sống trong hệ tiêu hóa của một người bình thường nhiều gấp 10 lần số tế bào không? Đó chính là vi thực vật. Vi thực vật trên mỗi người không giống nhau, cũng giống như vân tay hay DNA của mọi người vậy.', '<p>Bạn c&oacute; biết rằng số vi khuẩn sống trong hệ ti&ecirc;u h&oacute;a của một người b&igrave;nh thường nhiều gấp 10 lần số tế b&agrave;o kh&ocirc;ng? Đ&oacute; ch&iacute;nh l&agrave; vi thực vật. Vi thực vật tr&ecirc;n mỗi người kh&ocirc;ng giống nhau, cũng giống như v&acirc;n tay hay DNA của mọi người vậy.</p>\r\n\r\n<h1>Prebiotics l&agrave; g&igrave;</h1>\r\n\r\n<p>Bạn c&oacute; thể an t&acirc;m rằng phần lớn c&aacute;c vi khuẩn n&agrave;y thực sự c&oacute; lợi với sức khỏe con người v&agrave; được gọi l&agrave; probiotics. Prebiotics l&agrave; chất tương tự &iacute;t được biết đến hơn v&agrave; l&agrave; những chất xơ kh&ocirc;ng ti&ecirc;u h&oacute;a được nằm trong ruột non v&agrave; dạ d&agrave;y để nu&ocirc;i dưỡng probiotics v&agrave; gi&uacute;p ch&uacute;ng sinh s&ocirc;i ph&aacute;t triển. C&oacute; hai loại prebiotics - GOS (nguồn gốc động vật) v&agrave; FOS (nguồn gốc thực vật).</p>\r\n\r\n<h3>T&igrave;m hiểu về prebiotics</h3>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_1_animalorigins.png?h=105&amp;w=180&amp;la=vi-VN&amp;hash=70810F2F08300C25FA2D68DEEFAAEA2F4B181462\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguồn gốc động vật (GOS)</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_2_plantorigins.png?h=97&amp;w=180&amp;la=vi-VN&amp;hash=236C950A366D9B94DECB1C408F6D94D0BDE0BF8A\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguồn gốc thực vật (FOS)</p>\r\n\r\n<h3>Vai tr&ograve; của prebiotics</h3>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_3_undigestedfibre.png?h=143&amp;w=180&amp;la=vi-VN&amp;hash=59EFC1670AEFDCC2D5F9DFF9899114431B2F782C\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất xơ h&ograve;a tan kh&ocirc;ng ti&ecirc;u h&oacute;a trong ruột non v&agrave; dạ d&agrave;y</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_4_bacteriafood.png?h=142&amp;w=180&amp;la=vi-VN&amp;hash=D6837BB9DF1179C785FA88CB2EED19777729461A\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khi v&agrave;o đến đại tr&agrave;ng, prebiotics l&agrave; nguồn dinh dưỡng cho vi khuẩn c&oacute; lợi</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_5_healthbenefits.png?h=142&amp;w=180&amp;la=vi-VN&amp;hash=B65023FBA18FA7CB36DF67E3641FB8BCB3E0B945\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lượng vi khuẩn c&oacute; lợi gia tăng trong ruột non đem lại rất nhiều lợi &iacute;ch cho sức khỏe, đặc biệt l&agrave; hệ ti&ecirc;u h&oacute;a</p>\r\n\r\n<h1>Lợi &iacute;ch của prebiotics</h1>\r\n\r\n<p>Ăn uống bổ dưỡng v&agrave; đảm bảo lượng vi khuẩn c&oacute; lợi đầy đủ trong hệ ti&ecirc;u h&oacute;a của trẻ c&oacute; thể đem đến sự kh&aacute;c biệt cho thể chất cũng như tinh thần của trẻ. N&oacute; c&oacute; thể gi&uacute;p ph&ograve;ng ngừa tăng cholesterol trong m&aacute;u, ngăn ngừa s&acirc;u răng v&agrave; giảm nguy cơ dị ứng ở trẻ. C&aacute;c lợi &iacute;ch kh&aacute;c bao gồm:</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_1_protection.png?h=65&amp;w=180&amp;la=vi-VN&amp;hash=7D76CE00E8FD463860A48BBED6637929D664EF4B\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_2_strengthenimmune.png?h=102&amp;w=180&amp;la=vi-VN&amp;hash=84EF3A706BB14EBC01AFD97877343B07D2655977\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_3_preventstomachupset.png?h=108&amp;w=180&amp;la=vi-VN&amp;hash=59DF62CC0639855CB89DCCA421FEB064E0B42B5F\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảo vệ đường ruột</strong></p>\r\n\r\n<p>Gi&uacute;p l&agrave;m mềm ph&acirc;n chống t&aacute;o b&oacute;n. Tạo lớp bảo vệ đường ruột chống lại vi khuẩn c&oacute; hại.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Tăng cường hệ miễn dịch</strong></p>\r\n\r\n<p>Tăng vi khuẩn c&oacute; lợi để chống lại vi khuẩn c&oacute; hại. K&iacute;ch th&iacute;ch kh&aacute;ng thể tăng trưởng chống lại c&aacute;c cuộc tấn c&ocirc;ng của vi khuẩn c&oacute; hại.</p>\r\n\r\n<p><br />\r\n<strong>Tr&aacute;nh đau dạ d&agrave;y</strong></p>\r\n\r\n<p>Nu&ocirc;i dưỡng vi khuẩn c&oacute; lợi (probiotics) v&agrave; gi&uacute;p th&uacute;c đẩy qu&aacute; tr&igrave;nh l&ecirc;n men trong đường ruột</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_4_absorbnutrients.png?h=138&amp;w=180&amp;la=vi-VN&amp;hash=4E5018BC295B3CD12D0A7DC2CADB6328407C902C\" /></p>\r\n\r\n<p><br />\r\n<strong>Cải thiện khả năng hấp thụ chất dinh dưỡng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Nguồn prebiotics</h1>\r\n\r\n<p>Prebiotics c&oacute; trong sữa mẹ v&agrave; gi&uacute;p nu&ocirc;i dưỡng cũng như k&iacute;ch th&iacute;ch sự ph&aacute;t triển của c&aacute;c probiotics c&oacute; lợi trong ruột. Điều n&agrave;y cũng gi&uacute;p l&yacute; giải v&igrave; sao trẻ b&uacute; mẹ &iacute;t bị ốm hơn. Prebiotics cũng c&oacute; trong nhiều loại thực phẩm v&agrave; n&oacute;i chung, thực phẩm tươi sống chứa nhiều chất xơ prebiotic hơn thực phẩm đ&atilde; nấu ch&iacute;n, chẳng hạn như:</p>\r\n\r\n<ul>\r\n	<li>T&aacute;o</li>\r\n	<li>Măng t&acirc;y</li>\r\n	<li>Chuối</li>\r\n	<li>Hạt đậu</li>\r\n	<li>C&aacute;m</li>\r\n	<li>Bắp cải</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Tỏi</li>\r\n	<li>Tỏi t&acirc;y</li>\r\n	<li>C&acirc;y họ đậu</li>\r\n	<li>H&agrave;nh</li>\r\n	<li>Rau củ</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_3_1_prebioticsources.png?h=274&amp;w=266&amp;la=vi-VN&amp;hash=F5E61C68731CCD861F98B1410973BC7725DB8811\" /></p>\r\n\r\n<p>C&aacute;c nguồn gi&agrave;u prebiotics kh&aacute;c bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Sữa mẹ</li>\r\n	<li>Hạt hạnh nh&acirc;n</li>\r\n	<li>Rau diếp xoăn</li>\r\n	<li>Yến mạch nguy&ecirc;n hạt</li>\r\n	<li>Khoai lang</li>\r\n	<li>C&aacute;c sản phẩm từ sữa kh&aacute;c</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_4_1_othersources.png?h=149&amp;w=236&amp;la=vi-VN&amp;hash=596279F03EBCDF17D2FF92F7741D609C8B1181B3\" /></p>\r\n\r\n<p>B&iacute; quyết: Một ch&eacute;n ngũ cốc/s&uacute;p n&ecirc;n th&ecirc;m 1 th&igrave;a rau xanh th&aacute;i nhỏ v&agrave; chất xơ thực phẩm để bổ sung cả chất xơ h&ograve;a tan v&agrave; kh&ocirc;ng h&ograve;a tan.</p>', '2017-06-18 05:21:04', '2017-06-18 05:21:04', 2, 1),
(16, '116b02c145f0f1450f34d5d975d8b4ce52fdf16f.png', 'Tìm hiểu về prebiotics', 'Bạn có biết rằng số vi khuẩn sống trong hệ tiêu hóa của một người bình thường nhiều gấp 10 lần số tế bào không? Đó chính là vi thực vật. Vi thực vật trên mỗi người không giống nhau, cũng giống như vân tay hay DNA của mọi người vậy.', '<p>Bạn c&oacute; biết rằng số vi khuẩn sống trong hệ ti&ecirc;u h&oacute;a của một người b&igrave;nh thường nhiều gấp 10 lần số tế b&agrave;o kh&ocirc;ng? Đ&oacute; ch&iacute;nh l&agrave; vi thực vật. Vi thực vật tr&ecirc;n mỗi người kh&ocirc;ng giống nhau, cũng giống như v&acirc;n tay hay DNA của mọi người vậy.</p>\r\n\r\n<h1>Prebiotics l&agrave; g&igrave;</h1>\r\n\r\n<p>Bạn c&oacute; thể an t&acirc;m rằng phần lớn c&aacute;c vi khuẩn n&agrave;y thực sự c&oacute; lợi với sức khỏe con người v&agrave; được gọi l&agrave; probiotics. Prebiotics l&agrave; chất tương tự &iacute;t được biết đến hơn v&agrave; l&agrave; những chất xơ kh&ocirc;ng ti&ecirc;u h&oacute;a được nằm trong ruột non v&agrave; dạ d&agrave;y để nu&ocirc;i dưỡng probiotics v&agrave; gi&uacute;p ch&uacute;ng sinh s&ocirc;i ph&aacute;t triển. C&oacute; hai loại prebiotics - GOS (nguồn gốc động vật) v&agrave; FOS (nguồn gốc thực vật).</p>\r\n\r\n<h3>T&igrave;m hiểu về prebiotics</h3>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_1_animalorigins.png?h=105&amp;w=180&amp;la=vi-VN&amp;hash=70810F2F08300C25FA2D68DEEFAAEA2F4B181462\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguồn gốc động vật (GOS)</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_2_plantorigins.png?h=97&amp;w=180&amp;la=vi-VN&amp;hash=236C950A366D9B94DECB1C408F6D94D0BDE0BF8A\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguồn gốc thực vật (FOS)</p>\r\n\r\n<h3>Vai tr&ograve; của prebiotics</h3>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_3_undigestedfibre.png?h=143&amp;w=180&amp;la=vi-VN&amp;hash=59EFC1670AEFDCC2D5F9DFF9899114431B2F782C\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất xơ h&ograve;a tan kh&ocirc;ng ti&ecirc;u h&oacute;a trong ruột non v&agrave; dạ d&agrave;y</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_4_bacteriafood.png?h=142&amp;w=180&amp;la=vi-VN&amp;hash=D6837BB9DF1179C785FA88CB2EED19777729461A\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khi v&agrave;o đến đại tr&agrave;ng, prebiotics l&agrave; nguồn dinh dưỡng cho vi khuẩn c&oacute; lợi</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_1_5_healthbenefits.png?h=142&amp;w=180&amp;la=vi-VN&amp;hash=B65023FBA18FA7CB36DF67E3641FB8BCB3E0B945\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lượng vi khuẩn c&oacute; lợi gia tăng trong ruột non đem lại rất nhiều lợi &iacute;ch cho sức khỏe, đặc biệt l&agrave; hệ ti&ecirc;u h&oacute;a</p>\r\n\r\n<h1>Lợi &iacute;ch của prebiotics</h1>\r\n\r\n<p>Ăn uống bổ dưỡng v&agrave; đảm bảo lượng vi khuẩn c&oacute; lợi đầy đủ trong hệ ti&ecirc;u h&oacute;a của trẻ c&oacute; thể đem đến sự kh&aacute;c biệt cho thể chất cũng như tinh thần của trẻ. N&oacute; c&oacute; thể gi&uacute;p ph&ograve;ng ngừa tăng cholesterol trong m&aacute;u, ngăn ngừa s&acirc;u răng v&agrave; giảm nguy cơ dị ứng ở trẻ. C&aacute;c lợi &iacute;ch kh&aacute;c bao gồm:</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_1_protection.png?h=65&amp;w=180&amp;la=vi-VN&amp;hash=7D76CE00E8FD463860A48BBED6637929D664EF4B\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_2_strengthenimmune.png?h=102&amp;w=180&amp;la=vi-VN&amp;hash=84EF3A706BB14EBC01AFD97877343B07D2655977\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_3_preventstomachupset.png?h=108&amp;w=180&amp;la=vi-VN&amp;hash=59DF62CC0639855CB89DCCA421FEB064E0B42B5F\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảo vệ đường ruột</strong></p>\r\n\r\n<p>Gi&uacute;p l&agrave;m mềm ph&acirc;n chống t&aacute;o b&oacute;n. Tạo lớp bảo vệ đường ruột chống lại vi khuẩn c&oacute; hại.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Tăng cường hệ miễn dịch</strong></p>\r\n\r\n<p>Tăng vi khuẩn c&oacute; lợi để chống lại vi khuẩn c&oacute; hại. K&iacute;ch th&iacute;ch kh&aacute;ng thể tăng trưởng chống lại c&aacute;c cuộc tấn c&ocirc;ng của vi khuẩn c&oacute; hại.</p>\r\n\r\n<p><br />\r\n<strong>Tr&aacute;nh đau dạ d&agrave;y</strong></p>\r\n\r\n<p>Nu&ocirc;i dưỡng vi khuẩn c&oacute; lợi (probiotics) v&agrave; gi&uacute;p th&uacute;c đẩy qu&aacute; tr&igrave;nh l&ecirc;n men trong đường ruột</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_2_4_absorbnutrients.png?h=138&amp;w=180&amp;la=vi-VN&amp;hash=4E5018BC295B3CD12D0A7DC2CADB6328407C902C\" /></p>\r\n\r\n<p><br />\r\n<strong>Cải thiện khả năng hấp thụ chất dinh dưỡng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Nguồn prebiotics</h1>\r\n\r\n<p>Prebiotics c&oacute; trong sữa mẹ v&agrave; gi&uacute;p nu&ocirc;i dưỡng cũng như k&iacute;ch th&iacute;ch sự ph&aacute;t triển của c&aacute;c probiotics c&oacute; lợi trong ruột. Điều n&agrave;y cũng gi&uacute;p l&yacute; giải v&igrave; sao trẻ b&uacute; mẹ &iacute;t bị ốm hơn. Prebiotics cũng c&oacute; trong nhiều loại thực phẩm v&agrave; n&oacute;i chung, thực phẩm tươi sống chứa nhiều chất xơ prebiotic hơn thực phẩm đ&atilde; nấu ch&iacute;n, chẳng hạn như:</p>\r\n\r\n<ul>\r\n	<li>T&aacute;o</li>\r\n	<li>Măng t&acirc;y</li>\r\n	<li>Chuối</li>\r\n	<li>Hạt đậu</li>\r\n	<li>C&aacute;m</li>\r\n	<li>Bắp cải</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Tỏi</li>\r\n	<li>Tỏi t&acirc;y</li>\r\n	<li>C&acirc;y họ đậu</li>\r\n	<li>H&agrave;nh</li>\r\n	<li>Rau củ</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_3_1_prebioticsources.png?h=274&amp;w=266&amp;la=vi-VN&amp;hash=F5E61C68731CCD861F98B1410973BC7725DB8811\" /></p>\r\n\r\n<p>C&aacute;c nguồn gi&agrave;u prebiotics kh&aacute;c bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Sữa mẹ</li>\r\n	<li>Hạt hạnh nh&acirc;n</li>\r\n	<li>Rau diếp xoăn</li>\r\n	<li>Yến mạch nguy&ecirc;n hạt</li>\r\n	<li>Khoai lang</li>\r\n	<li>C&aacute;c sản phẩm từ sữa kh&aacute;c</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.friso.com.vn/-/media/Friso/FrisoVN/Article-SubCategory/Good-Nutrition/Learn-about-prebiotics/prebiotics_4_1_othersources.png?h=149&amp;w=236&amp;la=vi-VN&amp;hash=596279F03EBCDF17D2FF92F7741D609C8B1181B3\" /></p>\r\n\r\n<p>B&iacute; quyết: Một ch&eacute;n ngũ cốc/s&uacute;p n&ecirc;n th&ecirc;m 1 th&igrave;a rau xanh th&aacute;i nhỏ v&agrave; chất xơ thực phẩm để bổ sung cả chất xơ h&ograve;a tan v&agrave; kh&ocirc;ng h&ograve;a tan.</p>', '2017-06-18 05:21:09', '2017-06-18 05:21:09', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullname` varchar(120) DEFAULT 'admin',
  `created_at` datetime,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP
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
  `created_at` datetime,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP
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
  `description` text NOT NULL,
  `created_at` datetime,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_gallery`
--

INSERT INTO `category_gallery` (`idcategory_gallery`, `name`, `description`, `created_at`, `updated_at`) VALUES
(0, 'Gallery Phòng khám', 'Sự kiện diễn ra vào hội hằng năm', NULL, '2017-06-10 09:07:57'),
(2, 'Ảnh phòng khám', 'Sự kiện diễn ra vào hội hằng năm', NULL, '2017-06-12 18:49:49'),
(3, 'Gallery Sự kiện', 'Sự kiện diễn ra vào hội', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_news`
--

CREATE TABLE `category_news` (
  `idcategory_news` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` datetime,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP
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
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_service`
--

INSERT INTO `category_service` (`idcategory_service`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Menu dịch vụ', '2017-05-23 01:06:28', '2017-05-23 01:06:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_video`
--

CREATE TABLE `category_video` (
  `idcategory_video` int(4) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_video`
--

INSERT INTO `category_video` (`idcategory_video`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Video Sự kiện', 'Video sự kiện', '2017-06-10 14:20:35', '2017-06-10 14:20:35'),
(2, 'Video Sự kiện', 'Video sự kiện2', '2017-06-10 14:20:43', '2017-06-10 14:20:43'),
(3, 'Video Sự kiện', 'Video sự kiện2', '2017-06-10 14:20:43', '2017-06-10 14:20:43'),
(4, 'Video Sự kiện 2', 'Video sự kiện', '2017-06-10 14:21:30', '2017-06-10 14:21:30');

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
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feed_back`
--

INSERT INTO `feed_back` (`idfeed_back`, `name_customer`, `address`, `avatar`, `content`, `created_at`, `updated_at`, `priority`) VALUES
(1, 'Nguyễn Đình Giang', 'Yên Sở - Hoài Đức - Hà Nội', '4c2423d41f5a3ed6f7f54ee4aff3987c249533b6.jpg', 'Mặc dù ở xa nhưng mỗi lần đau ốm chú vẫn muốn đến khám bệnh tại Hoàng Long bởi các dịch vụ ở đây tốt hơn bệnh viện tư khác rất nhiều. Chú luôn tin tưởng vào chuyên môn và y đức của các y bác sĩ. Và ở nơi đây chú đã cảm nhận được \"lương y như từ mẫu\".', '2017-05-27 11:43:18', '2017-06-15 17:53:22', 1),
(2, 'Hoàng Minh Trang', 'Daechon - Korean', 'f9296ff93710785d3e9a7d1029254b66d2bc734f.jpg', 'Cô điều trị nội trú một tháng tại Hoàng Long và ít có người nhà ở bên, thể chất và tâm trạng không tốt. Tuy nhiên, sự chăm sóc ân cần của các bạn y tá khiến cô cảm thấy rất ấm áp, gần gũi và được quan tâm. Cô cảm thấy Hoàng Long là sự lựa chọn đúng đắn của mình', '2017-05-27 11:44:47', '2017-06-15 17:52:23', 1),
(3, 'Trần Hữu Hòa', 'Đường 70 - Tây Mỗ - Hà Nội', '71e324cd5ffba6e1f51a9a5ca4b988eca4402276.jpg', 'Bệnh viện Hoàng Long có rất nhiều gói khám sức khỏe hay, tiện ích và những ưu đãi lớn dành cho mọi khách hàng. Anh đã đăng kí các gói khám sức khỏe dành cho cả gia đình và rất hài lòng về chất lượng phục vụ cũng như chuyên môn của y bác sĩ Hoàng Long.', '2017-05-27 11:46:51', '2017-06-15 17:52:50', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `idgallery` int(11) NOT NULL,
  `name` text,
  `url` varchar(120) DEFAULT 'gallery.jpg',
  `created_at` datetime,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `category_gallery_idcategory_about_us` int(11) NOT NULL,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`idgallery`, `name`, `url`, `created_at`, `updated_at`, `category_gallery_idcategory_about_us`, `priority`) VALUES
(2, 'Ảnh Chị Lương', '62c56cd1b8c5ccf53c391e0255ca1700dfb61fa8.jpg', '2017-06-10 13:52:27', '2017-06-10 13:52:27', 3, 1),
(3, 'Ảnh giao diện', '22ad807c45c27bcdc76c76bd265c4a9b30196689.jpg', '2017-06-18 04:49:14', '2017-06-18 04:49:14', 2, 1),
(4, 'Ảnh ngon', '8db51c0a9f6f22a0a0951334b5a3765d4727bc6a.jpg', '2017-06-18 04:49:28', '2017-06-18 04:49:28', 2, 1);

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
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_news_idcategory` int(11) NOT NULL,
  `priority` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`idnews`, `images`, `title`, `summary`, `content`, `created_at`, `updated_at`, `category_news_idcategory`, `priority`) VALUES
(1, '6656733038ced8e8b26fa1ff4d797a4b73b8f6c2.jpg', 'Điều trị loét dạ dày tá tràng do sử dụng thuốc chống viêm giảm đau không steroid', 'Loét dạ dày tá tràng do thuốc chống viêm giảm đau không steroid hoặc thuốc chống ngưng tập tiểu cầu thường gặp  hình ảnh loét đa ổ ở nhiều vị trí của dạ dày, hành tá tràng, tá tràng, theo phân loại Johnson cải tiến thuộc loại V', '<p>Lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng do thuốc chống vi&ecirc;m giảm đau kh&ocirc;ng steroid hoặc thuốc chống ngưng tập tiểu cầu thường gặp &nbsp;h&igrave;nh ảnh lo&eacute;t đa ổ ở nhiều vị tr&iacute; của&nbsp;dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng, t&aacute; tr&agrave;ng, theo ph&acirc;n loại&nbsp;Johnson cải tiến&nbsp;thuộc loại V</p>\r\n\r\n<p><strong>1.Nguy&ecirc;n tắc điều trị</strong></p>\r\n\r\n<p>- Ngừng thuốc chống vi&ecirc;m giảm đau hoặc giảm liều đến mức thấp nhất c&oacute; thể.</p>\r\n\r\n<p>- D&ugrave;ng PPI với liều chuẩn.</p>\r\n\r\n<p>- C&aacute;c trường hợp lo&eacute;t lớn hoặc bắt buộc phải d&ugrave;ng thuốc chống vi&ecirc;m giảm đau kh&ocirc;ng steroid (NSAID) chỉ định d&ugrave;ng PPI l&agrave; bắt buộc v&agrave; liều cũng c&oacute; thể tăng l&ecirc;n.</p>\r\n\r\n<p>- Cần ch&uacute; &yacute; với bệnh nh&acirc;n bắt buộc phải d&ugrave;ng aspirin (v&iacute; dụ bệnh nh&acirc;n tim mạch), kể cả liều thấp, việc dừng aspirin v&agrave; chỉ d&ugrave;ng PPI sẽ l&agrave;m tăng tỷ lệ tử vong của người bệnh. Do vậy khi xem x&eacute;t dừng aspirin nhưng kh&ocirc;ng được k&eacute;o d&agrave;i tr&ecirc;n 5 ng&agrave;y v&agrave; cần hội chẩn th&ecirc;m &yacute; kiến của b&aacute;c sỹ chuy&ecirc;n khoa tim mạch.</p>\r\n\r\n<p>- N&ecirc;n x&aacute;c định sự c&oacute; mặt của&nbsp;<em>H.p</em>&nbsp;để c&oacute; biện ph&aacute;p xử tr&iacute; th&iacute;ch hợp.</p>\r\n\r\n<p><strong>2. Điều trị dự ph&ograve;ng lo&eacute;t khi bắt buộc phải sử dụng thuốc chống vi&ecirc;m giảm đau hoặc thuốc chống ngưng tập tiểu cầu</strong></p>\r\n\r\n<p><strong><em>2.1.C&aacute;c yếu tố nguy cơ ti&ecirc;u h&oacute;a thường gặp:</em></strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tuổi &gt; 65</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&ugrave;ng NSAID liều cao</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; tiền sử lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hiện đang sử dụng aspirin (kể cả liều thấp) + thuốc corticoid hoặc thuốc chống ngưng tập tiểu cầu.</p>\r\n\r\n<p><strong><em>2.2.Tr&ecirc;n cơ sở c&aacute;c yếu tố nguy cơ ti&ecirc;u h&oacute;a n&ecirc;u tr&ecirc;n, đối với những người c&oacute; hay kh&ocirc;ng c&oacute; nguy cơ tim mạch người ta ph&acirc;n ra c&aacute;c mức độ điều trị dự ph&ograve;ng kh&aacute;c nhau khi d&ugrave;ng (NSAID) như sau:</em></strong></p>\r\n\r\n<p><em>a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</em><em>Đối với c&aacute;c bệnh nh&acirc;n kh&ocirc;ng d&ugrave;ng aspirin liều thấp đề ph&ograve;ng biến chứng hoặc kh&ocirc;ng d&ugrave;ng thuốc chống ngưng tập tiểu cầu&nbsp;<strong>(nguy cơ tim mạch thấp)</strong></em></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n kh&ocirc;ng c&oacute; 4 nguy cơ ti&ecirc;u h&oacute;a n&ecirc;u tr&ecirc;n c&oacute; thể d&ugrave;ng NSAID liều thấp nhất đ&aacute;p ứng điều trị.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n c&oacute; 1-2 nguy cơ ti&ecirc;u h&oacute;a d&ugrave;ng NSAID kết hợp với PPI</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n c&oacute; tr&ecirc;n 2 nguy cơ ti&ecirc;u h&oacute;a n&ecirc;n chọn thuốc điều trị kh&aacute;c hoặc d&ugrave;ng thuốc ức chế COX2&nbsp;+ PPI</p>\r\n\r\n<p><strong>b.&nbsp;&nbsp;&nbsp;&nbsp;</strong><em>Đối với c&aacute;c bệnh nh&acirc;n c&oacute; d&ugrave;ng aspirin hoặc</em><strong>&nbsp;</strong><em>thuốc chống ngưng tập tiểu cầu&nbsp;</em><strong>(<em>nguy cơ tim mạch cao)</em></strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n kh&ocirc;ng c&oacute; 4 nguy cơ ti&ecirc;u h&oacute;a n&ecirc;u tr&ecirc;n d&ugrave;ng Naproxen kết hợp với PPI</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n c&oacute; 1-2 nguy cơ ti&ecirc;u h&oacute;a d&ugrave;ng Naproxen kết hợp với PPI</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bệnh nh&acirc;n c&oacute; tr&ecirc;n 2 nguy cơ ti&ecirc;u h&oacute;a n&ecirc;n tr&aacute;nh d&ugrave;ng NSAID hoặc&nbsp; COX2&nbsp;n&ecirc;n sử dụng điều trị kh&aacute;c.</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:285.75pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/t1.jpg\" style=\"height:325px; width:410px\" /></p>\r\n			</td>\r\n			<td style=\"width:205.3pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/t2.jpg\" style=\"height:325px; width:410px\" /></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:285.75pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/t3.jpg\" style=\"height:325px; width:410px\" /></p>\r\n			</td>\r\n			<td style=\"width:205.3pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/t4.jpg\" style=\"height:325px; width:410px\" /></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; BN: L&ecirc; Văn D, 45 tuổi, soi ng&agrave;y 14.1.2017&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BN.&nbsp;Nguyễn Văn L, 66 tuổi, soi ng&agrave;y 09.1.2017</p>\r\n\r\n<p>Nguồn h&igrave;nh ảnh từ Ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long: h&igrave;nh ảnh b&ecirc;n phải l&agrave; dưới &aacute;nh s&aacute;ng trắng th&ocirc;ng thường, b&ecirc;n tr&aacute;i l&agrave; ở chế độ &aacute;nh s&aacute;ng BLI.</p>', '2017-05-23 00:43:04', '2017-06-15 18:19:02', 2, 3),
(2, 'b2b5e73c649a6170ac5420fbf477f3dc6723b7a8.jpg', 'Cắt khối u lớp niêm mạc thực quản qua nội soi dạ dày ống mềm', 'Ngày 28 tháng 04 năm 2017 tại phòng khám đa khoa Hoàng Long đã khám và điều trị cho bệnh nhân Đinh Thị Mai P, 36 tuổi, tỉnh Vĩnh Phúc.\r\n\r\nBệnh sử: Bệnh nhân bị đau vùng dưới xương ức cách đây 2 tuần, cơn đau thường xuất hiện về đêm, đau tức nhiều hơn. Bệnh nhân hay bị nôn, nôn sau khi ăn no. Ăn cơm cũng nôn, ăn cháo cũng nôn. Buổi tối sau khi ăn xong hay bị buồn nôn. Tình trạng nôn xuất hiện khá lâu (đã vài tháng). Bệnh nhân có cảm giác nhạt miệng, không muốn ăn. Trong vòng một tháng gần đây bệnh nhân sút 1kg. Bệnh nhân hay bị mất ngủ và có khó thở về đêm.', '<p>Ng&agrave;y 28 th&aacute;ng 04 năm 2017 tại ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long đ&atilde; kh&aacute;m v&agrave; điều trị cho bệnh nh&acirc;n Đinh Thị Mai P, 36 tuổi, tỉnh Vĩnh Ph&uacute;c.</p>\r\n\r\n<p><strong>Bệnh sử:</strong>&nbsp;Bệnh nh&acirc;n bị đau v&ugrave;ng dưới xương ức c&aacute;ch đ&acirc;y 2 tuần, cơn đau thường xuất hiện về đ&ecirc;m, đau tức nhiều hơn. Bệnh nh&acirc;n hay bị n&ocirc;n, n&ocirc;n sau khi ăn no. Ăn cơm cũng n&ocirc;n, ăn ch&aacute;o cũng n&ocirc;n. Buổi tối sau khi ăn xong hay bị buồn n&ocirc;n. T&igrave;nh trạng n&ocirc;n xuất hiện kh&aacute; l&acirc;u (đ&atilde; v&agrave;i th&aacute;ng). Bệnh nh&acirc;n c&oacute; cảm gi&aacute;c nhạt miệng, kh&ocirc;ng muốn ăn. Trong v&ograve;ng một th&aacute;ng gần đ&acirc;y bệnh nh&acirc;n s&uacute;t 1kg. Bệnh nh&acirc;n hay bị mất ngủ v&agrave; c&oacute; kh&oacute; thở về đ&ecirc;m.</p>\r\n\r\n<p><strong>Tiền sử bản th&acirc;n</strong>: C&aacute;ch đ&acirc;y 2 năm, bệnh nh&acirc;n đ&atilde; đến kh&aacute;m v&agrave; nội soi dạ d&agrave;y, nội soi đại tr&agrave;ng tại ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long v&agrave; được chẩn đo&aacute;n lo&eacute;t h&agrave;nh t&aacute; tr&agrave;ng . Soi đại tr&agrave;ng &nbsp;c&oacute; v&agrave;i t&uacute;i thừa nhỏ ở manh tr&agrave;ng. Bệnh nh&acirc;n đ&atilde; được điều trị ổn định.</p>\r\n\r\n<p><strong>Tiền sử gia đ&igrave;nh</strong>: Trong gia đ&igrave;nh, Bệnh nh&acirc;n c&oacute; bố đẻ bị ung thư manh tr&agrave;ng đ&atilde; 2 năm nay, &Ocirc;ng đ&atilde; được phẫu thuật tại Bệnh viện Việt Đức v&agrave; điều trị h&oacute;a chất, hiện c&ograve;n sống. Chị g&aacute;i của bố bệnh nh&acirc;n (B&aacute;c) cũng đ&atilde; được chẩn đo&aacute;n ung thư dạ d&agrave;y v&agrave; đ&atilde; phẫu thuật v&agrave; điều trị h&oacute;a chất hiện c&ograve;n sống. Với tiền sử gia đ&igrave;nh như vậy n&ecirc;n bệnh nh&acirc;n c&oacute; ch&uacute;t lo lắng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Qu&aacute; tr&igrave;nh điều trị:</strong></p>\r\n\r\n<p><br />\r\nBệnh nh&acirc;n được chỉ định nội soi dạ d&agrave;y thực quản tiền m&ecirc; với thế hệ m&aacute;y nội soi Laser. Kết quả cho thấy c&aacute;ch cung răng tr&ecirc;n 28cm, thực quản c&oacute; một khối nh&ocirc; l&ecirc;n cao, ni&ecirc;m mạc phủ tr&ecirc;n khối lồi nhẵn m&agrave;u sắc giống ni&ecirc;m mạc khu vực xung quanh. Khối u ch&acirc;n rộng k&iacute;ch thước d&agrave;i xấp xỉ 3cm. Ni&ecirc;m mạc hang vị xung huyết c&oacute; trợt. Bệnh nh&acirc;n được chẩn đo&aacute;n theo d&otilde;i u dưới ni&ecirc;m mạc thực quản v&agrave; vi&ecirc;m dạ d&agrave;y v&agrave; Hp (+).</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/khoiuhangv1.JPG\" style=\"height:315px; width:707px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;Để x&aacute;c định khối u thực quản xuất ph&aacute;t từ lớp n&agrave;o của th&agrave;nh thực quản. C&aacute;c b&aacute;c sĩ của ph&ograve;ng kh&aacute;m quyết định thăm kh&aacute;m th&ecirc;m một bước tiếp theo, thực hiện si&ecirc;u &acirc;m nội soi trước khi ra quyết định c&oacute; cắt khối u qua nội soi hay kh&ocirc;ng? &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Như ch&uacute;ng ta đ&atilde; biết, kỹ thuật si&ecirc;u &acirc;m nội soi l&agrave; kỹ thuật kết hợp giữa nội soi v&agrave; si&ecirc;u &acirc;m, trong đ&oacute; đầu d&ograve; si&ecirc;u &acirc;m được &aacute;p s&aacute;t với c&aacute;c tổn thương cần thăm d&ograve; qua đường nội soi: tổn thương th&agrave;nh thực quản, dạ d&agrave;y, trực tr&agrave;ng, tụy, mật. Trong trường hợp của bệnh nh&acirc;n n&agrave;y đầu d&ograve; si&ecirc;u &acirc;m &aacute;p s&aacute;t với khối u của th&agrave;nh thực quản. &nbsp;M&ocirc; tả h&igrave;nh ảnh si&ecirc;u &acirc;m nội soi khối u l&agrave; một khối thưa &acirc;m tương đối đồng nhất k&iacute;ch thước chỗ lớn nhất d&agrave;i ~3cm, d&agrave;y 0,8cm, ranh giới r&otilde;. Ở một số diện cắt thấy khối u nằm dưới lớp tế b&agrave;o biểu m&ocirc; bề mặt, tr&ecirc;n lớp dưới ni&ecirc;m mạc v&agrave; li&ecirc;n tục với lớp cơ ni&ecirc;m của th&agrave;nh thực quản. Tr&ecirc;n si&ecirc;u &acirc;m nội soi đo độ đ&agrave;n hồi của m&ocirc; (Elastography) nhu m&ocirc; trong khối u mềm. Tr&ecirc;n si&ecirc;u &acirc;m Doppler b&ecirc;n trong khối u kh&ocirc;ng thấy c&oacute; mạch. Xung quanh khối u v&agrave; trung thất kh&ocirc;ng thấy c&oacute; hạch. Kết luận: &nbsp;Khối u th&agrave;nh thực quản nghĩ nhiều đến khối u lớp ni&ecirc;m mạc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/khoiuhangv2.JPG\" style=\"height:309px; width:713px\" /></p>\r\n\r\n<p>Với khối u lớp ni&ecirc;m mạc k&iacute;ch thước d&agrave;i ~ 3cm, d&agrave;y ~ 0.8cm. C&aacute;c B&aacute;c sĩ đ&atilde; tiến h&agrave;nh cắt khối u &nbsp;2 th&igrave;, &frac12; nh&acirc;n khối u ph&iacute;a trong cắt trước sau đ&oacute; cắt nốt &frac12; nh&acirc;n khối u c&ograve;n lại. Sau cắt kiểm tra ch&acirc;n cắt tốt, kh&ocirc;ng chảy m&aacute;u. Ch&uacute;ng t&ocirc;i cũng đ&atilde; gửi mẫu khối u được cắt l&agrave;m x&eacute;t nghiệm m&ocirc; bệnh học xem khối u l&agrave;nh t&iacute;nh hay &aacute;c t&iacute;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kết quả M&ocirc; bệnh học l&agrave; khối u cơ trơn l&agrave;nh t&iacute;nh dưới ni&ecirc;m mạc thực quản.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/khoiuhangv3.JPG\" style=\"height:322px; width:727px\" /></p>\r\n\r\n<p>B&agrave;n luận về qu&aacute; tr&igrave;nh điều trị của bệnh nh&acirc;n ch&uacute;ng t&ocirc;i cho rằng với bệnh nh&acirc;n n&agrave;y đ&atilde; được thực hiện 4 bước thăm kh&aacute;m từ đơn giản đến phức tạp về y&ecirc;u cầu tr&igrave;nh độ chuy&ecirc;n m&ocirc;n của b&aacute;c sĩ cũng như đ&ograve;i hỏi trang thiết bị hiện đại.</p>\r\n\r\n<p><strong>Bước 1</strong>: Thăm kh&aacute;m l&acirc;m s&agrave;ng nội khoa v&agrave; c&aacute;c x&eacute;t nghiệm sinh h&oacute;a, huyết học, đ&ocirc;ng m&aacute;u thường quy m&agrave; cơ sở y tế n&agrave;o cũng c&oacute; thể thực hiện được.</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Nội soi dạ d&agrave;y, nội soi đại tr&agrave;ng g&acirc;y m&ecirc; theo c&ocirc;ng nghệ Laser, rất &iacute;t cơ sở y tế thực hiện được v&igrave; c&ocirc;ng nghệ n&agrave;y c&aacute;c h&igrave;nh ảnh tổn thương được ph&oacute;ng đại l&ecirc;n gấp 150 lần.</p>\r\n\r\n<p><strong>Bước 3:</strong>&nbsp;Si&ecirc;u &acirc;m nội soi để x&aacute;c định khối u thuộc lớp n&agrave;o của th&agrave;nh thực quản. Nhờ si&ecirc;u &acirc;m nội soi thấy khối u mới ở lớp ni&ecirc;m mạc của thực quản chưa lan ra đến lớp cơ, khối u chưa c&oacute; x&acirc;m lấn ra xung quanh v&agrave; định hướng cho B&aacute;c sĩ c&oacute; thể cắt được khối u qua nội soi tr&aacute;nh được một cuộc phẫu thuật cho bệnh nh&acirc;n. Với c&ocirc;ng nghệ n&agrave;y đ&ograve;i hỏi tr&igrave;nh độ b&aacute;c sĩ c&oacute; tay nghề cao, chuy&ecirc;n s&acirc;u mới thực hiện được si&ecirc;u &acirc;m nội soi v&agrave; nhận định ch&iacute;nh x&aacute;c tổn thương.</p>\r\n\r\n<p><strong>Bước 4</strong>: Cắt khối u th&agrave;nh thực quản qua nội soi. Th&agrave;nh thực quản l&agrave; một tổ chức rất mỏng, y&ecirc;u cầu cắt khối u &nbsp;chỉ ở lớp ni&ecirc;m mạc kh&ocirc;ng l&agrave;m tổn thương xuống lớp dưới ni&ecirc;m mạc v&agrave; lớp cơ. Y&ecirc;u cầu thực hiện kỹ thuật cắt được khối u nhưng kh&ocirc;ng l&agrave;m chảy m&aacute;u hoặc thủng thực quản. Với kỹ thuật cắt u th&agrave;nh thực quản qua nội soi cần B&aacute;c sĩ c&oacute; tr&igrave;nh độ tay nghề cao mới thực hiện th&agrave;nh c&ocirc;ng kỹ thuật v&agrave; đảm bảo an to&agrave;n cho người bệnh. Đồng thời cần c&oacute; một Bệnh viện để c&oacute; thể can thiệp phẫu thuật khi c&oacute; biến chứng xảy ra khi cắt khối u qua nội soi.</p>\r\n\r\n<p>Bệnh nh&acirc;n bị đau v&ugrave;ng thượng vị do vi&ecirc;m dạ d&agrave;y c&oacute; nhiễm vi khuẩn H.p, v&igrave; vậy B&aacute;c sĩ đ&atilde; k&ecirc; đơn thuốc điều trị cho bệnh nh&acirc;n theo ph&aacute;c đồ 4 thuốc c&oacute; Bismuth v&agrave; PPI thế hệ 2 liều gấp đ&ocirc;i liều chuẩn theo khuyến c&aacute;o chung của Maastricht V v&agrave; Toronto 2016.</p>\r\n\r\n<p>Bệnh nh&acirc;n được khuy&ecirc;n ăn thức ăn mềm, ăn nguội, ăn nhiều bữa trong ng&agrave;y. Trong thời gian sử dụng thuốc kh&ocirc;ng n&ecirc;n c&oacute; thai, kh&ocirc;ng uống rượu bia v&agrave; nước c&oacute; ga.</p>\r\n\r\n<p>5 ng&agrave;y sau cắt hớt khối u ni&ecirc;m mạc thực quản, Ch&uacute;ng t&ocirc;i gọi điện cho bệnh nh&acirc;n v&agrave; được biết sau điều trị đ&atilde; hết n&ocirc;n, đỡ đau nhiều, kh&ocirc;ng c&oacute; dấu hiệu của chảy m&aacute;u, ăn uống tốt v&agrave; sức khỏe đ&atilde; từng bước ổn định.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một điều l&yacute; th&uacute; đối với bệnh nh&acirc;n n&agrave;y l&agrave; mặc d&ugrave; cần phải thực hiện đầy đủ 4 bước của qu&aacute; tr&igrave;nh thăm kh&aacute;m v&agrave; điều trị nhưng&nbsp;<strong><em>bệnh nh&acirc;n đ&atilde; được thực hiện tại một cơ sở l&agrave; Ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long v&agrave; thời gian một ng&agrave;y từ 7h30 s&aacute;ng đến 17h00 c&ugrave;ng ng&agrave;y</em></strong>.&nbsp;</p>', '2017-05-23 00:43:09', '2017-06-15 18:19:23', 1, 3),
(3, 'ff10505faae70fe45ca394e0e0e05cb1177b111b.jpg', 'Điều trị nội khoa bệnh trào ngược dạ dày thực quản', 'Bệnh trào ngược dạ dày thực quản (GERD) nếu không được điều trị lâu ngày sẽ gây ra các biến chứng như chít hẹp thực quản, chảy máu,  rò thực quản, Barret thực quản và ung thư thực quản.\r\n\r\nPhương pháp điều trị nội khoa bệnh trào ngược dạ dày thực quản bao gồm giáo dục sức khỏe thay đổi lối sống và thuốc điều trị GERD', '<p>&nbsp;Bệnh tr&agrave;o ngược dạ d&agrave;y thực quản (GERD) nếu kh&ocirc;ng được điều trị l&acirc;u ng&agrave;y sẽ g&acirc;y ra c&aacute;c biến chứng như ch&iacute;t hẹp thực quản, chảy m&aacute;u,&nbsp;&nbsp;r&ograve; thực quản, Barret thực quản v&agrave; ung thư thực quản.</p>\r\n\r\n<p>Phương ph&aacute;p điều trị nội khoa bệnh tr&agrave;o ngược dạ d&agrave;y thực quản bao gồm gi&aacute;o dục sức khỏe thay đổi lối sống v&agrave; thuốc điều trị GERD</p>\r\n\r\n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Thay đổi về lối sống</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N&ecirc;n k&ecirc; đầu giường l&ecirc;n cao khoảng 30cm sẽ gi&uacute;p l&agrave;m sạch thực quản tốt hơn.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Những người b&eacute;o giảm c&acirc;n l&agrave; biện ph&aacute;p hữu &iacute;ch v&igrave; sẽ giảm triệu chứng tr&agrave;o ngược</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng n&ecirc;n mặc quần &aacute;o chật, kh&ocirc;ng nằm sau khi ăn, kh&ocirc;ng c&uacute;i gập người sau ăn. Hạn chế sử dụng rượu, thuốc l&aacute; v&agrave; kh&ocirc;ng n&ecirc;n ăn nhẹ trước khi đi ngủ. Hạn chế ăn thức ăn c&oacute; mỡ động vật, socola, h&agrave;nh, một số thuốc chẹn k&ecirc;nh canxi, thuốc ức chế ph&oacute; giao cảm, k&iacute;ch th&iacute;ch giao cảm, theophylline v&agrave; nitrat l&agrave;m giảm &aacute;p lực cơ thắt thực quản dưới. Kh&ocirc;ng n&ecirc;n d&ugrave;ng đồ ăn ảnh hưởng đến ni&ecirc;m mạc thực quản như cam, qu&yacute;t, c&agrave; chua, c&agrave; ph&ecirc;, tr&agrave;, c&aacute;c thuốc aspirin, thuốc chống vi&ecirc;m giảm đau kh&ocirc;ng steroid, tetracyclin, quinidine, kali.</p>\r\n\r\n<p><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Thuốc điều trị GERD</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc kh&aacute;ng toan c&oacute; thể sử dụng một số trường hợp GERD nhẹ, nhưng nh&igrave;n chung loại thuốc n&agrave;y kh&ocirc;ng được khuyến c&aacute;o sử dụng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sucralfat: thuốc bảo vệ ni&ecirc;m mạc thực quản khỏi sự tấn c&ocirc;ng của acid v&agrave; pepsin, tuy nhi&ecirc;n đ&acirc;y l&agrave; thuốc được chỉ định khi bệnh nh&acirc;n c&oacute; thai liều 1gam x 4lần/ng&agrave;y. Thuốc c&oacute; thể g&acirc;y t&aacute;o b&oacute;n kh&ocirc;ng c&oacute; lợi cho người c&oacute; thai.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc prokinetic: tăng co b&oacute;p thực quản v&agrave; tăng trương lực của cơ thắt thực quản dưới như metoclopramide, domperidone, itopride, mosapride. Hiện loại thuốc n&agrave;y &iacute;t được d&ugrave;ng trong điều trị GERD</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc ức chế thụ thể H2: nh&oacute;m thuốc n&agrave;y n&ecirc;n d&ugrave;ng cho trường hợp bệnh nhẹ hoặc điều trị duy tr&igrave;.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc ức chế bơm proton: cả 5 loại PPI đang c&oacute; mặt ở Việt Nam l&agrave; Omeprazole, Lansoprazole,&nbsp;Rabeprazole,&nbsp;Pantoprazole v&agrave; Esomeprazole đều l&agrave; những thuốc ức chế b&agrave;i tiết acid tốt. C&aacute;c trường hợp GERD nhẹ v&agrave; trung b&igrave;nh kết quả điều trị giữa c&aacute;c PPI kh&ocirc;ng c&oacute; sự kh&aacute;c biệt nhiều. C&aacute;c trường hợp GERD nặng th&igrave; Esomeprazole tỏ ra ưu thế hơn. Hiệu quả điều trị được đ&aacute;nh gi&aacute; bằng việc giảm hoặc mất triệu chứng v&agrave; liền tổn thương.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thuốc t&aacute;c dụng l&ecirc;n cơ thắt thực quản dưới ức chế receptor GABAB&nbsp;l&agrave; khuynh hướng mới trong điều trị GERD hiện nay. Thuốc sử dụng baclofen 10mg x 2lần/ ng&agrave;y&nbsp;hoặc lesogaberan 60mg &ndash; 240mg/ ng&agrave;y chia 2 lần.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Phối hợp thuốc</strong></p>\r\n\r\n<p>Theo khuyến c&aacute;o hiện nay điều trị GERD chủ yếu sử dụng PPI. T&ugrave;y theo t&igrave;nh trạng bệnh c&aacute;c ph&aacute;c đồ sử dụng từ thấp đến cao như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/dieutri.jpg\" style=\"height:262px; width:346px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đối với c&aacute;c trường hợp GERD nhẹ v&agrave; trung b&igrave;nh PPI liều ti&ecirc;u chuẩn hoặc &frac12; liều ti&ecirc;u chuẩn &nbsp;điều trị đ&atilde; c&oacute; kết quả.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đối với vi&ecirc;m thực quản v&agrave; c&aacute;c trường hợp GERD nặng theo ph&acirc;n loại Los Angeles mức độ C v&agrave; D: Thời gian điều trị 4 tuần với PPI đa số cho kết quả liền vi&ecirc;m v&agrave; tr&agrave;o ngược rất tốt. Liều esomeprazole 40mg tỏ ra hiệu quả hơn Omeprazole 20mg, Lansoprazole 30mg v&agrave; Pantoprazole 40mg. Gần đ&acirc;y một số nghi&ecirc;n cứu cho thấy Dexlansoprazole liều 60mg cũng đạt kết quả rất tốt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Điều trị duy tr&igrave;</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Tại sao phải điều trị duy tr&igrave;:&nbsp;</em>Thường &aacute;p dụng cho những bệnh nh&acirc;n nặng.&nbsp;Sở dĩ phải điều trị duy tr&igrave; l&agrave; do những bệnh nh&acirc;n GERD nặng theo d&otilde;i 6 th&aacute;ng sau khi ngưng thuốc điều trị c&oacute; 80% bệnh nh&acirc;n bị t&aacute;i ph&aacute;t. Đối với bệnh nh&acirc;n nhẹ th&igrave; tỷ lệ t&aacute;i ph&aacute;t 15-30%.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Chỉ định điều trị duy tr&igrave;:</em></p>\r\n\r\n<p>+ Vi&ecirc;m thực quản nặng theo ph&acirc;n loại Los Angeles mức độ C v&agrave; D</p>\r\n\r\n<p>+ Hẹp thực quản do GERD</p>\r\n\r\n<p>+ Barrett thực quản</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>Thuốc điều trị duy tr&igrave;</em>: theo khuyến c&aacute;o điều trị GERD mới nhất đều x&aacute;c định PPI l&agrave; ưu ti&ecirc;n số 1. Thuốc ức chế H2&nbsp;cũng l&agrave; một lựa chọn cho điều trị dự ph&ograve;ng trong một số trường hợp cần thiết. Liều lượng trong điều trị duy tr&igrave; đối với PPI liều ti&ecirc;u chuẩn, &frac12; liều ti&ecirc;u chuẩn, điều trị theo nhu cầu (khi c&oacute; triệu chứng th&igrave; d&ugrave;ng thuốc) v&agrave; điều trị ngắt qu&atilde;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nh&igrave;n chung việc lựa chọn thuốc phụ thuộc v&agrave;o từng bệnh nh&acirc;n v&agrave; mức độ bệnh cũng như mức độ đ&aacute;p ứng thuốc. Nguy&ecirc;n tắc d&ugrave;ng thuốc liều thấp nhất duy tr&igrave; được kết quả điều trị. Lưu &yacute; khi d&ugrave;ng PPI l&acirc;u d&agrave;i&nbsp;ở&nbsp;bệnh nh&acirc;n bị nhiễm&nbsp;<em>H.p</em>&nbsp;cần điều trị tiệt trừ&nbsp;<em>H.p</em>.</p>', '2017-05-23 00:43:17', '2017-06-15 18:19:30', 1, 3),
(4, '6ba05a502f9d1b9cb2025a953844a42959d23f7c.jpg', 'Hội thảo Vai trò của PPI thế hệ 2 trong điều trị H Pylori và GERD', 'Với mục đích cập nhật các hướng dẫn của Quốc tế trong điều trị bệnh trào ngược dạ dày thực quản và thương tổn dạ dày do nhiễm trực khuẩn H. Pylori, Ngày 3 tháng 3 năm 2017, Phòng khám Hoàng Long đã phối hợp với Công ty EISAI tổ chức Hội thảo \"Vai trò của PPI thế hệ hai trong điều trị H.Pylori và GERD – cập nhật APDW 2016\".', '<p>Với mục đ&iacute;ch cập nhật c&aacute;c hướng dẫn của Quốc tế trong điều trị bệnh tr&agrave;o ngược dạ d&agrave;y thực quản v&agrave; thương tổn dạ d&agrave;y do nhiễm trực khuẩn H. Pylori, Ng&agrave;y 3 th&aacute;ng 3 năm 2017, Ph&ograve;ng kh&aacute;m Ho&agrave;ng Long đ&atilde; phối hợp với C&ocirc;ng ty EISAI tổ chức Hội thảo &ldquo;Vai tr&ograve; của PPI thế hệ hai trong điều trị H.Pylori v&agrave; GERD &ndash; cập nhật APDW 2016&rdquo;.</p>\r\n\r\n<p>Hội thảo đ&atilde; c&oacute; sự tham dự của hơn 80 b&aacute;c sĩ Nội khoa đang thực hiện c&ocirc;ng t&aacute;c kh&aacute;m chữa bệnh chuy&ecirc;n khoa Nội, nội soi Ti&ecirc;u h&oacute;a của c&aacute;c bệnh viện khu vực H&agrave; Nội về tham dự v&agrave; chia sẻ kinh nghiệm trong điều trị cho bệnh nh&acirc;n vi&ecirc;m lo&eacute;t dạ d&agrave;y v&agrave; tr&agrave;o ngược dạ d&agrave;y thực quản.</p>\r\n\r\n<p>Hội thảo đ&atilde; được nghe PGS.TS. Vũ Văn Khi&ecirc;n, trưởng khoa Nội soi ti&ecirc;u h&oacute;a, Bệnh viện 108, Tổng thư k&yacute; Hội Khoa học Ti&ecirc;u h&oacute;a Việt Nam tr&igrave;nh b&agrave;y c&aacute;c nội dung chuy&ecirc;n m&ocirc;n của Hội thảo.</p>\r\n\r\n<p>Với sự chủ tr&igrave; của GS.TS. Đ&agrave;o Văn Long, nguy&ecirc;n trưởng khoa Ti&ecirc;u h&oacute;a bệnh viện Bạch Mai, nguy&ecirc;n Gi&aacute;m đốc bệnh viện Đại học Y H&agrave; Nội đ&atilde; thảo luận về c&aacute;c nội dung &aacute;p dụng điều trị nhiễm H.pylori trong bệnh l&yacute; dạ d&agrave;y t&aacute; tr&agrave;ng theo hướng dẫn của tuần lễ Ti&ecirc;u h&oacute;a khu vực ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh dương năm 2016 được tổ chức tại Nhật Bản như sau:</p>\r\n\r\n<p><strong><em>Về chỉ định điều trị diệt HP đối với những trường hợp nhiễm HP (+)&nbsp;&nbsp;v&agrave; c&oacute; c&aacute;c tổn thương k&egrave;m theo như:&nbsp;</em></strong></p>\r\n\r\n<p>+ Lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng,</p>\r\n\r\n<p>+ Sau cắt hớt ni&ecirc;m mạc dạ d&agrave;y</p>\r\n\r\n<p>+ Vi&ecirc;m teo ni&ecirc;m mạc dạ d&agrave;y</p>\r\n\r\n<p>+ C&oacute; bố, mẹ, anh chị em ruột hoặc con ruột bị ung thư dạ d&agrave;y,</p>\r\n\r\n<p>+ Bệnh nh&acirc;n c&oacute; polyp dạ d&agrave;y</p>\r\n\r\n<p>+ Những trường hợp thiếu m&aacute;u thiếu sắt chưa r&otilde; nguy&ecirc;n nh&acirc;n</p>\r\n\r\n<p><img alt=\"collage\" src=\"/uploads/collage_photocat1.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><strong><em>Về ph&aacute;c đồ điều trị diệt Hp c&aacute;c Chuy&ecirc;n gia cũng đ&atilde; thảo luận những điểm cần ch&uacute; &yacute; trong điều trị diệt Hp như sau:</em></strong></p>\r\n\r\n<p>+ Thời gian điều trị 14 ng&agrave;y</p>\r\n\r\n<p>+ Liều của PPI n&ecirc;n gấp 2 lần liều theo khuyến c&aacute;o trước đ&acirc;y, v&agrave; n&ecirc;n sử dụng PPI thế hệ II c&oacute; điểm pKa cao nhất để n&acirc;ng t&aacute;c dụng của c&aacute;c kh&aacute;ng sinh điều trị diệt Hp</p>\r\n\r\n<p>+ T&ugrave;y thuộc v&agrave;o vị tr&iacute; ph&acirc;n v&ugrave;ng sự kh&aacute;ng kh&aacute;ng sinh ở từng địa phương m&agrave; ch&uacute;ng ta lựa chọn ph&aacute;c đồ điều trị bậc 1 hay ph&aacute;c đồ bậc 2.</p>\r\n\r\n<p>+ Lựa chọn ph&aacute;c đồ bậc 1 gồm 4 thuốc: PPI (liều gấp đ&ocirc;i) + Kh&aacute;ng sinh (2 loại kh&aacute;ng sinh) + thuốc bao bọc ni&ecirc;m mạc dạ d&agrave;y Bismuth.</p>\r\n\r\n<p>+ Lựa chọn ph&aacute;c đồ bậc 2 &ndash; ph&aacute;c đồ đồng thời: PPI (liều gấp đ&ocirc;i) + Kh&aacute;ng sinh (3 loại kh&aacute;ng sinh)&nbsp;&nbsp;+ c&oacute; thể phối hợp th&ecirc;m thuốc bao bọc ni&ecirc;m mạc dạ d&agrave;y Bismuth.</p>\r\n\r\n<p>+ Đối với phối hợp kh&aacute;ng sinh n&ecirc;n phối hợp c&aacute;c kh&aacute;ng sinh c&oacute; tỷ lệ kh&aacute;ng kh&aacute;ng sinh thấp v&agrave; c&oacute; t&aacute;c dụng hiệp đồng để điều trị.</p>\r\n\r\n<p><strong><em>Hội thảo cũng đề cập đến vấn đề dự ph&ograve;ng nhiễm H.Pylori.</em></strong></p>\r\n\r\n<p>Tỷ lệ cha mẹ c&oacute; Hp (+) khả năng con c&aacute;i của họ nhiễm Hp chiếm 40%, v&agrave; khả năng l&acirc;y sang giữa vợ chồng l&agrave; 68%. Trực khuẩn Hp l&acirc;y nhiễm theo đường ti&ecirc;u h&oacute;a v&igrave; vậy lời khuy&ecirc;n của c&aacute;c B&aacute;c sĩ l&agrave; trong gia đ&igrave;nh nếu Bố/ hoặc Mẹ bị nhiễm Hp th&igrave; con c&aacute;i v&agrave; vợ/chồng của người đ&oacute; n&ecirc;n đi kiểm tra xem m&igrave;nh c&oacute; bị nhiễm Hp hay kh&ocirc;ng.</p>\r\n\r\n<p>C&aacute;c B&aacute;c sĩ tham dự đ&atilde; đ&aacute;nh gi&aacute; rất cao những th&ocirc;ng tin cập nhật trong điều trị bệnh l&yacute; do nhiễm Hp g&acirc;y ra v&agrave; gi&uacute;p &iacute;ch nhiều cho c&aacute;c B&aacute;c sĩ trong c&ocirc;ng t&aacute;c thực h&agrave;nh l&acirc;m s&agrave;ng của m&igrave;nh</p>', '2017-05-23 00:54:49', '2017-06-15 18:19:38', 2, 2),
(5, 'c0fc5a7e84f0c3fd80038b9511b5c7572239279b.jpg', 'Hướng dẫn theo dõi sau thủ thuật cắt polyp qua nội soi dạ dày - đại tràng', 'Polyp đường tiêu hóa là một trong những nguyên nhân gây ung thư, qua đường nội soi bác sỹ có thể dùng đụng cụ chuyên dụng để cắt bỏ sớm nhằm ngăn ngừa các biến chứng (ác tính hóa thành ung thư, chảy máu từ polyp, tắc ruột…)', '<table cellspacing=\"0\" style=\"width:709px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:80.05pt\">\r\n			<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/1(2).png\" style=\"height:90px; width:106px\" /></p>\r\n			</td>\r\n			<td style=\"width:451.75pt\">\r\n			<p><strong>&nbsp;</strong></p>\r\n\r\n			<p><strong>PH&Ograve;NG KH&Aacute;M ĐA KHOA HO&Agrave;NG LONG</strong>&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>HƯỚNG DẪN THEO D&Otilde;I SAU THỦ THUẬT CẮT POLYP QUA</strong></p>\r\n\r\n<p><strong>NỘI SOI DẠ D&Agrave;Y &ndash; ĐẠI TR&Agrave;NG</strong></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><em>Polyp đường ti&ecirc;u h&oacute;a l&agrave; một trong những nguy&ecirc;n nh&acirc;n g&acirc;y ung thư, qua đường nội soi b&aacute;c sỹ c&oacute; thể d&ugrave;ng đụng cụ chuy&ecirc;n dụng để cắt bỏ sớm nhằm ngăn ngừa c&aacute;c biến chứng (&aacute;c t&iacute;nh h&oacute;a th&agrave;nh ung thư, chảy m&aacute;u từ polyp, tắc ruột&hellip;)</em></p>\r\n\r\n<p><em>T&ugrave;y theo k&iacute;ch thước v&agrave; số lượng polyp cắt, t&igrave;nh trạng sau thủ thuật bệnh nh&acirc;n c&oacute; thể phải &nbsp;nhập vi&ecirc;n theo d&otilde;i hoặc theo d&otilde;i tại nh&agrave;; điều n&agrave;y b&aacute;c sỹ thực hiện thủ thuật hoặc b&aacute;c sỹ kh&aacute;m sẽ c&oacute; chỉ định cụ thể.</em></p>\r\n\r\n<p><strong>Hướng dẫn bệnh nh&acirc;n tự theo d&otilde;i v&agrave; chăm s&oacute;c tại nh&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>Sau thủ thuật nội soi g&acirc;y m&ecirc;, bệnh nh&acirc;n kh&ocirc;ng được tự điều khiển c&aacute;c phương tiện giao th&ocirc;ng, phải c&oacute; người nh&agrave; đi soi c&ugrave;ng v&agrave; đưa về từ bệnh viện.</li>\r\n	<li>Nghỉ ngơi, kh&ocirc;ng lao động nặng, kh&ocirc;ng đi bộ nhiều, leo n&uacute;i hoặc di chuyển xa.</li>\r\n	<li>Ăn thức ăn mềm, dễ ti&ecirc;u h&oacute;a (tốt nhất l&agrave; ch&aacute;o xay nhuyễn c&ugrave;ng với rau trong v&ograve;ng 3 ng&agrave;y) sau đ&oacute; ăn chia nhỏ 5 &ndash; 6 bữa/ng&agrave;y.</li>\r\n	<li>Hạn chế đồ ăn cay n&oacute;ng, nhiều dầu mỡ, đồ ăn nhiều b&atilde;, đồ qu&aacute; ngọt&hellip;</li>\r\n	<li>N&ecirc;n ăn chậm, ăn nhiều đồ ăn rau quả, uống nhiều sữa để bổ sung vitamin.</li>\r\n	<li>Kh&ocirc;ng được để t&aacute;o b&oacute;n, hạn chế rặn khi đại tiện.</li>\r\n</ul>\r\n\r\n<p>Trường hợp bệnh nh&acirc;n c&oacute; đau tuyệt đối kh&ocirc;ng được sử dụng c&aacute;c thuốc c&oacute; ảnh hưởng đến chức năng m&aacute;u như aspirin, giảm đau c&oacute; ibuprofen, naproxen trong 2 tuần sau khi soi. Chỉ n&ecirc;n sử dụng thuốc giảm đau Acetaminophen / Paracetamol.</p>\r\n\r\n<p>Trường hợp bệnh nh&acirc;n c&oacute; polyp đại tr&agrave;ng n&ecirc;n soi đại tr&agrave;ng 1 năm 1 lần. Người th&acirc;n của bệnh nh&acirc;n n&ecirc;n soi đại tr&agrave;ng kiểm tra nếu &gt; 50 tuổi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/IMG_0442.jpg\" style=\"height:512px; width:768px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tiến triển b&igrave;nh thường sau cắt polyp:</strong></p>\r\n\r\n<ul>\r\n	<li>Với c&aacute;c polyp nhỏ: ch&acirc;n vết cắt sẽ tự liền sẹo trong v&ograve;ng 1 tuần.</li>\r\n	<li>Với c&aacute;c polyp lớn c&oacute; v&ograve;ng thắt ch&acirc;n polyp trước khi cắt: v&ograve;ng cắt hoặc kẹp clip sẽ tự rời khỏi vết cắt thường trong khoảng 1 tuần.</li>\r\n</ul>\r\n\r\n<p><strong>Dấu hiệu bất thường:</strong></p>\r\n\r\n<ul>\r\n	<li>Sốt, ớn lạnh</li>\r\n	<li>Ph&ugrave; nền v&ugrave;ng hậu m&ocirc;n, chảy m&aacute;u hoặc c&oacute; dịch tiết ra ở trực tr&agrave;ng với số lượng nhiều.</li>\r\n	<li>Ho, kh&oacute; thở, đau ngực, t&ecirc; hoặc run ch&acirc;n tay&hellip;</li>\r\n	<li>Hoa mắt, ch&oacute;ng mặt, buồn n&ocirc;n hoặc n&ocirc;n ra dịch n&acirc;u bẩn, m&aacute;u tươi, m&aacute;u cục&hellip;</li>\r\n	<li>T&igrave;nh trạng đau bụng tăng l&ecirc;n sau l&agrave;m thủ thuật, bụng chướng căng hoặc co cứng.</li>\r\n	<li>Đại tiện ph&acirc;n c&oacute; m&aacute;u tươi với số lương tăng dần hoặc ph&acirc;n hắc &iacute;n, m&ugrave;i khắm, hoặc ph&acirc;n đen như b&atilde; cafe.</li>\r\n</ul>\r\n\r\n<p><strong>Nếu c&oacute; một trong c&aacute;c triệu chứng tr&ecirc;n cần:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Li&ecirc;n lạc ngay với Ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long (04 62 811 331 &ndash; 0936.398.123) để đ&aacute;nh gi&aacute; v&agrave; tư vấn.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hoặc đem theo c&aacute;c giấy tờ li&ecirc;n quan đến việc cắt polyp đến cơ sở y tế gần nhất để kịp xử tr&iacute;.</p>', '2017-05-27 11:58:31', '2017-05-27 11:58:31', 1, 1),
(6, '004c2a3db958a1b7dae4c12c7f59f5e341aebd6d.png', 'Cắt polyp đại trực tràng ở trẻ nhỏ 6 tuổi', 'Ngày 25 tháng 09 năm 2016 tại phòng khám đa khoa Hoàng Long đã điều trị cho cháu Phạm Quốc A, sinh năm 2010 (6 tuổi). Hiện đang sống tại Hà Tĩnh.', '<p>&nbsp;Ng&agrave;y 25 th&aacute;ng 09 năm 2016 tại ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long đ&atilde; điều trị cho ch&aacute;u Phạm Quốc A, sinh năm 2010 (6 tuổi). Hiện đang sống tại H&agrave; Tĩnh.</p>\r\n\r\n<p><strong>L&yacute; do kh&aacute;m bệnh</strong>: Đi ngo&agrave;i ra m&aacute;u tươi</p>\r\n\r\n<p><strong>Bệnh sử:</strong>&nbsp;&nbsp;Từ đầu th&aacute;ng 9 năm 2016, Bệnh nhi thỉnh thoảng c&oacute; đầy bụng, đau bụng v&agrave; đi ngo&agrave;i ph&acirc;n c&oacute; m&aacute;u. Ch&aacute;u đ&atilde; được gia đ&igrave;nh đưa đến kh&aacute;m tại bệnh viện đa khoa tỉnh H&agrave; Tĩnh v&agrave; được chuyển l&ecirc;n tuyến trung ương. Tại đ&acirc;y ch&aacute;u được kh&aacute;m bệnh x&eacute;t nghiệm. Do bệnh nhi c&oacute; t&igrave;nh trạng vi&ecirc;m amydan v&agrave; vi&ecirc;m hạch k&egrave;m theo n&ecirc;n Bệnh viện tuyến trung ương kh&ocirc;ng chỉ định nội soi đường ti&ecirc;u h&oacute;a. Ch&aacute;u đ&atilde; t&aacute;i kh&aacute;m tại Bệnh viện tuyến trung ương 2 lần, uống thuốc theo đơn điều trị của B&aacute;c sĩ. Mẹ ch&aacute;u đ&atilde; điều chỉnh chế độ ăn cho ch&aacute;u nhiều rau hơn nhưng t&igrave;nh trạng đi ngo&agrave;i ra m&aacute;u kh&ocirc;ng đỡ. Gia đ&igrave;nh đ&atilde; được người quen giới thiệu v&agrave; đưa ch&aacute;u đến kh&aacute;m tại ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long.</p>\r\n\r\n<p><strong>Qu&aacute; tr&igrave;nh kh&aacute;m bệnh v&agrave; điều trị tại ph&ograve;ng kh&aacute;m đa khoa Ho&agrave;ng Long</strong></p>\r\n\r\n<p>Ch&aacute;u được kh&aacute;m l&acirc;m s&agrave;ng, x&eacute;t nghiệm v&agrave; được chỉ định nội soi đại tr&agrave;ng tiền m&ecirc; với hệ thống nội soi &nbsp;độ ph&acirc;n giải cao.</p>\r\n\r\n<p>Về kết quả x&eacute;t nghiệm: C&aacute;c kết quả x&eacute;t nghiệm Hemoglobin 13,4 g/dL trong giới hạn thấp của b&igrave;nh thường. C&aacute;c chỉ số hồng cầu giảm hơn so với gi&aacute; trị b&igrave;nh thường (MCV&nbsp;thấp&nbsp;77,5 fL, MCH&nbsp;thấp&nbsp;25,7pg). C&aacute;c chỉ số đ&ocirc;ng m&aacute;u b&igrave;nh thường.</p>\r\n\r\n<p>Kết quả soi đại tr&agrave;ng cho thấy đại tr&agrave;ng Sigma c&oacute; 2 polyp k&iacute;ch thước ~ 0,4 cm đ&atilde; cắt hết bằng snare. Ni&ecirc;m mạc trực tr&agrave;ng c&oacute; một polyp k&iacute;ch thước ~ 1,5 cm đ&atilde; được cắt hết.</p>\r\n\r\n<p>C&aacute;c mẫu bệnh phẩm cắt polyp được l&agrave;m m&ocirc; bệnh học cho kết quả polyp tuyến ống kết hợp vi&ecirc;m mạn t&iacute;nh.</p>\r\n\r\n<p>Bệnh nh&acirc;n được k&ecirc; đơn sau cắt polyp, d&ugrave;ng kh&aacute;ng sinh Augmentin 1g, ng&agrave;y 1 vi&ecirc;n chia l&agrave;m 2 lần&nbsp; trong 7 ng&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/PhamQuocA.PNG\" style=\"height:563px; width:668px\" /></p>\r\n\r\n<p>Sau 6 th&aacute;ng bệnh nh&acirc;n đến kh&aacute;m lại v&agrave; soi đại tr&agrave;ng kiểm tra h&igrave;nh ảnh soi đại tr&agrave;ng b&igrave;nh thường.</p>\r\n\r\n<p><strong>Để thảo luận về bệnh nh&acirc;n n&agrave;y ch&uacute;ng t&ocirc;i c&oacute; &yacute; kiến như sau:</strong></p>\r\n\r\n<p>Polyp đại tr&agrave;ng l&agrave;&nbsp;một khối ph&aacute;t triển bất thường tr&ecirc;n bề mặt ruột gi&agrave; (từ lớp ni&ecirc;m mạc) c&ograve;n gọi l&agrave; đại tr&agrave;ng.&nbsp;Polyp đại tr&agrave;ng chủ yếu l&agrave; l&agrave;nh t&iacute;nh nhưng polyp tuyến ống v&agrave; nhung mao c&oacute; thể h&oacute;a ung thư. Polyp c&oacute; thể đơn độc, hoặc c&oacute; nhiều polyp suốt dọc theo đại tr&agrave;ng (bệnh polyp: polypome).&nbsp; Bệnh thường kh&ocirc;ng c&oacute; triệu chứng l&acirc;m s&agrave;ng, chỉ ph&aacute;t hiện t&igrave;nh cờ qua chụp X quang đại tr&agrave;ng hoặc nội soi đại tr&agrave;ng hoặc x&eacute;t nghiệm m&aacute;u ẩn trong ph&acirc;n.&nbsp;Polyp đại tr&agrave;ng mang t&iacute;nh gia đ&igrave;nh.</p>\r\n\r\n<p>Biến chứng: Xuất huyết (60%), thường xuất huyết &acirc;m ỉ hiếm khi ồ ạt. Ung thư ho&aacute;, nguy cơ ho&aacute; ung thư thường sau 10 năm v&agrave; phụ thuộc v&agrave;o loại polyp (tuyến ống, nhung mao) v&agrave; k&iacute;ch thước (d &gt; 1 - 1,5cm dễ ho&aacute; ung thư).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Điều trị: Cắt polyp qua nội soi (nếu polyp đơn độc). Cắt đoạn đại tr&agrave;ng (bệnh polyp).</p>\r\n\r\n<p><strong>Đối với bệnh nhi n&agrave;y</strong>&nbsp;c&oacute; 3 polyp đại tr&agrave;ng trong đ&oacute; c&oacute; 1 polyp c&oacute; k&iacute;ch thước lớn 1,5cm v&agrave; đ&atilde; g&acirc;y biến chứng đi ngo&agrave;i ra m&aacute;u. Kết quả m&ocirc; bệnh học l&agrave; polyp tuyến ống, loại polyp c&oacute; thể g&acirc;y ung thư h&oacute;a.</p>\r\n\r\n<p>Một điều đặc biệt ở bệnh nhi n&agrave;y khi c&oacute; bệnh polyp đại trực tr&agrave;ng g&acirc;y mất m&aacute;u mạn t&iacute;nh v&agrave; c&oacute; nguy cơ dẫn đến thiếu m&aacute;u thiếu sắt. Ph&acirc;n t&iacute;ch kết quả x&eacute;t nghiệm ng&agrave;y 25/9/2016 mặc d&ugrave; nồng độ sắt huyết thanh vẫn b&igrave;nh thường nhưng gi&aacute; trị thể t&iacute;ch trung b&igrave;nh hồng cầu MCV&nbsp;thấp&nbsp;77,5 fL so với y&ecirc;u cầu từ 80-100fL (hồng cầu nhỏ); Gi&aacute; trị lượng huyết sắc trung b&igrave;nh hồng cầu MCH 25,7pg&nbsp;thấp hơn&nbsp;so với y&ecirc;u cầu 28-32pg (hồng cầu nhược sắc). Lượng hemoglobin l&agrave; 13,4 g/dL ở gi&aacute; trị thấp của gi&aacute; trị b&igrave;nh thường &nbsp;so với y&ecirc;u cầu 12-18g/dL. Ch&uacute;ng t&ocirc;i giải th&iacute;ch lượng hemoglobin nằm trong khoảng thấp của gi&aacute; trị b&igrave;nh thường l&agrave; do sắt dự trữ được huy động v&agrave; qu&aacute; tr&igrave;nh tổng hợp hemoglobin vẫn ở mức thấp của b&igrave;nh thường.</p>\r\n\r\n<p>Sắt từ thức ăn được hấp thu một phần nhỏ ở dạ d&agrave;y, phần lớn ở h&agrave;nh t&aacute; tr&agrave;ng v&agrave; hỗng tr&agrave;ng. Trong cơ thể sắt được ph&acirc;n bố 65% ở hemoglobin, Số c&ograve;n lại sắt được ph&acirc;n bố ở c&aacute;c protein dự trữ tại gan, trong cơ (cơ bắp v&agrave; cơ tim), trong c&aacute;c enzyme v&agrave; dạng vận chuyển. Như vậy đối với bệnh nh&acirc;n n&agrave;y bị polyp đại tr&agrave;ng chảy m&aacute;u bị mất sắt th&ocirc;ng qua việc mất m&aacute;u mạn t&iacute;nh. Ch&uacute;ng t&ocirc;i đ&atilde; cắt được polyp đại tr&agrave;ng điều trị cho bệnh nh&acirc;n, kiểm tra lại sau 6 th&aacute;ng nội soi lại đại tr&agrave;ng c&oacute; h&igrave;nh ảnh b&igrave;nh thường.</p>\r\n\r\n<p><strong>Lời khuy&ecirc;n:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;1. &nbsp; &nbsp; Đối với c&aacute;c ch&aacute;u b&eacute; c&oacute; đi ngo&agrave;i ra m&aacute;u tươi n&ecirc;n nội soi đường ti&ecirc;u h&oacute;a để ph&aacute;t hiện tổn thương v&agrave; điều trị qua nội soi.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. &nbsp;&nbsp;Đối với ch&aacute;u b&eacute; trong ca bệnh n&agrave;y n&ecirc;n mỗi năm cần nội soi đường ti&ecirc;u h&oacute;a 1 lần để tầm so&aacute;t sự xuất hiện trở lại của polyp.</p>\r\n\r\n<p>&nbsp;3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đối với bố mẹ của ch&aacute;u cần đi soi đại tr&agrave;ng v&agrave; dạ d&agrave;y để ph&aacute;t hiện xem c&oacute; polyp đường ti&ecirc;u h&oacute;a hay kh&ocirc;ng.</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đối với trẻ nhỏ c&oacute; polyp g&acirc;y đi ngo&agrave;i ra m&aacute;u nhiều v&agrave; k&eacute;o d&agrave;i c&oacute; nguy cơ thiếu m&aacute;u thiếu sắt.</p>', '2017-06-09 21:32:50', '2017-06-09 21:32:50', 1, 2),
(7, '6e7b496005c3b678bb5191a26eb5c8c129bc4f60.jpg', 'Hy vọng mới cho bệnh nhân ung thư tuyến tiền liệt', 'Một trong những nghiên cứu thử nghiệm lâm sàng lớn nhất đối với việc điều trị ung thư tuyến tiền liệt đã đem lại những kết quả mạnh mẽ - các nhà khoa học Anh vừa cho hay.', '<p>Nghi&ecirc;n cứu n&agrave;y đ&atilde; điều tra t&aacute;c dụng của thuốc abiraterone được sử dụng như một điều trị bổ sung ở những bệnh nh&acirc;n ung thư tuyến tiền liệt, những đối tượng chuẩn bị điều trị bằng liệu ph&aacute;p hormone l&acirc;u d&agrave;i. Theo đ&oacute;, thuốc n&agrave;y c&oacute; thể k&eacute;o d&agrave;i sự sống cho người sử dụng nếu được d&ugrave;ng ở giai đoạn sớm.</p>\r\n\r\n<p><img alt=\"\" src=\"http://benh.vn/upload/benh-nhan-ung-thu-tuyen-tien-liet-benhvn.jpg\" /></p>\r\n\r\n<p><em>Hy vọng mới cho bệnh nh&acirc;n ung thư tuyến tiền liệt Ảnh minh hoạ: Internet</em></p>\r\n\r\n<p>Abiraterone, c&ograve;n được biết đến l&agrave; Zytiga, l&agrave; một liệu ph&aacute;p hormone. Kh&ocirc;ng giống như h&oacute;a trị giết chết c&aacute;c tế b&agrave;o ung thư, abiraterone ngăn chặn testosterone tiếp cận với tuyến tiền liệt để ngăn chặn sự ph&aacute;t triển của khối u.</p>\r\n\r\n<p>Cuộc nghi&ecirc;n cứu thử nghiệm n&agrave;y được tiến h&agrave;nh tr&ecirc;n 1.917 bệnh nh&acirc;n. Trong đ&oacute;, một nửa số t&igrave;nh nguyện nam giới được điều trị bằng liệu ph&aacute;p ho&oacute;c m&ocirc;n, trong khi nửa c&ograve;n lại được điều trị bằng nội tiết v&agrave; abiraterone. Kết quả, c&oacute; 184 ca tử vong ở nh&oacute;m điều trị phối hợp, so với tỉ lệ 262 ca tử vong ở nh&oacute;m điều trị bằng ho&oacute;c m&ocirc;n.</p>\r\n\r\n<p>Ước t&iacute;nh, mỗi năm c&oacute; khoảng 46.500 nam giới tại Anh được chẩn đo&aacute;n mắc ung thư tuyến tiền liệt v&agrave; khoảng 11 ngh&igrave;n nam giới tử vong v&igrave; bệnh n&agrave;y.</p>', '2017-06-09 21:35:57', '2017-06-15 18:17:03', 2, 3),
(8, '3b7ad8af430ae15d642377809e253c27e8962b9d.jpg', 'Hội thảo \" Vai trò của PPI thế hệ 2 trong điều trị H. Pylori và GERD', 'Với mục đích cập nhật các hướng dẫn của Quốc tế trong điều trị bệnh trào ngược dạ dày thực quản và thương tổn dạ dày do nhiễm trực khuẩn H. Pylori, Ngày 3 tháng 3 năm 2017, Phòng khám Hoàng Long đã phối hợp với Công ty EISAI tổ chức Hội thảo \"Vai trò của PPI thế hệ hai trong điều trị H.Pylori và GERD – cập nhật APDW 2016\".', '<p>Hội thảo đ&atilde; c&oacute; sự tham dự của hơn 80 b&aacute;c sĩ Nội khoa đang thực hiện c&ocirc;ng t&aacute;c kh&aacute;m chữa bệnh chuy&ecirc;n khoa Nội, nội soi Ti&ecirc;u h&oacute;a của c&aacute;c bệnh viện khu vực H&agrave; Nội về tham dự v&agrave; chia sẻ kinh nghiệm trong điều trị cho bệnh nh&acirc;n vi&ecirc;m lo&eacute;t dạ d&agrave;y v&agrave; tr&agrave;o ngược dạ d&agrave;y thực quản.</p>\r\n\r\n<p>Hội thảo đ&atilde; được nghe PGS.TS. Vũ Văn Khi&ecirc;n, trưởng khoa Nội soi ti&ecirc;u h&oacute;a, Bệnh viện 108, Tổng thư k&yacute; Hội Khoa học Ti&ecirc;u h&oacute;a Việt Nam tr&igrave;nh b&agrave;y c&aacute;c nội dung chuy&ecirc;n m&ocirc;n của Hội thảo.</p>\r\n\r\n<p>Với sự chủ tr&igrave; của GS.TS. Đ&agrave;o Văn Long, nguy&ecirc;n trưởng khoa Ti&ecirc;u h&oacute;a bệnh viện Bạch Mai, nguy&ecirc;n Gi&aacute;m đốc bệnh viện Đại học Y H&agrave; Nội đ&atilde; thảo luận về c&aacute;c nội dung &aacute;p dụng điều trị nhiễm H.pylori trong bệnh l&yacute; dạ d&agrave;y t&aacute; tr&agrave;ng theo hướng dẫn của tuần lễ Ti&ecirc;u h&oacute;a khu vực ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh dương năm 2016 được tổ chức tại Nhật Bản như sau:</p>\r\n\r\n<p><strong><em>Về chỉ định điều trị diệt HP đối với những trường hợp nhiễm HP (+)&nbsp;&nbsp;v&agrave; c&oacute; c&aacute;c tổn thương k&egrave;m theo như:&nbsp;</em></strong></p>\r\n\r\n<p>+ Lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng,</p>\r\n\r\n<p>+ Sau cắt hớt ni&ecirc;m mạc dạ d&agrave;y</p>\r\n\r\n<p>+ Vi&ecirc;m teo ni&ecirc;m mạc dạ d&agrave;y</p>\r\n\r\n<p>+ C&oacute; bố, mẹ, anh chị em ruột hoặc con ruột bị ung thư dạ d&agrave;y,</p>\r\n\r\n<p>+ Bệnh nh&acirc;n c&oacute; polyp dạ d&agrave;y</p>\r\n\r\n<p>+ Những trường hợp thiếu m&aacute;u thiếu sắt chưa r&otilde; nguy&ecirc;n nh&acirc;n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>&nbsp;<img alt=\"\" src=\"http://hoanglonghospital.vn/public/media/media/images/collage_photocat1.jpg\" style=\"height:1035px; width:1035px\" /></em></strong></p>\r\n\r\n<p><strong><em>Về ph&aacute;c đồ điều trị diệt Hp c&aacute;c Chuy&ecirc;n gia cũng đ&atilde; thảo luận những điểm cần ch&uacute; &yacute; trong điều trị diệt Hp như sau:</em></strong></p>\r\n\r\n<p>+ Thời gian điều trị 14 ng&agrave;y</p>\r\n\r\n<p>+ Liều của PPI n&ecirc;n gấp 2 lần liều theo khuyến c&aacute;o trước đ&acirc;y, v&agrave; n&ecirc;n sử dụng PPI thế hệ II c&oacute; điểm pKa cao nhất để n&acirc;ng t&aacute;c dụng của c&aacute;c kh&aacute;ng sinh điều trị diệt Hp</p>\r\n\r\n<p>+ T&ugrave;y thuộc v&agrave;o vị tr&iacute; ph&acirc;n v&ugrave;ng sự kh&aacute;ng kh&aacute;ng sinh ở từng địa phương m&agrave; ch&uacute;ng ta lựa chọn ph&aacute;c đồ điều trị bậc 1 hay ph&aacute;c đồ bậc 2.</p>\r\n\r\n<p>+ Lựa chọn ph&aacute;c đồ bậc 1 gồm 4 thuốc: PPI (liều gấp đ&ocirc;i) + Kh&aacute;ng sinh (2 loại kh&aacute;ng sinh) + thuốc bao bọc ni&ecirc;m mạc dạ d&agrave;y Bismuth.</p>\r\n\r\n<p>+ Lựa chọn ph&aacute;c đồ bậc 2 &ndash; ph&aacute;c đồ đồng thời: PPI (liều gấp đ&ocirc;i) + Kh&aacute;ng sinh (3 loại kh&aacute;ng sinh)&nbsp;&nbsp;+ c&oacute; thể phối hợp th&ecirc;m thuốc bao bọc ni&ecirc;m mạc dạ d&agrave;y Bismuth.</p>\r\n\r\n<p>+ Đối với phối hợp kh&aacute;ng sinh n&ecirc;n phối hợp c&aacute;c kh&aacute;ng sinh c&oacute; tỷ lệ kh&aacute;ng kh&aacute;ng sinh thấp v&agrave; c&oacute; t&aacute;c dụng hiệp đồng để điều trị.</p>\r\n\r\n<p><strong><em>Hội thảo cũng đề cập đến vấn đề dự ph&ograve;ng nhiễm H.Pylori.</em></strong></p>\r\n\r\n<p>Tỷ lệ cha mẹ c&oacute; Hp (+) khả năng con c&aacute;i của họ nhiễm Hp chiếm 40%, v&agrave; khả năng l&acirc;y sang giữa vợ chồng l&agrave; 68%. Trực khuẩn Hp l&acirc;y nhiễm theo đường ti&ecirc;u h&oacute;a v&igrave; vậy lời khuy&ecirc;n của c&aacute;c B&aacute;c sĩ l&agrave; trong gia đ&igrave;nh nếu Bố/ hoặc Mẹ bị nhiễm Hp th&igrave; con c&aacute;i v&agrave; vợ/chồng của người đ&oacute; n&ecirc;n đi kiểm tra xem m&igrave;nh c&oacute; bị nhiễm Hp hay kh&ocirc;ng.</p>\r\n\r\n<p>C&aacute;c B&aacute;c sĩ tham dự đ&atilde; đ&aacute;nh gi&aacute; rất cao những th&ocirc;ng tin cập nhật trong điều trị bệnh l&yacute; do nhiễm Hp g&acirc;y ra v&agrave; gi&uacute;p &iacute;ch nhiều cho c&aacute;c B&aacute;c sĩ trong c&ocirc;ng t&aacute;c thực h&agrave;nh l&acirc;m s&agrave;ng của m&igrave;nh</p>', '2017-06-09 21:38:41', '2017-06-15 17:19:54', 3, 2);

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
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(26, '1231', 23123, NULL, '123', '0000-00-00', '123', 0, '2017-06-01 00:09:42', '2017-06-01 00:09:42'),
(27, '', 0, NULL, '', '0000-00-00', 'dis mẹ chất đấy ae', 0, '2017-06-08 23:14:01', '2017-06-08 23:14:01'),
(28, 'Nguyễn Đình Giang', 26, NULL, '01649607996', '0000-00-00', 'TÔi bị ho dai dẳng', 0, '2017-06-09 00:30:09', '2017-06-09 00:30:09'),
(29, 'Nguyễn Đình GIang', 26, NULL, '01649607996', '0000-00-00', 'Bác sĩ ơi cho tôi hỏi tôi bị đau bụng thời gian dài cơn đau dai dẳng thì tôi bị bệnh gì ạ?', 1, '2017-06-13 19:43:40', '2017-06-13 19:46:29'),
(30, 'Nguyễn Đình Giang', 26, 'Hà Nội', '01649607996', '0000-00-00', 'Tôi cần khám khẩn cấp', 0, '2017-06-15 17:36:00', '2017-06-15 17:36:00'),
(31, 'Nguyễn Đình Giang', 26, 'Hà Nội', '01649607996', '0000-00-00', 'Cho tôi đặt hẹn', 0, '2017-06-15 18:01:55', '2017-06-15 18:01:55'),
(32, 'Nguyễn Đình Giang', 26, 'Hà Nội', '01649607996', '0000-00-00', 'Cho tôi đặt lịch hẹn', 0, '2017-06-15 18:03:22', '2017-06-15 18:03:22'),
(33, 'Hoàng Minh Trang', 24, 'Hà Nội', '01649607966', '2017-06-15', 'Tội mối khám', 0, '2017-06-15 18:09:11', '2017-06-15 18:09:11'),
(34, 'Hoàng Minh Trang', 24, 'Bắc Giang', '01649607996', '2017-06-15', 'Cho tôi muốn khám', 0, '2017-06-15 18:11:28', '2017-06-15 18:11:28'),
(35, 'Nguyễn Đình Giang', 21, 'Hà Nội', '01649708977', '2017-06-18', 'Tôi bị tắc mũi', 0, '2017-06-18 04:58:08', '2017-06-18 04:58:08'),
(36, 'Nguyen Dinh Giang', 26, 'Ha Noi', '016496079663', '2017-02-07', 'Toi cho haha', 0, '2017-06-20 19:02:35', '2017-06-20 19:02:35');

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
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`idslide`, `name`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', '197548c373a444da473366dec7be42692b568faa.jpg', '2017-06-03 00:17:39', '2017-06-12 18:25:55'),
(2, 'Slide 2', '4d47e7b3d5954e2aea6d78f825df03164bea6e72.jpg', '2017-06-12 18:26:14', '2017-06-12 18:26:14'),
(3, 'Slide 3', 'b126a1cb87d40da15672f69ce87128e02a961ad9.jpg', '2017-06-12 18:26:22', '2017-06-12 18:26:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `specialist`
--

CREATE TABLE `specialist` (
  `idspecialist` int(11) NOT NULL,
  `name` text,
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `specialist`
--

INSERT INTO `specialist` (`idspecialist`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Răng hàm mặt', '2017-05-23 01:17:12', '2017-05-23 01:17:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `idvideo` int(4) NOT NULL,
  `name` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_video_idcategory_video` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`idvideo`, `name`, `url`, `description`, `created_at`, `updated_at`, `category_video_idcategory_video`) VALUES
(1, 'Ed Sheeran - Shape Of You (cover by J.Fla)', 'https://www.youtube.com/watch?v=MhQKe-aERsU', 'Ed Sheeran - Shape Of You (cover by J.Fla)', '2017-06-10 14:21:05', '2017-06-13 19:16:49', 1),
(2, 'John Legend - All Of Me ( cover by J.Fla )', 'https://www.youtube.com/watch?v=WfgEGQ1l4W0', 'John Legend - All Of Me ( cover by J.Fla )', '2017-06-10 14:21:30', '2017-06-13 19:14:59', 1),
(4, 'Twenty One Pilots - Heathens ( cover by J.Fla )', 'https://www.youtube.com/watch?v=1Skla3BTrt8', 'Twenty One Pilots - Heathens ( cover by J.Fla )', '2017-06-13 19:23:48', '2017-06-13 19:23:48', 1),
(5, 'Twenty One Pilots - Heathens ( cover by J.Fla )', 'https://www.youtube.com/watch?v=R8YnpnL8nIM', 'Twenty One Pilots - Heathens ( cover by J.Fla )', '2017-06-13 19:24:00', '2017-06-13 19:24:00', 1),
(6, 'Twenty One Pilots - Heathens ( cover by J.Fla )', 'https://www.youtube.com/watch?v=VD1vuQJFvvY', 'Twenty One Pilots - Heathens ( cover by J.Fla )', '2017-06-13 19:24:11', '2017-06-13 19:24:11', 1),
(7, 'Ed Sheeran - Shape Of You (cover by J.Fla)', 'https://www.youtube.com/watch?v=MhQKe-aERsU', 'Ed Sheeran - Shape Of You (cover by J.Fla)', '2017-06-13 19:24:33', '2017-06-13 19:24:33', 1),
(8, 'Shape of you (Funny version) - Lynk Lee Cover [Bạn nhờ đặt tên con]', 'https://www.youtube.com/watch?v=KeveCS5hKuM', 'Shape of you (Funny version) - Lynk Lee Cover [Bạn nhờ đặt tên con]', '2017-06-13 19:24:49', '2017-06-13 19:24:49', 1),
(9, 'YÊU 5 - Rhymastic | Cover By Lynk Lee', 'https://www.youtube.com/watch?v=1_eDEaU_5mQ', 'YÊU 5 - Rhymastic | Cover By Lynk Lee', '2017-06-13 19:25:02', '2017-06-13 19:25:02', 1),
(10, 'Vietnam\'s Got Talent 2012 - Vòng Loại Sân Khấu - Tập 4 Tô Mạnh Linh', 'https://www.youtube.com/watch?v=16pAGaiadnM', 'Vietnam\'s Got Talent 2012 - Vòng Loại Sân Khấu - Tập 4 Tô Mạnh Linh', '2017-06-13 19:25:16', '2017-06-13 19:25:16', 1),
(11, 'Ở nhà quê mới lên (Lynk Lee version)', 'https://www.youtube.com/watch?v=WHqgBMAihmw', 'Ở nhà quê mới lên (Lynk Lee version)', '2017-06-13 19:25:28', '2017-06-13 19:25:28', 1);

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
-- Chỉ mục cho bảng `category_video`
--
ALTER TABLE `category_video`
  ADD PRIMARY KEY (`idcategory_video`);

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
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`idvideo`),
  ADD KEY `category_vide_idcategory_video` (`category_video_idcategory_video`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about_us`
--
ALTER TABLE `about_us`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
-- AUTO_INCREMENT cho bảng `category_video`
--
ALTER TABLE `category_video`
  MODIFY `idcategory_video` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `idgallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `schedule`
--
ALTER TABLE `schedule`
  MODIFY `idschedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `idslide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `specialist`
--
ALTER TABLE `specialist`
  MODIFY `idspecialist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `idvideo` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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

--
-- Các ràng buộc cho bảng `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`category_video_idcategory_video`) REFERENCES `category_video` (`idcategory_video`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
