SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--Desarrollo: Oscar Danell Moran
--Fecha: 13-Dic-2010
--Reporte de Ingresos Academias

IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIRptIngresosAcademias') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIRptIngresosAcademias
GO
CREATE PROCEDURE spCDIRptIngresosAcademias 
  @Empresa     varchar(5),
  @Comite      varchar(20),
  @FechaD      datetime,
  @FechaA      datetime
  AS BEGIN
  	IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Comite = NULL 
  	
  	SELECT /*ce.empresa,ce.mov,ce.movid,ce.Proyecto,ce.programa,ce.ceplan,ce.Importe,ce.Impuestos,ce.fechaemision,
       v1.Empresa, v1.OrigenTipo, v1.Origen, v1.OrigenID, v1.Mov, v1.MovID,v1.Importe,v1.Impuestos,v1.fechaemision, v1.Proyecto,*/
       v2.Empresa, v2.OrigenTipo, v2.Origen, v2.OrigenID, v2.Mov, v2.MovID,v2.Importe,v2.Impuestos,v2.FechaEmision, v2.Proyecto,ce.CEPlan,
       CEPlan.Coordinacion,CEPlan.area
      INTO #a
      FROM ce 
      JOIN CEPlan ON ce.CEPlan = CEPlan.CEPlan
      JOIN Venta v1 ON 'CE' = v1.OrigenTipo AND ce.Mov = v1.Origen AND ce.MovID = v1.OrigenID 
      JOIN Venta v2 ON 'VTAS' = v2.OrigenTipo AND v1.Mov = v2.Origen AND v1.MovID = v2.OrigenID
    WHERE ce.Mov='PreRegistro' AND ce.Estatus = 'CONCLUIDO' AND v1.Estatus = 'CONCLUIDO' AND v2.Estatus = 'CONCLUIDO' AND v2.Empresa = @Empresa
          AND ISNULL(v2.Proyecto,'')  = ISNULL(ISNULL(@Comite,v2.Proyecto),'')
          AND v2.FechaEmision BETWEEN @FechaD AND @FechaA 
    ORDER BY v2.Proyecto, ceplan.Coordinacion, v2.FechaEmision
    
    SELECT Empresa, Mov, Proyecto, Coordinacion, SUM(isnull(Importe,0)) AS 'Importe', SUM(isnull(Impuestos,0)) AS 'Impuestos', 
           (SUM(isnull(Importe,0)) + Sum(isnull(Impuestos,0))) AS 'ImporteT'
      FROM #A
    GROUP BY Empresa, Mov, Proyecto, Coordinacion--, FechaEmision
    ORDER BY Proyecto, Coordinacion
  		
  END
  
  GO
  
  --spCDIRptIngresosAcademias 'CDI',NULL,'2010-10-01','2010-31-12'
  


  
