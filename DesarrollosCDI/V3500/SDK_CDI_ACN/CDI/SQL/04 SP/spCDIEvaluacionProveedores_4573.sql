SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

------------------------------------------
--- Desarrollo. EVALUACION PROVEEDORES ---
--- Cliente   . CDI                    ---
--- Folio     . 4573                   ---
--- Fecha     . 08 / 12 / 10           ---
--- Autor     . EDER MENDOZA           ---
------------------------------------------   


-------------------------------------------------------
------- S P C D I N U M E R O Q U E J A S P R O V -----
-------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE Type='p' AND ID=Object_ID('dbo.spCDINumeroQuejasProv')) DROP PROCEDURE dbo.spCDINumeroQuejasProv
GO

CREATE PROCEDURE spCDINumeroQuejasProv
                 @Empresa		varchar(5),
				 @Proveedor		varchar(10)
                  
AS BEGIN
   DECLARE	@NumeroQuejas		float,
			@NumeroEntCompras	float,
            @TotalQuejasProv	float,            
			@FechaInicial		datetime, 
			@FechaFinal			datetime

   SELECT @FechaFinal    = GETDATE()   
   EXEC spExtraerFecha @FechaFinal OUTPUT 
   SELECT @FechaInicial  = DATEADD(mm, -12, @FechaFinal) 
   -------------------
   --- Q U E J A S ---
   -------------------
   SELECT @NumeroQuejas = COUNT(0) FROM Soporte S
    INNER JOIN MovTipo MT 
       ON MT.Modulo = 'ST' AND MT.Clave = 'ST.M' AND MT.Mov = S.Mov  
    WHERE S.Estatus    = 'CONCLUIDO'
      AND S.Proveedor  = @Proveedor
      AND S.Empresa    = @Empresa
      AND S.FechaEmision >= @FechaInicial
      AND S.FechaEmision < DATEADD(d,1,@FechaFinal)
   -----------------------------------------
   --- E N T R A D A S  D E  C O M P R A ---
   -----------------------------------------
   SELECT @NumeroEntCompras = COUNT(0) FROM Compra C
    INNER JOIN MovTipo MT 
       ON MT.Modulo = 'COMS' AND MT.Clave = 'COMS.F' AND MT.Mov = C.Mov
    WHERE C.Estatus    = 'CONCLUIDO'
      AND C.Proveedor  = @Proveedor
      AND C.Empresa    = @Empresa
      AND C.FechaEmision >= @FechaInicial
      AND C.FechaEmision < DATEADD(d,1,@FechaFinal)
  
   IF ISNULL(@NumeroQuejas,0)     = 0 SET @NumeroQuejas     = 0
   IF ISNULL(@NumeroEntCompras,0) = 0 SET @NumeroEntCompras = 0
   IF @NumeroQuejas > 0 AND @NumeroEntCompras > 0 SET @TotalQuejasProv = @NumeroQuejas / @NumeroEntCompras
   ELSE SET @TotalQuejasProv = 0
   
   SELECT @TotalQuejasProv
RETURN
END
GO

--EXEC spCDINumeroQuejasProv 'DEMO', 'FONACOT'



---------------------------------------------------------------
------- S P C D I N U M E R O S A T I S F A C C I O N T E -----
---------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE Type='p' AND ID=Object_ID('dbo.spCDINumeroSatisfaccionTE')) DROP PROCEDURE dbo.spCDINumeroSatisfaccionTE
GO

CREATE PROCEDURE spCDINumeroSatisfaccionTE
                 @Empresa		varchar(5),
				 @Proveedor		varchar(10)
                  
AS BEGIN
   DECLARE	@NumeroSatisfaccionTE	float,
			@NumeroOrdenCompras		float,
            @TotalSatisfaccionTE	float,
            @FechaInicial			datetime, 
			@FechaFinal				datetime

   CREATE TABLE #OrdenCompra 
      (ID				int			 NULL,
       Mov				varchar(20)  NULL,
       MovID			varchar(20)  NULL,
       Proveedor		varchar(10)  NULL,
	   Nombre			varchar(100) NULL,
       CantO			float		 NULL,
       FechaO			datetime	 NULL,
       FechaRequerida	datetime	 NULL)
   CREATE TABLE #EntradaCompra 
      (ID				int			 NULL,
       Origen			varchar(20)  NULL,
       OrigenID			varchar(20)  NULL,
       MovEn			varchar(20)  NULL,
	   MovIDEn			varchar(20) NULL,
       CantE			float		 NULL,
       FechaE			datetime	 NULL)

   CREATE TABLE #SatisfaccionTiempos 
      (Origen			varchar(20)  NULL,
       OrigenID			varchar(20)  NULL,
       MovEn			varchar(20)  NULL,
	   MovIDEn			varchar(20)  NULL,
       Dias				int			 NULL)

   SELECT @FechaFinal    = GETDATE()   
   EXEC spExtraerFecha @FechaFinal OUTPUT 
   SELECT @FechaInicial  = DATEADD(mm, -12, @FechaFinal)       


   --- O R D E N E S  D E  C O M P R A
   INSERT INTO #OrdenCompra 
   SELECT C.ID, C.Mov, C.MovID, C.Proveedor, P.Nombre, SUM(ISNULL(CD.Cantidad,0)), C.FechaEmision, C.FechaRequerida
     FROM Compra C
    INNER JOIN MovTipo MT 
       ON MT.Modulo = 'COMS' AND MT.Clave = 'COMS.O' AND MT.Mov = C.Mov
    INNER JOIN CompraD CD
       ON CD.ID = C.ID
    INNER JOIN Prov P
       ON P.Proveedor = C.Proveedor 
    WHERE C.Estatus     IN ('PENDIENTE','CONCLUIDO')
      AND C.Proveedor   = @Proveedor
      AND C.Empresa     = @Empresa
      AND C.FechaEmision >= @FechaInicial
      AND C.FechaEmision < DATEADD(d,1,@FechaFinal)
    GROUP BY C.ID, C.Mov, C.MovID, C.Proveedor, P.Nombre, C.FechaEmision, C.FechaRequerida
    ORDER BY C.ID

   INSERT INTO #EntradaCompra 
   SELECT C.ID, C.Origen, C.OrigenID, C.Mov, C.MovID, SUM(ISNULL(CD.Cantidad,0)), C.FechaEmision
     FROM Compra C
    INNER JOIN MovTipo MT1 
       ON MT1.Mov = C.Mov
    INNER JOIN MovTipo MT2 
       ON MT2.Mov = C.Origen
    INNER JOIN CompraD CD
       ON CD.ID = C.ID
     WHERE MT1.Modulo = 'COMS'
       AND MT1.Clave  = 'COMS.F'
       AND MT2.Modulo = 'COMS'
       AND MT2.Clave  = 'COMS.O'
       AND C.Estatus     IN ('PENDIENTE','CONCLUIDO')
       AND C.Proveedor   = @Proveedor
       AND C.Empresa     = @Empresa
       AND C.FechaEmision >= @FechaInicial
       AND C.FechaEmision < DATEADD(d,1,@FechaFinal)
    GROUP BY C.ID, C.Origen, C.OrigenID, C.Mov, C.MovID, C.FechaEmision
    ORDER BY C.ID


    INSERT INTO #SatisfaccionTiempos
    SELECT Origen, OrigenID, MovEn, MovIDEn, DATEDIFF(dd, @FechaFinal, FechaRequerida) 
      FROM #OrdenCompra O
     INNER JOIN #EntradaCompra E
        ON E.Origen = O.Mov AND E.OrigenID = O.MovID
     ORDER BY O.Mov
    
    SELECT @NumeroSatisfaccionTE = COUNT(0) 
      FROM #SatisfaccionTiempos 
     WHERE Dias < 0

    SELECT @NumeroOrdenCompras = COUNT(0) 
      FROM #SatisfaccionTiempos      
  
   IF ISNULL(@NumeroSatisfaccionTE,0) = 0 SET @NumeroSatisfaccionTE = 0
   IF ISNULL(@NumeroOrdenCompras,0)   = 0 SET @NumeroOrdenCompras   = 0
   IF @NumeroSatisfaccionTE > 0 AND @NumeroOrdenCompras > 0 SET @TotalSatisfaccionTE = @NumeroSatisfaccionTE / @NumeroOrdenCompras
   ELSE SET @TotalSatisfaccionTE  = 0
   
   SELECT @TotalSatisfaccionTE
RETURN
END
GO

--EXEC spCDINumeroSatisfaccionTE 'DEMO', 'FONACOT'



---------------------------------------------------------
------- S P C D I R E C H A Z O S M E R C A N C I A -----
---------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE Type='p' AND ID=Object_ID('dbo.spCDIRechazosMercancia')) DROP PROCEDURE dbo.spCDIRechazosMercancia
GO

CREATE PROCEDURE spCDIRechazosMercancia
                 @Empresa		varchar(5),
				 @Proveedor		varchar(10)
                  
AS BEGIN
   DECLARE	@NumeroRechazos		float,
			@NumeroEntCompras	float,
            @TotalRechazos		float,            
			@FechaInicial		datetime, 
			@FechaFinal			datetime

   SELECT @FechaFinal    = GETDATE()   
   EXEC spExtraerFecha @FechaFinal OUTPUT 
   SELECT @FechaInicial  = DATEADD(mm, -12, @FechaFinal) 
   ----------------------------------
   --- C O M P R A  P E R D I D A ---
   ----------------------------------
   SELECT @NumeroRechazos = COUNT(0) FROM Compra C
    INNER JOIN MovTipo MT 
       ON MT.Modulo = 'COMS' AND MT.Clave = 'COMS.CP' AND MT.Mov = C.Mov
    WHERE C.Estatus    = 'CONCLUIDO'
      AND C.Proveedor  = @Proveedor
      AND C.Empresa    = @Empresa
      AND C.FechaEmision >= @FechaInicial
      AND C.FechaEmision < DATEADD(d,1,@FechaFinal)
   -----------------------------------------
   --- E N T R A D A S  D E  C O M P R A ---
   -----------------------------------------
   SELECT @NumeroEntCompras = COUNT(0) FROM Compra C
    INNER JOIN MovTipo MT 
       ON MT.Modulo = 'COMS' AND MT.Clave = 'COMS.F' AND MT.Mov = C.Mov
    WHERE C.Estatus    = 'CONCLUIDO'
      AND C.Proveedor  = @Proveedor
      AND C.Empresa    = @Empresa
      AND C.FechaEmision >= @FechaInicial
      AND C.FechaEmision < DATEADD(d,1,@FechaFinal)
  
   IF ISNULL(@NumeroRechazos,0)   = 0 SET @NumeroRechazos   = 0
   IF ISNULL(@NumeroEntCompras,0) = 0 SET @NumeroEntCompras = 0
   IF @NumeroRechazos > 0 AND @NumeroEntCompras > 0 SET @TotalRechazos = @NumeroRechazos / @NumeroEntCompras
   ELSE SET @TotalRechazos  = 0
   
   SELECT @TotalRechazos
RETURN
END
GO

--EXEC spCDIRechazosMercancia 'DEMO', 'FONACOT'




-----------------------------------------------------------------------
------- S P C D I R E E V A L U A C I O N C A L I F I C A C I O N -----
-----------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE Type='p' AND ID=Object_ID('dbo.spCDIReevaluacionCalificacion')) DROP PROCEDURE dbo.spCDIReevaluacionCalificacion
GO

CREATE PROCEDURE spCDIReevaluacionCalificacion
                 @Empresa		varchar(5),
				 @Proveedor		varchar(10),
                 @ID			int,
				 @Operacion		int 
                  
AS BEGIN
   DECLARE	@Calificacion		float,
            @TotalQuejas		float,
			@TotalSatisfaccion	float,
			@TotalRechazos		float,
            @TotalQuejas2		float,
			@TotalSatisfaccion2	float,
			@TotalRechazos2		float,
            @OK					int 

   CREATE TABLE #TotalCalificacion
      (TotalQuejas			money  default 0,
       TotalSatisfaccion	money  default 0,
       TotalRechazos		money  default 0)

   INSERT INTO #TotalCalificacion (TotalQuejas)			
   EXEC spCDINumeroQuejasProv		@Empresa, @Proveedor

   INSERT INTO #TotalCalificacion (TotalSatisfaccion)
   EXEC spCDINumeroSatisfaccionTE	@Empresa, @Proveedor

   INSERT INTO #TotalCalificacion (TotalRechazos)
   EXEC spCDIRechazosMercancia		@Empresa, @Proveedor

   SELECT @TotalQuejas   = SUM(ISNULL(TotalQuejas,0)), @TotalSatisfaccion = SUM(ISNULL(TotalSatisfaccion,0)), @TotalRechazos = SUM(ISNULL(TotalRechazos,0)) FROM #TotalCalificacion           
   SELECT @Calificacion  = 1-((ISNULL(@TotalQuejas,0) + ISNULL(@TotalSatisfaccion,0) + ISNULL(@TotalRechazos,0))/3) 

   IF ISNULL(@Operacion,0) = 0 
   BEGIN --- C O N S U L T A
     SELECT @Calificacion AS Calificacion 
   END   --- C O N S U L T A
   
   IF ISNULL(@Operacion,0) = 1 
   BEGIN ---  U P D A T E
     IF @Calificacion > 0
     BEGIN
       SET @OK = 0
       UPDATE Compra SET CDIQuejasProveedor = @TotalQuejas, CDISatisfaccionTE = @TotalSatisfaccion, CDIRechazosMercancia = @TotalRechazos, CDICalificacion = @Calificacion WHERE ID = @ID 
     END
     ELSE SET @OK = 1
     SELECT @OK 
   END   --- U P D A T E

RETURN
END
GO

--EXEC spCDIReevaluacionCalificacion 'DEMO', 'FONACOT', 1,0
