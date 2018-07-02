SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. PRESUPUESTAL COMPROMETIDO
  -- Cliente   . CDI
  -- Folio     . 4690
  -- Fecha     . 16 / 11 / 10
  -- Autor     . EDER MENDOZA

		
---------------------------------------------------------------------
-------- S P C D I R E P P R E S C O M P R O M E T I D O ------------
---------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepPresComprometido') AND type = 'P') DROP PROCEDURE dbo.spCDIRepPresComprometido
GO

CREATE PROCEDURE spCDIRepPresComprometido
    	  @Empresa			varchar(5),		  
		  @Proyecto			varchar(50),		  			  
		  @Ejercicio		int
AS
BEGIN   

  CREATE TABLE #PresComprometido
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	   
   Mov					varchar(20),
   MovID				varchar(20),
   Empresa				varchar(5),	   
   ImporteComprometido	money,  
   ClavePresupuestal    varchar(50),
   Descripcion			varchar(255),	
   Periodo				int,	
   Ejercicio			int,
   Proyecto				varchar(50)
   )

  IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL 

  INSERT INTO #PresComprometido
  SELECT  C.Mov, C.MovID, C.Empresa, ISNULL(CD.Comprometido,0) * MT1.Factor AS ImporteComprometido, CD.ClavePresupuestal,
          Cl.Descripcion, DATEPART(mm, C.FechaEmision), DATEPART(yy, C.FechaEmision), ISNULL(C.Proyecto,'')
    FROM CP C
   INNER JOIN CPD CD
      ON CD.ID = C.ID 
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov
   INNER JOIN ClavePresupuestal Cl
      ON Cl.ClavePresupuestal = CD.ClavePresupuestal
   WHERE C.Estatus              = 'CONCLUIDO'
     AND C.Empresa              = @Empresa
     AND C.Ejercicio            = @Ejercicio
     AND ISNULL(C.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C.Proyecto),'') 
     AND ISNULL(CD.ClavePresupuestal,'')<> ''
     AND (ISNULL(CD.Comprometido, 0) > 0 OR C.Observaciones = 'Envio Mes 13')


  --SELECT * FROM #PresComprometido P ORDER BY Ejercicio, Proyecto, ClavePresupuestal
  SELECT Empresa1,		ClavePresupuestal1,		Descripcion1,	Ejercicio1,  Proyecto1,
         -------- R E A L --------
         SUM(Enero)      AS EneroC,			SUM(Febrero) AS FebreroC,	SUM(Marzo)	   AS MarzoC,		SUM(Abril)     AS AbrilC,
         SUM(Mayo)       AS MayoC,			SUM(Junio)   AS JunioC,		SUM(Julio)	   AS JulioC,		SUM(Agosto)    AS AgostoC,
         SUM(Septiembre) AS SeptiembreC,	SUM(Octubre) AS OctubreC,	SUM(Noviembre) AS NoviembreC,	SUM(Diciembre) AS DiciembreC
    FROM      (SELECT Empresa           AS Empresa1,				  
		              ClavePresupuestal AS ClavePresupuestal1,
                      Descripcion       AS Descripcion1,   
                      Proyecto			AS Proyecto1,
     	              Ejercicio         AS Ejercicio1, 
		              [1]  AS Enero,		
		              [2]  AS Febrero,	
					  [3]  AS Marzo,		
					  [4]  AS Abril,		
					  [5]  AS Mayo,		
					  [6]  AS Junio,		
					  [7]  AS Julio,
					  [8]  AS Agosto,
					  [9]  AS Septiembre,
					  [10] AS Octubre,  
					  [11] AS Noviembre,
					  [12] AS Diciembre
                 FROM 
	          (SELECT Empresa, ClavePresupuestal, Descripcion, Proyecto, Ejercicio, Periodo, ImporteComprometido FROM #PresComprometido) P
	            PIVOT
	             (SUM (ImporteComprometido) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT                 
              )
  PresupuestoComprometido
   GROUP BY Empresa1, ClavePresupuestal1, Descripcion1, Proyecto1, Ejercicio1
   ORDER BY Ejercicio1, Proyecto1, ClavePresupuestal1

RETURN 
END
GO

--EXEC spCDIRepPresComprometido 'DEMO', '','2010'
