USE [master]
GO
/****** Object:  Database [StudentManagement]    Script Date: 1/14/2022 4:28:44 PM ******/
CREATE DATABASE [StudentManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\StudentManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\StudentManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StudentManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentManagement] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'StudentManagement', N'ON'
GO
ALTER DATABASE [StudentManagement] SET QUERY_STORE = OFF
GO
USE [StudentManagement]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 1/14/2022 4:28:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[idd] [int] NULL,
	[namee] [nvarchar](50) NULL,
	[startdate] [datetime] NULL,
	[sqlmark] [decimal](18, 0) NULL,
	[nplmark] [decimal](18, 0) NULL,
	[nefwmark] [decimal](18, 0) NULL,
	[feemark] [decimal](18, 0) NULL,
	[nwebmark] [decimal](18, 0) NULL,
	[gpa] [decimal](18, 0) NULL,
	[graduatelevel] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Students] ([idd], [namee], [startdate], [sqlmark], [nplmark], [nefwmark], [feemark], [nwebmark], [gpa], [graduatelevel]) VALUES (1, N'minh', CAST(N'2022-01-14T16:14:03.000' AS DateTime), CAST(8 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), N'Average')
INSERT [dbo].[Students] ([idd], [namee], [startdate], [sqlmark], [nplmark], [nefwmark], [feemark], [nwebmark], [gpa], [graduatelevel]) VALUES (2, N'ee', CAST(N'2022-01-25T16:14:03.000' AS DateTime), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'Failed')
GO
USE [master]
GO
ALTER DATABASE [StudentManagement] SET  READ_WRITE 
GO
