﻿create database QLKS
go

use QLKS
go
create table LoaiPhong (MaLoai varchar(10) primary key, TenLoai nvarchar(30), GhiChu nvarchar(250), DuongDanAnh varchar(50))
go
create table Phong (MaPhong varchar(10) primary key, TenPhong varchar(10), MaLoai varchar(10) references LoaiPhong(MaLoai), DienTich int, GiaThue int)
go
create table TaiKhoan (TenTaiKhoan varchar(20) primary key, MatKhau varchar(20), HoTen nvarchar(30), SoDienThoai varchar(20), Email varchar(35), LaAdmin bit not null)
go
create table DatPhong (MaDatPhong int primary key, TenTaiKhoan varchar(20) references TaiKhoan(TenTaiKhoan), MaPhong varchar(10) references Phong(MaPhong), NgayDat date, NgayDen date, NgayTra date, DichVu nvarchar(100), ThanhTien int)
go
create table DichVu (MaDichVu varchar(10) primary key, TenDichVu nvarchar(20), GiaDichVu int)
go

insert into LoaiPhong values ('LP01', N'Phòng Tiêu Chuẩn', N'Đây là loại phòng có thiết kế đơn giản, có diện tích nhỏ, nằm ở các tầng thấp và không có tầm nhìn đẹp. Trong phòng được trang bị những thiết bị tối thiểu, đây là loại phòng có mức giá thấp nhất trong khách sạn.', '/Content/images/PhongTieuChuan.png')
insert into LoaiPhong values ('LP02', N'Phòng Hạng Trung', N'Là loại phòng được thiết kế với diện tích tầm trung, được trang bị đầy đủ trang thiết bị tiện nghi hiện đại và sở hữu tầm nhìn đẹp.', '/Content/images/PhongHangTrung.png')
insert into LoaiPhong values ('LP03', N'Phòng Cao Cấp', N'Là loại phòng cao cấp của khách sạn, nằm ở các tầng cao của khách sạn, diện tích rộng, hướng nhìn đẹp và xa, đồng thời, các trang thiết bị, đồ nội thất cũng cao cấp.', '/Content/images/PhongCaoCap.png')
insert into LoaiPhong values ('LP04', N'Phòng VIP', N'Là loại phòng nghỉ cao cấp nhất của một khách sạn. Nằm ở tầng cao nhất của khách sạn, được trang bị những đồ dùng cao cấp nhất, những thiết bị buồng phòng tiện nghi, đẳng cấp nhất và cả các dịch vụ đặc biệt kèm theo.', '/Content/images/PhongVip.png')
insert into LoaiPhong values ('LP05', N'Phòng Liên Kết', N'Hai phòng cạnh nhau có cửa thông với nhau. Loại phòng này thường dành cho những khách hàng đi theo gia đình hay nhóm.', '/Content/images/PhongLienKet.png')

insert into Phong values ('MP01', '01001', 'LP01', 18, 200000)
insert into Phong values ('MP02', '02002', 'LP02', 22, 240000)
insert into Phong values ('MP03', '03003', 'LP03', 30, 340000)
insert into Phong values ('MP04', '04004', 'LP04', 50, 600000)
insert into Phong values ('MP05', '05001', 'LP05', 30, 350000)
insert into Phong values ('MP06', '01002', 'LP01', 25, 270000)
insert into Phong values ('MP07', '02003', 'LP02', 26, 280000)
insert into Phong values ('MP08', '02004', 'LP02', 27, 290000)
insert into Phong values ('MP09', '03001', 'LP03', 32, 350000)
insert into Phong values ('MP10', '03002', 'LP03', 33, 370000)
insert into Phong values ('MP11', '01003', 'LP01', 24, 290000)
insert into Phong values ('MP12', '03004', 'LP03', 35, 410000)
insert into Phong values ('MP13', '04001', 'LP05', 40, 420000)
insert into Phong values ('MP14', '04002', 'LP05', 42, 440000)
insert into Phong values ('MP15', '04003', 'LP05', 44, 460000)
insert into Phong values ('MP16', '01004', 'LP01', 22, 240000)
insert into Phong values ('MP17', '02001', 'LP02', 30, 400000)
insert into Phong values ('MP18', '05002', 'LP04', 70, 700000)
insert into Phong values ('MP19', '01005', 'LP01', 22, 220000)
insert into Phong values ('MP20', '01006', 'LP01', 20, 210000)

insert into DichVu values ('DV01', N'Ăn Sáng', 50000)
insert into DichVu values ('DV02', N'Ăn Trưa', 100000)
insert into DichVu values ('DV03', N'Ăn Tối', 100000)

insert into TaiKhoan values ('NguyenKhanh', '1234', N'Nguyễn Khánh', '0328758787', 'wh.knightz@gmail.com', 1)
insert into TaiKhoan values ('linh', '1234', N'Nguyễn Thị Ngọc Linh', '0969930060', 'linh@gmail.com', 1)
insert into TaiKhoan values ('nhung', '1234', N'Trương Thị Hồng Nhung', '0366918587', 'Nhung@gmail.com', 1)
insert into TaiKhoan values ('phong', '1234', N'Lê Quốc Phong', '0347548613', 'davatha@gmail.com', 1)