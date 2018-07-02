/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spCDIRFCOk ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIRFCOk') and type = 'P') drop procedure dbo.spCDIRFCOk
GO             
CREATE PROCEDURE spCDIRFCOk
                       @Cual            varchar(20), 
                       @Registro        varchar(20), 
              	       @Empresa		char(5) = NULL,
		                   @EnSilencio	bit	= 0,
            		       @Ok		bit 	= 1	OUTPUT  -- 1= esta bien  0= esta mal

AS BEGIN
  DECLARE
    @Largo                     int, 
    @Digito                    varchar(1)


  SELECT @Ok = 1
  SELECT @Registro = NULLIF(NULLIF(RTRIM(@Registro),  '0'),  '')
  IF @Cual='RFC' AND LEN(ISNULL(@REGISTRO, '')) > 0
  BEGIN
    SELECT @Largo=LEN(ISNULL(@Registro, ''))
    IF (@Largo < 9 AND @Largo <>0) SELECT @Ok=0   
    IF @Largo=10 OR @Largo=13                 --para rfc de personas fisicas
    BEGIN
      IF SUBSTRING(@Registro, 7, 2) < 1 or SUBSTRING(@Registro, 7, 2) > 12 SELECT @OK=0
      IF SUBSTRING(@Registro, 9, 2) < 1 or SUBSTRING(@Registro, 9, 2) > 31 SELECT @OK=0   
      IF dbo.fnEsNumerico(SUBSTRING(@Registro, 1, 1))<>0 OR dbo.fnEsNumerico(SUBSTRING(@Registro, 2, 1))<>0 OR 
         dbo.fnEsNumerico(SUBSTRING(@Registro, 3, 1))<>0 OR dbo.fnEsNumerico(SUBSTRING(@Registro, 4, 1))<>0 OR 
         dbo.fnEsNumerico(SUBSTRING(@Registro, 5, 6))<>1 SELECT @OK=0     
      IF @LARGO = 13
      BEGIN
        EXEC spRFCDigitoVerificador @Registro,  @Digito OUTPUT
        IF RIGHT(RTRIM(@REGISTRO), 1) <> @Digito SELECT @OK=0 
      END
    END 
    ELSE IF @Largo=9 OR @Largo=12         --para rfc de personas Morales(Empresas)
    BEGIN
      IF SUBSTRING(@Registro, 6, 2) < 1 OR SUBSTRING(@Registro, 6, 2) > 12 SELECT @OK=0
      IF SUBSTRING(@Registro, 8, 2) < 1 OR SUBSTRING(@Registro, 8, 2) > 31 SELECT @OK=0   
      IF dbo.fnEsNumerico(SUBSTRING(@Registro, 1, 1))<>0 OR dbo.fnEsNumerico(SUBSTRING(@Registro, 2, 1))<>0 OR    
         dbo.fnEsNumerico(SUBSTRING(@Registro, 3, 1))<>0 OR dbo.fnEsNumerico(SUBSTRING(@Registro, 4, 6))<>1 SELECT @OK=0    
    END 
    ELSE SELECT @OK=0
  END 
  IF @EnSilencio = 0 
    SELECT "Ok" = @Ok
  RETURN
END
GO