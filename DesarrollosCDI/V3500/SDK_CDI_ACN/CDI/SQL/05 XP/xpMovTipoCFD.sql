/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/************** xpMovTipoCFD *************/
if exists (select * from sysobjects where id = object_id('dbo.xpMovTipoCFD') and type = 'P') drop procedure dbo.xpMovTipoCFD
GO
CREATE PROCEDURE xpMovTipoCFD
                   @Empresa     varchar(5),
		   @Modulo	varchar(5),
		   @Mov		varchar(20),
		   @CFD		bit		OUTPUT,
		   @CFDFLEX    bit  =NULL OUTPUT
AS BEGIN

  SELECT @CFD = 0
  IF ((SELECT CFD FROM Empresa WHERE Empresa = @Empresa) = 1) OR ((SELECT CFDFlex FROM EmpresaGral WHERE Empresa = @Empresa) = 1 AND (SELECT eDoc FROM EmpresaGral WHERE Empresa = @Empresa) = 1)
  BEGIN
    SELECT @CFD = CASE WHEN (SELECT ISNULL(CFD, 0) FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Mov) = 1 OR (SELECT ISNULL(CFDFlex, 0) FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Mov) = 1 THEN 1 ELSE 0 END
    SELECT @CFDFlex = CASE WHEN (SELECT ISNULL(CFDFlex, 0) FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Mov) = 1 THEN 1 ELSE 0 END        
  END
  
  RETURN 
END
GO