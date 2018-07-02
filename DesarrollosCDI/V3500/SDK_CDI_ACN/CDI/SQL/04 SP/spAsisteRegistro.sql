/**************** spAsisteRegistro ****************/
if exists (select * from sysobjects where id = object_id('dbo.spAsisteRegistro') and type = 'P') drop procedure dbo.spAsisteRegistro
GO
CREATE PROCEDURE spAsisteRegistro
	   		@Empresa 		char(5),
	   		@Sucursal 		int,
	   		@Usuario 		char(10),
	   		@Personal 		char(10),
	   		@EstaPresente 		bit,
	   		@Retardo 		int,
                        @FechaHora              datetime = null 
 
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @ID 			int,
    @CfgRegistroMovSucursal 	bit,
    @CfgHoraCambioJornada	char(5),
    @Hoy   			datetime,
    @FechaAplicacion		datetime,
    @Renglon   			float,
    @Registro   		varchar(20),
    @Hora   			varchar(5)
 
  IF @FechaHora = NULL    
    SELECT @Hoy  = GETDATE()
  ELSE
    SELECT @Hoy  = @FechaHora 
 
  SELECT @Hora = LEFT(CONVERT(varchar, @Hoy, 14),5)
  EXEC spExtraerFecha @Hoy OUTPUT
  SELECT @FechaAplicacion = @Hoy

  SELECT @CfgRegistroMovSucursal = RegistroMovSucursal,
         @CfgHoraCambioJornada = NULLIF(RTRIM(HoraCambioJornada), '')
    FROM EmpresaCfgAcceso 
   WHERE Empresa = @Empresa

  SELECT @EstaPresente = ~@EstaPresente -- aqui cambia el esta presente
  UPDATE Personal SET EstaPresente = @EstaPresente WHERE Personal = @Personal

  IF @EstaPresente = 1  
  BEGIN
    SELECT @Registro = 'Entrada'  
    IF @CfgHoraCambioJornada IS NOT NULL AND @Hora >= @CfgHoraCambioJornada SELECT @FechaAplicacion = DATEADD(day, 1, @FechaAplicacion)
  END ELSE 
    SELECT @Registro = 'Salida'

  SELECT @ID = NULL
  IF @CfgRegistroMovSucursal = 1
    SELECT @ID = MIN(ID) FROM Asiste WHERE Empresa = @Empresa AND Mov = 'Registro' AND Estatus = 'BORRADOR' AND FechaEmision = @Hoy AND FechaAplicacion = @FechaAplicacion AND Sucursal = @Sucursal 
  ELSE
    SELECT @ID = MIN(ID) FROM Asiste WHERE Empresa = @Empresa AND Mov = 'Registro' AND Estatus = 'BORRADOR' AND FechaEmision = @Hoy AND FechaAplicacion = @FechaAplicacion 

  IF @ID IS NULL
  BEGIN
    INSERT Asiste (Empresa,   Mov,       FechaEmision, FechaAplicacion, UltimoCambio, Usuario,  Estatus,     Sucursal) 
           VALUES (@Empresa, 'Registro', @Hoy,         @FechaAplicacion, GETDATE(),    @Usuario, 'BORRADOR', @Sucursal)
    SELECT @ID = @@IDENTITY
    
    EXEC spAfectar 'ASIS', @ID, 'CONSECUTIVO', 'TODO', NULL, @Usuario, 0, 1
    
  END
 
  SELECT @Renglon = 0.0
  SELECT @Renglon = ISNULL(MAX(Renglon), 0.0) + 2048.0 FROM AsisteD WHERE ID = @ID
  INSERT AsisteD (ID,  Renglon,  Personal,  Registro,  HoraRegistro, FechaD, FechaA, Sucursal,  Retardo)
          VALUES (@ID, @Renglon, @Personal, @Registro, @Hora,        @Hoy,   @Hoy,   @Sucursal, @Retardo)
  RETURN
END
GO

