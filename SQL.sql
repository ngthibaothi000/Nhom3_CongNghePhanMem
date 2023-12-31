USE [master]
GO
/****** Object:  Database [QLBanHang]    Script Date: 10/22/2023 8:49:26 PM ******/
CREATE DATABASE [QLBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.BAOTHI\MSSQL\DATA\QLBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.BAOTHI\MSSQL\DATA\QLBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLBanHang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBanHang', N'ON'
GO
ALTER DATABASE [QLBanHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLBanHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLBanHang]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 10/22/2023 8:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[MaSP] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[GiamGia] [numeric](18, 0) NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_CTHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/22/2023 8:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NULL,
	[MaKH] [nchar](10) NULL,
	[NgayBan] [datetime] NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/22/2023 8:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10/22/2023 8:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nvarchar](30) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/22/2023 8:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [varchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](20) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/22/2023 8:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[NhanHieu] [nvarchar](20) NULL,
	[DonGiaBan] [money] NULL,
	[MaNCC] [nchar](10) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/22/2023 8:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [nchar](10) NOT NULL,
	[MatKhau] [nchar](10) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHoaDon] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HD1       ', N'MQHN001   ', 1, 4000.0000, CAST(0 AS Numeric(18, 0)), 4000.0000)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HD2       ', N'ME001     ', 2, 750.0000, CAST(0 AS Numeric(18, 0)), 1500.0000)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaSP], [SoLuong], [DonGia], [GiamGia], [ThanhTien]) VALUES (N'HD3       ', N'ME002     ', 2, 1900.0000, CAST(0 AS Numeric(18, 0)), 3800.0000)
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'HD1       ', N'NV01      ', N'KH01      ', CAST(N'2023-10-22T00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'HD2       ', N'NV01      ', N'KH01      ', CAST(N'2023-10-22T00:00:00.000' AS DateTime), 0.0000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'HD3       ', N'NV02      ', N'KH02      ', CAST(N'2023-10-22T00:00:00.000' AS DateTime), 0.0000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [SDT]) VALUES (N'KH01      ', N'Thanh Danh', N'Nam', N'Can Tho', N'0817657804')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [SDT]) VALUES (N'KH02      ', N'Bao Thy', N'Nữ', N'Vĩnh Long', N'0386543471')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [SDT]) VALUES (N'KH03      ', N'Bao Anhh', N'Nữ', N'Đắk Nông', N'0123456789')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [SDT]) VALUES (N'KH04      ', N'Huu Binh', N'Nam', N'Kon Tum', N'0222223333')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'01        ', N'Panasonic')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'02        ', N'Toshiba')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'03        ', N'Sunhouse')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'04        ', N'Philips')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'05        ', N'SamSung')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'06        ', N'Delites')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'07        ', N'AVA')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'08        ', N'Kangaroo')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'09        ', N'Yoroshiko')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'10        ', N'INSMART')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'11        ', N'Toshiro')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'12        ', N'P/S ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'13        ', N'Maxcare')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'14        ', N'Xiaomi')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'15        ', N'Sihoo')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'16        ', N'E-DRA')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'17        ', N'WARRIOR')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'18        ', N'Sharp')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'19        ', N'Crystal')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'20        ', N'Midea')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'21        ', N'Bluestone')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'22        ', N'Rapido')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'23        ', N'Oclean')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'NV01      ', N'Bao Thi   ', CAST(N'2003-12-15T00:00:00.000' AS DateTime), N'N?', N'Vĩnh Long', N'0386543471')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'NV02      ', N'Thanh Danh', CAST(N'2003-12-12T00:00:00.000' AS DateTime), N'Nam', N'Cần Thơ', N'0817657804')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'NV03      ', N'Bao Anh   ', CAST(N'2003-09-07T00:00:00.000' AS DateTime), N'N?', N'Đắk Nông', N'0386543471')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'NV04      ', N'Binh Huynh', CAST(N'2003-01-05T00:00:00.000' AS DateTime), N'Nam', N'Kon Tum', N'0817657804')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'AD001     ', N'Ấm đun siêu tốc 1.8(lít)', N'Sunhouse', 300.0000, N'03        ', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'AD002     ', N'Ấm đun siêu tốc 1.7(lít)', N'Toshiba', 490.0000, N'02        ', 100)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'AD003     ', N'Ấm đun siêu tốc 1.5(lít)', N'Delites', 150.0000, N'06        ', 20)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BC001     ', N'Bàn cân điện tử', N'Yoroshiko', 250.0000, N'09        ', 13)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BC002     ', N'Bàn cân điện tử', N'INSMART', 188.0000, N'10        ', 15)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BC003     ', N'Bàn cân điện tử', N'Toshiro', 170.0000, N'11        ', 78)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BCD001    ', N'Bàn chảy điện pro', N'P/S ', 1700.0000, N'12        ', 12)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BCD002    ', N'Bàn chảy điện ', N'Maxcare', 1690.0000, N'13        ', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BCD003    ', N'Bàn chảy điện ', N'Xiaomi', 890.0000, N'14        ', 40)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BD001     ', N'Bếp điện từ 2100W', N'Kangaroo', 1190.0000, N'08        ', 60)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BD002     ', N'Bếp điện từ 1880W', N'Sunhouse', 1890.0000, N'03        ', 23)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'BD003     ', N'Bếp điện từ 2000W', N'Toshiba', 1650.0000, N'02        ', 12)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'GX001     ', N'Ghế xoay ', N'Sihoo', 3200.0000, N'15        ', 56)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'GX002     ', N'Ghế xoay ', N'E-DRA', 3990.0000, N'16        ', 89)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'GX003     ', N'Ghế xoay ', N'WARRIOR', 2550.0000, N'17        ', 21)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'LVS001    ', N'Lò vi sóng 23(lít)', N'Sharp', 1990.0000, N'18        ', 20)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'LVS002    ', N'Lò vi sóng 30(lít)', N'Samsung', 3500.0000, N'05        ', 55)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'LVS003    ', N'Lò vi sóng 20(lít)', N'Toshiba', 1650.0000, N'02        ', 45)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'ME001     ', N'Máy ép trái cây ', N'AVA', 750.0000, N'07        ', 62)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'ME002     ', N'Máy ép trái cây ', N'Crystal', 1900.0000, N'19        ', 32)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'ME003     ', N'Máy ép chậm', N'Kangaroo', 199.0000, N'08        ', 12)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MQHN001   ', N'Máy quạt hơi nước 100W', N'Sunhouse', 4000.0000, N'03        ', 13)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MQHN002   ', N'Máy quạt hơi nước 165W', N'Kangaroo', 3480.0000, N'08        ', 15)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MQHN003   ', N'Máy quạt hơi nước 130W', N'Midea', 2990.0000, N'20        ', 70)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MS001     ', N'Máy sấy tóc ', N'Philips', 199.0000, N'04        ', 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MS002     ', N'Máy sấy tóc ', N'Bluestone', 190.0000, N'21        ', 14)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MS003     ', N'Máy sấy tóc ', N'Sunhouse', 200.0000, N'03        ', 60)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MX001     ', N'Máy xay đa năng ', N'Philips', 1390.0000, N'04        ', 20)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MX002     ', N'Máy xay đa năng', N'Sunhouse', 3690.0000, N'03        ', 30)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'MX003     ', N'Máy xay đa năng', N'Toshiba', 6900.0000, N'02        ', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'NC001     ', N'Nồi chiên không dầu 7(lít)', N'Rapido', 1450.0000, N'22        ', 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'NC002     ', N'Nồi chiên không dầu 7.5(lít)', N'AVA', 1690.0000, N'07        ', 10)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'NC003     ', N'Nồi chiên không dầu 6(lít)', N'Sunhouse', 1550.0000, N'03        ', 12)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'TN001     ', N'Máy tăm nước điện tử', N'Panasonic', 1299.0000, N'01        ', 18)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'TN002     ', N'Máy tăm nước điện tử', N'Oclean', 1190.0000, N'23        ', 16)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [NhanHieu], [DonGiaBan], [MaNCC], [SoLuong]) VALUES (N'TN003     ', N'Máy tăm nước điện tử', N'Xiaomi', 1050.0000, N'14        ', 60)
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau]) VALUES (N'nvbaoanh  ', N'1234      ')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau]) VALUES (N'nvbaothi  ', N'1234      ')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau]) VALUES (N'nvbinh    ', N'1234      ')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau]) VALUES (N'nvdanh    ', N'1234      ')
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_CTHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_CTHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
USE [master]
GO
ALTER DATABASE [QLBanHang] SET  READ_WRITE 
GO
