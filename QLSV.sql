USE master
GO
CREATE DATABASE QLSV
GO
USE QLSV
GO
CREATE TABLE SinhVien (
    socmnd VARCHAR(12) PRIMARY KEY,
    hoten NVARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    sdt INT
);
CREATE TABLE Truong (
    matruong INT PRIMARY KEY,
    tentruong NVARCHAR(255) NOT NULL,
    diachi NVARCHAR(255),
    sdt INT
);
CREATE TABLE Nganh (
    manganh INT PRIMARY KEY,
    tennganh NVARCHAR(255) NOT NULL,
    loainganh NVARCHAR(50)
);
CREATE TABLE TotNghiep (
    socmnd VARCHAR(12),
    matruong INT,
    manganh INT,
    hetn VARCHAR(255) NOT NULL,
    ngaytn DATE,
    loaitn NVARCHAR(50),
    PRIMARY KEY (socmnd, matruong, manganh),
    FOREIGN KEY (socmnd) REFERENCES SinhVien(socmnd),
    FOREIGN KEY (matruong) REFERENCES Truong(matruong),
    FOREIGN KEY (manganh) REFERENCES Nganh(manganh)
);
CREATE TABLE CongViec (
    ngayvaocty DATE,
    socmnd VARCHAR(12),
    manganh INT,
    tencv NVARCHAR(255) NOT NULL,
    tencty NVARCHAR(255) NOT NULL,
    diachicty NVARCHAR(255),
    tglamviec NVARCHAR(255),
    PRIMARY KEY (ngayvaocty, socmnd),
    FOREIGN KEY (socmnd) REFERENCES SinhVien(socmnd),
    FOREIGN KEY (manganh) REFERENCES Nganh(manganh)
);
GO
INSERT INTO SinhVien (socmnd, hoten, email, sdt)
VALUES
    ('123456789012', 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0912345678'),
    ('234567890123', 'Trần Thị B', 'tranthib@gmail.com', '0987654321'),
    ('345678901234', 'Lê Văn C', 'levanc@gmail.com', '0901234567'),
    ('456789012345', 'Phạm Thị D', 'phamthid@gmail.com', '0978901234'),
    ('567890123456', 'Hồ Văn E', 'hovane@gmail.com', '0567890123'),
    ('678901234567', 'Nguyễn Thị F', 'nguyenthif@gmail.com', '0890123456'),
    ('789012345678', 'Trần Văn G', 'tranvang@gmail.com', '0345678901'),
    ('890123456789', 'Lê Thị H', 'lethih@gmail.com', '0678901234'),
    ('901234567890', 'Phạm Văn I', 'phamvani@gmail.com', '0234567890'),
    ('012345678901', 'Hồ Thị K', 'hothik@gmail.com', '0901234567');

INSERT INTO Truong (matruong, tentruong, diachi, sdt)
VALUES
    (1, 'Trường A', '123 Đường ABC, Quận 1, TP Hồ Chí Minh', '0912345678'),
    (2, 'Trường B', '456 Đường XYZ, Quận 2, TP Hồ Chí Minh', '0987654321'),
    (3, 'Trường C', '789 Đường LMN, Quận 3, TP Hồ Chí Minh', '0901234567'),
    (4, 'Trường D', '101 Đường PQR, Quận 4, TP Hồ Chí Minh', '0978901234'),
    (5, 'Trường E', '202 Đường UVW, Quận 5, TP Hồ Chí Minh', '0567890123'),
    (6, 'Trường F', '303 Đường DEF, Quận 6, TP Hồ Chí Minh', '0890123456'),
    (7, 'Trường G', '404 Đường GHI, Quận 7, TP Hồ Chí Minh', '0345678901'),
    (8, 'Trường H', '505 Đường JKL, Quận 8, TP Hồ Chí Minh', '0678901234'),
    (9, 'Trường I', '606 Đường STU, Quận 9, TP Hồ Chí Minh', '0234567890'),
    (10, 'Trường K', '707 Đường MNO, Quận 10, TP Hồ Chí Minh', '0901234567');

INSERT INTO Nganh (manganh, tennganh, loainganh)
VALUES
    (1, 'Công Nghệ Thông Tin', 'UDPM'),
    (2, 'Quản Trị Kinh Doanh', 'QTKD'),
    (3, 'Kế Toán', 'KT'),
    (4, 'Điện Tử', 'DT'),
    (5, 'Ngôn Ngữ Anh', 'NNA'),
    (6, 'Khoa Học Máy Tính', 'KHMT'),
    (7, 'Du Lịch', 'DL'),
    (8, 'Nhà Hàng - Khách Sạn', 'NHKS'),
    (9, 'Ngân Hàng', 'NH'),
    (10, 'Marketing', 'MK');

INSERT INTO TotNghiep (socmnd, matruong, manganh, hetn, ngaytn, loaitn)
VALUES
    ('123456789012', 1, 1, 'Ứng Dụng Phần Mềm', '2023-05-20', 'Tốt Nghiệp Chuyên Ngành'),
    ('234567890123', 2, 2, 'Quản Trị Kinh Doanh', '2023-06-15', 'Tốt Nghiệp Chuyên Ngành'),
    ('345678901234', 3, 3, 'Kế Toán', '2023-07-10', 'Tốt Nghiệp Khoa'),
    ('456789012345', 4, 4, 'Điện Tử', '2023-08-25', 'Tốt Nghiệp Chuyên Ngành'),
    ('567890123456', 5, 5, 'Ngôn Ngữ Anh', '2023-09-30', 'Tốt Nghiệp Khoa'),
    ('678901234567', 6, 6, 'Khoa Học Máy Tính', '2023-10-15', 'Tốt Nghiệp Chuyên Ngành'),
    ('789012345678', 7, 7, 'Du Lịch', '2023-11-20', 'Tốt Nghiệp Khoa'),
    ('890123456789', 8, 8, 'Nhà Hàng - Khách Sạn', '2023-12-05', 'Tốt Nghiệp Chuyên Ngành'),
    ('901234567890', 9, 9, 'Ngân Hàng', '2024-01-10', 'Tốt Nghiệp Khoa'),
    ('012345678901', 10, 10, 'Marketing', '2024-02-15', 'Tốt Nghiệp Chuyên Ngành');

INSERT INTO CongViec (ngayvaocty, socmnd, manganh, tencv, tencty, diachicty, tglamviec)
VALUES
    ('2023-03-01', '123456789012', 1, 'Lập Trình Viên', 'Công Ty ABC', '123 Đường ABC, Quận 1, TP Hồ Chí Minh', '40 giờ/tuần'),
    ('2023-04-15', '234567890123', 2, 'Quản Lý Kinh Doanh', 'Công Ty XYZ', '456 Đường XYZ, Quận 2, TP Hồ Chí Minh', '35 giờ/tuần'),
    ('2023-05-20', '345678901234', 3, 'Kế Toán Viên', 'Công Ty LMN', '789 Đường LMN, Quận 3, TP Hồ Chí Minh', '38 giờ/tuần'),
    ('2023-06-25', '456789012345', 4, 'Kỹ Sư Điện Tử', 'Công Ty PQR', '101 Đường PQR, Quận 4, TP Hồ Chí Minh', '42 giờ/tuần'),
    ('2023-07-30', '567890123456', 5, 'Giáo Viên Tiếng Anh', 'Trường XYZ', '202 Đường UVW, Quận 5, TP Hồ Chí Minh', '30 giờ/tuần'),
    ('2023-08-05', '678901234567', 6, 'Lập Trình Viên', 'Công Ty DEF', '303 Đường DEF, Quận 6, TP Hồ Chí Minh', '40 giờ/tuần'),
    ('2023-09-10', '789012345678', 7, 'Hướng Dẫn Du Lịch', 'Công Ty GHI', '404 Đường GHI, Quận 7, TP Hồ Chí Minh', '35 giờ/tuần'),
    ('2023-10-15', '890123456789', 8, 'Quản Lý Nhà Hàng', 'Công Ty JKL', '505 Đường JKL, Quận 8, TP Hồ Chí Minh', '38 giờ/tuần'),
    ('2023-11-20', '901234567890', 9, 'Nhân Viên Ngân Hàng', 'Ngân Hàng MNO', '606 Đường STU, Quận 9, TP Hồ Chí Minh', '42 giờ/tuần'),
    ('2023-12-25', '012345678901', 10, 'Chuyên Viên Marketing', 'Công Ty KLM', '707 Đường MNO, Quận 10, TP Hồ Chí Minh', '30 giờ/tuần');
GO
USE master