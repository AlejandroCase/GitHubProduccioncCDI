/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/************** spMovTipoCFD *************/
if exists (select * from sysobjects where id = object_id('dbo.spMovTipoCFD') and type = 'P') drop procedure dbo.spMovTipoCFD
GO
CREATE PROCEDURE spMovTipoCFD
                   @Empresa     varchar(5),
		   @Modulo	varchar(5),
		   @Mov		varchar(20),
		   @CFD					bit		OUTPUT, --Cambio CFD Flexible
		   @CFDFlex				bit = NULL OUTPUT --Cambio CFD Flexible

--//WITH ENCRYPTION
AS BEGIN
 SELECT @CFD = 0
  IF ((SELECT CFD FROM Empresa WHERE Empresa = @Empresa) = 1) OR ((SELECT CFDFlex FROM EmpresaGral WHERE Empresa = @Empresa) = 1 AND (SELECT eDoc FROM EmpresaGral WHERE Empresa = @Empresa) = 1)
  BEGIN --Cambio CFD Flexible
    SELECT @CFD = CASE WHEN (SELECT ISNULL(CFD, 0) FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Mov) = 1 OR (SELECT ISNULL(CFDFlex, 0) FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Mov) = 1 THEN 1 ELSE 0 END
    SELECT @CFDFlex = CASE WHEN (SELECT ISNULL(CFDFlex, 0) FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Mov) = 1 THEN 1 ELSE 0 END --Cambio CFD Flexible        
  END --Cambio CFD Flexible

  EXEC xpMovTipoCFD @Empresa, @Modulo, @Mov, @CFD OUTPUT, @CFDFlex OUTPUT --Cambio CFD Flexible
  RETURN 
END
GO