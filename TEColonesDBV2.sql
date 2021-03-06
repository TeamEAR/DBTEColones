USE [TEColonesV2]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[IdAdmi] [int] IDENTITY(1,1) NOT NULL,
	[IdInformacionBasica] [int] NOT NULL,
	[IdDepartamento] [int] NOT NULL,
 CONSTRAINT [PK_DatoAdminastrador] PRIMARY KEY CLUSTERED 
(
	[IdAdmi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraBeneficio]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraBeneficio](
	[IdBitacoraBeneficio] [int] IDENTITY(1,1) NOT NULL,
	[Operacion] [varchar](30) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[BeneficioModificado] [varchar](50) NULL,
	[DatoViejo] [varchar](50) NULL,
	[ColumnaModificada] [varchar](50) NULL,
	[FechaModificacion] [date] NOT NULL,
	[Tabla] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BitacoraBeneficio] PRIMARY KEY CLUSTERED 
(
	[IdBitacoraBeneficio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraMaterial]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraMaterial](
	[IdBitacoraMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Operacion] [varchar](30) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[MaterialModificado] [varchar](50) NULL,
	[DatoViejo] [varchar](50) NULL,
	[ColumnaModificada] [varchar](50) NULL,
	[FechaModificacion] [date] NOT NULL,
	[Tabla] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BitacoraMaterial] PRIMARY KEY CLUSTERED 
(
	[IdBitacoraMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraPromocion]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraPromocion](
	[IdBitacoraPromocion] [int] IDENTITY(1,1) NOT NULL,
	[Operacion] [varchar](30) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[PromocionModificada] [varchar](50) NULL,
	[DatoViejo] [varchar](50) NULL,
	[ColumnaModificada] [varchar](50) NULL,
	[FechaModificacion] [date] NOT NULL,
	[Tabla] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BitacoraPromocion] PRIMARY KEY CLUSTERED 
(
	[IdBitacoraPromocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CambioBeneficioEstudiante]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CambioBeneficioEstudiante](
	[IdCambioBeneficioEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoBeneficio] [int] NOT NULL,
	[IdEstudiante] [int] NOT NULL,
	[TecolonesCambio] [float] NOT NULL,
	[ColonesAdquiridos] [float] NOT NULL,
	[FechaCambio] [date] NOT NULL,
 CONSTRAINT [PK_CambioBeneficioEstudiante] PRIMARY KEY CLUSTERED 
(
	[IdCambioBeneficioEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CambioMaterialEstudiante]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CambioMaterialEstudiante](
	[IdCambioMaterialEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoMaterial] [int] NOT NULL,
	[IdEstudiante] [int] NOT NULL,
	[IdEncargadoCentroAcopio] [int] NOT NULL,
	[IdPromocion] [int] NULL,
	[FechaCambio] [date] NOT NULL,
	[PesoReciclaje] [float] NOT NULL,
	[TecolonesAdquiridos] [float] NOT NULL,
 CONSTRAINT [PK_CambioMaterialEstudiante] PRIMARY KEY CLUSTERED 
(
	[IdCambioMaterialEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentroAcopio]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentroAcopio](
	[IdCentroAcopio] [int] IDENTITY(1,1) NOT NULL,
	[Ubicacion] [varchar](30) NOT NULL,
	[IdSedeXTEC] [int] NOT NULL,
	[Identificador] [varchar](8) NOT NULL,
 CONSTRAINT [PK_CentroAcopio] PRIMARY KEY CLUSTERED 
(
	[IdCentroAcopio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[NombreDepartamento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_NombreDepartamento] UNIQUE NONCLUSTERED 
(
	[NombreDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EncargadoCentroAcopio]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EncargadoCentroAcopio](
	[IdEncargadoCentroAcopio] [int] IDENTITY(1,1) NOT NULL,
	[IdInformacionBasica] [int] NOT NULL,
	[IdCentroAcopio] [int] NOT NULL,
 CONSTRAINT [PK_EncargadoCentroAcopio] PRIMARY KEY CLUSTERED 
(
	[IdEncargadoCentroAcopio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_CentroAcopio] UNIQUE NONCLUSTERED 
(
	[IdEncargadoCentroAcopio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_IdDatoAdmi] UNIQUE NONCLUSTERED 
(
	[IdEncargadoCentroAcopio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[IdEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[FechaIncorporacion] [date] NOT NULL,
	[Pasatiempo] [text] NOT NULL,
	[SobreMi] [text] NULL,
	[FotoPerfil] [image] NULL,
	[IdSedeXTEC] [int] NOT NULL,
	[IdInformacionBasica] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioEstudiante] PRIMARY KEY CLUSTERED 
(
	[IdEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_Carnet] UNIQUE NONCLUSTERED 
(
	[IdEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformacionBasica]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformacionBasica](
	[IdInformacionBasica] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](25) NOT NULL,
	[SegundoApellido] [varchar](25) NOT NULL,
	[Identificacion] [varchar](10) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[IdTipoRol] [int] NOT NULL,
	[EstadoCuenta] [bit] NOT NULL,
 CONSTRAINT [PK_InformacionBasica] PRIMARY KEY CLUSTERED 
(
	[IdInformacionBasica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_Identificacion] UNIQUE NONCLUSTERED 
(
	[Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformacionBasicaContacto]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformacionBasicaContacto](
	[IdContacto] [int] IDENTITY(1,1) NOT NULL,
	[IdInformacionBasica] [int] NOT NULL,
	[IdTipoContacto] [int] NOT NULL,
	[Contacto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstudianteContacto] PRIMARY KEY CLUSTERED 
(
	[IdContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_Contacto] UNIQUE NONCLUSTERED 
(
	[Contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promocion]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promocion](
	[IdPromocion] [int] IDENTITY(1,1) NOT NULL,
	[NombrePromocion] [varchar](50) NOT NULL,
	[DescripcionPromocion] [varchar](150) NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
	[EstadoPromocion] [bit] NOT NULL,
 CONSTRAINT [PK_Promocion] PRIMARY KEY CLUSTERED 
(
	[IdPromocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Promocion] UNIQUE NONCLUSTERED 
(
	[NombrePromocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SedeXTEC]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SedeXTEC](
	[IdSedeXTEC] [int] IDENTITY(1,1) NOT NULL,
	[NombreSedeXTEC] [varchar](50) NOT NULL,
	[UbicacionSede] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SedeXTEC] PRIMARY KEY CLUSTERED 
(
	[IdSedeXTEC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoBeneficio]    Script Date: 23/11/2018 0:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoBeneficio](
	[IdTipoBeneficio] [int] IDENTITY(1,1) NOT NULL,
	[NombreBeneficio] [varchar](30) NOT NULL,
	[DescripcionBeneficio] [varchar](150) NOT NULL,
	[CantidadBaseTecolones] [float] NOT NULL,
	[EstadoBeneficio] [bit] NOT NULL,
 CONSTRAINT [PK_TipoBeneficio] PRIMARY KEY CLUSTERED 
(
	[IdTipoBeneficio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_NombreBeneficio] UNIQUE NONCLUSTERED 
(
	[IdTipoBeneficio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContacto]    Script Date: 23/11/2018 0:31:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContacto](
	[IdTipoContacto] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipoContacto] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TipoContacto] PRIMARY KEY CLUSTERED 
(
	[IdTipoContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_TipoContacto] UNIQUE NONCLUSTERED 
(
	[IdTipoContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMaterial]    Script Date: 23/11/2018 0:31:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMaterial](
	[IdTipoMaterial] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipoMaterial] [varchar](30) NOT NULL,
	[CaracteristicaMaterial] [varchar](150) NOT NULL,
	[PesoBaseMaterial] [float] NOT NULL,
	[EquivalenciaTecolones] [float] NOT NULL,
	[EstadoMaterial] [bit] NOT NULL,
 CONSTRAINT [PK_TipoMaterial] PRIMARY KEY CLUSTERED 
(
	[IdTipoMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_NombreTipoMaterial] UNIQUE NONCLUSTERED 
(
	[NombreTipoMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoRol]    Script Date: 23/11/2018 0:31:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRol](
	[IdTipoRol] [int] IDENTITY(1,1) NOT NULL,
	[NombreRol] [varchar](25) NOT NULL,
 CONSTRAINT [PK_TipoRol] PRIMARY KEY CLUSTERED 
(
	[IdTipoRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Unique_NombreRol] UNIQUE NONCLUSTERED 
(
	[NombreRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InformacionBasica] ADD  CONSTRAINT [DF_InformacionBasica_EstadoCuenta]  DEFAULT ((1)) FOR [EstadoCuenta]
GO
ALTER TABLE [dbo].[Promocion] ADD  CONSTRAINT [DF_Promocion_EstadoPromocion]  DEFAULT ((1)) FOR [EstadoPromocion]
GO
ALTER TABLE [dbo].[TipoBeneficio] ADD  CONSTRAINT [DF_TipoBeneficio_EstadoBeneficio]  DEFAULT ((1)) FOR [EstadoBeneficio]
GO
ALTER TABLE [dbo].[TipoMaterial] ADD  CONSTRAINT [DF_TipoMaterial_Estado]  DEFAULT ((1)) FOR [EstadoMaterial]
GO
ALTER TABLE [dbo].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK_DatoAdminastrador_Departamento] FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[Administrador] CHECK CONSTRAINT [FK_DatoAdminastrador_Departamento]
GO
ALTER TABLE [dbo].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK_DatoAdminastrador_InformacionBasica] FOREIGN KEY([IdInformacionBasica])
REFERENCES [dbo].[InformacionBasica] ([IdInformacionBasica])
GO
ALTER TABLE [dbo].[Administrador] CHECK CONSTRAINT [FK_DatoAdminastrador_InformacionBasica]
GO
ALTER TABLE [dbo].[CambioBeneficioEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_CambioBeneficioEstudiante_Estudiante] FOREIGN KEY([IdTipoBeneficio])
REFERENCES [dbo].[TipoBeneficio] ([IdTipoBeneficio])
GO
ALTER TABLE [dbo].[CambioBeneficioEstudiante] CHECK CONSTRAINT [FK_CambioBeneficioEstudiante_Estudiante]
GO
ALTER TABLE [dbo].[CambioBeneficioEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_CambioBeneficioEstudiante_Estudiante1] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[Estudiante] ([IdEstudiante])
GO
ALTER TABLE [dbo].[CambioBeneficioEstudiante] CHECK CONSTRAINT [FK_CambioBeneficioEstudiante_Estudiante1]
GO
ALTER TABLE [dbo].[CambioMaterialEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_CambioMaterialEstudiante_EncargadoCentroAcopio] FOREIGN KEY([IdEncargadoCentroAcopio])
REFERENCES [dbo].[EncargadoCentroAcopio] ([IdEncargadoCentroAcopio])
GO
ALTER TABLE [dbo].[CambioMaterialEstudiante] CHECK CONSTRAINT [FK_CambioMaterialEstudiante_EncargadoCentroAcopio]
GO
ALTER TABLE [dbo].[CambioMaterialEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_CambioMaterialEstudiante_Estudiante] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[Estudiante] ([IdEstudiante])
GO
ALTER TABLE [dbo].[CambioMaterialEstudiante] CHECK CONSTRAINT [FK_CambioMaterialEstudiante_Estudiante]
GO
ALTER TABLE [dbo].[CambioMaterialEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_CambioMaterialEstudiante_Promocion] FOREIGN KEY([IdPromocion])
REFERENCES [dbo].[Promocion] ([IdPromocion])
GO
ALTER TABLE [dbo].[CambioMaterialEstudiante] CHECK CONSTRAINT [FK_CambioMaterialEstudiante_Promocion]
GO
ALTER TABLE [dbo].[CambioMaterialEstudiante]  WITH CHECK ADD  CONSTRAINT [FK_CambioMaterialEstudiante_TipoMaterial] FOREIGN KEY([IdTipoMaterial])
REFERENCES [dbo].[TipoMaterial] ([IdTipoMaterial])
GO
ALTER TABLE [dbo].[CambioMaterialEstudiante] CHECK CONSTRAINT [FK_CambioMaterialEstudiante_TipoMaterial]
GO
ALTER TABLE [dbo].[CentroAcopio]  WITH CHECK ADD  CONSTRAINT [FK_CentroAcopio_SedeXTEC] FOREIGN KEY([IdSedeXTEC])
REFERENCES [dbo].[SedeXTEC] ([IdSedeXTEC])
GO
ALTER TABLE [dbo].[CentroAcopio] CHECK CONSTRAINT [FK_CentroAcopio_SedeXTEC]
GO
ALTER TABLE [dbo].[EncargadoCentroAcopio]  WITH CHECK ADD  CONSTRAINT [FK_EncargadoCentroAcopio_CentroAcopio] FOREIGN KEY([IdCentroAcopio])
REFERENCES [dbo].[CentroAcopio] ([IdCentroAcopio])
GO
ALTER TABLE [dbo].[EncargadoCentroAcopio] CHECK CONSTRAINT [FK_EncargadoCentroAcopio_CentroAcopio]
GO
ALTER TABLE [dbo].[EncargadoCentroAcopio]  WITH CHECK ADD  CONSTRAINT [FK_EncargadoCentroAcopio_InformacionBasica] FOREIGN KEY([IdInformacionBasica])
REFERENCES [dbo].[InformacionBasica] ([IdInformacionBasica])
GO
ALTER TABLE [dbo].[EncargadoCentroAcopio] CHECK CONSTRAINT [FK_EncargadoCentroAcopio_InformacionBasica]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_InformacionBasica] FOREIGN KEY([IdInformacionBasica])
REFERENCES [dbo].[InformacionBasica] ([IdInformacionBasica])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_InformacionBasica]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_SedeXTEC] FOREIGN KEY([IdSedeXTEC])
REFERENCES [dbo].[SedeXTEC] ([IdSedeXTEC])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_SedeXTEC]
GO
ALTER TABLE [dbo].[InformacionBasica]  WITH CHECK ADD  CONSTRAINT [FK_InformacionBasica_TipoRol] FOREIGN KEY([IdTipoRol])
REFERENCES [dbo].[TipoRol] ([IdTipoRol])
GO
ALTER TABLE [dbo].[InformacionBasica] CHECK CONSTRAINT [FK_InformacionBasica_TipoRol]
GO
ALTER TABLE [dbo].[InformacionBasicaContacto]  WITH CHECK ADD  CONSTRAINT [FK_InformacionBasicaContacto_InformacionBasica] FOREIGN KEY([IdInformacionBasica])
REFERENCES [dbo].[InformacionBasica] ([IdInformacionBasica])
GO
ALTER TABLE [dbo].[InformacionBasicaContacto] CHECK CONSTRAINT [FK_InformacionBasicaContacto_InformacionBasica]
GO
ALTER TABLE [dbo].[InformacionBasicaContacto]  WITH CHECK ADD  CONSTRAINT [FK_InformacionBasicaContacto_TipoContacto] FOREIGN KEY([IdTipoContacto])
REFERENCES [dbo].[TipoContacto] ([IdTipoContacto])
GO
ALTER TABLE [dbo].[InformacionBasicaContacto] CHECK CONSTRAINT [FK_InformacionBasicaContacto_TipoContacto]
GO
