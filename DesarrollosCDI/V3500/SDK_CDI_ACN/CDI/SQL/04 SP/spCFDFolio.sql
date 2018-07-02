/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/************** spCFDFolio *************/
if exists (select * from sysobjects where id = object_id('dbo.spCFDFolio') and type = 'P') drop procedure dbo.spCFDFolio
GO
CREATE PROCEDURE spCFDFolio
		   @Sucursal		int,
                   @Empresa     	char(5),
                   @Modulo		char(5),
                   @Mov      		char(20),
                   @MovID		varchar(20)	OUTPUT,
		   @Ok			int		OUTPUT,
		   @OkRef		varchar(255)	OUTPUT,
           @ModuloAfectacion varchar(5) = NULL,
           @ID int = NULL
WITH ENCRYPTION
AS BEGIN
  DECLARE
    @CFDFolio			int,
    @CFDFolioA			int,
    @CFDSerie			varchar(10),
    @Nivel 				varchar(10),
    @Fecha 				datetime,
    @noAprobacion 		int,
    @fechaAprobacion 	datetime,
    @RFC 				varchar(20),
    @Cliente			varchar(20),
    @CFDImporte			float, --Cambio CFD Flexible
    @CFDImpuesto1		float, --Cambio CFD Flexible
    @CFDImpuesto2		float, --Cambio CFD Flexible
    @TipoCambio			float  --Cambio CFD Flexible

  IF @ID IS NOT NULL
    SELECT @MovID = MovID FROM CFD WHERE Modulo = @ModuloAfectacion AND ModuloID = @ID

  IF @MovID IS NULL
  BEGIN
    SELECT @CFDFolioA = NULL
    SELECT @CFDFolioA = MIN(FolioA), @Nivel = 'Global'
      FROM CFDFolio
     WHERE Empresa = @Empresa AND Modulo = @Modulo AND Mov = @Mov AND Estatus = 'ALTA' AND ISNULL(Folio, 0) < ISNULL(FolioA, 0) AND Nivel = 'Global' 
  
    IF NULLIF(@CFDFolioA, 0) IS NULL
      SELECT @CFDFolioA = MIN(FolioA), @Nivel = 'Sucursal'
        FROM CFDFolio
       WHERE Empresa = @Empresa AND Modulo = @Modulo AND Mov = @Mov AND Estatus = 'ALTA' AND ISNULL(Folio, 0) < ISNULL(FolioA, 0) AND Nivel = 'Sucursal'  AND Sucursal = @Sucursal

    IF NULLIF(@CFDFolioA, 0) IS NULL
      SELECT @Ok = 30013
    ELSE BEGIN
      IF @Nivel = 'Global'
        UPDATE CFDFolio
           SET @CFDFolio = Folio = ISNULL(Folio, FolioD - 1) + 1, @CFDSerie = Serie, @NoAprobacion = NoAprobacion, @fechaAprobacion = fechaAprobacion
         WHERE Empresa = @Empresa AND Modulo = @Modulo AND Mov = @Mov AND Estatus = 'ALTA' AND FolioA = @CFDFolioA AND Nivel = 'Global'
      ELSE IF @Nivel = 'Sucursal'
        UPDATE CFDFolio
           SET @CFDFolio = Folio = ISNULL(Folio, FolioD - 1) + 1, @CFDSerie = Serie, @NoAprobacion = NoAprobacion, @fechaAprobacion = fechaAprobacion
         WHERE Empresa = @Empresa AND Modulo = @Modulo AND Mov = @Mov AND Estatus = 'ALTA' AND FolioA = @CFDFolioA AND Nivel = 'Sucursal' AND Sucursal = @Sucursal
    END
      SELECT @MovID = ISNULL(@CFDSerie, '')+CONVERT(varchar, @CFDFolio)
  END

  IF @ID IS NOT NULL 
  BEGIN
    IF NOT EXISTS (SELECT ModuloID FROM CFD WHERE Modulo = @ModuloAfectacion AND ModuloID = @ID) 
    BEGIN
      SELECT @Fecha = GETDATE()--, @Ejercicio = DATEPART(YEAR, @Fecha), @Periodo = DATEPART(MONTH, @Fecha)
      IF @ModuloAfectacion = 'VTAS' SELECT @Cliente = v.Cliente, @CFDImporte = ISNULL(vtce.TotalNeto,0.0), @CFDImpuesto1 = ISNULL(Impuesto1Total,0.0), @CFDImpuesto2 = ISNULL(Impuesto2Total,0.0), @TipoCambio = v.TipoCambio FROM Venta v JOIN VentaTCalcExportacion vtce ON vtce.ID = v.ID WHERE v.ID = @ID ELSE  --Cambio CFD Flexible
      IF @ModuloAfectacion = 'CXC' SELECT @Cliente = v.Cliente,  @CFDImporte = ISNULL(v.Importe,0.0),      @CFDImpuesto1 = ISNULL(v.Impuestos,0.0),    @CFDImpuesto2 = 0.0,                        @TipoCambio = v.TipoCambio FROM CXC v WHERE v.ID = @ID  --Cambio CFD Flexible

      SELECT @RFC = RFC FROM Cte WHERE Cliente = @Cliente

      INSERT CFD (Modulo,            ModuloID, Fecha,  Ejercicio,    Periodo,       Empresa,  MovID,  Serie,     Folio,     RFC,  Aprobacion,                                                               Importe,     Impuesto1,     Impuesto2,     TipoCambio)  --Cambio CFD Flexible
      VALUES     (@ModuloAfectacion, @ID,      @Fecha, YEAR(@Fecha), MONTH(@Fecha), @Empresa, @MovID, @CFDSerie, @CFDFolio, @RFC, CONVERT(varchar, YEAR(@fechaAprobacion))+CONVERT(varchar, @noAprobacion), @CFDImporte, @CFDImpuesto1, @CFDImpuesto2, @TipoCambio) --Cambio CFD Flexible
    END
  END

END
GO
