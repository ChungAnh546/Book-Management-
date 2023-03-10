USE [master]
GO
/****** Object:  Database [QLNhaSach]    Script Date: 10/20/2021 12:51:45 ******/
CREATE DATABASE [QLNhaSach] ON  PRIMARY 
( NAME = N'QLNhaSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLNhaSach.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLNhaSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLNhaSach_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLNhaSach] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNhaSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNhaSach] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLNhaSach] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLNhaSach] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLNhaSach] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLNhaSach] SET ARITHABORT OFF
GO
ALTER DATABASE [QLNhaSach] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLNhaSach] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLNhaSach] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLNhaSach] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLNhaSach] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLNhaSach] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLNhaSach] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLNhaSach] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLNhaSach] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLNhaSach] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLNhaSach] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLNhaSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLNhaSach] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLNhaSach] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLNhaSach] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLNhaSach] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLNhaSach] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLNhaSach] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLNhaSach] SET  READ_WRITE
GO
ALTER DATABASE [QLNhaSach] SET RECOVERY FULL
GO
ALTER DATABASE [QLNhaSach] SET  MULTI_USER
GO
ALTER DATABASE [QLNhaSach] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLNhaSach] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLNhaSach', N'ON'
GO
USE [QLNhaSach]
GO
/****** Object:  ForeignKey [FK_SanPham_NhomSanPham]    Script Date: 10/20/2021 12:51:47 ******/
/*ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FK_SanPham_NhomSanPham]
GO
/****** Object:  ForeignKey [FK_NhanVien_TaiKhoan]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_NhanVien1]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_NhanVien1]
GO
/****** Object:  ForeignKey [FK_ChiTietHoaDon_HoaDon]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[ChiTietHoaDon] DROP CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
/****** Object:  ForeignKey [FK_ChiTietHoaDon_SanPham]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[ChiTietHoaDon] DROP CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[ChiTietHoaDon] DROP CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon] DROP CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
DROP TABLE [dbo].[ChiTietHoaDon]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [FK_HoaDon_NhanVien1]
GO
DROP TABLE [dbo].[HoaDon]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
DROP TABLE [dbo].[NhanVien]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FK_SanPham_NhomSanPham]
GO
DROP TABLE [dbo].[SanPham]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/20/2021 12:51:47 ******/
DROP TABLE [dbo].[TaiKhoan]
GO
/****** Object:  Table [dbo].[NhomSanPham]    Script Date: 10/20/2021 12:51:47 ******/
DROP TABLE [dbo].[NhomSanPham]
GO
/******* Object:  Table [dbo].[KhachHang]    Script Date: 10/20/2021 12:51:46 ******/
DROP TABLE [dbo].[KhachHang]
GO*/
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/20/2021 12:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [nchar](10) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](50) NULL,
	[sDT] [nchar](20) NOT NULL,
	[eMail] [nchar](20) NULL,
	[tuoi] [int] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomSanPham]    Script Date: 10/20/2021 12:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSanPham](
	[maNhomSP] [nchar](10) NOT NULL,
	[tenNhomSP] [nvarchar](50) NOT NULL,
	[ngayNhap] [date] NOT NULL,
 CONSTRAINT [PK_NhomSanPham] PRIMARY KEY CLUSTERED 
(
	[maNhomSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/20/2021 12:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[maTK] [nchar](10) NOT NULL,
	[tenTK] [nvarchar](50) NOT NULL,
	[matKhau] [nchar](50) NOT NULL,
	[tinhTrang] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[maTK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/20/2021 12:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSP] [nchar](10) NOT NULL,
	[tenSP] [nvarchar](50) NOT NULL,
	[soLuongTon] [int] NULL,
	[donGia] [float] NOT NULL,
	[maNhomSP] [nchar](10) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/20/2021 12:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [nchar](10) NOT NULL,
	[tenNhanVien] [nvarchar](50) NOT NULL,
	[chucVu] [nvarchar](20) NOT NULL,
	[gioiTinh] [nchar](10) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[sDT] [nchar](20) NULL,
	[maTK] [nchar](10) NULL,
	[TinhTrang] [nchar](20) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE dbo.HoaDon
ADD ghiChu nvarchar(255);
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([maTK])
REFERENCES [dbo].[TaiKhoan] ([maTK])
GO

ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/20/2021 12:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [nchar](10) NOT NULL,
	[ngayLap] [date] NOT NULL,
	[maNhanVien] [nchar](10) NOT NULL,
	[maKH] [nchar](10) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/20/2021 12:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[thanhTien] [float] NULL,
	[donGia] [float] NOT NULL,
	[maHD] [nchar](10) NOT NULL,
	[maSP] [nchar](10) NOT NULL,
	[Soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon] ON [dbo].[ChiTietHoaDon] 
(
	[thanhTien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_1] ON [dbo].[ChiTietHoaDon] 
(
	[thanhTien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/*Thêm dòng hình ảnh nhân viên*/
 ALTER TABLE dbo.NhanVien
ADD hinh image;
ALTER TABLE KhachHang ALTER COLUMN eMail NCHAR(50);
/*Thêm table  Tác giả */

CREATE TABLE TacGia (
	maTacGia char(10) PRIMARY KEY,
    tenTacGia nvarchar(50) not null,
	ngaySinh date,
	Quequan nvarchar(50)
)
/*Thêm table nhà cung cấp */
CREATE TABLE NhaCungCap (
	maNhaCC char(10) PRIMARY KEY,
    tenNhaCC nvarchar(50) not null,
	DiaChi nvarchar(50),
	sDT nchar(20),
	email nvarchar(50)
)
/*Thêm mã nhà CC và mã Tác giả ở sản phẩm */
 ALTER TABLE dbo.SanPham
ADD maNhaCC char(10);
 ALTER TABLE dbo.SanPham
ADD maTacGia char(10);
/*Thêm KHóa ngoại */
ALTER TABLE dbo.SanPham
ADD CONSTRAINT FK_maNhaCC
FOREIGN KEY (maNhaCC) REFERENCES dbo.NhaCungCap(maNhaCC);
ALTER TABLE dbo.SanPham
ADD CONSTRAINT FK_maTacGia
FOREIGN KEY (maTacGia) REFERENCES dbo.TacGia(maTacGia);
/****** Object:  ForeignKey [FK_SanPham_NhomSanPham]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomSanPham] FOREIGN KEY([maNhomSP])
REFERENCES [dbo].[NhomSanPham] ([maNhomSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhomSanPham]
GO
/****** Object:  ForeignKey [FK_NhanVien_TaiKhoan]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([maTK])
REFERENCES [dbo].[TaiKhoan] ([maTK])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_NhanVien1]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien1] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien1]
GO
/****** Object:  ForeignKey [FK_ChiTietHoaDon_HoaDon]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
/****** Object:  ForeignKey [FK_ChiTietHoaDon_SanPham]    Script Date: 10/20/2021 12:51:47 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
/***/

INSERT INTO [dbo].[TaiKhoan]
           ([maTK]
           ,[tenTK]
           ,[matKhau]
           ,[tinhTrang])
     VALUES
           ('TK001'
           ,'admin'
           ,'1'
           ,1)
INSERT INTO [dbo].[TaiKhoan]
           ([maTK]
           ,[tenTK]
           ,[matKhau]
           ,[tinhTrang])
     VALUES
           ('TK002'
           ,'admin2'
           ,'1'
           ,1)
/***/
INSERT INTO [dbo].[NhanVien]
           ([maNhanVien]
           ,[tenNhanVien]
           ,[chucVu]
           ,[gioiTinh]
           ,[ngaySinh]
           ,[sDT]
           ,[maTK]
           ,[TinhTrang]
           ,[hinh])
     VALUES
           ('NV001'
           ,'Hoa'
           ,'Quản lý'
           ,'Nữ'
           ,'04-05-2000'
           ,'0984324342'
           ,'TK001'
           ,'Vẫn làm việc'
           ,null)
INSERT INTO [dbo].[NhanVien]
           ([maNhanVien]
           ,[tenNhanVien]
           ,[chucVu]
           ,[gioiTinh]
           ,[ngaySinh]
           ,[sDT]
           ,[maTK]
           ,[TinhTrang]
           ,[hinh])
     VALUES
           ('NV002'
           ,'Thành'
           ,'Nhân viên bán hàng'
           ,'Nam'
           ,'04-06-2001'
           ,'0984865342'
           ,'TK002'
           ,'Vẫn làm việc'
           ,null)