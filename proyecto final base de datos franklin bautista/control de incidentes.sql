USE [master]
GO
/******franklin bautista ceballos matricula 16-miin-1-132 seccion 0541******/
CREATE DATABASE [control de incidentes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'control de incidentes', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\control de incidentes.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'control de incidentes_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\control de incidentes_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [control de incidentes] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [control de incidentes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [control de incidentes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [control de incidentes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [control de incidentes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [control de incidentes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [control de incidentes] SET ARITHABORT OFF 
GO
ALTER DATABASE [control de incidentes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [control de incidentes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [control de incidentes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [control de incidentes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [control de incidentes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [control de incidentes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [control de incidentes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [control de incidentes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [control de incidentes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [control de incidentes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [control de incidentes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [control de incidentes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [control de incidentes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [control de incidentes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [control de incidentes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [control de incidentes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [control de incidentes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [control de incidentes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [control de incidentes] SET  MULTI_USER 
GO
ALTER DATABASE [control de incidentes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [control de incidentes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [control de incidentes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [control de incidentes] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [control de incidentes]
GO
/****** Object:  Table [dbo].[incidente]    Script Date: 12/3/2018 8:25:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incidente](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[incidente] [nvarchar](50) NULL,
	[tipodeincidente] [nvarchar](50) NULL,
	[fecha] [nvarchar](50) NULL,
 CONSTRAINT [PK_incidente_1] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[incidenteocurrido]    Script Date: 12/3/2018 8:25:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incidenteocurrido](
	[codigoID] [int] IDENTITY(1,1) NOT NULL,
	[incidente] [int] NULL,
	[Nombre] [int] NULL,
	[linea] [int] NULL,
 CONSTRAINT [PK_incidenteocurrido] PRIMARY KEY CLUSTERED 
(
	[codigoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[linea]    Script Date: 12/3/2018 8:25:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[linea](
	[codigoID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[linea] [nvarchar](50) NULL,
 CONSTRAINT [PK_linea] PRIMARY KEY CLUSTERED 
(
	[codigoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nombres]    Script Date: 12/3/2018 8:25:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nombres](
	[codigoID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[supervisor] [nvarchar](50) NULL,
 CONSTRAINT [PK_nombres] PRIMARY KEY CLUSTERED 
(
	[codigoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[incidente] ON 

INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (1, N'paso de bajo de transporte', N'grave', N'11/05/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (2, N'dejo piso mojado', N'grave', N'13/05/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (3, N'uso de equipos sin autorizacion', N'muy grave', N'02/06/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (4, N'no uso de lentes ', N'grave', N'05/06/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (5, N'caminar en area no autorizada', N'muy grave', N'17/06/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (6, N'uso de telefono', N'grave', N'20/06/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (7, N'camino fuera del paso peatoal', N'muy grave', N'27/06/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (8, N'manejo de productos quimicos', N'muy grave', N'02/07/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (9, N'no uso bloqueo de maniobra', N'muy grave', N'08/07/2017')
INSERT [dbo].[incidente] ([codigo], [incidente], [tipodeincidente], [fecha]) VALUES (10, N'uso incorrecto de equipos', N'muy grave', N'12/07/2017')
SET IDENTITY_INSERT [dbo].[incidente] OFF
SET IDENTITY_INSERT [dbo].[incidenteocurrido] ON 

INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (1, 1, 2, 5)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (2, 2, 3, 4)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (3, 3, 4, 6)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (4, 4, 1, 1)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (5, 5, 6, 3)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (6, 6, 5, 2)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (7, 7, 8, 7)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (8, 8, 7, 9)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (9, 9, 10, 8)
INSERT [dbo].[incidenteocurrido] ([codigoID], [incidente], [Nombre], [linea]) VALUES (10, 10, 9, 10)
SET IDENTITY_INSERT [dbo].[incidenteocurrido] OFF
SET IDENTITY_INSERT [dbo].[linea] ON 

INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (1, N'1', N'10')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (2, N'2', N'30')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (3, N'3', N'11')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (4, N'4', N'3')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (5, N'5', N'2')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (6, N'6', N'1')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (7, N'7', N'3')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (8, N'8', N'3')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (9, N'9', N'1')
INSERT [dbo].[linea] ([codigoID], [nombre], [linea]) VALUES (10, N'10', N'1')
SET IDENTITY_INSERT [dbo].[linea] OFF
SET IDENTITY_INSERT [dbo].[nombres] ON 

INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (1, N'juan adamez', N'jose feliz')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (2, N'geronimo parez', N'maurisio contreras')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (3, N'fortunato paredes', N'maurisio contreras')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (4, N'hector mojica', N'jose feliz')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (5, N'jose lopez', N'jose feliz')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (6, N'maria heredia', N'maria ovalle')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (7, N'frank mendoza', N'maurisio contreras')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (8, N'esthefany dias', N'maria ovalle')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (9, N'carla lopez', N'maurisio contreras')
INSERT [dbo].[nombres] ([codigoID], [nombre], [supervisor]) VALUES (10, N'ramon urvaez', N'maria ovalle')
SET IDENTITY_INSERT [dbo].[nombres] OFF
ALTER TABLE [dbo].[incidente]  WITH CHECK ADD  CONSTRAINT [FK_incidente_nombres] FOREIGN KEY([codigo])
REFERENCES [dbo].[nombres] ([codigoID])
GO
ALTER TABLE [dbo].[incidente] CHECK CONSTRAINT [FK_incidente_nombres]
GO
ALTER TABLE [dbo].[incidenteocurrido]  WITH CHECK ADD  CONSTRAINT [FK_incidenteocurrido_incidente] FOREIGN KEY([incidente])
REFERENCES [dbo].[incidente] ([codigo])
GO
ALTER TABLE [dbo].[incidenteocurrido] CHECK CONSTRAINT [FK_incidenteocurrido_incidente]
GO
ALTER TABLE [dbo].[incidenteocurrido]  WITH CHECK ADD  CONSTRAINT [FK_incidenteocurrido_incidenteocurrido] FOREIGN KEY([codigoID])
REFERENCES [dbo].[incidenteocurrido] ([codigoID])
GO
ALTER TABLE [dbo].[incidenteocurrido] CHECK CONSTRAINT [FK_incidenteocurrido_incidenteocurrido]
GO
ALTER TABLE [dbo].[incidenteocurrido]  WITH CHECK ADD  CONSTRAINT [FK_incidenteocurrido_linea] FOREIGN KEY([Nombre])
REFERENCES [dbo].[nombres] ([codigoID])
GO
ALTER TABLE [dbo].[incidenteocurrido] CHECK CONSTRAINT [FK_incidenteocurrido_linea]
GO
ALTER TABLE [dbo].[incidenteocurrido]  WITH CHECK ADD  CONSTRAINT [FK_incidenteocurrido_nombres] FOREIGN KEY([Nombre])
REFERENCES [dbo].[nombres] ([codigoID])
GO
ALTER TABLE [dbo].[incidenteocurrido] CHECK CONSTRAINT [FK_incidenteocurrido_nombres]
GO
ALTER TABLE [dbo].[linea]  WITH CHECK ADD  CONSTRAINT [FK_linea_incidente] FOREIGN KEY([codigoID])
REFERENCES [dbo].[incidente] ([codigo])
GO
ALTER TABLE [dbo].[linea] CHECK CONSTRAINT [FK_linea_incidente]
GO
USE [master]
GO
ALTER DATABASE [control de incidentes] SET  READ_WRITE 
GO
