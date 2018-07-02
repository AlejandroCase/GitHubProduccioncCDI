/********************* xpCDIRetrocederMov ***************************/
IF EXISTS(SELECT * FROM sysobjects s WHERE TYPE = 'P' AND NAME = 'xpCDIRetrocederMov') DROP PROCEDURE dbo.xpCDIRetrocederMov
GO
CREATE PROCEDURE xpCDIRetrocederMov
        @Empresa                VARCHAR(5),
        @Sucursal               INT,
        @Modulo                 VARCHAR(5),
        @ID                     INT,
        @Mov                    VARCHAR(20),
        @Accion                 VARCHAR(20),
        @Usuario                VARCHAR(10),
        @Comentarios            VARCHAR(100),
        @FlujoCompleto          BIT
AS 
BEGIN
  
  DECLARE 
  	    @FlujoAutorizacion      BIT, 
  	    @EstatusAutorizacion    VARCHAR(15),
  	    @Proyecto               VARCHAR(50),
  	    @TablaModulo            VARCHAR(30),
  	    @Variables              NVARCHAR(MAX),
  	    @SQL                    NVARCHAR(MAX),
  	    @CDIFlujoAutorizacion   BIT,
  	    @UsuarioAutorizar       VARCHAR(10),
  	    @CDIPermiteEditar       BIT,
  	    @UsuarioGrupo           VARCHAR(10),
  	    @UsuarioSiguiente       VARCHAR(10),
        @Ok                     INT,
        @OkRef                  VARCHAR(255),
        @CDIEstado              VARCHAR(20),
        @CDIEstadoN             VARCHAR(20),
        
        @FechaRegistro          DATETIME,
        @Correo                 BIT,
        @Tarea                  BIT,
        @Autorizacion           BIT,
        @Orden                  INT,
        @Estatus                VARCHAR(15)
  	    
  SELECT @FechaRegistro = GETDATE()
--  EXEC spExtraerFecha @FechaRegistro OUTPUT 
  
  SELECT @TablaModulo = dbo.fnMovTabla(@Modulo)
  
  SELECT @Variables = '
  	    @ID                     int, 
  	    @Proyecto               varchar(50)     OUTPUT,
  	    @CDIFlujoAutorizacion   bit             OUTPUT,
        @CDIEstado              VARCHAR(20)     OUTPUT,
        @Estatus                VARCHAR(15)     OUTPUT'
  
  SELECT @SQL = 'SELECT @Proyecto = Proyecto, @CDIFlujoAutorizacion = CDIFlujoAutorizacion, @CDIEstado = CDIEstado, @Estatus = Estatus FROM ' + @TablaModulo + ' WHERE ID = @ID'
  
  EXEC sp_ExecuteSQL @SQL, @Variables, @ID, @Proyecto OUTPUT, @CDIFlujoAutorizacion OUTPUT, @CDIEstado OUTPUT, @Estatus OUTPUT
    
  SELECT @UsuarioGrupo = u.Configuracion FROM Usuario u WHERE u.Usuario = @Usuario
  
  SELECT TOP 1 @UsuarioAutorizar = cf.Usuario--, @Orden = cf.Orden, @CDIPermiteEditar = cf.Editar
    FROM CDIMovFAUsuario cf WHERE ID = @ID AND cf.Modulo = @Modulo AND cf.Autorizado = 0 ORDER BY cf.Orden
  
  IF @FlujoCompleto = 1
    SELECT TOP 1 @Orden = cf.Orden, @CDIPermiteEditar = ISNULL(cf.Editar, 0)
      FROM CDIMovFAUsuario cf WHERE ID = @ID AND cf.Modulo = @Modulo ORDER BY cf.Orden
  ELSE
    SELECT TOP 1 @Orden = cf.Orden, @CDIPermiteEditar = ISNULL(cf.Editar, 0)
      FROM CDIMovFAUsuario cf WHERE ID = @ID AND cf.Modulo = @Modulo AND cf.Autorizado = 1 ORDER BY cf.Orden DESC
        
  IF ISNULL(@CDIFlujoAutorizacion, 0) = 0
    SELECT @Ok = 60010, @OkRef = 'El Movimiento no Requiere Autorizacion' ELSE
  IF @Usuario <> @UsuarioAutorizar AND @UsuarioAutorizar <> @UsuarioGrupo
    SELECT @Ok = 46130 ELSE-- SELECT * FROM MensajeLista WHERE Descripcion LIKE '%requerido%'
  IF @CDIEstado = 'RECHAZADO'
    SELECT @Ok = 60010, @OkRef = 'El Movimiento ya fue Rechazado' ELSE
  IF NULLIF(@Comentarios, '') IS NULL
    SELECT @Ok = 10010, @OkRef = 'Comentarios'
    
  IF @Ok IS NULL
  BEGIN
  	UPDATE CDIMovFAUsuario SET Autorizado = 0, UsuarioAutoriza = NULL, FechaAutoriza = NULL
  	 WHERE ID = @ID AND Mov = @Mov AND Modulo = @Modulo AND Orden >= @Orden
  	 
  	SELECT TOP 1 @UsuarioSiguiente = cf.Usuario, @Correo = cf.Correo, @Tarea = cf.Tarea, @Autorizacion = cf.Autorizacion, @CDIPermiteEditar = ISNULL(cf.Editar, 0)
    FROM CDIMovFAUsuario cf WHERE ID = @ID AND cf.Modulo = @Modulo AND cf.Autorizado = 0 ORDER BY cf.Orden
--    SELECT TOP 100 * FROM CDIMovFAUsuario
--SELECT * FROM CDIMovTipoFAUsuario ctf

    SELECT @Variables = '
  	      @ID                     int, 
  	      @Usuario                varchar(10),
  	      @CDIEstadoN             varchar(20),
  	      @CDIPermiteEditar       bit'
  
    SELECT @SQL = 'UPDATE ' + @TablaModulo + ' SET Usuario = @Usuario, CDIEstado =  @CDIEstadoN, CDIPermiteEditar = @CDIPermiteEditar WHERE ID = @ID'
  
    EXEC sp_ExecuteSQL @SQL, @Variables, @ID, @UsuarioSiguiente, @CDIEstadoN, @CDIPermiteEditar
    
  	IF @Correo = 1
      EXEC spCDIEnviarCorreo @Empresa, @Sucursal, @Modulo, @ID, @UsuarioSiguiente, @Usuario, @Ok OUTPUT, @OkRef OUTPUT
      
    INSERT MovBitacora(Modulo, ID, Fecha, Evento, Tipo, Sucursal, Usuario, MovEstatus)
      VALUES(@Modulo, @ID, @FechaRegistro, @Comentarios, 'Comentario', @Sucursal, @Usuario, @Estatus)
    
  END
  
  IF @Ok IS NOT NULL
    SELECT Descripcion + '<BR>' + ISNULL(@OkRef, '') FROM MensajeLista WHERE Mensaje = @Ok
  ELSE
  BEGIN
      SELECT 'Proceso Concluido con Exito'
  END
   	
  RETURN  
END
GO