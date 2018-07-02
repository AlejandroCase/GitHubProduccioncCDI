SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

/**************** spCDIMailPuntoReorden ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIMailPuntoReorden') and type = 'P') drop procedure dbo.spCDIMailPuntoReorden
GO  
CREATE PROCEDURE spCDIMailPuntoReorden (@Almacen VARCHAR(10), @Empresa VARCHAR(5)) 
AS
BEGIN
  DECLARE
    @ProfileCfg       VARCHAR(50), 
    @Destinat         VARCHAR(500), 
    @Result           VARCHAR(500),
    @ServidorCorreo   VARCHAR(50),
    @Sentencia        nVARCHAR(max),
    @Subject          VARCHAR(50),
    @Variables        nVARCHAR(max),
    @SQL              nVARCHAR(max),
    @body_format      VARCHAR(20),
    @FileName         VARCHAR(255),
    @Body             VARCHAR(255),
    @DB               VARCHAR(100)

  DELETE CDIAlmacenReorden WHERE Almacen = @Almacen
  SELECT @Destinat = CDICorreoPuntoReorden FROM Alm WHERE Almacen = @Almacen

  IF isnull(@Destinat, '') <> ''
  BEGIN  
    INSERT INTO CDIAlmacenReorden ( Articulo,   Descripcion,    Almacen,    Minimo,    Disponible)    
    SELECT                          a.Articulo, a.Descripcion1, aa.Almacen, aa.Minimo, ad.Disponible
      FROM ArtAlm aa LEFT JOIN Art a  ON a.Articulo = aa.Articulo 
                     LEFT JOIN ArtDisponible ad ON ad.Articulo = aa.Articulo AND ad.Almacen = aa.Almacen
     WHERE ISNULL(aa.Minimo,0) > 0  AND aa.Minimo > ad.Disponible AND aa.Almacen = @Almacen 

    SELECT @Sentencia = NULL, @Variables = NULL, @Subject = 'Punto de Re orden', @body_format = 'HTML', @Body = 'Artículos que han llegado al punto de re orden',
           @FileName = 'Reorden'+ @Almacen + CONVERT(VARCHAR(30), GETDATE(), 105) + '.txt', @DB = DB_NAME()

    SELECT @ProfileCfg = CDIProfile, @ServidorCorreo = NULLIF(CDIServer, '') FROM Version    
    SELECT @Sentencia = @ServidorCorreo + '.msdb.dbo.sysmail_start_sp'
    EXEC (@Sentencia)
    SET @SQL = ' SELECT Articulo, Descripcion, Almacen, Convert(Decimal(20,2), round(Minimo, 2), 2) AS Minimo, Convert(Decimal(20,2),round(Disponible, 2), 2) AS Disponible FROM '+@ServidorCorreo+'.'+@DB+'.dbo.CDIAlmacenReorden WHERE Almacen = '''+@Almacen+''''
   
    SELECT @Variables = '
        @Profile        varchar(50),
        @Destinatarios  varchar(MAX),
        @Subject        varchar(50),
        @SQL            varchar(MAX),
        @FileName       varchar(255),
        @Body           varchar(255),
        @body_format    varchar(50)'
        
    SELECT @Sentencia = 'EXEC ' + @ServidorCorreo  + '.msdb.dbo.sp_send_dbmail 
         @profile_name                  = @Profile,
         @recipients                    = @Destinatarios,
         @subject                       = @Subject,
         @query                         = @SQL,
         @attach_query_result_as_file   = 1,
         @query_attachment_filename     = @FileName,
         @body                          = @Body, 
         @body_format                   = @body_format'

    EXEC sp_ExecuteSQL @Sentencia, @Variables, @ProfileCfg, @Destinat, @Subject, @SQL, @FileName, @Body, @body_format
  END
  
END
GO
--EXEC spCDIMailPuntoReorden 'GENERAL', 'CDI'