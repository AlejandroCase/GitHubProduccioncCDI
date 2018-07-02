/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/***********spInsertaEnArchivo***********/
IF EXISTS(SELECT * FROM SysObjects WHERE Id=OBJECT_ID('dbo.spInsertaEnArchivo') AND Type='P') 
DROP PROC dbo.spInsertaEnArchivo
GO

CREATE PROCEDURE spInsertaEnArchivo  
    (  
    @IDArchivo		int,  
    @Cadena		varchar(max),
 	@Ok				int = NULL OUTPUT,
	@OkRef			varchar(255) = NULL OUTPUT            
    )  
AS  
BEGIN  
  DECLARE
    @ResultadoOLE	int,
    @CadenaXML		xml

  SELECT @CadenaXML = CONVERT(xml,@Cadena)
  SELECT @Cadena = '<?xml version="1.0" encoding="UTF-8"?>' + CONVERT(varchar(max),@CadenaXML)

  --Inserta una Linea al archivo  
  EXECUTE @ResultadoOLE = sp_OAMethod @IDArchivo, 'Write', NULL, @Cadena
  IF @ResultadoOLE <> 0 SET @Ok = 710520  
END  
GO