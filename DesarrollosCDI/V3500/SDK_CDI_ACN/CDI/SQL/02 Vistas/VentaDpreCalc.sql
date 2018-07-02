
/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

if exists (select * from sysobjects where id = object_id('dbo.VentaDpreCalc') and type = 'V') drop view dbo.VentaDpreCalc
GO
CREATE VIEW VentaDpreCalc
--//WITH ENCRYPTION
AS 
SELECT 
  d.*,
  "CantidadNeta" = Cantidad-ISNULL(CantidadCancelada, 0.0),
  "CantidadSinObsequios" = Cantidad-ISNULL(CantidadCancelada, 0.0)-ISNULL(CantidadObsequio, 0.0),
  "CantidadFactor" = (Cantidad-ISNULL(CantidadCancelada, 0.0))*Factor,
  "ReservadaFactor" = CantidadReservada*Factor,
  "OrdenadaFactor" = CantidadOrdenada*Factor,
  "PendienteFactor" = CantidadPendiente*Factor,
  "Impuesto1Base" = Impuesto1,
  "Impuesto2Base" = CASE WHEN v.Impuesto2Info=1 THEN 0.0 ELSE Impuesto2 END,
  "Impuesto3Base" = CASE WHEN v.Impuesto3Info=1 THEN 0.0 ELSE Impuesto3 END,
  "Impuesto2BaseImpuesto1" = CASE WHEN v.Impuesto2Info=1 OR v.Impuesto2BaseImpuesto1=0 THEN 0.0 ELSE Impuesto2 END,
  "ImpuestosPorcentaje" = convert(float, round((CASE WHEN v.Impuesto2Info=0 THEN ISNULL(Impuesto2,0.0) ELSE 0.0 END)+(ISNULL(Impuesto1, 0.0)*(1.0+((CASE WHEN v.Impuesto2Info=1 OR v.Impuesto2BaseImpuesto1=0 THEN 0.0 ELSE ISNULL(Impuesto2,0.0) END)/100))), 10.0)),
  "ImpuestosImporte"    = convert(float, ROUND((Cantidad-ISNULL(CantidadCancelada, 0.0))*ISNULL(CASE WHEN v.Impuesto3Info=1 THEN 0.0 ELSE Impuesto3 END, 0.0), dbo.fnRedondeoMonetarios())),
  "CostoTotal"          = convert(float, ROUND((Cantidad-ISNULL(CantidadCancelada, 0.0))*Costo, dbo.fnRedondeoMonetarios())),
  "CostoActividadTotal" = convert(float, ROUND((Cantidad-ISNULL(CantidadCancelada, 0.0))*CostoActividad, dbo.fnRedondeoMonetarios())),
  "PrecioTotal"         = convert(float, ROUND((Cantidad-ISNULL(CantidadCancelada, 0.0)-ISNULL(CantidadObsequio, 0.0))*Precio, dbo.fnRedondeoMonetarios())),
  "preImporte"          = convert(float, ROUND(((Cantidad-ISNULL(CantidadCancelada, 0.0)-ISNULL(CantidadObsequio, 0.0))*Precio)-ISNULL(case when DescuentoTipo='$' then DescuentoLinea else (Cantidad-ISNULL(CantidadCancelada, 0.0)-ISNULL(CantidadObsequio, 0.0))*Precio*(DescuentoLinea/100.0) end, 0.0), dbo.fnRedondeoMonetarios()))--,
  --"DescuentoLineal"     = convert(money, ROUND((case when DescuentoTipo='$' then DescuentoLinea else (Cantidad-ISNULL(CantidadCancelada, 0.0)-ISNULL(CantidadObsequio, 0.0))*Precio*(DescuentoLinea/100.0) end), dbo.fnRedondeoMonetarios()))

FROM
  VentaD d, Version v
GO