--EXEC CDIUsuarioSeguimiento 'VTAS', 1
/****************** CDIUsuarioSeguimiento *********************/
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'CDIUsuarioSeguimiento' AND TYPE = 'p') DROP PROCEDURE CDIUsuarioSeguimiento
GO
CREATE PROCEDURE CDIUsuarioSeguimiento 
        @Modulo             VARCHAR(5), 
        @ID                 INT
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Responsable    VARCHAR(100),
    @Usuario        VARCHAR(10),
    @Fecha          DATETIME,
  	@TablaModulo    VARCHAR(30),
  	@Variables      NVARCHAR(MAX),
  	@SQL            NVARCHAR(MAX)
    
  SELECT @Responsable = NULL
  
  SELECT @TablaModulo = dbo.fnMovTabla(@Modulo)
  
  SELECT @Variables = '
  	    @ID         int, 
  	    @Usuario    varchar(10)     OUTPUT'
  
  SELECT @SQL = 'SELECT @Usuario = Usuario FROM ' + @TablaModulo + ' WHERE ID = @ID'
  
  EXEC sp_ExecuteSQL @SQL, @Variables, @ID, @Usuario OUTPUT
  
  SELECT @Fecha = MAX(cf.FechaAutoriza) FROM CDIMovFAUsuario cf WHERE cf.Modulo = @Modulo AND cf.ID = @ID
  
  IF @Fecha IS NOT NULL
    SELECT @Responsable = @Usuario + ' ' + CONVERT(VARCHAR, ISNULL(@Fecha, ''), 121)
  ELSE
    SELECT @Responsable = @Usuario 
  
  SELECT @Responsable
  
  RETURN
END
GO

--EXEC CDIUsuarioSeguimiento 'VTAS', 1