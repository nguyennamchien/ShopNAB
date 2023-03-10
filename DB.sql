USE [master]
GO
/****** Object:  Database [ShopNAB]    Script Date: 2/17/2023 5:56:53 PM ******/
CREATE DATABASE [ShopNAB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopNAB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShopNAB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopNAB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShopNAB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShopNAB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopNAB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopNAB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopNAB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopNAB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopNAB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopNAB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopNAB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopNAB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopNAB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopNAB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopNAB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopNAB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopNAB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopNAB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopNAB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopNAB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopNAB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopNAB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopNAB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopNAB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopNAB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopNAB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopNAB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopNAB] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopNAB] SET  MULTI_USER 
GO
ALTER DATABASE [ShopNAB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopNAB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopNAB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopNAB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopNAB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopNAB', N'ON'
GO
ALTER DATABASE [ShopNAB] SET QUERY_STORE = OFF
GO
USE [ShopNAB]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 2/17/2023 5:56:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 2/17/2023 5:56:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 2/17/2023 5:56:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [text] NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBanS] [int] NULL,
	[Luotview] [int] NULL,
	[TinhTrang] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Cao Cap')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Trung Binh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP03', N'Cao Cap')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX01', N'Iphone')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX02', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX03', N'LG')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX04', N'SONY')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'Iphone XS Max 128G', N'Chua cau hinh', N'1.png', NULL, NULL, NULL, NULL, 10000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP02', N'LSP01', N'NSX01', N'Iphone 12', N'Chua xac dinh', N'2.png', NULL, NULL, NULL, NULL, 12000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP03', N'LSP02', N'NSX01', N'Iphpne 13', N'Chua xac dinh', N'3.png', NULL, NULL, NULL, NULL, 13000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP04', N'LSP03', N'NSX01', N'Iphone14', N'Chua xac dinh', N'4.png', NULL, NULL, NULL, NULL, 10000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP05', N'LSP01', N'NSX02', N'SamSung', N'Chua xac dinh', N'5.png', NULL, NULL, NULL, NULL, 9000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP06', N'LSP02', N'NSX02', N'SamSung', N'Chua xac dinh', N'6.png', NULL, NULL, NULL, NULL, 9900000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP07', N'LSP02', N'NSX02', N'SamSung', N'Chua xac dinh', N'7.png', NULL, NULL, NULL, NULL, 13000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP08', N'LSP03', N'NSX02', N'SamSung', N'Chua xac dinh', N'8.png', NULL, NULL, NULL, NULL, 15000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP09', N'LSP01', N'NSX01', N'Iphone', N'Chua xac dinh', N'9.png', NULL, NULL, NULL, NULL, 10000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP10', N'LSP02', N'NSX03', N'LG', N'Chua xac dinh', N'10.png', NULL, NULL, NULL, NULL, 17000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP11', N'LSP02', N'MSX03', N'LG', N'Chua xac dinh', N'11.png', NULL, NULL, NULL, NULL, 15000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBanS], [Luotview], [TinhTrang]) VALUES (N'SP12', N'LSP03', N'MSX03', N'LG', N'Chua xac dinh', N'12.png', NULL, NULL, NULL, NULL, 14000000, 0, 0, N'0         ')
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBanS]  DEFAULT ((0)) FOR [SoLuongDaBanS]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Luotview]  DEFAULT ((0)) FOR [Luotview]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
USE [master]
GO
ALTER DATABASE [ShopNAB] SET  READ_WRITE 
GO
