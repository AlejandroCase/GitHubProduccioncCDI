/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
if exists (select * from sysobjects where id = object_id('dbo.CDICPEjercicioPeriodoNeto') and sysstat & 0xf = 2) drop view dbo.CDICPEjercicioPeriodoNeto
GO
CREATE VIEW CDICPEjercicioPeriodoNeto
--//WITH ENCRYPTION
AS
SELECT e.Empresa,
       e.Proyecto,
       e.Ejercicio,
       e.Periodo,
       d.ClavePresupuestal,
       'Presupuesto' = ISNULL(SUM(d.Presupuesto*e.TipoCambio), 0.0) - 
                      (SELECT ISNULL(SUM(cd.Presupuesto*c.TipoCambio), 0.0) 
                         FROM CP c LEFT JOIN CPD cd ON cd.ID = c.ID 
                        WHERE Mov = 'Cambio Proceso Mes13' AND c.Ejercicio = e.Ejercicio AND cd.ClavePresupuestal= d.ClavePresupuestal 
                              AND Estatus = 'CONCLUIDO' AND c.Empresa = e.Empresa AND c.Proyecto = e.Proyecto AND c.Periodo = e.Periodo),
       'Comprometido' = ISNULL(SUM(d.Comprometido*e.TipoCambio), 0.0),
       'Comprometido2' = ISNULL(SUM(d.Comprometido2*e.TipoCambio), 0.0),
       'Devengado' = ISNULL(SUM(d.Devengado*e.TipoCambio), 0.0),
       'Devengado2' = ISNULL(SUM(d.Devengado2*e.TipoCambio), 0.0),
       
       -- 'Ejercido' = ISNULL(SUM(d.Ejercido*e.TipoCambio), 0.0),
       'Ejercido' = ISNULL(SUM(d.Comprometido*e.TipoCambio), 0.0) + ISNULL(SUM(d.Comprometido2*e.TipoCambio), 0.0) + ISNULL(SUM(d.Devengado*e.TipoCambio), 0.0) + ISNULL(SUM(d.Devengado2*e.TipoCambio), 0.0) + ISNULL(SUM(d.Ejercido*e.TipoCambio), 0.0) + ISNULL(SUM(d.EjercidoPagado*e.TipoCambio), 0.0),
       
       'EjercidoPagado' = ISNULL(SUM(d.EjercidoPagado*e.TipoCambio), 0.0),
       'RemanenteDisponible' = ISNULL(SUM(d.RemanenteDisponible*e.TipoCambio), 0.0),
       'Anticipos' = ISNULL(SUM(d.Anticipos*e.TipoCambio), 0.0),
       'Sobrante' = ISNULL(SUM(d.Sobrante*e.TipoCambio), 0.0),
       
       --'Disponible' = ISNULL(SUM(d.Disponible*e.TipoCambio), 0.0)
       'Disponible' = (ISNULL(SUM(d.Presupuesto*e.TipoCambio), 0.0)) - ((ISNULL(SUM(d.Comprometido*e.TipoCambio), 0.0) + ISNULL(SUM(d.Comprometido2*e.TipoCambio), 0.0) + ISNULL(SUM(d.Devengado*e.TipoCambio), 0.0) + ISNULL(SUM(d.Devengado2*e.TipoCambio), 0.0) + ISNULL(SUM(d.Ejercido*e.TipoCambio), 0.0) + ISNULL(SUM(d.EjercidoPagado*e.TipoCambio), 0.0)) + ISNULL(SUM(d.RemanenteDisponible*e.TipoCambio), 0.0)+ (
                       ISNULL(SUM(d.Sobrante*e.TipoCambio), 0.0) +
                 (SELECT ISNULL(SUM(cd.Presupuesto*c.TipoCambio), 0.0)
                    FROM CP c 
                         LEFT JOIN CPD cd ON cd.ID =c.ID
                         LEFT JOIN CPCal c2 ON c2.ID = cd.ID AND c2.ClavePresupuestal = cd.ClavePresupuestal
                         LEFT JOIN MovTipo mt ON mt.Mov = c.Mov AND mt.Modulo = 'CP'
                  WHERE mt.SubClave = 'CP.TAMTR' AND c2.Tipo = 'Ampliacion' AND cd.Tipo = 'Ampliacion' AND c2.Periodo = 13 AND c.Ejercicio = e.Ejercicio 
                        AND cd.ClavePresupuestal= d.ClavePresupuestal AND Estatus = 'CONCLUIDO' AND c.Empresa = e.Empresa 
                        AND c.Proyecto = e.Proyecto AND c.Periodo = e.Periodo) +
                 (SELECT ISNULL(SUM(cd.Presupuesto*c.TipoCambio), 0.0)
                    FROM CP c 
                         LEFT JOIN CPD cd ON cd.ID =c.ID
                         LEFT JOIN CPCal c2 ON c2.ID = cd.ID AND c2.ClavePresupuestal = cd.ClavePresupuestal
                         LEFT JOIN MovTipo mt ON mt.Mov = c.Mov AND mt.Modulo = 'CP'
                  WHERE mt.SubClave = 'CP.TAMTR' AND c2.Tipo = 'Reduccion' AND cd.Tipo = 'Reduccion' AND c2.Periodo = 13 AND c.Ejercicio = e.Ejercicio 
                        AND cd.ClavePresupuestal= d.ClavePresupuestal AND Estatus = 'CONCLUIDO' AND c.Empresa = e.Empresa 
                        AND c.Proyecto = e.Proyecto AND c.Periodo = e.Periodo)                               
                 )) -  
                (SELECT ISNULL(SUM(cd.Presupuesto*c.TipoCambio), 0.0) 
                        FROM CP c LEFT JOIN CPD cd ON cd.ID = c.ID 
                       WHERE Mov = 'Cambio Proceso Mes13' AND c.Ejercicio = e.Ejercicio AND cd.ClavePresupuestal= d.ClavePresupuestal 
                              AND Estatus = 'CONCLUIDO' AND c.Empresa = e.Empresa AND c.Proyecto = e.Proyecto AND c.Periodo = e.Periodo),
       'Mes13' = ISNULL(SUM(d.Sobrante*e.TipoCambio), 0.0) +
                 (SELECT ISNULL(SUM(cd.Presupuesto*c.TipoCambio), 0.0)
                    FROM CP c 
                         LEFT JOIN CPD cd ON cd.ID =c.ID
                         LEFT JOIN CPCal c2 ON c2.ID = cd.ID AND c2.ClavePresupuestal = cd.ClavePresupuestal
                         LEFT JOIN MovTipo mt ON mt.Mov = c.Mov AND mt.Modulo = 'CP'
                  WHERE mt.SubClave = 'CP.TAMTR' AND c2.Tipo = 'Ampliacion' AND cd.Tipo = 'Ampliacion' AND c2.Periodo = 13 AND c.Ejercicio = e.Ejercicio 
                        AND cd.ClavePresupuestal= d.ClavePresupuestal AND Estatus = 'CONCLUIDO' AND c.Empresa = e.Empresa 
                        AND c.Proyecto = e.Proyecto AND c.Periodo = e.Periodo) +
                 (SELECT ISNULL(SUM(cd.Presupuesto*c.TipoCambio), 0.0)
                    FROM CP c 
                         LEFT JOIN CPD cd ON cd.ID =c.ID
                         LEFT JOIN CPCal c2 ON c2.ID = cd.ID AND c2.ClavePresupuestal = cd.ClavePresupuestal
                         LEFT JOIN MovTipo mt ON mt.Mov = c.Mov AND mt.Modulo = 'CP'
                  WHERE mt.SubClave = 'CP.TAMTR' AND c2.Tipo = 'Reduccion' AND cd.Tipo = 'Reduccion' AND c2.Periodo = 13 AND c.Ejercicio = e.Ejercicio 
                        AND cd.ClavePresupuestal= d.ClavePresupuestal AND Estatus = 'CONCLUIDO' AND c.Empresa = e.Empresa 
                        AND c.Proyecto = e.Proyecto AND c.Periodo = e.Periodo) 
  FROM CPD d
  JOIN CP e ON e.ID = d.ID AND e.Estatus = 'CONCLUIDO'
  JOIN MovTipo mt ON mt.Modulo = 'CP' AND mt.Mov = e.Mov AND mt.Clave IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.OP')
 GROUP BY e.Empresa, e.Proyecto, e.Ejercicio, e.Periodo, d.ClavePresupuestal
GO

IF EXISTS(SELECT * FROM sysobjects WHERE ID = Object_ID('dbo.CDIHistoricoPresupMes13') AND SYSSTAT & 0XF = 2) DROP VIEW dbo.CDIHistoricoPresupMes13
GO
CREATE VIEW dbo.CDIHistoricoPresupMes13
AS 
 SELECT C.Empresa,		C.ID,			C.Mov,			C.MovID,	MT.Clave,	C.FechaEmision,	D.ClavePresupuestal,	E.Descripcion AS Nombre, 
		D.Importe,		D.Presupuesto,	D.Disponible,	D.Tipo,		C.Estatus,	C.Proyecto,		
		'Ejercicio' = C.Ejercicio, --(D.Comprometido + D.Comprometido2 + D.Devengado + D.Devengado2 + D.Ejercido + D.EjercidoPagado),			
		C.Referencia, 
		C.OrigenTipo,	C.Origen,		C.OrigenID,		D.Ejercido,
		Anteproyecto = CASE WHEN ISNULL(D.Tipo, '') = 'Ampliacion' AND ISNULL(C.OrigenTipo, '') = ''   AND ISNULL(C.Origen, '') = ''             AND ISNULL(C.OrigenID, '') = '' AND ISNULL(D.disponible, '') = ' ' THEN D.Importe ELSE 0.0 END,
		PresupuestoA = CASE WHEN        D.Tipo      = 'Ampliacion' AND        C.OrigenTipo      = 'CP' AND        C.Origen      = 'Borrador' AND        C.OrigenID IS NOT NULL THEN D.Presupuesto ELSE 0.0 END,
		Ampliaciones = CASE WHEN ISNULL(D.Tipo, '') = 'Ampliacion' AND ISNULL(C.OrigenTipo, '') = ''   AND ISNULL(C.Origen, '') = ''             AND ISNULL(C.OrigenID, '') = ''   
		               THEN (isnull(D.Disponible,0.0) - isnull(D.RemanenteDisponible,0.0))  - 
                      (SELECT ISNULL(SUM(cd2.Presupuesto*c2.TipoCambio), 0.0) 
                         FROM CP c2 LEFT JOIN CPD cd2 ON cd2.ID = c2.ID 
                        WHERE Mov = 'Cambio Proceso Mes13' AND cd2.ClavePresupuestal= d.ClavePresupuestal 
                              AND c2.Estatus = 'CONCLUIDO' AND c2.Empresa = c.Empresa AND c2.Proyecto = c.Proyecto AND c2.Periodo = c.Periodo) 
		               ELSE 0.0 END,
		Reducciones  = CASE WHEN ISNULL(D.Tipo, '') = 'Reduccion'  AND ISNULL(C.OrigenTipo, '') = ''   AND ISNULL(C.Origen, '') = ''             AND ISNULL(C.OrigenID, '') = ''   THEN D.Importe     ELSE 0.0 END
  FROM CP C
  JOIN CPD D 
    ON D.ID = C.ID
  LEFT OUTER JOIN MovTipo MT 
    ON MT.Mov = C.Mov AND MT.Modulo = 'CP' AND MT.Clave IN ('CP.TA', 'CP.AS', 'CP.AP', 'CP.OP')
  LEFT OUTER JOIN ClavePresupuestal E 
    ON D.ClavePresupuestal = E.ClavePresupuestal
GO



