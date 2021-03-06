USE [master]
GO
/******franklin bautista ceballos matricula 16-miin-1-132 seccion 0541******/
CREATE DATABASE [despachobr]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'despachobr', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\despachobr.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'despachobr_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\despachobr_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [despachobr] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [despachobr].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [despachobr] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [despachobr] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [despachobr] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [despachobr] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [despachobr] SET ARITHABORT OFF 
GO
ALTER DATABASE [despachobr] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [despachobr] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [despachobr] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [despachobr] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [despachobr] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [despachobr] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [despachobr] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [despachobr] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [despachobr] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [despachobr] SET  DISABLE_BROKER 
GO
ALTER DATABASE [despachobr] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [despachobr] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [despachobr] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [despachobr] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [despachobr] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [despachobr] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [despachobr] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [despachobr] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [despachobr] SET  MULTI_USER 
GO
ALTER DATABASE [despachobr] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [despachobr] SET DB_CHAINING OFF 
GO
ALTER DATABASE [despachobr] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [despachobr] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [despachobr]
GO
/****** Object:  Table [dbo].[fechas]    Script Date: 12/3/2018 8:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fechas](
	[materiales] [int] IDENTITY(1,1) NOT NULL,
	[fechaentrada] [nvarchar](50) NULL,
	[fechasalida] [nvarchar](50) NULL,
 CONSTRAINT [PK_fechas] PRIMARY KEY CLUSTERED 
(
	[materiales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materialesn]    Script Date: 12/3/2018 8:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materialesn](
	[materiales] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [nvarchar](50) NULL,
	[codigos] [nvarchar](50) NULL,
 CONSTRAINT [PK_materialesn] PRIMARY KEY CLUSTERED 
(
	[materiales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nombres]    Script Date: 12/3/2018 8:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nombres](
	[materiales] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [nvarchar](50) NULL,
	[codigo] [nvarchar](50) NULL,
	[ubicacion] [nvarchar](50) NULL,
	[almacen] [nvarchar](50) NULL,
 CONSTRAINT [PK_nombres] PRIMARY KEY CLUSTERED 
(
	[materiales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[fechas] ON 

INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (1, N'15/01/2018', N'20/02/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (2, N'15/01/2018', N'22/02/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (3, N'17/01/2018', N'27/2/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (4, N'19/01/2018', N'01/03/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (5, N'23/01/2018', N'14/03/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (6, N'29/01/2018', N'16/03/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (7, N'03/02/2018', N'20/03/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (8, N'16/02/2018', N'02/04/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (9, N'05/06/2018', N'10/04/2018')
INSERT [dbo].[fechas] ([materiales], [fechaentrada], [fechasalida]) VALUES (10, N'21/06/2018', N'22/04/2018')
SET IDENTITY_INSERT [dbo].[fechas] OFF
SET IDENTITY_INSERT [dbo].[materialesn] ON 

INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (1, N'gomas', N'10')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (2, N'baterias', N'20')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (3, N'bombillas', N'30')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (4, N'tuercas', N'40')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (5, N'tornillos', N'50')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (6, N'aceite', N'60')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (7, N'filtros', N'70')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (8, N'pistones', N'80')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (9, N'bielas', N'90')
INSERT [dbo].[materialesn] ([materiales], [nombres], [codigos]) VALUES (10, N'juntas', N'100')
SET IDENTITY_INSERT [dbo].[materialesn] OFF
SET IDENTITY_INSERT [dbo].[nombres] ON 

INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (1, N'gomas', N'10', N'01', N'a')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (2, N'baterias', N'20', N'02', N'a')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (3, N'bombillas', N'30', N'02', N'a')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (4, N'tuercas', N'40', N'03', N'b')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (5, N'tornillos', N'50', N'03', N'b')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (6, N'aceite', N'60', N'04', N'a')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (7, N'filtros', N'70', N'04', N'a')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (8, N'pistones', N'80', N'05', N'b')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (9, N'bielas', N'90', N'05', N'b')
INSERT [dbo].[nombres] ([materiales], [nombres], [codigo], [ubicacion], [almacen]) VALUES (10, N'juntas', N'100', N'05', N'b')
SET IDENTITY_INSERT [dbo].[nombres] OFF
ALTER TABLE [dbo].[nombres]  WITH CHECK ADD  CONSTRAINT [FK_nombres_nombres] FOREIGN KEY([materiales])
REFERENCES [dbo].[nombres] ([materiales])
GO
ALTER TABLE [dbo].[nombres] CHECK CONSTRAINT [FK_nombres_nombres]
GO
USE [master]
GO
ALTER DATABASE [despachobr] SET  READ_WRITE 
GO
