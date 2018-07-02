SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--Desarrollo: Oscar Danell Moran
--Fecha: 14-Dic-2010
--Reporte de Ingreso vs Egresos por Academia

IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIRptIngVsEgrAcademia') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIRptIngVsEgrAcademia
GO
CREATE PROCEDURE spCDIRptIngVsEgrAcademia 
  @Comite     varchar(20),
  @Programa   varchar(20)
  AS BEGIN
	
	IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Comite = NULL 
	--IF UPPER(@Programa) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Programa = NULL 

DECLARE 
	
	@FechaD		DATETIME,
	@FechaA		DATETIME
	
  ---COSTOS CURSO
  SELECT @FechaD= c.FechaInicio, @FechaA=c.FechaFin FROM CEPrograma c WHERE c.Programa=@Programa
  
  
  
 
  SELECT CEPlan.CDIClavePresupuestal, ce.Proyecto, ce.Programa,CEPrograma.ciclo,ced.CEPlan,CEPlan.Descripcion, CEPlan.Coordinacion,
         SUM(ced.Precio) AS 'Precio'
    INTO #A
    FROM ce
    JOIN CED ON ce.ID = ced.ID 
    JOIN CEPrograma ON ce.Programa = CEPrograma.Programa
    JOIN CEPlan ON ced.CEPlan = CEPlan.CEPlan
  WHERE ce.Mov = 'Alta Programa' AND ce.Estatus = 'CONCLUIDO' 
        AND ISNULL(ce.Proyecto,'')  = ISNULL(ISNULL(@Comite,ce.Proyecto),'') 
        AND ISNULL(ce.Programa,'') = ISNULL(ISNULL(@Programa,ce.Programa),'')
  GROUP BY CEPlan.CDIClavePresupuestal, ce.Proyecto,ce.Programa,ced.CEPlan,CEPlan.Coordinacion,CEPlan.Descripcion,CEPrograma.Ciclo
  ORDER BY ce.Proyecto,ce.Programa,ced.CEPlan, CEPlan.Coordinacion

  ---INSCRITOS EN CADA CURSO
 
  SELECT c.CDIClavePresupuestal, c.Proyecto,c.Programa,CEPrograma.Ciclo,c.CEPlan,CEPlan.Descripcion, CEPlan.Coordinacion,
         COUNT(*) 'Inscritos' 
    INTO #b    
    FROM CE c 
    JOIN CEPrograma ON c.Programa = CEPrograma.Programa
    JOIN CEPlan ON c.ceplan = CEPlan.CEPlan
  WHERE c.Mov = 'Preregistro' AND c.Estatus = 'CONCLUIDO' 
        AND ISNULL(c.Proyecto,'')  = ISNULL(ISNULL(@Comite,c.Proyecto),'') 
        AND ISNULL(c.Programa,'') = ISNULL(ISNULL(@Programa,c.Programa),'')
  GROUP BY c.CDIClavePresupuestal, c.Proyecto,c.programa,c.CEPlan,CEPlan.Coordinacion,CEPlan.Descripcion,CEPrograma.Ciclo
  ORDER BY c.Proyecto,c.Programa,c.CEPlan, CEPlan.Coordinacion

  ---INGRESOS
  
  SELECT ce.CDIClavePresupuestal, ce.Proyecto,ce.Programa,CEPrograma.Ciclo,ce.CEPlan,CEPlan.Descripcion, CEPlan.Coordinacion,
         v2.Importe,v2.Impuestos
    INTO #c     
    FROM ce 
    JOIN CEPrograma ON ce.Programa = CEPrograma.Programa
    JOIN CEPlan ON ce.CEPlan = CEPlan.CEPlan
    JOIN Venta v1 ON 'CE' = v1.OrigenTipo AND ce.Mov = v1.Origen AND ce.MovID = v1.OrigenID 
    JOIN Venta v2 ON 'VTAS' = v2.OrigenTipo AND v1.Mov = v2.Origen AND v1.MovID = v2.OrigenID
  WHERE ce.Mov='PreRegistro' AND ce.Estatus = 'CONCLUIDO' AND v1.Estatus = 'CONCLUIDO' AND v2.Estatus = 'CONCLUIDO' 
        AND ISNULL(ce.Proyecto,'')  = ISNULL(ISNULL(@Comite,ce.Proyecto),'') 
        AND ISNULL(ce.Programa,'') = ISNULL(ISNULL(@Programa,ce.Programa),'')
  ORDER BY ce.CDIClavePresupuestal, v2.Proyecto, CEPlan.Coordinacion, v2.FechaEmision

  SELECT #c.CDIClavePresupuestal,Proyecto,Programa,Ciclo,CEPlan,Descripcion,SUM(Importe) AS 'Importe',SUM(Impuestos) AS 'Impuestos'
    INTO #d
    FROM #c
  GROUP BY #c.CDIClavePresupuestal, Proyecto,Programa,Ciclo,CEPlan,Descripcion 
  ORDER BY proyecto,Programa,CEPlan 

  
  --EGRESOS
    SELECT gd.ClavePresupuestal, gd.Importe AS 'ImporteE'
    INTO #Egresos
    FROM Gasto g 
    JOIN Gastod gd ON g.id = gd.id
  WHERE g.Mov IN ('GASTO','ANTICIPO') AND g.Estatus = 'CONCLUIDO'
  AND g.FechaEmision BETWEEN @FechaD AND @FechaA
  UNION ALL
  SELECT ct.ClavePresupuestal,  ct.Subtotal
    FROM CompraTCalc ct
  WHERE Mov = 'Entrada Compra' AND Estatus = 'CONCLUIDO'
  AND ct.FechaEmision BETWEEN @FechaD AND @FechaA


  SELECT  ClavePresupuestal, SUM(ImporteE) AS 'Egresos'
    INTO #e
    FROM #Egresos
  GROUP BY  ClavePresupuestal 
  ORDER BY ClavePresupuestal

  ---TABLA FINAL
 
  
  SELECT a.CDIClavePresupuestal, a.Proyecto, a.Programa,a.ciclo,a.CEPlan,a.Descripcion,a.precio,isnull(b.Inscritos,0) AS 'Inscritos',isnull(d.Importe,0) AS 'Importe' ,SUM (isnull(e.Egresos,0)) AS 'Egresos',
         Sum(isnull(d.Importe,0)-isnull(e.Egresos,0)) AS 'Variacion', a.Coordinacion
    FROM #a a
    LEFT OUTER JOIN #b b ON isnull(a.Proyecto,'') = isnull(b.Proyecto,'') AND a.Programa = b.Programa AND a.CEPlan = b.CEPlan AND a.CDIClavePresupuestal=b.CDIClavePresupuestal
    LEFT OUTER JOIN #d d ON isnull(a.Proyecto,'') = isnull(d.Proyecto,'') AND a.Programa = d.Programa AND a.CEPlan = d.CEPlan AND d.CDIClavePresupuestal=b.CDIClavePresupuestal
    LEFT OUTER JOIN CDIClavePresupuestalRelacion cpr ON d.CDIClavePresupuestal=cpr.ClavePresupuestal
    LEFT OUTER JOIN #e e ON  e.ClavePresupuestal=cpr.ClaveRelacionada
 
  GROUP BY a.CDIClavePresupuestal, a.Proyecto, a.Programa,a.ciclo,a.CEPlan,a.Coordinacion,a.Descripcion, a.precio,b.Inscritos,d.importe--,e.egresos 
   ORDER BY a.Proyecto,a.Programa,a.Coordinacion,a.CEPlan
    
END 
GO

--EXEC spCDIRptIngVsEgrAcademia 'Actividades','PER.2012-1'


 