SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

  -- Desarrollo. REPORTE GENERAL DE GASTOS
  -- Cliente   . CDI
  -- Folio     . 4698
  -- Fecha     . 02 / 12 / 10
  -- Autor     . EDER MENDOZA

		
---------------------------------------------------------------
-------- S P C D I R E P G E N E R A L G A S T O S ------------
---------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepGeneralGastos') AND type = 'P') DROP PROCEDURE dbo.spCDIRepGeneralGastos
GO

CREATE PROCEDURE spCDIRepGeneralGastos
    	  @Empresa			varchar(5),		  
		  @Proyecto			varchar(50),  
   		  @Periodo			int,
		  @Ejercicio		int
AS
BEGIN   
  DECLARE @FechaL	varchar(25),
		  @Fecha	datetime,
		  @Dia		int		 	
  CREATE TABLE #GeneralGastos
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	   
   IDMov				int,
   Mov					varchar(20),
   MovID				varchar(20),
   EmpresaCDI			varchar(5),	      
   ClavePresupuestal	varchar(50),	      
   DescripcionCP		varchar(255),	
   Comite				varchar(50),
   DescripcionProy		varchar(100),	 
   Tipo					varchar(50),
   PresupuestoTotal		money,  
   EjercidoTeorico		money default 0,
   EjercidoReal			money,		
   )


  SELECT @FechaL  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)
  SELECT @Fecha   = CONVERT(datetime,@FechaL)
  SELECT @Fecha   = DATEADD (mm,1,@Fecha)
  SELECT @Fecha   = DATEDIFF(dd,1,@Fecha) 
  SELECT @Dia     = DATEPART(dd,@Fecha) 
 
  IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL 

  INSERT INTO #GeneralGastos
  SELECT  C.ID, C.Mov, C.MovID, C.Empresa,  CD.ClavePresupuestal, Cl.Descripcion, ISNULL(C.Proyecto,'SIN PROYECTO'), P.Descripcion, 'Presupuesto Total y Ejercido Teoria', 
          ISNULL(CD.Importe,0) * MT1.Factor AS PresupuestoTotal,	
          ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)) FROM CPCal CC WHERE CC.Tipo = 'Ampliacion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio),0) AS EjercidoTeorico,	
          0.00 AS EjercidoReal	  
    FROM CP C
   INNER JOIN CPD CD
      ON CD.ID = C.ID 
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13') AND MT1.SubClave NOT IN ('CP.TAMTR')
   INNER JOIN ClavePresupuestal Cl
      ON CL.ClavePresupuestal = CD.ClavePresupuestal
   LEFT JOIN Proy P
      ON P.Proyecto = C.Proyecto
   WHERE C.Estatus              = 'CONCLUIDO'
     AND C.Empresa              = @Empresa  
     AND C.Periodo             >= 1
     AND C.Periodo             <= @Periodo 
     AND C.Ejercicio			= @Ejercicio 
     AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')       
     AND ISNULL(CD.ClavePresupuestal,'')<> '' 
     AND CD.Tipo					= 'Ampliacion'
   UNION ALL
  SELECT  C.ID, C.Mov, C.MovID, C.Empresa,  CD.ClavePresupuestal, Cl.Descripcion, ISNULL(C.Proyecto,'SIN PROYECTO'), P.Descripcion, 'Presupuesto Total y Ejercido Teoria',  
          ((ISNULL(CD.Importe,0))*-1) * MT1.Factor AS PresupuestoTotal,  
		  ISNULL((SELECT SUM((ISNULL(CC.Importe,0.00))*-1) FROM CPCal CC WHERE CC.Tipo = 'Reduccion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio),0) AS EjercidoTeorico,  
		  0.00 AS EjercidoReal  
    FROM CP C  
   INNER JOIN CPD CD ON CD.ID = C.ID  
   INNER JOIN MovTipo MT1 ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13') AND MT1.SubClave NOT IN ('CP.TAMTR')
   INNER JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = CD.ClavePresupuestal  
    LEFT JOIN Proy P ON P.Proyecto = C.Proyecto  
   WHERE C.Estatus              = 'CONCLUIDO'  
     AND C.Empresa              = @Empresa  
	 AND C.Periodo             >= 1  
	 AND C.Periodo             <= @Periodo  
	 AND C.Ejercicio   = @Ejercicio  
	 AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')  
	 AND ISNULL(CD.ClavePresupuestal,'')<> ''  
	 AND CD.Tipo					= 'Reduccion'     
   UNION ALL
  SELECT  C.ID, C.Mov, C.MovID, C.Empresa,  CD.ClavePresupuestal, Cl.Descripcion, ISNULL(C.Proyecto,'SIN PROYECTO'), P.Descripcion, 'Presupuesto Total y Ejercido Teoria', 
          ISNULL(CD.Presupuesto,0) * MT1.Factor AS PresupuestoTotal,	
          ISNULL(CD.Presupuesto,0) * MT1.Factor AS EjercidoTeorico,	
          0.00 AS EjercidoReal	  
    FROM CP C
   INNER JOIN CPD CD
      ON CD.ID = C.ID 
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov
   INNER JOIN ClavePresupuestal Cl
      ON CL.ClavePresupuestal = CD.ClavePresupuestal
   LEFT JOIN Proy P
      ON P.Proyecto = C.Proyecto
   WHERE C.Estatus              = 'CONCLUIDO'
     AND C.Empresa              = @Empresa  
     AND C.Periodo             >= 1
     AND C.Periodo             <= @Periodo 
     AND C.Ejercicio			= @Ejercicio 
     AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')       
     AND ISNULL(CD.ClavePresupuestal,'')<> '' 
     AND C.Mov					= 'Traspaso Remanente'
   UNION ALL
  SELECT C.ID, C.Mov, C.MovID, C.Empresa,  CD.ClavePresupuestal, Cl.Descripcion, ISNULL(C.Proyecto,'SIN PROYECTO'),P.Descripcion,'Ejercido Real', 
         0.00 AS PresupuestoTotal,	
         0.00 AS EjercidoTeorico,	
         SUM(ISNULL(cd.Comprometido,0)) +SUM(ISNULL(cd.Comprometido2,0))+SUM(ISNULL(CD.Devengado,0))+SUM(ISNULL(CD.Devengado2,0))+SUM(ISNULL(cd.Ejercido,0))+SUM(ISNULL(cd.EjercidoPagado,0)) * MT1.Factor AS EjercidoAFecha2
         --ISNULL(CD.Ejercido,0) * MT1.Factor AS EjercidoReal
    FROM CP C
   INNER JOIN CPD CD
      ON CD.ID = C.ID 
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov
   INNER JOIN ClavePresupuestal Cl
      ON CL.ClavePresupuestal = CD.ClavePresupuestal
   LEFT JOIN Proy P
      ON P.Proyecto = C.Proyecto
   WHERE C.Estatus              = 'CONCLUIDO'
     AND C.Empresa              = @Empresa  
     AND C.Periodo             >= 1
     AND C.Periodo             <= @Periodo 
     AND C.Ejercicio			= @Ejercicio 
     AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')       
     AND ISNULL(CD.ClavePresupuestal,'')<> ''     
   GROUP BY c.ID, c.Mov, c.MovID, c.Empresa, cd.ClavePresupuestal, cl.Descripcion, c.Proyecto, p.Descripcion, mt1.Factor

  --SELECT * FROM #GeneralGastos ORDER BY EmpresaCDI, Comite 
     
  SELECT EmpresaCDI, Comite, DescripcionProy, 
         SUM(ISNULL(PresupuestoTotal,0))							   AS PresupuestoTotal,
         SUM(ISNULL(EjercidoTeorico,0))								   AS EjercidoTeorico,
         SUM(ISNULL(EjercidoReal,0))								   AS EjercidoReal,
         SUM(ISNULL(EjercidoReal,0))-SUM(ISNULL(EjercidoTeorico,0))     AS Variacion,
         (SUM(ISNULL(EjercidoReal,0))-SUM(ISNULL(EjercidoTeorico,0)))  / SUM(ISNULL(EjercidoTeorico,0)) * 100	AS VariacionPorcentaje,
		 SUM(ISNULL(PresupuestoTotal,0)) - SUM(ISNULL(EjercidoReal,0)) AS PorEjercer,
         @Dia AS UltimoDiaPeriodo
    FROM #GeneralGastos 
   GROUP BY EmpresaCDI, Comite, DescripcionProy
   ORDER BY EmpresaCDI, Comite

RETURN 
END
GO
--EXEC spCDIRepGeneralGastos 'DEMO', '', 12, 2010
