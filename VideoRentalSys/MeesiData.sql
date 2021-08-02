/** Object:  Database [MeesiData]    Script Date: 16/06/2020 07:45:56 AM ******/
CREATE DATABASE [MeesiData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MeesiData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MeesiData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MeesiData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\MeesiData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )

/****** Object:  Table [dbo].[Customer_Cunt]    Script Date: 16/06/2020 07:45:56 AM ******/

CREATE TABLE [dbo].[Customer_Cunt](
	[CustomerID] [int] NULL,
	[CountNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Record]    Script Date: 16/06/2020 07:45:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Record](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_FirstName] [varchar](50) NULL,
	[Customer_LastName] [varchar](50) NULL,
	[Customer_Mobile] [varchar](50) NULL,
	[Customer_Address] [varchar](50) NULL,
 CONSTRAINT [PK_Customer_Record] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental_Record]    Script Date: 16/06/2020 07:45:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental_Record](
	[Rental_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NULL,
	[Movie_ID] [int] NULL,
	[Rental_Date] [varchar](50) NULL,
	[Return_Date] [varchar](50) NULL,
 CONSTRAINT [PK_Rental_Record] PRIMARY KEY CLUSTERED 
(
	[Rental_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Cunt]    Script Date: 16/06/2020 07:45:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Cunt](
	[MovieID] [int] NULL,
	[CountNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Record]    Script Date: 16/06/2020 07:45:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Record](
	[Video_ID] [int] IDENTITY(1,1) NOT NULL,
	[Video_Title] [varchar](50) NULL,
	[Video_Ratting] [varchar](50) NULL,
	[Video_Year] [int] NULL,
	[Video_Cost] [int] NULL,
	[Video_Copies] [int] NULL,
	[Video_Plot] [varchar](50) NULL,
	[Video_Genre] [varchar](50) NULL,
 CONSTRAINT [PK_Video_Record] PRIMARY KEY CLUSTERED 
(
	[Video_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer_Cunt] ([CustomerID], [CountNo]) VALUES (16, 1)
SET IDENTITY_INSERT [dbo].[Customer_Record] ON 

INSERT [dbo].[Customer_Record] ([Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Mobile], [Customer_Address]) VALUES (15, N'Jong', N'Li', N'741852963', N'Auckland')
INSERT [dbo].[Customer_Record] ([Customer_ID], [Customer_FirstName], [Customer_LastName], [Customer_Mobile], [Customer_Address]) VALUES (16, N'Lisa', N'Ray', N'7418529631', N'Wellington')
SET IDENTITY_INSERT [dbo].[Customer_Record] OFF
SET IDENTITY_INSERT [dbo].[Rental_Record] ON 

INSERT [dbo].[Rental_Record] ([Rental_ID], [Customer_ID], [Movie_ID], [Rental_Date], [Return_Date]) VALUES (27, 16, 19, N'13/12/2019 12:00:00 AM', N'13/12/2019 12:00:00 AM')
SET IDENTITY_INSERT [dbo].[Rental_Record] OFF
INSERT [dbo].[Video_Cunt] ([MovieID], [CountNo]) VALUES (19, 1)
SET IDENTITY_INSERT [dbo].[Video_Record] ON 

INSERT [dbo].[Video_Record] ([Video_ID], [Video_Title], [Video_Ratting], [Video_Year], [Video_Cost], [Video_Copies], [Video_Plot], [Video_Genre]) VALUES (19, N'Race', N'5', 2012, 5, 5, N'Action', N'Action')
INSERT [dbo].[Video_Record] ([Video_ID], [Video_Title], [Video_Ratting], [Video_Year], [Video_Cost], [Video_Copies], [Video_Plot], [Video_Genre]) VALUES (20, N'War', N'6', 1985, 2, 10, N'Action', N'ACtion')
SET IDENTITY_INSERT [dbo].[Video_Record] OFF
ALTER TABLE [dbo].[Rental_Record]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Record_Customer_Record] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer_Record] ([Customer_ID])
GO
ALTER TABLE [dbo].[Rental_Record] CHECK CONSTRAINT [FK_Rental_Record_Customer_Record]
GO
ALTER TABLE [dbo].[Rental_Record]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Record_Video_Record] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Video_Record] ([Video_ID])
GO
ALTER TABLE [dbo].[Rental_Record] CHECK CONSTRAINT [FK_Rental_Record_Video_Record]
GO
USE [master]
GO
ALTER DATABASE [MeesiData] SET  READ_WRITE 
GO
