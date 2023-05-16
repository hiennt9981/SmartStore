-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 05:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdack`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Position` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Position`) VALUES
(1, 'Bánh\r\n', 1),
(2, 'Nước giải khát', 0),
(3, 'Sữa', 0),
(4, 'Kẹo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `GroupID` int(11) NOT NULL,
  `GroupName` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`GroupID`, `GroupName`) VALUES
(1, 'Admin - Quản lý'),
(2, 'NV Bán hàng'),
(3, 'Khách hàng'),
(5, 'NV Giao hàng');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `ManufacturerID` int(11) NOT NULL,
  `ManufacturerName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`ManufacturerID`, `ManufacturerName`) VALUES
(1, 'Nước đóng chai'),
(2, 'Nước đóng lon'),
(3, 'Sữa hộp'),
(4, 'Sữa thùng'),
(5, 'Kẹo '),
(6, 'Bánh');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderID`, `ProductID`, `Quantity`) VALUES
(1, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `namere` varchar(400) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `reDay` date DEFAULT NULL,
  `Sum` int(11) DEFAULT NULL,
  `Status` text NOT NULL DEFAULT 'Chưa xác nhận',
  `Mode` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `UserID`, `AddedDate`, `namere`, `Address`, `Phone`, `reDay`, `Sum`, `Status`, `Mode`) VALUES
(1, 40, '2021-12-15 22:48:03', 'trinh', '125 hjhj', '013121', '2021-12-15', 49000, 'Chưa xác nhận', 'cod');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ManufacturerID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ImageUrl` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `Description` varchar(1000) NOT NULL,
  `Body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ManufacturerID`, `CategoryID`, `ProductName`, `ImageUrl`, `Price`, `Quantity`, `Description`, `Body`) VALUES
(521, 6, 1, 'Bánh cupcake', '12661524845.jpg', 22000, 4, 'Cupcake cũng là một trong các loại bánh ngọt dễ làm, dễ ăn và cung cấp nhiều dinh dưỡng. Món bánh này có thể dùng ăn sáng, dùng trong các bữa tiệc sinh nhật hoặc là món bánh ăn vặt tuyệt hảo.', 'Đường, sữa,...'),
(522, 6, 1, 'Bánh dừa', '15657258966.jpg', 10000, 5, 'Nếu bạn thích một  món bánh vừa ngọt, vừa béo thì bánh dừa với nhân bánh beo béo, dai dai, kết hợp vỏ bánh phủ đầy lạc rang/vừng chính là món bánh ngon không thể bỏ qua. Món bánh có nguyên liệu đơn giản, dễ tìm và dễ làm tại nhà.', 'Đường, sữa, dừa....'),
(520, 6, 1, 'Bánh kem phô mai sầu riêng', '6874925523.jpg', 35000, 12, 'Bánh vừng cũng là một trong các loại bánh ngọt dễ làm không cần lò nướng với hương thơm vừng thoang thoảng, vị giòn xốp rất thích hợp làm món ăn vặt văn phòng hoặc nhâm nhi cùng trà chiều.', 'Đường, sữa, sầu riêng,...'),
(518, 6, 1, 'Bánh bông lan', '4386193101.jpg', 25000, 10, 'Bánh bông lan là một trong các loại bánh ngọt dễ làm mà bạn có thể tự tay vào bếp để chuẩn bị. Chiếc bánh xốp mềm mịn này không chỉ thơm ngon mà còn giàu dinh dưỡng, thích hợp để ăn sáng và ăn các bữa phụ trong ngày.', 'Đường, trứng, sữa...'),
(519, 6, 1, 'Bánh donut kem trứng', '4829624422.jpg', 30000, 12, 'Bạn có thích những chiếc bánh donut thơm phức mùi bơ sữa không? Đây cũng là món bánh ngọt cực hấp dẫn với lớp vỏ giòn tan phủ đường, lớp nhân kem béo ngậy bên trong. Fan bánh ngọt chắc hẳn  không thể kìm lòng với lớp ruột bánh dai dai nhai đến đâu “ghiền” đến đó.', 'Đường, trứng muối, sữa , phố mai...'),
(517, 5, 4, 'Socola đen TOBLERONE ', '1133968623742900032k7.jpg', 69000, 45, 'Socola đen TOBLERONE thanh 100g là sản phẩm kẹo socola nổi tiếng được nhập khẩu từ Thụy Sỹ với hình dáng lạ mắt. Hương vị kẹo socola TOBLERONE ngọt thanh với vị cacao khối đắng nhẹ nhàng hấp dẫn.', 'Cacao khối (46%), đường, chất béo sữa dạng khan, mật ong, hạnh nhân, bơ cacao (1.2%) chất nhũ hóa, lòng trắng trứng, chất chống oxy hóa.'),
(516, 5, 4, '5.	Kẹo dẻo cuộn vị cola Play More ', '1366097323946166558k5.jpg', 10000, 45, 'Từng viên kẹo dẻo mềm dai, thơm ngon, với khuôn hình cuộn dài có lớp giấy mỏng bọc quanh, vị cola chua ngọt hài hoà, kích thích vị giác. Kẹo dẻo cuộn vị cola Play More gói 21g thơm thơm, ăn có vị ngọt thanh, kẹo mềm lại dai vô cùng thích. Kẹo mềm Play More là thương hiệu của Thái Lan', 'Si rô glucose 36.20%, đường 32.70%, nước ép dâu cô đặc 20.00%, si rô bắp 6.00%, chất ôn định (TNS 440) 2.10%, chất điều chỉnh độ acid (INS 330) 1.80%, màu Ponceau 4R nhân tạo (INS 124), chất tạo gel ,q—N§ 406), chất điều chỉnh độ acid (INS 296, INS 331()), chất làm dầy (INS 415), hương cola tổng hợp 0.5%.'),
(515, 5, 4, '4.	Kẹo Ferrero Confetteria Raffaello ', '19724660981340801151k4.jpg', 190000, 25, 'Với lớp dừa khô được phủ bền ngoài, bên trong có một lớp kem cứng và kẹp giữa là một lớp vỏ giòn tan kết hợp với nhau thật đúng điệu. Kẹo Ferrero Confetteria Raffaello hộp 150g tiện lợi, được đóng gói từng viên riêng tiện lợi.  Kẹo Ferrero được sản xuất tại Ba Lan', 'Dừa khô 25.5%, chất béo thực vật, đường, hạt hạnh nhân nguyên hạt 8%, sữa bột gầy, whey bột, bột mì, tinh bột sắn, hương liệu tự nhiên và giống tự nhiên, chất nhũ hoá, chất tạo xốp'),
(514, 5, 4, 'Kẹo Snickers', '15579393141216857775k3.jpg', 19500, 66, 'Kẹo socola Snickers thanh 240g là sản phẩm kẹo của thương hiệu socola Snickers với vị socola sữa hòa quyện ngọt thơm. Sản phẩm socola được sản xuất từ ca caao kết hợp cùng bơ, sữa và các nguyên liệu chất lượng khác.', 'Sản phẩm chứa socola sữa (chứa 25% cacao rắn, 23% sữa đặc (5% chất béo sữa)), 27% caramen, 22% đậu phộng, 16% kẹo nougat. Socola sữa (đường, bơ cacao, ca cao khối, sữa bột tách kem, lactose, chất béo sữa, chất béo thực vật,...'),
(513, 5, 4, 'Kẹo socola Mars', '1394726318k1.jpg', 23000, 45, 'Kẹo socola có nhân caramel bên trong ăn rất ngon và ngọt cho những ai đam mê đồ ngọt. Kẹo socola caramel Mars® thanh 53g thơm ngon, vừa ăn vừa thưởng trà rất hợp lý và thư giãn. Kẹo socola Mars® chất lượng, hấp dẫn được sản xuất tại Úc', 'Sản phẩm chứa 40% socola sữa, 33% kẹo nougat và 27% caramel bao gồm đường, siro glucoso (được làm từ bột mì), bột sữa tách béo, bơ cacao, cacao khối, dầu thực vật, dầu hướng dương, lactose, chất béo sữa, mạch nha lúa mạch, chất béo thực vật (cọ và hạt mỡ), bột cacao, chất nhũ hoá (E322), muối, lòng trắng trứng, hương vani tự nhiên'),
(512, 3, 3, 'Sữa Vinamilk', '20529345431697530016s5.jpg', 8500, 75, 'Sữa Vinamilk nổi tiếng với tiêu chuẩn “3 không” nghiêm ngặt là:\r\nKhông sử dụng Hóc – môn tăng trưởng cho bò.\r\nKhông dư lượng thuốc kháng sinh và thuốc trừ sâu.\r\nCuối cùng là không sử dụng chất bảo quản.\r\n', 'Thành phần của sữa chủ yếu gồm: chất béo, chất đạm, hydrat carbon, vitamin A, D3,... Nhờ vậy, sữa còn tăng cường vitamin D3 theo khuyến nghị của EFSA châu Âu giúp hỗ trợ hệ miễn dịch, tăng cường khả năng hấp thụ canxi của cơ thể.'),
(511, 4, 3, 'Sữa bột nguyên kem Devondale', '10893836331404298271s4.jpg', 490000, 25, 'Hương vị của sữa bột nguyên kem Devondale cũng được đánh giá là thơm ngon. Hương vị béo ngậy nên rất dễ uống, dễ nghiền. Trong thành phần cũng không chứa chất bảo quản, an toàn với mọi lứa tuổi.', 'Sản phẩm sữa Devondale là loại bột sữa được cô đặc từ sữa tươi nguyên kem. Sữa có nguồn gốc từ Úc. Sản phẩm được sản xuất trên dây chuyền công nghệ hiện đại. Quá trình sản xuất được diễn ra nghiêm ngặt, đáp ứng tiêu chuẩn quốc tế. Ngoài ra, còn được làm từ 100% sữa tươi tự nhiên nên bạn có thể yên tâm về sự an toàn đối với sức khỏe.'),
(510, 3, 3, 'Sữa bột NuCalci', '5400341851902219307s3.jpg', 180000, 35, 'NuCalci là một loại sữa bột đến từ thương hiệu NutiFood. Phù hợp với độ tuổi từ 19 – 50. Sản phẩm được sản xuất với công thức tiên tiến chứa Nano Calcium kích thước siêu mịn. (gấp 100 lần canxi thông thường).', 'Loại sữa giàu canxi cho thanh niên này có chức năng tốt trong việc bổ sung thêm canxi giúp xương chắc khỏe từ bên trong. Đồng thời, trong thành phần sữa cũng có rất nhiều vitamin có lợi cho sức khỏe. Cụ thể là:\r\nVitamin A, D: giúp cơ thể hấp thụ canxi dễ dàng và hiệu quả.\r\nVitamin B: tăng cường hệ miễn dịch, tăng cảm giác ngon miệng và phòng chống bệnh tật.\r\nVà Vitamin E: làm chậm quá trình lão hóa da, giúp da trở nên trẻ trung, mềm mại.\r\n'),
(509, 3, 3, 'Sữa Milo', '3935023381811769146s2.jpg', 6500, 200, 'Milo là một loại sữa lúa mạch đến từ thương hiệu Nestle nổi tiếng. Hiện nay, loại sữa này rất được lứa tuổi trẻ em thanh niên yêu thích. Và là sự lựa chọn hàng đầu của các bậc phụ huynh để bổ sung canxi cho con em mình.', 'Sữa Milo chứa các thành phần như: Đường, sữa bột tách kem (skimmed milk powder), Protomalt® (chiết xuất từ mầm lúa mạch 1.4%), siro glucose, dầu bơ, dầu thực vật, bột cacao, bột whey, các khoáng chất (magie cacbonat, dicanxi photphat, sắt pyrophosphat), chất nhũ hóa lecithin 332(i) – chiết xuất từ đậu nành (soya lechithin), các vitamin (niacin, biotin, canxi pantothenat, vitamin B6, B1, B2), chất ổn định carrageenan 407, chất tạo ngọt tổng hợp (acessulfame potassium 950, sucralose 995) và hương vani tổng hợp.'),
(508, 3, 3, 'Sữa Anlene', '190461821675043137s1.jpg', 499000, 75, 'Là dòng sữa chuyên dành cho người lớn, người già và người cao tuổi để phòng ngừa bệnh loãng xương. Ngày nay, không chỉ những người lớn tuổi mà người thuộc tầm trung niên vẫn có thể sử dụng để giảm thiểu đến mức tối đa nguy cơ mắc bệnh khi về già.', 'Anlene được sản xuất bởi hãng Fonterra với những công dụng vượt trội đối với sức khỏe và có thể bổ sung canxi. Sản phẩm là thành quả sau 20 năm nghiên cứu với số tiền đầu tư lên đến 50 triệu NZD để tạo nên một loại sữa với công dụng đặc biệt dành riêng cho hệ xương.'),
(507, 2, 2, 'Coca Cola', '822170647coca.jpg', 10000, 254, 'Gía: 10.000\r\nTừ thương hiệu loại nước ngọt giải khát Coca Cola được nhiều người yêu thích với hương vị thơm ngon, sảng khoái. 6 lon nước ngọt Coca Cola lon 235ml với lượng gas lớn sẽ giúp bạn xua tan mọi cảm giác mệt mỏi, căng thẳng, đem lại cảm giác thoải mái sau khi hoạt động ngoài trời.\r\n', 'Nước, chất tạo màu...'),
(506, 2, 2, 'Sá xị', '1425034785saxi.jpg', 8000, 124, 'Sản phẩm nước ngọt truyền thống đặc trưng của nước ngọt Chương Dương mang hương vị độc đáo rất được ưa chuộng. 6 lon sá xị Chương Dương Sleek 330ml với hương nồng nàn tốt cho hệ tiêu hóa, tuần hoàn, làm ấm cơ thể...cung cấp năng lượng và khoáng chất dồi dào xua đi cơn khát, giảm căng thẳng', 'Nước, chất tạo màu...'),
(505, 2, 2, 'Redbul', '408525279redbull.jpg', 15000, 175, 'Nước tăng lực Redbull thành phần tự nhiên, mùi vị thơm ngon, sảng khoái. Nước tăng lực Redbull 250ml giúp cơ thể bù đắp nước, bổ sung năng lượng, vitamin và các khoáng chất, giúp xua tan cơn khát và cảm giác mệt mỏi. Nước tăng lực không có đường hóa học, không chứa hóa chất độc hại, đảm bảo an toàn', 'Nước, chất tạo màu...'),
(503, 1, 2, 'C2', '927595550c2.jpg', 6500, 200, 'Được chiết xuất từ những lá trà xanh tự nhiên từ vùng cao nguyên Việt Nam hòa quyện cùng hương chanh tươi mát cho bạn một thức uống giải khát tuyệt vời những ngày nóng bức. Trà xanh chứa hàm lượng chất chống oxy hóa cao, giúp bạn luôn giữ trạng thái năng động và hứng khởi.', 'Trà xanh , nước, chất gia vị...'),
(504, 2, 2, 'Sting', '459849462sting.jpg', 12000, 150, 'Sản phẩm nước tăng lực với mùi vị thơm ngon, sảng khoái, bổ sung hồng sâm chất lượng. Nước tăng lực Sting giúp cơ thể bù đắp nước, bổ sung năng lượng, vitamin C và E, giúp xua tan cơn khát và cảm giác mệt mỏi cùng dâu cho nhẹ nhàng và dễ chịu. Cam kết chính hãng, chất lượng và an toàn\r\n\r\n', 'Nước, tạo màu....');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `PassWord` varchar(32) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `GroupID`, `FullName`, `UserName`, `PassWord`, `Email`) VALUES
(39, 1, 'Vo Yen Nhi', 'vynhi', '202cb962ac59075b964b07152d234b70', 'voyennhi107@gmail.com'),
(38, 3, 'Anh', 'Anh1', 'fb62579e990da4e2a8f15c3d1e123438', 'abc@gmail.com'),
(37, 3, 'Anh', 'Anh', '250cf8b51c773f3f8dc8b4be867a9a02', 'abc'),
(40, 1, 'trinh', 'trinh', '2d969e2cee8cfa07ce7ca0bb13c7a36d', 'letrinh2203@gmail.com'),
(41, 2, 'huyen', 'huyen', 'd856125d827ac297307baf299a8ee1f1', 'huyen@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`GroupID`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`ManufacturerID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderID`,`ProductID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `GroupID` (`GroupID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
