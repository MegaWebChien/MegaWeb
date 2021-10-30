-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2021 lúc 11:24 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hihi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL,
  `idsp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `tensp`, `soluong`, `gia`, `phuongthucthanhtoan`, `id_hdct`, `idsp`) VALUES
(33, 'Samsung Note 20 Ultra', 1, 40000000, 1, 21, 92),
(34, 'Iphone 12', 1, 21000000, 1, 22, 90),
(35, 'Iphone 12', 1, 21000000, 1, 24, 90),
(35, 'Samsung Note 20 Ultra', 3, 40000000, 1, 23, 92),
(37, 'Iphone 12', 1, 21000000, 2, 26, 90),
(37, 'Samsung Zflip 3', 1, 38000000, 2, 27, 91),
(37, 'Iphone 13 Pro', 1, 33000000, 2, 28, 94),
(37, 'SamSung Galaxy A51s', 1, 8199999, 2, 29, 115);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(1, 'Điện thoại', 0),
(2, 'Phụ kiện', 0),
(3, 'Iphone', 1),
(4, 'SamSung', 1),
(5, 'Huawei', 1),
(7, 'Pin', 2),
(8, 'Bao da - Ốp lưng', 2),
(9, 'Tai nghe', 2),
(10, 'Thẻ nhớ', 2),
(14, 'Sạc', 2),
(15, 'Oppo', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`, `trangthai`) VALUES
(33, 7, 'thaivannam', 'fsdfs', 2147483647, 'thaivannamc4@gmail.com', '2021-10-29', 1),
(34, 12, 'Chau Ly', 'nha trang', 258113322, 'alycuaot@gmail.com', '2021-10-29', 1),
(35, 11, 'Phạm Huy', 'hang dong', 911495728, 'huypho@gmail.com', '2021-10-29', 1),
(37, 7, 'thaivannam', 'fsdfs', 2147483647, 'thaivannamc4@gmail.com', '2021-10-29', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(7, 'thaivannam', 'thaivannam', '9df451de9f876ca2ee0c79cace58f519', '0000-00-00', 'nam', 'thaivannamc4@gmail.com', 2147483647, 'fsdfs', '2021-10-02', 0),
(9, 'lexuandai', 'lexuandai', '85c3cedfe6200e2b4839a2a49b453e94', '0000-00-00', '', 'lexuandai@gmail.com', 1212121212, 'rew', '2021-10-02', 1),
(10, 'lexuandai', 'lexuandai', '85c3cedfe6200e2b4839a2a49b453e94', '0000-00-00', 'nam', 'huypho@gmail.com', 911495728, 'ds', '2021-10-02', 1),
(11, 'otxanhchimto2000', 'otxanhchimto2000', '8f9422c86fe6a5866b55d8d6ba4fb9f2', '2021-10-07', 'nu', 'huypho@gmail.com', 911495728, 'hang dong', '2021-10-29', 1),
(12, 'Chau Ly', 'alycuaot', '372bee3ac5d2c492a634b3bf1bb0c981', '2021-10-23', 'nu', 'alycuaot@gmail.com', 258113322, 'nha trang', '2021-10-29', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `mau` varchar(20) NOT NULL,
  `chitiet` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `madm` int(11) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `chitiet`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(1, 'Iphone 13 Pro Max', '20211001112351ip13promax.jpg', 'Gold', '<p>Chip Apple Bionic 13</p>\r\n', 10, 1, 35000000, 2, 'Cáp sạc', 3, '2021-10-01', 0),
(87, 'SamSung Note 10', '20211001112902samsungnote10.jpg', 'Blue Light', '', 5, 2, 17000000, 4, 'Tai nghe', 4, '2021-10-01', 0),
(90, 'Iphone 12', '20211001113305ip12.jpg', 'MidNight', '<p>IOS 14</p>\r\n', 20, 5, 21000000, 0, 'Cáp sạc', 3, '2021-10-01', 0),
(91, 'Samsung Zflip 3', '20211001113423samsungzflip3.png', 'Black white', '', 54, 3, 38000000, 0, 'Cáp sạc, dây sạc', 4, '2021-10-01', 0),
(92, 'Samsung Note 20 Ultra', '20211001113526samsungnote20ultra.jpg', 'Black', '', 13, 5, 40000000, 0, 'Cáp sạc, tai nghe', 4, '2021-10-01', 0),
(93, 'Iphone Xs Max', '20211001113618ipxsmax.jpg', 'Gold', '', 6, 0, 12000000, 0, 'Cáp sạc', 3, '2021-10-01', 0),
(94, 'Iphone 13 Pro', '20211001113701ip13pro.jpg', 'Blue', '', 39, 1, 33000000, 0, 'Cáp sạc', 3, '2021-10-01', 0),
(95, 'OppoA15s', '20211002045121oppoa15s.jpg', 'Blue', '', 23, 0, 6700000, 0, 'Kích thước: 6.52”（16,55cm） (đường chéo)\r\n\r\nTỉ lệ màn hình: 88,7%\r\n\r\nĐộ phân giải: 1600*720 HD+\r\n\r\nTốc độ làm mới: 60Hz\r\n\r\nTần suất lấy mẫu cảm ứng: 60Hz\r\n\r\nGam màu: TYPE 71% NTSC\r\n\r\nPPI: 269\r\n\r\nTỉ lệ tương phản: TYPE 1500:1\r\n\r\nĐộ sáng: TYPE 480nit\r\n\r\nMàn ', 15, '2021-10-02', 0),
(96, 'Huawei P30pro', '20211002045227huaweip30pro.jpg', 'Blue', '<p>K&iacute;ch thước: 6.52&rdquo;（16,55cm） (đường ch&eacute;o)</p>\r\n\r\n<p>Tỉ lệ m&agrave;n h&igrave;nh: 88,7%</p>\r\n\r\n<p>Độ ph&acirc;n giải: 1600*720 HD+</p>\r\n\r\n<p>Tốc độ l&agrave;m mới: 60Hz</p>\r\n\r\n<p>Tần suất lấy mẫu cảm ứng: 60Hz</p>\r\n\r\n<p>Gam m&agrave;u: TYPE 71% NTSC</p>\r\n\r\n<p>PPI: 269</p>\r\n\r\n<p>Tỉ lệ tương phản: TYPE 1500:1</p>\r\n\r\n<p>Độ s&aacute;ng: TYPE 480nit</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: LCD</p>\r\n', 12, 0, 8400000, 0, 'Cáp sạc, tai nghe', 5, '2021-10-02', 0),
(97, 'Huawei Y7', '20211002045413huaweiy7.jpg', 'Dark Blue', '<p>K&iacute;ch thước: 7.52&rdquo;（16,55cm） (đường ch&eacute;o)</p>\r\n\r\n<p>Tỉ lệ m&agrave;n h&igrave;nh: 90,7%</p>\r\n\r\n<p>Độ ph&acirc;n giải: 1700*720 HD+</p>\r\n\r\n<p>Tốc độ l&agrave;m mới: 100Hz</p>\r\n\r\n<p>Tần suất lấy mẫu cảm ứng: 60Hz</p>\r\n\r\n<p>Gam m&agrave;u: TYPE 71% NTSC</p>\r\n\r\n<p>PPI: 300</p>\r\n\r\n<p>Tỉ lệ tương phản: TYPE 1500:1</p>\r\n\r\n<p>Độ s&aacute;ng: TYPE 480nit</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: LCD</p>\r\n', 9, 0, 8100000, 0, 'Cáp sạc, tai nghe', 5, '2021-10-02', 0),
(98, 'Huawei Y9', '20211002045516huaweiy9.jpg', 'Blue', '<p>K&iacute;ch thước: 6.52&rdquo;（16,55cm） (đường ch&eacute;o)</p>\r\n\r\n<p>Tỉ lệ m&agrave;n h&igrave;nh: 88,7%</p>\r\n\r\n<p>Độ ph&acirc;n giải: 1600*720 HD+</p>\r\n\r\n<p>Tốc độ l&agrave;m mới: 60Hz</p>\r\n\r\n<p>Tần suất lấy mẫu cảm ứng: 60Hz</p>\r\n\r\n<p>Gam m&agrave;u: TYPE 71% NTSC</p>\r\n\r\n<p>PPI: 269</p>\r\n\r\n<p>Tỉ lệ tương phản: TYPE 1500:1</p>\r\n\r\n<p>Độ s&aacute;ng: TYPE 480nit</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: LCD</p>\r\n', 4, 0, 7200000, 0, 'Cáp sạc, tai người', 5, '2021-10-02', 0),
(99, 'Iphone 11 Pro', '20211002094904ip11pro.jpg', 'Gold', '<p>Apple A13&nbsp;</p>\r\n\r\n<p>Camera 12mps</p>\r\n', 8, 0, 15300000, 0, 'Cáp sạc, tai nghe', 3, '2021-10-02', 0),
(100, 'Huawei Mate40', '20211029041008HwMate40.jpg', 'Xeria Blue', '', 2, 0, 4500000, 2, '', 5, '2021-10-29', 0),
(101, 'Huawei Nova2i', '20211029040951HwNova2i.jpg', 'Dark Blue', '', 4, 0, 5400000, 0, '', 5, '2021-10-29', 0),
(102, 'Huawei Nova3i', '20211029040935HwNova3i.jpg', 'Galaxy', '', 8, 0, 6700000, 0, '', 5, '2021-10-29', 0),
(103, 'Huawei Nova7', '20211029040922HwNova7.jpg', 'White', '', 9, 0, 4999999, 0, '', 5, '2021-10-29', 0),
(104, 'Huawei P40', '20211029040908HwP40.jpg', 'Dark Green', '', 5, 0, 6100000, 0, '', 5, '2021-10-29', 0),
(105, 'Huawei Y5', '20211029040836HwY5.jpg', 'Gold', '', 8, 0, 3400000, 0, '', 5, '2021-10-29', 0),
(106, 'Huawei Y6p', '20211029040809HwY6p.jpg', 'Dark Green ', '', 4, 0, 6700000, 0, '', 5, '2021-10-29', 0),
(107, 'OppoA5s', '20211029040747OpA5s.jpg', 'Red', '', 21, 0, 7200000, 0, '', 15, '2021-10-29', 0),
(108, 'OppoA92', '20211029040732OpA92.jpg', 'Galaxy', '', 7, 0, 7200000, 0, '', 15, '2021-10-29', 0),
(109, 'Oppo Reno5', '20211029040716OpReno5.jpg', 'Pink White', '', 12, 0, 7777777, 0, '', 15, '2021-10-29', 0),
(110, 'Oppo Reno6', '20211029040705OpReno6.jpg', 'Blue White', '', 21, 0, 8100000, 0, '', 15, '2021-10-29', 0),
(111, 'SamSung Galaxy A6', '20211029042854SSGalaxyA6.jpg', 'Dark Blue', '', 6, 0, 3900000, 0, '', 4, '2021-10-29', 0),
(112, 'SamSung Galaxy A7', '20211029040636SSGalaxyA7.jpg', 'Green Blue', '', 8, 0, 4500000, 0, '', 4, '2021-10-29', 0),
(113, 'SamSung Galaxy A21s', '20211029040622SSGalaxyA21s.jpg', 'Dark Blue', '', 3, 0, 7200000, 0, '', 4, '2021-10-29', 0),
(114, 'SamSung Galaxy A32', '20211029040608SSGalaxyA32.jpg', 'Gray Pink', '<p>M&agrave;n h&igrave;nh 6.5&quot;, Chip Snapdragon 778G 5G 8 nh&acirc;n</p>\r\n\r\n<p>RAM 8 GB, ROM 256 GB</p>\r\n\r\n<p>Camera sau: Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 5 MP, 5 MP</p>\r\n\r\n<p>Camera trước: 32 MP</p>\r\n\r\n<p>Pin 4500 mAh, Sạc 25 W</p>\r\n', 9, 0, 6700000, 0, 'Dây sạc', 4, '2021-10-29', 0),
(115, 'SamSung Galaxy A51s', '20211029040556SSGalaxyA51s.jpg', '', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:Super AMOLED6.5&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:Android 10</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 5 MP, 5 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:32 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Snapdragon 765G</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM: 2 Nano SIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc: 4500 mAh</p>\r\n	</li>\r\n</ul>\r\n', 2, 1, 8199999, 0, 'Tai nghe', 4, '2021-10-29', 0),
(116, 'SamSung Galaxy Note 9', '20211029040539SSGalaxyNote9.jpg', 'Dark Blue', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:Super AMOLED6.4&quot;Quad HD+ (2K+)</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:8 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Exynos 9810</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:4000 mAh</p>\r\n	</li>\r\n</ul>\r\n', 5, 0, 12000000, 2, 'Cáp sạc, tai nghe', 4, '2021-10-29', 0),
(117, 'SamSung Galaxy S20', '20211029040525SSGalaxyS20.jpg', 'Pink', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:Dynamic AMOLED 2X6.2&quot;Quad HD+ (2K+)</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:Android 10</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:Ch&iacute;nh 12 MP &amp; Phụ 64 MP, 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Exynos 990</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:4000 mAh</p>\r\n	</li>\r\n</ul>\r\n', 7, 0, 8700000, 0, '', 4, '2021-10-29', 0),
(120, 'Iphone 8 Plus', '20211029040504ip8.jpg', 'While', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:LED-backlit IPS LCD5.5&quot;Retina HD</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:iOS 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:7 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Apple A11 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:3 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:64 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:1 Nano SIMHỗ trợ 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:2691 mAh</p>\r\n	</li>\r\n</ul>\r\n', 19, 0, 9200000, 0, 'Cáp sạc', 3, '2021-10-29', 0),
(121, 'Iphone 11 Pro', '20211029040449ip11pro.jpg', 'Black', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:OLED5.8&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:3 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Apple A13 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:4 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:1 Nano SIM &amp; 1 eSIMHỗ trợ 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:3046 mAh</p>\r\n	</li>\r\n</ul>\r\n', 20, 0, 15000000, 0, 'Cáp sạc', 3, '2021-10-29', 0),
(122, 'Iphone 12 mini', '20211029040400ip12mini.jpg', 'Green', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:OLED5.4&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Apple A14 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:4 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:64 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:2227 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 8, 0, 21000000, 2, 'Cáp sạc', 3, '2021-10-29', 0),
(123, 'Iphone 12 Pro', '20211029040344ip12pro.jpg', 'Black', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:OLED6.7&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:3 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Apple A14 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:6 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:3687 mAh20 W</p>\r\n	</li>\r\n</ul>\r\n', 2, 0, 23000000, 0, 'Cáp sạc', 3, '2021-10-29', 0),
(124, 'Iphone X', '20211029040329ipX.jpg', 'Black', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:OLED5.8&quot;Super Retina</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:iOS 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:7 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Apple A11 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:3 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:64 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:1 Nano SIM</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:2716 mAh</p>\r\n	</li>\r\n</ul>\r\n', 8, 0, 15000000, 0, '', 3, '2021-10-29', 0),
(125, 'Iphone XR', '20211029035957ipXR.jpg', 'Yellow', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:IPS LCD6.1&quot;Liquid Retina</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:7 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Apple A12 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:3 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ trong:128 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:1 Nano SIM &amp; 1 eSIMHỗ trợ 4G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, Sạc:2942 mAh15 W</p>\r\n	</li>\r\n</ul>\r\n', 13, 0, 13400000, 0, 'Cáp sạc', 3, '2021-10-29', 0),
(126, 'Iphone 8', '20211029035947ip8+.jpg', 'Black', '', 2, 0, 8100000, 0, '', 3, '2021-10-29', 0),
(127, 'Ốp lưng Iphone 7 Plus', '202110291704587+.jpg', 'Xeria Blue', '<p>Silicon</p>\r\n', 21, 0, 130000, 0, '', 8, '2021-10-29', 0),
(128, 'Ốp lưng Iphone 11 Promax', '2021102917054111pm.jpg', 'Black', '<p>Silicon</p>\r\n', 50, 0, 300000, 0, '', 8, '2021-10-29', 0),
(129, 'Ốp lưng Iphone 12 Mini', '2021102917070012mini.jpg', 'Green', '<p>Silicon</p>\r\n', 20, 0, 450000, 0, '', 8, '2021-10-29', 0),
(130, 'Ốp lưng Iphone 12 Promax', '2021102917074312promax.jpg', 'Dark Blue', '<p>Silicon</p>\r\n', 12, 0, 510000, 0, '', 8, '2021-10-29', 0),
(131, 'Thẻ nhớ 32GB', '2021102917081232g.jpg', '', '', 48, 0, 340000, 0, '', 10, '2021-10-29', 0),
(132, 'Thẻ nhớ 64GB', '2021102917084064gb.jpg', '', '', 25, 0, 1200000, 0, '', 10, '2021-10-29', 0),
(133, 'Pin Iphone 7 Plus', '20211029170916pin7+.png', '', '', 4, 0, 500000, 0, '', 7, '2021-10-29', 0),
(134, 'Pin Iphone 12', '20211029170944pin12.jpg', '', '', 10, 0, 1350000, 0, '', 7, '2021-10-29', 0),
(135, 'Pin Samsung', '20211029171024pinss.jpg', '', '', 8, 0, 900000, 0, '', 7, '2021-10-29', 0),
(136, 'Pin Oppo', '20211029171051oppo.jpg', '', '', 20, 0, 8100000, 0, '', 7, '2021-10-29', 0),
(137, 'Pin Huawei', '20211029171121hua.jpg', '', '', 6, 0, 780000, 0, '', 7, '2021-10-29', 0),
(138, 'Ốp lưng Iphone Xs Max', '20211029171158x.jpg', 'Green', '', 7, 0, 145000, 0, '', 8, '2021-10-29', 0),
(139, 'Dây sạc Iphone', '20211029171242dayip.jpg', '', '', 14, 0, 340000, 0, '', 14, '2021-10-29', 0),
(140, 'Dây sạc Type C', '20211029171302typec.jpg', '', '', 12, 0, 210000, 0, '', 14, '2021-10-29', 0),
(141, 'Củ sạc Iphone', '20211029171341cusacip.jpg', '', '', 27, 0, 1500000, 0, '', 14, '2021-10-29', 0),
(142, 'Củ sạc Iphone 20W', '20211029171444ip20w.jpg', '', '', 12, 0, 1200000, 0, '', 14, '2021-10-29', 0),
(143, 'Tai Nghe Iphone ', '20211029171517taingheip.jpg', '', '', 4, 0, 200000, 0, '', 9, '2021-10-29', 0),
(144, 'Airpod Pro', '20211029171543airpods-pro.jpg', '', '', 33, 0, 5200000, 0, '', 9, '2021-10-29', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahd`,`idsp`) USING BTREE,
  ADD KEY `mahd` (`mahd`),
  ADD KEY `id_hdct` (`id_hdct`),
  ADD KEY `idsp` (`idsp`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `idnd` (`idnd`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnd`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`),
  ADD KEY `madm` (`madm`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`idnd`) REFERENCES `nguoidung` (`idnd`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madm`) REFERENCES `danhmuc` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
