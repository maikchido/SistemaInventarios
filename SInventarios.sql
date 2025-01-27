USE [master]
GO
/****** Object:  Database [SInventarios]    Script Date: 02/12/2019 07:45:03 p. m. ******/
CREATE DATABASE [SInventarios]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SInventarios', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SInventarios.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SInventarios_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SInventarios_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SInventarios] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SInventarios].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SInventarios] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SInventarios] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SInventarios] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SInventarios] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SInventarios] SET ARITHABORT OFF 
GO
ALTER DATABASE [SInventarios] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SInventarios] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SInventarios] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SInventarios] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SInventarios] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SInventarios] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SInventarios] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SInventarios] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SInventarios] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SInventarios] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SInventarios] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SInventarios] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SInventarios] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SInventarios] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SInventarios] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SInventarios] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SInventarios] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SInventarios] SET RECOVERY FULL 
GO
ALTER DATABASE [SInventarios] SET  MULTI_USER 
GO
ALTER DATABASE [SInventarios] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SInventarios] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SInventarios] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SInventarios] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SInventarios] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SInventarios', N'ON'
GO
ALTER DATABASE [SInventarios] SET QUERY_STORE = OFF
GO
USE [SInventarios]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 02/12/2019 07:45:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[IdArticulo] [int] IDENTITY(1,1) NOT NULL,
	[NombreArt] [varchar](50) NULL,
	[CantidadArt] [int] NULL,
	[DescripcionArt] [varchar](200) NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesUsuarios]    Script Date: 02/12/2019 07:45:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesUsuarios](
	[IdRol] [varchar](1) NOT NULL,
	[NombreRol] [varchar](25) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 02/12/2019 07:45:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUser] [varchar](20) NOT NULL,
	[Pass] [varchar](25) NULL,
	[Nombre] [varchar](75) NULL,
	[IdRol] [varchar](1) NULL,
	[Palabra] [varchar](30) NULL,
	[Sesion] [bit] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON 

INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (1, N'Papel', 46, N'Paquete de 100 hojas')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (2, N'Lapiz', 50, N'Paquetes de 20 c/u')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (3, N'Goma', 11, N'Paquetes de 2 c/u')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (4, N'Sacapuntas', 30, N'Individuales')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (5, N'Colores', 10, N'Mapita, 12 colores cada paquete')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (7, N'Mapamundi', 2, N'12 cm, blanco y negro, sin nombres')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (8, N'Marcatextos', 8, N'Color amarillo')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (9, N'Plumon', 5, N'Sharpie, negro')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (10, N'Esferas unicel', 5, N'13 cm de diametro')
INSERT [dbo].[Articulos] ([IdArticulo], [NombreArt], [CantidadArt], [DescripcionArt]) VALUES (11, N'Acuarelas', 3, N'6 colores')
SET IDENTITY_INSERT [dbo].[Articulos] OFF
INSERT [dbo].[RolesUsuarios] ([IdRol], [NombreRol]) VALUES (N'A', N'Administrador')
INSERT [dbo].[RolesUsuarios] ([IdRol], [NombreRol]) VALUES (N'T', N'Trabajador')
INSERT [dbo].[Usuarios] ([IdUser], [Pass], [Nombre], [IdRol], [Palabra], [Sesion]) VALUES (N'2015131010', N'1010', N'Juan Arellano Cortes', N'T', N'HolaMundo', 0)
INSERT [dbo].[Usuarios] ([IdUser], [Pass], [Nombre], [IdRol], [Palabra], [Sesion]) VALUES (N'2015131114', N'VacaLoca42', N'Ángel Juárez Rojo', N'T', N'UPIICSA', 0)
INSERT [dbo].[Usuarios] ([IdUser], [Pass], [Nombre], [IdRol], [Palabra], [Sesion]) VALUES (N'2015131414', N'1414', N'Ramón Jiménez Méndez', N'T', N'Desarrollo', 0)
INSERT [dbo].[Usuarios] ([IdUser], [Pass], [Nombre], [IdRol], [Palabra], [Sesion]) VALUES (N'Admin', N'Admin', N'Miguel Ramírez Juárez', N'A', N'vacaloca', 0)
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Roles] FOREIGN KEY([IdRol])
REFERENCES [dbo].[RolesUsuarios] ([IdRol])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuario_Roles]
GO
USE [master]
GO
ALTER DATABASE [SInventarios] SET  READ_WRITE 
GO
