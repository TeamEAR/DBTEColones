-- =============================================
-- Descripcion:	<Insertar parametros en la tabla TipoMaterial>
-- Parametro de Entrada: <NombreMaterial, CaracteristicaMaterial, PesoBaseMaterial, EquivalenciaTEColones>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE NuevoTipoMaterial
	@NombreTipoMaterial varchar(30),
	@CaracteristicaMaterial varchar(150),
	@PesoBaseMaterial float,
	@EquivalenciaTEColones float

AS
BEGIN

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO TipoMaterial (NombreTipoMaterial, CaracteristicaMaterial, PesoBaseMaterial, EquivalenciaTecolones) 
		VALUES (@NombreTipoMaterial, @CaracteristicaMaterial, @PesoBaseMaterial, @EquivalenciaTEColones)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla Departamento>
-- Parametro de Entrada: <NombreDepartamento>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarDepartamento 
	@NombreDepartamento varchar(50)

AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO Departamento(NombreDepartamento) VALUES (@NombreDepartamento)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla TipoRol>
-- Parametro de Entrada: <NombreRol>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarTipoRol 
	@NombreRol varchar(25)

AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO TipoRol(NombreRol) VALUES (@NombreRol)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla TipoBeneficio>
-- Parametro de Entrada: <NombreBeneficio, DescripcionBeneficio, CantidadBaseTecolones>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE NuevoTipoBeneficio
	@NombreBeneficio varchar(30),
	@DescripcionBeneficio varchar(150),
	@CantidadBaseTEColones float
	 
AS
BEGIN

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO TipoBeneficio(NombreBeneficio, DescripcionBeneficio, CantidadBaseTecolones) 
		VALUES (@NombreBeneficio, @DescripcionBeneficio, @CantidadBaseTEColones)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar paramentros en la Tabla TipoContacto>
-- Parametro de Entrada: <NombreTipoContacto>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarTipoContacto 
	@NombreTipoContacto varchar(20)

AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO TipoContacto(NombreTipoContacto) VALUES (@NombreTipoContacto)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla Promocion>
-- Parametro de Entrada: <NombrePromocion, DescripcionPromocion, FechaInicio, FechaFin>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE NuevaPromocion
	@NombrePromocion varchar(50),
	@DescripcionPromocion varchar(150),
	@FechaInicio date,
	@FechaFin date
	 
AS
BEGIN

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO Promocion(NombrePromocion, DescripcionPromocion, FechaInicio, FechaFin) 
		VALUES (@NombrePromocion, @DescripcionPromocion, @FechaInicio, @FechaFin)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla SedeXTEC>
-- Parametro de Entrada: <NombreSedeXTEC, UbicacionSede>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarSedeXTEC
	@NombreSedeXTEC varchar(50),
	@UbicacionSede varchar(100)
	 
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO SedeXTEC(NombreSedeXTEC, UbicacionSede) VALUES (@NombreSedeXTEC, @UbicacionSede)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla InformacionBasicaContacto>
-- Parametro de Entrada: <Contacto, Carnet, TipoContacto>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarContacto
	@Contacto varchar(50),
	@Identificacion varchar(10),
	@TipoContacto varchar(20)
	 
AS
BEGIN
	DECLARE
	@IdIdentificacion int,
	@IdTipoContacto int
 
	SELECT @IdIdentificacion = InformacionBasica.IdInformacionBasica FROM InformacionBasica
	WHERE @Identificacion = InformacionBasica.Identificacion;

	SELECT @IdTipoContacto = TipoContacto.IdTipoContacto FROM TipoContacto
	WHERE @TipoContacto = TipoContacto.NombreTipoContacto;

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO InformacionBasicaContacto(IdInformacionBasica, IdTipoContacto, Contacto)  VALUES (@IdIdentificacion, @IdTipoContacto, @Contacto)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla InformacionBasica AUXILIAR>
-- Parametro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contraseña, Telefono, NombreRol>
-- Parametro de Salida: <IdInformacionBasica>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarInformacionBasica
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(50),
	@Contraseña varchar(50),
	@Telefono varchar (50),
	@NombreRol varchar(25),
	@IdInformacionBasica int OutPut
	 
AS
BEGIN
	DECLARE
	@IdTipoRol int

	SELECT @IdTipoRol = TipoRol.IdTipoRol FROM TipoRol
	WHERE @NombreRol = TipoRol.NombreRol;

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO InformacionBasica(Nombre, PrimerApellido, SegundoApellido, Identificacion, Contraseña, IdTipoRol)
		VALUES (@Nombre, @PrimerApellido, @SegundoApellido, @Identificacion, @Contraseña, @IdTipoRol)
		SET @IdInformacionBasica= SCOPE_IDENTITY() --@@IDENTITY
		EXEC InsertarContacto @Telefono, @Identificacion, 'Celular'
		EXEC InsertarContacto @Correo, @Identificacion, 'Correo'
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH

RETURN @IdInformacionBasica
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla Estudiante>
-- Parametro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contraseña, Telefono, NombreRol, FechaIncorporacion, Pasatiempo, NombreSedeXTEC>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarEstudiante
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(100),
	@Contraseña varchar(50),
	@Telefono varchar (50),
	@NombreRol varchar(25),
	
	@FechaIncorporacion date,
	@Pasatiempo text,
	@NombreSedeXTEC varchar(50)
		 
AS
BEGIN
	DECLARE
	@IdInformacionBasica int,
	@IdSedeXTEC int

	SELECT @IdSedeXTEC = SedeXTEC.IdSedeXTEC FROM SedeXTEC
	WHERE @NombreSedeXTEC = SedeXTEC.NombreSedeXTEC
	
	BEGIN TRAN
	BEGIN TRY
		EXEC @IdInformacionBasica = InsertarInformacionBasica @Nombre, @PrimerApellido, SegundoApellido, @Identificacion, @Correo, @Contraseña, @Telefono, @NombreRol, @IdInformacionBasica
		INSERT INTO Estudiante(FechaIncorporacion, Pasatiempo, IdSedeXTEC, IdInformacionBasica) VALUES (@FechaIncorporacion, @Pasatiempo, @IdSedeXTEC, @IdInformacionBasica)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla Administrador>
-- Parametro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contraseña, Telefono, NombreRol, NombreDepartamento>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarAdministrador
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(100),
	@Contraseña varchar(50),
	@Telefono varchar(50),
	@NombreRol varchar(25),
	
	@NombreDepartamento varchar(50)
	 
AS
BEGIN
	DECLARE
	@IdDepartamento int,
	@IdInformacionBasica int

	SELECT @IdDepartamento = Departamento.IdDepartamento FROM Departamento
	WHERE @NombreDepartamento = Departamento.NombreDepartamento

	BEGIN TRAN
	BEGIN TRY

		EXEC @IdInformacionBasica = InsertarInformacionBasica @Nombre, @PrimerApellido, SegundoApellido, @Identificacion, @Correo, @Contraseña, @Telefono, @NombreRol, @IdInformacionBasica
		INSERT INTO Administrador(IdDepartamento, IdInformacionBasica) VALUES (@IdDepartamento, @IdInformacionBasica)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla CentroAcopio>
-- Parametro de Entrada: <NombreSede, Ubicacion, Identificador>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarCentroAcopio
	@NombreSede varchar(30),
	@Ubicacion varchar(10),
	@Identificador varchar(8)
	 
AS
BEGIN
	DECLARE
	@IdSedeXTEC int

	SELECT @IdSedeXTEC = SedeXTEC.IdSedeXTEC FROM SedeXTEC
	WHERE @NombreSede = SedeXTEC.NombreSedeXTEC;

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO CentroAcopio(IdSedeXTEC, Ubicacion, Identificador)  VALUES (@IdSedeXTEC, @Ubicacion, @Identificador);
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla EncargadoCentroAcopio>
-- Parametro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contraseña, Telefono,NombreRol, IdentificadorCentroAcopio>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarAdministradorAcopio
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(100),
	@Contraseña varchar(50),
	@Telefono varchar(50),
	@NombreRol varchar(25),
	
	@IdentificadorCentroAcopio varchar(50)
		 
AS
BEGIN
	DECLARE
	@IdCentroAcopio int,
	@IdInformacionBasica int

	SELECT @IdCentroAcopio = CentroAcopio.IdCentroAcopio FROM CentroAcopio
	WHERE @IdentificadorCentroAcopio = CentroAcopio.Identificador
	
	BEGIN TRAN
	BEGIN TRY
		EXEC @IdInformacionBasica = InsertarInformacionBasica @Nombre, @PrimerApellido, SegundoApellido, @Identificacion, @Correo, @Contraseña, @Telefono, @NombreRol, @IdInformacionBasica
		INSERT INTO EncargadoCentroAcopio(IdInformacionBasica, IdCentroAcopio) VALUES (@IdInformacionBasica, @IdCentroAcopio)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla CambioMaterialEstudiante>
-- Parametro de Entrada: <IdentificacionEstudiante, IdentificacionCentroAcopio, IdentificacionEncargado, TipoMaterial, FechaCambio, PesoCambio, TecolonesAdquiridos>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE CambioMaterial
	@IdentificacionEstudiante varchar(10),
	@DIdentificadorCentroAcopio varchar(8),
	@IdentificacionEncargado varchar(10),
	@TipoMaterial varchar(25),
	@FechaCambio date,
	@PesoCambio float,
	@TecolonesAdquiridos float
	 
AS
BEGIN
	DECLARE
	@IdPromocion int = 0,
	@IdEstudiante int,
	@IdEncargadoCentroAcopio int,
	@IdTipoMaterial int
	
	SELECT @IdEstudiante = Estudiante.IdEstudiante FROM Estudiante
	INNER JOIN InformacionBasica ON Estudiante.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @IdentificacionEstudiante = InformacionBasica.Identificacion

	SELECT @IdEncargadoCentroAcopio = EncargadoCentroAcopio.IdEncargadoCentroAcopio FROM EncargadoCentroAcopio
	INNER JOIN InformacionBasica ON EncargadoCentroAcopio.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @IdentificacionEncargado = InformacionBasica.Identificacion

	SELECT @IdPromocion = Promocion.IdPromocion FROM Promocion
	WHERE @FechaCambio BETWEEN Promocion.FechaInicio AND Promocion.FechaFin

	IF @IdPromocion = 0
	BEGIN
		SELECT @IdPromocion = MIN(Promocion.IdPromocion) FROM Promocion;
	END
	
	SELECT @IdTipoMaterial = TipoMaterial.IdTipoMaterial FROM TipoMaterial
	WHERE @TipoMaterial = TipoMaterial.NombreTipoMaterial

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO CambioMaterialEstudiante(IdTipoMaterial, IdEstudiante, IdEncargadoCentroAcopio, IdPromocion, FechaCambio, PesoReciclaje, TecolonesAdquiridos) 
		VALUES (@IdTipoMaterial, @IdEstudiante, @IdEncargadoCentroAcopio, @IdPromocion, @FechaCambio, @PesoCambio, @TecolonesAdquiridos)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla CambioBeneficioEstudiante>
-- Parametro de Entrada: <IdentificacionEstudiante, TipoBeneficio, TecolonesCambio, ColonesAdquiridos, FechaCambio>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE CambioBeneficio
	@IdentificacionEstudiante varchar(10),
	@TipoBeneficio varchar (30),
	@TecolonesCambio float,
	@ColonesAdquiridos float,
	@FechaCambio date
	
AS
BEGIN
	DECLARE
	@IdEstudiante int,
	@IdTipoBeneficio int
	
	SELECT @IdEstudiante = Estudiante.IdEstudiante FROM Estudiante
	INNER JOIN InformacionBasica ON Estudiante.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @IdentificacionEstudiante = InformacionBasica.Identificacion
	
	SELECT @IdTipoBeneficio = TipoBeneficio.IdTipoBeneficio FROM TipoBeneficio
	WHERE @TipoBeneficio = TipoBeneficio.NombreBeneficio

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO CambioBeneficioEstudiante(IdTipoBeneficio, IdEstudiante, TecolonesCambio, ColonesAdquiridos, FechaCambio) 
		VALUES (@IdTipoBeneficio, @IdEstudiante, @TecolonesCambio, @ColonesAdquiridos, @FechaCambio)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO

-- =============================================
-- Descripcion:	<Actualiza parametros de la tabla TipoMaterial, TipoBeneficio, Promocion>
-- Parametro de Entrada: <IdTipo, NombreTabla, NombreColumna, DatoNuevo>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE ActualizarTipo
	@IdTipo varchar(10),
	@NombreTabla varchar(50),
	@NombreColumna varchar(50),
	@DatoNuevo varchar(50)	
	 
AS
BEGIN
	DECLARE
		@sql nvarchar(1000)

	IF @NombreColumna = 'CaracteristicaMaterial' OR @NombreColumna = 'DescripcionBeneficio' OR @NombreColumna = 'DescripcionPromocion' OR @NombreColumna = 'FechaInicio' OR @NombreColumna = 'FechaFin'
	SELECT @sql = N'UPDATE '+@NombreTabla+' SET '+@NombreColumna+' = '+ char(39)+@DatoNuevo+char(39)+' WHERE Id'+@NombreTabla+' = ' +@IdTipo
ELSE
	SELECT @sql = N'UPDATE '+@NombreTabla+' SET '+@NombreColumna+' = '+@DatoNuevo+' WHERE Id'+@NombreTabla+' = ' +@IdTipo

	BEGIN TRAN
	BEGIN TRY
		EXECUTE sp_executesql @sql
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla de BitacoraMaterial, insercion automatica despues de la creacion de un material>
-- Parametro de Entrada: <Ninguno>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER TRIGGER tr_Material
ON TipoMaterial
FOR INSERT, UPDATE

AS
SET NOCOUNT ON	
	DECLARE
		@DatoModificado varchar (50),
		@IdDato int,
		@DatoViejo nvarchar (50),
		@NombreTabla varchar (50),
		@NombreColumna varchar (50),
		@Evento varchar (15),

		@Columna int,
		@UltimaColumna int,
		@bit int,
		@char int

-- Asignacion de la Tabla
SELECT @NombreTabla = 'TipoMaterial'

--Evalua la accion que realiza en la tabla
--No se pueden borrar elementos de las tablas solo se Disable
IF EXISTS (SELECT * FROM deleted)
	SELECT @Evento = 'UPDATE'
ELSE
	SELECT @Evento = 'INSERT'

--Cuenta la cantidad de columnas
SELECT @Columna = 0, @UltimaColumna = max(ORDINAL_POSITION) FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME =@NombreTabla

WHILE @Columna< @UltimaColumna
	BEGIN

		-- Selecciona la columna despues del ID ya que esta no se puede cambiar
		SELECT @Columna = min(ORDINAL_POSITION) FROM INFORMATION_SCHEMA.COLUMNS
		WHERE TABLE_NAME = @NombreTabla AND ORDINAL_POSITION > @Columna
		
		-- Parametros de movimiento de columnas
		SELECT @bit = (@Columna-1)%8 +1
		SELECT @bit = POWER(2, @bit-1)
		SELECT @char = ((@Columna-1)/8)+1

		IF SUBSTRING(COLUMNS_UPDATED(), @char,1) & @bit>0 or @Evento IN ('INSERTAR')
		BEGIN
			SELECT @NombreColumna = COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
			WHERE TABLE_NAME = @NombreTabla AND ORDINAL_POSITION = @Columna  
			
			IF @NombreColumna = 'PesoBaseMaterial'
				SELECT @DatoViejo = deleted.PesoBaseMaterial FROM deleted
			ELSE IF @NombreColumna = 'EquivalenciaTecolones'
				SELECT @DatoViejo = deleted.EquivalenciaTecolones FROM deleted
			ELSE IF @NombreColumna = 'EstadoMaterial'
				SELECT @DatoViejo = deleted.EstadoMaterial FROM deleted
			ELSE IF @NombreColumna = 'CaracteristicaMaterial'
				SELECT @DatoViejo = deleted.CaracteristicaMaterial FROM deleted
				
			SELECT @IdDato = IdTipoMaterial FROM inserted
			SELECT @DatoModificado = NombreTipoMaterial FROM inserted WHERE IdTipoMaterial = @IdDato
			
			INSERT INTO BitacoraMaterial (Operacion,Usuario, MaterialModificado, DatoViejo, ColumnaModificada, FechaModificacion, Tabla) 
			VALUES (@Evento, SUSER_NAME(), @DatoModificado, @DatoViejo, @NombreColumna,GETDATE(), @NombreTabla)

		END
		
	END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla de BitacoraBeneficio, insercion automatica despues de la creacion de un beneficio>
-- Parametro de Entrada: <Ninguno>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER TRIGGER tr_Beneficio
ON TipoBeneficio
FOR INSERT, UPDATE

AS
SET NOCOUNT ON	
	DECLARE
		@DatoModificado varchar (50),
		@IdDato int,
		@DatoViejo nvarchar (50),
		@NombreTabla varchar (50),
		@NombreColumna varchar (50),
		@Evento varchar (15),

		@Columna int,
		@UltimaColumna int,
		@bit int,
		@char int

-- Asignacion de la Tabla
SELECT @NombreTabla = 'TipoBeneficio'

--Evalua la accion que realiza en la tabla
--No se pueden borrar elementos de las tablas solo se Disable
IF EXISTS (SELECT * FROM deleted)
	SELECT @Evento = 'UPDATE'
ELSE
	SELECT @Evento = 'INSERT'

--Cuenta la cantidad de columnas
SELECT @Columna = 0, @UltimaColumna = max(ORDINAL_POSITION) FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME =@NombreTabla

WHILE @Columna< @UltimaColumna
	BEGIN

		-- Selecciona la columna despues del ID ya que esta no se puede cambiar
		SELECT @Columna = min(ORDINAL_POSITION) FROM INFORMATION_SCHEMA.COLUMNS
		WHERE TABLE_NAME = @NombreTabla AND ORDINAL_POSITION > @Columna
		
		-- Parametros de movimiento de columnas
		SELECT @bit = (@Columna-1)%8 +1
		SELECT @bit = POWER(2, @bit-1)
		SELECT @char = ((@Columna-1)/8)+1

		IF SUBSTRING(COLUMNS_UPDATED(), @char,1) & @bit>0 or @Evento IN ('INSERTAR')
		BEGIN
			SELECT @NombreColumna = COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
			WHERE TABLE_NAME = @NombreTabla AND ORDINAL_POSITION = @Columna  
			
			IF @NombreColumna = 'DescripcionBeneficio'
				SELECT @DatoViejo = deleted.DescripcionBeneficio FROM deleted
			ELSE IF @NombreColumna = 'CantidadBaseTecolones'
				SELECT @DatoViejo = deleted.CantidadBaseTecolones FROM deleted
			ELSE IF @NombreColumna = 'EstadoBeneficio'
				SELECT @DatoViejo = deleted.EstadoBeneficio FROM deleted
				
			SELECT @IdDato = IdTipoBeneficio FROM inserted
			SELECT @DatoModificado = NombreBeneficio FROM inserted WHERE IdTipoBeneficio = @IdDato
			
			INSERT INTO BitacoraBeneficio (Operacion,Usuario, BeneficioModificado, DatoViejo, ColumnaModificada, FechaModificacion, Tabla) 
			VALUES (@Evento, SUSER_NAME(), @DatoModificado, @DatoViejo, @NombreColumna,GETDATE(), @NombreTabla)

		END
	
	END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla de BitacoraPromocion, insercion automatica despues de la creacion de una promocion>
-- Parametro de Entrada: <Ninguno>
-- Parametro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER TRIGGER tr_Promocion
ON Promocion
FOR INSERT, UPDATE

 
AS
SET NOCOUNT ON	
	DECLARE
		@DatoModificado varchar (50),
		@IdDato int,
		@DatoViejo nvarchar (50),
		@NombreTabla varchar (50),
		@NombreColumna varchar (50),
		@Evento varchar (15),

		@Columna int,
		@UltimaColumna int,
		@bit int,
		@char int

-- Asignacion de la Tabla
SELECT @NombreTabla = 'Promocion'

--Evalua la accion que realiza en la tabla
--No se pueden borrar elementos de las tablas solo se Disable
IF EXISTS (SELECT * FROM deleted)
	SELECT @Evento = 'UPDATE'
ELSE
	SELECT @Evento = 'INSERT'

--Cuenta la cantidad de columnas
SELECT @Columna = 0, @UltimaColumna = max(ORDINAL_POSITION) FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME =@NombreTabla

WHILE @Columna< @UltimaColumna
	BEGIN

		-- Selecciona la columna despues del ID ya que esta no se puede cambiar
		SELECT @Columna = min(ORDINAL_POSITION) FROM INFORMATION_SCHEMA.COLUMNS
		WHERE TABLE_NAME = @NombreTabla AND ORDINAL_POSITION > @Columna
		
		-- Parametros de movimiento de columnas
		SELECT @bit = (@Columna-1)%8 +1
		SELECT @bit = POWER(2, @bit-1)
		SELECT @char = ((@Columna-1)/8)+1

		IF SUBSTRING(COLUMNS_UPDATED(), @char,1) & @bit>0 or @Evento IN ('INSERTAR')
		BEGIN
			SELECT @NombreColumna = COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
			WHERE TABLE_NAME = @NombreTabla AND ORDINAL_POSITION = @Columna  
			
			IF @NombreColumna = 'DescripcionPromocion'
				SELECT @DatoViejo = deleted.DescripcionPromocion FROM deleted
			ELSE IF @NombreColumna = 'FechaInicio'
				SELECT @DatoViejo = deleted.FechaInicio FROM deleted
			ELSE IF @NombreColumna = 'FechaFin'
				SELECT @DatoViejo = deleted.FechaFin FROM deleted
			ELSE IF @NombreColumna = 'EstadoPromocion'
				SELECT @DatoViejo = deleted.EstadoPromocion FROM deleted
				
			SELECT @IdDato = IdPromocion FROM inserted
			SELECT @DatoModificado = NombrePromocion FROM inserted WHERE IdPromocion = @IdDato
			
			INSERT INTO BitacoraPromocion (Operacion,Usuario, PromocionModificada, DatoViejo, ColumnaModificada, FechaModificacion, Tabla) 
			VALUES (@Evento, SUSER_NAME(), @DatoModificado, @DatoViejo, @NombreColumna,GETDATE(), @NombreTabla)

		END
		
	END
GO