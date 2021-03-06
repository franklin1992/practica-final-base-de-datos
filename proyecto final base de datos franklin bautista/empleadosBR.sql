USE [master]
GO
/******franklin bautista ceballos matricula 16-miin-1-132 seccion 0541******/
CREATE DATABASE [empleadosBR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'empleadosBR', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\empleadosBR.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'empleadosBR_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\empleadosBR_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [empleadosBR] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [empleadosBR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [empleadosBR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [empleadosBR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [empleadosBR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [empleadosBR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [empleadosBR] SET ARITHABORT OFF 
GO
ALTER DATABASE [empleadosBR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [empleadosBR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [empleadosBR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [empleadosBR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [empleadosBR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [empleadosBR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [empleadosBR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [empleadosBR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [empleadosBR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [empleadosBR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [empleadosBR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [empleadosBR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [empleadosBR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [empleadosBR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [empleadosBR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [empleadosBR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [empleadosBR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [empleadosBR] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [empleadosBR] SET  MULTI_USER 
GO
ALTER DATABASE [empleadosBR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [empleadosBR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [empleadosBR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [empleadosBR] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [empleadosBR]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 12/3/2018 8:27:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[IDempleado] [int] IDENTITY(1,1) NOT NULL,
	[empleado] [nvarchar](50) NULL,
	[cargo] [nvarchar](50) NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[IDempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supervisor]    Script Date: 12/3/2018 8:27:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supervisor](
	[supervisor] [int] IDENTITY(1,1) NOT NULL,
	[tiempoenlacompañia] [nvarchar](50) NULL,
	[telefono] [nvarchar](14) NULL,
 CONSTRAINT [PK_supervisor] PRIMARY KEY CLUSTERED 
(
	[supervisor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 12/3/2018 8:27:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[iniciovacaciones] [nvarchar](50) NULL,
	[diasvacaciones] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empleados] ON 

INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (1, N'claudio santos', N'operador1')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (2, N'jose lopez', N'operador3')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (3, N'luis fabian', N'operador1')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (4, N'alberto conrado', N'operador1')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (5, N'rafael garcia', N'operador3')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (6, N'mateo jerez', N'operador1')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (7, N'bartolo ruiz', N'operador2')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (8, N'danny torrez', N'operador1')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (9, N'lorenzo idalgo', N'operador2')
INSERT [dbo].[empleados] ([IDempleado], [empleado], [cargo]) VALUES (10, N'tereza quezada', N'operador3')
SET IDENTITY_INSERT [dbo].[empleados] OFF
SET IDENTITY_INSERT [dbo].[supervisor] ON 

INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (1, N'1', N'8092315485')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (2, N'1.3', N'0844523582')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (3, N'4', N'8495247568')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (4, N'15', N'8095368547')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (5, N'23', N'8292563632')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (6, N'5', N'8092536525')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (7, N'8', N'80921532535')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (8, N'1.5', N'8492542121')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (9, N'8.6', N'8492362020')
INSERT [dbo].[supervisor] ([supervisor], [tiempoenlacompañia], [telefono]) VALUES (10, N'7', N'8492542525')
SET IDENTITY_INSERT [dbo].[supervisor] OFF
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/05/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/12/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'3/03/2018', N'15')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'18/09/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'15/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'20/02/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/12/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'23/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'2/12/2018', N'18')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/10/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/05/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/12/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'3/03/2018', N'15')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/05/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/12/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'3/03/2018', N'15')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'18/09/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'15/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'20/02/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/12/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'23/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'2/12/2018', N'18')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/10/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/05/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/12/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'3/03/2018', N'15')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'18/09/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'15/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'20/02/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/12/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'23/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'2/12/2018', N'18')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/10/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'18/09/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'15/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'20/02/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/12/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'23/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'2/12/2018', N'18')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/10/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/05/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/12/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'3/03/2018', N'15')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'18/09/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'15/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'20/02/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/12/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'23/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'2/12/2018', N'18')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/10/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/05/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/12/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'3/03/2018', N'15')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'18/09/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'15/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'20/02/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/12/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'23/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'2/12/2018', N'18')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/10/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/05/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/12/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'3/03/2018', N'15')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'18/09/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'15/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'20/02/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/12/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'23/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'2/12/2018', N'18')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/10/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/05/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'1/12/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'3/03/2018', N'15')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'18/09/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'15/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'20/02/2018', N'20')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/12/2018', N'14')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'23/05/2018', N'16')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'2/12/2018', N'18')
INSERT [dbo].[Table_1] ([iniciovacaciones], [diasvacaciones]) VALUES (N'05/10/2018', N'20')
ALTER TABLE [dbo].[supervisor]  WITH CHECK ADD  CONSTRAINT [FK_supervisor_empleados] FOREIGN KEY([supervisor])
REFERENCES [dbo].[empleados] ([IDempleado])
GO
ALTER TABLE [dbo].[supervisor] CHECK CONSTRAINT [FK_supervisor_empleados]
GO
USE [master]
GO
ALTER DATABASE [empleadosBR] SET  READ_WRITE 
GO
