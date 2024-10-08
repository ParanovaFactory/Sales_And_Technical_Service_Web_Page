USE [master]
GO
/****** Object:  Database [Db_TechnicalService]    Script Date: 10/8/2024 12:16:27 PM ******/
CREATE DATABASE [Db_TechnicalService]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_TechnikService', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Db_TechnikService.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db_TechnikService_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Db_TechnikService_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Db_TechnicalService] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_TechnicalService].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_TechnicalService] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_TechnicalService] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_TechnicalService] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Db_TechnicalService] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_TechnicalService] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET RECOVERY FULL 
GO
ALTER DATABASE [Db_TechnicalService] SET  MULTI_USER 
GO
ALTER DATABASE [Db_TechnicalService] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_TechnicalService] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_TechnicalService] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_TechnicalService] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db_TechnicalService] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Db_TechnicalService] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Db_TechnicalService', N'ON'
GO
ALTER DATABASE [Db_TechnicalService] SET QUERY_STORE = ON
GO
ALTER DATABASE [Db_TechnicalService] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Db_TechnicalService]
GO
/****** Object:  Table [dbo].[Tbl_Cities]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cities](
	[Id] [int] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[CountryId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBl_Contact]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBl_Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[ContactNameSurname] [varchar](50) NULL,
	[ContactEMail] [varchar](50) NULL,
	[ContactTitle] [varchar](max) NULL,
	[ContactContext] [varchar](max) NULL,
 CONSTRAINT [PK_TBl_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Countries]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Countries](
	[Id] [int] NOT NULL,
	[Name] [varchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Provinces]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Provinces](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City_Id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAbout]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAbout](
	[AboutId] [int] IDENTITY(1,1) NOT NULL,
	[Context] [varchar](max) NULL,
 CONSTRAINT [PK_TblAbout] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblAdmin]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAdmin](
	[AdminId] [tinyint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_TblAdmin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCathegories]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCathegories](
	[CathegoryId] [int] IDENTITY(1,1) NOT NULL,
	[CathegoryName] [varchar](30) NULL,
 CONSTRAINT [PK_TblCathegories] PRIMARY KEY CLUSTERED 
(
	[CathegoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCosts]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCosts](
	[CostId] [int] IDENTITY(1,1) NOT NULL,
	[CostTitle] [varchar](50) NULL,
	[CostDate] [varchar](10) NULL,
	[CostAmount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TblCosts] PRIMARY KEY CLUSTERED 
(
	[CostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCurrent]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCurrent](
	[CurrentId] [int] IDENTITY(1,1) NOT NULL,
	[CurrentName] [varchar](30) NULL,
	[CurrentSurname] [varchar](30) NULL,
	[CurrentPhone] [varchar](20) NULL,
	[CurrentMail] [varchar](50) NULL,
	[CurrentCountry] [varchar](50) NULL,
	[CurrentCity] [varchar](50) NULL,
	[CurrentProvince] [varchar](50) NULL,
	[CurrentBank] [varchar](50) NULL,
	[CurrentTaxOffice] [varchar](50) NULL,
	[CurrentTaxNumber] [varchar](50) NULL,
	[CurrentStatus] [varchar](50) NULL,
	[CurrentAddress] [varchar](max) NULL,
 CONSTRAINT [PK_TblCurrent] PRIMARY KEY CLUSTERED 
(
	[CurrentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDefectiveProduct]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDefectiveProduct](
	[FaultId] [int] IDENTITY(1,1) NOT NULL,
	[FaultProcess] [int] NULL,
	[FaultProblem] [varchar](max) NULL,
	[FaultNote] [varchar](max) NULL,
	[FaultEstimatedPrice] [decimal](18, 2) NULL,
	[FaultTransactionsMade] [varchar](max) NULL,
	[FaultNetPrice] [decimal](18, 2) NULL,
	[FaultSerieNo] [char](5) NULL,
 CONSTRAINT [PK_TblFaults] PRIMARY KEY CLUSTERED 
(
	[FaultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDepartments]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDepartments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NULL,
	[DepartmentDescription] [varchar](max) NULL,
 CONSTRAINT [PK_TblDepartments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEmployees]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEmployees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](30) NULL,
	[EmployeeSurname] [varchar](30) NULL,
	[EmployeeDepartment] [int] NULL,
	[EmployeeImage] [varchar](max) NULL,
	[EmployeeMail] [varchar](50) NULL,
	[EmployeePhone] [varchar](20) NULL,
 CONSTRAINT [PK_TblEmployees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblInvoiceBases]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblInvoiceBases](
	[InvoiceBaseId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceBaseSerie] [varchar](50) NULL,
	[InvoiceBaseOrderNo] [varchar](50) NULL,
	[InvoiceBaseDate] [char](10) NULL,
	[InvoiceBaseHour] [char](5) NULL,
	[InvoiceBaseTaxOffice] [varchar](50) NULL,
	[InvoiceBaseCurrentId] [int] NULL,
	[InvoiceBaseEmployee] [int] NULL,
 CONSTRAINT [PK_TblInvoiceBase] PRIMARY KEY CLUSTERED 
(
	[InvoiceBaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblInvoiceDetails]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblInvoiceDetails](
	[InvoiceDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDetailsProduct] [varchar](50) NULL,
	[InvoiceDetailsPiece] [smallint] NULL,
	[InvoiceDetailsPrice] [decimal](18, 2) NULL,
	[InvoiceDetailsTotalPrice] [decimal](18, 2) NULL,
	[InvoiceId] [int] NULL,
 CONSTRAINT [PK_TblInvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[InvoiceDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblNotes]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblNotes](
	[NoteId] [int] IDENTITY(1,1) NOT NULL,
	[NoteTitle] [varchar](50) NULL,
	[NoteContext] [varchar](max) NULL,
	[NoteStatus] [bit] NULL,
 CONSTRAINT [PK_TblNotes] PRIMARY KEY CLUSTERED 
(
	[NoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProcess]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProcess](
	[ProcessId] [int] IDENTITY(1,1) NOT NULL,
	[ProcessTitle] [varchar](50) NULL,
	[ProcessDescription] [varchar](max) NULL,
 CONSTRAINT [PK_TblProcess] PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProdcutTracking]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProdcutTracking](
	[TrackingId] [int] IDENTITY(1,1) NOT NULL,
	[TrackingProduct] [int] NULL,
	[TrackingStatus] [varchar](max) NULL,
	[TrackingDate] [varchar](10) NULL,
	[TrackingCode] [char](5) NULL,
 CONSTRAINT [PK_TblProdcutTracking] PRIMARY KEY CLUSTERED 
(
	[TrackingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProductAcceptance]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProductAcceptance](
	[AcceptId] [int] IDENTITY(1,1) NOT NULL,
	[AcceptEmployee] [int] NULL,
	[AcceptCurrentId] [int] NULL,
	[AcceptComingDate] [varchar](10) NULL,
	[AcceptGointDate] [varchar](10) NULL,
	[AcceptSerieNo] [char](5) NULL,
 CONSTRAINT [PK_TblProductAcceptance] PRIMARY KEY CLUSTERED 
(
	[AcceptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProducts]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProducts](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductBrand] [varchar](30) NULL,
	[ProductBuyingPrice] [decimal](18, 2) NULL,
	[ProductSellingPrice] [decimal](18, 2) NULL,
	[ProductStock] [smallint] NULL,
	[ProductCathegory] [int] NULL,
	[ProductDescription] [varchar](max) NULL,
	[ProductStatus] [bit] NULL,
 CONSTRAINT [PK_TblProducts] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSales]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSales](
	[SaleId] [int] IDENTITY(1,1) NOT NULL,
	[SaleProduct] [int] NULL,
	[SaleCustomer] [int] NULL,
	[SaleEmployee] [int] NULL,
	[SaleDate] [varchar](10) NULL,
	[SalePiece] [smallint] NULL,
	[SalePrice] [decimal](18, 2) NULL,
	[SaleTotalPrice] [decimal](18, 2) NULL,
	[SaleProdutSerieNo] [char](5) NULL,
 CONSTRAINT [PK_TblSales] PRIMARY KEY CLUSTERED 
(
	[SaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TblNotes] ADD  CONSTRAINT [DF_TblNotes_Status]  DEFAULT ((0)) FOR [NoteStatus]
GO
ALTER TABLE [dbo].[TblProductAcceptance] ADD  CONSTRAINT [DF_TblProductAcceptance_ComingDate]  DEFAULT (getdate()) FOR [AcceptComingDate]
GO
ALTER TABLE [dbo].[TblProducts] ADD  CONSTRAINT [DF_TblProducts_Status]  DEFAULT ((0)) FOR [ProductStatus]
GO
ALTER TABLE [dbo].[TblDefectiveProduct]  WITH CHECK ADD  CONSTRAINT [FK_TblDefectiveProduct_TblProcess] FOREIGN KEY([FaultProcess])
REFERENCES [dbo].[TblProcess] ([ProcessId])
GO
ALTER TABLE [dbo].[TblDefectiveProduct] CHECK CONSTRAINT [FK_TblDefectiveProduct_TblProcess]
GO
ALTER TABLE [dbo].[TblEmployees]  WITH CHECK ADD  CONSTRAINT [FK_TblEmployees_TblDepartments] FOREIGN KEY([EmployeeDepartment])
REFERENCES [dbo].[TblDepartments] ([DepartmentId])
GO
ALTER TABLE [dbo].[TblEmployees] CHECK CONSTRAINT [FK_TblEmployees_TblDepartments]
GO
ALTER TABLE [dbo].[TblInvoiceBases]  WITH CHECK ADD  CONSTRAINT [FK_TblInvoiceBases_TblCurrent] FOREIGN KEY([InvoiceBaseCurrentId])
REFERENCES [dbo].[TblCurrent] ([CurrentId])
GO
ALTER TABLE [dbo].[TblInvoiceBases] CHECK CONSTRAINT [FK_TblInvoiceBases_TblCurrent]
GO
ALTER TABLE [dbo].[TblInvoiceBases]  WITH CHECK ADD  CONSTRAINT [FK_TblInvoiceBases_TblEmployees] FOREIGN KEY([InvoiceBaseEmployee])
REFERENCES [dbo].[TblEmployees] ([EmployeeId])
GO
ALTER TABLE [dbo].[TblInvoiceBases] CHECK CONSTRAINT [FK_TblInvoiceBases_TblEmployees]
GO
ALTER TABLE [dbo].[TblInvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_TblInvoiceDetails_TblInvoiceBases] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[TblInvoiceBases] ([InvoiceBaseId])
GO
ALTER TABLE [dbo].[TblInvoiceDetails] CHECK CONSTRAINT [FK_TblInvoiceDetails_TblInvoiceBases]
GO
ALTER TABLE [dbo].[TblProdcutTracking]  WITH CHECK ADD  CONSTRAINT [FK_TblProdcutTracking_TblProducts] FOREIGN KEY([TrackingProduct])
REFERENCES [dbo].[TblProducts] ([ProductId])
GO
ALTER TABLE [dbo].[TblProdcutTracking] CHECK CONSTRAINT [FK_TblProdcutTracking_TblProducts]
GO
ALTER TABLE [dbo].[TblProductAcceptance]  WITH CHECK ADD  CONSTRAINT [FK_TblProductAcceptance_TblCurrent] FOREIGN KEY([AcceptCurrentId])
REFERENCES [dbo].[TblCurrent] ([CurrentId])
GO
ALTER TABLE [dbo].[TblProductAcceptance] CHECK CONSTRAINT [FK_TblProductAcceptance_TblCurrent]
GO
ALTER TABLE [dbo].[TblProductAcceptance]  WITH CHECK ADD  CONSTRAINT [FK_TblProductAcceptance_TblEmployees] FOREIGN KEY([AcceptEmployee])
REFERENCES [dbo].[TblEmployees] ([EmployeeId])
GO
ALTER TABLE [dbo].[TblProductAcceptance] CHECK CONSTRAINT [FK_TblProductAcceptance_TblEmployees]
GO
ALTER TABLE [dbo].[TblProducts]  WITH CHECK ADD  CONSTRAINT [FK_TblProducts_TblCathegories] FOREIGN KEY([ProductCathegory])
REFERENCES [dbo].[TblCathegories] ([CathegoryId])
GO
ALTER TABLE [dbo].[TblProducts] CHECK CONSTRAINT [FK_TblProducts_TblCathegories]
GO
ALTER TABLE [dbo].[TblSales]  WITH CHECK ADD  CONSTRAINT [FK_TblSales_TblCurrent] FOREIGN KEY([SaleCustomer])
REFERENCES [dbo].[TblCurrent] ([CurrentId])
GO
ALTER TABLE [dbo].[TblSales] CHECK CONSTRAINT [FK_TblSales_TblCurrent]
GO
ALTER TABLE [dbo].[TblSales]  WITH CHECK ADD  CONSTRAINT [FK_TblSales_TblEmployees] FOREIGN KEY([SaleEmployee])
REFERENCES [dbo].[TblEmployees] ([EmployeeId])
GO
ALTER TABLE [dbo].[TblSales] CHECK CONSTRAINT [FK_TblSales_TblEmployees]
GO
ALTER TABLE [dbo].[TblSales]  WITH CHECK ADD  CONSTRAINT [FK_TblSales_TblProducts] FOREIGN KEY([SaleProduct])
REFERENCES [dbo].[TblProducts] ([ProductId])
GO
ALTER TABLE [dbo].[TblSales] CHECK CONSTRAINT [FK_TblSales_TblProducts]
GO
/****** Object:  StoredProcedure [dbo].[listcatpro]    Script Date: 10/8/2024 12:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[listcatpro]
as
select CathegoryName, count(ProductName) as 'Total Products' 
from TblProducts 
inner join TblCathegories
on TblCathegories.CathegoryId = TblProducts.ProductCathegory
group by CathegoryName
GO
USE [master]
GO
ALTER DATABASE [Db_TechnicalService] SET  READ_WRITE 
GO
