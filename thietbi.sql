-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 27, 2021 lúc 02:38 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(2000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 17, 2, 'Điện thoại ASUS Zenfone Max Plus M1 - ZB570TL', 27450000, 5),
(2, 18, 1, 'Điện thoại iPhone X 256GB', 104370000, 3),
(3, 18, 2, 'Điện thoại ASUS Zenfone Max Plus M1 - ZB570TL', 5490000, 1),
(4, 19, 42, 'Laptop HP Envy 13 ad158TU i5 8250U/4GB/128GB/Win10/(3MR80PA)', 19990000, 1),
(5, 19, 1, 'Điện thoại iPhone X 256GB', 34790000, 1),
(6, 21, 42, 'Laptop HP Envy 13 ad158TU i5 8250U/4GB/128GB/Win10/(3MR80PA)', 19990000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`) VALUES
(1, 'phat', '123123123', 'phat@gmail.com'),
(2, 'Anh', '89461652', 'quangvietntd@gmail.com'),
(3, 'Anh', '89461652', 'quangvietntd@gmail.com'),
(4, 'nhut', '89461652', 'quangvietntd@gmail.com'),
(5, 'nhưt', '0', 'nhut@gmail.com'),
(6, 'nhưt', '989223987', 'nhut@gmail.com'),
(7, 'nhut', '2147483647', 'quangvietntd@gmail.com'),
(8, 'nhut', '2147483647', 'quangvietntd@gmail.com'),
(9, 'nhut', '2147483647', 'quangvietntd@gmail.com'),
(10, 'nhut', '123', 'quangvietntd@gmail.com'),
(11, 'nhut', '2147483647', 'quangvietntd@gmail.com'),
(12, 'nhut', '123456789123', 'quangvietntd@gmail.com'),
(13, 'nhut', '0989223787', 'quangvietntd@gmail.com'),
(14, 'Anh', '123456', 'quangvietntd@gmail.com'),
(15, 'Việt Nam', '09895641', 'quangvietntd@gmail.com'),
(16, 'Anh tin', '4455761849', 'quangvietntd@gmail.com'),
(17, 'Anh tin', '09846', 'quangvietntd@gmail.com'),
(18, 'quang nhut', '08521470852', 'nhut@gmail.com'),
(19, 'Nguyen Quang Viet', '0984510852', 'quangvietntd@gmail.com'),
(20, 'Nguyen Quang Viet', '0984510852', 'quangvietntd@gmail.com'),
(21, 'Huy Lam', '0966110599', 'huylam9xxxhn@Gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Tiểu Thuyết Việt Nam', 'https://allaboutmiracle.com/wp-content/uploads/2019/07/tieu-thuyet-viet-nam.jpg'),
(2, 'Tiểu Thuyết Nước Ngoài', 'https://bloganchoi.com/wp-content/uploads/2019/08/5-tren-giay.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, 'Tắt Đèn', 41000, 'https://toplist.vn/images/800px/tat-den-ngo-tat-to-140151.jpg', 'Có thể nói Tắt đèn chính là tác phẩm thành công nhất của Ngô Tất Tố. Tác giả đã thành công trong việc xây dựng nhân vật chị Dậu – một con người tiêu biểu cho vẻ đẹp tâm hồn của người phụ nữ Việt Nam lúc bấy giờ. Vì gia đình, chị Dậu sẵn sàng hi sinh tất cả, dù biến cố cuộc đời luôn thường trực nhưng ý chí kiên cường, chị vẫn ngời sáng dưới sự áp bức của xã hội nửa thực dân nửa phong kiến.\r\n\r\nCuộc đời chị được Ngô Tất Tố khắc họa bằng những nét đau thương nhất, cùng cực nhất. Xuyên suốt toàn bộ tác phẩm, người đọc khó có thể tìm thấy chút tia sáng nào le lói trong cuộc đời chị, đến tận những trang cuối, cuộc đời chị vẫn chìm trong u tối. Có lẽ sẽ chẳng ai quên được cảnh chị bán đàn chó rồi phải rứt ruột bán cả đứa con mình đẻ ra chỉ vì cuộc sống quá túng quẫn. Tác giả đã lột tả được tất cả mọi điều bằng câu văn cảm động, nhưng không kém phần gai góc. Tác phẩm Tắt đèn đã biểu đạt được những ý nghĩa sâu xa của lịch sử, đồng thời nói lên tiếng nói đầy chất nhân văn.\r\n\r\nLink tham khảo tại: https://tiki.vn/danh-tac-viet-nam-tat-den-tai-ban-p7148815.html', 1),
(2, 'Số Đỏ', 55000, 'https://toplist.vn/images/800px/so-do-vu-trong-phung-140160.jpg', 'Vũ Trọng Phụng được mệnh danh là ông vua phóng sự đất Bắc Kì, nên những tác phẩm của ông đều phản ánh hiện thực hết sức sâu sắc. Nổi bật là tác phẩm Số đỏ. Từ một tên lang thang, ma cà bông như Xuân tóc đỏ, tóc của hắn vốn do mưa nắng mà thành màu như vậy ngẫu nhiên lại thành cái số mệnh hên, đỏ vô cùng cho hắn. Từ chuyện thành đốc tờ, tiến sĩ cho đến lấy được cô Tuyết tân thời, tố cáo vụ ngoại tình, hi sinh cho nước nhà và được nhận huân chương bắc đẩu bội tinh, anh hùng cứu quốc.\r\n\r\n\r\nTác phẩm vô cùng hài hước, giọng văn châm biếm nhẹ nhàng nhưng cũng rất sâu cay, tác giả phê phán lối sống, hành vi vô đạo đức lúc bấy giờ. Trải qua năm tháng, Số đỏ vẫn giữ được giá trị trong thời đại ngày nay, khi vấn đề về cách ứng xử, về đạo đức con người có dấu hiệu đi xuống.', 1),
(3, 'Gió Đầu Mùa', 40000, 'https://toplist.vn/images/800px/gio-dau-mua-thach-lam-140173.jpg', 'Người ta nói: “truyện của Thạch Lam là truyện mà không có truyện”… Những tác phẩm của Thạch Lam cứ nhẹ nhẹ bằng bằng, mọi thứ êm đềm trôi theo dòng thời gian và theo mạch cảm xúc của nhân vật, không hề gọi là “kịch tính” hay “cao trào”… Một thiên truyện trải ra như mặt nước mùa thu. Chỉ cần thả hồn vào các trang văn của ông thì bạn đọc sẽ cảm nhận được “mùi vị cuộc đời” man mác tản ra từng câu từng chữ…\r\n\r\n\r\n\r\nCái tài của Thạch Lam là thế, kể những câu chuyện thật bình thường, thật giản dị, để đôi khi vô tình người ta nhận ra hình ảnh cuộc sống quen thuộc quanh mình trong đó, để có thể lắng lòng mình trong một khoảnh khắc với cuộc đời. Gió đầu mùa là tuyển tập những truyện ngắn như thế của Thạch Lam. Những nhân vật chính trong tập truyện ngắn này có thể là một thanh niên tri thức đầy triển vọng nhưng cạn tình cạn nghĩa, mấy đứa bé dù sợ bị mẹ mắng nhưng vẫn chia sẻ cái dư thừa của mình cho người khác cần hơn… Thạch Lam luôn viết về các nhân vật của mình một cách trìu mến, thể hiện niềm thương xót của ông với cuộc đời đau khổ của họ, những người dưới tầng đáy xã hội, bị người đời khinh rẻ.', 1),
(4, 'Bước Đường Cùng', 50000, 'https://toplist.vn/images/800px/cac-tac-pham-truyen-ngan-nguyen-cong-hoan-140163.jpg', 'Bước đường cùng kể về cuộc đời đầy đau khổ dằng dặc của anh Pha trước Cách mạng tháng Tám. Hồi đó anh khỏe mạnh, trai tráng, có một vợ một con. Với tuổi tác, sức vóc cộng thêm tính cần cù, chăm chỉ thì đời sống gia đình anh cũng không đến nỗi lao đao, vất vả. Nhưng chế độ thực dân nửa phong kiến khiến không chỉ anh Pha mà hàng triệu nông dân như anh rơi vào bước đường cùng.\r\n\r\n\r\n\r\nTên địa chủ Nghị lại, do cướp bóc của dân mà giàu nứt đố đổ vách. Hắn cấu kết với quan trên để vơ vét, chiếm đoạt của cải. Pha dính vào vụ kiện với Trương Thi – người hàng xóm, để có tiền anh phải vay tiền Nghị lại. Tiền lãi ngày càng lớn, Pha đành phải bán ruộng và gánh hàng xén của vợ. Rồi nạn đói, mưa lũ úng thủy, dân trong vùng mắc dịch tả. Vợ con Pha cũng lần lượt chết vì bệnh dịch.\r\n\r\n\r\n\r\nNhưng Pha cho đó là do “phù phép”, thế là Pha bị mê tín và phải đóng thêm lệ làng. Cuối cùng vụ gặt đến, Pha trắng tay, Nghị lại gọi Pha đến đòi nợ. Cuối cùng Pha phải bỏ làng ra đi. Tác phẩm phản ánh chân thực sự bóc lột của địa chủ tàn nhẫn, những nỗi áp bức của quan lại tham nhũng, những cái bất công của chế độ thối nát chốn hương thôn, để đi đến bước đường cùng là phá sản.', 1),
(5, 'Tuổi Thơ Dữ Dội', 45000, 'https://toplist.vn/images/800px/tuoi-tho-du-doi-phung-quan-140166.jpg', 'Tuổi thơ dữ dội là tác phẩm văn học hay, phù hợp với tất cả mọi lứa tuổi, lấy đi không ít nước mắt bạn đọc. Đọc từng trang sách, ta cảm tưởng đang trở về với quá khứ xa xưa, dõi theo cuộc kháng chiến trường kì của dân tộc. Cậu chuyện của những cậu bé nhỏ tuổi dũng cảm tham gia cách mạng đã gieo vào lòng người mọi cung bậc cảm xúc: có căm ghét, có yêu thương, có niềm vui, nỗi buồn,… Càng đọc ta càng bị cuốn theo những bước chân của “Vê – cu – đê”, để cảm nhận được hết những khó khăn, gian khổ mà nhân dân ta đã phải trải qua dưới ách thống trị thực dân Pháp.\r\n\r\n\r\n\r\nTuy nhiên, dù viết về thời chiến tranh nhưng Tuổi thơ dữ dội không hề mang âm hưởng u ám, trầm buồn. Tác phẩm vẫn rất hồn nhiên, hài hước, tươi vui bởi cách viết mộc mạc, giản dị và giàu tính chân thực của Phùng Quán. Nếu bạn chưa đọc Tuổi thơ dữ dội, hãy thử một lần đọc, chắc chắn sẽ không làm bạn thất vọng, và hơn thế để biết quý trọng cuộc sống hòa bình ngày hôm nay.', 1),
(6, 'Nỗi Buồn Chiến Tranh', 55000, 'https://toplist.vn/images/800px/noi-buon-chien-tranh-bao-ninh-140175.jpg', 'Nỗi buồn chiến tranh là một tác phẩm dễ làm người đọc ám ảnh vì câu chữ sâu xa, đau đớn, tàn khốc của một đời chiến binh với từng đoạn hồi ức đứt đoạn bởi cảm xúc, bởi những đoạn đời ngắn ngủi mà cho dù cố ghép lại cũng không thể liền mạch. Kiên – người kể chuyện, trong mười năm chiến tranh và mười năm hòa bình với gia đình lạc loài không hoàn hảo.\r\n\r\n\r\n\r\nVới tình yêu mãnh liệt, điên cuồng, với hiện thực chẳng thanh cao mà chỉ nhuốm đầy ti tiện của con người. Trong thế giới ấy, Kiên sống mà như đang mộng, mộng trên chiến trường đầy máu, mộng trong cuộc đời liều lĩnh và theo đuổi sự tự do vĩnh cửu. Trang sách khép lại, khó có ai còn thấy bình thường sau những gì đã đọc. Hoang mang, tiếc nuối, tuyệt vọng… với những câu hỏi về đời, về người, về lý tưởng sống mà có lẽ vĩnh viễn, dù con người có cố công tìm kiếm bằng cách nào cũng không ra lời đáp.', 1),
(7, 'Những Ngày Thơ Ấu', 60000, 'https://toplist.vn/images/800px/nhung-ngay-tho-au-nguyen-hong-140176.jpg', 'Những ngày thơ ấu – đó là một tuổi thơ đẹp nhưng không khó tìm những tủi nhục, đau thương trong những kí ức ấy. Bằng ngôn từ trau chuốt nhưng cũng rất giản dị và đời thường, Nguyên Hồng đã lột tả được một cách sâu sắc nhất những suy nghĩ của nhân vật, những giằng xé, cao trào nội tâm của nhân vật Hồng.\r\n\r\n\r\n\r\nTác giả đã cho người xem cảm nhận được những khó khăn, những ngây ngô, những cái người lớn, những sự đối lập, những tâm lý của nhân vật một cách sống động. Đồng thời cũng kịch liệt lên án, phê phán những cổ tục đã hành hạ mẹ mình và phải cách xa mẹ một thời gian. Tác giả phân biệt rất rõ rệt và cảm thông cho bà và cô của nhân vật Hồng, bà và cô của ông không có tội. Có chăng là họ đã bị cái thối nát của những cổ tục kia làm nhàu nát lương tâm vốn hiền lành của họ. Lời kết, tuổi thơ của tác giả đã có thể không đẹp, không đầy sắc màu đến thế nếu như sâu bên trong tác giả không có sẵn niềm tự hào, niềm yêu thương vô bờ bến với quá khứ.', 1),
(8, 'Vang Bóng Một Thời', 50000, 'https://toplist.vn/images/800px/vang-bong-mot-thoi-nguyen-tuan-140178.jpg', 'Vang bóng một thời được xem như là một tác phẩm gần như hướng đến sự toàn thiện toàn mỹ, làm người đọc cảm nhận được nếp sống cũ, những thứ nghệ thuật cổ thanh cao của một nền văn minh xưa cũ và có chút tiếc nuối cho những cái đẹp. “Đẹp” từ việc đo đếm được sức đi của “bút chì” của ông Lý Văn trong truyện “Ném bút chì”, với sức ngang tàng của cái “bút chì” ấy có thể lụy cả một cành tre đẩy cho đến cái nghệ thuật cầu kì trong việc lồng ghép cả một tích truyện vào trong chiếc đèn xẻ rãnh của ông Cử Hai làm cho cậu con Ngộ Lang.\r\n\r\n\r\n\r\nNhững cái nghệ thuật cầu kì phức tạp nhưng đầy ý nghĩa đó chẳng thể nào bắt gặp được ở giữa xã hội hiện đại bây giờ. Bạn đọc sẽ thấy được sự tôn vinh cái đẹp của Nguyễn Tuân với một giọng văn đôn hậu xen lẫn chút ngậm ngùi. Những người nghệ sĩ trong từng câu chuyện của ông đơn giản chỉ là tập trung hết sức trong chính cái công việc mà mình đã chọn, dưới ngòi bút tài hoa của Nguyễn Tuân hiện lên dưới cái ánh sáng mờ ảo, nhàn nhạt.', 1),
(43, '5cm/s', 45000, 'https://sach86.com/wp-content/uploads/2019/05/5-cm-tren-giay.jpg', '5 cm/s không chỉ là vận tốc của những cánh anh đào rơi, mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, đánh mất bao cảm xúc thiết tha nhất của tình yêu.  Bằng giọng văn tinh tế, truyền cảm, 5 centimet trên giây mang đến những khắc họa mới về tâm hồn và khả năng tồn tại của cảm xúc, bắt đầu từ tình yêu trong sáng, ngọt ngào của một cô bé và cậu bé. Ba giai đoạn, ba mảnh ghép, ba ngôi kể chuyện khác nhau nhưng đều xoay quanh nhân vật nam chính, người luôn bị ám ảnh bởi kí ức và những điều đã qua…  Khác với những câu chuyện cuốn bạn chạy một mạch, truyện này khó mà đọc nhanh. Ngón tay bạn hẳn sẽ ngừng lại cả trăm lần trên mỗi trang sách. Chỉ vì một cử động rất khẽ, một câu thoại, hay một xúc cảm bất chợt có thể sẽ đánh thức những điều tưởng chừng đã ngủ quên trong tiềm thức, như ngọn đèn vừa được bật sáng trong tâm trí bạn. Và rồi có lúc nó vượt quá giới hạn chịu đựng, bạn quyết định gấp cuốn sách lại chỉ để tận hưởng chút ánh sáng từ ngọn đèn, hay đơn giản là để vết thương trong lòng mình có thời gian tự tìm xoa dịu.', 2),
(44, 'Hyouka', 50000, 'https://vietotaku.com/anh/hyouka-1-0.jpg', 'Xám xịt – có lẽ là từ ngắn gọn thích hợp nhất để miêu tả Oreki Houtarou, một nam sinh cấp 3 trung thành với chủ nghĩa “tiết kiệm năng lượng” của mình. Nghĩa là, cậu luôn cố né tránh tất cả những công việc mà cậu xem là năng nhọc hay không quá cần thiết, và gia nhập một CLB ở “Thánh địa của hoạt động ngoại khoá Cao trung Kamiyama” là một việc như vậy. Houtarou đã luôn tận hưởng cuộc sống chậm chạp nhẹ nhàng của mình cho đến khi một lá thư mang theo một đề nghị kì lạ từ Benares được gửi tới. Thế là cậu đã đến phòng họp của CLB Cổ Điển hiện-tại-không-có-thành-viên, đứng trước một cánh cửa bị khoá…', 2),
(45, 'Plastic Memories', 75000, 'https://i.pinimg.com/474x/fa/5b/7f/fa5b7fda83e7834965a977015736eeaf.jpg', 'Câu truyện của Plastic Memories diễn ra ở một thành phố trong tương lai gần, nơi mà con người chung sống cùng những android không chỉ có ngoại hình giống mà còn có cả cảm xúc lẫn kí ức giống như con người. Tập đoàn SAI, một công ti đi đầu trong lĩnh vực sản xuất android, đã giới thiệu Giftia, một mẫu android cao cấp hầu như giống con người về mọi mặt. Vòng đời của một Giftia là 81 920 giờ (khoảng 9 năm 4 tháng), và nếu vượt quá thời hạn sử dụng sẽ dẫn tới sự phân rã nhân cách, mất trí nhớ và phát sinh bạo lực. Và kết quả là Dịch vụ hậu kì ra đời với nhiệm vụ thu hồi những Giftia sắp kết thúc vòng đời từ những người chủ của họ và xóa kí ức của các Giftia. Để thực hiện công việc này, nhân viên của Dịch vụ hậu kì phải làm việc theo một nhóm gồm một con người (được gọi là \"spotter\") và một Giftia (được gọi là \"marksman\"). Câu truyện xoay quanh Mizugaki Tsukasa và cộng sự của anh, Isla, một Giftia đang gần đến hết vòng đời.', 2),
(46, 'Cuộc chiến siêu nhiên giữa đời thường Tập 1', 100000, 'https://sakurabooks.vn/images/pro/cuoc-chien-sieu-nhien-giua-doi-thuong-tap-1-1_115.jpg', 'Những thành viên trong câu lạc bộ văn học bỗng nhiên được thức tỉnh siêu năng lực!    Họ sẽ cùng nhau chiến đấu chống lại các thế lực hắc ám để bảo vệ thế giới, vượt qua nhiều trận chiến sinh tử khốc liệt, đánh tan mọi âm mưu đen tối, đấu tranh với nhiều kẻ địch nguy hiểm?    Không hề có chuyện đó!    Cuộc sống của họ vẫn diễn ra bình thường như tất cả những học sinh khác ở khắp mọi nơi trên thế giới.    Siêu năng lực được sử dụng trong những công việc đời thường nhất, chỉ để thỏa mãn chứng Chuuni của nhân vật chính? Liệu đằng sau đó có còn ẩn chứa điều gì khác?    Cuộc sống thường ngày vốn cũng luôn tồn tại những “cuộc chiến” nho nhỏ cần vượt qua!', 2),
(47, 'Cuộc chiến siêu nhiên giữa đời thường Tập 2', 100000, 'https://salt.tikicdn.com/media/catalog/product/c/u/cuocchiensieunhiengiuadoithuong-t2-chinhsua.u5131.d20170403.t104430.705581.jpg', 'Những thành viên trong câu lạc bộ văn học bỗng nhiên được thức tỉnh siêu năng lực!    Họ sẽ cùng nhau chiến đấu chống lại các thế lực hắc ám để bảo vệ thế giới, vượt qua nhiều trận chiến sinh tử khốc liệt, đánh tan mọi âm mưu đen tối, đấu tranh với nhiều kẻ địch nguy hiểm?    Không hề có chuyện đó!    Cuộc sống của họ vẫn diễn ra bình thường như tất cả những học sinh khác ở khắp mọi nơi trên thế giới.    Siêu năng lực được sử dụng trong những công việc đời thường nhất, chỉ để thỏa mãn chứng Chuuni của nhân vật chính? Liệu đằng sau đó có còn ẩn chứa điều gì khác?    Cuộc sống thường ngày vốn cũng luôn tồn tại những “cuộc chiến” nho nhỏ cần vượt qua!', 2),
(48, 'Cuộc chiến siêu nhiên giữa đời thường Tập 3', 100000, 'https://sakurabooks.vn/images/pro/cuoc-chien-sieu-nhien-giua-doi-thuong-tap-3-1_101.jpg', 'Những thành viên trong câu lạc bộ văn học bỗng nhiên được thức tỉnh siêu năng lực!    Họ sẽ cùng nhau chiến đấu chống lại các thế lực hắc ám để bảo vệ thế giới, vượt qua nhiều trận chiến sinh tử khốc liệt, đánh tan mọi âm mưu đen tối, đấu tranh với nhiều kẻ địch nguy hiểm?    Không hề có chuyện đó!    Cuộc sống của họ vẫn diễn ra bình thường như tất cả những học sinh khác ở khắp mọi nơi trên thế giới.    Siêu năng lực được sử dụng trong những công việc đời thường nhất, chỉ để thỏa mãn chứng Chuuni của nhân vật chính? Liệu đằng sau đó có còn ẩn chứa điều gì khác?    Cuộc sống thường ngày vốn cũng luôn tồn tại những “cuộc chiến” nho nhỏ cần vượt qua!', 2),
(49, 'Cuộc chiến siêu nhiên giữa đời thường Tập 4', 100000, 'https://sakurabooks.vn/images/pro/cuoc-chien-sieu-nhien-giua-doi-thuong-tap-4-1_100.jpg', 'Những thành viên trong câu lạc bộ văn học bỗng nhiên được thức tỉnh siêu năng lực!    Họ sẽ cùng nhau chiến đấu chống lại các thế lực hắc ám để bảo vệ thế giới, vượt qua nhiều trận chiến sinh tử khốc liệt, đánh tan mọi âm mưu đen tối, đấu tranh với nhiều kẻ địch nguy hiểm?    Không hề có chuyện đó!    Cuộc sống của họ vẫn diễn ra bình thường như tất cả những học sinh khác ở khắp mọi nơi trên thế giới.    Siêu năng lực được sử dụng trong những công việc đời thường nhất, chỉ để thỏa mãn chứng Chuuni của nhân vật chính? Liệu đằng sau đó có còn ẩn chứa điều gì khác?    Cuộc sống thường ngày vốn cũng luôn tồn tại những “cuộc chiến” nho nhỏ cần vượt qua!', 2),
(50, 'Cuộc chiến siêu nhiên giữa đời thường Tập 5', 100000, 'https://salt.tikicdn.com/media/catalog/product/c/u/cuocchiensieunhiengiuadoithuong-t5-01.u5430.d20171030.t164446.532600.jpg', 'Những thành viên trong câu lạc bộ văn học bỗng nhiên được thức tỉnh siêu năng lực!    Họ sẽ cùng nhau chiến đấu chống lại các thế lực hắc ám để bảo vệ thế giới, vượt qua nhiều trận chiến sinh tử khốc liệt, đánh tan mọi âm mưu đen tối, đấu tranh với nhiều kẻ địch nguy hiểm?    Không hề có chuyện đó!    Cuộc sống của họ vẫn diễn ra bình thường như tất cả những học sinh khác ở khắp mọi nơi trên thế giới.    Siêu năng lực được sử dụng trong những công việc đời thường nhất, chỉ để thỏa mãn chứng Chuuni của nhân vật chính? Liệu đằng sau đó có còn ẩn chứa điều gì khác?    Cuộc sống thường ngày vốn cũng luôn tồn tại những “cuộc chiến” nho nhỏ cần vượt qua!', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
