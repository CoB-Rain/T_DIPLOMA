USE [DB_RestauranteCH]
GO
/****** Objeto: Table [dbo].[DetalleOrdenCompra] Fecha de script: 26/9/2026 22:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleOrdenCompra](
	[IdDetalleOC] [int] IDENTITY(1,1) NOT NULL,
	[IdOrdenCompra] [int] NOT NULL,
	[IdInsumo] [int] NOT NULL,
	[CantidadSolicitada] [decimal](18, 2) NOT NULL,
	[PrecioPactado] [decimal](18, 2) NOT NULL,
	[Subtotal] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[DetalleRemito] Fecha de script: 26/9/2026 22:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleRemito](
	[IdDetalleRemito] [int] IDENTITY(1,1) NOT NULL,
	[IdRemito] [int] NOT NULL,
	[IdInsumo] [int] NOT NULL,
	[CantidadRecepcionada] [decimal](18, 2) NOT NULL,
	[NumeroLote] [varchar](50) NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[EstadoBromatologico] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleRemito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[DetalleSolicitud] Fecha de script: 26/9/2026 22:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleSolicitud](
	[IdDetalleSol] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitud] [int] NOT NULL,
	[IdInsumo] [int] NOT NULL,
	[CantidadSolicitada] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleSol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[Insumo] Fecha de script: 26/9/2026 22:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insumo](
	[IdInsumo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[UnidadMedida] [varchar](20) NOT NULL,
	[StockActual] [decimal](18, 2) NOT NULL,
	[StockSeguridad] [decimal](18, 2) NOT NULL,
	[CostoPromedioUnitario] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[OrdenCompra] Fecha de script: 26/9/2026 22:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenCompra](
	[IdOrdenCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitud] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[FechaEmision] [datetime] NOT NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[Proveedor] Fecha de script: 26/9/2026 22:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [varchar](150) NOT NULL,
	[CUIT] [varchar](20) NOT NULL,
	[CondicionesPago] [varchar](100) NOT NULL,
	[TiempoEntregaEstimado] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[Remito] Fecha de script: 26/9/2026 22:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remito](
	[IdRemito] [int] IDENTITY(1,1) NOT NULL,
	[IdOrdenCompra] [int] NOT NULL,
	[NumeroRemitoProveedor] [varchar](50) NOT NULL,
	[FechaRecepcion] [datetime] NOT NULL,
	[EstadoAceptacion] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRemito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Objeto: Table [dbo].[SolicitudReabastecimiento] Fecha de script: 26/9/2026 22:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudReabastecimiento](
	[IdSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[FechaEmision] [datetime] NOT NULL,
	[NivelUrgencia] [varchar](20) NOT NULL,
	[Estado] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Objeto: Index [UQ__Proveedo__F46C15988C2C8A7E] Fecha de script: 26/9/2026 22:33:59 ******/
ALTER TABLE [dbo].[Proveedor] ADD UNIQUE NONCLUSTERED 
(
	[CUIT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Insumo] ADD  DEFAULT ((0)) FOR [StockActual]
GO
ALTER TABLE [dbo].[Insumo] ADD  DEFAULT ((0)) FOR [StockSeguridad]
GO
ALTER TABLE [dbo].[Insumo] ADD  DEFAULT ((0)) FOR [CostoPromedioUnitario]
GO
ALTER TABLE [dbo].[Proveedor] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[DetalleOrdenCompra]  WITH CHECK ADD FOREIGN KEY([IdInsumo])
REFERENCES [dbo].[Insumo] ([IdInsumo])
GO
ALTER TABLE [dbo].[DetalleOrdenCompra]  WITH CHECK ADD FOREIGN KEY([IdOrdenCompra])
REFERENCES [dbo].[OrdenCompra] ([IdOrdenCompra])
GO
ALTER TABLE [dbo].[DetalleRemito]  WITH CHECK ADD FOREIGN KEY([IdInsumo])
REFERENCES [dbo].[Insumo] ([IdInsumo])
GO
ALTER TABLE [dbo].[DetalleRemito]  WITH CHECK ADD FOREIGN KEY([IdRemito])
REFERENCES [dbo].[Remito] ([IdRemito])
GO
ALTER TABLE [dbo].[DetalleSolicitud]  WITH CHECK ADD FOREIGN KEY([IdInsumo])
REFERENCES [dbo].[Insumo] ([IdInsumo])
GO
ALTER TABLE [dbo].[DetalleSolicitud]  WITH CHECK ADD FOREIGN KEY([IdSolicitud])
REFERENCES [dbo].[SolicitudReabastecimiento] ([IdSolicitud])
GO
ALTER TABLE [dbo].[OrdenCompra]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[OrdenCompra]  WITH CHECK ADD FOREIGN KEY([IdSolicitud])
REFERENCES [dbo].[SolicitudReabastecimiento] ([IdSolicitud])
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD FOREIGN KEY([IdOrdenCompra])
REFERENCES [dbo].[OrdenCompra] ([IdOrdenCompra])
GO
USE [master]
GO
ALTER DATABASE [DB_RestauranteCH] SET  READ_WRITE 
GO
