IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 74001) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (74001,	'El movimiento no se encuentra Autorizado',	'ERROR',	0)		
GO

/********************* xpCDIVerificarFlujo ***************************/
IF EXISTS(SELECT * FROM sysobjects s WHERE TYPE = 'P' AND NAME = 'xpCDIVerificarFlujo') DROP PROCEDURE dbo.xpCDIVerificarFlujo
GO
CREATE PROCEDURE xpCDIVerificarFlujo
        @Modulo                 VARCHAR(5),
        @ID                     INT,
        @Accion                 VARCHAR(20),
        @Usuario                VARCHAR(10),
        @Ok                     INT             OUTPUT,
        @OkRef                  VARCHAR(255)    OUTPUT
AS 
BEGIN
  
  DECLARE 
  	    @FlujoAutorizacion      BIT, 
  	    @EstatusAutorizacion    VARCHAR(15),
  	    @Proyecto               VARCHAR(50),
  	    @TablaModulo            VARCHAR(30),
  	    @Variables              NVARCHAR(MAX),
  	    @SQL                    NVARCHAR(MAX),
  	    @Mov                    VARCHAR(20),
  	    @MovID                  VARCHAR(20),
  	    @CDIFlujoAutorizacion   BIT,
  	    @CDIPermiteEditar       BIT,
  	    @UsuarioAutorizar       VARCHAR(10),
  	    @UsuarioMov             VARCHAR(10),
  	    
  	    @Empresa                VARCHAR(5),
  	    @Sucursal               INT,
  	    @Correo                 BIT,
  	    @UsuarioSiguiente       VARCHAR(10),
  	    @CDIEstado              VARCHAR(20)
  	    
  SELECT @TablaModulo = dbo.fnMovTabla(@Modulo)
  
  SELECT @Variables = '
  	    @ID         int, 
  	    @Mov        varchar(20)     OUTPUT,
  	    @MovID      varchar(20)     OUTPUT,
  	    @Proyecto   varchar(50)     OUTPUT,
  	    @UsuarioMov varchar(10)     OUTPUT,
  	    @Empresa    varchar(5)      OUTPUT,
  	    @Sucursal   int             OUTPUT,
  	    @CDIEstado  varchar(20)     OUTPUT'
  
  SELECT @SQL = 'SELECT @Proyecto = Proyecto, @Mov = Mov, @MovID = MovID, @UsuarioMov = Usuario, @Empresa = Empresa, @Sucursal = Sucursal, @CDIEstado = CDIEstado FROM ' + @TablaModulo + ' WHERE ID = @ID'
  
  EXEC sp_ExecuteSQL @SQL, @Variables, @ID, @Mov OUTPUT, @MovID OUTPUT, @Proyecto OUTPUT, @UsuarioMov OUTPUT, @Empresa OUTPUT, @Sucursal OUTPUT, @CDIEstado OUTPUT
  	    
  SELECT @FlujoAutorizacion = mt.FlujoAutorizacion, @EstatusAutorizacion = mt.FlujoAutorizacionEstatus
    FROM MovTipo mt WHERE mt.Modulo = @Modulo AND mt.Mov = @Mov
    
  IF @CDIEstado = 'RECHAZADO' 
    SELECT @Ok = 74001, @OkRef = 'Movimiento Rechazado'-- SELECT * FROM MensajeLista WHERE Descripcion LIKE '%Autorizado%'
   	
  IF @FlujoAutorizacion = 1 AND @EstatusAutorizacion = 'SINAFECTAR' AND @Ok IS NULL
  AND EXISTS(SELECT * FROM CDIMovTipoFAProyecto mp WHERE mp.Mov = @Mov AND mp.Modulo = @Modulo AND mp.Proyecto = @Proyecto)
  BEGIN
    IF NOT EXISTS(SELECT * FROM CDIMovFAUsuario WHERE ID = @ID AND Mov = @Mov AND Modulo = @Modulo AND Proyecto = @Proyecto) 
    BEGIN
      IF @MovID IS NULL
        EXEC spAfectar @Modulo, @ID, 'CONSECUTIVO', 'TODO', NULL, @Usuario, 0, 1, @Ok OUTPUT, @OkRef OUTPUT
        
      IF @Ok = 80060
        SELECT @Ok = NULL, @OkRef = NULL
    	
      IF @Ok IS NULL
      BEGIN
      	SELECT TOP 1 @Correo = Correo, @UsuarioSiguiente = Usuario, @CDIPermiteEditar = ISNULL(Editar, 0)
          FROM  CDIMovFAUsuario WHERE ID = @ID AND Modulo = @Modulo AND Proyecto = @Proyecto ORDER BY Orden
          
        INSERT INTO CDIMovFAUsuario
                 (ID,     Mov,     Modulo,     Proyecto,     Usuario,     Orden,     Editar,     Correo,     Tarea,     Autorizacion,     Tiempo)
          SELECT @ID, ctf.Mov, ctf.Modulo, ctf.Proyecto, ctf.Usuario, ctf.Orden, ctf.Editar, ctf.Correo, ctf.Tarea, ctf.Autorizacion, ctf.Tiempo
            FROM CDIMovTipoFAUsuario ctf WHERE ctf.Mov = @Mov AND ctf.Modulo = @Modulo AND ctf.Proyecto = @Proyecto
       
        SELECT @SQL = 'UPDATE ' + @TablaModulo + ' SET CDIFlujoAutorizacion = 1 WHERE ID = ' + CONVERT(VARCHAR, @ID)
      
        EXEC (@SQL)
          
  	    IF @Correo = 1
          EXEC spCDIEnviarCorreo @Empresa, @Sucursal, @Modulo, @ID, @UsuarioSiguiente, @Usuario, @Ok OUTPUT, @OkRef OUTPUT
      END
        
    END
    
  END
  
  IF @FlujoAutorizacion = 1 AND EXISTS(SELECT ID FROM CDIMovFAUsuario WHERE Modulo = @Modulo AND ID = @ID AND Autorizado = 0) AND @Ok IS NULL
  BEGIN
    SELECT TOP 1 @UsuarioAutorizar = cf.Usuario, @CDIPermiteEditar = ISNULL(Editar, 0) FROM CDIMovFAUsuario cf WHERE cf.Modulo = @Modulo AND ID = @ID AND Autorizado = 0 ORDER BY cf.Orden
    IF @UsuarioMov <> @UsuarioAutorizar
    BEGIN
      SELECT @Variables = '
  	        @ID         int, 
  	        @UsuarioMov varchar(10),
  	        @CDIPermiteEditar   bit'
  
      SELECT @SQL = 'UPDATE ' + @TablaModulo + ' SET Usuario = @UsuarioMov, CDIPermiteEditar = @CDIPermiteEditar WHERE ID = @ID'
  
      EXEC sp_ExecuteSQL @SQL, @Variables, @ID, @UsuarioAutorizar, @CDIPermiteEditar
    END
    SELECT @Ok = 74001, @OkRef = 'Usuario: ' + RTRIM(@UsuarioAutorizar)
  END
   	
  RETURN  
END
GO