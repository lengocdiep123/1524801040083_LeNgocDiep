USE [master]
GO
/****** Object:  Database [TCNCuChi]    Script Date: 13/05/2019 12:20:59 SA ******/
CREATE DATABASE [TCNCuChi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TCNCuChi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TCNCuChi.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TCNCuChi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TCNCuChi_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TCNCuChi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TCNCuChi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TCNCuChi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TCNCuChi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TCNCuChi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TCNCuChi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TCNCuChi] SET ARITHABORT OFF 
GO
ALTER DATABASE [TCNCuChi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TCNCuChi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TCNCuChi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TCNCuChi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TCNCuChi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TCNCuChi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TCNCuChi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TCNCuChi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TCNCuChi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TCNCuChi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TCNCuChi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TCNCuChi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TCNCuChi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TCNCuChi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TCNCuChi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TCNCuChi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TCNCuChi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TCNCuChi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TCNCuChi] SET  MULTI_USER 
GO
ALTER DATABASE [TCNCuChi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TCNCuChi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TCNCuChi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TCNCuChi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TCNCuChi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TCNCuChi] SET QUERY_STORE = OFF
GO
USE [TCNCuChi]
GO
/****** Object:  User [tcncuchi]    Script Date: 13/05/2019 12:20:59 SA ******/
CREATE USER [tcncuchi] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [tcncuchi]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 13/05/2019 12:20:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](250) NOT NULL,
	[PassWord] [nvarchar](250) NULL,
	[GroupUsers_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitietphongban]    Script Date: 13/05/2019 12:21:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietphongban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[chuyenmuc] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaoTao]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaoTao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaotaoCTDT]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaotaoCTDT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaoTaoCTDTfile]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaoTaoCTDTfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaotaoCTDTLoai]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaotaoCTDTLoai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Loai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaoTaoCTDTTinTuc]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaoTaoCTDTTinTuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[IDLoai] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaoTaofile]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaoTaofile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaoTaoTintuc]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaoTaoTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUsers]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HSSV]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HSSV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HSSVfile]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HSSVfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HSSVTintuc]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HSSVTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[nameSlide] [nvarchar](100) NULL,
	[duongdan] [nvarchar](100) NULL,
	[IsSlide] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongDoanThe]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongDoanThe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongDoanthefile]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongDoanthefile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongDoanTheTintuc]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongDoanTheTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongGioithieu]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongGioithieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongGioithieufile]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongGioithieufile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongGioithieuTintuc]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongGioithieuTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongKhoaTrungtam]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongKhoaTrungtam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongKhoaTrungtamfile]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongKhoaTrungtamfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongKhoaTrungtamTintuc]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongKhoaTrungtamTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongNoibo]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongNoibo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongNoibofile]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongNoibofile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongNoiboTintuc]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongNoiboTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongPhongban]    Script Date: 13/05/2019 12:21:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongPhongban](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongPhongbanfile]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongPhongbanfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongPhongbanTintuc]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongPhongbanTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongSinhvien]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongSinhvien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongSinhvienfile]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongSinhvienfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongSinhvienTintuc]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongSinhvienTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongSinhvienTuyendung]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongSinhvienTuyendung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Maso] [nvarchar](20) NULL,
	[Tencongty] [nvarchar](200) NULL,
	[linhvuc] [nvarchar](100) NULL,
	[Vitrituyendung] [nvarchar](500) NULL,
	[Soluong] [nvarchar](50) NULL,
	[Thoigianlamviec] [nvarchar](100) NULL,
	[Noilamviec] [nvarchar](100) NULL,
	[Nganhnghe] [nvarchar](100) NULL,
	[Hinhthuc] [nvarchar](100) NULL,
	[Quyenloi] [nvarchar](200) NULL,
	[Luong] [nvarchar](100) NULL,
	[Hannop] [nvarchar](50) NULL,
	[Mota] [nvarchar](500) NULL,
	[Yeucau] [nvarchar](500) NULL,
	[Hoso] [nvarchar](500) NULL,
	[Lienhe] [nvarchar](500) NULL,
	[Ngaydang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongTainguyen]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongTainguyen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongTainguyenfile]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongTainguyenfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongTainguyenTintuc]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongTainguyenTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongThuvien]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongThuvien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongThuvienfile]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongThuvienfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TruongThuvienTinTuc]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruongThuvienTinTuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TS]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSDangkitructuyen]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSDangkitructuyen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](100) NULL,
	[ngaysinh] [datetime] NULL,
	[Hokhau] [nvarchar](250) NULL,
	[dienthoai] [nvarchar](20) NULL,
	[cmnd] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[hotennhanthu] [nvarchar](100) NULL,
	[diachinhanthu] [nvarchar](250) NULL,
	[dienthoainhanthu] [nvarchar](20) NULL,
	[datotnghiep] [int] NULL,
	[namtotnghiep] [nvarchar](20) NULL,
	[nv1trinhdo] [nvarchar](250) NULL,
	[nv2trinhdo] [nvarchar](250) NULL,
	[nv3trinhdo] [nvarchar](250) NULL,
	[nv1Nganh] [nvarchar](250) NULL,
	[nv2Nganh] [nvarchar](250) NULL,
	[nv3Nganh] [nvarchar](250) NULL,
	[ngaydangky] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSfile]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSHoSo]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSHoSo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSHoSofile]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSHoSofile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSHoSoTintuc]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSHoSoTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSKetQua]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSKetQua](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Chude] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSKetQuafile]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSKetQuafile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDTin] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[duongdan] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSKetQuaTintuc]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSKetQuaTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSNguyenvong]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSNguyenvong](
	[IDdangki] [int] NULL,
	[IDTrinhdo] [int] NULL,
	[IDNguyenvong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSNVCaodang]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSNVCaodang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nguyenvong] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSNVTrungcap]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSNVTrungcap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nguyenvong] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TSTintuc]    Script Date: 13/05/2019 12:21:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TSTintuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDChude] [int] NULL,
	[tieude] [nvarchar](500) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](max) NULL,
	[anhdaidien] [nvarchar](100) NULL,
	[ngaydang] [datetime] NULL,
	[ngaysua] [datetime] NULL,
	[dangtin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [PassWord], [GroupUsers_ID]) VALUES (N'admin', N'c4ca4238a0b923820dcc509a6f75849b', 1)
INSERT [dbo].[Account] ([UserName], [PassWord], [GroupUsers_ID]) VALUES (N'congtacsinhvien', N'c4ca4238a0b923820dcc509a6f75849b', 5)
INSERT [dbo].[Account] ([UserName], [PassWord], [GroupUsers_ID]) VALUES (N'dangbo', N'c4ca4238a0b923820dcc509a6f75849b', 21)
INSERT [dbo].[Account] ([UserName], [PassWord], [GroupUsers_ID]) VALUES (N'hanhchinh', N'c4ca4238a0b923820dcc509a6f75849b', 3)
INSERT [dbo].[Account] ([UserName], [PassWord], [GroupUsers_ID]) VALUES (N'noibo', N'c20ad4d76fe97759aa27a0c99bff6710', 2)
INSERT [dbo].[Account] ([UserName], [PassWord], [GroupUsers_ID]) VALUES (N'tovanhoa', N'c4ca4238a0b923820dcc509a6f75849b', 20)
SET IDENTITY_INSERT [dbo].[DaoTao] ON 

INSERT [dbo].[DaoTao] ([ID], [Chude]) VALUES (1, N'Giới thiệu')
INSERT [dbo].[DaoTao] ([ID], [Chude]) VALUES (2, N'Thông báo')
INSERT [dbo].[DaoTao] ([ID], [Chude]) VALUES (5, N'Biểu mẫu')
INSERT [dbo].[DaoTao] ([ID], [Chude]) VALUES (6, N'Ngân hàng đề thi')
SET IDENTITY_INSERT [dbo].[DaoTao] OFF
SET IDENTITY_INSERT [dbo].[DaotaoCTDT] ON 

INSERT [dbo].[DaotaoCTDT] ([ID], [Chude]) VALUES (2, N'Trung cấp nghề')
INSERT [dbo].[DaotaoCTDT] ([ID], [Chude]) VALUES (3, N'Ngắn hạn')
INSERT [dbo].[DaotaoCTDT] ([ID], [Chude]) VALUES (4, N'Liên thông')
SET IDENTITY_INSERT [dbo].[DaotaoCTDT] OFF
SET IDENTITY_INSERT [dbo].[DaoTaoCTDTTinTuc] ON 

INSERT [dbo].[DaoTaoCTDTTinTuc] ([ID], [IDChude], [IDLoai], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (5, 3, 1, N'Test ngan han', N'', N'<p>
	ff</p>
', N'', CAST(N'2018-09-13T14:54:00.000' AS DateTime), CAST(N'2018-09-13T14:54:00.000' AS DateTime), 1)
INSERT [dbo].[DaoTaoCTDTTinTuc] ([ID], [IDChude], [IDLoai], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (6, 4, 1, N'Test Lien thong', N'', N'<p>
	eTest</p>
', N'', CAST(N'2018-09-13T14:55:00.000' AS DateTime), CAST(N'2018-09-13T14:55:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DaoTaoCTDTTinTuc] OFF
SET IDENTITY_INSERT [dbo].[DaoTaoTintuc] ON 

INSERT [dbo].[DaoTaoTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (13, 1, N'Giới thiệu về Phòng Đào Tạo', N'', N'<p align="center" style="margin-left:25.65pt;">
	<span style="color:#fd5523;"><span style="font-size:16px;"><strong>GIỚI THIỆU VỀ PH&Ograve;NG Đ&Agrave;O TẠO</strong></span></span></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp; X&acirc;y dựng v&agrave; tổ chức thực hiện kế hoạch giảng dạy h&agrave;ng năm v&agrave; kế hoạch đ&agrave;o tạo d&agrave;i hạn của nh&agrave; trường;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Lập kế hoạch v&agrave; tổ chức việc x&acirc;y dựng c&aacute;c chương tr&igrave;nh, gi&aacute;o tr&igrave;nh, học liệu dạy nghề;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Lập kế hoạch v&agrave; tổ chức tuyển sinh, thi tốt nghiệp, c&ocirc;ng nhận v&agrave; cấp bằng, chứng chỉ nghề;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tổ chức thực hiện v&agrave; quản l&yacute; qu&aacute; tr&igrave;nh đ&agrave;o tạo, bồi dưỡng nghề;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Quản l&yacute; việc kiểm tra, thi theo quy định;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - X&acirc;y dựng v&agrave; tổ chức thực hiện kế hoạch bồi dưỡng chuy&ecirc;n m&ocirc;n, nghiệp vụ cho gi&aacute;o vi&ecirc;n.</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Kiểm tra đ&agrave;o tạo theo c&aacute;c cấp học v&agrave; tự kiểm định chất lượng dạy nghề.</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Thực hiện c&aacute;c c&ocirc;ng việc gi&aacute;o vụ gồm: lập c&aacute;c biểu về c&ocirc;ng t&aacute;c gi&aacute;o vụ, dạy v&agrave; học, thực h&agrave;nh, thực tập nghề; theo d&otilde;i, tổng hợp, đ&aacute;nh gi&aacute; chất lượng c&aacute;c hoạt động dạy nghề; thống k&ecirc;, l&agrave;m b&aacute;o c&aacute;o theo quy định của Bộ Lao động - Thương binh v&agrave; X&atilde; hội, của cơ quan quản l&yacute; cấp tr&ecirc;n v&agrave; của hiệu trưởng.</p>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp;- Thực hiện c&aacute;c nhiệm vụ kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của hiệu trưởng.</p>
', N'', CAST(N'2018-08-28T23:54:00.000' AS DateTime), CAST(N'2018-09-21T18:50:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DaoTaoTintuc] OFF
SET IDENTITY_INSERT [dbo].[GroupUsers] ON 

INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (1, N'Administrator')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (2, N'Đăng thông tin trường và nội bộ')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (3, N'Phòng hành chính - quản trị')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (4, N'Phòng Tài vụ - Cơ sở vật chất')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (5, N'Phòng Công tác HSSV và quan hệ xí nghiệp')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (6, N'Phòng Đào tạo')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (10, N'Khoa Cơ khí - Ô tô')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (12, N'Khoa Tin học - Nữ công')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (13, N'Khoa Kỹ thuật điện')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (16, N'Khoa Kỹ thuật cơ sở - Nông nghiệp')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (19, N'Trung tâm tuyển sinh và hỗ trợ việc làm')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (20, N'Tổ văn hóa')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (21, N'Đảng bộ')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (23, N'Công đoàn')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (24, N'Đoàn thanh niên')
INSERT [dbo].[GroupUsers] ([ID], [Name]) VALUES (26, N'Thư viện')
SET IDENTITY_INSERT [dbo].[GroupUsers] OFF
SET IDENTITY_INSERT [dbo].[HSSV] ON 

INSERT [dbo].[HSSV] ([ID], [Chude]) VALUES (1, N'Giới thiệu')
INSERT [dbo].[HSSV] ([ID], [Chude]) VALUES (2, N'Thông tin')
INSERT [dbo].[HSSV] ([ID], [Chude]) VALUES (3, N'Biểu mẫu')
INSERT [dbo].[HSSV] ([ID], [Chude]) VALUES (4, N'Quy chế - quy định')
INSERT [dbo].[HSSV] ([ID], [Chude]) VALUES (5, N'Học bổng - Khen thưởng - Kỷ luật')
INSERT [dbo].[HSSV] ([ID], [Chude]) VALUES (6, N'Điểm rèn luyện')
SET IDENTITY_INSERT [dbo].[HSSV] OFF
SET IDENTITY_INSERT [dbo].[HSSVfile] ON 

INSERT [dbo].[HSSVfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (3, 5, N'MẪU ĐƠN RÚT HỌC SINH', N'Filedinhkem/truong/050918101842.docx')
INSERT [dbo].[HSSVfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (4, 5, N'Đơn xin phép nghỉ học', N'Filedinhkem/truong/010119105207.docx')
INSERT [dbo].[HSSVfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (5, 5, N'Đơn xin rút hồ sơ HSSV', N'Filedinhkem/truong/010119105247.doc')
INSERT [dbo].[HSSVfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (6, 5, N'Bản tự kiểm điểm học sinh', N'Filedinhkem/truong/010119105324.doc')
INSERT [dbo].[HSSVfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (7, 5, N'', N'Filedinhkem/truong/100519013041.docx')
INSERT [dbo].[HSSVfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (8, 5, N'abc', N'Filedinhkem/truong/100519013119.docx')
SET IDENTITY_INSERT [dbo].[HSSVfile] OFF
SET IDENTITY_INSERT [dbo].[HSSVTintuc] ON 

INSERT [dbo].[HSSVTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (4, 1, N'Giới thiệu về Phòng Công tác HSSV & Quan hệ xí nghiệp', N'', N'<p style="margin-left: 25.65pt; text-align: center;">
	<span style="color:#fd5523;"><span style="font-size:16px;"><strong>GIỚI THIỆU VỀ PH&Ograve;NG C&Ocirc;NG T&Aacute;C HSSV &amp; QUAN HỆ X&Iacute; NGHIỆP</strong></span></span></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tham mưu Hiệu trưởng trong việc gi&aacute;o dục v&agrave; quản lý học sinh; theo dõi, gi&uacute;p đỡ học sinh tự học, thực tập sản xuất, giới thiệu việc l&agrave;m, hoạt động văn ho&aacute;, văn nghệ, thể dục thể thao, lao động sản xuất v&agrave; những hoạt động kh&aacute;c ngo&agrave;i giờ học;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đề xuất v&agrave; thực hiện c&aacute;c ch&iacute;nh s&aacute;ch chế độ của nh&agrave; nước, nh&agrave; trường về học bổng, học ph&iacute;, bảo hiểm c&aacute;c loại, về khen thưởng, kỷ luật v&agrave; c&aacute;c chế độ kh&aacute;c c&oacute; li&ecirc;n quan đến đời sống tinh thần v&agrave; vật chất của học sinh.</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Quan hệ doanh nghiệp, đưa học sinh, sinh vi&ecirc;n tham quan, thực t&acirc;̣p m&ocirc;n học, thực t&acirc;̣p xí nghi&ecirc;̣p.</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-08-26T11:37:00.000' AS DateTime), CAST(N'2018-09-20T22:01:00.000' AS DateTime), 1)
INSERT [dbo].[HSSVTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (5, 3, N'Biếu mẫu dành cho học sinh', N'', N'', N'', CAST(N'2018-09-03T00:49:00.000' AS DateTime), CAST(N'2018-09-05T01:00:00.000' AS DateTime), 1)
INSERT [dbo].[HSSVTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (6, 2, N'demo Thông tin cộng tác hssv', N'abc', N'<p>
	n&oacute;i g&igrave; b&acirc;y giờ pro qu&aacute; rồi</p>
', N'~/Hinhanh/truong/190419101903.png', CAST(N'2019-04-19T10:19:00.000' AS DateTime), CAST(N'2019-04-19T10:19:00.000' AS DateTime), 1)
INSERT [dbo].[HSSVTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (1006, 5, N'Học bổng du học Hàn Quốc', N'', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em; color: rgb(0, 0, 0); font-family: Helvetica, arial, sans-serif; font-size: 14px; text-align: justify;">
	<span style="box-sizing: border-box; color: rgb(51, 153, 102);">Trường cung cấp c&aacute;c chương tr&igrave;nh&nbsp;<span style="box-sizing: border-box; color: rgb(51, 102, 255);"><a href="https://newocean.edu.vn/hoc-bong-du-hoc/" style="box-sizing: border-box; background: 0px 0px; color: rgb(51, 102, 255); text-decoration-line: none; transition: all 0.2s ease 0s;" target="_blank" title="học bổng">học bổng</a></span>&nbsp;d&agrave;nh cho sinh vi&ecirc;n quốc tế tới&nbsp;<span style="box-sizing: border-box; color: rgb(51, 102, 255);"><a href="https://newocean.edu.vn/du-hoc-han-quoc/" style="box-sizing: border-box; background: 0px 0px; color: rgb(51, 102, 255); text-decoration-line: none; transition: all 0.2s ease 0s;" target="_blank" title="du học Hàn Quốc">du học H&agrave;n Quốc</a></span>&nbsp;như sau:</span></p>
<table align="center" border="1" cellpadding="5" cellspacing="0" style="box-sizing: border-box; background-color: transparent; border-collapse: collapse; border-spacing: 0px; max-width: 100%; color: rgb(0, 0, 0); font-family: Helvetica, arial, sans-serif; font-size: 14px; text-align: justify;">
	<thead style="box-sizing: border-box;">
		<tr style="box-sizing: border-box;">
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px; text-align: center;" width="84">
				<span style="box-sizing: border-box; color: rgb(51, 153, 102);">Đối tượng&nbsp;</span></td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px; text-align: center;" width="108">
				<span style="box-sizing: border-box; color: rgb(51, 153, 102);">T&ecirc;n học bổng</span></td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px; text-align: center;" width="138">
				<span style="box-sizing: border-box; color: rgb(51, 153, 102);">Gi&aacute; trị học bổng</span></td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px; text-align: center;" width="144">
				<span style="box-sizing: border-box; color: rgb(51, 153, 102);">Y&ecirc;u cầu</span></td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px; text-align: center;" width="210">
				<span style="box-sizing: border-box; color: rgb(51, 153, 102);">Điều kiện duy tr&igrave; học bổng</span></td>
		</tr>
	</thead>
	<tbody style="box-sizing: border-box;">
		<tr style="box-sizing: border-box;">
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="84">
				Sinh vi&ecirc;n mới nhập học</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="108">
				Scholarship for Excellence in Korean</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="138">
				Miễn to&agrave;n bộ học ph&iacute; cho 4 năm học (kh&ocirc;ng bao gồm ph&iacute; tuyển sinh)</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="144">
				Ứng vi&ecirc;n c&oacute; chứng chỉ TOPIK Level 6</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="210">
				Đăng k&yacute; &iacute;t nhất 15 t&iacute;n chỉ v&agrave; c&oacute; được 12 t&iacute;n chỉ từ học kỳ trước.
				<p style="box-sizing: border-box; margin: 0px; line-height: 1.9em;">
					&nbsp;</p>
				<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em;">
					GPA &ge; 3.7: Học bổng to&agrave;n phần<br style="box-sizing: border-box;" />
					GPA &ge; 3.5: Miễn 50% học ph&iacute;<br style="box-sizing: border-box;" />
					GPA &lt; 3.5: Ngừng cấp học bổng</p>
			</td>
		</tr>
		<tr style="box-sizing: border-box;">
			<td rowspan="4" style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="84">
				Sinh vi&ecirc;n mới</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="108">
				International Student Scholarship A</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="138">
				Miễn to&agrave;n bộ học ph&iacute; 1 năm học (kh&ocirc;ng bao gồm ph&iacute; tuyển sinh)</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="144">
				Ứng vi&ecirc;n đạt 97% trở l&ecirc;n điểm đ&aacute;nh gi&aacute; hồ sơ ứng tuyển v&agrave; phỏng vấn hoặc c&oacute; chứng chỉ TOPIK Level 5</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="210">
				Đăng k&yacute; &iacute;t nhất 15 t&iacute;n chỉ v&agrave; c&oacute; được 12 t&iacute;n chỉ từ học kỳ trước.
				<p style="box-sizing: border-box; margin: 0px; line-height: 1.9em;">
					&nbsp;</p>
				<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em;">
					GPA tr&ecirc;n 3.0</p>
			</td>
		</tr>
		<tr style="box-sizing: border-box;">
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="108">
				International Student Scholarship B</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="138">
				Miễn 50% học ph&iacute; 1 năm học (kh&ocirc;ng bao gồm ph&iacute; tuyển sinh)</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="144">
				Ứng vi&ecirc;n đạt 95-96.9% điểm đ&aacute;nh gi&aacute; hồ sơ ứng tuyển v&agrave; phỏng vấn hoặc c&oacute; chứng chỉ TOPIK Level 4</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="210">
				Đăng k&yacute; &iacute;t nhất 15 t&iacute;n chỉ v&agrave; c&oacute; được 12 t&iacute;n chỉ từ học kỳ trước.
				<p style="box-sizing: border-box; margin: 0px; line-height: 1.9em;">
					&nbsp;</p>
				<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em;">
					GPA tr&ecirc;n 3.0</p>
			</td>
		</tr>
		<tr style="box-sizing: border-box;">
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="108">
				International Student Scholarship C</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="138">
				Miễn ph&iacute; tuyển sinh</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="144">
				Ứng vi&ecirc;n đạt 90-94.9% điểm đ&aacute;nh gi&aacute; hồ sơ ứng tuyển v&agrave; phỏng vấn</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="210">
				&ndash;</td>
		</tr>
		<tr style="box-sizing: border-box;">
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="108">
				International Student Scholarship D</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="138">
				Miễn 50% học ph&iacute; kỳ học đầu ti&ecirc;n (kh&ocirc;ng bao gồm ph&iacute; tuyển sinh)</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="144">
				Ứng vi&ecirc;n đạt điểm đ&aacute;nh gi&aacute; tr&ecirc;n 50% v&agrave; đ&atilde; ho&agrave;n th&agrave;nh kh&oacute;a tiếng H&agrave;n tại KHU IIE trong 1 năm</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="210">
				&ndash;</td>
		</tr>
		<tr style="box-sizing: border-box;">
			<td rowspan="2" style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="84">
				Sinh vi&ecirc;n sau nhập học</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="108">
				Academic Excellence Scholarship</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="138">
				KRW 500,000 ~ 3,000,000</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="144">
				Sinh vi&ecirc;n đ&atilde; nhập học c&oacute; GPA kỳ trước tr&ecirc;n 3.0</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="210">
				Nhận hồ sơ mỗi kỳ</td>
		</tr>
		<tr style="box-sizing: border-box;">
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="108">
				Scholarship for Most Improved Student</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="138">
				KRW 500,000</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="144">
				Sinh vi&ecirc;n đ&atilde; nhập học c&oacute; GPA kỳ sau cao hơn kỳ trước</td>
			<td style="box-sizing: border-box; padding-left: 5px; padding-right: 5px;" width="210">
				Nhận hồ sơ mỗi kỳ</td>
		</tr>
	</tbody>
</table>
<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em; color: rgb(0, 0, 0); font-family: Helvetica, arial, sans-serif; font-size: 14px; text-align: justify;">
	<span style="box-sizing: border-box; color: rgb(255, 102, 0);">* Ghi ch&uacute;:</span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em; color: rgb(0, 0, 0); font-family: Helvetica, arial, sans-serif; font-size: 14px; text-align: justify;">
	1. Học bổng được th&ocirc;ng b&aacute;o c&ugrave;ng với kết quả tuyển sinh. Thời hạn đăng k&yacute; học bổng l&agrave; thời hạn đăng k&yacute; kh&oacute;a học.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em; color: rgb(0, 0, 0); font-family: Helvetica, arial, sans-serif; font-size: 14px; text-align: justify;">
	2. C&oacute; nhiều học bổng cung cấp cho sinh vi&ecirc;n. Tuy nhi&ecirc;n, mỗi sinh vi&ecirc;n chỉ được nhận 1 học bổng. Nếu sinh vi&ecirc;n được cấp nhiều học bổng th&igrave; sinh vi&ecirc;n đ&oacute; sẽ chỉ được cấp học bổng c&oacute; gi&aacute; trị cao nhất.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em; color: rgb(0, 0, 0); font-family: Helvetica, arial, sans-serif; font-size: 14px; text-align: justify;">
	3. Để nhận được học bổng sinh vi&ecirc;n quốc tế loại D, ứng vi&ecirc;n phải ho&agrave;n th&agrave;nh 1 năm tại IIE để c&oacute; thể ứng tuyển học bổng (Kh&ocirc;ng t&iacute;nh kỳ học lại)</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.9em; color: rgb(0, 0, 0); font-family: Helvetica, arial, sans-serif; font-size: 14px; text-align: justify;">
	4. Học bổng loại A v&agrave; B được duy tr&igrave; dựa tr&ecirc;n kết quả học tập tại kỳ trước của sinh vi&ecirc;n. Nếu sinh vi&ecirc;n nhận học bổng cho sinh vi&ecirc;n xuất sắc tiếng H&agrave;n Quốc kh&ocirc;ng đạt điểm GPA y&ecirc;u cầu, trường sẽ ngưng cấp học bổng. Tuy nhi&ecirc;n, học bổng vẫn tiếp tục cấp nếu sinh vi&ecirc;n đạt y&ecirc;u cầu GPA ở kỳ học sau đ&oacute;.</p>
', N'', CAST(N'2019-05-10T13:36:00.000' AS DateTime), CAST(N'2019-05-10T13:36:00.000' AS DateTime), 1)
INSERT [dbo].[HSSVTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (1007, 6, N'KẾT QUẢ ĐIỂM HỌC TẬP (DÙNG XÉT HỌC BỔNG) VÀ RÈN LUYỆN HỌC KỲ 1, NĂM HỌC 2018-2019', N'', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 16px; text-align: center;">
	<span style="box-sizing: border-box; font-weight: 700;">TH&Ocirc;NG B&Aacute;O</span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 16px; text-align: center;">
	<span style="box-sizing: border-box; font-weight: 700;"><em style="box-sizing: border-box;">Điểm trung b&igrave;nh x&eacute;t học bổng khuyến kh&iacute;ch học tập v&agrave; kết quả r&egrave;n luyện của SV</em></span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 16px; text-align: center;">
	<span style="box-sizing: border-box; font-weight: 700;"><em style="box-sizing: border-box;">học kỳ 1 năm học 2018-2019</em></span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 16px; text-align: justify;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph&ograve;ng CTSV c&ocirc;ng bố kết quả học tập v&agrave; r&egrave;n luyện của SV học kỳ 1, năm học: 2018-2019 (c&oacute; danh s&aacute;ch k&egrave;m theo _ file&nbsp;<a href="http://congtacsinhvien.tdmu.edu.vn/wp-content/uploads/2019/04/ket-qua-HT_RL_20181.xlsx" style="box-sizing: border-box; text-decoration-line: none; background-color: transparent; color: rgb(51, 122, 183); opacity: 0.8;">ket qua HT_RL_20181</a>&nbsp;). C&aacute;c sai s&oacute;t li&ecirc;n quan SV li&ecirc;n hệ c&aacute;c chương tr&igrave;nh đ&agrave;o tạo để được kiểm tra, điều chỉnh.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 16px; text-align: justify;">
	Lưu &yacute;: Theo khoản 5 điều 14 Quy chế đ&aacute;nh gi&aacute; kết quả r&egrave;n luyện của người học được đ&agrave;o tạo tr&igrave;nh độ đại&nbsp; học hệ ch&iacute;nh quy, ban h&agrave;nh k&egrave;m theo th&ocirc;ng tư số 16/2015/TT-BGDĐT Ng&agrave;y 12 th&aacute;ng 8 năm 2015 của Bộ trưởng Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 16px; text-align: justify;">
	<span style="box-sizing: border-box; font-weight: 700;">Điều 14. Sử dụng kết quả</span></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 16px; text-align: justify;">
	&hellip;&hellip;..</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 16px; text-align: justify;">
	5. Người học bị xếp loại r&egrave;n luyện yếu, k&eacute;m trong hai học kỳ li&ecirc;n tiếp th&igrave; phải tạm ngừng học &iacute;t nhất một học kỳ ở học kỳ tiếp theo v&agrave; nếu bị xếp loại r&egrave;n luyện yếu, k&eacute;m hai học kỳ li&ecirc;n tiếp lần thứ hai th&igrave; sẽ bị buộc th&ocirc;i học.</p>
', N'', CAST(N'2019-05-10T13:38:00.000' AS DateTime), CAST(N'2019-05-10T13:38:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[HSSVTintuc] OFF
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [name], [nameSlide], [duongdan], [IsSlide]) VALUES (1, N'Truong - Slide 01', N'slidepageslider0-object2029783079', N'web.Truong', 0)
INSERT [dbo].[Slide] ([ID], [name], [nameSlide], [duongdan], [IsSlide]) VALUES (2, N'Truong - Slide 02', N'slidepageslider1-object1350561976', N'web.Truong', 0)
INSERT [dbo].[Slide] ([ID], [name], [nameSlide], [duongdan], [IsSlide]) VALUES (3, N'Tuyen sinh - Slide 01', N'slidepageslider0-object2029783079', N'web.Tuyensinh', 0)
INSERT [dbo].[Slide] ([ID], [name], [nameSlide], [duongdan], [IsSlide]) VALUES (4, N'Tuyen sinh - Slide 02', N'slidepageslider1-object1350561976', N'web.Tuyensinh', 0)
INSERT [dbo].[Slide] ([ID], [name], [nameSlide], [duongdan], [IsSlide]) VALUES (5, N'Dao tao - Slide 01', N'slidepageslider0-object2029783079', N'web.PhongDaotao', 0)
INSERT [dbo].[Slide] ([ID], [name], [nameSlide], [duongdan], [IsSlide]) VALUES (6, N'Dao tao - Slide 02', N'slidepageslider1-object1350561976', N'web.PhongDaotao', 0)
INSERT [dbo].[Slide] ([ID], [name], [nameSlide], [duongdan], [IsSlide]) VALUES (7, N'Cong tac sinh vien - Slide 01', N'slidepageslider0-object2029783079', N'web.PhongCongtacHSSV', 0)
INSERT [dbo].[Slide] ([ID], [name], [nameSlide], [duongdan], [IsSlide]) VALUES (8, N'Cong tac sinh vien - Slide 02', N'slidepageslider1-object1350561976', N'web.PhongCongtacHSSV', 0)
SET IDENTITY_INSERT [dbo].[Slide] OFF
SET IDENTITY_INSERT [dbo].[TruongDoanThe] ON 

INSERT [dbo].[TruongDoanThe] ([ID], [Chude]) VALUES (1, N'Chi bộ')
INSERT [dbo].[TruongDoanThe] ([ID], [Chude]) VALUES (2, N'Hội cứu sinh viên')
INSERT [dbo].[TruongDoanThe] ([ID], [Chude]) VALUES (3, N'Công đoàn')
INSERT [dbo].[TruongDoanThe] ([ID], [Chude]) VALUES (4, N'Đoàn thanh niên')
INSERT [dbo].[TruongDoanThe] ([ID], [Chude]) VALUES (5, N'Hội sinh viên')
SET IDENTITY_INSERT [dbo].[TruongDoanThe] OFF
SET IDENTITY_INSERT [dbo].[TruongDoanTheTintuc] ON 

INSERT [dbo].[TruongDoanTheTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (15, 1, N'fsdf', N'', N'<p>
	VZv</p>
', N'', CAST(N'2018-10-17T21:38:00.000' AS DateTime), CAST(N'2018-10-17T21:38:00.000' AS DateTime), 0)
INSERT [dbo].[TruongDoanTheTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (17, 1, N'Báo cáo giữa nhiệm kỳ 2015 - 2020', N'', N'<table align="center" border="0" cellpadding="0" cellspacing="0" width="707">
	<tbody>
		<tr>
			<td style="width:373px;">
				<h2 align="center">
					ĐẢNG BỘ HUYỆN&nbsp; CỦ CHI</h2>
			</td>
			<td style="width:335px;">
				<h1 align="center">
					ĐẢNG CỘNG SẢN VIỆT NAM</h1>
			</td>
		</tr>
		<tr>
			<td style="width:373px;height:21px;">
				<h4>
					CHI BỘ TRƯỜNG TRUNG CẤP NGHỀ CỦ CHI</h4>
				<p align="center">
					*</p>
			</td>
			<td style="width:335px;height:21px;">
				<h2 align="center">
					<img height="2" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif" width="233" /></h2>
			</td>
		</tr>
		<tr>
			<td style="width:373px;">
				<p align="center">
					Số:&shy;&shy;____- BC/CB</p>
			</td>
			<td style="width:335px;">
				<p align="center">
					Củ Chi,&nbsp; ng&agrave;y &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;th&aacute;ng &nbsp;&nbsp;&nbsp;năm 2018</p>
			</td>
		</tr>
	</tbody>
</table>
<div style="clear:both;">
	&nbsp;</div>
<p>
	&nbsp;</p>
<p align="center">
	<strong>B&Aacute;O C&Aacute;O</strong></p>
<p align="center">
	<strong>Kiểm điểm đ&aacute;nh gi&aacute; giữa nhiệm kỳ về kết quả thực hiện Nghị quyết</strong></p>
<p align="center">
	<strong>Đại hội Đảng bộ huyện lần thứ XI v&agrave; Nghị quyết Chi bộ nhiệm kỳ 2015-2020</strong></p>
<p>
	&nbsp;</p>
<p>
	<strong>I. ĐẶC ĐIỂM - T&Igrave;NH H&Igrave;NH:</strong></p>
<p>
	<strong>1.</strong> Chi ủy chi bộ v&agrave; Hiệu trưởng trường Trung cấp nghề Củ Chi đ&atilde; triển khai qu&aacute;n triệt Nghị quyết chi bộ lần thứ V &ndash; nhiệm kỳ 2015-2020 trong to&agrave;n thể c&aacute;n bộ, đảng vi&ecirc;n của trường; sau Đại hội Đảng bộ huyện, Chi ủy cũng đ&atilde; nghi&ecirc;m t&uacute;c triển khai, tổ chức thảo luận, c&aacute;c vấn đề c&oacute; li&ecirc;n quan đến lĩnh vực nh&agrave; trường được tập thể n&ecirc;u &yacute; kiến b&agrave;n bạc v&agrave; t&igrave;m hiểu kỹ lưỡng như: c&ocirc;ng t&aacute;c gi&aacute;o dục &ndash; đ&agrave;o tạo, c&ocirc;ng t&aacute;c gi&aacute;o dục nghề nghiệp.</p>
<p>
	<strong>2.</strong> Chi bộ đ&atilde; l&atilde;nh đạo Ban gi&aacute;m hiệu&nbsp; chỉ đạo c&aacute;c ph&ograve;ng, khoa, tổ vận dụng Nghị quyết để x&acirc;y dựng c&aacute;c kế hoạch d&agrave;i hạn, ngắn hạn cho bộ phận m&igrave;nh để hoạt động đ&uacute;ng hướng nhằm đạt mục ti&ecirc;u đ&atilde; đề ra.</p>
<p>
	<strong>3.</strong> Nh&acirc;n sự Chi ủy tử đầu nhiệm kỳ đến nay gồm c&oacute; 03 đồng ch&iacute; (B&iacute; thư, Ph&oacute; b&iacute; thư v&agrave; 01 Chi ủy vi&ecirc;n). Chi bộ hiện nay c&oacute; 26 đảng vi&ecirc;n (24 đảng vi&ecirc;n ch&iacute;nh thức v&agrave; 02 đảng vi&ecirc;n dự bị); Chi bộ đ&atilde; gửi văn bản cho Ban Tổ chức Huyện ủy xin bổ sung th&ecirc;m 02 chi &ugrave;y vi&ecirc;n để thuận lợi trong hoạt động.</p>
<p>
	<strong>4. Thuận lợi &ndash; kh&oacute; khăn:</strong></p>
<p>
	<strong><em>a. Thuận lợi:</em></strong></p>
<p>
	- Được sự quan t&acirc;m l&atilde;nh đạo của Huyện ủy, Ủy ban nh&acirc;n d&acirc;n huyện, Sở Lao động &ndash; Thương binh v&agrave; X&atilde; hội th&agrave;nh phố.</p>
<p>
	- Tập thể c&aacute;n bộ, gi&aacute;o vi&ecirc;n, nh&acirc;n vi&ecirc;n nh&agrave; trường đo&agrave;n kết, c&oacute; nhiều cố gắng trong c&ocirc;ng t&aacute;c.</p>
<p>
	<strong><em>b. Kh&oacute; khăn:</em></strong></p>
<p>
	- Cơ sở vật chất của trường xuống cấp, chưa được cấp kinh ph&iacute; duy tu sửa chữa.</p>
<p>
	- Trang thiết bị phục vụ giảng dạy chưa đ&aacute;p ứng y&ecirc;u cầu.</p>
<p>
	- Đội ngũ gi&aacute;o vi&ecirc;n cơ hữu c&ograve;n thiếu, kể cả c&aacute;c nghề trọng điểm.</p>
<p>
	&nbsp;</p>
<p>
	<strong>II. KẾT QUẢ GIỮA NHIỆM KỲ TRIỂN KHAI THỰC HIỆN NGHỊ QUYẾT:</strong></p>
<p>
	<strong>1. L&atilde;nh đạo thực hiện nhiệm vụ ch&iacute;nh trị:</strong></p>
<p>
	<strong><em>1.1. C&ocirc;ng t&aacute;c tuyển sinh:</em></strong></p>
<p>
	H&agrave;ng năm nh&agrave; trường thực hiện kế hoạch phối hợp với Ph&ograve;ng Gi&aacute;o dục &ndash; Đ&agrave;o tạo v&agrave; c&aacute;c trường trung học cơ sở, trung học phổ th&ocirc;ng trong huyện tổ chức tư vấn cho học sinh v&agrave; phụ huynh nhằm định hướng ph&acirc;n luồng học sinh v&agrave;o học nghề.</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:66px;">
				<p align="center" style="margin-left:-.8pt;">
					&nbsp;</p>
				<p align="center" style="margin-left:-.8pt;">
					<strong>Năm</strong></p>
			</td>
			<td style="width:72px;">
				<p align="center">
					<strong>Chỉ ti&ecirc;u tuyển sinh</strong></p>
			</td>
			<td style="width:72px;">
				<p align="center">
					<strong>SL tuyển sinh</strong></p>
			</td>
			<td style="width:76px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>Tỉ lệ</strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:66px;">
				<p align="center">
					2015</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					350</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					272</p>
			</td>
			<td style="width:76px;">
				<p align="center">
					77,71%</p>
			</td>
		</tr>
		<tr>
			<td style="width:66px;">
				<p align="center">
					2016</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					350</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					305</p>
			</td>
			<td style="width:76px;">
				<p align="center">
					87,14%</p>
			</td>
		</tr>
		<tr>
			<td style="width:66px;">
				<p align="center">
					2017</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					345</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					392</p>
			</td>
			<td style="width:76px;">
				<p align="center">
					113,62%</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	C&ocirc;ng t&aacute;c tuyển sinh c&oacute; chiều hướng ph&aacute;t triển tốt, thu h&uacute;t ng&agrave;y c&agrave;ng nhiều học sinh chọn hướng học nghề.</p>
<p>
	<strong><em>1.2. Kết quả đ&agrave;o tạo:</em></strong></p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:68px;">
				<p align="center" style="margin-left:-.8pt;">
					<strong>Năm</strong></p>
			</td>
			<td colspan="2" style="width:168px;">
				<p align="center">
					<strong>TN Văn h&oacute;a</strong></p>
			</td>
			<td colspan="2" style="width:182px;">
				<p align="center">
					<strong>TN nghề</strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center" style="margin-left:-.8pt;">
					&nbsp;</p>
			</td>
			<td style="width:84px;">
				<p>
					Chỉ ti&ecirc;u</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					Kết quả</p>
			</td>
			<td style="width:91px;">
				<p>
					Chỉ ti&ecirc;u</p>
			</td>
			<td style="width:91px;">
				<p align="center">
					Kết quả</p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2015</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					98%</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					100%</p>
			</td>
			<td style="width:91px;">
				<p align="center">
					98%</p>
			</td>
			<td style="width:91px;">
				<p align="center">
					100%</p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2016</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					100%</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					98,70%</p>
			</td>
			<td style="width:91px;">
				<p align="center">
					100%</p>
			</td>
			<td style="width:91px;">
				<p align="center">
					98,18%</p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2017</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					98%</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					100%</p>
			</td>
			<td style="width:91px;">
				<p align="center">
					98%</p>
			</td>
			<td style="width:91px;">
				<p align="center">
					100%</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kết quả tốt nghiệp nghề v&agrave; tốt nghiệp văn h&oacute;a h&agrave;ng năm ho&agrave;n th&agrave;nh tốt chỉ ti&ecirc;u đề ra.</p>
<p>
	<strong><em>1.3. Chất lượng đ&agrave;o tạo:</em></strong></p>
<table border="1" cellpadding="0" cellspacing="0" style="width:386px;" width="386">
	<tbody>
		<tr>
			<td style="width:65px;">
				<p align="center" style="margin-left:-.8pt;">
					<strong>Năm</strong></p>
			</td>
			<td colspan="2" style="width:156px;">
				<p align="center">
					<strong>KQ học tập</strong></p>
			</td>
			<td colspan="2" style="width:165px;">
				<p align="center">
					<strong>KQ r&egrave;n luyện</strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:65px;">
				<p align="center" style="margin-left:-.8pt;">
					&nbsp;</p>
			</td>
			<td style="width:77px;">
				<p>
					Chỉ ti&ecirc;u</p>
			</td>
			<td style="width:80px;">
				<p align="center">
					Kết quả</p>
			</td>
			<td style="width:82px;">
				<p>
					Chỉ ti&ecirc;u</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					Kết quả</p>
			</td>
		</tr>
		<tr>
			<td style="width:65px;">
				<p align="center">
					2015</p>
			</td>
			<td style="width:77px;">
				<p align="center">
					90%</p>
			</td>
			<td style="width:80px;">
				<p align="center">
					90,77%</p>
			</td>
			<td style="width:82px;">
				<p align="center">
					90%</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					89,60%</p>
			</td>
		</tr>
		<tr>
			<td style="width:65px;">
				<p align="center">
					2016</p>
			</td>
			<td style="width:77px;">
				<p align="center">
					95%</p>
			</td>
			<td style="width:80px;">
				<p align="center">
					85,70%</p>
			</td>
			<td style="width:82px;">
				<p align="center">
					95%</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					81,90%</p>
			</td>
		</tr>
		<tr>
			<td style="width:65px;">
				<p align="center">
					2017</p>
			</td>
			<td style="width:77px;">
				<p align="center">
					90%</p>
			</td>
			<td style="width:80px;">
				<p align="center">
					87,90%</p>
			</td>
			<td style="width:82px;">
				<p align="center">
					90%</p>
			</td>
			<td style="width:84px;">
				<p align="center">
					82,80%</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	Kết quả học tập v&agrave; kết quả r&egrave;n luyện h&agrave;ng năm chưa đạt chỉ ti&ecirc;u đề ra.</p>
<p>
	<strong>Nguy&ecirc;n nh&acirc;n:</strong> do một số học sinh l&uacute;c v&agrave;o trường c&oacute; học lực yếu n&ecirc;n học kh&ocirc;ng đạt y&ecirc;u cầu một số m&ocirc;n; một số học sinh đi học kh&ocirc;ng đều dẫn đến bị cấm thi cuối m&ocirc;n.</p>
<p>
	<strong>Biện ph&aacute;p:</strong> Tổ chủ nhiệm, trưởng khoa cần chỉ đạo phối hợp tốt hơn giữa gi&aacute;o vi&ecirc;n bộ m&ocirc;n, gi&aacute;o vi&ecirc;n chủ nhiệm v&agrave; phụ huynh để gi&aacute;o dục động cơ, th&aacute;i độ học tập cho học sinh.</p>
<p>
	<strong><em>1.4. Bi&ecirc;n soạn gi&aacute;o tr&igrave;nh:</em></strong></p>
<p>
	Đ&atilde; bi&ecirc;n soạn gi&aacute;o tr&igrave;nh của 08 nghề hệ trung cấp được 106/134 gi&aacute;o tr&igrave;nh, đạt 79,10%. Hiện nay chương tr&igrave;nh đ&agrave;o tạo đ&atilde; thay đổi, cần phải điều chỉnh lại gi&aacute;o tr&igrave;nh.</p>
<p>
	Từ nay đến năm 2020 sẽ ho&agrave;n th&agrave;nh chỉ ti&ecirc;u 100% gi&aacute;o tr&igrave;nh c&aacute;c nghề đ&agrave;o tạo được cập nhật theo chương tr&igrave;nh mới.</p>
<p>
	<strong>Biện ph&aacute;p: </strong>Chi ủy c&oacute; nghị quyết chỉ đạo, ban gi&aacute;m hiện theo d&otilde;i v&agrave; chỉ đạo ph&ograve;ng đ&agrave;o tạo, c&aacute;c khoa bi&ecirc;n soạn, cập nhật gi&aacute;o tr&igrave;nh cho tất cả c&aacute;c nghề của trường.</p>
<p>
	<strong><em>1.5. X&acirc;y dựng nghề mới:</em></strong></p>
<p>
	Chỉ ti&ecirc;u đầu nhiệm kỳ: Hệ trung cấp ph&aacute;t triển 02 nghề mới, hệ sơ cấp ph&aacute;t triển 05 nghề mới, đến nay chưa mở được nghề mới.</p>
<p>
	<strong>Nguy&ecirc;n nh&acirc;n:</strong> do kh&oacute; khăn về trang thiết bị v&agrave; nh&acirc;n sự; l&atilde;nh đạo trường thiếu quan t&acirc;m chỉ đạo kịp thời.</p>
<p>
	<strong>Biện ph&aacute;p:</strong> Chi ủy, BGH xem x&eacute;t điều kiện thực tế của trường chọn mở 02 nghề trung cấp mới: Lắp đặt điện v&agrave; Quản trị mạng; 05 nghề sơ cấp mới theo nhu cầu thực tế của c&aacute;c x&atilde; trong chương tr&igrave;nh dạy nghề cho lao động n&ocirc;ng th&ocirc;n.</p>
<p>
	<strong><em>1.6. C&ocirc;ng t&aacute;c dạy nghề cho lao động n&ocirc;ng th&ocirc;n:</em></strong></p>
<p>
	Đ&acirc;y l&agrave; chỉ ti&ecirc;u li&ecirc;n quan đế Nghị quyết Đại hội Đảng bộ huyện. Chi bộ đ&atilde; l&atilde;nh đạo nh&agrave; trường ho&agrave;n th&agrave;nh vượt mức chỉ ti&ecirc;u huyện giao h&agrave;ng năm.</p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:68px;">
				<p align="center" style="margin-left:-.8pt;">
					<strong>Năm</strong></p>
			</td>
			<td style="width:72px;">
				<p align="center">
					<strong>Chỉ ti&ecirc;u </strong></p>
			</td>
			<td style="width:81px;">
				<p align="center">
					<strong>Kết quả</strong></p>
			</td>
			<td style="width:81px;">
				<p align="center">
					<strong>Tỉ lệ đạt</strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2015</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					1200</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					1491</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					124,75%</p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2016</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					1260</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					1694</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					134,44%</p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2017</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					1260</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					1498</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					118,90%</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	<strong><em>1.7. C&ocirc;ng t&aacute;c giải quyết việc l&agrave;m cho học sinh:</em></strong> h&agrave;ng năm, nh&agrave; trường li&ecirc;n hệ với c&aacute;c c&ocirc;ng ty, x&iacute; nghiệp giới thiệu học sinh tốt nghiệp v&agrave;o l&agrave;m việc đạt tr&ecirc;n 90%, ho&agrave;n th&agrave;nh tốt chỉ ti&ecirc;u đ&atilde; đề ra. Tuy nhi&ecirc;n ph&ograve;ng C&ocirc;ng t&aacute;c HS-SV cần củng cố hồ sơ minh chứng c&ocirc;ng t&aacute;c giải quyết việc l&agrave;m chặt chẽ hơn.</p>
<p>
	<strong><em>1.8. Quản l&yacute; t&agrave;i sản, trang thiết bị:</em></strong></p>
<p>
	Gi&aacute;o vi&ecirc;n đ&atilde; thường xuy&ecirc;n sử dụng m&aacute;y m&oacute;c, thiết bị phục vụ giảng dạy để gi&uacute;p học sinh tiếp thu tốt kiến thức, h&igrave;nh th&agrave;nh kỹ năng thực h&agrave;nh nghề.</p>
<p>
	T&agrave;i sản, trang thiết bị được quản l&yacute; đ&uacute;ng quy định; hệ thống sổ s&aacute;ch quản l&yacute; t&agrave;i sản, trang thiết bị được thực hiện đủ; quy tr&igrave;nh giao nhận thực hiện r&otilde; r&agrave;ng.</p>
<p>
	<strong>Tồn tại:</strong> - Bị kẻ trộm lấy cắp một số thiết bị của ph&ograve;ng thực h&agrave;nh Th&uacute; y trị gi&aacute; 79.000.000 đồng. <strong>Nguy&ecirc;n nh&acirc;n:</strong> do kẻ gian cố &yacute; theo d&otilde;i lấy trộm v&agrave;o ban đ&ecirc;m. C&aacute;c nh&acirc;n vi&ecirc;n bảo vệ trực trường cần phải tăng cường tr&aacute;ch nhiệm tuần tra để ph&aacute;t hiện kịp thời c&aacute;c t&igrave;nh huống xảy ra.</p>
<p>
	&nbsp;- Cơ sở vật chất , nh&agrave; vệ sinh xuống cấp; việc thanh l&yacute; t&agrave;i sản hư, cũ chưa được tiến h&agrave;nh theo định kỳ.</p>
<p>
	<strong>Biện ph&aacute;p:</strong> Chi ủy, BGH thời gian tới cần phải quan t&acirc;m tham mưu cấp tr&ecirc;n để duy tu cơ sở vật chất; khắc phục việc bảo vệ t&agrave;i sản; thanh l&yacute; thiềt bị hư cũ kh&ocirc;ng c&ograve;n sử dụng.</p>
<p>
	&nbsp;<strong>2 .Về văn h&oacute;a &ndash; x&atilde; hội:</strong></p>
<p>
	- 100% gia đ&igrave;nh c&aacute;n bộ, đảng vi&ecirc;n của trường đạt chuẩn gia đ&igrave;nh văn h&oacute;a tại địa phương nơi cư tr&uacute;.</p>
<p>
	-100% gia đ&igrave;nh c&aacute;n bộ, đảng vi&ecirc;n của trường sử dụng nước sạch tại địa phương nơi cư tr&uacute;.</p>
<p>
	<strong>3. Về quốc ph&ograve;ng, an ninh:</strong></p>
<p>
	Nh&agrave; trường đ&atilde; th&agrave;nh lập đội tự vệ của trường; đ&atilde; c&oacute; phương &aacute;n ph&ograve;ng ch&aacute;y chữa ch&aacute;y theo quy định, thường xuy&ecirc;n kiểm tra hệ thống thiết bị ph&ograve;ng ch&aacute;y chữa ch&aacute;y.</p>
<p>
	Việc giải quyết khiếu nại, tố c&aacute;o, những vấn đề bức x&uacute;c trong nh&acirc;n d&acirc;n: Đ&atilde; kiểm điểm 02 nh&acirc;n vi&ecirc;n thiếu tế nhị khi giao tiếp với kh&aacute;ch được phản ảnh đến l&atilde;nh đạo trường.</p>
<p>
	<strong>4. C&ocirc;ng t&aacute;c x&acirc;y dựng Đảng, ch&iacute;nh quyền v&agrave; c&ocirc;ng t&aacute;c vận động nh&acirc;n d&acirc;n:</strong></p>
<p>
	<strong><em>4.1. C&ocirc;ng t&aacute;c x&acirc;y dựng Đảng:</em></strong></p>
<p>
	<em>- Về tư tưởng ch&iacute;nh trị:</em></p>
<p>
	Chi bộ, ban gi&aacute;m hiệu đ&atilde; l&atilde;nh đạo 100% c&aacute;n bộ, gi&aacute;o vi&ecirc;n, nh&acirc;n vi&ecirc;n nh&agrave; trường thực hiện Chỉ thị 05-CT/TW về đẩy mạnh học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức, phong c&aacute;ch Hồ Chi Minh; ri&ecirc;ng đối với đảng vi&ecirc;n th&igrave; kết hợp việc thực hiện Chỉ thị 05-CT/TW với việc thực hiện Nghị quyết Trung ương 4 &ndash; Kh&oacute;a XII về x&acirc;y dựng v&agrave; chỉnh đốn Đảng.</p>
<p>
	H&agrave;ng năm, tất cả đảng vi&ecirc;n của chi bộ được chi ủy nơi cư tr&uacute; đ&aacute;nh gi&aacute; thực hiện tốt Quy định số 76-QĐ/TW.</p>
<p>
	Tỉ lệ c&aacute;n bộ, đảng vi&ecirc;n ho&agrave;n th&agrave;nh tốt nhiệm vụ trở l&ecirc;n h&agrave;ng năm:</p>
<p>
	&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:68px;">
				<p align="center" style="margin-left:-.8pt;">
					<strong>Năm</strong></p>
			</td>
			<td style="width:72px;">
				<p align="center">
					<strong>Chỉ ti&ecirc;u </strong></p>
			</td>
			<td style="width:81px;">
				<p align="center">
					<strong>Kết quả</strong></p>
			</td>
			<td style="width:81px;">
				<p align="center">
					<strong>Tỉ lệ đạt</strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2015</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					90%</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					40/57</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					70,18%</p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2016</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					90%</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					48/52</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					92,31%</p>
			</td>
		</tr>
		<tr>
			<td style="width:68px;">
				<p align="center">
					2017</p>
			</td>
			<td style="width:72px;">
				<p align="center">
					90%</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					49/53</p>
			</td>
			<td style="width:81px;">
				<p align="center">
					92,45%</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	<strong>Biện ph&aacute;p ph&aacute;t huy kết quả: </strong>Từng đảng vi&ecirc;n tự gi&aacute;c thực hiện Chỉ thị 05 v&agrave; Nghị quyết Trung ương 4 kh&oacute;a XI &ndash; kh&oacute;a XII về x&acirc;y dựng, chỉnh đốn Đảng, ngăn ngừa suy tho&aacute;i; chi ủy thường xuy&ecirc;n kiểm tra gi&aacute;m s&aacute;t việc thực hiện.</p>
<p>
	<em>Về tổ chức:</em></p>
<p>
	C&ocirc;ng t&aacute;c ph&aacute;t triển đảng vi&ecirc;n mới: chỉ ti&ecirc;u trong cả nhiệm kỳ l&agrave; ph&aacute;t triển 06 đảng vi&ecirc;n mới; từ đầu nhiệm kỳ đến nay chi bộ đ&atilde; ph&aacute;t triển được 07 đảng vi&ecirc;n mới, đạt 116%.</p>
<p>
	C&ocirc;ng t&aacute;c kiểm tra, gi&aacute;m s&aacute;t: h&agrave;ng năm chi bộ ho&agrave;n th&agrave;nh tốt chương tr&igrave;nh kiểm tra, gi&aacute;m s&aacute;t đ&atilde; đề ra; từ đầu nhiệm kỳ đến nay chi bộ tiến h&agrave;nh kiểm tra, gi&aacute;m s&aacute;t 12 đảng vi&ecirc;n, ho&agrave;n th&agrave;nh 100% chỉ ti&ecirc;u h&agrave;ng năm. Tồn tại: việc thực hiện b&aacute;o c&aacute;o trong kiểm tra, gi&aacute;m s&aacute;t chưa đạt y&ecirc;u cầu. Xếp loại: 02 năm 2015, 2016 đạt loại xuất sắc, năm 2017 đạt loại ti&ecirc;n tiến.</p>
<p>
	Nền nếp v&agrave; nội dung sinh hoạt chi bộ được bảo đảm theo y&ecirc;u cầu của Chỉ thị 10 v&agrave; Hướng dẫn 09.</p>
<p>
	<strong>Hạn chế:</strong> c&ocirc;ng t&aacute;c quản l&yacute; đảng vi&ecirc;n chưa đạt kết quả cao, năm 2015 c&oacute; 01 đảng vi&ecirc;n (đ/c Nguyễn Quốc Chương) tham gia c&aacute; độ b&oacute;ng đ&aacute; dẫn tới nợ nần, b&ograve; sinh hoạt Đảng.</p>
<p>
	Xếp loại chi bộ; trong cả 03 năm đầu nhiệm k&yacute; chi bộ được xếp loại Ho&agrave;n th&agrave;nh tốt nhiệm vụ.</p>
<p>
	C&ocirc;ng t&aacute;c tuy&ecirc;n gi&aacute;o: 03 năm li&ecirc;n tục được Huyện ủy xếp loại xuất sắc.</p>
<p>
	C&ocirc;ng t&aacute;c d&acirc;n vận: 02 năm 2015, 2016 xếp loại xuất sắc; năm 2015 xếp loại ti&ecirc;n tiến.</p>
<p>
	<strong>Biện ph&aacute;p:</strong> Chi ủy quan t&acirc;m thực hiện tốt hơn c&ocirc;ng t&aacute;c d&acirc;n vận v&agrave; c&ocirc;ng t&aacute;c kiểm tra &ndash; gi&aacute;m s&aacute;t; ch&uacute; trọng c&ocirc;ng t&aacute;c bồi dưỡng đội ngũ cả về ch&iacute;nh trị lẫn chuy&ecirc;n m&ocirc;n nghiệp vụ.</p>
<p>
	<strong><em>4.2. C&ocirc;ng t&aacute;c x&acirc;y dựng ch&iacute;nh quyền:</em></strong></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	C&ocirc;ng t&aacute;c x&acirc;y dựng đội ngũ c&aacute;n bộ, gi&aacute;o vi&ecirc;n, nh&acirc;n vi&ecirc;n: Tổng số nh&acirc;n sự 51 (CBQL: 15, GV: 15, CNV: 21). Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n: Thạc sĩ: 03; Đại học: 33, Cao đẳng: 03, Trung cấp: 05, dưới trung cấp:&nbsp; 07; đội ngũ GV c&ograve;n 03 người tr&igrave;nh độ cao đảng đang theo học chuẩn h&oacute;a đại học. Tr&igrave;nh độ l&yacute; luận ch&iacute;nh trị: Cao cấp: 02, Trung cấp: 14, Sơ cấp: 20.</p>
<p>
	Hằng năm, mỗi ph&ograve;ng, khoa, đ&atilde; tổ thực hiện một chuy&ecirc;n đề hoặc một tiết thao giảng để bồi dưỡng nhằm n&acirc;ng cao chất lượng chuy&ecirc;n m&ocirc;n nghiệp vụ đạt chỉ ti&ecirc;u Nghị quyết đề ra.</p>
<p>
	Đ&atilde; ho&agrave;n th&agrave;nh c&ocirc;ng t&aacute;c tự kiểm định chất lượng gi&aacute;o dục nghề nghiệp đạt 83/100 điểm; đang tiến h&agrave;nh khắc phục 17 ti&ecirc;u chuẩn c&ograve;n hạn chế.</p>
<p>
	Ngo&agrave;i ra, nh&agrave; trường đ&atilde; x&acirc;y dựng đề &aacute;n n&acirc;ng cấp trường l&ecirc;n bậc cao đẳng theo chỉ đạo của Huyện ủy.</p>
<p>
	Trong 03 năm liền, tập thể trường được xếp loại tập thể Lao động ti&ecirc;n tiến, chưa đạt chỉ ti&ecirc;u đề ra l&agrave; Tập thể lao động xuất sắc.</p>
<p>
	<strong>Biện ph&aacute;p:</strong> Chi ủy, BGH l&atilde;nh đạo tập thể cố gắng phấn đấu về mọi mặt để&nbsp; đạt danh hiệu Tập thể lao động xuất sắc. Phấn đấu đến năm 2020 đạt 100% c&aacute;n bộ quản l&yacute; ph&ograve;ng &ndash; khoa đạt trung cấp l&yacute; luận ch&iacute;nh trị; 15% c&aacute;n bộ, gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ chuy&ecirc;n m&ocirc;n thạc sĩ.</p>
<p>
	<strong><em>4.3. Về l&atilde;nh đạo đo&agrave;n thể:</em></strong></p>
<p>
	<em>a. C&ocirc;ng đo&agrave;n:</em> Đ&atilde; thể hiện tốt chức năng, nhiệm vụ trong nh&agrave; trường. Li&ecirc;n tục 03 năm đầu nhiệm kỳ C&ocirc;ng đo&agrave;n nh&agrave; trường được Li&ecirc;n đo&agrave;n Lao động Huyện xếp loại vững mạnh xuất sắc.</p>
<p>
	<em>b. Đo&agrave;n TNCS Hồ Ch&iacute; Minh: </em></p>
<p>
	Đ&atilde; g&oacute;p phần gi&aacute;o dục truyền thống cho thanh ni&ecirc;n qua c&aacute;c h&igrave;nh thức: tổ chức cho HS nghe b&aacute;o c&aacute;o, xem phim tư liệu, hội thao, văn nghệ, h&aacute;i hoa d&acirc;n chủ nh&acirc;n c&aacute;c ng&agrave;y lễ lớn, 30/4, 19/5, 20/11, 20/12.</p>
<p>
	Gi&aacute;o dục tư tưởng, đạo đức, lối sống cho thanh ni&ecirc;n: thực hiện kế hoạch tronmg HS về học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức, phong c&aacute;ch Hồ Ch&iacute; Minh; th&aacute;i độ giao tiếp, ứng xử c&oacute; văn h&oacute;a; tuy&ecirc;n truền, gi&aacute;o dục ph&aacute;p luật.</p>
<p>
	Gi&aacute;o dục &yacute; thức kỷ luật, động cơ, th&aacute;i độ học tập: sinh hoạt đ&aacute;nh gi&aacute; chuy&ecirc;n cần, kỷ luật h&agrave;ng th&aacute;ng; gi&uacute;p đỡ HS c&oacute; ho&agrave;n cảnh kh&oacute; khăn.</p>
<p>
	Trong 03 năm liền trường được Huyện Đo&agrave;n xếp loại xuất sắc.</p>
<p>
	<strong>Tồn tại:</strong>&nbsp; Việc thu h&uacute;t học sinh tham gia c&aacute;c hoạt động phong tr&agrave;o chưa cao (đạt 70%).</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Biện ph&aacute;p:</strong> Cần tăng cường cong t&aacute;c vận động học sinh tham gia phong tr&agrave;o; kiểm tra học sinh tham gia phong tr&agrave;o để biểu dương, ph&ecirc; b&igrave;nh kịp thới.</p>
<p>
	&nbsp;</p>
<p>
	<strong>III. NHẬN X&Eacute;T, Đ&Aacute;NH GI&Aacute;, B&Agrave;I HỌC KINH NGHIỆM SAU 3 NĂM THỰC HIỆN NGHỊ QUYẾT:</strong></p>
<p>
	C&oacute; 01 chỉ ti&ecirc;u đến nay đ&atilde; ho&agrave;n th&agrave;nh trước thời hạn; chỉ ti&ecirc;u ph&aacute;t triển đảng vi&ecirc;n mới.</p>
<p>
	C&oacute; 16 chỉ ti&ecirc;u thực hiện tốt, dự b&aacute;o sẽ ho&agrave;n th&agrave;nh trước cuối nhiệm kỳ.</p>
<p>
	C&oacute; 06 chỉ ti&ecirc;u đạt thấp hoặ kh&oacute; đạt, cần tăng cường c&aacute;c biện ph&aacute;p để ho&agrave;n th&agrave;nh: CT11-Kết quả học tập, CT12-Kết quả r&egrave;n luyện, CT14-Mở nghề mới, CT18-Quản l&yacute; t&agrave;i sản, CT20-Chi bộ trong sạch vững mạnh, CT21-Tập thể lao động xuất sắc.</p>
<p>
	<strong>Điều chỉnh 02 chỉ ti&ecirc;u:</strong></p>
<p>
	<strong>Chỉ ti&ecirc;u 07:</strong> điều chỉnh lại l&agrave;: H&agrave;ng năm mỗi ph&ograve;ng, khoa, tổ thực hiện 01 chuy&ecirc;n đề theo y&ecirc;u cầu c&ocirc;ng t&aacute;c; khoa, tổ c&oacute; thể thay chuy&ecirc;n đề bằng 01 tiết thao giảng. L&yacute; do: để ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế từng ph&ograve;ng, khoa, tổ.</p>
<p>
	<strong>Chỉ ti&ecirc;u 11: </strong>Kết quả r&egrave;n luyện h&agrave;ng năm đạt 90% thay v&igrave; 98%. L&yacute; do: để đồng bộ với chỉ ti&ecirc;u kết quả học tập.</p>
<p>
	<strong>Bổ sung th&ecirc;m 03 chỉ ti&ecirc;u:</strong></p>
<p>
	<strong>Chỉ ti&ecirc;u 24:</strong> Bồi dưỡng tin học: 100% c&aacute;n bộ quản l&yacute;, chuy&ecirc;n vi&ecirc;n, gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ tin học n&acirc;ng cao; 100% nh&acirc;n vi&ecirc;n đạt tr&igrave;nh độ tin học cơ bản theo quy định Nh&agrave; nước.</p>
<p>
	<strong>Chỉ ti&ecirc;u 25:</strong> Bồi dưỡng ngoại ngữ: 100% chuy&ecirc;n vi&ecirc;n c&aacute;c ph&ograve;ng v&agrave; gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ A2. Trong đ&oacute; 60% đạt tr&igrave;nh độ B1; ri&ecirc;ng gi&aacute;o vi&ecirc;n nghề trọng điểm (Điện c&ocirc;ng nghiệp, C&ocirc;ng nghệ &ocirc; t&ocirc;) phải đạt 90% c&oacute; tr&igrave;nh độ B1.</p>
<p>
	<strong>Chỉ ti&ecirc;u 26: </strong>Thực hiện đ&agrave;o tạo k&eacute;p: tổ chức cho học sinh vừa học tại trường, vừa học học tại x&iacute; nghiệp đạt 02 x&iacute; nghiệp cho 01 nghề.</p>
<p>
	<strong>B&agrave;i học kinh nghiệm:</strong> C&aacute;n bộ quản l&yacute; trường cần s&acirc;u s&aacute;t c&aacute;c bộ phận, c&aacute;n bộ quản l&yacute; ph&ograve;ng, khoa, tổ cần s&acirc;u s&aacute;t gi&aacute;o vi&ecirc;n, nh&acirc;n vi&ecirc;n để kiểm tra, th&uacute;c đẩy v&agrave; tạo điều kiện th&aacute;o gỡ kh&oacute; khăn để ho&agrave;n th&agrave;nh c&ocirc;ng t&aacute;c.</p>
<p>
	&nbsp;</p>
<p>
	<strong>IV. MỤC TI&Ecirc;U, NHIỆM VỤ, GIẢI PH&Aacute;P ĐẾN CUỐI NHIỆM KỲ NĂM 2020:</strong></p>
<p>
	<strong>1. Mục ti&ecirc;u:</strong></p>
<p>
	Tập trung l&atilde;nh đạo hệ thống ch&iacute;nh trị nh&agrave; trường thực hiện c&aacute;c biện ph&aacute;p để ho&agrave;n th&agrave;nh 05 chỉ ti&ecirc;u chưa đạt hoặc chưa thực hiện; tiếp tục thực hiện ho&agrave;n th&agrave;nh 17 chỉ ti&ecirc;u đang tiến triển tốt trước cuối nhiệm kỳ chi bộ năm 2020.</p>
<p>
	Thực hiện tốt c&aacute;c Chương tr&igrave;nh h&agrave;nh động của trường thực&nbsp; hiện Nghị quyết Trung ương 5, Nghị quyết Trung ương 6 (Kh&oacute;a XII).</p>
<p>
	<strong>2. Nhiệm vụ giải ph&aacute;p.</strong></p>
<p>
	2.1. R&agrave; so&aacute;t điều chỉnh, sắp xếp lại bộ m&aacute;y v&agrave; nh&acirc;n sự của trường theo tinh thần Nghị quyết Trung ương 6 kh&oacute;a XII.</p>
<p>
	2.2.Thực hiện ho&agrave;n th&agrave;nh tốt nhiệm vụ ch&iacute;nh trị về c&aacute;c mặt: c&ocirc;ng t&aacute;c tuyển sinh, Kết quả đ&agrave;o tạo, Chất lượng đ&agrave;o tạo, Bi&ecirc;n soạn gi&aacute;o tr&igrave;nh, X&acirc;y dựng nghề mới, C&ocirc;ng t&aacute;c dạy nghề cho lao động n&ocirc;ng th&ocirc;n, C&ocirc;ng t&aacute;c giải quyết việc l&agrave;m cho học sinh, Quản l&yacute; t&agrave;i sản - trang thiết bị.</p>
<p>
	2.3. T&iacute;ch cực đổi mới c&ocirc;ng t&aacute;c quản l&yacute; v&agrave; phương ph&aacute;p giảng dạy ch&uacute; trọng theo hướng t&iacute;ch hợp; đẩy mạnh ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin; tổ chức m&ocirc; h&igrave;nh đ&agrave;o tạo k&eacute;p nhằm n&acirc;ng cao chất lượng đ&agrave;o tạo nghề.</p>
<p>
	2.4. Triển khai thực hiện tốt c&aacute;c nội dựng x&acirc;y dựng Đảng: x&acirc;y dựng chi bộ h&agrave;ng năm ho&agrave;n th&agrave;nh tốt nhiệm vụ trở l&ecirc;n; l&atilde;nh đạo c&aacute;n bộ, đảng vi&ecirc;n thực hiện tốt chủ trương, đường lối của Đảng, ch&iacute;nh s&aacute;ch &ndash; ph&aacute;p luật của Nh&agrave; nước, thực hiện Chỉ thị 05 về đẩy mạnh học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức, phong c&aacute;ch Hồ Chi Minh; kiểm tra, gi&aacute;m s&aacute;t đảng vi&ecirc;n thực hiện Nghị quyết Trung ương 4 Kh&oacute;a XI, Kh&oacute;a XII về x&acirc;y dựng v&agrave; chỉnh đốn Đảng.</p>
<p>
	2.5. L&atilde;nh đạo việc chức bồi dưỡng đội ngũ về ch&iacute;nh trị, chuy&ecirc;n m&ocirc;n nghiệp vụ, tin học, ngoại ngữ đ&aacute;p ứng y&ecirc;u cầu x&atilde; hội hi&ecirc;n nay.</p>
<p>
	2.6. L&atilde;nh đạo c&aacute;c đo&agrave;n thể hoạt động tốt, giữ vững danh hiệu h&agrave;ng năm đạt loại xuất sắc.</p>
<p>
	&nbsp;</p>
<p>
	<strong>V. KIẾN NGHỊ VỚI BAN CHẤP H&Agrave;NH:</strong></p>
<p>
	Đề nghị L&atilde;nh đạo Huyện ủy chỉ đạo c&aacute;c ng&agrave;nh c&oacute; li&ecirc;n quan xem x&eacute;t cấp kinh ph&iacute; duy tu cơ sở vật chất của trường./.</p>
<p>
	&nbsp;</p>
<table border="0" cellpadding="0" cellspacing="0" style="width:657px;" width="657">
	<tbody>
		<tr>
			<td style="width:228px;">
				<p>
					<strong><em>Nơi nhận:</em></strong></p>
				<p>
					- Tổ phụ tr&aacute;ch CB của HU</p>
				<p>
					- Văn ph&ograve;ng HUCC;</p>
				<p>
					- Lưu.</p>
				<p>
					&nbsp;</p>
				<p>
					&nbsp;</p>
				<p>
					&nbsp;</p>
			</td>
			<td style="width:429px;">
				<p align="center" style="margin-left:1.7pt;">
					<strong>TM. CHI ỦY </strong></p>
				<p align="center">
					B&Iacute; THƯ</p>
				<p align="center">
					&nbsp;</p>
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>L&ecirc; Đ&igrave;nh H&ugrave;ng</strong></p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-10-17T21:52:00.000' AS DateTime), CAST(N'2018-10-17T21:52:00.000' AS DateTime), 1)
INSERT [dbo].[TruongDoanTheTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (18, 1, N'Chương trình hành động NQ TW7', N'Chương trình hành động NQ TW7', N'<table align="center" border="0" cellpadding="0" cellspacing="0" width="707">
	<tbody>
		<tr>
			<td style="width:373px;">
				<h2 align="center">
					ĐẢNG BỘ HUYỆN&nbsp; CỦ CHI</h2>
			</td>
			<td style="width:335px;">
				<h1 align="center">
					ĐẢNG CỘNG SẢN VIỆT NAM</h1>
			</td>
		</tr>
		<tr>
			<td style="width:373px;height:21px;">
				<h4>
					CHI BỘ TRƯỜNG TRUNG CẤP NGHỀ CỦ CHI</h4>
				<p align="center">
					*</p>
			</td>
			<td style="width:335px;height:21px;">
				<h2 align="center">
					<img height="2" src="file:///C:/Users/ADMINI~1/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif" width="233" /></h2>
			</td>
		</tr>
		<tr>
			<td style="width:373px;">
				<p align="center">
					Số:&shy;&shy;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;-CT/CB</p>
			</td>
			<td style="width:335px;">
				<p align="center">
					Củ Chi,&nbsp; ng&agrave;y &nbsp;&nbsp;&nbsp;th&aacute;ng &nbsp;&nbsp;&nbsp;&nbsp;năm 2018</p>
			</td>
		</tr>
	</tbody>
</table>
<div style="clear:both;">
	&nbsp;</div>
<p>
	<strong><em>DỰ THẢO</em></strong></p>
<p align="center">
	<strong>CHƯƠNG TR&Igrave;NH H&Agrave;NH ĐỘNG</strong></p>
<p align="center">
	<strong>Thực hiện Nghị quyết Hội nghị lần thứ bảy Ban Chấp h&agrave;nh</strong></p>
<p align="center">
	<strong>Trung ương Đảng (kh&oacute;a XII) của Trường Trung cấp nghề Củ Chi</strong></p>
<p>
	&nbsp;</p>
<p>
	Ban Chấp h&agrave;nh Trung ương Đảng đ&atilde; ban h&agrave;nh Nghị quyết số 26-NQ/TW&nbsp; ng&agrave;y 19 th&aacute;ng 5 năm 2018 về tập trung x&acirc;y dựng đội ngũ c&aacute;n bộ c&aacute;c cấp, nhất l&agrave; cấp chiến lược, đủ phẩm chất, năng lực v&agrave; uy t&iacute;n, ngang tầm nhiệm vụ; Nghị quyết số 27-NQ/TW 21 th&aacute;ng 5 năm 2018 về cải c&aacute;ch ch&iacute;nh s&aacute;ch tiền lương đối với c&aacute;n bộ, c&ocirc;ng chức, vi&ecirc;n chức, lực lượng vũ trang v&agrave; người lao động trong doanh nghiệp; Nghị quyết số 28-NQ/TW ng&agrave;y 23 th&aacute;ng 5 năm 2018 về cải c&aacute;ch ch&iacute;nh s&aacute;ch bảo hiểm x&atilde; hội. Chấp h&agrave;nh sự chỉ đạo của Huyện ủy Củ Chi; nhằm thực hiện nội dung Nghị quyết Hội nghị lần thứ bảy Ban Chấp h&agrave;nh Trung ương Đảng (Kh&oacute;a XII), Chi bộ trường Trung cấp nghề Củ Chi x&acirc;y dựng Chương tr&igrave;nh h&agrave;nh động thực hiện c&aacute;c Nghị quyết n&ecirc;u tr&ecirc;n tại nh&agrave; trường như sau:</p>
<p>
	&nbsp;</p>
<p>
	<strong>A. ĐẶC ĐIỂM, T&Igrave;NH H&Igrave;NH NH&Agrave; TRƯỜNG:</strong></p>
<p>
	Trường Trung cấp nghề Củ Chi l&agrave; đơn vị sự nghiệp đ&agrave;o tạo nghề trực thuộc UBND Huyện; chịu sự chỉ đạo chuy&ecirc;n m&ocirc;n của Sở Lao động-TBXH Th&agrave;nh phố. H&agrave;ng năm, nh&agrave; trường l&agrave;m nhiệm vụ đ&agrave;o tạo 08 nghề hệ trung cấp ch&iacute;nh quy với 933 học sinh; 31 nghề sơ cấp ngắn hạn m&agrave; đa số l&agrave; c&aacute;c lớp dạy nghề cho lao động n&ocirc;ng th&ocirc;n cho 1.200 người lao động; li&ecirc;n kết với trường Đại học Mở TP.HCM đ&agrave;o tạo 2 lớp hệ đại học từ xa ng&agrave;nh Kinh t&ecirc; &ndash; Luật cho 180 sinh vi&ecirc;n. Trường c&oacute; 51 CB-GV-CNV; chi bộ nh&agrave; trường c&oacute; 27 đảng vi&ecirc;n.</p>
<p>
	Hoạt động của nh&agrave; trường đ&atilde; g&oacute;p phần nhất định trong việc đ&agrave;o tạo nguồn nh&acirc;n lực cho Huyện; sau khi được đ&agrave;o tạo nghề học sinh v&agrave;o l&agrave;m việc trong c&aacute;c c&ocirc;ng ty, doanh nghiệp, cơ quan hoặc lao động sản xuất tại nh&agrave;, tạo thu nhập ổn định cuộc sống. Mặt kh&aacute;c nh&agrave; trường cũng g&oacute;p phần cho c&ocirc;ng t&aacute;c phổ cập gi&aacute;o dục bậc trung học v&igrave; số đ&ocirc;ng học sinh v&agrave;o trường thuộc đối tượng bậc trung học cơ sở nhưng kh&ocirc;ng được tuyển v&agrave;o học hệ gi&aacute;o dục phổ th&ocirc;ng.</p>
<p>
	&nbsp;</p>
<p>
	<strong>B. NỘI DUNG HOẠT ĐỘNG CỦA TRƯỜNG ĐỂ Đ&Aacute;P ỨNG Y&Ecirc;U CẦU CỦA NGHỊ QUYẾT TRUNG ƯƠNG 7 (KH&Oacute;A XII):</strong></p>
<p>
	<strong>I. MỤC TI&Ecirc;U:</strong></p>
<p>
	<strong>1. </strong>X&acirc;y dựng đội ngũ c&aacute;n bộ, vi&ecirc;n chức nhất l&agrave; c&aacute;n bộ quản l&yacute; c&oacute; phẩm chất, năng lực, uy t&iacute;n, ngang t&acirc;m nhiệm vụ, đủ về số lượng, c&oacute; chất lượng v&agrave; cơ cấu ph&ugrave; hợp với chiến lược ph&aacute;t triển của nh&agrave; trường.</p>
<p>
	<strong>2. </strong>Chuẩn h&oacute;a đội ngũ c&aacute;n bộ quản l&yacute;, gi&aacute;o vi&ecirc;n đ&uacute;ng y&ecirc;u cầu của Bộ v&agrave; Sở&nbsp; động &ndash; Thương binh &ndash; X&atilde; hội to&agrave;n diện về chuy&ecirc;n m&ocirc; nghiệp vụ, l&yacute; luận ch&iacute;nh trị, ngoại ngữ, tin học.</p>
<p>
	<strong>3. </strong>Thực hiện đủ, đ&uacute;ng v&agrave; kịp thời chế độ, ch&iacute;nh s&aacute;ch về tiền lương, phụ cấp, thu nhập tăng th&ecirc;m, bảo hiểm x&atilde; hội v&agrave; c&aacute;c chế độ kh&aacute;c theo quy định của Nh&agrave; nước cho đội ngũ c&aacute;n bộ, gi&aacute;o vi&ecirc;n, nh&acirc;n vi&ecirc;n của trường.</p>
<p>
	&nbsp;</p>
<p>
	<strong>II. NHỮNG NHIỆM VỤ, GIẢI PH&Aacute;P TRỌNG T&Acirc;M:</strong></p>
<p>
	<strong>1. Thực hiện tốt c&ocirc;ng t&aacute;c tư tưởng ch&iacute;nh trị trong tập thể nh&agrave; trường.</strong></p>
<p>
	- 100% C&aacute;n bộ, đảng vi&ecirc;n của trường nghi&ecirc;m t&uacute;c học tập, qu&aacute;n triệt v&agrave; thực hiện tốt đường lối, nghị quyết của Đảng, ph&aacute;p luật của Nh&agrave; nước, quy chế của Ng&agrave;nh, quy định của nh&agrave; trường.</p>
<p>
	- Từng th&agrave;nh vi&ecirc;n của trường n&ecirc;u cao tinh thần kỷ luật, &yacute; thức tr&aacute;ch nhiệm; đo&agrave;n kết nội bộ, phối hợp tốt trong mọi c&ocirc;ng t&aacute;c.</p>
<p>
	- Chi ủy, ban gi&aacute;m hiệu nh&agrave; trường l&atilde;nh đạo tất cả CB-GV-CNV nh&agrave; trường học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức, phong c&aacute;ch Hồ Ch&iacute; Minh; ngăn chặn sự suy tho&aacute;i về tư tưởng ch&iacute;nh trị, đạo đức, lối sống, những biểu hiện &rdquo;tự diễn biến&rdquo;, &rdquo;tự chuyển h&oacute;a&rdquo; trong nội bộ.</p>
<p>
	<strong>2. Thực hiện kế hoạch đ&agrave;o tạo, bồi dưỡng đội ngũ c&aacute;n bộ, gi&aacute;o vi&ecirc;n, nh&acirc;n vi&ecirc;n.</strong></p>
<p>
	- Thực hiện tốt Kế hoạch Đ&agrave;o tạo, bồi dưỡng vi&ecirc;n chức số 296/KH-TCN ng&agrave;y 27/10/2017 của trường Trung cấp nghề Củ Chi giai đoạn 2017-2021</p>
<p>
	- Bồi dưỡng tin học: 100% c&aacute;n bộ quản l&yacute;, chuy&ecirc;n vi&ecirc;n, gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ tin học n&acirc;ng cao; 100% nh&acirc;n vi&ecirc;n đạt tr&igrave;nh độ tin học cơ bản theo quy định Nh&agrave; nước.</p>
<p>
	- Bồi dưỡng ngoại ngữ: 100% chuy&ecirc;n vi&ecirc;n c&aacute;c ph&ograve;ng v&agrave; gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ A2. Trong đ&oacute; 60% đạt tr&igrave;nh độ B1; ri&ecirc;ng gi&aacute;o vi&ecirc;n nghề trọng điểm (Điện c&ocirc;ng nghiệp, C&ocirc;ng nghệ &ocirc; t&ocirc;) phải đạt 90% c&oacute; tr&igrave;nh độ B1.</p>
<p>
	- H&agrave;ng năm mỗi ph&ograve;ng, khoa, tổ thực hiện 01 chuy&ecirc;n đề theo y&ecirc;u cầu c&ocirc;ng t&aacute;c; khoa, tổ c&oacute; thể thay chuy&ecirc;n đề bằng 01 tiết thao giảng.</p>
<p>
	<strong>3. Sắp xếp bộ m&aacute;y, nh&acirc;n sự nh&agrave; trường tinh gọn, hoạt động hiệu lực, hiệu quả.</strong></p>
<p>
	- Cơ cấu lại c&aacute;c bộ phận ph&ograve;ng, khoa, tổ; sắp xếp lại c&aacute;n bộ, vi&ecirc;n chức, người lao động đ&aacute;p ứng theo vị tr&iacute; việc l&agrave;m của nh&agrave; trường.</p>
<p>
	- Bố tr&iacute; c&aacute;n bộ, gi&aacute;o vi&ecirc;n, nh&acirc;n vi&ecirc;n theo Đề &aacute;n vị tr&iacute; việc l&agrave;m theo y&ecirc;u cầu ph&ugrave; hợp với chuy&ecirc;n m&ocirc;n đ&agrave;o tạo v&agrave; tiết kiệm nh&acirc;n lực.</p>
<p>
	- T&iacute;ch cực tham mưu l&atilde;nh đạo Huyện tăng th&ecirc;m bi&ecirc;n chế v&agrave; tuyển dụng nh&acirc;n sự bổ sung cho trường.</p>
<p>
	<strong>4. Đổi mới nội dung chương tr&igrave;nh, phương ph&aacute;p giảng dạy.</strong></p>
<p>
	- Đến cuối năm 2018, bi&ecirc;n soạn v&agrave; cập nhật xong chương tr&igrave;nh đ&agrave;o tạo cho tất cả c&aacute;c nghề cho ph&ugrave; hợp y&ecirc;u cầu của luật Gi&aacute;o dục nghề nghiệp v&agrave; đ&aacute;p ứng tay nghề l&agrave;m việc cho doanh nghiệp. Trong năm 2018, c&aacute;c khoa, tổ bi&ecirc;n soạn v&agrave; cập nhật gi&aacute;o tr&igrave;nh theo chương tr&igrave;nh đ&agrave;o tạo mới 15 m&ocirc;n học &ndash; m&ocirc; đun cho mỗi nghề.</p>
<p>
	- Tất cả gi&aacute;o vi&ecirc;n &aacute;p dụng c&aacute;c phương ph&aacute;p dạy học mới theo hướng t&iacute;ch cực h&oacute;a người học, tăng cường tổ chức dạy học t&iacute;ch hợp.</p>
<p>
	- Tổ chức h&igrave;nh thức đ&agrave;o tạo k&eacute;p: cho học sinh vừa học tại trường, vừa học học tại x&iacute; nghiệp đạt 02 x&iacute; nghiệp cho 01 nghề.</p>
<p>
	<strong>5. Tăng cường ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin trong c&ocirc;ng t&aacute;c v&agrave; giảng dạy.</strong></p>
<p>
	H&agrave;ng năm, mỗi ph&ograve;ng, khoa, tổ phải x&acirc;y dựng v&agrave; thực hiện kế hoạch ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin v&agrave;o c&ocirc;ng t&aacute;c v&agrave; c&oacute; sơ &ndash; tổng kết đ&aacute;nh gi&aacute;.</p>
<p>
	<strong>6. Thực hiện đ&uacute;ng, đủ, kịp thời mọi chế độ, ch&iacute;nh s&aacute;ch cho đội ngũ c&aacute;n bộ, gi&aacute;o vi&ecirc;n, nh&acirc;n vi&ecirc;n.</strong></p>
<p>
	- Đảm bảo thực hiện tốt chế độ lương, c&aacute;c loại phụ cấp theo đ&uacute;ng quy định nh&agrave; nước; chăm lo về tăng thu nhập, đời sống vật chất, tinh thần cho tập thể.</p>
<p>
	- Thực hiện tốt chế độ bảo hiểm x&atilde; hội, bảo hiểm y tế, ...</p>
<p>
	<strong>7. Thực hiện tốt c&ocirc;ng t&aacute;c quản l&yacute; t&agrave;i ch&iacute;nh, tăng cường cơ sở vật chất.</strong></p>
<p>
	- Hiệu trưởng chỉ đạo ph&ograve;ng T&agrave;i vụ - Cơ sở vật chất thực hiện tốt c&ocirc;ng t&aacute;c dự to&aacute;n, thu, chi quyết to&aacute;n t&agrave;i ch&iacute;nh đ&uacute;ng quy định Nh&agrave; nước.</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Ban gi&aacute;m hiệu nh&agrave; trường t&iacute;ch cực tham mưu với l&atilde;nh đạo c&aacute;c cấp v&agrave; c&aacute;c ban &ndash; ng&agrave;nh về kinh ph&iacute; duy tu, trang bị bổ sung trang thiết bị cho trường.</p>
<p>
	<strong>III. TỔ CHỨC THỰC HIỆN:</strong></p>
<p>
	<strong>1.</strong> Chi bộ, c&aacute;c ph&ograve;ng, khoa, tổ qu&aacute;n triệt chương tr&igrave;nh h&agrave;nh động n&agrave;y trong tất cả th&agrave;nh vi&ecirc;n của bộ phận m&igrave;nh.</p>
<p>
	<strong>2.</strong> Bổ sung c&aacute;c nội dung của chương tr&igrave;nh h&agrave;nh động n&agrave;y v&agrave;o kế hoạch học kỳ, năm của từng đo&agrave;n thể, ph&ograve;ng, khoa, tổ.</p>
<p>
	<strong>3.</strong> Chi ủy, ban gi&aacute;m hiệu, trưởng c&aacute;c đo&agrave;n thể, ph&ograve;ng, khoa, tổ đ&ocirc;n đốc, nhắc nhỡ th&agrave;nh vi&ecirc;n của m&igrave;nh thực hiện c&oacute; hiệu quả chương tr&igrave;nh h&agrave;nh động n&agrave;y./.</p>
<p>
	&nbsp;</p>
<table border="0" cellpadding="0" cellspacing="0" style="width:657px;" width="657">
	<tbody>
		<tr>
			<td style="width:228px;">
				<p>
					<strong><em>Nơi nhận:</em></strong></p>
				<p>
					- Ban T. Gi&aacute;o, UBKT Huyện ủy;</p>
				<p>
					- Chi ủy, HT;</p>
				<p>
					- Trưởng đ.thể, ph&ograve;ng, khoa, tổ;</p>
				<p>
					- Lưu.</p>
			</td>
			<td style="width:429px;">
				<p align="center" style="margin-left:1.7pt;">
					<strong>TM. CHI ỦY </strong></p>
				<p align="center">
					B&Iacute; THƯ</p>
				<p align="center">
					&nbsp;</p>
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>L&ecirc; Đ&igrave;nh H&ugrave;ng</strong></p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-10-17T22:13:00.000' AS DateTime), CAST(N'2018-10-17T22:13:00.000' AS DateTime), 1)
INSERT [dbo].[TruongDoanTheTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (19, 1, N'Bảng 9 tiêu chí cần biểu quyết Hội nghị giữa NK 2015 - 2020', N'', N'<p>
	&nbsp; &nbsp; &nbsp; CHI BỘ TRƯỜNG TCN CỦ CHI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><u>ĐẢNG CỘNG SẢN VIỆT NAM</u></strong></p>
<p>
	<strong>HỘI NGHỊ GIỮA NHIỆM KỲ 2015-2020</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>Củ Chi, ng&agrave;y&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; th&aacute;ng&nbsp;&nbsp;&nbsp;&nbsp; năm 2018</em></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>PHIẾU R&Agrave; SO&Aacute;T</strong></p>
<p align="center">
	<strong>C&aacute;c chỉ ti&ecirc;u Đại hội Chi bộ nhiệm kỳ V &ndash; 2015-2020</strong></p>
<p>
	&nbsp;&nbsp; &nbsp;&nbsp;</p>
<p>
	&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:54px;">
				<p align="center">
					<strong>STT</strong></p>
			</td>
			<td style="width:504px;">
				<p align="center">
					<strong>Chỉ ti&ecirc;u</strong></p>
			</td>
			<td style="width:336px;">
				<p>
					<strong>Ghi ch&uacute;</strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					1</p>
			</td>
			<td style="width:504px;">
				<p>
					100% CB Đảng vi&ecirc;n học tập v&agrave; l&agrave;m theo tấm gương đạo đức Hồ Ch&iacute; Minh theo chủ đề từng năm v&agrave; gắn với chức tr&aacute;ch, nhiệm vụ.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					2</p>
			</td>
			<td style="width:504px;">
				<p>
					H&agrave;ng năm, c&oacute; 100% gia đ&igrave;nh CB đảng vi&ecirc;n đạt ti&ecirc;u chuẩn gia đ&igrave;nh văn h&oacute;a, đơn vị đạt chuẩn văn h&oacute;a.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					3</p>
			</td>
			<td style="width:504px;">
				<p>
					Đến năm 2020, tỉ lệ gia đ&igrave;nh CB đảng vi&ecirc;n sử dụng nước sạch 100%.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					4</p>
			</td>
			<td style="width:504px;">
				<p style="margin-left:3.3pt;">
					Tỉ lệ đảng vi&ecirc;n ho&agrave;n th&agrave;nh tốt nhiệm vụ 90% trở l&ecirc;n.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					5</p>
			</td>
			<td style="width:504px;">
				<p>
					100% đảng vi&ecirc;n thực hiện tốt Quy định 76-QĐ/TW của Bộ Ch&iacute;nh trị về việc đảng vi&ecirc;n giữ mối li&ecirc;n hệ với cấp ủy nơi cư tr&uacute; v&agrave; Quy định số 47-QĐ/TW của BCH Trung ương về những điều đảng vi&ecirc;n kh&ocirc;ng được l&agrave;m.</p>
			</td>
			<td style="width:336px;">
				<p>
					&nbsp;</p>
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					6</p>
			</td>
			<td style="width:504px;">
				<p>
					100% c&aacute;n bộ l&atilde;nh đạo quản l&yacute; đạt chuẩn trung cấp l&yacute; luận ch&iacute;nh trị trở l&ecirc;n.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					7</p>
			</td>
			<td style="width:504px;">
				<p>
					H&agrave;ng năm, mỗi ph&ograve;ng &ndash; khoa &ndash; tổ thực hiện một chuy&ecirc;n đề với nội dung khắc phục những hạn chế, khuyết điểm trong hoạt động của bộ phận m&igrave;nh để n&acirc;ng cao hiệu quả c&ocirc;ng t&aacute;c.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ/chỉnh: H&agrave;ng năm mỗi ph&ograve;ng, khoa, tổ thực hiện 01 chuy&ecirc;n đề theo y&ecirc;u cầu c&ocirc;ng t&aacute;c; khoa, tổ c&oacute; thể thay chuy&ecirc;n đề bằng 01 tiết thao giảng.</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					8</p>
			</td>
			<td style="width:504px;">
				<p>
					Tuyển sinh: Ho&agrave;n th&agrave;nh chỉ ti&ecirc;u của Th&agrave;nh phố v&agrave; Huyện giao.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					9</p>
			</td>
			<td style="width:504px;">
				<p>
					Kết quả đ&agrave;o tạo:</p>
				<ul>
					<li>
						Tốt nghiệp nghề: b&igrave;nh qu&acirc;n h&agrave;ng năm đạt từ 95%.</li>
					<li>
						Tốt nghiệp văn h&oacute;a: b&igrave;nh qu&acirc;n h&agrave;ng năm đạt từ 97%.</li>
				</ul>
			</td>
			<td style="width:336px;">
				<p>
					&nbsp;</p>
				<p>
					&nbsp;</p>
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
				<p>
					&nbsp;</p>
				<p>
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					10</p>
			</td>
			<td style="width:504px;">
				<p>
					Chất lượng đ&agrave;o tạo c&aacute;c hệ:</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chất lượng học tập nghề v&agrave; văn h&oacute;a: đạt từ 90%.</p>
			</td>
			<td style="width:336px;">
				<p>
					Cần tập trung c&aacute;c giải ph&aacute;p&nbsp; mới đạt được.</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					11</p>
			</td>
			<td style="width:504px;">
				<p>
					Kết quả r&egrave;n luyện học sinh: H&agrave;ng năm 98% học sinh đạt y&ecirc;u cầu trở l&ecirc;n (kh&ocirc;ng c&oacute; học sinh yếu, k&eacute;m; kh&ocirc;ng c&oacute; bạo lực học đường v&agrave; kh&ocirc;ng c&oacute; tệ nạn x&atilde; hội trong trường học).</p>
			</td>
			<td style="width:336px;">
				<p>
					&nbsp;</p>
				<p>
					Đ/C: Kết quả r&egrave;n luyện đạt từ 90%.</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					12</p>
			</td>
			<td style="width:504px;">
				<p>
					Tay nghề gi&aacute;o vi&ecirc;n: kh&ocirc;ng c&oacute; gi&aacute;o vi&ecirc;n yếu, k&eacute;m về chuy&ecirc;n m&ocirc;n. 100% gi&aacute;o vi&ecirc;n đạt chuẩn.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					13</p>
			</td>
			<td style="width:504px;">
				<p>
					Gi&aacute;o tr&igrave;nh: 100% c&aacute;c m&ocirc;n học hệ trung cấp, hệ sơ cấp c&oacute; gi&aacute;o tr&igrave;nh v&agrave; cập nhật thường xuy&ecirc;n.</p>
			</td>
			<td style="width:336px;">
				<p>
					Cần tập trung c&aacute;c giải ph&aacute;p&nbsp; mới đạt được.</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					14</p>
			</td>
			<td style="width:504px;">
				<p>
					X&acirc;y dựng th&ecirc;m 07 nghề: (02 nghề trung cấp v&agrave; 05 nghề sơ cấp).</p>
			</td>
			<td style="width:336px;">
				<p>
					Mở 2 nghề TC: Quản trị mạng, Lắp đạt Điện; 5 nghề SC theo nhu cầu DN.LĐNT</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					15</p>
			</td>
			<td style="width:504px;">
				<p>
					Đ&agrave;o tạo nghề lao động n&ocirc;ng th&ocirc;n (Chương tr&igrave;nh 1956): ho&agrave;n th&agrave;nh chỉ ti&ecirc;u do Huyện giao.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					16</p>
			</td>
			<td style="width:504px;">
				<p>
					Giới thiệu giải quyết việc l&agrave;m cho học sinh sau khi tốt nghiệp: h&agrave;ng năm 90%.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm , cần ghi nhận th&ocirc;ng tin chi tiết hơn</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					17</p>
			</td>
			<td style="width:504px;">
				<p>
					Ho&agrave;n chỉnh c&ocirc;ng t&aacute;c tự kiểm định chất lượng dạy nghề (Qu&yacute; 4/2015).</p>
			</td>
			<td style="width:336px;">
				<p>
					Ho&agrave;n chỉnh c&ocirc;ng t&aacute;c tự kiểm định th&aacute;ng 11/2018; đăng k&yacute; kiểm định ngo&agrave;i trong n8am 2019.</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					18</p>
			</td>
			<td style="width:504px;">
				<p>
					T&agrave;i sản:</p>
				<ul>
					<li>
						Tăng cường mua sắm trang thiết bị.</li>
					<li>
						Bảo quản v&agrave; sử dụng hiệu quả: kh&ocirc;ng để mất m&aacute;t v&agrave; tiết kiệm</li>
				</ul>
			</td>
			<td style="width:336px;">
				<p>
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					19</p>
			</td>
			<td style="width:504px;">
				<p>
					Chỉ ti&ecirc;u ph&aacute;t triển Đảng: 06 đảng vi&ecirc;n/ nhiệm kỳ.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; vượt chỉ ti&ecirc;u</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					20</p>
			</td>
			<td style="width:504px;">
				<p>
					Chi bộ: đạt Trong sạch, vững mạnh.</p>
			</td>
			<td style="width:336px;">
				<p>
					Hiện nay y&ecirc;u cầu ti&ecirc;u chuẩn do cấp tr&ecirc;n quy định rất cao; điều kiện của trường kh&oacute; đ&aacute;p ứng; nhưng phải phấn đấu đạt.</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					21</p>
			</td>
			<td style="width:504px;">
				<p>
					Trường: đạt Tập thể lao động xuất sắc.</p>
			</td>
			<td style="width:336px;">
				<p>
					Tiếp tục phấn đấu</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					22</p>
			</td>
			<td style="width:504px;">
				<p>
					C&ocirc;ng đo&agrave;n: đạt Vững mạnh xuất sắc.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					23</p>
			</td>
			<td style="width:504px;">
				<p>
					Đo&agrave;n Thanh ni&ecirc;n: Xuất sắc.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					&nbsp;</p>
			</td>
			<td style="width:504px;">
				<p>
					<strong>CHỈ TI&Ecirc;U BỔ SUNG: 03 chỉ ti&ecirc;u</strong></p>
			</td>
			<td style="width:336px;">
				<p>
					Đ&atilde; đạt h&agrave;ng năm</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					24</p>
			</td>
			<td style="width:504px;">
				<p>
					Bồi dưỡng tin học: 100% c&aacute;n bộ quản l&yacute;, chuy&ecirc;n vi&ecirc;n, gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ tin học n&acirc;ng cao; 100% nh&acirc;n vi&ecirc;n đạt tr&igrave;nh độ tin học cơ bản theo quy định Nh&agrave; nước.</p>
			</td>
			<td style="width:336px;">
				<p>
					&nbsp;</p>
				<p>
					Đang thực hiện từ năm học 2017-2018</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					25</p>
			</td>
			<td style="width:504px;">
				<p>
					Bồi dưỡng ngoại ngữ: 100% chuy&ecirc;n vi&ecirc;n c&aacute;c ph&ograve;ng v&agrave; gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ A2. Trong đ&oacute; 60% đạt tr&igrave;nh độ B1; ri&ecirc;ng gi&aacute;o vi&ecirc;n nghề trọng điểm (Điện c&ocirc;ng nghiệp, C&ocirc;ng nghệ &ocirc; t&ocirc;) phải đạt 90% c&oacute; tr&igrave;nh độ B1.</p>
			</td>
			<td style="width:336px;">
				<p>
					&nbsp;</p>
				<p>
					Đang thực hiện từ năm học 2017-2018</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					26</p>
			</td>
			<td style="width:504px;">
				<p>
					Thực hiện đ&agrave;o tạo k&eacute;p: tổ chức cho học sinh vừa học tại trường, vừa học học tại x&iacute; nghiệp đạt 02 x&iacute; nghiệp cho 01 nghề.</p>
			</td>
			<td style="width:336px;">
				<p>
					Đang thực hiện từ năm học 2017-2018</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>CHI ỦY CHI BỘ TRƯỜNG TRUNG CẤP NGHỀ CC</strong></p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-10-17T22:14:00.000' AS DateTime), CAST(N'2018-10-17T22:14:00.000' AS DateTime), 1)
INSERT [dbo].[TruongDoanTheTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (20, 1, N'Nghị quyết Hội nghị giữa nhiệm kỳ 2015 - 2020', N'', N'<p>
	&nbsp;</p>
<p>
	&nbsp; ĐẢNG BỘ HUYỆN CỦ CHI<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<u>ĐẢNG CỘNG SẢN VIỆT NAM</u></strong></p>
<p>
	<strong>CHI BỘ TRƯỜNG TCN CỦ CHI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><em>Củ Chi, ng&agrave;y 31 th&aacute;ng 8 năm 2018</em></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số:____-NQ/CB</p>
<p align="center">
	&nbsp;</p>
<p align="center">
	<strong>NGHỊ QUYẾT</strong></p>
<p align="center">
	<strong>HỘI NGHỊ GIỮA NHIỆM KỲ V - 2015-2020</strong></p>
<p align="center">
	<strong>CHI BỘ TRƯỜNG TRUNG CẤP NGHỀ CỦ CHI</strong></p>
<p align="center">
	&nbsp;</p>
<p>
	Hội nghị Chi bộ giữa nhiệm kỳ V &ndash; 2015-2020, Chi bộ Trường Trung cấp nghề Củ Chi họp ng&agrave;y 31 th&aacute;ng 8 năm 2018 tại Trường Trung cấp nghề Củ Chi.</p>
<p>
	&nbsp;</p>
<p align="center">
	<strong>QUYẾT NGHỊ</strong></p>
<p>
	&nbsp;</p>
<p>
	<strong>1. T&aacute;n th&agrave;nh</strong> những nội dung cơ bản về đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh 3 năm 2015-2018 v&agrave; phương hướng, mục ti&ecirc;u, nhiệm vụ 2 năm 2018-2020 n&ecirc;u trong B&aacute;o c&aacute;o th&ocirc;ng qua Hội nghị.</p>
<p>
	&nbsp;</p>
<p>
	<strong>1.1. Về đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh 03 năm 2015-2018: </strong></p>
<p>
	Qua nửa nhiệm kỳ 2015-2020, t&igrave;nh h&igrave;nh thực hiện 23 chỉ ti&ecirc;u Nghị quyết chi bộ như sau:</p>
<p>
	<strong><em>a. C&aacute;c chỉ ti&ecirc;u c&oacute; khả năng ho&agrave;n th&agrave;nh tốt đến cuối nhiệm kỳ:</em></strong></p>
<p>
	- C&oacute; 01 chỉ ti&ecirc;u đến nay đ&atilde; ho&agrave;n th&agrave;nh trước thời hạn: chỉ ti&ecirc;u ph&aacute;t triển đảng vi&ecirc;n mới.</p>
<p>
	- C&oacute; 16 chỉ ti&ecirc;u thực hiện tốt, dự b&aacute;o sẽ ho&agrave;n th&agrave;nh trước cuối nhiệm kỳ. Tuy nhi&ecirc;n cần bổ sung nhiều biện ph&aacute;p để thực hiện ho&agrave;n th&agrave;nh:</p>
<p>
	CT1: 100% CB Đảng vi&ecirc;n học tập v&agrave; l&agrave;m theo tấm gương đạo đức Hồ Ch&iacute; Minh theo chủ đề từng năm v&agrave; gắn với chức tr&aacute;ch, nhiệm vụ.</p>
<p>
	CT2: H&agrave;ng năm, c&oacute; 100% gia đ&igrave;nh CB đảng vi&ecirc;n đạt ti&ecirc;u chuẩn gia đ&igrave;nh văn h&oacute;a, đơn vị đạt chuẩn văn h&oacute;a.</p>
<p>
	CT3: Đến năm 2020, tỉ lệ gia đ&igrave;nh CB đảng vi&ecirc;n sử dụng nước sạch 100%.</p>
<p>
	CT4: Tỉ lệ đảng vi&ecirc;n ho&agrave;n th&agrave;nh tốt nhiệm vụ 90% trở l&ecirc;n.</p>
<p>
	CT5: 100% đảng vi&ecirc;n thực hiện tốt Quy định 76-QĐ/TW của Bộ Ch&iacute;nh trị về việc đảng vi&ecirc;n giữ mối li&ecirc;n hệ với cấp ủy nơi cư tr&uacute; v&agrave; Quy định số 47-QĐ/TW của BCH Trung ương về những điều đảng vi&ecirc;n kh&ocirc;ng được l&agrave;m.</p>
<p>
	CT6: 100% c&aacute;n bộ l&atilde;nh đạo quản l&yacute; đạt chuẩn trung cấp l&yacute; luận ch&iacute;nh trị trở l&ecirc;n.</p>
<p>
	CT7: H&agrave;ng năm, mỗi ph&ograve;ng &ndash; khoa &ndash; tổ thực hiện một chuy&ecirc;n đề với nội dung khắc phục .những hạn chế, khuyết điểm trong hoạt động của bộ phận m&igrave;nh để n&acirc;ng cao hiệu quả c&ocirc;ng t&aacute;c.</p>
<p>
	CT8: Tuyển sinh: Ho&agrave;n th&agrave;nh chỉ ti&ecirc;u của Th&agrave;nh phố v&agrave; Huyện giao.</p>
<p>
	CT9: Kết quả đ&agrave;o tạo: Tốt nghiệp nghề: b&igrave;nh qu&acirc;n h&agrave;ng năm đạt từ 95%. Tốt nghiệp văn h&oacute;a: b&igrave;nh qu&acirc;n h&agrave;ng năm đạt từ 97%.</p>
<p>
	CT12: Tay nghề gi&aacute;o vi&ecirc;n: kh&ocirc;ng c&oacute; gi&aacute;o vi&ecirc;n yếu, k&eacute;m về chuy&ecirc;n m&ocirc;n. 100% gi&aacute;o vi&ecirc;n đạt chuẩn.</p>
<p>
	CT13: Gi&aacute;o tr&igrave;nh: 100% c&aacute;c m&ocirc;n học hệ trung cấp, hệ sơ cấp c&oacute; gi&aacute;o tr&igrave;nh v&agrave; cập nhật thường xuy&ecirc;n.</p>
<p>
	CT 14 : X&acirc;y dựng th&ecirc;m 07 nghề trong đ&oacute; 02 nghề Trung cấp l&agrave; Quản Trị mạng, Lắp đặt điện v&agrave; 05 nghề sơ cấp : Cắt uốn t&oacute;c, Nu&ocirc;i c&aacute; nước ngọt, Cắt tỉa rau củ quả, Kết cườm, Kỹ thuật l&agrave;m b&aacute;nh.</p>
<p>
	CT15: Đ&agrave;o tạo nghề lao động n&ocirc;ng th&ocirc;n (Chương tr&igrave;nh 1956): ho&agrave;n th&agrave;nh chỉ ti&ecirc;u do Huyện giao.</p>
<p>
	CT16:&nbsp; Giới thiệu giải quyết việc l&agrave;m cho học sinh sau khi tốt nghiệp: h&agrave;ng năm 90%.</p>
<p>
	CT17: Ho&agrave;n chỉnh c&ocirc;ng t&aacute;c tự kiểm định chất lượng dạy nghề (Qu&yacute; 4/2015).</p>
<p>
	CT19: Chỉ ti&ecirc;u ph&aacute;t triển Đảng: 06 đảng vi&ecirc;n/ nhiệm kỳ.</p>
<p>
	CT 22: C&ocirc;ng đo&agrave;n: đạt Vững mạnh xuất sắc.</p>
<p>
	CT 23: Đo&agrave;n Thanh ni&ecirc;n: Xuất sắc.</p>
<p>
	<strong><em>b. C&aacute;c chỉ ti&ecirc;u kh&oacute; ho&agrave;n th&agrave;nh đến cuối nhiệm kỳ:</em></strong></p>
<p>
	- C&oacute; 06 chỉ ti&ecirc;u đạt thấp hoặc chưa đạt, cần tăng cường c&aacute;c biện ph&aacute;p để ho&agrave;n th&agrave;nh: CT 11: Kết quả học tập, CT12: Kết quả r&egrave;n luyện; CT14: Mở nghề mới; CT18: Quản l&yacute; t&agrave;i sản; CT20: Chi bộ trong sạch vững mạnh; CT21: Tập thể lao động xuất sắc.</p>
<p>
	<strong><em>c. Chi bộ điều chỉnh&nbsp; 02 chỉ ti&ecirc;u từ nay đến 2020:</em></strong></p>
<p style="margin-left:-1.95pt;">
	<strong>Chỉ ti&ecirc;u 07:</strong> điều chỉnh lại l&agrave;: H&agrave;ng năm mỗi ph&ograve;ng, khoa, tổ thực hiện 01 chuy&ecirc;n đề theo y&ecirc;u cầu c&ocirc;ng t&aacute;c; khoa, tổ c&oacute; thể thay chuy&ecirc;n đề bằng 01 tiết thao giảng. L&yacute; do: để ph&ugrave; hợp với t&igrave;nh h&igrave;nh thực tế từng ph&ograve;ng, khoa, tổ.</p>
<p style="margin-left:24.15pt;">
	<strong>Chỉ ti&ecirc;u</strong> <strong>11:</strong> Kết quả r&egrave;n luyện h&agrave;ng năm đạt 90% thay v&igrave; 98%.</p>
<p>
	<strong>d. Bổ sung th&ecirc;m 03 chỉ ti&ecirc;u:</strong></p>
<p>
	CT24: Bồi dưỡng tin học: 100% c&aacute;n bộ quản l&yacute;, chuy&ecirc;n vi&ecirc;n, gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ tin học n&acirc;ng cao; 100% nh&acirc;n vi&ecirc;n đạt tr&igrave;nh độ tin học cơ bản theo quy định Nh&agrave; nước.</p>
<p>
	CT25: Bồi dưỡng ngoại ngữ: 100% chuy&ecirc;n vi&ecirc;n c&aacute;c ph&ograve;ng v&agrave; gi&aacute;o vi&ecirc;n đạt tr&igrave;nh độ A2. Trong đ&oacute; 60% đạt tr&igrave;nh độ B1; ri&ecirc;ng gi&aacute;o vi&ecirc;n nghề trọng điểm (Điện c&ocirc;ng nghiệp, C&ocirc;ng nghệ &ocirc; t&ocirc;) phải đạt 90% c&oacute; tr&igrave;nh độ B1.</p>
<p>
	CT26: Thực hiện đ&agrave;o tạo k&eacute;p: tổ chức cho học sinh vừa học tại trường, vừa học tại x&iacute; nghiệp đạt 02 x&iacute; nghiệp cho 01 nghề.</p>
<p>
	&nbsp;</p>
<p>
	<strong>1. 2. Mục ti&ecirc;u, nhiệm vụ, giải ph&aacute;p đến cuối nhiệm kỳ (th&aacute;ng 5/2020):</strong></p>
<p>
	<strong>1. Mục ti&ecirc;u:</strong></p>
<p>
	Tập trung l&atilde;nh đạo hệ thống ch&iacute;nh trị nh&agrave; trường thực hiện c&aacute;c biện ph&aacute;p để ho&agrave;n th&agrave;nh 06 chỉ ti&ecirc;u chưa đạt hoặc chưa thực hiện; tiếp tục thực hiện ho&agrave;n th&agrave;nh 17 chỉ ti&ecirc;u đang tiến triển tốt để ho&agrave;n th&agrave;nh trước cuối nhiệm kỳ chi bộ th&aacute;ng 05 năm 2020.</p>
<p>
	Thực hiện tốt c&aacute;c Chương tr&igrave;nh h&agrave;nh động của trường thực&nbsp; hiện Nghị quyết Trung ương 5, Nghị quyết Trung ương 6 (Kh&oacute;a XII).</p>
<p>
	<strong>2. Nhiệm vụ giải ph&aacute;p.</strong></p>
<p>
	2.1. R&agrave; so&aacute;t điều chỉnh sắp xếp lại cơ cấu bộ m&aacute;y v&agrave; nh&acirc;n sự của trường theo tinh thần Nghị quyết Trung ương 6 kh&oacute;a XII.</p>
<p>
	2.2. L&atilde;nh đạo thực hiện ho&agrave;n th&agrave;nh tốt nhiệm vụ ch&iacute;nh trị về c&aacute;c mặt: c&ocirc;ng t&aacute;c tuyển sinh, kết quả đ&agrave;o tạo, chất lượng đ&agrave;o tạo, bi&ecirc;n soạn gi&aacute;o tr&igrave;nh, x&acirc;y dựng nghề mới, c&ocirc;ng t&aacute;c dạy nghề cho lao động n&ocirc;ng th&ocirc;n, c&ocirc;ng t&aacute;c giải quyết việc l&agrave;m cho học sinh, quản l&yacute; t&agrave;i sản - trang thiết bị.</p>
<p>
	2.3. T&iacute;ch cực đổi mới c&ocirc;ng t&aacute;c quản l&yacute; v&agrave; phương ph&aacute;p giảng dạy theo hướng t&iacute;ch hợp; đẩy mạnh ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin; tổ chức m&ocirc; h&igrave;nh đ&agrave;o tạo k&eacute;p nhằm n&acirc;ng cao chất lượng đ&agrave;o tạo nghề.</p>
<p>
	2.4. Triển khai thực hiện tốt c&aacute;c nội dựng x&acirc;y dựng Đảng: x&acirc;y dựng chi bộ h&agrave;ng năm ho&agrave;n th&agrave;nh tốt nhiệm vụ trở l&ecirc;n; l&atilde;nh đạo c&aacute;n bộ, đảng vi&ecirc;n thực hiện tốt chủ trương, đường lối của Đảng, ch&iacute;nh s&aacute;ch &ndash; ph&aacute;p luật của Nh&agrave; nước, thực hiện Chỉ thị 05 về đẩy mạnh học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức, phong c&aacute;ch Hồ Chi Minh; kiểm tra, gi&aacute;m s&aacute;t đảng vi&ecirc;n thực hiện Nghị quyết Trung ương 4 Kh&oacute;a XI, Kh&oacute;a XII về x&acirc;y dựng v&agrave; chỉnh đốn Đảng.</p>
<p>
	2.5. L&atilde;nh đạo việc bồi dưỡng đội ngũ về ch&iacute;nh trị, chuy&ecirc;n m&ocirc;n nghiệp vụ, tin học, ngoại ngữ đ&aacute;p ứng y&ecirc;u cầu x&atilde; hội hi&ecirc;n nay.</p>
<p>
	2.6. L&atilde;nh đạo c&aacute;c đo&agrave;n thể hoạt động tốt, giữ vững danh hiệu h&agrave;ng năm đạt loại xuất sắc.</p>
<p>
	<strong>2. Giao Chi ủy xem x&eacute;t tiếp thu v&agrave; bổ sung c&aacute;c &yacute; kiến đ&oacute;ng g&oacute;p</strong> của c&aacute;n bộ, đảng vi&ecirc;n để ho&agrave;n chỉnh b&aacute;o c&aacute;o giữa nhiệm kỳ của chi bộ để triển khai thực hiện.</p>
<p>
	Chi bộ k&ecirc;u gọi to&agrave;n thể c&aacute;n bộ, đảng vi&ecirc;n, vi&ecirc;n chức nh&agrave; trường tiếp tục ph&aacute;t huy truyền thống của Chi bộ, đo&agrave;n kết, thống nhất, khắc phục kh&oacute; khăn, n&ecirc;u cao tinh thần chủ động, s&aacute;ng tạo, đẩy mạnh phong tr&agrave;o thi đua y&ecirc;u nước, phong tr&agrave;o h&agrave;nh động c&aacute;ch mạng, quyết t&acirc;m phấn đấu ho&agrave;n th&agrave;nh thắng lợi c&aacute;c mục ti&ecirc;u, chỉ ti&ecirc;u, nhiệm vụ Nghị quyết Đại hội l&agrave;n thứ V Chi bộ Trường Trung cấp nghề Củ Chi đề ra, g&oacute;p phần thực hiện thắng lợi Nghị quyết Đại hội Đại biểu to&agrave;n quốc lần thứ XII của Đảng, Nghị quyết Đại hộ Đảng bộ Th&agrave;nh phố lần thứ X, Nghị quyết Đại hội Đảng bộ Huyện lần thứ XI,</p>
<p>
	&nbsp;</p>
<p>
	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;HỘI NGHỊ GIỮA NHIỆM KỲ V </strong></p>
<p align="right">
	<strong>CHI BỘ TRƯỜNG TRUNG CẤP NGHỀ CỦ CHI</strong></p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-10-17T22:15:00.000' AS DateTime), CAST(N'2018-10-17T22:15:00.000' AS DateTime), 1)
INSERT [dbo].[TruongDoanTheTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (21, 1, N'GIẢI PHÁP ĐẤU TRANH TRỰC DIỆN VỚI CÁC LUẬN ĐIỆU XUYÊN TẠC CHỦ TỊCH HỒ CHÍ MINH TRONG ĐIỀU KIỆN HIỆN NAY', N'GÓP PHẦN BẢO VỆ TƯ TƯỞNG HỒ CHÍ MINH', N'<p align="center">
	<span style="font-size:16px;"><span style="color:#b22222;"><strong>GIẢI PH&Aacute;P ĐẤU TRANH TRỰC DIỆN VỚI C&Aacute;C LUẬN ĐIỆU XUY&Ecirc;N TẠC CHỦ TỊCH HỒ CH&Iacute; MINH TRONG ĐIỀU KIỆN HIỆN NAY</strong></span></span></p>
<p align="right">
	<strong><u>ThS. NGUYỄN VĂN ĐẠO </u></strong></p>
<p>
	&nbsp; &nbsp; &nbsp;Hiện nay, việc đấu tranh ph&ograve;ng, chống c&aacute;c luận điệu xuy&ecirc;n tạc Chủ tịch Hồ Ch&iacute; Minh chủ yếu l&agrave; những b&agrave;i viết ri&ecirc;ng lẻ hoặc được đề cập xen lẫn trong c&aacute;c c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu chung về đấu tranh chống &ldquo;diễn biến h&ograve;a b&igrave;nh&rdquo; tr&ecirc;n lĩnh vực ch&iacute;nh trị, tư tưởng, l&yacute; luận. Nội dung đấu tranh c&ograve;n d&agrave;n trải, t&iacute;nh chiến đấu, t&iacute;nh khoa học, t&iacute;nh sắc b&eacute;n trong lập luận c&ograve;n chưa cao, t&iacute;nh thuyết phục c&ograve;n hạn chế.</p>
<p>
	&nbsp; &nbsp; &nbsp;Tr&ecirc;n cơ sở nhận diện c&aacute;c luận điệu xuy&ecirc;n tạc Chủ tịch Hồ Ch&iacute; Minh, ch&uacute;ng t&ocirc;i đưa ra một số giải ph&aacute;p đấu tranh trực diện c&oacute; t&iacute;nh đồng bộ tr&ecirc;n cả ba mặt về chủ thể, nội dung v&agrave; thủ đoạn.</p>
<p>
	<span style="color:#ff0000;"><strong>Giải ph&aacute;p đấu tranh với chủ thể</strong></span></p>
<p>
	&nbsp; &nbsp; &nbsp;Vấn đề c&oacute; tầm quan trọng h&agrave;ng đầu trong đấu tranh với chủ thể xuy&ecirc;n tạc l&agrave; ch&uacute;ng ta phải nhận diện v&agrave; ph&acirc;n loại được từng đối tượng để c&oacute; h&igrave;nh thức đấu tranh th&iacute;ch hợp. Tuy nhi&ecirc;n, đ&acirc;y l&agrave; vấn đề kh&oacute; khăn v&agrave; phức tạp. Ch&uacute;ng ta cần xem x&eacute;t ở nhiều mặt như động cơ, phương thức hoạt động, vai tr&ograve;, mức độ t&aacute;c động của chủ thể xuy&ecirc;n tạc v&agrave; phải đặt trong y&ecirc;u cầu của t&igrave;nh h&igrave;nh x&atilde; hội, nhiệm vụ ch&iacute;nh trị của mỗi thời kỳ, thậm ch&iacute; ở từng thời điểm v&agrave; tr&ecirc;n từng địa b&agrave;n, khu vực; giữa lợi &iacute;ch trước mắt v&agrave; l&acirc;u d&agrave;i, giữ bộ phận v&agrave; to&agrave;n thể... để c&oacute; thể nhận diện v&agrave; đưa ra h&igrave;nh thức đấu tranh th&iacute;ch hợp. Nếu l&agrave;m kh&ocirc;ng tốt vấn đề n&agrave;y th&igrave; rất dễ dẫn đến t&igrave;nh trạng &ldquo;lợi bất cập hại&rdquo;, đẩy những người mới c&oacute; dấu hiệu, đang dao động ng&atilde; về ph&iacute;a đối tượng phản c&aacute;ch mạng hoặc bị c&aacute;c thế lực chống đối l&ocirc;i k&eacute;o, lợi dụng xuy&ecirc;n tạc.</p>
<p>
	&nbsp; &nbsp; &nbsp;Về đối tượng xuy&ecirc;n tạc cần đấu tranh, xử l&yacute;, c&oacute; rất nhiều c&aacute; nh&acirc;n, tổ chức c&oacute; c&aacute;c luận điệu xuy&ecirc;n tạc Chủ tịch Hồ Ch&iacute; Minh, ch&uacute;ng ta kh&ocirc;ng c&oacute; khả năng v&agrave; cũng kh&ocirc;ng cần thiết phải đấu tranh, xử l&yacute; to&agrave;n bộ những chủ thể n&agrave;y. Đối tượng ch&uacute;ng ta cần đấu tranh, xử l&yacute; l&agrave; những c&aacute; nh&acirc;n, tổ chức, thế lực c&oacute; &acirc;m mưu v&agrave; h&agrave;nh động th&ocirc;ng qua c&aacute;c luận điệu xuy&ecirc;n tạc l&agrave;m ảnh hưởng, phương hại đến an ninh tư tưởng &ndash; văn h&oacute;a, an ninh ch&iacute;nh trị từ một hay cả bộ phận quần ch&uacute;ng nh&acirc;n d&acirc;n; đến mục ti&ecirc;u của nước ta trong sự nghiệp x&acirc;y dựng v&agrave; bảo vệ Tổ quốc.</p>
<p>
	&nbsp; &nbsp; &nbsp;Với đối tượng l&agrave; những kẻ chủ mưu, ngoan cố, kh&ocirc;ng thể cải tạo được cần cương quyết v&agrave; nghi&ecirc;m trị. Với đối tượng l&agrave; những người a dua, c&oacute; quan điểm sai tr&aacute;i nhưng kh&ocirc;ng phải th&ugrave; địch cần mềm dẻo, c&oacute; l&yacute; c&oacute; t&igrave;nh, gi&aacute;o dục, thuyết phục, tạo điều kiện cho họ nhận ra lầm lỗi.</p>
<p>
	<span style="color:#ff0000;"><strong>Giải ph&aacute;p đấu tranh với nội dung</strong></span></p>
<p>
	&nbsp; &nbsp; &nbsp;Nội dung đấu tranh, phản b&aacute;c cơ bản phải thể hiện được:</p>
<p>
	<em>&nbsp; &nbsp; &nbsp;Một l&agrave;, n&ecirc;u r&otilde; r&agrave;ng, tập trung đối tượng đấu tranh.</em> T&ugrave;y t&iacute;nh chất, nhiệm vụ của một b&agrave;i viết hay đề t&agrave;i, c&ocirc;ng tr&igrave;nh m&agrave; quy định đấu tranh &iacute;t hay nhiều nội dung luận điệu xuy&ecirc;n tạc. Tr&aacute;nh t&igrave;nh trạng đ&atilde; x&aacute;c định, nhưng kh&ocirc;ng đấu tranh hoặc v&igrave; đấu tranh d&agrave;n trải m&agrave; thiếu s&acirc;u sắc. Chủ định đấu tranh với một luận điệu n&agrave;o đ&oacute;, cần n&ecirc;u r&otilde;: nội dung cốt l&otilde;i của luận điệu đ&oacute;; những chứng cứ bảo vệ cho luận điệu đ&oacute;; chủ thể của luận điệu đ&oacute; (t&ugrave;y đối tượng đấu tranh m&agrave; c&oacute; thể n&ecirc;u r&otilde; họ t&ecirc;n hoặc chỉ n&ecirc;u chung thế lực n&agrave;o đ&oacute;, song cần phải l&agrave;m r&otilde; &acirc;m mưu, động cơ của họ). C&oacute; như vậy, đấu tranh, ph&ecirc; ph&aacute;n mới tập trung, đ&uacute;ng chỗ, hấp dẫn v&agrave; thuyết phục người đọc. Tr&aacute;nh việc n&ecirc;u vấn đề một c&aacute;ch chung chung, kh&ocirc;ng r&otilde; nội dung, địa chỉ, luận điệu cần ph&ecirc; ph&aacute;n, dẫn đến g&aacute;n &eacute;p khi&ecirc;n cưỡng v&agrave; người đọc kh&ocirc;ng biết đấu tranh với c&aacute;i g&igrave;, với ai.</p>
<p>
	<em>&nbsp; &nbsp; &nbsp;Hai l&agrave;, n&ecirc;u r&otilde; ch&iacute;nh kiến của m&igrave;nh.</em> Mục đ&iacute;ch của đấu tranh ph&ecirc; ph&aacute;n l&agrave; phủ định luận điệu sai tr&aacute;i, xuy&ecirc;n tạc v&agrave; khẳng định luận điểm đ&uacute;ng đắn. V&igrave; vậy, ph&ecirc; ph&aacute;n, b&aacute;c bỏ một luận điệu n&agrave;o, người viết phải c&oacute; luận điểm của m&igrave;nh về vấn đề đ&oacute;. Luận điểm n&agrave;y thường l&agrave; đối lập, &iacute;t nhất phải kh&aacute;c luận điệu đưa ra đấu tranh v&agrave; n&oacute; cũng phải được n&ecirc;u r&otilde; r&agrave;ng. Trong qu&aacute; tr&igrave;nh đấu tranh, luận giải, phải lu&ocirc;n gắn ph&ecirc; ph&aacute;n phủ định luận điểm n&agrave;y với bảo vệ, khẳng định luận điểm kia v&agrave; ngược lại.</p>
<p>
	<em>&nbsp; &nbsp; &nbsp;Ba l&agrave;, c&oacute; chứng cứ đầy đủ, kh&aacute;ch quan, lập luận chặt chẽ, khoa học.</em> C&aacute;c luận điệu sai tr&aacute;i, xuy&ecirc;n tạc Chủ tịch Hồ Ch&iacute; Minh thường d&ugrave;ng những chứng cứ đ&atilde; bị xuy&ecirc;n tạc, b&oacute;p m&eacute;o v&agrave; lập luận một c&aacute;ch ngụy biện, bất chấp phải tr&aacute;i. Để đấu tranh, phản b&aacute;c, ch&uacute;ng ta kh&ocirc;ng thể l&agrave;m như họ, phải d&ugrave;ng những chứng cứ kh&aacute;ch quan, trung thực m&agrave; mọi người, kể cả đối phương, đều thừa nhận. Đặc biệt, tr&aacute;nh t&igrave;nh trạng chỉ n&ecirc;u l&yacute; thuyết chung chung, kh&ocirc;ng c&oacute; c&aacute;c dẫn chứng thực tiễn để minh chứng cho lập luận của m&igrave;nh. Chứng cứ phải được đặt trong một lập luận chặt chẽ, mạch lạc, logic; tr&aacute;nh &aacute;p đặt v&agrave; kh&ocirc;ng c&oacute; sự ph&acirc;n t&iacute;ch, chứng minh, c&oacute; như thế mới dẫn đến sự thuyết phục cao.</p>
<p>
	<em>&nbsp; &nbsp; &nbsp;Bốn l&agrave;, c&oacute; th&aacute;i độ đấu tranh văn h&oacute;a.</em> Những luận điệu xuy&ecirc;n tạc Chủ tịch Hồ Ch&iacute; Minh của những người kh&ocirc;ng c&oacute; t&acirc;m l&agrave;nh thường l&agrave; rất cực đoan, b&ocirc;i đen, thậm ch&iacute; cả chửi rủa kiểu &ldquo;h&agrave;ng t&ocirc;m h&agrave;ng c&aacute;&rdquo;. Song, để chống lại những luận điệu đ&oacute; một c&aacute;ch c&oacute; hiệu quả cao, ch&uacute;ng ta cần phải vượt l&ecirc;n tr&ecirc;n đối tượng phản b&aacute;c cả về tr&iacute; tuệ v&agrave; c&aacute;ch ứng xử văn h&oacute;a. Sự ph&ecirc; b&igrave;nh n&agrave;o cũng cần c&aacute;i chất văn h&oacute;a, c&oacute; như thế sự ph&ecirc; b&igrave;nh, ph&ecirc; ph&aacute;n mới c&oacute; t&aacute;c dụng thuyết phục v&agrave; c&oacute; sức lan tỏa, c&oacute; sức sống l&acirc;u bền.</p>
<p>
	<span style="color:#ff0000;"><strong>Giải ph&aacute;p đấu tranh với phương thức thủ đoạn</strong></span></p>
<p>
	&nbsp; &nbsp; &nbsp;Trong điều kiện hiện nay, c&aacute;c luận điệu xuy&ecirc;n tạc Hồ Ch&iacute; Minh chủ yếu th&ocirc;ng qua mạng internet, mạng x&atilde; hội để truyền tải th&ocirc;ng tin v&agrave; tạo ra c&aacute;c diễn đ&agrave;n nhằm trao đổi, t&aacute;n ph&aacute;t luận điệu, l&ocirc;i k&eacute;o, thu h&uacute;t th&ecirc;m nhiều đối tượng đi theo, phục vụ mục đ&iacute;ch của ch&uacute;ng, trong khi 95% thị phần mạng x&atilde; hội ở Việt Nam c&oacute; m&aacute;y chủ đặt ở nước ngo&agrave;i<a href="#_ftn1" name="_ftnref1" title="">[1]</a>. Do vậy, ngo&agrave;i giải ph&aacute;p ph&ograve;ng chống, quan trọng nhất l&agrave; tạo ra sức đề kh&aacute;ng miễn nhiễm với c&aacute;c luận điệu xuy&ecirc;n tạc ở mỗi người d&acirc;n (bởi với số liệu khổng lồ thống k&ecirc; từ hai trang mạng được d&ugrave;ng phổ biến nhất ở Việt Nam l&agrave; Youtube v&agrave; Facebook<a href="#_ftn2" name="_ftnref2" title="">[2]</a> th&igrave; kh&ocirc;ng lực lượng n&agrave;o, ngay cả chủ sở hữu c&aacute;c trang mạng n&agrave;y, c&oacute; thể kiểm duyệt hết được), ch&uacute;ng ta cần tập trung v&agrave;o ba giải ph&aacute;p ch&iacute;nh:</p>
<p>
	<em>&nbsp; &nbsp; &nbsp;Một l&agrave;, thực hiện nghi&ecirc;m chủ trương, ch&iacute;nh s&aacute;ch của Đảng, Nh&agrave; nước về c&ocirc;ng t&aacute;c đảm bảo an to&agrave;n, an ninh mạng; đồng thời nghi&ecirc;n cứu x&acirc;y dựng mạng x&atilde; hội ri&ecirc;ng để chủ động kiểm so&aacute;t, xử l&yacute; th&ocirc;ng tin</em></p>
<p>
	&nbsp; &nbsp; &nbsp;Cần tiếp tục qu&aacute;n triệt s&acirc;u sắc v&agrave; thực hiện nghi&ecirc;m t&uacute;c văn bản của Đảng, Nh&agrave; nước về c&ocirc;ng t&aacute;c bảo đảm an to&agrave;n, an ninh mạng trong t&igrave;nh h&igrave;nh mới, nhất l&agrave; Chỉ thị số 28-CT/TW ng&agrave;y 16-9-2013 của Ban B&iacute; thư về &ldquo;Tăng cường c&ocirc;ng t&aacute;c bảo đảm an to&agrave;n th&ocirc;ng tin mạng&rdquo;, Nghị định số 72/2013/NĐ-CP ng&agrave;y 15-7-2013 của Ch&iacute;nh phủ về &ldquo;Quản l&yacute;, cung cấp, sử dụng dịch vụ internet v&agrave; th&ocirc;ng tin điện tử tr&ecirc;n internet&rdquo;, Chỉ thị số 15/CT-TTg ng&agrave;y 17-6-2014 của Thủ tướng Ch&iacute;nh phủ về &ldquo;Tăng cường c&ocirc;ng t&aacute;c bảo đảm an ninh v&agrave; an to&agrave;n th&ocirc;ng tin mạng trong t&igrave;nh h&igrave;nh mới&rdquo;, Luật An to&agrave;n th&ocirc;ng tin mạng số 86/2015/QH13, Luật An ninh mạng số 24/2018/QH14&hellip; Từ đ&oacute;, g&oacute;p phần đẩy l&ugrave;i, ngăn chặn những th&ocirc;ng tin xấu độc tr&ecirc;n internet v&agrave; mạng x&atilde; hội.</p>
<p>
	&nbsp; &nbsp; &nbsp;B&ecirc;n cạnh đ&oacute;, cần nghi&ecirc;n cứu thiết kế v&agrave; x&acirc;y dựng mạng x&atilde; hội ri&ecirc;ng để chủ động cho m&igrave;nh v&agrave; tho&aacute;t khỏi sự phụ thuộc mạng x&atilde; hội nước ngo&agrave;i. Đ&acirc;y l&agrave; giải ph&aacute;p c&oacute; t&iacute;nh l&acirc;u d&agrave;i, l&agrave;m tốt sẽ đưa lại hiệu quả cao trong đấu tranh với phương thức xuy&ecirc;n tạc Hồ Ch&iacute; Minh. Thực tế một số nước tr&ecirc;n thế giới đ&atilde; l&agrave;m tốt điều n&agrave;y như mạng Vkontakte ở Nga hoặc WeChat, Sina Weibo của Trung Quốc. Ở Việt Nam, tiềm năng x&acirc;y dựng v&agrave; ph&aacute;t triển mạng x&atilde; hội l&agrave; rất lớn, song, hiện nổi bất chỉ c&oacute; mạng x&atilde; hội Zalo với hơn 80 triệu người d&ugrave;ng ở khoảng 10 nước tr&ecirc;n thế giới. Trong thời gian tới, cần c&oacute; chủ trương, ch&iacute;nh s&aacute;ch đầu tư ph&aacute;t triển mạng x&atilde; hội cho c&aacute;c doanh nghiệp.</p>
<p>
	<em>&nbsp; &nbsp; &nbsp;Hai l&agrave;, tiếp tục đẩy mạnh đấu tranh, phối hợp với tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i xử l&yacute; th&ocirc;ng tin.</em></p>
<p>
	&nbsp; &nbsp; &nbsp;Thời gian qua, Đảng, Nh&agrave; nước ta đ&atilde; c&oacute; chủ trương, giải ph&aacute;p phối hợp với tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i trong xử l&yacute; th&ocirc;ng tin vi phạm. Điều n&agrave;y bước đầu đ&atilde; thu được kết quả (t&iacute;nh đến th&aacute;ng 6-2018, Youtube đ&atilde; gỡ hơn 6.700 đoạn phim, Facebook x&oacute;a h&agrave;ng trăm t&agrave;i khoản c&oacute; th&ocirc;ng tin vi phạm<a href="#_ftn3" name="_ftnref3" title="">[3]</a>), tuy nhi&ecirc;n, vẫn c&ograve;n h&agrave;ng triệu đoạn phim, h&igrave;nh ảnh, b&igrave;nh luận xấu độc vẫn tồn tại v&agrave; li&ecirc;n tục được lan truyền tr&ecirc;n mạng internet. Hơn nữa, c&aacute;c chủ thể chống đối c&oacute; rất nhiều thủ đoạn để vượt qua c&aacute;c phương thức kiểm duyệt của nh&agrave; mạng, ch&iacute;nh những chủ trang mạng cũng kh&ocirc;ng thực sự quyết liệt, nhanh ch&oacute;ng xử l&yacute; c&aacute;c th&ocirc;ng tin vi phạm. Do đ&oacute;, ch&uacute;ng ta cần tiếp tục, ki&ecirc;n tr&igrave; v&agrave; c&oacute; biện ph&aacute;p đủ mạnh để g&acirc;y sức &eacute;p, buộc c&aacute;c tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i sở hữu c&aacute;c trang mạng x&atilde; hội tu&acirc;n thủ chặt chẽ, nghi&ecirc;m t&uacute;c c&aacute;c quy định của ph&aacute;p luật Việt Nam. Trước mắt, ch&uacute;ng ta cần phối hợp với họ để c&oacute; bộ chặn lọc th&ocirc;ng tin, trong đ&oacute; c&oacute; c&aacute;c luận điệu xuy&ecirc;n tạc Chủ tịch Hồ Ch&iacute; Minh (tương tự như bộ lọc h&igrave;nh ảnh m&agrave; Google, Facebook đang l&agrave;m) v&agrave; mỗi khi ph&aacute;t hiện được th&ocirc;ng tin n&agrave;o th&igrave; theo quy định thời gian, buộc họ phải xử l&yacute;, gỡ bỏ.</p>
<p>
	<em>&nbsp; &nbsp; &nbsp;Ba l&agrave;, giải ph&aacute;p về kỹ thuật, nghiệp vụ để chặn, lọc, quản l&yacute; th&ocirc;ng tin</em></p>
<p>
	&nbsp; &nbsp; &nbsp;Để ngăn chặn, xử l&yacute; c&aacute;c nguồn th&ocirc;ng tin xấu độc với sự đối ph&oacute; bằng nhiều thủ đoạn tinh vi, kh&oacute; lường của c&aacute;c thế lực chống ph&aacute;; c&ugrave;ng với đ&oacute; l&agrave; lượng đăng tải theo cấp số nh&acirc;n v&agrave; trong điều kiện &ldquo;m&aacute;y chủ&rdquo; ph&aacute;t tin ở nước ngo&agrave;i, kh&ocirc;ng điều chỉnh bằng luật ph&aacute;p Việt Nam, cũng rất kh&oacute; để đấu tranh trực diện tr&ecirc;n trang của họ, v&igrave; vậy, c&aacute;c giải ph&aacute;p về kỹ thuật, nghiệp vụ l&agrave; cần thiết v&agrave; cơ bản nhằm gi&uacute;p ch&uacute;ng ta chủ động ngăn ngừa, hạn chế những th&ocirc;ng tin vi phạm v&agrave; n&oacute; cũng c&oacute; &yacute; nghĩa răn đe tốt khi cần c&ocirc;ng khai xử l&yacute; những trường hợp đặc biệt.</p>
<p>
	&nbsp; &nbsp; &nbsp;Hướng nghi&ecirc;n cứu, x&acirc;y dựng giải ph&aacute;p kỹ thuật trong thời gian tới như: X&acirc;y dựng c&ocirc;ng cụ quản l&yacute;, thu thập, ph&ograve;ng ngừa v&agrave; cảnh b&aacute;o; c&ocirc;ng cụ đ&aacute;nh gi&aacute; định lượng truy cập website để l&agrave;m căn cứ thực hiện c&aacute;c ch&iacute;nh s&aacute;ch quản l&yacute; nh&agrave; nước về th&ocirc;ng tin tr&ecirc;n internet. X&acirc;y dựng c&ocirc;ng cụ lọc v&agrave; ph&aacute;t hiện tin giả, tin sai sự thật, c&ocirc;ng cụ đo lường theo thời gian thực mức độ lan truyền, ph&aacute;t t&aacute;n những th&ocirc;ng tin n&agrave;y tr&ecirc;n mạng x&atilde; hội v&agrave; c&aacute;c phương tiện truyền th&ocirc;ng trực tuyến kh&aacute;c, nhằm chủ động ngăn chặn sự lan truyền v&agrave; cảnh b&aacute;o sớm tin giả ngay khi n&oacute; xuất hiện.</p>
<p>
	&nbsp; &nbsp; &nbsp;Hướng xử l&yacute; bằng biện ph&aacute;p nghiệp vụ của c&aacute;c cơ quan chức năng, nhất l&agrave; cơ quan an ninh như thiết lập &ldquo;tường lửa&rdquo;, sử dụng thiết bị bảo mật, phần mềm, c&ocirc;ng cụ kỹ thuật để chặn, lọc, hạn chế truy cập, v&ocirc; hiệu h&oacute;a, b&oacute;c gỡ c&aacute;c trang, v&ugrave;ng th&ocirc;ng tin khi c&oacute; y&ecirc;u cầu. Tuy nhi&ecirc;n, giải ph&aacute;p n&agrave;y chỉ mang t&iacute;nh t&igrave;nh huống, cần c&oacute; sự phối hợp chặt chẽ với c&aacute;c cơ quan chức năng kh&aacute;c v&agrave; phải ph&ugrave; hợp với th&ocirc;ng lệ quốc tế.</p>
<p>
	&nbsp; &nbsp; &nbsp;Ngo&agrave;i ra cần lưu &yacute; tập trung đấu tranh với phương thức lưu trữ, truyền tải qua c&aacute;c phương tiện kh&aacute;c như s&aacute;ch, b&aacute;o, đ&agrave;i ph&aacute;t thanh, truyền h&igrave;nh. Một số giải ph&aacute;p như: đ&oacute;n chặn, thu giữ c&aacute;c loại b&aacute;o, tạp ch&iacute;, s&aacute;ch của đối phương ở nước ngo&agrave;i t&aacute;n ph&aacute;t v&agrave;o Việt Nam; v&ocirc; hiệu h&oacute;a c&aacute;c chương tr&igrave;nh ph&aacute;t thanh, truyền h&igrave;nh c&oacute; độ nguy hiểm cao; bằng nghiệp vụ của cơ quan an ninh như x&acirc;m nhập &ldquo;đặc t&igrave;nh&rdquo; v&agrave;o c&aacute;c cơ quan truyền th&ocirc;ng đại ch&uacute;ng đối phương để gi&agrave;nh thế chủ động trong đấu tranh...</p>
<p>
	&nbsp;</p>
<div>
	<hr align="left" size="1" width="33%" />
	<div id="ftn1">
		<p>
			<a href="#_ftnref1" name="_ftn1" title="">[1]</a> B&agrave;i ph&aacute;t biểu của Ph&oacute; Thủ tướng Vũ Đức Đam tại kỳ họp thứ 4 Quốc hội kh&oacute;a XIV ng&agrave;y 17-11-2017.</p>
	</div>
	<div id="ftn2">
		<p>
			<a href="#_ftnref2" name="_ftn2" title="">[2]</a> Trung b&igrave;nh một ph&uacute;t, Youtube c&oacute; khoảng 400 giờ video; Facebook c&oacute; 510.000 b&igrave;nh luận (comment), 293.000 &ldquo;trạng th&aacute;i&rdquo; (status) v&agrave; 136.000 bức ảnh được đăng tải l&ecirc;n. Theo Huyền Thanh, Quản l&yacute; mạng x&atilde; hội: tiền kiểm hay hậu kiểm, http://cand.com.vn, ng&agrave;y 9-10-2017.</p>
	</div>
	<div id="ftn3">
		<p>
			<a href="#_ftnref3" name="_ftn3" title="">[3]</a> Nguyễn Hồng, An ninh mạng: Ch&igrave;a kh&oacute;a của mỗi người, http://www.qdnd.vn, ng&agrave;y 27-11-2017.</p>
	</div>
</div>
<p>
	&nbsp;</p>
', N'', CAST(N'2019-01-02T00:05:00.000' AS DateTime), CAST(N'2019-01-02T00:05:00.000' AS DateTime), 1)
INSERT [dbo].[TruongDoanTheTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (22, 1, N'Ðấu tranh, phản bác nhận thức lệch lạc, quan điểm sai trái', N'', N'<h3>
	&nbsp;</h3>
<h3 style="text-align: center;">
	<span style="font-size:20px;"><span style="color:#ff0000;">&ETH;ấu tranh, phản b&aacute;c nhận thức lệch lạc, quan điểm sai tr&aacute;i</span></span></h3>
<h5 style="text-align: right;">
	<span style="font-size:14px;"><em>T&aacute;c giả: H&agrave; Nam, đăng tr&ecirc;n b&aacute;o Nh&acirc;n D&acirc;n điện tử ng&agrave;y 18/10/2018.</em></span></h5>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;"><strong>Nghị quyết Trung ương 4 (kh&oacute;a XII) khẳng định: &quot;đấu tranh, phản b&aacute;c c&oacute; hiệu quả đối với c&aacute;c quan điểm sai tr&aacute;i, luận điệu xuy&ecirc;n tạc của c&aacute;c thế lực th&ugrave; địch, phản động, phần tử cơ hội v&agrave; bất m&atilde;n ch&iacute;nh trị chống ph&aacute; &ETH;ảng, Nh&agrave; nước v&agrave; khối đại đo&agrave;n kết to&agrave;n d&acirc;n tộc&quot; đang l&agrave; một trong c&aacute;c nhiệm vụ quan trọng của to&agrave;n &ETH;ảng, to&agrave;n d&acirc;n. Trong bối cảnh phức tạp về th&ocirc;ng tin hiện nay, để ho&agrave;n th&agrave;nh nhiệm vụ n&agrave;y, một trong c&aacute;c vấn đề cần đặt ra l&agrave; phải lu&ocirc;n tỉnh t&aacute;o khi tiếp x&uacute;c th&ocirc;ng tin, kh&ocirc;ng phụ họa theo nhận thức lệch lạc, quan điểm sai tr&aacute;i của thế lực th&ugrave; địch.</strong></span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">Với sự ph&aacute;t triển của khoa học v&agrave; c&ocirc;ng nghệ, ng&agrave;y nay c&aacute;c phương tiện phổ biến th&ocirc;ng tin trở n&ecirc;n hết sức phong ph&uacute;, m&agrave; nổi l&ecirc;n trong đ&oacute; l&agrave; in-tơ-n&eacute;t. &ETH;iều n&agrave;y l&agrave;m cho phạm vi tiếp x&uacute;c th&ocirc;ng tin của nh&acirc;n loại n&oacute;i chung, của người Việt Nam n&oacute;i ri&ecirc;ng, được mở rộng m&agrave; với quỹ thời gian hằng ng&agrave;y, mỗi c&aacute; nh&acirc;n kh&oacute; c&oacute; thể bao qu&aacute;t. Nhất l&agrave; c&aacute;c mạng x&atilde; hội dựa tr&ecirc;n nền tảng in-tơ-n&eacute;t, đ&atilde; hấp dẫn con người kh&ocirc;ng chỉ v&igrave; khả năng truyền tải th&ocirc;ng tin nhanh ch&oacute;ng, kịp thời, đa dạng về hầu hết c&aacute;c sự kiện, hiện tượng diễn ra tr&ecirc;n thế giới, m&agrave; c&ograve;n v&igrave; đ&atilde; tạo một m&ocirc;i trường gi&uacute;p con người trực tiếp tương t&aacute;c, đưa ra &yacute; kiến, tr&igrave;nh b&agrave;y suy nghĩ, vừa tự bộc lộ, vừa giao lưu với người kh&aacute;c, qua đ&oacute; x&acirc;y dựng những mối li&ecirc;n kết cộng đồng&hellip;</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">&ETH;iều n&agrave;y l&agrave;m cho những c&acirc;u chuyện, giai thoại trước đ&acirc;y chỉ tồn tại bằng phương thức truyền miệng nay c&oacute; điều kiện lan tỏa trong thời gian rất ngắn, trong kh&ocirc;ng gian rộng v&agrave; rất hấp dẫn. &ETH;&oacute; cũng l&agrave; một nguy&ecirc;n nh&acirc;n l&yacute; giải v&igrave; sao đến th&aacute;ng 6-2018 tr&ecirc;n thế giới, chỉ ri&ecirc;ng Facebook: hằng th&aacute;ng c&oacute; hơn 2,2 tỷ người d&ugrave;ng; hằng ng&agrave;y c&oacute; 1,45 tỷ người đăng nhập; 60 gi&acirc;y c&oacute; 510 ngh&igrave;n comment, 293 ngh&igrave;n trạng th&aacute;i được cập nhật, 136.000 ảnh được tải l&ecirc;n; mỗi ng&agrave;y c&oacute; 4,75 tỷ nội dung được chia sẻ, 8 tỷ lượt người xem video với tổng số thời gian 100 triệu giờ&hellip;</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">Với Việt Nam, theo số liệu do WeAreSocial (c&ocirc;ng ty c&oacute; trụ sở tại Anh, chuy&ecirc;n thống k&ecirc;, đ&aacute;nh gi&aacute; th&ocirc;ng tin kỹ thuật số, di động c&ugrave;ng c&aacute;c lĩnh vực li&ecirc;n quan) th&igrave;: đến đầu năm 2018 Việt Nam c&oacute; 64 triệu người sử dụng in-tơ-n&eacute;t; 58 triệu t&agrave;i khoản Facebook v&agrave; đứng thứ bảy tr&ecirc;n thế giới về người sử dụng mạng x&atilde; hội n&agrave;y; hằng ng&agrave;y, trung b&igrave;nh người sử dụng m&aacute;y t&iacute;nh truy cập in-tơ-n&eacute;t 6 giờ 52 ph&uacute;t, người d&ugrave;ng điện thoại di động truy cập in-tơ-n&eacute;t 3 giờ 3 ph&uacute;t&hellip;</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">Song t&iacute;nh ưu việt, tiện &iacute;ch của in-tơ-n&eacute;t đ&atilde; sớm bị một số người lạm dụng, nhất l&agrave; tr&ecirc;n mạng x&atilde; hội, nhằm phục vụ cho việc l&agrave;m c&oacute; mục đ&iacute;ch xấu, biểu hiện cụ thể nhất l&agrave; t&igrave;nh trạng tin giả (fake news), lập c&aacute;c t&agrave;i khoản giả mạo tr&ecirc;n mạng x&atilde; hội (như Facebook th&ocirc;ng b&aacute;o th&igrave; trong ba th&aacute;ng đầu năm 2018 đ&atilde; kh&oacute;a 583 triệu t&agrave;i khoản giả mạo) trở th&agrave;nh một tệ nạn m&agrave; nhiều quốc gia đang phải đối diện v&agrave; giải quyết.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">&ETH;ể chống ph&aacute; Việt Nam, c&aacute;c thế lực th&ugrave; địch c&ugrave;ng một số tổ chức, c&aacute; nh&acirc;n thiếu thiện ch&iacute; cũng đ&atilde; tận dụng, biến in-tơ-n&eacute;t th&agrave;nh loại c&ocirc;ng cụ chủ yếu để lan truyền nhận thức lệch lạc, tuy&ecirc;n truyền quan điểm sai tr&aacute;i, đặc biệt l&agrave; biến mạng x&atilde; hội th&agrave;nh &quot;nguồn tin&quot; cung cấp đủ thứ &quot;t&agrave;i liệu&quot; cho người hiếu kỳ, bất m&atilde;n,&hellip; từ đ&oacute; tiến c&ocirc;ng v&agrave;o nền tảng tư tưởng của &ETH;ảng, xuy&ecirc;n tạc chủ trương v&agrave; ch&iacute;nh s&aacute;ch của Nh&agrave; nước, ảnh hưởng ti&ecirc;u cực đến uy t&iacute;n của l&atilde;nh đạo, bịa đặt v&agrave; dựng chuyện để g&acirc;y hoang mang, gieo rắc t&acirc;m l&yacute; bất m&atilde;n, lung lạc đời sống tinh thần nh&acirc;n d&acirc;n&hellip; Trước &acirc;m mưu th&acirc;m độc đ&oacute;, nếu mỗi đảng vi&ecirc;n, mỗi tổ chức đảng cơ sở đến to&agrave;n &ETH;ảng kh&ocirc;ng chủ động đấu tranh dựa tr&ecirc;n cơ sở l&yacute; luận - thực tiễn đ&uacute;ng đắn th&igrave; c&oacute; thể sẽ tạo cơ hội l&agrave;m cho hiện tượng suy tho&aacute;i về tư tưởng ch&iacute;nh trị, đạo đức, lối sống, c&oacute; lời n&oacute;i v&agrave; việc l&agrave;m biểu hiện &quot;tự diễn biến&quot;, &quot;tự chuyển h&oacute;a&quot; trở n&ecirc;n phức tạp hơn.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">&ETH;ể thực hiện &acirc;m mưu đen tối, c&aacute;c thế lực th&ugrave; địch tỏ ra nhanh nhạy trong việc chụp giật, khai th&aacute;c c&aacute;c tin tức, hiện tượng, sự kiện từ nhỏ đến lớn xảy ra trong x&atilde; hội để b&oacute;p m&eacute;o, xuy&ecirc;n tạc, dẫn dắt nhận thức người đọc theo hướng ti&ecirc;u cực. Từ tai nạn giao th&ocirc;ng, người chết bất thường, dịch bệnh, hậu quả b&atilde;o lụt, sự cố m&ocirc;i trường&hellip; cho tới tăng gi&aacute; xăng dầu, ph&aacute;t hiện tham nhũng, xử l&yacute; tham nhũng, cơ quan chức năng x&eacute;t xử v&agrave; tuy&ecirc;n &aacute;n người đ&atilde; c&oacute; h&agrave;nh vi vi phạm ph&aacute;p luật, chủ trương v&agrave; ch&iacute;nh s&aacute;ch mới của ch&iacute;nh quyền, quan hệ đối ngoại, l&atilde;nh đạo &ETH;ảng hoặc Nh&agrave; nước từ trần,&hellip; đều bị quy chiếu từ g&oacute;c nh&igrave;n ti&ecirc;u cực, g&aacute;n cho c&aacute;c động cơ kh&ocirc;ng trong s&aacute;ng,&hellip; nhằm t&aacute;c động đến suy nghĩ cảm t&iacute;nh của con người, đẩy người tiếp x&uacute;c đến nhận thức, suy nghĩ mơ hồ v&agrave; rồi do thiếu tỉnh t&aacute;o m&agrave; c&oacute; phản ứng thiếu sự dẫn dắt của l&yacute; tr&iacute;, dần d&agrave; l&agrave;m x&oacute;i m&ograve;n niềm tin của mỗi người n&oacute;i ri&ecirc;ng, của x&atilde; hội n&oacute;i chung. Tuy nhi&ecirc;n, việc dựa tr&ecirc;n sự kiện, hiện tượng đ&atilde; xảy ra để xuy&ecirc;n tạc mới l&agrave; một phương diện m&agrave; c&aacute;c thế lực th&ugrave; địch &acirc;m mưu truyền b&aacute;, một phương diện kh&aacute;c kh&ocirc;ng k&eacute;m quan trọng l&agrave; sản xuất tin giả để đầu độc nhận thức của người tiếp x&uacute;c.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">Một nghi&ecirc;n cứu của Viện C&ocirc;ng nghệ Massachusetts (Mỹ) cho biết tr&ecirc;n thế giới, chủ đề nhiều tin giả nhất thường li&ecirc;n quan đến ch&iacute;nh trị, tiếp sau l&agrave; loại tin giả c&oacute; li&ecirc;n quan kinh doanh, khủng bố, giải tr&iacute;, khoa học, thi&ecirc;n tai&hellip; Tr&ecirc;n thực tế, khi đưa ra tin giả, c&aacute;c thế lực th&ugrave; địch thường ch&uacute; &yacute; đến sự kiện giật g&acirc;n, gợi t&ograve; m&ograve;, thường k&egrave;m theo lời dẫn như: &quot;một nguồn tin th&acirc;n cận cho biết&quot;, &quot;một người c&oacute; uy t&iacute;n trong lĩnh vực n&agrave;y x&aacute;c nhận&quot;, &quot;nguồn tin từ nội bộ cho hay&quot;,... để tạo dựng cơ sở cho &quot;t&iacute;nh x&aacute;c thực&quot;, khiến người tiếp x&uacute;c tin giả kh&ocirc;ng nghĩ đến việc kiểm chứng, x&aacute;c minh... V&igrave; thế, nếu kh&ocirc;ng nắm bắt được bản chất của vấn đề, kh&ocirc;ng ch&uacute; &yacute; t&igrave;m hiểu kỹ lưỡng, lại bồng bột v&agrave; thiếu ch&iacute;n chắn, người tiếp x&uacute;c luận điệu xuy&ecirc;n tạc hoặc tin giả dễ bị dẫn dắt tinh thần theo chủ đ&iacute;ch của kẻ xấu.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">Khi m&agrave; c&aacute;c thế lực th&ugrave; địch, phản động đẩy mạnh thực hiện chiến lược &quot;diễn biến h&ograve;a b&igrave;nh&quot;, lợi dụng c&aacute;c vấn đề &quot;d&acirc;n chủ, nh&acirc;n quyền&quot;, d&acirc;n tộc, t&ocirc;n gi&aacute;o v&agrave; những yếu k&eacute;m, sơ hở, mất cảnh gi&aacute;c của ta để xuy&ecirc;n tạc, b&oacute;p m&eacute;o t&igrave;nh h&igrave;nh; cổ s&uacute;y cho lối sống hưởng thụ, thực dụng, &iacute;ch kỷ, c&aacute; nh&acirc;n chủ nghĩa; đồng thời, cấu kết với c&aacute;c phần tử cơ hội v&agrave; bất m&atilde;n ch&iacute;nh trị hoạt động r&aacute;o riết, chống ph&aacute; c&aacute;ch mạng ng&agrave;y c&agrave;ng tinh vi, nguy hiểm hơn&quot; như Nghị quyết T.Ư 4 (kh&oacute;a XII) đ&atilde; chỉ r&otilde;, việc tăng cường, n&acirc;ng cao bản lĩnh ch&iacute;nh trị, tr&igrave;nh độ l&yacute; luận v&agrave; sự am hiểu đường lối, ch&iacute;nh s&aacute;ch của &ETH;ảng v&agrave; Nh&agrave; nước, khả năng nắm bắt c&aacute;c vấn đề của cuộc sống để ph&acirc;n biệt đ&uacute;ng - sai, từ đ&oacute; lu&ocirc;n tỉnh t&aacute;o, kh&ocirc;ng phụ họa theo nhận thức lệch lạc, quan điểm sai tr&aacute;i của c&aacute;c thế lực th&ugrave; địch trở th&agrave;nh y&ecirc;u cầu cấp thiết h&agrave;ng đầu trong nhận thức cũng như trong hoạt động thực tiễn của mọi c&aacute;n bộ, đảng vi&ecirc;n.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">Sự khuyết thiếu c&aacute;c khả năng n&agrave;y ở mỗi người dễ tạo ra cơ hội để nhận thức lệch lạc, quan điểm sai tr&aacute;i l&acirc;y lan, v&agrave; mỗi người rất dễ tự biến m&igrave;nh th&agrave;nh &quot;cột thu ph&aacute;t&quot; vừa tiếp nhận thiếu chọn lọc, vừa truyền b&aacute; một c&aacute;ch v&ocirc; &yacute; thức; bởi trong sinh hoạt hằng ng&agrave;y l&acirc;u nay đ&atilde; c&oacute; kh&ocirc;ng &iacute;t hiện tượng c&aacute;n bộ, đảng vi&ecirc;n đưa ra &yacute; kiến đại loại: &quot;thấy tr&ecirc;n mạng n&oacute;i thế n&agrave;y, thấy tr&ecirc;n mạng n&oacute;i thế kia&quot;, hoặc rỉ tai &quot;h&igrave;nh như &ocirc;ng A, b&agrave; B c&oacute; vấn đề&quot;, m&agrave; c&aacute;i gọi &quot;vấn đề&quot; đ&oacute; vốn mới xuất hiện tr&ecirc;n mạng.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:14px;"><span style="color:#0000ff;">Tham gia mạng x&atilde; hội cũng vậy, nếu mỗi c&aacute;n bộ, đảng vi&ecirc;n kh&ocirc;ng ch&uacute; &yacute; v&agrave; thiếu cẩn trọng, cũng c&oacute; thể biến t&acirc;m sự, suy nghĩ, phản &aacute;nh, nhận x&eacute;t thuần t&uacute;y của c&aacute; nh&acirc;n th&agrave;nh &quot;nguồn tin&quot; cho kẻ xấu lợi dụng. V&igrave; thế, để cuộc đấu tranh, phản b&aacute;c quan điểm sai tr&aacute;i, luận điệu xuy&ecirc;n tạc của c&aacute;c thế lực th&ugrave; địch, phản động, phần tử cơ hội, bất m&atilde;n ch&iacute;nh trị chống ph&aacute; &ETH;ảng, Nh&agrave; nước v&agrave; khối đại đo&agrave;n kết to&agrave;n d&acirc;n tộc,&hellip; ng&agrave;y c&agrave;ng n&acirc;ng cao hiệu quả x&atilde; hội, để việc kh&ocirc;ng ngừng x&acirc;y dựng khả năng tự vệ về tinh thần kh&ocirc;ng tạo cơ hội cho quan điểm sai tr&aacute;i l&acirc;y nhiễm v&agrave;o nhận thức của mỗi người, th&igrave; trước hết cần n&acirc;ng cao &yacute; thức tự gi&aacute;c của mỗi c&aacute;n bộ, đảng vi&ecirc;n. &Yacute; thức tự gi&aacute;c đ&oacute; cần kết hợp với y&ecirc;u cầu siết chặt kỷ luật, kỷ cương trong &ETH;ảng, thực hiện nghi&ecirc;m c&aacute;c nguy&ecirc;n tắc tổ chức của &ETH;ảng; phải c&oacute; h&igrave;nh thức xử l&yacute; kịp thời, ch&iacute;nh x&aacute;c, bảo đảm c&ocirc;ng khai, minh bạch, c&ocirc;ng bằng đối với c&aacute;n bộ, đảng vi&ecirc;n vi phạm./.</span></span></p>
<p>
	&nbsp;</p>
', N'', CAST(N'2019-01-11T14:00:00.000' AS DateTime), CAST(N'2019-01-11T14:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TruongDoanTheTintuc] OFF
SET IDENTITY_INSERT [dbo].[TruongGioithieu] ON 

INSERT [dbo].[TruongGioithieu] ([ID], [Chude]) VALUES (1, N'Tổng quan')
INSERT [dbo].[TruongGioithieu] ([ID], [Chude]) VALUES (2, N'Sơ đồ tổ chức')
INSERT [dbo].[TruongGioithieu] ([ID], [Chude]) VALUES (3, N'Ban giám hiệu')
SET IDENTITY_INSERT [dbo].[TruongGioithieu] OFF
SET IDENTITY_INSERT [dbo].[TruongGioithieufile] ON 

INSERT [dbo].[TruongGioithieufile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (2, 6, N'', N'Filedinhkem/truong/240818034842.docx')
INSERT [dbo].[TruongGioithieufile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (3, 9, N'', N'Filedinhkem/truong/250818023147.docx')
INSERT [dbo].[TruongGioithieufile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (6, 13, N'', N'Filedinhkem/truong/210918065811.docx')
SET IDENTITY_INSERT [dbo].[TruongGioithieufile] OFF
SET IDENTITY_INSERT [dbo].[TruongGioithieuTintuc] ON 

INSERT [dbo].[TruongGioithieuTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (6, 1, N'Giới thiệu về Trường', N'', N'<p align="center">
	<span style="color:#fd5523;"><span style="font-size:16px;"><strong>GIỚI THIỆU TRƯỜNG</strong></span></span></p>
<p align="center">
	&nbsp;</p>
<p>
	<span style="color:#fd5523;"><span style="font-size:14px;"><strong>1. Th&ocirc;ng tin chung của trường</strong></span></span></p>
<p>
	&nbsp; &nbsp;- T&ecirc;n trường: Trung c&acirc;́p ngh&ecirc;̀ Củ Chi</p>
<p>
	&nbsp; &nbsp;- Cơ quan chủ quản: UBND Huyện Củ Chi; Sở Lao động Thương binh X&atilde; hội Tp.HCM</p>
<p>
	&nbsp; &nbsp;- Địa chỉ:</p>
<p>
	&nbsp; &nbsp; &nbsp; + Trụ sở ch&iacute;nh: S&ocirc;́ 02, đường Nguy&ecirc;̃n Đại Năng, KP1, Thị tr&acirc;́n Củ Chi, huy&ecirc;̣n Củ Chi Tp.HCM.</p>
<p>
	&nbsp; &nbsp; &nbsp; + Cơ sở 2: ấp 3, x&atilde; Phước Vĩnh An, huyện Củ Chi</p>
<p>
	&nbsp; &nbsp; &nbsp; + Cơ sở 3: ấp Chợ Củ, x&atilde; An Nhơn T&acirc;y, huyện Củ Chi.</p>
<p>
	&nbsp; &nbsp;- Đi&ecirc;̣n thoại: 028. 37907268; 028. 38924669&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 028. 37907268</p>
<p>
	&nbsp; &nbsp;- Wedsite: trungcapnghecuchi.edu.vn;</p>
<p>
	&nbsp; &nbsp;- Email: <a href="mailto:tcncuchi2007@gmail.com">tcncuchi2007@gmail.com</a></p>
<p>
	&nbsp; &nbsp;- Năm th&agrave;nh lập: 1999</p>
<p>
	&nbsp; &nbsp; &nbsp; + Năm thành l&acirc;̣p đ&acirc;̀u ti&ecirc;n:&nbsp;1999</p>
<p>
	&nbsp; &nbsp; &nbsp; + Năm n&acirc;ng cấp thành trường Trung cấp ngh&ecirc;̀:&nbsp;2007</p>
<p>
	&nbsp; &nbsp;- Loại h&igrave;nh trường: C&ocirc;ng lập</p>
<p>
	<span style="color:#fd5523;"><strong>2. Nhiệm vụ</strong></span></p>
<p>
	&nbsp; &nbsp; - T&ocirc;̉ chức đào tạo nh&acirc;n lực kỹ thu&acirc;̣t trực ti&ecirc;́p trong sản xu&acirc;́t, dịch vụ ở các trình đ&ocirc;̣ trung c&acirc;́p ngh&ecirc;̀ và sơ c&acirc;́p ngh&ecirc;̀ nhằm trang bị cho người học năng lực thực hành ngh&ecirc;̀ tương xứng với trình đ&ocirc;̣ đào tạo, có sức khỏe, đạo đức lương t&acirc;m ngh&ecirc;̀ nghi&ecirc;̣p, ý thức kỷ lu&acirc;̣t, tác phong c&ocirc;ng nghi&ecirc;̣p, tạo đi&ecirc;̀u ki&ecirc;̣n cho người học có khả năng tìm vi&ecirc;̣c làm, tự tạo vi&ecirc;̣c làm hoặc ti&ecirc;́p tục học l&ecirc;n trình đ&ocirc;̣ cao hơn, đáp ứng y&ecirc;u c&acirc;̀u thị trường lao đ&ocirc;̣ng.</p>
<p>
	&nbsp; &nbsp;- T&ocirc;̉ chức x&acirc;y dựng, ph&ecirc; duy&ecirc;̣t và thực hi&ecirc;̣n các chương trình, giáo trình, học li&ecirc;̣u dạy ngh&ecirc;̀ đ&ocirc;́i với ngành ngh&ecirc;̀ được phép đào tạo theo th&acirc;̉m quy&ecirc;̀n.</p>
<p>
	&nbsp; &nbsp;- X&acirc;y dựng k&ecirc;́ hoạch tuy&ecirc;̉n sinh, t&ocirc;̉ chức tuy&ecirc;̉n sinh học ngh&ecirc;̀</p>
<p>
	&nbsp; &nbsp;- T&ocirc;̉ chức hoạt đ&ocirc;̣ng dạy và học; thi, ki&ecirc;̉m tra, c&ocirc;ng nh&acirc;̣n t&ocirc;́t nghi&ecirc;̣p, c&acirc;́p bằng, chứng chỉ ngh&ecirc;̀ theo quy định của B&ocirc;̣ Lao đ&ocirc;̣ng &ndash; Thương binh và Xã h&ocirc;̣i</p>
<p>
	&nbsp; &nbsp;- T&ocirc;̉ chức nghi&ecirc;n cứu khoa học; ứng dụng ti&ecirc;́n b&ocirc;̣ kỹ thu&acirc;̣t, chuy&ecirc;̉n giao c&ocirc;ng ngh&ecirc;̣; thực hi&ecirc;̣n sản xu&acirc;́t, kinh doanh và dịch vụ khoa học, kỹ thu&acirc;̣t theo quy định của pháp lu&acirc;̣t.</p>
<p>
	&nbsp; &nbsp;- Tư v&acirc;́n học ngh&ecirc;̀, tư v&acirc;́n vi&ecirc;̣c làm mi&ecirc;̃n phí cho người học ngh&ecirc;̀.</p>
<p>
	&nbsp; &nbsp;- T&ocirc;̉ chức cho người học ngh&ecirc;̀ tham quan, thực t&acirc;̣p tại doanh nghi&ecirc;̣p.</p>
<p>
	&nbsp; &nbsp;- Ph&ocirc;́i hợp với các doanh nghi&ecirc;̣p, t&ocirc;̉ chức, cá nh&acirc;n, gia đình người học ngh&ecirc;̀ trong hoạt đ&ocirc;̣ng dạy ngh&ecirc;̀.</p>
<p>
	&nbsp; &nbsp;- T&ocirc;̉ chức cho giáo vi&ecirc;n, cán b&ocirc;̣, nh&acirc;n vi&ecirc;n và người học ngh&ecirc;̀ tham gia các hoạt đ&ocirc;̣ng xã h&ocirc;̣i.</p>
<p>
	&nbsp; &nbsp;- Thực hi&ecirc;̣n các nhi&ecirc;̣m vụ khác theo quy định của pháp lu&acirc;̣t.</p>
<p>
	&nbsp;</p>
<p align="center">
	&nbsp;</p>
', N'', CAST(N'2018-08-24T03:48:00.000' AS DateTime), CAST(N'2018-09-26T14:57:00.000' AS DateTime), 1)
INSERT [dbo].[TruongGioithieuTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (13, 2, N'Sơ đồ tổ chức', N'', N'<p align="center">
	&nbsp;</p>
<p align="center">
	<span style="font-size:16px;"><strong><span style="color:#fd5523;">SƠ ĐỒ TỔ CHỨC</span></strong></span></p>
<p>
	&nbsp;</p>
<ol>
	<li>
		<strong>Sơ đồ tổ chức trường:</strong></li>
</ol>
<p style="text-align: center;">
	<strong><strong><strong><strong><strong><strong><strong><strong>​<img alt="" src="/Uploads/images/sodotochuc(1).png" style="width: 600px; height: 555px;" /></strong></strong></strong></strong></strong></strong></strong></strong></p>
<p>
	&nbsp;</p>
<ol>
	<li value="2">
		<strong>C&aacute;n bộ chủ chốt từng ph&ograve;ng/Khoa/Đo&agrave;n thể:</strong></li>
</ol>
<ol style="list-style-type:upper-alpha;">
	<li>
		<strong>Ban gi&aacute;m hiệu:</strong></li>
</ol>
<ol>
	<li>
		Hiệu trưởng:&nbsp; Trần Minh Phụng</li>
	<li>
		Ph&oacute; hiệu trưởng:&nbsp; Ths. L&ecirc; Đ&igrave;nh H&ugrave;ng</li>
	<li>
		Ph&oacute; hiệu trưởng:&nbsp; Phan Đỗ Huy Th&ocirc;ng</li>
</ol>
<ol style="list-style-type:upper-alpha;">
	<li value="2">
		<strong>C&aacute;c ph&ograve;ng chức năng:</strong></li>
</ol>
<ol>
	<li>
		Ph&ograve;ng Đ&agrave;o tạo:&nbsp;</li>
</ol>
<p style="margin-left:72.0pt;">
	Trưởng ph&ograve;ng:&nbsp; Phan Ngọc Mai</p>
<p style="margin-left:72.0pt;">
	Ph&oacute; Trưởng ph&ograve;ng: Nguyễn Bảo Trọng</p>
<ol>
	<li value="2">
		Ph&ograve;ng H&agrave;nh ch&aacute;nh &ndash; Quản trị:</li>
</ol>
<p style="margin-left:72.0pt;">
	Trưởng ph&ograve;ng:&nbsp; Nguyễn Đỗ Như Quỳnh</p>
<ol>
	<li value="3">
		Ph&ograve;ng T&agrave;i vụ - Cơ sở vật chất:</li>
</ol>
<p style="margin-left:72.0pt;">
	Trưởng ph&ograve;ng: Trần Văn Sơn</p>
<ol>
	<li value="4">
		Ph&ograve;ng C&ocirc;ng t&aacute;c HSSV &ndash; Quan hệ x&iacute; nghiệp:</li>
</ol>
<p style="margin-left:72.0pt;">
	Trưởng ph&ograve;ng: Triệu Thi&ecirc;n Th&agrave;nh</p>
<ol style="list-style-type:upper-alpha;">
	<li value="3">
		<strong>C&aacute;c khoa chuy&ecirc;n m&ocirc;n:</strong></li>
</ol>
<ol>
	<li>
		Khoa Kỹ Thuật Điện:&nbsp;</li>
</ol>
<p style="margin-left:72.0pt;">
	Trưởng khoa: L&ecirc; Văn T&ugrave;ng</p>
<ol>
	<li value="2">
		Khoa Cơ kh&iacute; &ndash; &Ocirc; t&ocirc;:&nbsp;</li>
</ol>
<p style="margin-left:72.0pt;">
	Trưởng khoa: Nguyễn Văn H&ugrave;ng</p>
<ol>
	<li value="3">
		Khoa Tin học - Nữ C&ocirc;ng:&nbsp;</li>
</ol>
<p style="margin-left:72.0pt;">
	Trưởng khoa: Trần Vũ C&ocirc;ng</p>
<p style="margin-left:72.0pt;">
	Tổ trưởng tổ Nữ c&ocirc;ng: Nguyễn Thị Lợt</p>
<ol>
	<li value="4">
		Khoa Kỹ thuật Cơ sở - N&ocirc;ng nghiệp:&nbsp;</li>
</ol>
<p style="margin-left:72.0pt;">
	Trưởng khoa: Phạm Vũ B&atilde;o</p>
<ol>
	<li value="5">
		Tổ văn h&oacute;a:&nbsp;</li>
</ol>
<p style="margin-left:72.0pt;">
	Tổ trưởng: Đ&agrave;o C&ocirc;ng Toại</p>
<ol style="list-style-type:upper-alpha;">
	<li value="4">
		<strong>Chi bộ:</strong></li>
</ol>
<p style="margin-left:72.0pt;">
	B&iacute; thư chi bộ: L&ecirc; Đ&igrave;nh H&ugrave;ng</p>
<p style="margin-left:72.0pt;">
	Ph&oacute; b&iacute; thư chi bộ: Phan Đỗ Huy Th&ocirc;ng</p>
<p style="margin-left:72.0pt;">
	Chi ủy vi&ecirc;n: Phan Ngọc Mai</p>
<ol style="list-style-type:upper-alpha;">
	<li value="5">
		<strong>C&aacute;c Đo&agrave;n thể:</strong></li>
</ol>
<ol>
	<li>
		C&ocirc;ng đo&agrave;n:</li>
</ol>
<p style="margin-left:72.0pt;">
	- Chủ tịch c&ocirc;ng đo&agrave;n: L&ecirc; Văn T&ugrave;ng</p>
<p style="margin-left:72.0pt;">
	- Ph&oacute; chủ tịch c&ocirc;ng đo&agrave;n: Nguyễn Thị Thanh Tuyền</p>
<ol>
	<li value="2">
		Đo&agrave;n thanh ni&ecirc;n:</li>
</ol>
<ul>
	<li>
		B&iacute; thư đo&agrave;n trường: Nguyễn Bảo Trọng</li>
	<li>
		Ph&oacute; b&iacute; thư: &nbsp;Nguyễn Ho&agrave;ng Nam</li>
</ul>
<p style="margin-left:36.0pt;">
	&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-21T18:47:00.000' AS DateTime), CAST(N'2019-01-01T22:16:00.000' AS DateTime), 1)
INSERT [dbo].[TruongGioithieuTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (14, 3, N'Giới thiệu về Ban Giám Hiệu', N'', N'<p align="center">
	<span style="font-size:16px;"><span style="color:#fd5523;"><strong>BAN GI&Aacute;M HIỆU</strong></span></span></p>
<ol>
	<li>
		<strong>Hiệu trưởng: Trần Minh Phụng</strong></li>
</ol>
<p>
	L&atilde;nh đạo, quản l&yacute; to&agrave;n diện mọi hoạt động của trường thuộc chức năng, nhiệm vụ v&agrave; quyền hạn của Hiệu trưởng; Phụ tr&aacute;ch, chỉ đạo c&aacute;c lĩnh vực, c&ocirc;ng t&aacute;c:</p>
<p style="margin-left:18.0pt;">
	- C&ocirc;ng t&aacute;c nh&acirc;n sự;</p>
<p style="margin-left:18.0pt;">
	- C&ocirc;ng t&aacute;c thi đua, khen thưởng;</p>
<p style="margin-left:18.0pt;">
	- Quản l&yacute; điều h&agrave;nh t&agrave;i ch&iacute;nh;</p>
<p style="margin-left:18.0pt;">
	- Quản l&yacute; c&aacute;c kế hoạch ph&aacute;t triển chuy&ecirc;n m&ocirc;n, cơ sở vật chất;</p>
<p style="margin-left:18.0pt;">
	- Ph&ograve;ng H&agrave;nh ch&iacute;nh &ndash; Quản trị;</p>
<p style="margin-left:18.0pt;">
	- Ph&ograve;ng Đ&agrave;o tạo;</p>
<p style="margin-left:18.0pt;">
	- Ph&ograve;ng T&agrave;i vụ - CSVC;</p>
<p style="margin-left:18.0pt;">
	- Ph&ograve;ng C&ocirc;ng t&aacute;c HSSV - Quan hệ x&iacute; nghiệp.</p>
<ol>
	<li value="2">
		<strong>Ph&oacute; hiệu trưởng: Ths. L&ecirc; Đ&igrave;nh H&ugrave;ng</strong></li>
</ol>
<p style="margin-left:18.0pt;">
	Phụ tr&aacute;ch chỉ đạo c&aacute;c lĩnh vực, ph&ograve;ng khoa:</p>
<p style="margin-left:18.0pt;">
	- Nội ch&iacute;nh (c&ocirc;ng t&aacute;c tổ chức, chế độ ch&iacute;nh s&aacute;ch);</p>
<p style="margin-left:18.0pt;">
	- Quản l&yacute; c&aacute;c Khoa: Kỹ thuật cơ sở - N&ocirc;ng nghiệp, Tổ Văn h&oacute;a + Tổ Chủ nhiệm.</p>
<ol>
	<li value="3">
		<strong>Ph&oacute; hiệu trưởng: Phan Đỗ Huy Th&ocirc;ng</strong></li>
</ol>
<p>
	Phụ tr&aacute;ch chỉ đạo c&aacute;c lĩnh vực, ph&ograve;ng khoa:</p>
<p style="margin-left:18.0pt;">
	- C&aacute;c lớp li&ecirc;n kết, li&ecirc;n doanh, dịch vụ, hoạt động ngoại kh&oacute;a, đ&agrave;o tạo nghề cho lao động n&ocirc;ng th&ocirc;n, thực tập, giới thiệu việc l&agrave;m, l&aacute;i xe m&ocirc;t&ocirc;, Văn h&oacute;a cơ sở;</p>
<p style="margin-left:18.0pt;">
	- Phụ tr&aacute;ch c&aacute;c Khoa: Cơ kh&iacute; - &Ocirc; t&ocirc;, Tin học - Nữ c&ocirc;ng, Kỹ thuật điện.</p>
<p style="margin-left:18.0pt;">
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p style="margin-left:72.0pt;">
	&nbsp;</p>
<p style="margin-left:72.0pt;">
	&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-21T18:48:00.000' AS DateTime), CAST(N'2019-01-01T22:32:00.000' AS DateTime), 1)
INSERT [dbo].[TruongGioithieuTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (16, 2, N'test', N'test', N'<p>
	test</p>
', N'', CAST(N'2019-01-01T22:17:00.000' AS DateTime), CAST(N'2019-01-01T22:18:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TruongGioithieuTintuc] OFF
SET IDENTITY_INSERT [dbo].[TruongKhoaTrungtam] ON 

INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (1, N'Khoa Cơ khí - ô tô')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (2, N'Khoa Công nghệ ô tô')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (3, N'Khoa Tin học')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (4, N'Khoa Điện - Điện tử')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (5, N'Khoa Điện tử')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (6, N'Khoa Kinh tế')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (7, N'Khoa Nông nghệp')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (8, N'Khoa Nữ công')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (9, N'Tổ Bộ môn chung')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (10, N'Trung tâm tuyển sinh và hỗ trợ việc làm')
INSERT [dbo].[TruongKhoaTrungtam] ([ID], [Chude]) VALUES (11, N'Tổ văn hóa')
SET IDENTITY_INSERT [dbo].[TruongKhoaTrungtam] OFF
SET IDENTITY_INSERT [dbo].[TruongKhoaTrungtamTintuc] ON 

INSERT [dbo].[TruongKhoaTrungtamTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (2, 4, N'Giới thiệu về Khoa Kỹ thuật điện và đội ngủ giáo viên', N'', N'<p style="text-align: center;">
	<span style="font-size:16px;"><strong><span style="color:#fd5523;">GIỚI THIỆU VỀ KHOA KỸ THUẬT ĐIỆN V&Agrave; ĐỘI NGỦ GI&Aacute;O VI&Ecirc;N</span></strong></span></p>
<p>
	<strong><span style="color:#fd5523;"><span style="font-size:16px;">I. Giới thiệu:</span></span></strong></p>
<p>
	- Tổ chức bi&ecirc;n soạn chương tr&igrave;nh, gi&aacute;o tr&igrave;nh thuộc c&aacute;c nghề Điện c&ocirc;ng nghiệp, Kỹ thuật m&aacute;y lạnh v&agrave; điều h&ograve;a kh&ocirc;ng kh&iacute;; Đi&ecirc;̣n tử c&ocirc;ng nghi&ecirc;̣p; c&aacute;c m&ocirc;n học do khoa phụ tr&aacute;ch;</p>
<p>
	- Tổ chức thực hiện qu&aacute; tr&igrave;nh giảng dạy l&yacute; thuyết v&agrave; thực h&agrave;nh c&aacute;c nghề Điện c&ocirc;ng nghiệp, Kỹ thuật m&aacute;y lạnh v&agrave; điều h&ograve;a kh&ocirc;ng kh&iacute;, c&aacute;c m&ocirc;n chuy&ecirc;n ng&agrave;nh được nh&agrave; trường giao;</p>
<p>
	- Quản l&yacute; c&aacute;c lớp nghề Điện c&ocirc;ng nghiệp, Kỹ thuật m&aacute;y lạnh v&agrave; điều h&ograve;a kh&ocirc;ng kh&iacute;, ph&acirc;n c&ocirc;ng gi&aacute;o vi&ecirc;n chủ nhiệm c&aacute;c lớp do khoa phụ tr&aacute;ch;</p>
<p>
	- Tổ chức quản l&yacute; xưởng thực h&agrave;nh c&aacute;c nghề Điện c&ocirc;ng nghiệp, Kỹ thuật m&aacute;y lạnh v&agrave; điều h&ograve;a kh&ocirc;ng kh&iacute;. Lập dự tr&ugrave; vật tư, thiết bị phục vụ cho giảng dạy, tr&ecirc;n cơ sở kế hoạch tiến độ giảng dạy của từng m&ocirc;n học, x&acirc;y dựng định mức vật tư thực h&agrave;nh, tổ chức thực h&agrave;nh theo chương tr&igrave;nh đ&agrave;o tạo;</p>
<p>
	- Tổ chức quản l&yacute; gi&aacute;o vi&ecirc;n theo c&aacute;c qui định về quản l&yacute; đ&agrave;o tạo, theo d&otilde;i, đ&ocirc;n đốc đảm bảo tiến độ giảng dạy v&agrave; kế hoạch gi&aacute;o vi&ecirc;n.</p>
<p>
	<span style="color:#fd5523;"><span style="font-size:16px;"><strong>II. Đội ngũ gi&aacute;o vi&ecirc;n:</strong></span></span></p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:54px;">
				<p align="center">
					<strong>Stt</strong></p>
			</td>
			<td style="width:189px;">
				<p align="center">
					<strong>T&ecirc;n gi&aacute;o vi&ecirc;n</strong></p>
			</td>
			<td style="width:171px;">
				<p align="center">
					<strong>Vị tr&iacute; c&ocirc;ng việc</strong></p>
			</td>
			<td style="width:225px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n</strong></p>
				<p align="center">
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width: 54px; text-align: center;">
				1</td>
			<td style="width: 189px; text-align: center;">
				L&ecirc; Văn T&ugrave;ng</td>
			<td style="width: 171px; text-align: center;">
				Trưởng khoa</td>
			<td style="width:225px;">
				<p style="text-align: center;">
					Thạc sĩ Phương ph&aacute;p dạy học;</p>
				<p style="text-align: center;">
					Kỹ sư Điện &ndash; Điện tử</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					2</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Đoan Th&ugrave;y Như Hồng Ngọc</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Ph&oacute; trưởng khoa</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Thạc sĩ Phương ph&aacute;p dạy học;</p>
				<p align="center">
					Kỹ sư Điện &ndash; Điện tử</p>
			</td>
		</tr>
		<tr>
			<td style="width: 54px; text-align: center;">
				3</td>
			<td style="width: 189px; text-align: center;">
				Trần Ngọc Phi&ecirc;n</td>
			<td style="width: 171px; text-align: center;">
				Gi&aacute;o vi&ecirc;n</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Điện c&ocirc;ng nghiệp</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					4</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Triệu Thi&ecirc;n Th&agrave;nh</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Kỹ thuật c&ocirc;ng nghiệp</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					5</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					L&ecirc; Th&agrave;nh Tr&iacute;</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Kỹ thuật Điện &ndash; Điện tử</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					6</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					L&ecirc; Minh Nhẫn</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Kỹ thuật Điện &ndash; Điện tử</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					7</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn C&ocirc;ng Tạo</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Kỹ thuật Nhiệt &ndash; Điện lạnh</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					8</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					V&otilde; Th&agrave;nh Nhơn</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Thạc sĩ</p>
				<p align="center">
					Kỹ thuật Nhiệt &ndash; Điện lạnh</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					9</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Phạm Ho&agrave;ng Đạt</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Thạc sĩ</p>
				<p align="center">
					Điện c&ocirc;ng nghiệp</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					10</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Mai Văn L&ecirc;</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Điện kỹ thuật</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					11</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Trung Hiếu</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Quản l&yacute; xưởng</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Trung cấp</p>
				<p align="center">
					Điện tử</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-01T08:00:00.000' AS DateTime), CAST(N'2019-01-01T23:17:00.000' AS DateTime), 1)
INSERT [dbo].[TruongKhoaTrungtamTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (3, 1, N'Giới thiệu về Khoa Cơ Khí- Ô tô và đội ngủ giáo viên', N'', N'<p style="text-align: center;">
	<span style="color:#fd5523;"><strong>GIỚI THIỆU VỀ KHOA CƠ KH&Iacute; - &Ocirc; T&Ocirc; V&Agrave; ĐỘI NGỦ GI&Aacute;O VI&Ecirc;N</strong></span></p>
<p>
	<span style="color:#fd5523;"><strong>I. Giới thiệu</strong></span></p>
<p>
	- Tổ chức bi&ecirc;n soạn chương tr&igrave;nh, gi&aacute;o tr&igrave;nh thuộc c&aacute;c nghề Cắt gọt kim loại; c&ocirc;ng ngh&ecirc;̣ &ocirc; t&ocirc;; c&aacute;c m&ocirc;n học do khoa phụ tr&aacute;ch;</p>
<p>
	- Tổ chức thực hiện qu&aacute; tr&igrave;nh giảng dạy l&yacute; thuyết v&agrave; thực h&agrave;nh c&aacute;c nghề Cắt gọt kim loại, c&aacute;c m&ocirc;n chuy&ecirc;n ng&agrave;nh được nh&agrave; trường giao;</p>
<p>
	- Quản l&yacute; c&aacute;c lớp nghề Cắt gọt kim loại, c&ocirc;ng ngh&ecirc;̣ &ocirc; t&ocirc;; ph&acirc;n c&ocirc;ng gi&aacute;o vi&ecirc;n chủ nhiệm c&aacute;c lớp do khoa phụ tr&aacute;ch;</p>
<p>
	- Tổ chức quản l&yacute; xưởng thực h&agrave;nh c&aacute;c nghề Cắt gọt kim loại, c&ocirc;ng nghệ &ocirc; t&ocirc;. Lập dự tr&ugrave; vật tư, thiết bị phục vụ cho giảng dạy, tr&ecirc;n cơ sở kế hoạch tiến độ giảng dạy của từng m&ocirc;n học, x&acirc;y dựng định mức vật tư thực h&agrave;nh, tổ chức thực h&agrave;nh theo chương tr&igrave;nh đ&agrave;o tạo;</p>
<p>
	- Tổ chức quản l&yacute; gi&aacute;o vi&ecirc;n theo c&aacute;c qui định về quản l&yacute; đ&agrave;o tạo, theo d&otilde;i, đ&ocirc;n đốc đảm bảo tiến độ giảng dạy v&agrave; kế hoạch gi&aacute;o vi&ecirc;n.</p>
<p>
	<span style="color:#fd5523;"><strong>II. Đội ngũ gi&aacute;o vi&ecirc;n</strong></span></p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:54px;">
				<p align="center">
					<strong>Stt</strong></p>
			</td>
			<td style="width:189px;">
				<p align="center">
					<strong>T&ecirc;n gi&aacute;o vi&ecirc;n</strong></p>
			</td>
			<td style="width:171px;">
				<p align="center">
					<strong>Vị tr&iacute; c&ocirc;ng việc</strong></p>
			</td>
			<td style="width:225px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n</strong></p>
				<p align="center">
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					1</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Văn H&ugrave;ng</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Trưởng khoa</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Điện c&ocirc;ng nghiệp</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					2</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Ho&agrave;ng Nam</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					C&ocirc;ng nghệ &ocirc; t&ocirc;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					3</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Quốc Việt Cường</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Cơ kh&iacute; chế tạo</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					4</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Trần Quang Thạch</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Thạc sĩ</p>
				<p align="center">
					Kỹ thuật cơ kh&iacute;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					5</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Phan Minh Hiếu</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Thạc sĩ</p>
				<p align="center">
					Kỹ thuật cơ kh&iacute;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					6</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Hải Tr&acirc;n</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Thạc sĩ</p>
				<p align="center">
					Cơ kh&iacute; động lực</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					7</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn C&ocirc;ng Hạnh</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-01T08:11:00.000' AS DateTime), CAST(N'2018-09-20T22:04:00.000' AS DateTime), 1)
INSERT [dbo].[TruongKhoaTrungtamTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (4, 3, N'Giới thiệu về khoa Tin học - Nữ công và đội ngủ giáo viên', N'', N'<p style="text-align: center;">
	<span style="font-size:16px;"><b style="color: rgb(253, 85, 35);">GIỚI THI&Ecirc;U VỀ KHOA TIN HỌC - NỮ C&Ocirc;NG V&Agrave; ĐỘI NGỦ GI&Aacute;O VI&Ecirc;N</b></span></p>
<p>
	<span style="color:#fd5523;"><strong>I. Giới thiệu</strong></span></p>
<p>
	- Tổ chức bi&ecirc;n soạn chương tr&igrave;nh, gi&aacute;o tr&igrave;nh thuộc c&aacute;c nghề Kỹ thu&acirc;̣t sửa chữa lắp ráp máy tính; nghề May thời trang c&aacute;c m&ocirc;n học do khoa phụ tr&aacute;ch;</p>
<p>
	- Tổ chức thực hiện qu&aacute; tr&igrave;nh giảng dạy l&yacute; thuyết v&agrave; thực h&agrave;nh c&aacute;c nghề Thi&ecirc;́t k&ecirc;́ đ&ocirc;̀ họa và Kỹ thu&acirc;̣t sửa chữa lắp ráp máy tính; nghề May thời trang; c&aacute;c m&ocirc;n chuy&ecirc;n ng&agrave;nh được nh&agrave; trường giao;</p>
<p>
	- Quản l&yacute; c&aacute;c lớp nghề Kỹ thu&acirc;̣t sửa chữa lắp ráp máy tính; nghề May thời trang, ph&acirc;n c&ocirc;ng gi&aacute;o vi&ecirc;n chủ nhiệm c&aacute;c lớp do khoa phụ tr&aacute;ch;</p>
<p>
	- Tổ chức quản l&yacute; ph&ograve;ng m&aacute;y thực h&agrave;nh c&aacute;c nghề Kỹ thu&acirc;̣t sửa chữa lắp ráp máy tính; nghề May thời trang. Lập dự tr&ugrave; vật tư, thiết bị phục vụ cho giảng dạy, tr&ecirc;n cơ sở kế hoạch tiến độ giảng dạy của từng m&ocirc;n học, x&acirc;y dựng định mức vật tư thực h&agrave;nh, tổ chức thực h&agrave;nh theo chương tr&igrave;nh đ&agrave;o tạo;</p>
<p>
	- Tổ chức quản l&yacute; gi&aacute;o vi&ecirc;n theo c&aacute;c qui định về quản l&yacute; đ&agrave;o tạo, theo d&otilde;i, đ&ocirc;n đốc đảm bảo tiến độ giảng dạy v&agrave; kế hoạch gi&aacute;o vi&ecirc;n.</p>
<p>
	<span style="color:#fd5523;"><strong>II. Đội ngũ gi&aacute;o vi&ecirc;n</strong></span></p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:54px;">
				<p align="center">
					<strong>Stt</strong></p>
			</td>
			<td style="width:189px;">
				<p align="center">
					<strong>T&ecirc;n gi&aacute;o vi&ecirc;n</strong></p>
			</td>
			<td style="width:171px;">
				<p align="center">
					<strong>Vị tr&iacute; c&ocirc;ng việc</strong></p>
			</td>
			<td style="width:225px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n</strong></p>
				<p align="center">
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					1</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Trần Vũ C&ocirc;ng</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Trưởng khoa</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					C&ocirc;ng nghệ th&ocirc;ng tin</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					2</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Thị Lợt</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Tổ trưởng tổ Nữ c&ocirc;ng</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					C&ocirc;ng nghệ May</p>
			</td>
		</tr>
		<tr>
			<td style="width: 54px; text-align: center;">
				3</td>
			<td style="width: 189px; text-align: center;">
				L&ecirc; Ngọc B&iacute;ch</td>
			<td style="width: 171px; text-align: center;">
				Gi&aacute;o vi&ecirc;n&nbsp;</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					C&ocirc;ng nghệ May</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					4</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					L&ecirc; B&aacute; Thi</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Cử nh&acirc;n</p>
				<p align="center">
					C&ocirc;ng nghệ th&ocirc;ng tin</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					5</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					L&ecirc; Duy Cường</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Quản l&yacute; ph&ograve;ng m&aacute;y</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Trung cấp</p>
				<p align="center">
					C&ocirc;ng nghệ th&ocirc;ng tin</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-01T08:16:00.000' AS DateTime), CAST(N'2019-01-01T23:10:00.000' AS DateTime), 1)
INSERT [dbo].[TruongKhoaTrungtamTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (5, 7, N'Giới thiệu về khoa Kỹ thuật cơ sở - Nông nghiệp và đội ngủ giáo viên', N'', N'<p style="text-align: center;">
	<strong><span style="color:#fd5523;">GIỚI THIỆU VỀ KHOA KỸ THUẬT CƠ SỞ - N&Ocirc;NG NGHIỆP V&Agrave; ĐỘI NGỦ GI&Aacute;O VI&Ecirc;N</span></strong></p>
<p>
	<strong><span style="color:#fd5523;">I. Giới thiệu:</span></strong></p>
<p>
	- Tổ chức bi&ecirc;n soạn chương tr&igrave;nh, gi&aacute;o tr&igrave;nh thuộc c&aacute;c nghề Thú y và các ngh&ecirc;̀ n&ocirc;ng nghi&ecirc;̣p trình đ&ocirc;̣ sơ c&acirc;́p; c&aacute;c m&ocirc;n học cơ sở do khoa phụ tr&aacute;ch;</p>
<p>
	- Tổ chức thực hiện qu&aacute; tr&igrave;nh giảng dạy l&yacute; thuyết v&agrave; thực h&agrave;nh Thú y và các ngh&ecirc;̀ n&ocirc;ng nghi&ecirc;̣p trình đ&ocirc;̣ sơ c&acirc;́p; c&aacute;c m&ocirc;n chuy&ecirc;n ng&agrave;nh được giao;</p>
<p>
	- Quản l&yacute; c&aacute;c lớp nghề Thú y v&agrave; ph&acirc;n c&ocirc;ng gi&aacute;o vi&ecirc;n chủ nhiệm c&aacute;c lớp;</p>
<p>
	- Tổ chức quản l&yacute; ph&ograve;ng thực h&agrave;nh c&aacute;c nghề Thú y. Lập dự tr&ugrave; vật tư, thiết bị phục vụ cho giảng dạy, tr&ecirc;n cơ sở kế hoạch tiến độ giảng dạy của từng m&ocirc;n học, x&acirc;y dựng định mức vật tư thực h&agrave;nh, tổ chức thực h&agrave;nh theo chương tr&igrave;nh đ&agrave;o tạo;</p>
<p>
	- Tổ chức quản l&yacute; gi&aacute;o vi&ecirc;n theo c&aacute;c qui định về quản l&yacute; đ&agrave;o tạo, theo d&otilde;i, đ&ocirc;n đốc đảm bảo tiến độ giảng dạy v&agrave; kế hoạch gi&aacute;o vi&ecirc;n.</p>
<p>
	<span style="color:#fd5523;"><strong>&nbsp;II. Đội ngũ gi&aacute;o vi&ecirc;n:</strong></span></p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:54px;">
				<p align="center">
					<strong>Stt</strong></p>
			</td>
			<td style="width:189px;">
				<p align="center">
					<strong>T&ecirc;n gi&aacute;o vi&ecirc;n</strong></p>
			</td>
			<td style="width:171px;">
				<p align="center">
					<strong>Vị tr&iacute; c&ocirc;ng việc</strong></p>
			</td>
			<td style="width:225px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n</strong></p>
				<p align="center">
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width: 54px; text-align: center;">
				1</td>
			<td style="width: 189px; text-align: center;">
				Phạm Vũ B&atilde;o</td>
			<td style="width: 171px; text-align: center;">
				Trưởng khoa</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Cơ kh&iacute; N&ocirc;ng l&acirc;m</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					2</p>
			</td>
			<td style="width:189px;">
				<p style="text-align: center;">
					Ng&ocirc; Văn Hiệp</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					N&ocirc;ng nghiệp</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					3</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Văn Th&agrave;nh</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					B&aacute;c sĩ Th&uacute; y</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					4</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Nguyễn Đỗ Như Quỳnh</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					B&aacute;c sĩ Th&uacute; y</p>
			</td>
		</tr>
		<tr>
			<td style="width: 54px; text-align: center;">
				5</td>
			<td style="width: 189px; text-align: center;">
				Phạm Ho&agrave;i V&acirc;n</td>
			<td style="width: 171px; text-align: center;">
				Gi&aacute;o vi&ecirc;n</td>
			<td style="width: 225px; text-align: center;">
				<p>
					Cử nh&acirc;n</p>
				<p>
					Ngữ văn Anh</p>
			</td>
		</tr>
		<tr>
			<td style="width: 54px; text-align: center;">
				6</td>
			<td style="width: 189px; text-align: center;">
				L&ecirc; Văn Hương</td>
			<td style="width: 171px; text-align: center;">
				Gi&aacute;o vi&ecirc;n</td>
			<td style="width: 225px; text-align: center;">
				<p>
					Cử nh&acirc;n&nbsp;</p>
				<p>
					Cơ điện tử</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-01T08:22:00.000' AS DateTime), CAST(N'2019-01-02T00:09:00.000' AS DateTime), 1)
INSERT [dbo].[TruongKhoaTrungtamTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (6, 9, N'Giới thiệu về Tổ bộ môn', N'', N'<p style="text-align: center;">
	<span style="color:#fd5523;"><span style="font-size:16px;"><strong>GIỚI THIỆU VỀ TỔ&nbsp; BỘ M&Ocirc;N CHUNG</strong></span></span></p>
<p style="text-align: center;">
	&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:54px;">
				<p align="center">
					<strong>Stt</strong></p>
			</td>
			<td style="width:189px;">
				<p align="center">
					<strong>T&ecirc;n gi&aacute;o vi&ecirc;n</strong></p>
			</td>
			<td style="width:171px;">
				<p align="center">
					<strong>Vị tr&iacute; c&ocirc;ng việc</strong></p>
			</td>
			<td style="width:225px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n</strong></p>
				<p align="center">
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					1</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					L&ecirc; Văn T&ugrave;ng</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Tổ trưởng</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Thạc sĩ</p>
				<p align="center">
					L&yacute; luận v&agrave; phương ph&aacute;p dạy học</p>
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Điện &ndash; Điện tử</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					2</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					L&ecirc; Văn Hương</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Kỹ sư</p>
				<p align="center">
					Cơ điện tử</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					3</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Phạm Ho&agrave;i V&acirc;n</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Cử nh&acirc;n</p>
				<p align="center">
					Tiếng anh</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-01T08:26:00.000' AS DateTime), CAST(N'2018-09-20T22:22:00.000' AS DateTime), 1)
INSERT [dbo].[TruongKhoaTrungtamTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (7, 11, N'Giới thiệu về Tổ văn hóa', N'', N'<p style="text-align: center;">
	<span style="font-size:16px;"><strong><span style="color:#fd5523;">GIỚI THIỆU VỀ TỔ VĂN H&Oacute;A</span></strong></span></p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td style="width:54px;">
				<p align="center">
					<strong>Stt</strong></p>
			</td>
			<td style="width:189px;">
				<p align="center">
					<strong>T&ecirc;n gi&aacute;o vi&ecirc;n</strong></p>
			</td>
			<td style="width:171px;">
				<p align="center">
					<strong>Vị tr&iacute; c&ocirc;ng việc</strong></p>
			</td>
			<td style="width:225px;">
				<p align="center">
					&nbsp;</p>
				<p align="center">
					<strong>Tr&igrave;nh độ chuy&ecirc;n m&ocirc;n</strong></p>
				<p align="center">
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					1</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					Đ&agrave;o C&ocirc;ng Toại</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Tổ trưởng</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Cử nh&acirc;n To&aacute;n học</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					2</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					V&otilde; Thị Thanh Trang</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Cử nh&acirc;n To&aacute;n học</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					3</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					L&ecirc; Thị Yến</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Cử nh&acirc;n Vật l&yacute;</p>
			</td>
		</tr>
		<tr>
			<td style="width:54px;">
				<p align="center">
					4</p>
			</td>
			<td style="width:189px;">
				<p align="center">
					L&ecirc; Nguyễn Th&uacute;y Hằng</p>
			</td>
			<td style="width:171px;">
				<p align="center">
					Gi&aacute;o vi&ecirc;n</p>
			</td>
			<td style="width:225px;">
				<p align="center">
					Cử nh&acirc;n Văn</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-01T08:28:00.000' AS DateTime), CAST(N'2018-09-20T22:21:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TruongKhoaTrungtamTintuc] OFF
SET IDENTITY_INSERT [dbo].[TruongNoibo] ON 

INSERT [dbo].[TruongNoibo] ([ID], [Chude]) VALUES (3, N'LỊCH CÔNG TÁC')
INSERT [dbo].[TruongNoibo] ([ID], [Chude]) VALUES (4, N'CỔNG THÔNG TIN TRƯỜNG')
INSERT [dbo].[TruongNoibo] ([ID], [Chude]) VALUES (6, N'CỔNG THÔNG TIN SINH VIÊN')
SET IDENTITY_INSERT [dbo].[TruongNoibo] OFF
SET IDENTITY_INSERT [dbo].[TruongNoiboTintuc] ON 

INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (36, 5, N'Danh sách tổng hợp thí sinh trúng tuyển năm 2018-2019 - Đợt 1 - Trình độ Trung cấp, Cao đẳng', N'Danh sách tổng hợp thí sinh trúng tuyển năm 2018-2019 - Đợt 1 - Trình độ Trung cấp, Cao đẳng', N'<h2 class="itemTitle" style="margin: 0px; font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 22px; color: rgb(0, 0, 0); text-rendering: optimizeLegibility; font-size: 20px; padding: 10px 0px 4px;">
	<strong style="color: rgb(0, 0, 255); font-size: 13px;">Danh s&aacute;ch tổng hợp th&iacute; sinh tr&uacute;ng tuyển năm 2018-2019 - Đợt 1 - Tr&igrave;nh độ Trung cấp, Cao đẳng.</strong></h2>
', N'~/Hinhanh/truong/020818020433.png', CAST(N'2018-08-02T14:04:00.000' AS DateTime), CAST(N'2018-08-02T14:04:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (37, 5, N'Thông báo danh sách chi tiết phòng thi tốt nghiệp các lớp Cao đẳng nghề; Cao đẳng nghề liên thông; Trung cấp nghề và Trung cấp nghề 18 tháng (đợt 2). Khóa học 2015-2018 & Khóa học 2016-2018', N'Thông báo danh sách chi tiết phòng thi tốt nghiệp các lớp Cao đẳng nghề; Cao đẳng nghề liên thông; Trung cấp nghề và Trung cấp nghề 18 tháng (đợt 2). Khóa học 2015-2018 & Khóa học 2016-2018.', N'<p>
	<span style="color: rgb(0, 0, 0); font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">Th&ocirc;ng b&aacute;o danh s&aacute;ch chi tiết ph&ograve;ng thi tốt nghiệp c&aacute;c lớp Cao đẳng nghề; Cao đẳng nghề li&ecirc;n th&ocirc;ng; Trung cấp nghề v&agrave; Trung cấp nghề 18 th&aacute;ng (đợt 2). Kh&oacute;a học 2015-2018 &amp; Kh&oacute;a học 2016-2018.</span></p>
', N'~/Hinhanh/truong/020818020525.jpg', CAST(N'2018-08-02T14:05:00.000' AS DateTime), CAST(N'2018-08-02T14:05:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (40, 4, N'Thông báo thu học phí HK I 2018-2019', N'', N'<p>
	<strong>&nbsp; &nbsp;UBND HUY&Ecirc;̣N CỦ CHI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </strong><strong>C&Ocirc;̣NG HÒA XÃ H&Ocirc;̣I CHỦ NGHĨA VI&Ecirc;̣T</strong> <strong>NAM</strong></p>
<p>
	<strong>TRƯỜNG TC NGH&Ecirc;̀ CỦ CHI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đ&ocirc;̣c l&acirc;̣p &ndash; Tự do &ndash; Hạnh phúc</strong></p>
<p>
	<strong>------------*****</strong><strong>---------------- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-------------****</strong><strong>---------------</strong></p>
<p>
	Số : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TB-TCN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<em>Củ Chi, Ngày &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tháng &nbsp;&nbsp;&nbsp;&nbsp;năm 2018</em></p>
<p>
	&nbsp;</p>
<p align="center">
	<strong>TH&Ocirc;NG BÁO</strong></p>
<p align="center">
	<strong>(V/v Thu học phí học sinh HK1 -năm học 2018 - 2019 )</strong></p>
<p>
	<strong>A .<u>Mức thu học ph&iacute; năm học 2017-2018 &nbsp;như sau</u> :</strong></p>
<p>
	&nbsp;+ Ng&agrave;nh :N&ocirc;ng nghiệp ( lớp th&uacute; y ): <strong>500.000 đ / th&aacute;ng </strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;+ Ng&agrave;nh : Cơ kh&iacute;, &ocirc; t&ocirc;, điện tử, điện CN, điện lạnh, May CN,</p>
<p>
	Tin học: <strong>550.000 đ/ th&aacute;ng </strong></p>
<p>
	<strong>I/. <u>Đối với học sinh tốt nghiệp THCS</u> : <u>&nbsp;Miễn&nbsp; học ph&iacute;</u></strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>( lập hồ sơ miễn học ph&iacute; theo mẫu nh&agrave; trường &ndash; sẽ lập bổ sung sau khi nhập học)</strong></p>
<p>
	<strong>II /. <u>Đối với học sinh tốt nghiệp THPT</u> ( HK1)</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thu học ph&iacute; theo học kỳ như sau</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lớp th&uacute; y : 500.000 đ X 5 th&aacute;ng =&nbsp; 2.500.000 đ / học kỳ</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&aacute;c ng&agrave;nh nghề kh&aacute;c : 550.000 đ X 5 th&aacute;ng = 2.750.000 đ/ học kỳ&nbsp;</p>
<p>
	<strong>III /. C&aacute;c khoản thu kh&aacute;c ( bắt buộc )</strong></p>
<p>
	<strong>+ V&ecirc;̣ sinh phí&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>: <strong>&nbsp;150.000đ / HK </strong></p>
<p>
	<strong>+ Bảo hiểm y tế &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; 525.420 đ/ năm &nbsp;</strong></p>
<p>
	<em><u>Trong đ&oacute;</u></em> : theo qui định tại c&ocirc;ng văn số 1416/TB-BHXH mức đ&oacute;ng : 750.600 đ</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>+ Nh&agrave; nước hỗ trợ 30% &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 225.180 đ</em></p>
<p>
	<em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Học sinh đ&oacute;ng 70% &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 525.420 đ</em></p>
<p>
	<strong>+ Logo trường &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 15.000 đ/ 5 c&aacute;i</strong></p>
<p>
	<strong>+ Bảng t&ecirc;n học sinh &nbsp; :&nbsp;&nbsp;&nbsp; 15.000 đ/ 5 c&aacute;i</strong></p>
<p>
	<strong>+ Bảo hiểm tai nạn &nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;30.000 đ / năm</strong></p>
<p>
	<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cộng :&nbsp; <u>735</u></strong><strong><u>.420</u></strong><strong> đ</strong></p>
<p>
	<strong>V/.Thời hạn nộp học phí , vệ sinh ph&iacute; &amp; Bảo hiểm học sinh, logo, bảng t&ecirc;n :</strong></p>
<p>
	<strong>Từ ngày ra th&ocirc;ng báo đ&ecirc;́n hết ngày &nbsp;30/09/2018</strong></p>
<p>
	<strong>VI /. Nơi nộp học phí: </strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Học sinh các khóa nộp học phí, vệ sinh ph&iacute; &amp; Bảo hiểm học sinh tại Phòng Tài Vụ-Cơ sở vật chất ( Ph&ograve;ng số 04 ).</p>
<p>
	<strong>B/.<u>H&ocirc;̀</u></strong><strong><u> sơ mi&ecirc;̃n giảm học phí:</u></strong></p>
<p>
	<strong>1.Đối với học sinh tốt nghiệp THCS ( miễn học ph&iacute; ):</strong></p>
<ul>
	<li>
		<em>Đơn mi&ecirc;̃n giảm (theo m&acirc;̃u của trường)</em></li>
</ul>
<p>
	<strong>2</strong><em>.</em><strong><u> Đối với học sinh tốt nghiệp THPT</u></strong></p>
<ul>
	<li>
		<em>Gi&acirc;́y xác nh&acirc;̣n gia đình thu&ocirc;̣c h&ocirc;̣ nghèo (có s&ocirc;̉) (n&ecirc;́u thu&ocirc;̣c di&ecirc;̣n nghèo)</em></li>
	<li>
		<em>Gi&acirc;́y xác nh&acirc;̣n gia đình thu&ocirc;̣c di&ecirc;̣n chính sách: Thương binh, li&ecirc;̣t sĩ, có c&ocirc;ng CM (N&ecirc;́u thu&ocirc;c di&ecirc;̣n chính sách)</em></li>
	<li>
		<em>Đơn mi&ecirc;̃n giảm (theo m&acirc;̃u của trường)</em></li>
	<li>
		<em>Photo hộ khẩu (k&egrave;m theo)</em></li>
</ul>
<p>
	<em>Lưu &yacute;: </em></p>
<ul>
	<li>
		<strong><em>Đối với những học sinh đ&atilde; tham gia bảo hiểm y tế ở địa phương th&igrave; phải photo thẻ bảo hiểm y tế nộp lại cho trường</em></strong><em>.</em></li>
	<li>
		<strong><em>Đối với những học sinh đ&atilde; tham gia bảo hiểm y tế của trường đến 31/ 12/2018 hết hạn th&igrave; bắt đầu mua lại v&agrave;o ng&agrave;y 01 th&aacute;ng 01 năm 2019</em></strong><em>.</em></li>
</ul>
<p style="margin-left:36.0pt;">
	&nbsp;</p>
<p>
	<em><u>Nơi nhận</u></em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Hi&ecirc;̣u trưởng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>
<p>
	- <em>Gi&aacute;o vi&ecirc;n chủ nhiệm c&aacute;c lớp.</em></p>
<p>
	<em>- C&aacute;c ph&ograve;ng ban </em></p>
<p>
	<em>- Trưởng Khoa, tổ trưởng bộ m&ocirc;n.</em></p>
<p>
	<em>- Lưu văn thư&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="margin-left:324.0pt;">
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-02T01:21:00.000' AS DateTime), CAST(N'2018-09-21T12:30:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (52, 6, N'Danh sách lớp K12ĐT_Điện tử công nghiệp', N'', N'<p>
	<img alt="" src="/Uploads/images/1cddc20be93909675028.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T13:57:00.000' AS DateTime), CAST(N'2018-10-13T14:00:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (55, 6, N'Danh sách lớp K12TH1_Kỹ thuật sữa chữa và lắp ráp máy tính', N'', N'<p>
	<img alt="" src="/Uploads/images/ts3.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:04:00.000' AS DateTime), CAST(N'2018-10-13T14:04:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (56, 6, N'Danh sách lớp K12Đ2_Điện công nghiệp', N'', N'<p>
	<img alt="" src="/Uploads/images/ts4.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:05:00.000' AS DateTime), CAST(N'2018-10-13T14:05:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (57, 6, N'Danh sách lớp K12OTO1_Công nghệ ô tô', N'', N'<p>
	<img alt="" src="/Uploads/images/ts6.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:07:00.000' AS DateTime), CAST(N'2018-10-13T14:07:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (58, 6, N'Danh sách lớp K12ĐL1_Kỹ thuật máy lạnh và điều hòa không khí', N'', N'<p>
	<img alt="" src="/Uploads/images/ts7.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:09:00.000' AS DateTime), CAST(N'2018-10-13T14:09:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (59, 6, N'Danh sách lớp K12Đ1_Điện công nghiệp', N'', N'<p>
	<img alt="" src="/Uploads/images/ts8.jpg" style="width: 849px; height: 1200px;" /></p>
', N'', CAST(N'2018-10-13T14:10:00.000' AS DateTime), CAST(N'2018-10-13T14:10:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (60, 6, N'Danh sách lớp K12ĐL2_Kỹ thuật máy lạnh và điều hòa không khí', N'', N'<p>
	<img alt="" src="/Uploads/images/ts9.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:11:00.000' AS DateTime), CAST(N'2018-10-13T14:11:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (64, 6, N'Danh sách lớp K12OTO2_Công nghệ ô tô', N'', N'<p>
	<img alt="" src="/Uploads/images/ts12.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:16:00.000' AS DateTime), CAST(N'2018-10-13T14:16:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (66, 6, N'Danh sách lớp K12TH2_Kỹ thuật sửa chữa và lắp ráp máy tính', N'', N'<p>
	<img alt="" src="/Uploads/images/ts11.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:18:00.000' AS DateTime), CAST(N'2018-10-13T14:18:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (68, 6, N'Danh sách lớp K12Đ2_Điện công nghiệp', N'', N'<p>
	<img alt="" src="/Uploads/images/ts16.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:22:00.000' AS DateTime), CAST(N'2018-10-13T14:22:00.000' AS DateTime), 0)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (69, 6, N'Danh sách lớp K12TH1_Kỹ thuật sửa chữa và lắp ráp máy tính', N'', N'<p>
	<img alt="" src="/Uploads/images/ts18.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:23:00.000' AS DateTime), CAST(N'2018-10-13T14:23:00.000' AS DateTime), 0)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (70, 6, N'Danh sách lớp K12Đ1_Điện công nghiệp', N'', N'<p>
	<img alt="" src="/Uploads/images/ts19.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:24:00.000' AS DateTime), CAST(N'2018-10-13T14:24:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (71, 6, N'Danh sách lớp K12CK_Cắt gọt kim loại', N'', N'<p>
	<img alt="" src="/Uploads/images/ts13.jpg" style="width: 700px; height: 989px;" /></p>
', N'', CAST(N'2018-10-13T14:41:00.000' AS DateTime), CAST(N'2018-10-13T14:41:00.000' AS DateTime), 1)
INSERT [dbo].[TruongNoiboTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (72, 6, N'Danh sách lớp K12M_May thời trang', N'', N'<p>
	<img alt="" src="/Uploads/images/4(1).png" style="width: 650px; height: 1677px;" /></p>
', N'', CAST(N'2018-10-18T15:45:00.000' AS DateTime), CAST(N'2018-10-18T15:45:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TruongNoiboTintuc] OFF
SET IDENTITY_INSERT [dbo].[TruongPhongban] ON 

INSERT [dbo].[TruongPhongban] ([ID], [Chude]) VALUES (1, N'Phòng Hành chính - quản trị')
INSERT [dbo].[TruongPhongban] ([ID], [Chude]) VALUES (2, N'Phòng Tài vụ - Cơ sở vật chất')
INSERT [dbo].[TruongPhongban] ([ID], [Chude]) VALUES (3, N'Phòng Công tác HSSV & quan hệ xí nghiệp')
INSERT [dbo].[TruongPhongban] ([ID], [Chude]) VALUES (4, N'Phòng Đào tạo')
INSERT [dbo].[TruongPhongban] ([ID], [Chude]) VALUES (5, N'Phòng Quản trị thiết bị')
INSERT [dbo].[TruongPhongban] ([ID], [Chude]) VALUES (6, N'Phòng Hợp tác quốc tế và quản lý khoa học')
INSERT [dbo].[TruongPhongban] ([ID], [Chude]) VALUES (7, N'Phòng Đảm bảo chất lượng và khảo thí')
SET IDENTITY_INSERT [dbo].[TruongPhongban] OFF
SET IDENTITY_INSERT [dbo].[TruongPhongbanTintuc] ON 

INSERT [dbo].[TruongPhongbanTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (2, 1, N'Giới thiệu về Phòng Hành chính - Quản Trị', N'', N'<p style="margin-left: 25.65pt; text-align: center;">
	<span style="color:#fd5523;"><span style="font-size:16px;"><b>GIỚI THIỆU VỀ PH&Ograve;NG H&Agrave;NH CH&Iacute;NH QUẢN TRỊ</b></span></span></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tổ chức thực hiện c&aacute;c c&ocirc;ng t&aacute;c h&agrave;nh ch&iacute;nh, tổng hợp, văn thư, lưu trữ, đối ngoại, giao dịch v&agrave; lễ t&acirc;n, bảo vệ an ninh trật tự, vệ sinh m&ocirc;i trường;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tham mưu Hiệu trưởng sắp xếp tổ chức, quy hoạch bố tr&iacute; c&aacute;n bộ, gi&aacute;o vi&ecirc;n theo đ&uacute;ng chức danh, nhiệm vụ v&agrave; c&ocirc;ng t&aacute;c đ&agrave;o tạo, bồi dưỡng;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tổ chức thực hiện ch&iacute;nh s&aacute;ch, chế độ đối với c&aacute;n bộ, gi&aacute;o vi&ecirc;n; c&ocirc;ng t&aacute;c bảo vệ ch&iacute;nh trị nội bộ, thi đua, khen thưởng v&agrave; kỷ luật;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Phối hợp với c&aacute;c đo&agrave;n thể v&agrave; c&aacute;c bộ phận chức năng tổ chức c&aacute;c hoạt động về gi&aacute;o dục ch&iacute;nh trị, văn ho&aacute;, chuy&ecirc;n m&ocirc;n, nghiệp vụ v&agrave; văn thể mỹ cho c&aacute;n bộ, gi&aacute;o vi&ecirc;n v&agrave; học sinh.</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Quản l&yacute; thư viện, phối hợp theo d&otilde;i v&agrave; điều chỉnh việc sử dụng c&aacute;c cơ sở vật chất, phục vụ cho việc đ&agrave;o tạo.</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - C&ocirc;ng t&aacute;c y tế: vệ sinh ph&ograve;ng bệnh; chăm s&oacute;c sức khỏe ban đầu đối với CBNVGV v&agrave; học sinh.</p>
<p style="margin-left:25.65pt;">
	&nbsp;</p>
', N'', CAST(N'2018-08-26T02:26:00.000' AS DateTime), CAST(N'2018-12-07T16:31:00.000' AS DateTime), 1)
INSERT [dbo].[TruongPhongbanTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (3, 2, N'Giới thiệu về Phòng Tài vụ- Cơ sở vật chất', N'', N'<p align="center" style="margin-left:25.65pt;">
	<span style="color:#fd5523;"><span style="font-size:16px;"><strong>GIỚI THIỆU VỀ PH&Ograve;NG T&Agrave;I VỤ- CƠ SỞ VẬT CHẤT</strong></span></span></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tham mưu Hiệu trưởng quản l&yacute; c&ocirc;ng t&aacute;c t&agrave;i ch&iacute;nh; lập kế hoạch thu, chi h&agrave;ng qu&yacute;, năm; thực hiện c&aacute;c khoản thu, chi; lập quyết to&aacute;n h&agrave;ng qu&yacute;, năm theo đ&uacute;ng quy định về chế độ kế to&aacute;n t&agrave;i ch&iacute;nh của nh&agrave; nước;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tổ chức thực hiện, kiểm tra c&aacute;c khoản thu, việc chi ti&ecirc;u c&aacute;c khoản tiền vốn, sử dụng vật tư, thiết bị v&agrave; tất cả c&aacute;c t&agrave;i sản kh&aacute;c của nh&agrave; trường;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tham mưu Hiệu trưởng x&acirc;y dựng kế hoạch dự tr&ugrave; vật tư, tổ chức thực hiện mua sắm, quản l&yacute; v&agrave; bảo tr&igrave; t&agrave;i sản, trang thiết bị kỹ thuật của trường;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Theo d&otilde;i việc sử dụng vật tư, thiết bị v&agrave; t&agrave;i sản kh&aacute;c của tất cả c&aacute;c bộ phận trong nh&agrave; trường; tổ chức định kỳ kiểm k&ecirc;, đ&aacute;nh gi&aacute; t&agrave;i sản, thiết bị kỹ thuật theo quy định.</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Đề xuất v&agrave; tổ chức thực hiện quyết định của Hiệu trưởng về điều chuyển, sử dụng hoặc tu sửa, cải tạo nh&agrave; l&agrave;m việc, ph&ograve;ng học, ph&ograve;ng th&iacute; nghiệm, thực nghiệm khoa học, thực tập, sản xuất;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Tổ chức thực hiện c&aacute;c hoạt động sản xuất, dịch vụ.</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-08-26T11:31:00.000' AS DateTime), CAST(N'2018-09-20T21:59:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TruongPhongbanTintuc] OFF
SET IDENTITY_INSERT [dbo].[TruongSinhvien] ON 

INSERT [dbo].[TruongSinhvien] ([ID], [Chude]) VALUES (2, N'THỜI KHÓA BIỂU')
INSERT [dbo].[TruongSinhvien] ([ID], [Chude]) VALUES (3, N'BIỂU MẪU - ĐƠN TỪ')
INSERT [dbo].[TruongSinhvien] ([ID], [Chude]) VALUES (5, N'XEM ĐIỂM')
SET IDENTITY_INSERT [dbo].[TruongSinhvien] OFF
SET IDENTITY_INSERT [dbo].[TruongSinhvienfile] ON 

INSERT [dbo].[TruongSinhvienfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (51, 37, N'', N'Filedinhkem/truong/210918070635.docx')
INSERT [dbo].[TruongSinhvienfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (52, 38, N'', N'Filedinhkem/truong/210918070651.doc')
INSERT [dbo].[TruongSinhvienfile] ([ID], [IDTin], [noidung], [duongdan]) VALUES (53, 39, N'', N'Filedinhkem/truong/210918070712.doc')
SET IDENTITY_INSERT [dbo].[TruongSinhvienfile] OFF
SET IDENTITY_INSERT [dbo].[TruongSinhvienTintuc] ON 

INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (3, 6, N'Nhân viên Bảo trì- điện lạnh - BRITISH VIETNAMESE INTERNATIONAL SCHOOL', N'Hạn nộp hồ sơ: 31/08/2018', N'<dl>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		M&atilde; số:</dt>
	<dd id="sd_16" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		742</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		T&ecirc;n C&ocirc;ng ty:</dt>
	<dd id="sd_1" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		C&Ocirc;NG TY TNHH X&Acirc;Y DỰNG &amp; XUẤT NHẬP KHẨU GIA HƯNG</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Lĩnh vực:</dt>
	<dd id="sd_2" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Vị tr&iacute; tuyển dụng:</dt>
	<dd id="sd_3" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		- VT1: Nh&acirc;n vi&ecirc;n trực tiếp thi c&ocirc;ng điện, nước,cơ kh&iacute;&nbsp;<br style="word-wrap: break-word;" />
		- VT2: Nh&acirc;n vi&ecirc;n gi&aacute;m s&aacute;t kỹ thuật M&amp;E - C&Ocirc;NG TY TNHH X&Acirc;Y DỰNG &amp; XUẤT NHẬP KHẨU GIA HƯNG</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Số lượng:</dt>
	<dd id="sd_4" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		10</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Thời gian l&agrave;m việc:</dt>
	<dd id="sd_5" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Nơi l&agrave;m việc:</dt>
	<dd id="sd_6" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Ng&agrave;nh nghề:</dt>
	<dd id="sd_7" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		H&igrave;nh thức:</dt>
	<dd id="sd_8" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Quyền lợi:</dt>
	<dd id="sd_9" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		- Lương, tăng ca, lương th&aacute;ng 13, thưởng cuối năm. BH Y tế, BHXH (khi k&yacute; HĐLĐ ch&iacute;nh thức) - Nếu c&oacute; nguyện vọng gắn b&oacute; l&acirc;u d&agrave;i Cty sẵn s&agrave;ng tạo điều kiện hỗ trợ học n&acirc;ng cao nghiệp vụ.</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Lương:</dt>
	<dd id="sd_10" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		- Lương thử việc 02 th&aacute;ng đầu ti&ecirc;n 6,000,000đ/ th&aacute;ng( Sau khi tiếp nhận ch&iacute;nh thức thỏa thuận mức lương khi k&yacute; HĐLĐ).</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Hạn nộp:</dt>
	<dd id="sd_11" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		M&ocirc; tả:</dt>
	<dd id="sd_12" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		1/ Nh&acirc;n vi&ecirc;n thi c&ocirc;ng:&nbsp;<br style="word-wrap: break-word;" />
		- Trực tiếp thi c&ocirc;ng điện nước, cơ kh&iacute; tại c&ocirc;ng trường dưới sự ph&acirc;n c&ocirc;ng của GSKT hoặc tổ trưởng phụ tr&aacute;ch trực tiếp.&nbsp;<br style="word-wrap: break-word;" />
		2/ Nh&acirc;n vi&ecirc;n kỹ thuật:&nbsp;<br style="word-wrap: break-word;" />
		- Triển khai bản vẽ thi c&ocirc;ng.&nbsp;<br style="word-wrap: break-word;" />
		- L&agrave;m c&aacute;c hồ sơ li&ecirc;n quan đến thi c&ocirc;ng nghiệm thu giai đoạn tại c&ocirc;ng trường m&igrave;nh phụ tr&aacute;ch.&nbsp;<br style="word-wrap: break-word;" />
		- Quản l&yacute;, gi&aacute;m s&aacute;t v&agrave; ph&acirc;n c&ocirc;ng c&ocirc;ng việc cho anh em nh&acirc;n vi&ecirc;n thi c&ocirc;ng thực hiện. C&aacute;c c&ocirc;ng việc kh&aacute;c li&ecirc;n quan đến kỹ thuật c&ocirc;ng trường.</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Y&ecirc;u cầu:</dt>
	<dd id="sd_13" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		1/ Nh&acirc;n vi&ecirc;n thi c&ocirc;ng:&nbsp;<br style="word-wrap: break-word;" />
		- Biết sử dụng c&ocirc;ng cụ thi c&ocirc;ng cầm tay. ưu ti&ecirc;n c&oacute; kinh nghiệm thi c&ocirc;ng điện nước( nếu chưa c&oacute; KN Cty sẽ bồi dưỡng)&nbsp;<br style="word-wrap: break-word;" />
		- Trung thực, nhiệt t&igrave;nh ham học hỏi l&agrave; điểm cộng của ứng vi&ecirc;n khi k&yacute; hợp đồng l&acirc;u d&agrave;i với Cty.&nbsp;<br style="word-wrap: break-word;" />
		- Ưu ti&ecirc;n bộ đội xuất ngũ.&nbsp;<br style="word-wrap: break-word;" />
		2/ Nh&acirc;n vi&ecirc;n kỹ thuật:&nbsp;<br style="word-wrap: break-word;" />
		- Sử dụng tốt phần mềm m&aacute;y t&iacute;nh văn ph&ograve;ng, auto Cad...&nbsp;<br style="word-wrap: break-word;" />
		- Ưu ti&ecirc;n bộ đội xuất ngũ.</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Hồ sơ:</dt>
	<dd id="sd_15" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Li&ecirc;n hệ:</dt>
	<dd id="sd_14" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		C&ocirc; Phan Thị Đăng Thư - Gi&aacute;m đốc Trung t&acirc;m bồi dưỡng Kỹ năng nghề v&agrave; Quan hệ doanh nghiệp - Trường Cao đẳng nghề TP. HCM - ĐT: 0903.373.645 - Email: dangthu0511@yahoo.com</dd>
</dl>
', N'', CAST(N'2018-07-06T00:12:00.000' AS DateTime), CAST(N'2018-07-06T00:12:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (4, 6, N'- VT1: Nhân viên trực tiếp thi công điện, nước,cơ khí - VT2: Nhân viên giám sát kỹ thuật M&E - CÔNG TY TNHH XÂY DỰNG & XUẤT NHẬP KHẨU GIA HƯNG', N'Hạn nộp hồ sơ: 31/08/2018', N'<dl>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		M&atilde; số:</dt>
	<dd id="sd_16" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		742</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		T&ecirc;n C&ocirc;ng ty:</dt>
	<dd id="sd_1" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		C&Ocirc;NG TY TNHH X&Acirc;Y DỰNG &amp; XUẤT NHẬP KHẨU GIA HƯNG</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Lĩnh vực:</dt>
	<dd id="sd_2" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Vị tr&iacute; tuyển dụng:</dt>
	<dd id="sd_3" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		- VT1: Nh&acirc;n vi&ecirc;n trực tiếp thi c&ocirc;ng điện, nước,cơ kh&iacute;&nbsp;<br style="word-wrap: break-word;" />
		- VT2: Nh&acirc;n vi&ecirc;n gi&aacute;m s&aacute;t kỹ thuật M&amp;E - C&Ocirc;NG TY TNHH X&Acirc;Y DỰNG &amp; XUẤT NHẬP KHẨU GIA HƯNG</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Số lượng:</dt>
	<dd id="sd_4" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		10</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Thời gian l&agrave;m việc:</dt>
	<dd id="sd_5" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Nơi l&agrave;m việc:</dt>
	<dd id="sd_6" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Ng&agrave;nh nghề:</dt>
	<dd id="sd_7" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		H&igrave;nh thức:</dt>
	<dd id="sd_8" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Quyền lợi:</dt>
	<dd id="sd_9" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		- Lương, tăng ca, lương th&aacute;ng 13, thưởng cuối năm. BH Y tế, BHXH (khi k&yacute; HĐLĐ ch&iacute;nh thức) - Nếu c&oacute; nguyện vọng gắn b&oacute; l&acirc;u d&agrave;i Cty sẵn s&agrave;ng tạo điều kiện hỗ trợ học n&acirc;ng cao nghiệp vụ.</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Lương:</dt>
	<dd id="sd_10" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		- Lương thử việc 02 th&aacute;ng đầu ti&ecirc;n 6,000,000đ/ th&aacute;ng( Sau khi tiếp nhận ch&iacute;nh thức thỏa thuận mức lương khi k&yacute; HĐLĐ).</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Hạn nộp:</dt>
	<dd id="sd_11" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		M&ocirc; tả:</dt>
	<dd id="sd_12" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		1/ Nh&acirc;n vi&ecirc;n thi c&ocirc;ng:&nbsp;<br style="word-wrap: break-word;" />
		- Trực tiếp thi c&ocirc;ng điện nước, cơ kh&iacute; tại c&ocirc;ng trường dưới sự ph&acirc;n c&ocirc;ng của GSKT hoặc tổ trưởng phụ tr&aacute;ch trực tiếp.&nbsp;<br style="word-wrap: break-word;" />
		2/ Nh&acirc;n vi&ecirc;n kỹ thuật:&nbsp;<br style="word-wrap: break-word;" />
		- Triển khai bản vẽ thi c&ocirc;ng.&nbsp;<br style="word-wrap: break-word;" />
		- L&agrave;m c&aacute;c hồ sơ li&ecirc;n quan đến thi c&ocirc;ng nghiệm thu giai đoạn tại c&ocirc;ng trường m&igrave;nh phụ tr&aacute;ch.&nbsp;<br style="word-wrap: break-word;" />
		- Quản l&yacute;, gi&aacute;m s&aacute;t v&agrave; ph&acirc;n c&ocirc;ng c&ocirc;ng việc cho anh em nh&acirc;n vi&ecirc;n thi c&ocirc;ng thực hiện. C&aacute;c c&ocirc;ng việc kh&aacute;c li&ecirc;n quan đến kỹ thuật c&ocirc;ng trường.</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Y&ecirc;u cầu:</dt>
	<dd id="sd_13" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		1/ Nh&acirc;n vi&ecirc;n thi c&ocirc;ng:&nbsp;<br style="word-wrap: break-word;" />
		- Biết sử dụng c&ocirc;ng cụ thi c&ocirc;ng cầm tay. ưu ti&ecirc;n c&oacute; kinh nghiệm thi c&ocirc;ng điện nước( nếu chưa c&oacute; KN Cty sẽ bồi dưỡng)&nbsp;<br style="word-wrap: break-word;" />
		- Trung thực, nhiệt t&igrave;nh ham học hỏi l&agrave; điểm cộng của ứng vi&ecirc;n khi k&yacute; hợp đồng l&acirc;u d&agrave;i với Cty.&nbsp;<br style="word-wrap: break-word;" />
		- Ưu ti&ecirc;n bộ đội xuất ngũ.&nbsp;<br style="word-wrap: break-word;" />
		2/ Nh&acirc;n vi&ecirc;n kỹ thuật:&nbsp;<br style="word-wrap: break-word;" />
		- Sử dụng tốt phần mềm m&aacute;y t&iacute;nh văn ph&ograve;ng, auto Cad...&nbsp;<br style="word-wrap: break-word;" />
		- Ưu ti&ecirc;n bộ đội xuất ngũ.</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Hồ sơ:</dt>
	<dd id="sd_15" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		&ensp;</dd>
	<dt style="line-height: 18px; font-weight: bold; float: left; width: 166.938px; padding-top: 10px; margin: 0px; border-top: 1px solid lightgray; word-wrap: break-word; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;">
		Li&ecirc;n hệ:</dt>
	<dd id="sd_14" style="line-height: 18px; margin: 0px 0px 10px; float: left; width: 500.828px; padding-top: 10px; border-top: 1px solid lightgray; word-wrap: break-word; color: rgb(64, 64, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;">
		C&ocirc; Phan Thị Đăng Thư - Gi&aacute;m đốc Trung t&acirc;m bồi dưỡng Kỹ năng nghề v&agrave; Quan hệ doanh nghiệp - Trường Cao đẳng nghề TP. HCM - ĐT: 0903.373.645 - Email: dangthu0511@yahoo.com</dd>
</dl>
', N'', CAST(N'2018-07-06T00:13:00.000' AS DateTime), CAST(N'2018-07-06T00:13:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (29, 2, N'Cắt gọt kim loại', N'', N'<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-05.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-05.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-05.jpg" style="width: 700px; height: 541px;" /></p>
', N'', CAST(N'2018-09-21T18:15:00.000' AS DateTime), CAST(N'2018-12-17T08:22:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (30, 2, N'Công nghệ ô tô', N'', N'<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-07.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-06.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-07.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-06.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-07.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-06.jpg" style="width: 700px; height: 541px;" /></p>
', N'', CAST(N'2018-09-21T18:20:00.000' AS DateTime), CAST(N'2018-12-17T08:23:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (31, 2, N'Điện tử công nghiệp', N'', N'<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-02.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-02.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-02.jpg" style="width: 700px; height: 541px;" /></p>
', N'', CAST(N'2018-09-21T18:21:00.000' AS DateTime), CAST(N'2018-12-17T08:23:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (32, 2, N'Điện công nghiệp', N'', N'<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-03.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-01.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-03.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-01.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-01.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-03.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-21T18:22:00.000' AS DateTime), CAST(N'2018-12-17T08:24:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (33, 2, N'Điện lạnh (Kỹ thuật máy lạnh và điều hoà không khí)', N'', N'<p>
	&nbsp;</p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-01.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-04.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-04.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-01.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-01.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-04.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-21T18:22:00.000' AS DateTime), CAST(N'2018-12-17T08:25:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (34, 2, N'Kỹ thuật sửa chữa & lắp ráp máy tính', N'', N'<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-08.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-08.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	&nbsp;</p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-08.jpg" style="width: 700px; height: 541px;" /></p>
', N'', CAST(N'2018-09-21T18:22:00.000' AS DateTime), CAST(N'2018-12-17T08:25:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (35, 2, N'May thời trang', N'', N'<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-09.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-09.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-09.jpg" style="width: 700px; height: 541px;" /></p>
', N'', CAST(N'2018-09-21T18:23:00.000' AS DateTime), CAST(N'2018-12-17T08:25:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (36, 2, N'Thú y', N'', N'<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 17_12_2018-10.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 10_12_2018-10.jpg" style="width: 700px; height: 541px;" /></p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	<img alt="" src="/Uploads/images/TKB HK 1_2018-2019 AP DUNG 3_12_2018-10.jpg" style="width: 700px; height: 541px;" /></p>
', N'', CAST(N'2018-09-21T18:23:00.000' AS DateTime), CAST(N'2018-12-17T08:26:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (37, 3, N' Đơn xin phép nghỉ học', N'', N'<p>
	<strong>M&ocirc; tả: Trang ph&ograve;ng c&ocirc;ng t&aacute;c học sinh sinh vi&ecirc;n gồm c&oacute; thanh menu chứa giới thiệu, th&ocirc;ng tin, biễu&nbsp;</strong></p>
', N'', CAST(N'2018-09-21T19:05:00.000' AS DateTime), CAST(N'2019-05-10T13:33:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (38, 3, N'Đơn xin rút học sinh', N'', N'', N'', CAST(N'2018-09-21T19:05:00.000' AS DateTime), CAST(N'2018-09-21T19:05:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (39, 3, N'Mẫu tự kiểm điểm', N'', N'', N'', CAST(N'2018-09-21T19:06:00.000' AS DateTime), CAST(N'2018-09-21T19:06:00.000' AS DateTime), 1)
INSERT [dbo].[TruongSinhvienTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (40, 3, N'mẫu cho sinh viên', N'', N'<p>
	dsvasbetbt</p>
', N'', CAST(N'2019-05-10T13:28:00.000' AS DateTime), CAST(N'2019-05-10T13:28:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TruongSinhvienTintuc] OFF
SET IDENTITY_INSERT [dbo].[TruongTainguyen] ON 

INSERT [dbo].[TruongTainguyen] ([ID], [Chude]) VALUES (1, N'BIỂU MẪU')
SET IDENTITY_INSERT [dbo].[TruongTainguyen] OFF
SET IDENTITY_INSERT [dbo].[TruongTainguyenTintuc] ON 

INSERT [dbo].[TruongTainguyenTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (1, 1, N'Bieu mau', N'', N'<table border="0" cellpadding="0" cellspacing="0" style="font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; line-height: 21px; border-collapse: collapse; margin: 1px; color: rgb(0, 0, 0); text-align: justify; width: 760px;" width="760">
	<tbody>
		<tr>
			<td style="padding: 2px; vertical-align: top; text-align: left; width: 428px;">
				<h5 align="center" style="margin: 10px 0px 0px; padding: 0px; line-height: 18px; color: rgb(78, 104, 131); font-size: 15px;">
					<span style="font-size: 12px;">HUYỆN ỦY CỦ CHI</span></h5>
			</td>
			<td style="padding: 2px; vertical-align: top; text-align: left; width: 332px;">
				<p align="center" style="margin: 13px 0px; padding: 0px;">
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="padding: 2px; vertical-align: top; text-align: left; width: 428px;">
				<h1 align="center" style="margin: 10px 0px 0px; padding: 0px; line-height: 31.2px; color: rgb(108, 127, 147); font-size: 26px;">
					<span style="font-size: 12px;">CHI BỘ TRƯỜNG TRUNG CẤP NGHỀ CỦ CHI</span></h1>
				<p align="center" style="margin: 13px 0px; padding: 0px;">
					*</p>
			</td>
			<td style="padding: 2px; vertical-align: top; text-align: left; width: 332px;">
				<p align="center" style="margin: 13px 0px; padding: 0px;">
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="padding: 2px; vertical-align: top; text-align: left; width: 428px;">
				<p align="center" style="margin: 13px 0px; padding: 0px;">
					&nbsp;</p>
			</td>
			<td style="padding: 2px; vertical-align: top; text-align: left; width: 332px;">
				<h3 style="margin: 10px 0px 0px; padding: 0px; line-height: 24px; color: rgb(251, 124, 60); font-size: 20px;">
					&nbsp;</h3>
			</td>
		</tr>
	</tbody>
</table>
<p align="center" style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large;">
	<strong>BẢN KIỂM ĐIỂM C&Aacute; NH&Acirc;N</strong></p>
<p align="center" style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large;">
	<strong>Học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức, phong c&aacute;ch Hồ Ch&iacute; Minh về x&acirc;y dựng phong c&aacute;ch, t&aacute;c phong c&ocirc;ng t&aacute;c của người đứng đầu, của c&aacute;n bộ, đảng vi&ecirc;n</strong></p>
<p align="center" style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large;">
	<strong>Năm 2018</strong></p>
<p align="center" style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large;">
	&nbsp;</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	&nbsp;</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	&nbsp;</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	Họ v&agrave; t&ecirc;n: .......................................................................................................................... &nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	Chức vụ (Đảng; ch&iacute;nh quyền; đo&agrave;n thể): .....................................................................</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	Qua một năm thực hiện việc học tập chuy&ecirc;n đề năm 2018, t&ocirc;i tự kiểm điểm kết quả thực hiện như sau:</p>
<ol style="margin: 1em 0px 1em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; color: rgb(48, 63, 80); overflow: visible;">
		<strong>Tự gi&aacute;c trong học tập:</strong>
		<ol style="margin: 0.5em 0px 0.5em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside;">
			<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; overflow: visible;" value="1.1">
				<strong>Về c&aacute;c nội dung của Chuy&ecirc;n đề năm 2018:</strong></li>
		</ol>
	</li>
</ol>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<ol style="margin: 1em 0px 1em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; color: rgb(48, 63, 80); overflow: visible;" value="1.2">
		<strong>Về</strong><strong>&nbsp;nội dung li&ecirc;n hệ mở rộng kh&aacute;c</strong>:</li>
</ol>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<ol style="margin: 1em 0px 1em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; color: rgb(48, 63, 80); overflow: visible;" value="2">
		<strong>Tự gi&aacute;c l&agrave;m theo:</strong>
		<ol style="margin: 0.5em 0px 0.5em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside;">
			<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; overflow: visible;" value="2.1">
				<strong>Tự gi&aacute;c thực hiện theo kế hoạch đ&atilde; đăng k&yacute;&nbsp;</strong>(Li&ecirc;n hệ cụ thể gắn với vị tr&iacute; c&ocirc;ng t&aacute;c của m&igrave;nh)<strong>:</strong></li>
		</ol>
	</li>
</ol>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	............................................................................................................................................. &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<ol style="margin: 1em 0px 1em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; color: rgb(48, 63, 80); overflow: visible;" value="2.2">
		<strong>Những c&ocirc;ng việc cụ thể kh&aacute;c</strong>&nbsp;(Li&ecirc;n quan đến phạm vi tr&aacute;ch nhiệm của bản th&acirc;n về x&acirc;y dựng phong c&aacute;ch, t&aacute;c phong c&ocirc;ng t&aacute;c trong nội dung n&agrave;y tại địa phương, đơn vị)<strong>:</strong></li>
</ol>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<ol style="margin: 1em 0px 1em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; color: rgb(48, 63, 80); overflow: visible;" value="3">
		<strong>Những</strong><strong>&nbsp;tồn tại, hạn chế trong qu&aacute; tr&igrave;nh thực hiện v&agrave; biện ph&aacute;p khắc phục:</strong>
		<ol style="margin: 0.5em 0px 0.5em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside;">
			<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; overflow: visible;" value="3.1">
				<strong>Tồn tại, hạn chế:</strong></li>
		</ol>
	</li>
</ol>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<ol style="margin: 1em 0px 1em 11px; padding-right: 0px; padding-left: 0px; list-style-position: inside; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	<li style="margin: 3px 0px 0px; padding: 0px; line-height: 31.5px; color: rgb(48, 63, 80); overflow: visible;" value="3.2">
		<strong>Biện ph&aacute;p khắc phục:</strong></li>
</ol>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	.............................................................................................................................................</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	&nbsp;</p>
<p style="margin: 13px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; font-size: large; text-align: justify;">
	&nbsp;</p>
<table border="0" cellpadding="0" cellspacing="0" style="font-family: Arial, &quot;Times New Roman&quot;, &quot;Arial Unicode MS&quot;, Helvetica, sans-serif; line-height: 21px; border-collapse: collapse; margin: 1px; color: rgb(0, 0, 0); text-align: justify;">
	<tbody>
		<tr>
			<td style="padding: 2px; vertical-align: top; text-align: left; width: 309px;">
				<p style="margin: 13px 0px; padding: 0px;">
					&nbsp;</p>
				<p style="margin: 13px 0px; padding: 0px;">
					&nbsp;</p>
				<p style="margin: 13px 0px; padding: 0px;">
					&nbsp;</p>
				<p style="margin: 13px 0px; padding: 0px;">
					&nbsp;</p>
				<p style="margin: 13px 0px; padding: 0px;">
					&nbsp;</p>
			</td>
			<td style="padding: 2px; vertical-align: top; text-align: left; width: 308px;">
				<p align="center" style="margin: 13px 0px; padding: 0px;">
					<em>Củ Chi, ng&agrave;y&nbsp;&nbsp;&nbsp; th&aacute;ng&nbsp;&nbsp;&nbsp; năm 2019</em></p>
				<p align="center" style="margin: 13px 0px; padding: 0px;">
					<strong>Người viết kiểm điểm</strong></p>
				<p align="center" style="margin: 13px 0px; padding: 0px;">
					(K&yacute; v&agrave; ghi r&otilde; họ t&ecirc;n)</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', N'', CAST(N'2018-09-14T17:19:00.000' AS DateTime), CAST(N'2019-05-09T09:17:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TruongTainguyenTintuc] OFF
SET IDENTITY_INSERT [dbo].[TruongThuvien] ON 

INSERT [dbo].[TruongThuvien] ([ID], [Chude]) VALUES (1, N'THƯ VIỆN')
SET IDENTITY_INSERT [dbo].[TruongThuvien] OFF
SET IDENTITY_INSERT [dbo].[TS] ON 

INSERT [dbo].[TS] ([ID], [Chude]) VALUES (1, N'Trung cấp')
INSERT [dbo].[TS] ([ID], [Chude]) VALUES (2, N'Liên thông')
INSERT [dbo].[TS] ([ID], [Chude]) VALUES (3, N'Lớp ngắn hạn')
INSERT [dbo].[TS] ([ID], [Chude]) VALUES (4, N'Thông báo')
INSERT [dbo].[TS] ([ID], [Chude]) VALUES (5, N'Tin tức')
INSERT [dbo].[TS] ([ID], [Chude]) VALUES (6, N'Tư vấn trực tuyến')
INSERT [dbo].[TS] ([ID], [Chude]) VALUES (7, N'Hướng nghiệp')
INSERT [dbo].[TS] ([ID], [Chude]) VALUES (8, N'Giới thiệu việc làm')
SET IDENTITY_INSERT [dbo].[TS] OFF
SET IDENTITY_INSERT [dbo].[TSDangkitructuyen] ON 

INSERT [dbo].[TSDangkitructuyen] ([ID], [Hoten], [ngaysinh], [Hokhau], [dienthoai], [cmnd], [email], [hotennhanthu], [diachinhanthu], [dienthoainhanthu], [datotnghiep], [namtotnghiep], [nv1trinhdo], [nv2trinhdo], [nv3trinhdo], [nv1Nganh], [nv2Nganh], [nv3Nganh], [ngaydangky]) VALUES (2, N'Nguyen Van A', CAST(N'2000-12-12T00:00:00.000' AS DateTime), N'Binh Duong', N'01234567899', N'123456789', N'dsdhhhhhfas@internet.com', N'NguyenVan B', N'Binh duong', N'Binh duong', 1, N'2018', N'Cao đẳng', N'', N'', N'Cắt gọt kim loại - CNC', N'', N'', CAST(N'2018-08-10T22:26:12.073' AS DateTime))
INSERT [dbo].[TSDangkitructuyen] ([ID], [Hoten], [ngaysinh], [Hokhau], [dienthoai], [cmnd], [email], [hotennhanthu], [diachinhanthu], [dienthoainhanthu], [datotnghiep], [namtotnghiep], [nv1trinhdo], [nv2trinhdo], [nv3trinhdo], [nv1Nganh], [nv2Nganh], [nv3Nganh], [ngaydangky]) VALUES (3, N'Nguyen Van A', CAST(N'2000-12-12T00:00:00.000' AS DateTime), N'Binh Duong', N'01234567899', N'123456789', N'dsdhhhhhfas@internet.com', N'NguyenVan B', N'Binh duong', N'01234567899', 1, N'2018', N'Cao đẳng', N'', N'', N'Cắt gọt kim loại - CNC', N'', N'', CAST(N'2018-08-10T22:31:12.570' AS DateTime))
INSERT [dbo].[TSDangkitructuyen] ([ID], [Hoten], [ngaysinh], [Hokhau], [dienthoai], [cmnd], [email], [hotennhanthu], [diachinhanthu], [dienthoainhanthu], [datotnghiep], [namtotnghiep], [nv1trinhdo], [nv2trinhdo], [nv3trinhdo], [nv1Nganh], [nv2Nganh], [nv3Nganh], [ngaydangky]) VALUES (4, N'Nguyen Van A', CAST(N'2000-08-12T00:00:00.000' AS DateTime), N'Binh Duong', N'01234567899', N'123456', N'dsdhhhhhfas@internet.com', N'NguyenVan B', N'Binh duong', N'01234567899', 1, N'2018', N'Cao đẳng', N'Trung cấp', N'', N'Cắt gọt kim loại - CNC', N'Cắt gọt kim loại - CNC', N'', CAST(N'2018-08-11T22:44:24.930' AS DateTime))
INSERT [dbo].[TSDangkitructuyen] ([ID], [Hoten], [ngaysinh], [Hokhau], [dienthoai], [cmnd], [email], [hotennhanthu], [diachinhanthu], [dienthoainhanthu], [datotnghiep], [namtotnghiep], [nv1trinhdo], [nv2trinhdo], [nv3trinhdo], [nv1Nganh], [nv2Nganh], [nv3Nganh], [ngaydangky]) VALUES (5, N'Võ Thị Thuý Hằng', CAST(N'1987-07-08T00:00:00.000' AS DateTime), N'213, bến than, hoà phú, củ chi', N'0932439087', N'024334783', N'thuyhang0708@gmail.com', N'võ văn hoàng', N'213, bến than, hoà phú, củ chi', N'0932439087', 1, N'2005', N'Cao đẳng', N'', N'', N'Chế biến thực phẩm', N'', N'', CAST(N'2018-11-18T21:24:05.500' AS DateTime))
INSERT [dbo].[TSDangkitructuyen] ([ID], [Hoten], [ngaysinh], [Hokhau], [dienthoai], [cmnd], [email], [hotennhanthu], [diachinhanthu], [dienthoainhanthu], [datotnghiep], [namtotnghiep], [nv1trinhdo], [nv2trinhdo], [nv3trinhdo], [nv1Nganh], [nv2Nganh], [nv3Nganh], [ngaydangky]) VALUES (6, N'Lê Bá Phong', CAST(N'1995-12-12T00:00:00.000' AS DateTime), N'KP2, TTCC', N'091900366', N'023195934', N'tralaitenchoem1234@gmail.com', N'Lê Bá Phong', N'KP2, TTCC', N'0919005366', 2, N'2010', N'Cao đẳng', N'Trung cấp', N'Trung cấp', N'Cắt gọt kim loại - CNC', N'Công nghệ ô tô (Cơ khí động lực)', N'CNTT (Ứng dụng phần mềm)', CAST(N'2018-11-23T15:38:50.097' AS DateTime))
INSERT [dbo].[TSDangkitructuyen] ([ID], [Hoten], [ngaysinh], [Hokhau], [dienthoai], [cmnd], [email], [hotennhanthu], [diachinhanthu], [dienthoainhanthu], [datotnghiep], [namtotnghiep], [nv1trinhdo], [nv2trinhdo], [nv3trinhdo], [nv1Nganh], [nv2Nganh], [nv3Nganh], [ngaydangky]) VALUES (7, N'Đỗ Ngọc Ngọc', CAST(N'2001-09-03T00:00:00.000' AS DateTime), N'25', N'0707999999', N'2812155555', N'quocquoc@gmail.com', N'Đỗ Ngọc Ngọc', N'Thuận an', N'0707555555', 2, N'2015', N'Trung cấp', N'Cao đẳng', N'Cao đẳng', N'Cắt gọt kim loại - CNC', N'Cắt gọt kim loại - CNC', N'Cắt gọt kim loại - CNC', CAST(N'2019-05-09T23:08:55.427' AS DateTime))
INSERT [dbo].[TSDangkitructuyen] ([ID], [Hoten], [ngaysinh], [Hokhau], [dienthoai], [cmnd], [email], [hotennhanthu], [diachinhanthu], [dienthoainhanthu], [datotnghiep], [namtotnghiep], [nv1trinhdo], [nv2trinhdo], [nv3trinhdo], [nv1Nganh], [nv2Nganh], [nv3Nganh], [ngaydangky]) VALUES (8, N'Đỗ Ngọc Ngọc', CAST(N'2019-09-05T00:00:00.000' AS DateTime), N'25', N'0707999999', N'2812155555', N'quocquoc@gmail.com', N'Đỗ Ngọc Ngọc', N'Thuận an', N'0707555555', 2, N'2015', N'Cao đẳng', N'Cao đẳng', N'Trung cấp', N'Cắt gọt kim loại - CNC', N'Cắt gọt kim loại - CNC', N'Cắt gọt kim loại - CNC', CAST(N'2019-05-09T23:14:14.177' AS DateTime))
SET IDENTITY_INSERT [dbo].[TSDangkitructuyen] OFF
SET IDENTITY_INSERT [dbo].[TSHoSo] ON 

INSERT [dbo].[TSHoSo] ([ID], [Chude]) VALUES (2, N'Trung cấp')
SET IDENTITY_INSERT [dbo].[TSHoSo] OFF
SET IDENTITY_INSERT [dbo].[TSKetQua] ON 

INSERT [dbo].[TSKetQua] ([ID], [Chude]) VALUES (2, N'Trung cấp')
SET IDENTITY_INSERT [dbo].[TSKetQua] OFF
SET IDENTITY_INSERT [dbo].[TSKetQuaTintuc] ON 

INSERT [dbo].[TSKetQuaTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (2, 2, N'Danh sách học sinh nghề Điện công nghiệp Khoá 12 (2018-2021)', N'', N'<p>
	<img alt="" src="/Uploads/images/danh sach k12-01.jpg" style="width: 700px; height: 989px;" /></p>
<p>
	<img alt="" src="/Uploads/images/danh sach k12-02.jpg" style="width: 700px; height: 989px;" />djfhalh;hvnj bưaooihwouaihp</p>
', N'', CAST(N'2018-10-12T08:44:00.000' AS DateTime), CAST(N'2019-05-08T15:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TSKetQuaTintuc] OFF
SET IDENTITY_INSERT [dbo].[TSNVCaodang] ON 

INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (1, N'Cắt gọt kim loại - CNC')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (2, N'Bảo trì hệ thống thiết bị cơ khí')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (3, N'Công nghệ ô tô (Cơ khí động lực)')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (4, N'Điện công nghiệp')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (5, N'Kỹ thuật máy lạnh và điều hòa không khí')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (6, N'Kỹ thuật lắp đặt điện và điều khiển trong công nghiệp')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (7, N'Điện tử công nghiệp')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (8, N'Kỹ thuật sửa chữa, lắp ráp máy tính')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (9, N'CNTT (Ứng dụng phần mềm)')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (10, N'Quảng trị mạng máy tính')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (11, N'Thiết kê đồ họa')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (12, N'Chế biến thực phẩm')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (13, N'Kế toán doanh nghiệp')
INSERT [dbo].[TSNVCaodang] ([ID], [nguyenvong]) VALUES (14, N'Quản trị doanh nghiệp vừa và nhỏ')
SET IDENTITY_INSERT [dbo].[TSNVCaodang] OFF
SET IDENTITY_INSERT [dbo].[TSNVTrungcap] ON 

INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (1, N'Cắt gọt kim loại - CNC')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (2, N'Công nghệ ô tô (Cơ khí động lực)')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (3, N'Điện công nghiệp')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (4, N'Kỹ thuật máy lạnh và điều hòa không khí')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (5, N'Kỹ thuật sửa chữa, lắp ráp máy tính')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (6, N'CNTT (Ứng dụng phần mềm)')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (7, N'Quảng trị mạng máy tính')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (8, N'Thiết kê đồ họa')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (9, N'Chế biến thực phẩm')
INSERT [dbo].[TSNVTrungcap] ([ID], [nguyenvong]) VALUES (10, N'Kế toán doanh nghiệp')
SET IDENTITY_INSERT [dbo].[TSNVTrungcap] OFF
SET IDENTITY_INSERT [dbo].[TSTintuc] ON 

INSERT [dbo].[TSTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (2, 8, N'Công ty Phước Sơn tuyển dung', N'', N'<p>
	<img alt="Description: logo" src="/Uploads/images/logo.png" style="width: 135px; height: 85px;" /></p>
<p align="center">
	<strong>C&Ocirc;NG TY PHƯỚC SƠN TUYỂN DỤNG</strong></p>
<p>
	<strong>1</strong><strong>. THIẾT KẾ ĐỒ HỌA (6-10TR)</strong></p>
<p>
	- Thiết kế bảng hiệu, hộp đ&egrave;n, name card, brochure,...</p>
<p>
	- Đặt in, theo d&otilde;i tiến độ in (sẽ được hướng dẫn trong qu&aacute; tr&igrave;nh l&agrave;m việc)</p>
<p>
	- L&ecirc;n bảng vẽ chi tiết; Gi&aacute;m s&aacute;t tiến độ với bộ phận sản xuất</p>
<p>
	<strong><u>Y&ecirc;u cầu:</u></strong> Đọc, hi&ecirc;̉u, vẽ t&ocirc;́t bản vẽ kỹ thu&acirc;̣t, sử dụng t&ocirc;́t Cad 2D, Illustrator, Photoshop, Corel.</p>
<p>
	<strong>2. KỸ THUẬT CƠ KH&Iacute; (h&agrave;n, x&igrave;, cắt gọt kim loại&hellip;) (6-10TR)</strong></p>
<p>
	- H&agrave;n th&eacute;p, sắt, inox&hellip;</p>
<p>
	- H&agrave;n khung sắt, bảng hiệu&hellip;</p>
<p>
	<strong>3. KỸ THUẬT ĐIỆN C&Ocirc;NG TR&Igrave;NH (6-10TR)</strong></p>
<p>
	- Đi điện &acirc;m tường, đi điện văn ph&ograve;ng l&agrave;m việc&hellip;</p>
<p>
	<strong>4. KỸ THUẬT CẮT CNC, LASER (6-10TR)</strong></p>
<p>
	<strong>5. THỢ MỘC (6-10TR)</strong></p>
<p align="left" style="margin-left:39pt;">
	&uuml;&nbsp; <strong>Quyền lợi:</strong></p>
<p>
	<strong>- </strong>&nbsp;&nbsp;Được hưởng c&aacute;c ph&uacute;c lợi của c&ocirc;ng ty như : Đi du lịch, tham gia sinh hoạt cộng đồng,&hellip;</p>
<p>
	- &nbsp;K&yacute; kết hợp đồng lao động đầy đủ c&aacute;c chế độ BHXH, BHYT, &hellip; theo quy định</p>
<p>
	- Lương th&aacute;ng 13, lương th&acirc;m ni&ecirc;n, c&ocirc;ng t&aacute;c ph&iacute; đi c&ocirc;ng t&aacute;c tỉnh theo quy định c&ocirc;ng ty</p>
<p>
	- Lương tăng ca theo quy định</p>
<p>
	- &nbsp;L&agrave;m việc trong m&ocirc;i trường trẻ trung, năng động.</p>
<p>
	- &nbsp; Cơ h&ocirc;i thăng tiến trong c&ocirc;ng việc đồng nghĩa với việc tăng thu nhập.</p>
<p>
	<strong>Li&ecirc;n hệ: Ms.Trang: 0965 311 064</strong></p>
<p>
	<strong>Email: <em>huyentrang@phuocson.com</em></strong></p>
<p>
	<strong>Địa chỉ: 4/4/3/9 đường số 3, KP5, P.Hiệp B&igrave;nh Phước, Thủ Đức, TPHCM</strong></p>
<p>
	<strong>Webside: http://www.phuocson.com/</strong></p>
', N'', CAST(N'2018-09-02T10:13:00.000' AS DateTime), CAST(N'2018-09-20T22:10:00.000' AS DateTime), 1)
INSERT [dbo].[TSTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (3, 8, N'Thư ngỏ tuyển dụng của Công ty TNHH Phương Yến', N'', N'<p align="center">
	<strong>THƯ NGỎ TUYỂN DỤNG</strong></p>
<p align="center">
	&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><em><u>K&iacute;nh gởi</u></em></strong> : Ban Gi&aacute;m Hiệu Trường trung cấp nghề Huyện Củ Chi</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sinh vi&ecirc;n trường trung cấp nghề Huyện Củ Chi</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng ty TNHH Phương&nbsp;Yến l&agrave; một&nbsp;đơn vị chuy&ecirc;n sản&nbsp;xuất bao b&igrave; giấy&nbsp;carton 3, 5 lớp phục vụ cho nhu cầu trong nước v&agrave; xuất khẩu&nbsp;.</p>
<p>
	&nbsp;</p>
<p>
	Với diện t&iacute;ch&nbsp;20.000 m2, nh&agrave; m&aacute;y kh&ocirc;ng ngừng trang bị những m&aacute;y m&oacute;c c&ocirc;ng nghệ, thiết bị hiện đại của c&aacute;c quốc gia ti&ecirc;n tiến : Đ&agrave;i Loan, Trung Quốc, Nhật Bản &hellip;.</p>
<p>
	&nbsp;</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 02 D&acirc;y chuyền sản xuất carton hiện đại, khổ 1,8m với c&ocirc;ng suất 30 triệu m2/năm cho ra l&ograve; những sản phẩm chuẩn v&agrave; chất lượng ổn định.</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 02 D&agrave;n m&aacute;y in tự động 04 m&agrave;u , 01 d&agrave;n m&aacute;y in phun với c&ocirc;ng suất 20 triệu th&ugrave;ng/năm, được thiết kế m&agrave;u sắc, qui c&aacute;ch chuẩn, độ ch&iacute;nh x&aacute;c cao, độ chồng m&agrave;u ổn định.&nbsp;&nbsp;</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 03 D&acirc;y chuyền m&aacute;y d&aacute;n tự động hiện đại với c&ocirc;ng suất 40 triệu th&ugrave;ng/năm, cho độ kết d&iacute;nh b&aacute;m, tốt giữa c&aacute;c lớp tiếp nối, đường d&aacute;n mối nối chuẩn đẹp v&agrave; tiết kiệm phụ liệu kết d&iacute;nh.</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 02 m&aacute;y đ&oacute;ng ghim b&aacute;n tự động với c&ocirc;ng suất 1triệu th&ugrave;ng/năm, được thiết kế đ&oacute;ng được c&aacute;c loại th&ugrave;ng thường v&agrave; chuy&ecirc;n dụng, khoảng c&aacute;ch giữa c&aacute;c ghim chuẩn, chắc chắn.</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 02 m&aacute;y bế th&ugrave;ng tự động &nbsp;được thiết kế dập bế &nbsp;được c&aacute;c loại th&ugrave;ng thường v&agrave; chuy&ecirc;n dụng</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 08 m&aacute;y đ&oacute;ng ghim cơ động phục vụ cho những mặt h&agrave;ng nhỏ v&agrave; qu&aacute; khổ.</p>
<p style="margin-left:3.0pt;">
	&nbsp;</p>
<p>
	Tất cả những đầu tư c&ocirc;ng nghệ n&oacute;i tr&ecirc;n l&agrave; nhằm phục vụ tốt hơn mọi nhu cầu ng&agrave;y c&agrave;ng cao của qu&yacute; kh&aacute;ch h&agrave;ng.</p>
<p>
	&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
<p>
	Do đ&oacute;, nếu bạn l&agrave; người c&oacute; năng lực, bạn c&oacute; quyết t&acirc;m l&agrave;m việc v&agrave; cống hiến trở th&agrave;nh th&agrave;nh vi&ecirc;n của Phương Yến, ch&uacute;ng t&ocirc;i lu&ocirc;n mở rộng c&aacute;nh cửa ch&agrave;o đ&oacute;n bạn. Đ&oacute; l&agrave; cơ hội cho bạn v&agrave; cho ch&iacute;nh Phương Yến.</p>
<p>
	&nbsp;</p>
<p>
	L&agrave;m việc với Phương Yến c&aacute;c bạn sẽ c&oacute;:</p>
<p>
	&nbsp;</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức thu nhập hấp dẫn</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&ocirc;ng việc ổn định l&acirc;u d&agrave;i</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cơ hội được đ&agrave;o tạo v&agrave; ph&aacute;t triển nghề nghiệp</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhiều quyền lợi hấp dẫn kh&aacute;c</p>
<p style="margin-left:3.0pt;">
	&nbsp;</p>
<p>
	<strong>Nay c&ocirc;ng ty TNHH Phương Yến cần tuyển c&aacute;c sinh vi&ecirc;n ng&agrave;nh Cơ Kh&iacute; v&agrave; Điện C&ocirc;ng Nghiệp ứng tuyển cho c&aacute;c vị tr&iacute; như sau :</strong></p>
<p>
	&nbsp;</p>
<p style="margin-left:36.0pt;">
	<strong>1.&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Bảo tr&igrave; v&agrave; quản l&yacute; cơ, điện cho nh&agrave; m&aacute;y sản xuất</strong></p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số lượng : 02 người</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cấp bậc : nh&acirc;n vi&ecirc;n</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc; tả c&ocirc;ng việc :</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thực hiện c&ocirc;ng việc sửa chữa v&agrave; hỗ trợ nh&acirc;n sự kh&aacute;c bảo tr&igrave; bảo dưỡng c&aacute;c m&aacute;y m&oacute;c thiết bị của c&ocirc;ng ty.</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L&ecirc;n kế hoạch v&agrave; thực hiện bảo tr&igrave; định kỳ to&agrave;n bộ hệ thống điện điện v&agrave; tất cả c&aacute;c loại m&aacute;y m&oacute;c trong nh&agrave; m&aacute;y để đảm bảo kh&ocirc;ng c&oacute; sự cố bất thường xảy ra l&agrave;m ảnh hưởng đến sản xuất</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lập kế hoạch v&agrave; triển khai thực hiện bảo tr&igrave; hệ thống m&aacute;y m&oacute;c trong C&ocirc;ng ty</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cải tiến thiết bị n&acirc;ng cao năng lực sản xuất; Hướng dẫn v&agrave;&nbsp;<a href="http://mywork.com.vn/tuyen-dung/58/giao-duc-dao-tao.html">đ&agrave;o tạo</a>&nbsp;nh&acirc;n vi&ecirc;n; Phối kết hợp c&aacute;c bộ phận li&ecirc;n quan đảm bảo thiết bị sản xuất lu&ocirc;n hoạt động ổn định; Kiểm tra, theo d&otilde;i nhật k&yacute; th&ocirc;ng số thiết bị h&agrave;ng ng&agrave;y, ph&acirc;n t&iacute;ch đ&aacute;nh gi&aacute; lập kế hoạch bảo tr&igrave; sửa chữa kịp thời;</p>
<p style="margin-left:3.0pt;">
	&nbsp;</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Y&ecirc;u cầu c&ocirc;ng việc :</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tr&igrave;nh độ học vấn : tốt nghiệp trung cấp trở l&ecirc;n</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chuy&ecirc;n m&ocirc;n :&nbsp; tốt nghiệp ng&agrave;nh cơ kh&iacute; v&agrave; điện c&ocirc;ng nghiệp</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kỹ năng : c&oacute; khả năng đọc hiểu c&aacute;c bản vẽ hệ thống điện, bản vẽ điện điều khiển. Đọc hiểu t&agrave;i liệu kỹ thuật; Chịu &aacute;p lực c&ocirc;ng việc, khả năng l&agrave;m việc độc lập v&agrave; l&atilde;nh đạo nh&oacute;m.</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kinh nghiệm : ưu ti&ecirc;n c&aacute;c ứng vi&ecirc;n c&oacute; kinh nghiệm, kh&ocirc;ng c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo.</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Y&ecirc;u cầu kh&aacute;c : sức khỏe tốt , thẳng thắn, trung thực, cẩn thận</p>
<p style="margin-left:39.0pt;">
	&nbsp;</p>
<p style="margin-left:36.0pt;">
	<strong>2.&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>C&ocirc;ng nh&acirc;n vận h&agrave;nh m&aacute;y :</strong></p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số lượng : 15 người</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cấp bậc : nh&acirc;n vi&ecirc;n</p>
<p style="margin-left:21.0pt;">
	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M&ocirc; tả c&ocirc;ng việc :</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giới t&iacute;nh: Nam</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốt nghiệp THPT, trung cấp&nbsp;<a href="http://mywork.com.vn/tuyen-dung/71/ky-thuat.html">kỹ thuật</a>.</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sức khỏe tốt, cao 1,65 m, nặng 55 kg trở l&ecirc;n.</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ưu ti&ecirc;n c&oacute; kinh nghiệm vận h&agrave;nh m&aacute;y c&ocirc;ng nghiệp, đặc biệt c&aacute;c thiết bị ngh&agrave;nh giấy: M&aacute;y tạo s&oacute;ng, Carton, m&aacute;y in Flexo, M&aacute;y Bế.</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C&oacute; ch&iacute; cầu tiến trong c&ocirc;ng việc, mong muốn l&agrave;m việc l&acirc;u d&agrave;i v&agrave; ổn định cuộc sống tại KCN Đức H&ograve;a , Long An</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kh&ocirc;ng cần c&oacute; kinh nghiệm, c&ocirc;ng ty đ&agrave;o tạo miễn ph&iacute;.</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chịu &aacute;p lực c&ocirc;ng việc tốt;</p>
<p style="margin-left:72.0pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ch&uacute;ng t&ocirc;i mong muốn&nbsp;<a href="http://mywork.com.vn/tuyen-dung/">tuyển dụng</a>&nbsp;những ứng vi&ecirc;n c&oacute; mong muốn l&agrave;m việc l&acirc;u d&agrave;i tại C&ocirc;ng ty v&agrave; trở th&agrave;nh những lao động chủ chốt trong chặng đường ph&aacute;t triển của C&ocirc;ng ty trong tương lai.</p>
<p style="margin-left:35.35pt;">
	&nbsp;Nếu được mời đến tham dự phỏng vấn vui l&ograve;ng mang theo hồ sơ sau:&nbsp;</p>
<p style="margin-left:35.35pt;">
	&nbsp;</p>
<p style="margin-left:70.7pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đơn xin việc</p>
<p style="margin-left:70.7pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sơ yếu l&yacute; lịch tiếng Việt</p>
<p style="margin-left:70.7pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giấy kh&aacute;m sức khỏe.</p>
<p style="margin-left:70.7pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chứng minh thư nh&acirc;n d&acirc;n&nbsp;</p>
<p style="margin-left:70.7pt;">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bản sao c&aacute;c văn bằng&nbsp; bảng điểm</p>
<p style="margin-left:70.7pt;">
	&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="margin-left:18.0pt;">
	Tất cả c&aacute;c vị tr&iacute; tuyển dụng đều l&agrave;m tại đia chỉ nh&agrave; m&aacute;y của c&ocirc;ng ty số A219, Đường D2, KCN Th&aacute;i H&ograve;a,Đức H&ograve;a 3, ấp T&acirc;n H&ograve;a, x&atilde; Đức Lập Hạ, huyện Đức H&ograve;a, tỉnh Long An.</p>
<p style="margin-left:18.0pt;">
	C&aacute;c ứng vi&ecirc;n c&oacute; nhu cầu vui l&ograve;ng gởi hồ sơ qua địa chỉ mail : <a href="mailto:info@phuongyen.vn">info@phuongyen.vn</a>.</p>
<p style="margin-left:18.0pt;">
	Khi gởi mail vui long ghi rỏ ti&ecirc;u đề cần xin việc ở vị tr&iacute; n&agrave;o.</p>
<p style="margin-left:18.0pt;">
	Hoặc c&aacute;c ứng vi&ecirc;n c&oacute; thể li&ecirc;n hệ với Anh Thịnh số điện thoại : 0902 551 311</p>
<p style="margin-left:18.0pt;">
	&nbsp;</p>
<p style="margin-left:18.0pt;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>C&Ocirc;NG TY TNHH PHƯƠNG YẾN</strong></p>
<p style="margin-left:18.0pt;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TM Ban Gi&aacute;m Đốc</p>
<p style="margin-left:18.0pt;">
	&nbsp;</p>
<p style="margin-left:18.0pt;">
	&nbsp;</p>
<p style="margin-left:18.0pt;">
	&nbsp;</p>
<p style="margin-left:18.0pt;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="margin-left:18.0pt;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;L&ecirc; Phước Thịnh</p>
<p style="margin-left:18.0pt;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Ph&oacute; Gi&aacute;m Đốc Sản Xuất</p>
', N'', CAST(N'2018-09-02T10:15:00.000' AS DateTime), CAST(N'2018-09-20T22:11:00.000' AS DateTime), 1)
INSERT [dbo].[TSTintuc] ([ID], [IDChude], [tieude], [tomtat], [noidung], [anhdaidien], [ngaydang], [ngaysua], [dangtin]) VALUES (12, 5, N'Tin tức tuyển sinh', N'Test', N'', N'', CAST(N'2018-09-21T10:53:00.000' AS DateTime), CAST(N'2018-09-21T10:53:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[TSTintuc] OFF
/****** Object:  StoredProcedure [dbo].[sp_Account_ChangePassWord]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_ChangePassWord]
@Username	NVARCHAR (255),
@Password    NVARCHAR (255)
AS
UPDATE [Account] SET [Password]=@Password
WHERE [Username]=@Username
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_CheckLogin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[sp_Account_CheckLogin]
@Username	NVARCHAR (255),
@Password    NVARCHAR (255)
AS
SELECT * FROM [Account] WHERE USERNAME = @Username AND PASSWORD = @Password

GO
/****** Object:  StoredProcedure [dbo].[sp_Account_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_Delete]
@Username	NVARCHAR (255)
AS
DELETE FROM [Account] WHERE [Username]=@Username

GO
/****** Object:  StoredProcedure [dbo].[sp_Account_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_GetByAll]
AS
SELECT * FROM [Account]

GO
/****** Object:  StoredProcedure [dbo].[sp_Account_GetByGroupUsers]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_GetByGroupUsers]
@GroupUsers_ID INT
AS
SELECT * FROM [Account] WHERE GroupUsers_ID=@GroupUsers_ID


GO
/****** Object:  StoredProcedure [dbo].[sp_Account_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [Account]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM Account'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +'WHERE' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +'ORDER BY'+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_GetByUserName]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_GetByUserName]
@Username	NVARCHAR (255)
AS
SELECT * FROM [Account] WHERE Username=@Username
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_GroupUsers]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Account_GroupUsers]
AS
SELECT        ACCOUNT.UserName, ACCOUNT.PassWord, GroupUsers.ID, GroupUsers.Name
FROM            ACCOUNT INNER JOIN
                         GroupUsers ON ACCOUNT.GroupUsers_ID = GroupUsers.ID
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Account_Insert]
@Username	NVARCHAR (255),
@Password    NVARCHAR (255),
@GroupUsers_ID int
AS
IF(EXISTS(SELECT * FROM Account WHERE Account.Username = @Username)) 
BEGIN   
	PRINT N'Tên đăng nhập ' + @Username + N' đã tồn tại'   
	RETURN -1  	
END        
INSERT INTO [Account]([Username],[Password],[GroupUsers_ID]) VALUES (@Username,@Password,@GroupUsers_ID)
GO
/****** Object:  StoredProcedure [dbo].[sp_Account_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_Account_Update]
@Username	NVARCHAR (255),
@GroupUsers_ID int
AS
UPDATE [Account] SET [GroupUsers_ID]=@GroupUsers_ID
WHERE [Username]=@Username

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTao_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTao_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [DaoTao]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [DaoTao]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDT_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDT_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [DaoTaoCTDT]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [DaoTaoCTDT]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTFile_Delete]
@ID int
AS
DELETE [DaoTaoCTDTFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTFile_DeletebyIDTin]
@IDTin int
AS
DELETE [DaoTaoCTDTFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [DaoTaoCTDTFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [DaoTaoCTDTFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [DaoTaoCTDTFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTTintuc_Delete]
@ID int
AS
DELETE [DaoTaoCTDTTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTTintuc_GetByAll]
AS
SELECT * FROM [DaoTaoCTDTTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM DaoTaoCTDTTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [DaoTaoCTDTTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [DaoTaoCTDTTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTTintuc_Insert]
	
	@IDChude int,
	@IDLoai int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [DaoTaoCTDTTintuc]([IDChude], [IDLoai],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude, @IDLoai,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTTintuc_Update]
	
	@ID int,
	@IDChude int,
	@IDLoai int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [DaoTaoCTDTTintuc] SET [IDChude]=@IDChude, [IDLoai]=@IDLoai,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoCTDTTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoCTDTTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [DaoTaoCTDTTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoFile_Delete]
@ID int
AS
DELETE [DaoTaoFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoFile_DeletebyIDTin]
@IDTin int
AS
DELETE [DaoTaoFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [DaoTaoFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [DaoTaoFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [DaoTaoFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoTintuc_Delete]
@ID int
AS
DELETE [DaoTaoTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoTintuc_GetByAll]
AS
SELECT * FROM [DaoTaoTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM DaoTaoTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [DaoTaoTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [DaoTaoTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [DaoTaoTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [DaoTaoTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_DaoTaoTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DaoTaoTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [DaoTaoTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSV_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSV_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [HSSV]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [HSSV]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVFile_Delete]
@ID int
AS
DELETE [HSSVFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVFile_DeletebyIDTin]
@IDTin int
AS
DELETE [HSSVFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [HSSVFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [HSSVFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [HSSVFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVTintuc_Delete]
@ID int
AS
DELETE [HSSVTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVTintuc_GetByAll]
AS
SELECT * FROM [HSSVTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM HSSVTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [HSSVTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [HSSVTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [HSSVTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [HSSVTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_HSSVTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_HSSVTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [HSSVTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_Slide_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Slide_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [Slide]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [Slide]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_Slide_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Slide_Update]
	
	@ID int,
	@IsSlide bit
AS       
UPDATE [Slide] SET [IsSlide]=@IsSlide
WHERE ID=@ID


GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanThe_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanThe_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongDoanThe]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongDoanThe]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheFile_Delete]
@ID int
AS
DELETE [TruongDoanTheFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TruongDoanTheFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongDoanTheFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongDoanTheFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TruongDoanTheFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheTintuc_Delete]
@ID int
AS
DELETE [TruongDoanTheTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheTintuc_GetByAll]
AS
SELECT * FROM [TruongDoanTheTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TruongDoanTheTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongDoanTheTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongDoanTheTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TruongDoanTheTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TruongDoanTheTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongDoanTheTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongDoanTheTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TruongDoanTheTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioiThieu_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioiThieu_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongGioiThieu]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongGioiThieu]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioiThieuFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioiThieuFile_Delete]
@ID int
AS
DELETE [TruongGioiThieuFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioiThieuFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioiThieuFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TruongGioiThieuFile] WHERE [IDTin]=@IDTin


GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioiThieuFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioiThieuFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongGioiThieuFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongGioiThieuFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioithieuFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioithieuFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TruongGioiThieuFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioiThieuTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioiThieuTintuc_Delete]
@ID int
AS
DELETE [TruongGioiThieuTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioiThieuTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioiThieuTintuc_GetByAll]
AS
SELECT * FROM [TruongGioiThieuTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioiThieuTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioiThieuTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TruongGioiThieuTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioiThieuTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioiThieuTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongGioiThieuTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongGioiThieuTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioithieuTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioithieuTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TruongGioiThieuTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioithieuTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioithieuTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TruongGioiThieuTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongGioithieuTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongGioithieuTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TruongGioiThieuTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtam_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtam_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongKhoaTrungtam]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongKhoaTrungtam]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamFile_Delete]
@ID int
AS
DELETE [TruongKhoaTrungtamFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TruongKhoaTrungtamFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongKhoaTrungtamFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongKhoaTrungtamFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TruongKhoaTrungtamFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamTintuc_Delete]
@ID int
AS
DELETE [TruongKhoaTrungtamTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamTintuc_GetByAll]
AS
SELECT * FROM [TruongKhoaTrungtamTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TruongKhoaTrungtamTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongKhoaTrungtamTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongKhoaTrungtamTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TruongKhoaTrungtamTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TruongKhoaTrungtamTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongKhoaTrungtamTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongKhoaTrungtamTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TruongKhoaTrungtamTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoibo_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoibo_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongNoibo]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongNoibo]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboFile_Delete]
@ID int
AS
DELETE [TruongNoiboFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TruongNoiboFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongNoiboFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongNoiboFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TruongNoiboFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboTintuc_Delete]
@ID int
AS
DELETE [TruongNoiboTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboTintuc_GetByAll]
AS
SELECT * FROM [TruongNoiboTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TruongNoiboTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongNoiboTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongNoiboTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TruongNoiboTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TruongNoiboTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongNoiboTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongNoiboTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TruongNoiboTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBan_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBan_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongPhongBan]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongPhongBan]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanFile_Delete]
@ID int
AS
DELETE [TruongPhongBanFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TruongPhongBanFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongPhongBanFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongPhongBanFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TruongPhongBanFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanTintuc_Delete]
@ID int
AS
DELETE [TruongPhongBanTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanTintuc_GetByAll]
AS
SELECT * FROM [TruongPhongBanTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TruongPhongBanTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongPhongBanTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongPhongBanTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TruongPhongBanTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TruongPhongBanTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongPhongBanTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongPhongBanTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TruongPhongBanTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvien_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvien_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongSinhvien]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongSinhvien]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienFile_Delete]
@ID int
AS
DELETE [TruongSinhvienFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TruongSinhvienFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongSinhvienFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongSinhvienFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TruongSinhvienFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienTintuc_Delete]
@ID int
AS
DELETE [TruongSinhvienTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienTintuc_GetByAll]
AS
SELECT * FROM [TruongSinhvienTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TruongSinhvienTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongSinhvienTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongSinhvienTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TruongSinhvienTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TruongSinhvienTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongSinhvienTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongSinhvienTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TruongSinhvienTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyen_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyen_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongTainguyen]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongTainguyen]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenFile_Delete]
@ID int
AS
DELETE [TruongTainguyenFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TruongTainguyenFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongTainguyenFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongTainguyenFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TruongTainguyenFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenTintuc_Delete]
@ID int
AS
DELETE [TruongTainguyenTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenTintuc_GetByAll]
AS
SELECT * FROM [TruongTainguyenTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TruongTainguyenTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongTainguyenTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongTainguyenTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TruongTainguyenTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TruongTainguyenTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongTainguyenTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongTainguyenTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TruongTainguyenTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvien_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvien_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongThuvien]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongThuvien]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienFile_Delete]
@ID int
AS
DELETE [TruongThuvienFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TruongThuvienFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongThuvienFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongThuvienFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TruongThuvienFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienTintuc_Delete]
@ID int
AS
DELETE [TruongThuvienTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienTintuc_GetByAll]
AS
SELECT * FROM [TruongThuvienTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TruongThuvienTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TruongThuvienTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TruongThuvienTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TruongThuvienTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TruongThuvienTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TruongThuvienTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TruongThuvienTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TruongThuvienTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TS_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TS_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TS]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TS]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSDangkitructuyen_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSDangkitructuyen_Delete]
@ID int
AS
DELETE [TSDangkitructuyen] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSDangkitructuyen_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSDangkitructuyen_GetByAll]
AS
SELECT * FROM [TSDangkitructuyen]

GO
/****** Object:  StoredProcedure [dbo].[sp_TSDangkitructuyen_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSDangkitructuyen_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSDangkitructuyen]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSDangkitructuyen]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSDangkitructuyen_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSDangkitructuyen_Insert]
	
	@Hoten nvarchar(100),
	@ngaysinh datetime,
	@Hokhau nvarchar(250),
	@dienthoai nvarchar(20),
	@cmnd nvarchar(20),
	@email nvarchar(50),
	@hotennhanthu nvarchar(100),
	@diachinhanthu nvarchar(250),
	@dienthoainhanthu nvarchar(20),
	@datotnghiep int,
	@namtotnghiep nvarchar(20),
	
	@nv1trinhdo nvarchar(250),
	@nv2trinhdo nvarchar(250),
	@nv3trinhdo nvarchar(250),
	@nv1Nganh nvarchar(250),
	@nv2Nganh nvarchar(250),
	@nv3Nganh nvarchar(250),
	@ngaydangky datetime
	
AS       
INSERT INTO [TSDangkitructuyen]([Hoten],[ngaysinh],[Hokhau],[dienthoai],
[cmnd],[email],[hotennhanthu],[diachinhanthu], [dienthoainhanthu], [datotnghiep], [namtotnghiep], [nv1trinhdo],	[nv2trinhdo],
	[nv3trinhdo],	[nv1Nganh],	[nv2Nganh],	[nv3Nganh],	[ngaydangky]) VALUES (@Hoten, @ngaysinh,@Hokhau, @dienthoai, 
@cmnd, @email, @hotennhanthu, @diachinhanthu, @dienthoainhanthu, @datotnghiep, @namtotnghiep, @nv1trinhdo,
	@nv2trinhdo,	@nv3trinhdo,	@nv1Nganh,	@nv2Nganh,	@nv3Nganh,	@ngaydangky)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSDangkitructuyen_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSDangkitructuyen_Update]
	
	@ID int,
	@Hoten nvarchar(100),
	@ngaysinh datetime,
	@Hokhau nvarchar(250),
	@dienthoai nvarchar(20),
	@cmnd nvarchar(20),
	@email nvarchar(50),
	@hotennhanthu nvarchar(100),
	@diachinhanthu nvarchar(250),
	@dienthoainhanthu nvarchar(20),
	@datotnghiep int,
	@namtotnghiep nvarchar(20)
AS       
UPDATE [TSDangkitructuyen] SET [Hoten]=@Hoten,[ngaysinh]=@ngaysinh,[Hokhau]=@Hokhau,[dienthoai]=@dienthoai,
[cmnd]=@cmnd,[email]=@email,[hotennhanthu]=@hotennhanthu,[diachinhanthu]=@diachinhanthu, [dienthoainhanthu]=@dienthoainhanthu, [datotnghiep]=@datotnghiep, [namtotnghiep]=@namtotnghiep
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSFile_Delete]
@ID int
AS
DELETE [TSFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TSFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TSFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TSFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHoso_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHoso_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSHoso]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSHoso]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoFile_Delete]
@ID int
AS
DELETE [TSHosoFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TSHosoFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSHosoFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSHosoFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TSHosoFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoTintuc_Delete]
@ID int
AS
DELETE [TSHosoTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoTintuc_GetByAll]
AS
SELECT * FROM [TSHosoTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TSHosoTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSHosoTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSHosoTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TSHosoTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TSHosoTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSHosoTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSHosoTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TSHosoTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetqua_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetqua_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSKetqua]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSKetqua]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaFile_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaFile_Delete]
@ID int
AS
DELETE [TSKetquaFile] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaFile_DeletebyIDTin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaFile_DeletebyIDTin]
@IDTin int
AS
DELETE [TSKetquaFile] WHERE [IDTin]=@IDTin

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaFile_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaFile_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSKetquaFile]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSKetquaFile]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaFile_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaFile_Insert]
	
	@IDTin int,
	@noidung nvarchar(500),
	@duongdan nvarchar(500)
AS       
INSERT INTO [TSKetquaFile]([IDTin],[Noidung],[Duongdan]) VALUES (@IDTin,@noidung,@duongdan)

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaTintuc_Delete]
@ID int
AS
DELETE [TSKetquaTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaTintuc_GetByAll]
AS
SELECT * FROM [TSKetquaTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TSKetquaTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSKetquaTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSKetquaTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TSKetquaTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TSKetquaTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSKetquaTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSKetquaTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TSKetquaTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSNguyenVong_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSNguyenVong_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSNguyenVong]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSNguyenVong]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSNguyenvong_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSNguyenvong_Insert]
	
	@IDdangki int,
	@IDTrinhdo int,
	@IDNguyenvong int
	
AS       
INSERT INTO [TSNguyenvong]([IDDangki],[IDTrinhdo],[IDNguyenvong]) VALUES (@IDDangki, @IDTrinhdo,@IDNguyenvong)


GO
/****** Object:  StoredProcedure [dbo].[sp_TSNVCaoDang_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSNVCaoDang_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSNVCaoDang]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSNVCaoDang]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSNVTrungCap_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSNVTrungCap_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSNVTrungCap]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSNVTrungCap]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSTintuc_Delete]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSTintuc_Delete]
@ID int
AS
DELETE [TSTintuc] WHERE [ID]=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSTintuc_GetByAll]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSTintuc_GetByAll]
AS
SELECT * FROM [TSTintuc]

GO
/****** Object:  StoredProcedure [dbo].[sp_TSTintuc_GetByChude]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSTintuc_GetByChude]
@IDchude int
AS
SELECT * FROM TSTintuc where IDChude=@IDChude

GO
/****** Object:  StoredProcedure [dbo].[sp_TSTintuc_GetByTop]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSTintuc_GetByTop]
@Top	NVARCHAR (10),
@Where    NVARCHAR (200),
@Order       NVARCHAR (200)
AS
	DECLARE @SQL AS NVARCHAR (500)
	SELECT @SQL = 'SELECT TOP ('+@Top+') * FROM [TSTintuc]'
	IF LEN(@Top)=0
		BEGIN
			SELECT @SQL = 'SELECT * FROM [TSTintuc]'
		END
	IF LEN(@Where)>0
		BEGIN
			SELECT @SQL = @SQL +' WHERE ' +@Where
		END
	IF LEN(@Order)>0
		BEGIN
			SELECT @SQL = @SQL +' ORDER BY '+@Order
		END
	EXEC(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[sp_TSTintuc_Insert]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSTintuc_Insert]
	
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
INSERT INTO [TSTintuc]([IDChude],[Tieude],[Tomtat],[Noidung],
[Anhdaidien],[Ngaydang],[Ngaysua],[dangtin]) VALUES (@IDChude,@tieude,@tomtat,@noidung,@anhdaidien,@ngaydang,@ngaysua, @dangtin)

GO
/****** Object:  StoredProcedure [dbo].[sp_TSTintuc_Update]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSTintuc_Update]
	
	@ID int,
	@IDChude int,
	@tieude nvarchar(500),
	@tomtat nvarchar(500),
	@noidung nvarchar(MAX),
	@anhdaidien nvarchar(100),
	@ngaydang nvarchar(50),
	@ngaysua nvarchar(50),
	@dangtin bit
AS       
UPDATE [TSTintuc] SET [IDChude]=@IDChude,[Tieude]=@tieude,[Tomtat]=@tomtat,[Noidung]=@noidung,
[Anhdaidien]=@anhdaidien,[Ngaysua]=@ngaysua
WHERE ID=@ID

GO
/****** Object:  StoredProcedure [dbo].[sp_TSTintuc_UpdateDangtin]    Script Date: 13/05/2019 12:21:03 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TSTintuc_UpdateDangtin]
	
	@ID int,
	@dangtin bit
AS       
UPDATE [TSTintuc] SET [dangtin]=@dangtin
WHERE ID=@ID

GO
USE [master]
GO
ALTER DATABASE [TCNCuChi] SET  READ_WRITE 
GO
