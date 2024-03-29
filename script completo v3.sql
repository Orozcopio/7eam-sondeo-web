USE [master]
GO
/****** Object:  Database [Sondeo-web]    Script Date: 22/11/2019 01:21:28 ******/
CREATE DATABASE [Sondeo-web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sondeo-web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Sondeo-web.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sondeo-web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Sondeo-web_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sondeo-web] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sondeo-web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sondeo-web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sondeo-web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sondeo-web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sondeo-web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sondeo-web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sondeo-web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sondeo-web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sondeo-web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sondeo-web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sondeo-web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sondeo-web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sondeo-web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sondeo-web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sondeo-web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sondeo-web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sondeo-web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sondeo-web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sondeo-web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sondeo-web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sondeo-web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sondeo-web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sondeo-web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sondeo-web] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sondeo-web] SET  MULTI_USER 
GO
ALTER DATABASE [Sondeo-web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sondeo-web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sondeo-web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sondeo-web] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Sondeo-web] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Sondeo-web]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [varchar](10) NOT NULL,
	[categoria] [varchar](25) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [pk_categoria] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[documento] [varchar](10) NOT NULL,
	[nombres] [varchar](100) NOT NULL,
	[apellidos] [varchar](100) NOT NULL,
 CONSTRAINT [pk_cliente] PRIMARY KEY CLUSTERED 
(
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamento](
	[id_depto] [int] NOT NULL,
	[departamento] [varchar](25) NOT NULL,
 CONSTRAINT [pk_departamento] PRIMARY KEY CLUSTERED 
(
	[id_depto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[marca]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[marca](
	[id_marca] [varchar](10) NOT NULL,
	[marca] [varchar](50) NOT NULL,
 CONSTRAINT [pk_marca] PRIMARY KEY CLUSTERED 
(
	[id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[medida]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[medida](
	[unidad_medida] [varchar](5) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [pk_medida] PRIMARY KEY CLUSTERED 
(
	[unidad_medida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[municipio](
	[id_municipio] [varchar](5) NOT NULL,
	[id_depto] [int] NULL,
	[municipio] [varchar](50) NOT NULL,
	[area] [varchar](50) NOT NULL,
	[localidad] [varchar](50) NOT NULL,
 CONSTRAINT [pk_municipio] PRIMARY KEY CLUSTERED 
(
	[id_municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[producto]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [varchar](25) NOT NULL,
	[id_categoria] [varchar](10) NULL,
	[unidad_medida] [varchar](5) NULL,
	[id_marca] [varchar](10) NULL,
	[nombre] [varchar](50) NOT NULL,
	[presentacion] [varchar](50) NOT NULL,
	[precio_consulta] [numeric](8, 2) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
 CONSTRAINT [pk_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reporte]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reporte](
	[id_reporte] [varchar](25) NOT NULL,
	[id_sondeo] [varchar](50) NULL,
	[id_usuario] [varchar](50) NULL,
	[fecha_reporte] [datetime] NOT NULL,
 CONSTRAINT [pk_reporte] PRIMARY KEY CLUSTERED 
(
	[id_reporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sondeo]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sondeo](
	[id_sondeo] [varchar](50) NOT NULL,
	[id_municipio] [varchar](5) NOT NULL,
	[id_producto] [varchar](25) NULL,
	[fecha] [datetime] NOT NULL,
	[local] [varchar](100) NOT NULL,
 CONSTRAINT [pk_sondeo] PRIMARY KEY CLUSTERED 
(
	[id_sondeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 22/11/2019 01:21:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [varchar](50) NOT NULL,
	[documento] [varchar](10) NULL,
	[password] [varchar](10) NOT NULL,
	[rol] [varchar](10) NOT NULL,
 CONSTRAINT [pk_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [pertenece_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [pertenece_fk] ON [dbo].[municipio]
(
	[id_depto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [mide_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [mide_fk] ON [dbo].[producto]
(
	[unidad_medida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [se_clasifica_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [se_clasifica_fk] ON [dbo].[producto]
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [tiene_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [tiene_fk] ON [dbo].[producto]
(
	[id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [genera_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [genera_fk] ON [dbo].[reporte]
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [genera2_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [genera2_fk] ON [dbo].[reporte]
(
	[id_sondeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [se_compone_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [se_compone_fk] ON [dbo].[sondeo]
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [se_realiza_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [se_realiza_fk] ON [dbo].[sondeo]
(
	[id_municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [es_fk]    Script Date: 22/11/2019 01:21:28 ******/
CREATE NONCLUSTERED INDEX [es_fk] ON [dbo].[usuario]
(
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD  CONSTRAINT [fk_municipi_pertenece_departam] FOREIGN KEY([id_depto])
REFERENCES [dbo].[departamento] ([id_depto])
GO
ALTER TABLE [dbo].[municipio] CHECK CONSTRAINT [fk_municipi_pertenece_departam]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [fk_producto_mide_medida] FOREIGN KEY([unidad_medida])
REFERENCES [dbo].[medida] ([unidad_medida])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [fk_producto_mide_medida]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [fk_producto_se_clasif_categori] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [fk_producto_se_clasif_categori]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [fk_producto_tiene_marca] FOREIGN KEY([id_marca])
REFERENCES [dbo].[marca] ([id_marca])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [fk_producto_tiene_marca]
GO
ALTER TABLE [dbo].[reporte]  WITH CHECK ADD  CONSTRAINT [fk_reporte_genera_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[reporte] CHECK CONSTRAINT [fk_reporte_genera_usuario]
GO
ALTER TABLE [dbo].[reporte]  WITH CHECK ADD  CONSTRAINT [fk_reporte_genera2_sondeo] FOREIGN KEY([id_sondeo])
REFERENCES [dbo].[sondeo] ([id_sondeo])
GO
ALTER TABLE [dbo].[reporte] CHECK CONSTRAINT [fk_reporte_genera2_sondeo]
GO
ALTER TABLE [dbo].[sondeo]  WITH CHECK ADD  CONSTRAINT [fk_sondeo_se_compon_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[sondeo] CHECK CONSTRAINT [fk_sondeo_se_compon_producto]
GO
ALTER TABLE [dbo].[sondeo]  WITH CHECK ADD  CONSTRAINT [fk_sondeo_se_realiz_municipi] FOREIGN KEY([id_municipio])
REFERENCES [dbo].[municipio] ([id_municipio])
GO
ALTER TABLE [dbo].[sondeo] CHECK CONSTRAINT [fk_sondeo_se_realiz_municipi]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [fk_usuario_es_cliente] FOREIGN KEY([documento])
REFERENCES [dbo].[cliente] ([documento])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [fk_usuario_es_cliente]
GO
USE [master]
GO
ALTER DATABASE [Sondeo-web] SET  READ_WRITE 
GO
