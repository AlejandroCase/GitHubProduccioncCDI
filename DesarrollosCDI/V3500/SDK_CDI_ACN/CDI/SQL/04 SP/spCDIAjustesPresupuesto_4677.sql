SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. AJUSTES AL PRESUPUESTOS DE EGRESOS
  -- Cliente   . CDI
  -- Folio     . 4677
  -- Fecha     . 29 / 11 / 10
  -- Autor     . EDER MENDOZA

		
-------------------------------------------------------------------------
-------- S P C D I R E P A J U S T E S P R E S U P U E S T O ------------
-------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepAjustesPresupuesto') AND type = 'P') DROP PROCEDURE dbo.spCDIRepAjustesPresupuesto
GO

CREATE PROCEDURE spCDIRepAjustesPresupuesto
    	  @Empresa			varchar(5),		  
		  @Proyecto			varchar(50),  
   		  @FechaD			datetime,	
		  @FechaA			datetime,
          @Mov				varchar(20) 
AS
BEGIN   

  CREATE TABLE #AjustesAlPresupuesto
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	   
   Mov					varchar(20),
   MovID				varchar(20),
   EmpresaCDI			varchar(5),	   
   PresupuestoInicial	money,  
   AjustePresupuesto	money,
   ClavePresupuestal    varchar(50),
   DescripcionClave		varchar(100),	
   DescripcionProy		varchar(100),	
   Comite				varchar(50)
   )


  IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL 

  INSERT INTO #AjustesAlPresupuesto
  SELECT  C.Mov, C.MovID, C.Empresa, ISNULL(CD.Importe,0) * MT1.Factor AS PresupuestoInicial,	0.00 AS AjustePresupuesto, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,'')
    FROM CP C
   INNER JOIN CPD CD
      ON CD.ID = C.ID 
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.AS' AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13') AND MT1.SubClave NOT IN ('CP.TAMTR')
    INNER JOIN ClavePresupuestal Cl
      ON CL.ClavePresupuestal = CD.ClavePresupuestal
   INNER JOIN Proy P
      ON P.Proyecto = C.Proyecto
   WHERE C.Estatus              = 'CONCLUIDO'
     AND C.Empresa              = @Empresa
     AND C.FechaEmision        >= @FechaD
     AND C.FechaEmision        < DATEADD(d,1,@FechaA)       
     AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'') 
     AND ISNULL(C.Mov, '')     <>  ISNULL(@Mov,'')   
     AND ISNULL(CD.ClavePresupuestal,'')<> ''     
   UNION ALL
  SELECT  C.Mov, C.MovID, C.Empresa, ISNULL(CD.Presupuesto,0) * MT1.Factor AS PresupuestoInicial,	0.00 AS AjustePresupuesto, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,'')
    FROM CP C
   INNER JOIN CPD CD
      ON CD.ID = C.ID 
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov
    INNER JOIN ClavePresupuestal Cl
      ON CL.ClavePresupuestal = CD.ClavePresupuestal
   INNER JOIN Proy P
      ON P.Proyecto = C.Proyecto
   WHERE C.Estatus              = 'CONCLUIDO'
     AND C.Empresa              = @Empresa
     AND C.FechaEmision        >= @FechaD
     AND C.FechaEmision        < DATEADD(d,1,@FechaA)       
     AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'') 
     AND ISNULL(C.Mov, '')     <>  ISNULL(@Mov,'')   
     AND ISNULL(CD.ClavePresupuestal,'')<> ''
     AND C.Mov					= 'Traspaso Remanente'    
   UNION ALL   
  SELECT C.Mov, C.MovID, C.Empresa, 0.00 AS PresupuestoInicial,									ISNULL(CD.Importe,0) * MT1.Factor AS AjustePresupuesto, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,'')
    FROM CP C
   INNER JOIN CPD CD
      ON CD.ID = C.ID 
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.AS' AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13') AND MT1.SubClave NOT IN ('CP.TAMTR')
    INNER JOIN ClavePresupuestal Cl
      ON CL.ClavePresupuestal = CD.ClavePresupuestal
   INNER JOIN Proy P
      ON P.Proyecto = C.Proyecto
   WHERE C.Estatus              = 'CONCLUIDO'
     AND C.Empresa              = @Empresa
     AND C.FechaEmision        >= @FechaD
     AND C.FechaEmision        < DATEADD(d,1,@FechaA)       
     AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'') 
     AND ISNULL(C.Mov, '')      =  ISNULL(@Mov,'')
     AND ISNULL(CD.ClavePresupuestal,'')<> ''
	 AND CD.Tipo				= 'Ampliacion'
   UNION ALL
  SELECT C.Mov, C.MovID, C.Empresa, 0.00 AS PresupuestoInicial,         ((ISNULL(CD.Importe,0))*-1) * MT1.Factor AS AjustePresupuesto, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,'')  
    FROM CP C  
   INNER JOIN CPD CD 
	  ON CD.ID = C.ID  
   INNER JOIN MovTipo MT1 
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.AS' AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13') AND MT1.SubClave NOT IN ('CP.TAMTR')
   INNER JOIN ClavePresupuestal Cl 
      ON CL.ClavePresupuestal = CD.ClavePresupuestal  
   INNER JOIN Proy P 
      ON P.Proyecto = C.Proyecto  
   WHERE C.Estatus              = 'CONCLUIDO'  
     AND C.Empresa              = @Empresa  
     AND C.FechaEmision        >= @FechaD  
     AND C.FechaEmision        < DATEADD(d,1,@FechaA)  
     AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')  
     AND ISNULL(C.Mov, '')      =  ISNULL(@Mov,'')  
     AND ISNULL(CD.ClavePresupuestal,'')<> ''
     AND CD.Tipo				= 'Reduccion'
  SELECT EmpresaCDI, Comite, DescripcionProy, 
         SUM(ISNULL(PresupuestoInicial,0)) AS PresupuestoInicial,
         SUM(ISNULL(AjustePresupuesto,0))  AS AjusteAlPresupuesto,
         SUM(ISNULL(PresupuestoInicial,0)) + SUM(ISNULL(AjustePresupuesto,0)) AS PresupuestoAsignado
    FROM #AjustesAlPresupuesto 
   GROUP BY EmpresaCDI, Comite, DescripcionProy
   ORDER BY EmpresaCDI, Comite

RETURN 
END
GO

--SET DATEFORMAT YMD
--EXEC spCDIRepAjustesPresupuesto 'DEMO', '','2010-01-01 00:00:00.000', '2011-01-01 00:00:00.000', 'Ajuste'
