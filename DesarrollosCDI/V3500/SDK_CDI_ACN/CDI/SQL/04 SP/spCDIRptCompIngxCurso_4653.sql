SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--Desarrollo: Oscar Danell Moran
--Fecha: 06-Ene-2010
--Reporte Comparativo de Ingresos por Curso

IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIRptCompIngxCurso') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIRptCompIngxCurso
GO
CREATE PROCEDURE spCDIRptCompIngxCurso 
  @Comite     varchar(20),
  @Programa   varchar(20)
  AS BEGIN
  	
  	IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Comite = NULL
  	IF UPPER(@Programa) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Programa = NULL
  	
  	-----COSTOS CURSO	
    SELECT CEPlan.CDIClavePresupuestal, ce.proyecto,ce.programa,CEPrograma.Ciclo,ced.ceplan,CEPlan.Descripcion,
           CEPlan.CDICentrocostos,ceplan.precio,SUM(ced.cupo) AS 'Cupo'
      INTO #a
      FROM CE 
      JOIN ced on ce.ID = ced.ID
      JOIN CEPrograma ON ce.Programa = CEPrograma.Programa
      JOIN CEPlan ON ced.CEPlan = CEPlan.CEPlan
    WHERE ce.Mov = 'Alta Programa' AND ce.Estatus = 'CONCLUIDO' 
    AND ((@Comite = NULL) OR (@Comite <> NULL AND ce.Proyecto= @Comite))   
    AND ((@Programa = NULL) OR (@Programa <> NULL AND ce.Programa =@Programa))
    GROUP BY CEPlan.CDIClavePresupuestal, ce.Proyecto,ce.Programa,CEPrograma.Ciclo,ced.CEPlan,CEPlan.Descripcion,CEPlan.CDICentrocostos,CEPlan.Precio
    ORDER BY ce.Proyecto,ce.Programa
    
    --Socios Inscritos x Curso
    SELECT CEPlan.CDIClavePresupuestal, c.Proyecto,c.Programa,CEPrograma.Ciclo,c.CEPlan,CEPlan.Descripcion,
           COUNT(*) 'Inscritos' 
      INTO #b    
      FROM CE c 
      JOIN CEPrograma ON c.Programa = CEPrograma.Programa
      JOIN CEPlan ON c.ceplan = CEPlan.CEPlan
    WHERE c.Mov = 'Preregistro' AND c.Estatus = 'CONCLUIDO' 
          AND ((@Comite = NULL) OR (@Comite <> NULL AND c.Proyecto= @Comite))                                  
          AND ((@Programa = NULL) OR (@Programa <> NULL AND c.Programa= @Programa))                                          
    GROUP BY CEPlan.CDIClavePresupuestal, c.Proyecto,c.programa,c.CEPlan,CEPlan.Descripcion,CEPrograma.Ciclo
    ORDER BY c.Proyecto,c.Programa,c.CEPlan
    
    --Ingreso Real
    /*    
    SELECT CEPlan.CDIClavePresupuestal, ce.proyecto,ce.programa,ced.ceplan,CEPlan.CDICentrocostos,SUM(ISNULL(v2.Importe,0)+ISNULL(v2.Impuestos,0)) AS 'ImporteReal'
      INTO #c
      FROM ce 
      JOIN CED ON ce.ID = ced.ID
      JOIN CEPlan ON ce.CEPlan = CEPlan.CEPlan
      JOIN Venta v1 ON 'CE' = v1.OrigenTipo AND ce.Mov = v1.Origen AND ce.MovID = v1.OrigenID AND v1.Estatus = 'CONCLUIDO'
      JOIN Venta v2 ON 'VTAS' = v2.OrigenTipo AND v1.Mov = v2.Origen AND v1.MovID = v2.OrigenID AND v2.Estatus = 'CONCLUIDO'
    WHERE ce.Mov='PreRegistro' AND ce.Estatus = 'CONCLUIDO'   AND v2.Mov = 'Factura'
    --      AND ISNULL(v2.Proyecto,'')  = ISNULL(ISNULL(@Comite,v2.Proyecto),'')
    --      AND v2.FechaEmision BETWEEN @FechaD AND @FechaA 
    GROUP BY CEPlan.CDIClavePresupuestal, ce.proyecto,ce.programa,ced.ceplan,CEPlan.CDICentrocostos
    ORDER BY ce.Proyecto, ce.Programa,ced.CEPlan
    */
            
    SELECT e.CDIClavePresupuestal, a.proyecto,a.programa,b.ceplan,SUM(ISNULL(d.Importe,0)+ISNULL(d.Impuestos,0)) AS 'ImporteReal'
     INTO #c
      FROM Ce a 
           JOIN CeD b ON b.ID = a.ID
           JOIN Venta c ON c.Origen=a.Mov AND c.OrigenID=a.MovID AND c.OrigenTipo='CE'
           JOIN Venta v ON v.Origen=c.Mov AND v.OrigenID=c.MovID 
           JOIN Cxc d ON d.Origen=v.Mov AND d.OrigenID=v.MovID AND d.OrigenTipo='VTAS'
           JOIN CEPlan e ON e.CEPlan = a.CEPlan          
    WHERE a.Estatus='CONCLUIDO' AND a.Mov='PreRegistro'
          AND ((@Comite = NULL) OR (@Comite <> NULL AND a.Proyecto= @Comite))                                  
          AND ((@Programa = NULL) OR (@Programa <> NULL AND a.Programa= @Programa))                            
    GROUP BY e.CDIClavePresupuestal, a.proyecto,a.programa,b.ceplan
    ORDER BY a.Proyecto, a.Programa, b.CEPlan
    
    --Becas
    SELECT C2.CDIClavePresupuestal, c.Proyecto,c.Programa,c2.CEPlan,SUM(ISNULL(c.Importe,0)) AS 'ImporteBeca'
      INTO #d
      FROM CE c
      JOIN CED ON c.ID = ced.ID
      LEFT OUTER JOIN Cte ON c.Cliente = Cte.Cliente
      LEFT OUTER JOIN CEPlan c2 ON ced.CEPlan = c2.CEPlan
      LEFT OUTER JOIN CEPrograma c3 ON c.Programa = c3.Programa
    WHERE c.Mov = 'Solicitud Beca' AND c.Estatus = 'AUTORIZADO'
      AND ((@Comite = NULL) OR (@Comite <> NULL AND c.Proyecto= @Comite))                                  
          AND ((@Programa = NULL) OR (@Programa <> NULL AND c.Programa= @Programa))                            
    GROUP BY C2.CDIClavePresupuestal, c.Proyecto,c.Programa,c2.CEPlan
    ORDER BY c.Proyecto,c2.CEPlan,c.Programa
  
  
    --Tabla Final
    SELECT a.CDIClavePresupuestal, a.Proyecto,a.Programa,a.Ciclo,a.CEPlan,a.Descripcion,a.Precio,a.Cupo,ISNULL(b.Inscritos,0) AS 'Inscritos',
          (ISNULL(a.Precio,0)*ISNULL(a.Cupo,0)) AS 'IngEst',ISNULL(c.ImporteReal,0) AS 'ImporteReal',ISNULL(d.ImporteBeca,0) AS 'Beca'
          --((ISNULL(a.Precio,0)*ISNULL(a.Cupo,0))-ISNULL(c.ImporteReal,0))/((ISNULL(a.Precio,0)*ISNULL(a.Cupo,0)) * 100) AS 'Varia'        
      FROM #a a
      LEFT OUTER JOIN #b b ON a.Proyecto = b.Proyecto AND a.Programa = b.Programa AND a.CEPlan = b.CEPlan
      LEFT OUTER JOIN #c c ON a.Proyecto = c.Proyecto AND a.Programa = c.Programa AND a.CEPlan = c.CEPlan 
      LEFT OUTER JOIN #d d ON a.Proyecto = d.Proyecto AND a.Programa = d.Programa AND a.CEPlan = d.CEPlan
    ORDER BY a.Proyecto,a.Programa,a.CEPlan, a.CDIClavePresupuestal
    
  END
  GO
--EXEC spCDIRptCompIngxCurso  '(TODOS)','(TODOS)'