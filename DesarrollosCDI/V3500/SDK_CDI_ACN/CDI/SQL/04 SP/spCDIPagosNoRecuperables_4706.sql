SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

  -- Desarrollo. PAGOS NO RECUPERABLES
  -- Cliente   . CDI
  -- Folio     . 4706
  -- Fecha     . 11 / 01 / 11
  -- Autor     . EDER MENDOZA

		
---------------------------------------------------------------------------
-------- S P C D I R E P P A G O S N O R E C U P E R A B L E S ------------
---------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepPagosNoRecuperables') AND type = 'P') DROP PROCEDURE dbo.spCDIRepPagosNoRecuperables
GO

CREATE PROCEDURE spCDIRepPagosNoRecuperables
    	  @Empresa			varchar(5),
		  @Periodo			int,
		  @Ejercicio		int,
		  @TipoOperacion	int	
AS
BEGIN   

  CREATE TABLE #PagosNoRecuperables
  (  
   ID					int	IDENTITY(1,1) NOT NULL,	      
   IDO					int,
   MovO					varchar(20),	   
   MovIDO				varchar(20),	   
   MovD					varchar(20),	   
   MovIDD				varchar(20),	    
   EmpresaCDI			varchar(5),	   
   FechaEmision			datetime,
   Concepto				varchar(50),
   Articulo				varchar(20),
   Socio				varchar(20),	  
   ImporteVentaoCXC		money,  	   
   ImporteVenta			money,
   ImporteCXC			money
   )

CREATE TABLE #PagosNoRecuperablesXArticulo
  (  
   EmpresaCDI			varchar(5),	   
   FechaEmision			datetime,
   Concepto				varchar(50),
   Articulo				varchar(20),   
   Socio				varchar(20),
   CantidadMensual		money,  
   CantidadAnual		money,
   CantidadQuincenal	money,
   Condicion			varchar(50),   
   VerCantidadQuincenal	int	   
   )

  IF @Periodo IS NULL OR @Periodo = 0 OR @Periodo = '' SELECT @Periodo = NULL 

  INSERT INTO #PagosNoRecuperables
  SELECT V.ID, V.Mov, V.MovID, C.Mov, C.MovID, V.Empresa, V.FechaEmision, ISNULL(V.Concepto,'Sin concepto'), V.Articulo, VS.CDISocio,
         CASE WHEN (SELECT COUNT(0) FROM VentaD VD2 WHERE VD2.ID = V.ID) =  1 THEN ISNULL(C.Importe,0) ELSE ISNULL(V.Subtotal,0) END AS ImporteVentaoCXC,
         ISNULL(V.Subtotal,0) AS ImporteVenta,
		 ISNULL(C.Importe,0)  AS ImporteCxc 	         
    FROM VentaTCalc V
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.D' AND MT1.Mov = V.Mov   
   INNER JOIN Venta VS
      ON VS.ID = V.ID     
   INNER JOIN Cxc C
      ON C.Origen = V.Mov AND C.OrigenID = V.MovID
   INNER JOIN MovTipo MT2
      ON MT2.Modulo = 'CXC' AND MT2.Clave = 'CXC.NC' AND MT2.Mov = C.Mov   
   WHERE V.Empresa           = @Empresa     
     AND ISNULL(DATEPART(mm,V.FechaEmision),0) = ISNULL(ISNULL(@Periodo,DATEPART(mm,V.FechaEmision)),0)
     AND DATEPART(yy,V.FechaEmision) = @Ejercicio
     AND C.Empresa                   = @Empresa           
     AND C.Estatus                   IN('PENDIENTE', 'CONCLUIDO')  
   ORDER BY V.FechaEmision  

  INSERT INTO #PagosNoRecuperablesXArticulo
  SELECT P.EmpresaCDI, P.FechaEmision, P.Concepto, P.Articulo, P.Socio,  
         CASE WHEN (SELECT CHARINDEX   ('Mes',      A.CDICondicion)) > 0 THEN SUM(P.ImporteVentaoCXC) ELSE 0 END AS CantidadMensual,
		 CASE WHEN (SELECT CHARINDEX   ('Año',      A.CDICondicion)) > 0 THEN SUM(P.ImporteVentaoCXC) ELSE 0 END AS CantidadAnual,
		 CASE WHEN (SELECT CHARINDEX   ('Quincena', A.CDICondicion)) > 0 THEN SUM(P.ImporteVentaoCXC) ELSE 0 END AS CantidadQuincenal,
         A.CDICondicion,
         CASE WHEN (SELECT CHARINDEX   ('Quincena', A.CDICondicion)) > 0 THEN 1                       ELSE 0 END AS CantidadQuincenal
    FROM #PagosNoRecuperables P
   INNER JOIN ART A
      ON A.Articulo = P.Articulo
   GROUP BY P.EmpresaCDI, P.FechaEmision, P.Concepto, P.Articulo, P.Socio, A.CDICondicion
   ORDER BY P.EmpresaCDI, P.FechaEmision, P.Concepto, P.Articulo, P.Socio 
    
  IF EXISTS(SELECT * FROM #PagosNoRecuperablesXArticulo WHERE VerCantidadQuincenal = 1) UPDATE #PagosNoRecuperablesXArticulo SET VerCantidadQuincenal = 1

  --SELECT * FROM #PagosNoRecuperables          WHERE Socio = '5372150' 
  --SELECT * FROM #PagosNoRecuperablesXArticulo WHERE Socio = '5372150'  

  IF @TipoOperacion = 1 SELECT EmpresaCDI, FechaEmision, Concepto, Socio, 
							   SUM(CantidadMensual)   AS CantidadNoRecMensual, 
							   SUM(CantidadAnual)     AS CantidadNoRecAnual, 
							   SUM(CantidadQuincenal) AS CantidadNoRecQuincenal,
                               VerCantidadQuincenal
						  FROM #PagosNoRecuperablesXArticulo 
					     GROUP BY EmpresaCDI, FechaEmision, Concepto, Socio, VerCantidadQuincenal
					     ORDER BY EmpresaCDI, FechaEmision, Concepto, Socio  

  IF @TipoOperacion = 2 SELECT EmpresaCDI, DATEPART(mm,FechaEmision) AS ConceptoMes,
						       SUM(CantidadMensual)   AS CantidadNoRecMensual, 
						       SUM(CantidadAnual)     AS CantidadNoRecAnual, 
				  		       SUM(CantidadQuincenal) AS CantidadNoRecQuincenal,
                               VerCantidadQuincenal                               
					      FROM #PagosNoRecuperablesXArticulo 
					     GROUP BY EmpresaCDI, DATEPART(mm,FechaEmision),VerCantidadQuincenal
					     ORDER BY EmpresaCDI, DATEPART(mm,FechaEmision)
 
RETURN 
END
GO

--EXEC spCDIRepPagosNoRecuperables 'CDI', 2, 2011,1
