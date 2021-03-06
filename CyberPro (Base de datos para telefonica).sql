USE [master]
GO
/****** Base de datos para telefonica creada por ******/
/******Edwin Luis Cerda		20-SIIT-1-023	Seccion: 0541 ******/
CREATE DATABASE [CyberproDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CLIENTESB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CLIENTESB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CLIENTESB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CLIENTESB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CyberproDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CyberproDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CyberproDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CyberproDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CyberproDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CyberproDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CyberproDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CyberproDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CyberproDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CyberproDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CyberproDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CyberproDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CyberproDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CyberproDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CyberproDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CyberproDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CyberproDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CyberproDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CyberproDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CyberproDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CyberproDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CyberproDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CyberproDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CyberproDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CyberproDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CyberproDB] SET  MULTI_USER 
GO
ALTER DATABASE [CyberproDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CyberproDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CyberproDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CyberproDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CyberproDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CyberproDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CyberproDB] SET QUERY_STORE = OFF
GO
USE [CyberproDB]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 8/4/2022 5:24:04 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cliente_Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
	[Edad] [varchar](3) NULL,
	[Numero_De_Cedula] [varchar](11) NULL,
	[Numero_De_Telefono] [decimal](11, 0) NULL,
	[Direccion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cliente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contratos_De_Tv_casa]    Script Date: 8/4/2022 5:24:04 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos_De_Tv_casa](
	[Numero_De_contrato] [int] IDENTITY(1000,4) NOT NULL,
	[Tipo_De_Servicio] [varchar](8) NOT NULL,
	[Cuota_Mensual_A_Pagar] [decimal](11, 0) NULL,
	[Cliente_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Numero_De_contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 8/4/2022 5:24:04 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Empleado_Id] [int] IDENTITY(59649,566) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Apellidos] [varchar](50) NULL,
	[Edad] [varchar](3) NULL,
	[Sexo] [varchar](1) NULL,
	[Numero_De_Cedula] [varchar](13) NULL,
	[Numero_De_Telefono] [int] NULL,
	[Direccion] [varchar](200) NULL,
	[FechIntegragracion] [date] NULL,
	[Seguro] [varchar](50) NULL,
	[Numero_De_Afiliado_De_Seguro] [decimal](14, 0) NULL,
	[Salario] [decimal](11, 0) NULL,
	[Nomina] [varchar](30) NULL,
	[SucursalId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleado_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lotes_Recibidos_en_Sucursales]    Script Date: 8/4/2022 5:24:04 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lotes_Recibidos_en_Sucursales](
	[LoteId] [int] IDENTITY(20,60) NOT NULL,
	[Cantidad_de_Dispositivos] [int] NULL,
	[Sucursal] [varchar](60) NULL,
	[Sucursal_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 8/4/2022 5:24:04 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[SucursalId] [int] IDENTITY(366,38) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](200) NOT NULL,
	[Numero_Empleados] [decimal](6, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SucursalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (1, N'Alberto', N'Suarez Martinez', N'29', N'4022654491', CAST(8096489521 AS Decimal(11, 0)), N'AV,vega real #336')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (2, N'Juan', N'De Los Santos Mejia', N'48', N'0012569841', CAST(8096554814 AS Decimal(11, 0)), N'AV. Tiradentes  F #8B')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (3, N'Ana', N'Morel Castillo', N'19', N'4024664891', CAST(8096215478 AS Decimal(11, 0)), N'Calle Imbert Barrera #45')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (4, N'Leydy', N'Castillo Vazquez', N'32', N'0015684782', CAST(8092246578 AS Decimal(11, 0)), N'AV. Maximo Gomez #144')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (5, N'Eduard', N'Medina Santiago', N'21', N'4025674841', CAST(8096175584 AS Decimal(11, 0)), N'Ensache La Fe calle 4 #56')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (7, N'Emiliana', N'Rodriguez Bobier', N'45', N'4025645841', CAST(8095481847 AS Decimal(11, 0)), N'Roberto Pastorisa ')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (8, N'Juana', N'Sanchez Guerrero', N'35', N'0015846942', CAST(8296554785 AS Decimal(11, 0)), N'AV. Tiradentes #59 Apt 52')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (9, N'Emil', N'De Aza Gutierres', N'18', N'4025648791', CAST(8496548879 AS Decimal(11, 0)), N'AV. vega real #333')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (10, N'Ayllin', N'Sierra Lara', N'22', N'4025896281', CAST(8295334685 AS Decimal(11, 0)), N'Calle Santiago,#8 ')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (11, N'Carlos', N'Pacheco Jose', N'19', N'0015894752', CAST(8495667891 AS Decimal(11, 0)), N'Calle Dionisio Mejia #255')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (12, N'Mateo', N'Vazquez Cabral', N'58', N'0014895441', CAST(8096286548 AS Decimal(11, 0)), N'AV.Maximo Gomez #78')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (13, N'Francisca', N'Almanzar Remigio', N'43', N'4025875482', CAST(8294682563 AS Decimal(11, 0)), N'C. Jardines Encantados #68')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (14, N'Emiliano ', N'Morel Acosta', N'58', N'00248965751', CAST(8095678548 AS Decimal(11, 0)), N'Calle Amiama Tio, Los Rios #257')
INSERT [dbo].[Clientes] ([Cliente_Id], [Nombre], [Apellido], [Edad], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion]) VALUES (15, N'Slide', N'Santiago Medina', N'27', N'40258947652', CAST(8497856815 AS Decimal(11, 0)), N'AV. 27 de Febrero #136')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Contratos_De_Tv_casa] ON 

INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1000, N'Plus', CAST(2589 AS Decimal(11, 0)), 1)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1004, N'Simple', CAST(1470 AS Decimal(11, 0)), 2)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1020, N'Mega', CAST(3999 AS Decimal(11, 0)), 3)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1024, N'Mega', CAST(3999 AS Decimal(11, 0)), 5)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1028, N'Simple', CAST(1470 AS Decimal(11, 0)), 7)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1032, N'Simple', CAST(1470 AS Decimal(11, 0)), 8)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1036, N'Plus', CAST(2589 AS Decimal(11, 0)), 10)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1040, N'Plus', CAST(2589 AS Decimal(11, 0)), 11)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1044, N'Mega', CAST(3999 AS Decimal(11, 0)), 12)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1048, N'Simple', CAST(1470 AS Decimal(11, 0)), 13)
INSERT [dbo].[Contratos_De_Tv_casa] ([Numero_De_contrato], [Tipo_De_Servicio], [Cuota_Mensual_A_Pagar], [Cliente_Id]) VALUES (1052, N'Mega', CAST(3999 AS Decimal(11, 0)), 15)
SET IDENTITY_INSERT [dbo].[Contratos_De_Tv_casa] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (59649, N'Yessica', N'Rivera de Jesus', N'22', N'F', N'40255896851', 809647586, N'Av,Tiradentes Calle b #8', CAST(N'2015-09-20' AS Date), N'Senasa Contributivo', CAST(1478956247894 AS Decimal(14, 0)), CAST(32345 AS Decimal(11, 0)), N'Mensual', 442)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (60215, N'Manuel', N'Garcia Marquez', N'28', N'M', N'00154964231', 809675218, N'Av,vega real #250', CAST(N'2016-07-08' AS Date), N'Senasa Contributivo', CAST(9865756214345 AS Decimal(14, 0)), CAST(25850 AS Decimal(11, 0)), N'Mensual', 784)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (63045, N'Ivan', N'Apollos Alcantara', N'34', N'M', N'40258494462', 849658247, N'Calle la Agustina Casa #36', CAST(N'2012-05-08' AS Date), N'Senasa Contributivo', CAST(5684932476894 AS Decimal(14, 0)), CAST(25580 AS Decimal(11, 0)), N'Mensual', 366)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (63611, N'Emiliana', N'Mejia Alvarado', N'27', N'F', N'00184567456', 829456746, N'Av, Lope de vega #26', CAST(N'2018-07-09' AS Date), N'Senasa Contributivo', CAST(4568541256846 AS Decimal(14, 0)), CAST(20545 AS Decimal(11, 0)), N'Mensual', 366)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (65309, N'Juana', N'Cerda Mesa', N'35', N'F', N'00158947654', 809556475, N'Jardines del Norte, Calle Los Cerezos ', CAST(N'2010-09-15' AS Date), N'Senasa Contributivo', CAST(5648222384551 AS Decimal(14, 0)), CAST(30550 AS Decimal(11, 0)), N'Mensual', 442)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (66441, N'Edwin', N'Santiago De La Cruz', N'40', N'M', N'00154685485', 829465284, N'Av, Vega Real #336', CAST(N'2018-09-19' AS Date), N'Senasa Contributivo', CAST(1926271814168 AS Decimal(14, 0)), CAST(25000 AS Decimal(11, 0)), N'Mensual', 822)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (67573, N'Kilsy', N'Martinez Rosa', N'25', N'F', N'40288974642', 849567215, N'Ensanche La Fe, Calle F #25', CAST(N'2016-01-02' AS Date), N'Senasa Contributivo', CAST(5698763247725 AS Decimal(14, 0)), CAST(20550 AS Decimal(11, 0)), N'Mensual', 442)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (68139, N'Elias', N'Serulle Acosta', N'32', N'M', N'00158457451', 809645527, N'Los Rios Calle 9 Casa 32', CAST(N'2015-05-07' AS Date), N'Senasa Contributivo', CAST(6458324789178 AS Decimal(14, 0)), CAST(19568 AS Decimal(11, 0)), N'Mensual', 480)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (69271, N'Raquel ', N'Guzman Gomez', N'23', N'F', N'00256847456', 809563324, N'Av, Tiradentes 45', CAST(N'2019-10-26' AS Date), N'Senasa Contributivo', CAST(5645444593324 AS Decimal(14, 0)), CAST(18550 AS Decimal(11, 0)), N'Mensual', 822)
INSERT [dbo].[Empleados] ([Empleado_Id], [Nombre], [Apellidos], [Edad], [Sexo], [Numero_De_Cedula], [Numero_De_Telefono], [Direccion], [FechIntegragracion], [Seguro], [Numero_De_Afiliado_De_Seguro], [Salario], [Nomina], [SucursalId]) VALUES (70969, N'Jose ', N'Luis Jose', N'46', N'M', N'00156847551', 849617140, N'Naco, Calle B #5', CAST(N'2010-09-19' AS Date), N'Senasa Contributivo', CAST(1419171827166 AS Decimal(14, 0)), CAST(35000 AS Decimal(11, 0)), N'Mensual', 366)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ON 

INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (20, 154, N'Claro agora mall', 366)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (80, 586, N'Claro Centro de ventas', 822)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (140, 60, N'Claro', 594)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (200, 100, N'Claro', 746)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (260, 200, N'Claro Galeria 360', 442)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (320, 321, N'Claro Centro de ventas', 480)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (380, 70, N'Claro', 670)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (440, 60, N'Claro', 784)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (500, 164, N'Claro', 708)
INSERT [dbo].[Lotes_Recibidos_en_Sucursales] ([LoteId], [Cantidad_de_Dispositivos], [Sucursal], [Sucursal_Id]) VALUES (560, 65, N'Sucursal Claro', 404)
SET IDENTITY_INSERT [dbo].[Lotes_Recibidos_en_Sucursales] OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursales] ON 

INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (366, N'Claro agora mall', N'Av. John F Kennedy esquina Av. Abraham lincoln, seralles', CAST(14 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (404, N'Sucursal Claro ', N'Av, Tiradentes 22', CAST(3 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (442, N'Claro Galeria 360', N'Galeria 36 Av, Johm F Kennedy ', CAST(6 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (480, N'Claro Cento de ventas', N'Av, Winston Churchil #28 Plaza las americas santo domingo', CAST(5 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (594, N'Claro ', N'Doctores Mallen 219', CAST(8 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (670, N'Claro', N'Av, Jose Contreras 40', CAST(2 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (708, N'Claro ', N'Av. 27 de Febrero', CAST(9 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (746, N'Claro', N'Av,Dr. Fernando Alberto Defillo', CAST(4 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (784, N'Claro ', N'Av, Republica De Colombia', CAST(2 AS Decimal(6, 0)))
INSERT [dbo].[Sucursales] ([SucursalId], [Nombre], [Direccion], [Numero_Empleados]) VALUES (822, N'Claro Centro de Ventas', N'Av, Nuñes de Caceres esquina Av, Romulo Betancourt', CAST(10 AS Decimal(6, 0)))
SET IDENTITY_INSERT [dbo].[Sucursales] OFF
GO
ALTER TABLE [dbo].[Contratos_De_Tv_casa]  WITH CHECK ADD FOREIGN KEY([Cliente_Id])
REFERENCES [dbo].[Clientes] ([Cliente_Id])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([SucursalId])
GO
ALTER TABLE [dbo].[Lotes_Recibidos_en_Sucursales]  WITH CHECK ADD FOREIGN KEY([Sucursal_Id])
REFERENCES [dbo].[Sucursales] ([SucursalId])
GO
USE [master]
GO
ALTER DATABASE [CyberproDB] SET  READ_WRITE 
GO
