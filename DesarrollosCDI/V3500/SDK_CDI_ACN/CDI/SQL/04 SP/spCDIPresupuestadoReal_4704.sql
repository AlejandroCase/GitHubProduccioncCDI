SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. PRESUPUESTAL VS REAL
  -- Cliente   . CDI
  -- Folio     . 4704
  -- Fecha     . 10 / 11 / 10
  -- Autor     . EDER MENDOZA

		
---------------------------------------------------------
-------- S P C D I R E P P R E S V S R E A L ------------
---------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepPresVSReal') AND type = 'P') DROP PROCEDURE dbo.spCDIRepPresVSReal
GO

CREATE PROCEDURE spCDIRepPresVSReal
    	  @Empresa			varchar(5),		  
		  @Proyecto			varchar(50),		  	
		  @FechaD			datetime,	
		  @FechaA			datetime 
AS
BEGIN   

  CREATE TABLE #PresVSReal
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	
   IDM					int,
   Renglon				float,
   Mov					varchar(20),
   MovID				varchar(20),
   Empresa				varchar(5),	   
   ImporteReal			money,
   ImportePresupuestado	money,
   ClavePresupuestal    varchar(50),
   Descripcion			varchar(255),	
   Periodo				int,	
   Ejercicio			int,
   Proyecto				varchar(50)
   )

  IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL 

  INSERT INTO #PresVSReal
  SELECT      VD.ID, VD.Renglon, V.Mov, V.MovID, V.Empresa, ISNULL(V.Importe,0) * V.Factor AS ImporteReal, 0.0 AS ImportePresupuestado , VD.CDIClavePresupuestal,
              C.Descripcion, DATEPART(mm, FechaEmision), DATEPART(yy, FechaEmision), ISNULL(V.Proyecto,'')
    FROM VentaTCalc V
   INNER JOIN VentaD VD
      ON VD.ID = V.ID AND VD.Renglon = V.Renglon
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.F' AND MT1.Mov = V.Mov
   INNER JOIN ClavePresupuestal C
      ON C.ClavePresupuestal = VD.CDIClavePresupuestal
   WHERE V.Estatus = 'CONCLUIDO'
     AND V.Empresa = @Empresa
     AND V.FechaEmision  >= @FechaD
     AND V.FechaEmision  < DATEADD(d,1,@FechaA)       
     AND ISNULL(V.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,V.Proyecto),'') 
     AND ISNULL(VD.CDIClavePresupuestal,'')<> ''
  UNION ALL
  SELECT      VD.ID, VD.Renglon, V.Mov, V.MovID, V.Empresa, 0.0 AS ImporteReal,                            ISNULL(V.Importe,0) * V.Factor AS ImportePresupuestado, VD.CDIClavePresupuestal,
              C.Descripcion, DATEPART(mm, FechaEmision), DATEPART(yy, FechaEmision), ISNULL(V.Proyecto,'')
    FROM VentaTCalc V
   INNER JOIN VentaD VD
      ON VD.ID = V.ID AND VD.Renglon = V.Renglon
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov
   INNER JOIN ClavePresupuestal C
      ON C.ClavePresupuestal = VD.CDIClavePresupuestal
   WHERE V.Estatus = 'CONCLUIDO'
     AND V.Empresa = @Empresa
     AND V.FechaEmision  >= @FechaD
     AND V.FechaEmision  < DATEADD(d,1,@FechaA)       
     AND ISNULL(V.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,V.Proyecto),'') 
     AND ISNULL(VD.CDIClavePresupuestal,'')<> ''

  --SELECT * FROM #PresVSReal P ORDER BY ClavePresupuestal, Ejercicio, Proyecto
  SELECT Empresa1,										ClavePresupuestal1,						Descripcion1,								Ejercicio1, 
         Proyecto1,
         -------- R E A L --------
         SUM(Enero_R)      AS EneroReal,				SUM(Febrero_R) AS FebreroReal,			SUM(Marzo_R)	 AS MarzoReal,				SUM(Abril_R)     AS AbrilReal,
         SUM(Mayo_R)       AS MayoReal,					SUM(Junio_R)   AS JunioReal,			SUM(Julio_R)	 AS JulioReal,				SUM(Agosto_R)    AS AgostoReal,
         SUM(Septiembre_R) AS SeptiembreReal,			SUM(Octubre_R) AS OctubreReal,			SUM(Noviembre_R) AS NoviembreReal,			SUM(Diciembre_R) AS DiciembreReal,
		 -------- P R E S U P U E S T A D O --------
         SUM(Enero_P)      AS EneroPresupuestado,       SUM(Febrero_P) AS FebreroPresupuestado, SUM(Marzo_P)     AS MarzoPresupuestado,     SUM(Abril_P)     AS AbrilPresupuestado,		
		 SUM(Mayo_P)       AS MayoPresupuestado,        SUM(Junio_P)   AS JunioPresupuestado,   SUM(Julio_P)     AS JulioPresupuestado,     SUM(Agosto_P)    AS AgostoPresupuestado,
         SUM(Septiembre_P) AS SeptiembrePresupuestado,  SUM(Octubre_P) AS OctubrePresupuestado, SUM(Noviembre_P) AS NoviembrePresupuestado, SUM(Diciembre_P) AS DiciembrePresupuestado	  
    FROM      (SELECT Empresa           AS Empresa1,				  
		              ClavePresupuestal AS ClavePresupuestal1,
                      Descripcion       AS Descripcion1,   
                      Proyecto			AS Proyecto1,
     	              Ejercicio         AS Ejercicio1, 
		              [1]  AS Enero_R,		
		              [2]  AS Febrero_R,	
					  [3]  AS Marzo_R,		
					  [4]  AS Abril_R,		
					  [5]  AS Mayo_R,		
					  [6]  AS Junio_R,		
					  [7]  AS Julio_R,
					  [8]  AS Agosto_R,
					  [9]  AS Septiembre_R,
					  [10] AS Octubre_R,  
					  [11] AS Noviembre_R,
					  [12] AS Diciembre_R,
					  --------------------
					  0    AS Enero_P,		
					  0    AS Febrero_P,	
					  0    AS Marzo_P,		
					  0    AS Abril_P,		
					  0    AS Mayo_P,		
					  0    AS Junio_P,		
					  0    AS Julio_P,
					  0    AS Agosto_P,
					  0    AS Septiembre_P,
					  0    AS Octubre_P,  
					  0    AS Noviembre_P,
					  0    AS Diciembre_P	 	 	 	
                 FROM 
	          (SELECT Empresa, ClavePresupuestal, Descripcion, Proyecto, Ejercicio, Periodo, ImporteReal FROM #PresVSReal) P
	            PIVOT
	             (SUM (ImporteReal) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT 
                UNION ALL
               SELECT Empresa           AS Empresa1,				  
	  	              ClavePresupuestal AS ClavePresupuestal1,
					  Descripcion       AS Descripcion1,    
                      Proyecto			AS Proyecto1,
     				  Ejercicio         AS Ejercicio1, 
					  0    AS Enero_R,		
					  0    AS Febrero_R,	
					  0    AS Marzo_R,		
					  0    AS Abril_R,		
					  0    AS Mayo_R,		
					  0    AS Junio_R,		
					  0    AS Julio_R,
					  0    AS Agosto_R,
					  0    AS Septiembre_R,
					  0    AS Octubre_R,  
					  0    AS Noviembre_R,
					  0    AS Diciembre_R,	
					  ------------------- 
					  [1]  AS Enero_P,		
					  [2]  AS Febrero_P,	
					  [3]  AS Marzo_P,		
					  [4]  AS Abril_P,		
					  [5]  AS Mayo_P,		
					  [6]  AS Junio_P,		
					  [7]  AS Julio_P,
					  [8]  AS Agosto_P,
					  [9]  AS Septiembre_P,
					  [10] AS Octubre_P,  
					  [11] AS Noviembre_P,
					  [12] AS Diciembre_P	 	 	 	
                  FROM 
	           (SELECT Empresa, ClavePresupuestal, Descripcion, Proyecto, Ejercicio, Periodo, ImportePresupuestado FROM #PresVSReal) P
	             PIVOT
	              (SUM (ImportePresupuestado) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT 
              )
  PresupuestadoVSReal 
   GROUP BY Empresa1, ClavePresupuestal1, Descripcion1, Proyecto1, Ejercicio1
   ORDER BY Ejercicio1, Proyecto1, ClavePresupuestal1

RETURN 
END
GO

--SET DATEFORMAT YMD
--EXEC spCDIRepPresVSReal 'DEMO', '','2010-01-01 00:00:00.000', '2011-01-01 00:00:00.000'
