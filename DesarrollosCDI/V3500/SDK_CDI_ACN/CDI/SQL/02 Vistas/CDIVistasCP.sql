SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

-- Desarrollo. HISTORICO DEL PRESUPUESTO - ANTIPROYECTO vs PRESUPUESTO ASIGNADO
-- Cliente   . CDI
-- Folio     . 4823
-- Fecha     . 26 / 11 / 10
-- Autor     . EDER MENDOZA

---------------------------------------------------------
-------- C D I H I S T O R I C O P R E S U P ------------
---------------------------------------------------------Vista Principal para Generación de Herramienta Histórico Presupuesto
IF EXISTS(SELECT * FROM sysobjects WHERE ID = Object_ID('dbo.CDIHistoricoPresup') AND SYSSTAT & 0XF = 2) DROP VIEW dbo.CDIHistoricoPresup
GO
CREATE VIEW dbo.CDIHistoricoPresup
AS 
 SELECT C.Empresa,		C.ID,			C.Mov,			C.MovID,	MT.Clave,	C.FechaEmision,	D.ClavePresupuestal,	E.Descripcion AS Nombre, 
		D.Importe,		D.Presupuesto,	D.Disponible,	D.Tipo,		C.Estatus,	C.Proyecto,		
		'Ejercicio' = (D.Comprometido + D.Comprometido2 + D.Devengado + D.Devengado2 + D.Ejercido + D.EjercidoPagado),			
		C.Referencia, 
		C.OrigenTipo,	C.Origen,		C.OrigenID,		D.Ejercido,
		Anteproyecto = CASE WHEN ISNULL(D.Tipo, '') = 'Ampliacion' AND ISNULL(C.OrigenTipo, '') = ''   AND ISNULL(C.Origen, '') = ''             AND ISNULL(C.OrigenID, '') = '' AND ISNULL(D.disponible, '') = ' ' THEN D.Importe ELSE 0.0 END,
		PresupuestoA = CASE WHEN        D.Tipo      = 'Ampliacion' AND        C.OrigenTipo      = 'CP' AND        C.Origen      = 'Borrador' AND        C.OrigenID IS NOT NULL THEN D.Presupuesto ELSE 0.0 END,
		Ampliaciones = CASE WHEN ISNULL(D.Tipo, '') = 'Ampliacion' AND ISNULL(C.OrigenTipo, '') = ''   AND ISNULL(C.Origen, '') = ''             AND ISNULL(C.OrigenID, '') = ''   THEN (isnull(D.Disponible,0.0) - isnull(D.RemanenteDisponible,0.0))  ELSE 0.0 END,
		Reducciones  = CASE WHEN ISNULL(D.Tipo, '') = 'Reduccion'  AND ISNULL(C.OrigenTipo, '') = ''   AND ISNULL(C.Origen, '') = ''             AND ISNULL(C.OrigenID, '') = ''   THEN D.Importe     ELSE 0.0 END
  FROM CP C
  JOIN CPD D 
    ON D.ID = C.ID
  LEFT OUTER JOIN MovTipo MT 
    ON MT.Mov = C.Mov AND MT.Modulo = 'CP' AND MT.Clave IN ('CP.TA', 'CP.AS', 'CP.AP', 'CP.OP')
  LEFT OUTER JOIN ClavePresupuestal E 
    ON D.ClavePresupuestal = E.ClavePresupuestal
GO


---------------------------------------------------------
-------- C D I H I S T O R I C O P R E S U P ------------
---------------------------------------------------------Vista Resumen de Herramienta Histórico Presupuesto
IF EXISTS(SELECT * FROM sysobjects WHERE ID = Object_ID('dbo.CDIHistoricoPresupResumen') AND SYSSTAT & 0XF = 2) DROP VIEW dbo.CDIHistoricoPresupResumen
GO

CREATE VIEW dbo.CDIHistoricoPresupResumen
AS

 SELECT	Empresa, Proyecto, Ejercicio = YEAR(FechaEmision), ClavePresupuestal,  Nombre, /*Importe = SUM(Importe),*/   Ejercido = ISNULL(SUM(Ejercido),0.0),
        Anteproyecto = ISNULL(SUM(Anteproyecto), 0.0), PresupuestoA = ISNULL(SUM(PresupuestoA), 0.0), Ampliaciones = ISNULL(SUM(Ampliaciones), 0.0), Reducciones = ISNULL(SUM(Reducciones), 0.0),
        Disponible   = SUM(ISNULL(PresupuestoA, 0.0)+ISNULL(Ampliaciones, 0.0)-ISNULL(Reducciones, 0.0)-ISNULL(Ejercido, 0.0))
   FROM CDIHistoricoPresup
  WHERE Clave       IN ('CP.AP','CP.AS','CP.OP', 'CP.TA') 
    AND Estatus NOT IN ('SINAFECTAR', 'CANCELADO')
  GROUP BY Empresa,ClavePresupuestal,Nombre,Proyecto,YEAR(FechaEmision)
 
GO
---SELECT * FROM CDIHistoricoPresup



