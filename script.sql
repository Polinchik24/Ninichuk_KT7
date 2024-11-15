USE [master]
GO
/****** Object:  Database [MasterFloor]    Script Date: 14.11.2024 14:07:54 ******/
CREATE DATABASE [MasterFloor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterFloor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterFloor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterFloor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterFloor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterFloor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterFloor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterFloor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterFloor] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterFloor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterFloor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterFloor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterFloor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterFloor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterFloor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterFloor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterFloor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterFloor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterFloor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterFloor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterFloor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterFloor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterFloor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterFloor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterFloor] SET  MULTI_USER 
GO
ALTER DATABASE [MasterFloor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterFloor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterFloor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterFloor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterFloor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterFloor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterFloor] SET QUERY_STORE = OFF
GO
USE [MasterFloor]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[ID] [nvarchar](100) NOT NULL,
	[NameIndex] [int] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oblast]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oblast](
	[ID] [nvarchar](100) NOT NULL,
	[NameObl] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Oblast] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partner1]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partner1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NamePartner] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_partner1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Product] [int] NOT NULL,
	[NamePartner] [int] NOT NULL,
	[CountProduct] [int] NOT NULL,
	[DateSale] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypesPartners] [int] NOT NULL,
	[NamePartner] [int] NOT NULL,
	[SurName] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Patronymic] [nvarchar](100) NOT NULL,
	[Number] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Adres] [nvarchar](100) NOT NULL,
	[House] [int] NOT NULL,
	[TopR] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduct] [int] NOT NULL,
	[NameProduct] [int] NOT NULL,
	[Article] [int] NOT NULL,
	[MinSumma] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduct] [int] NOT NULL,
	[KTypeProduct] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameProductTypes] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID] [nvarchar](100) NOT NULL,
	[NameStreet] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesPartner]    Script Date: 14.11.2024 14:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesPartner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameTypesPartner] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TypesPartner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Index] ([ID], [NameIndex]) VALUES (N'1', 143960)
INSERT [dbo].[Index] ([ID], [NameIndex]) VALUES (N'2', 164500)
INSERT [dbo].[Index] ([ID], [NameIndex]) VALUES (N'3', 188910)
INSERT [dbo].[Index] ([ID], [NameIndex]) VALUES (N'4', 309500)
INSERT [dbo].[Index] ([ID], [NameIndex]) VALUES (N'5', 652050)
GO
INSERT [dbo].[Oblast] ([ID], [NameObl]) VALUES (N'1', N' Архангельская область')
INSERT [dbo].[Oblast] ([ID], [NameObl]) VALUES (N'2', N' Белгородская область')
INSERT [dbo].[Oblast] ([ID], [NameObl]) VALUES (N'3', N' Кемеровская область')
INSERT [dbo].[Oblast] ([ID], [NameObl]) VALUES (N'4', N' Ленинградская область')
INSERT [dbo].[Oblast] ([ID], [NameObl]) VALUES (N'5', N' Московская область')
GO
SET IDENTITY_INSERT [dbo].[partner1] ON 

INSERT [dbo].[partner1] ([ID], [NamePartner]) VALUES (1, N'База Строитель')
INSERT [dbo].[partner1] ([ID], [NamePartner]) VALUES (2, N'МонтажПро')
INSERT [dbo].[partner1] ([ID], [NamePartner]) VALUES (3, N'Паркет 29')
INSERT [dbo].[partner1] ([ID], [NamePartner]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[partner1] ([ID], [NamePartner]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[partner1] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProducts] ON 

INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [Product], [NamePartner], [CountProduct], [DateSale]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [NameProduct]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[Product] ([ID], [NameProduct]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[Product] ([ID], [NameProduct]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[Product] ([ID], [NameProduct]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[Product] ([ID], [NameProduct]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [TypeProduct], [NameProduct], [Article], [MinSumma]) VALUES (1, 3, 4, 8758385, CAST(4457 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ID], [TypeProduct], [NameProduct], [Article], [MinSumma]) VALUES (2, 3, 1, 8858958, CAST(7331 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ID], [TypeProduct], [NameProduct], [Article], [MinSumma]) VALUES (3, 1, 2, 7750282, CAST(1799 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ID], [TypeProduct], [NameProduct], [Article], [MinSumma]) VALUES (4, 1, 3, 7028748, CAST(3890 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ID], [TypeProduct], [NameProduct], [Article], [MinSumma]) VALUES (5, 4, 5, 5012543, CAST(5451 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ID], [TypeProduct], [KTypeProduct]) VALUES (1, 1, CAST(2.35 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ID], [TypeProduct], [KTypeProduct]) VALUES (2, 2, CAST(5.15 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ID], [TypeProduct], [KTypeProduct]) VALUES (3, 3, CAST(4.34 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ID], [TypeProduct], [KTypeProduct]) VALUES (4, 4, CAST(1.50 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([ID], [NameProductTypes]) VALUES (1, N'Ламинат')
INSERT [dbo].[ProductTypes] ([ID], [NameProductTypes]) VALUES (2, N'Массивная доска')
INSERT [dbo].[ProductTypes] ([ID], [NameProductTypes]) VALUES (3, N'Паркетная доска')
INSERT [dbo].[ProductTypes] ([ID], [NameProductTypes]) VALUES (4, N'Пробковое покрытие')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (N'1', N' ул. Лесная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (N'2', N' ул. Парковая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (N'3', N' ул. Рабочая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (N'4', N' ул. Свободы')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (N'5', N' ул. Строителей')
GO
SET IDENTITY_INSERT [dbo].[TypesPartner] ON 

INSERT [dbo].[TypesPartner] ([ID], [NameTypesPartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypesPartner] ([ID], [NameTypesPartner]) VALUES (2, N'ОАО')
INSERT [dbo].[TypesPartner] ([ID], [NameTypesPartner]) VALUES (3, N'ООО')
INSERT [dbo].[TypesPartner] ([ID], [NameTypesPartner]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[TypesPartner] OFF
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Product]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Oblast] FOREIGN KEY([Adres])
REFERENCES [dbo].[Oblast] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Oblast]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_partner1] FOREIGN KEY([NamePartner])
REFERENCES [dbo].[partner1] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_partner1]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerProducts] FOREIGN KEY([NamePartner])
REFERENCES [dbo].[PartnerProducts] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerProducts]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Street] FOREIGN KEY([Adres])
REFERENCES [dbo].[Street] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Street]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_TypesPartner] FOREIGN KEY([TypesPartners])
REFERENCES [dbo].[TypesPartner] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_TypesPartner]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_PartnerProducts] FOREIGN KEY([NameProduct])
REFERENCES [dbo].[PartnerProducts] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_PartnerProducts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductTypes] FOREIGN KEY([TypeProduct])
REFERENCES [dbo].[ProductTypes] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductTypes]
GO
ALTER TABLE [dbo].[ProductType]  WITH CHECK ADD  CONSTRAINT [FK_ProductType_Products] FOREIGN KEY([TypeProduct])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ProductType] CHECK CONSTRAINT [FK_ProductType_Products]
GO
USE [master]
GO
ALTER DATABASE [MasterFloor] SET  READ_WRITE 
GO
