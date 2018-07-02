if exists (select * from sysobjects where id = object_id('dbo.CDICPNeto') and sysstat & 0xf = 2) drop view dbo.CDICPNeto
GO
CREATE VIEW CDICPNeto
--//WITH ENCRYPTION
AS
SELECT e.Empresa,
       e.Proyecto,
       d.ClavePresupuestal, 
       'Presupuesto'		=		ISNULL(SUM(d.Presupuesto*e.TipoCambio), 0.0),
       'Comprometido'		=		ISNULL(SUM(d.Comprometido*e.TipoCambio), 0.0),
       'Comprometido2'		=		ISNULL(SUM(d.Comprometido2*e.TipoCambio), 0.0),
       'Devengado'			=		ISNULL(SUM(d.Devengado*e.TipoCambio), 0.0),
       'Devengado2'			=		ISNULL(SUM(d.Devengado2*e.TipoCambio), 0.0),
       'Ejercido'			=		ISNULL(SUM(d.Ejercido*e.TipoCambio), 0.0),
       'EjercidoPagado'		=		ISNULL(SUM(d.EjercidoPagado), 0.0),
       'RemanenteDisponible'=		ISNULL(SUM(d.RemanenteDisponible*e.TipoCambio), 0.0),
       'Anticipos'			=		ISNULL(SUM(d.Anticipos*e.TipoCambio), 0.0),
       'Sobrante'			=		ISNULL(SUM(d.Sobrante*e.TipoCambio), 0.0),
       'Disponible'			=		ISNULL(SUM(d.Disponible), 0.0),
       'Ejercicio'			=		e.Ejercicio
  FROM CPD d
  JOIN CP e ON e.ID = d.ID AND e.Estatus = 'CONCLUIDO'
  JOIN MovTipo mt ON mt.Modulo = 'CP' AND mt.Mov = e.Mov AND mt.Clave IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.OP')
 GROUP BY e.Empresa, e.Proyecto, d.ClavePresupuestal, e.Ejercicio

GO

