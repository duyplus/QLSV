USE master
GO
CREATE DATABASE QLSV
GO
USE QLSV
GO
CREATE TABLE graduates(
	socmnd varchar(12) NOT NULL,
	matruong varchar(3) NOT NULL,
	manganh int NOT NULL,
	hetn nvarchar(255) NULL,
	ngaytn date NULL,
	loaitn nvarchar(255) NULL,
	PRIMARY KEY (socmnd,matruong, manganh)
);
GO
CREATE TABLE jobs(
	ngayvaocty date NOT NULL,
	socmnd varchar(12) NOT NULL,
	manganh int NOT NULL,
	tencv nvarchar(255) NULL,
	tencty nvarchar(255) NULL,
	diachicty nvarchar(255) NULL,
	tglamviec nvarchar(255) NULL,
	PRIMARY KEY (ngayvaocty, socmnd)
);
GO
CREATE TABLE majors(
	manganh int NOT NULL,
	tennganh nvarchar(255) NULL,
	loainganh nvarchar(255) NULL,
	PRIMARY KEY (manganh)
);
GO
CREATE TABLE schools(
	matruong varchar(3) NOT NULL,
	tentruong nvarchar(255) NULL,
	diachi nvarchar(255) NULL,
	sdt varchar(12) NULL,
	PRIMARY KEY (matruong)
);
GO
CREATE TABLE students(
	socmnd varchar(12) NOT NULL,
	hoten nvarchar(255) NULL,
	email varchar(255) NULL,
	sdt varchar(10) NULL,
	PRIMARY KEY (socmnd)
);
GO
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('012345678901', 'DDT', 1010, N'Marketing', CAST('2024-02-15' AS Date), N'Cử nhân')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('123456789012', 'FPT', 1001, N'Ứng Dụng Phần Mềm', CAST('2023-05-20' AS Date), N'Cao đẳng')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('234567890123', 'HIU', 1002, N'Quản Trị Kinh Doanh', CAST('2023-06-15' AS Date), N'Cử nhân')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('345678901234', 'DVH', 1003, N'Kế Toán', CAST('2023-07-10' AS Date), N'Tiến sĩ')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('456789012345', 'SPS', 1004, N'Điện Tử', CAST('2023-08-25' AS Date), N'Cử nhân')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('567890123456', 'LPH', 1005, N'Ngôn Ngữ Anh', CAST('2023-09-30' AS Date), N'Thạc sĩ')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('678901234567', 'KSA', 1006, N'Khoa Học Máy Tính', CAST('2023-10-15' AS Date), N'Cử nhân')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('789012345678', 'YDS', 1007, N'Du Lịch', CAST('2023-11-20' AS Date), N'Thạc sĩ')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('890123456789', 'TDT', 1008, N'Nhà Hàng - Khách Sạn', CAST('2023-12-05' AS Date), N'Cao đẳng')
INSERT graduates (socmnd, matruong, manganh, hetn, ngaytn, loaitn) VALUES ('901234567890', 'DTL', 1009, N'Ngân Hàng', CAST('2024-01-10' AS Date), N'Thạc sĩ')

INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-03-01' AS Date), '123456789012', 1001, N'Lập Trình Viên', N'Công Ty ABC', N'123 Đường ABC, Quận 1, TP Hồ Chí Minh', N'40 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-04-15' AS Date), '234567890123', 1002, N'Quản Lý Kinh Doanh', N'Công Ty XYZ', N'456 Đường XYZ, Quận 2, TP Hồ Chí Minh', N'35 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-05-20' AS Date), '345678901234', 1003, N'Kế Toán Viên', N'Công Ty LMN', N'789 Đường LMN, Quận 3, TP Hồ Chí Minh', N'38 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-06-25' AS Date), '456789012345', 1004, N'Kỹ Sư Điện Tử', N'Công Ty PQR', N'101 Đường PQR, Quận 4, TP Hồ Chí Minh', N'42 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-07-30' AS Date), '567890123456', 1005, N'Giáo Viên Tiếng Anh', N'Trường XYZ', N'202 Đường UVW, Quận 5, TP Hồ Chí Minh', N'30 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-08-05' AS Date), '678901234567', 1006, N'Lập Trình Viên', N'Công Ty DEF', N'303 Đường DEF, Quận 6, TP Hồ Chí Minh', N'40 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-09-10' AS Date), '789012345678', 1007, N'Hướng Dẫn Du Lịch', N'Công Ty GHI', N'404 Đường GHI, Quận 7, TP Hồ Chí Minh', N'35 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-10-15' AS Date), '890123456789', 1008, N'Quản Lý Nhà Hàng', N'Công Ty JKL', N'505 Đường JKL, Quận 8, TP Hồ Chí Minh', N'38 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-11-20' AS Date), '901234567890', 1009, N'Nhân Viên Ngân Hàng', N'Ngân Hàng MNO', N'606 Đường STU, Quận 9, TP Hồ Chí Minh', N'42 giờ/tuần')
INSERT jobs (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec) VALUES (CAST('2023-12-25' AS Date), '012345678901', 1010, N'Chuyên Viên Marketing', N'Công Ty KLM', N'707 Đường MNO, Quận 10, TP Hồ Chí Minh', N'30 giờ/tuần')

INSERT majors (manganh, tennganh, loainganh) VALUES (1001, N'Công Nghệ Thông Tin', 'UDPM')
INSERT majors (manganh, tennganh, loainganh) VALUES (1002, N'Quản Trị Kinh Doanh', 'QTKD')
INSERT majors (manganh, tennganh, loainganh) VALUES (1003, N'Kế Toán', 'KT')
INSERT majors (manganh, tennganh, loainganh) VALUES (1004, N'Điện Tử', 'DT')
INSERT majors (manganh, tennganh, loainganh) VALUES (1005, N'Ngôn Ngữ Anh', 'NNA')
INSERT majors (manganh, tennganh, loainganh) VALUES (1006, N'Khoa Học Máy Tính', 'KHMT')
INSERT majors (manganh, tennganh, loainganh) VALUES (1007, N'Du Lịch', 'DL')
INSERT majors (manganh, tennganh, loainganh) VALUES (1008, N'Nhà Hàng - Khách Sạn', 'NHKS')
INSERT majors (manganh, tennganh, loainganh) VALUES (1009, N'Ngân Hàng', 'NH')
INSERT majors (manganh, tennganh, loainganh) VALUES (1010, N'Marketing', 'MK')

INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'DDT', N'Đại học Duy Tân', N'268 Lý Thường Kiệt, Quận 10, Hồ Chí Minh', '02838626205')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'DTL', N'Đại học Thăng Long', N'91 Chùa Láng, Đống Đa, Hà Nội', '02438356809')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'DVH', N'Đại học Văn Hiến', N'1 Đại Cồ Việt, Hai Bà Trưng, Hà Nội', '02438692932')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'FPT', N'Đại học FPT', N'Km29 Nguyễn Trãi, Quận Thanh Xuân, Hà Nội', '02437547506')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'HIU', N'Đại học Hồng Bàng', N'227 Nguyễn Văn Cừ, Quận 5, Hồ Chí Minh', '02838350761')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'KSA', N'Đại học Kinh tế', N'59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Hồ Chí Minh', '02438682670')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'LPH', N'Đại học Luật', N'87 Nguyễn Chí Thanh, Láng Thượng, Đống Đa, Hà Nội', '02838293828')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'SPS', N'Đại học Sư phạm', N'136 Xuân Thủy, Cầu Giấy, Hà Nội', '02437548966')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'TDT', N'Đại học Tôn Đức Thắng', N'19 Nguyễn Hữu Thọ, Tân Hưng, Quận 7, Hồ Chí Minh', '02838640727')
INSERT schools (matruong, tentruong, diachi, sdt) VALUES (N'YDS', N'Đại học Y dược', N'217 Hồng Bàng, Phường 11, Quận 5, Hồ Chí Minh', '02438523803')

INSERT students (socmnd, hoten, email, sdt) VALUES ('012345678901', N'Hồ Thị Duyên', 'hothid@gmail.com', '0901234567')
INSERT students (socmnd, hoten, email, sdt) VALUES ('123456789012', N'Nguyễn Văn Anh', 'nguyenvana@gmail.com', '0912345678')
INSERT students (socmnd, hoten, email, sdt) VALUES ('234567890123', N'Trần Thị Bích', 'tranthib@gmail.com', '0987654321')
INSERT students (socmnd, hoten, email, sdt) VALUES ('345678901234', N'Lê Văn Cường', 'levanc@gmail.com', '0901234567')
INSERT students (socmnd, hoten, email, sdt) VALUES ('456789012345', N'Phạm Thị Dung', 'phamthid@gmail.com', '0978901234')
INSERT students (socmnd, hoten, email, sdt) VALUES ('567890123456', N'Hồ Văn Đạt', 'hovand@gmail.com', '0567890123')
INSERT students (socmnd, hoten, email, sdt) VALUES ('678901234567', N'Nguyễn Thị Phương', 'nguyenthip@gmail.com', '0890123456')
INSERT students (socmnd, hoten, email, sdt) VALUES ('789012345678', N'Trần Văn Giang', 'tranvang@gmail.com', '0345678901')
INSERT students (socmnd, hoten, email, sdt) VALUES ('890123456789', N'Lê Thị Hiền', 'lethih@gmail.com', '0678901234')
INSERT students (socmnd, hoten, email, sdt) VALUES ('901234567890', N'Phạm Văn Tuấn', 'phamvant@gmail.com', '0234567890')

ALTER TABLE graduates  WITH CHECK ADD  CONSTRAINT FK_graduates_majors FOREIGN KEY(manganh)
REFERENCES majors (manganh) ON DELETE CASCADE
GO
ALTER TABLE graduates CHECK CONSTRAINT FK_graduates_majors
GO
ALTER TABLE graduates  WITH CHECK ADD  CONSTRAINT FK_graduates_schools FOREIGN KEY(matruong)
REFERENCES schools (matruong) ON DELETE CASCADE
GO
ALTER TABLE graduates CHECK CONSTRAINT FK_graduates_schools
GO
ALTER TABLE graduates  WITH CHECK ADD  CONSTRAINT FK_graduates_students FOREIGN KEY(socmnd)
REFERENCES students (socmnd) ON DELETE CASCADE
GO
ALTER TABLE graduates CHECK CONSTRAINT FK_graduates_students
GO
ALTER TABLE jobs  WITH CHECK ADD  CONSTRAINT FK_jobs_majors FOREIGN KEY(manganh)
REFERENCES majors (manganh) ON DELETE CASCADE
GO
ALTER TABLE jobs CHECK CONSTRAINT FK_jobs_majors
GO
ALTER TABLE jobs  WITH CHECK ADD  CONSTRAINT FK_jobs_students FOREIGN KEY(socmnd)
REFERENCES students (socmnd) ON DELETE CASCADE
GO
ALTER TABLE jobs CHECK CONSTRAINT FK_jobs_students
GO
USE master
GO
ALTER DATABASE QLSV SET READ_WRITE 
GO