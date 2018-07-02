SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

------------------------------------------------------------------------------------
--- Desarrollo. INFORMACION DE LA CALENDARIZACION DE LAS PARTIDAS PRESUPUESTALES ---
--- Cliente   . CDI																 ---
--- Folio     . 4890                                                             ---
--- Fecha     . 21 / 01 / 11                                                     ---
--- Autor     . EDER MENDOZA                                                     ---
------------------------------------------------------------------------------------   



-----------------------------------------
---- F N C D I O B J E T O G A S T O ----
-----------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Name = 'fnCDIObjetoGasto' AND TYPE = 'fn') DROP FUNCTION dbo.fnCDIObjetoGasto
GO

CREATE FUNCTION dbo.fnCDIObjetoGasto
(                
	@ClavePresupuestal	varchar(50),
	@Posicion			int
)
RETURNS varchar(50)
AS BEGIN 

  DECLARE @ObjetoGasto varchar(50)
 
  SELECT @ObjetoGasto = ObjetoGasto FROM ClavePresupuestal WHERE ClavePresupuestal = @ClavePresupuestal 
  IF @ObjetoGasto IS NULL SELECT @ObjetoGasto = ''
  
RETURN (@ObjetoGasto)
END
GO

--SELECT dbo.fnCDIObjetoGasto('1000-01', 0)


-------------------------------------
---- S P C D I C P C A L N E T O ----
-------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.spCDICPCalNeto') AND Type = 'P') DROP PROCEDURE dbo.spCDICPCalNeto
GO

CREATE PROCEDURE spCDICPCalNeto (
                @Empresa				varchar (5), 
				@Proyecto				varchar (50),
				@Usuario				varchar (10),
				@ID						int,
				@Modulo					varchar (5),
                @ClavePresupuestalExp	varchar(50),
                @EjercicioExplorador	int
				)
AS 
BEGIN
  DECLARE	@IDMin				int,
			@IDMax				int,
			@IDMinU				int,
			@IDMaxU				int,
			@Ejercicio			int,
            @ObjetoGastoExp		varchar(50),
			@ClaveObjeto 		varchar(50),
			@ClaveObjetoP		varchar(50),
			@ClaveObjetoH		varchar(50)

  CREATE TABLE #CPCalNeto (  
			ID 					 int         	NOT NULL IDENTITY(1,1),
	        Empresa              varchar(5), 
            Proyecto             varchar(50),   
            ClavePresupuestal    varchar(50),
            Ejercicio             int,
            Periodo              int, 
            Presupuesto          money,
			ClaveObjeto			 varchar(55)	
                       )

   CREATE TABLE #Modulo (  
			ID 					 int         	NOT NULL IDENTITY(1,1),
	        Modulo               varchar(5), 
            ObjetoGasto          varchar(10),
			ClavePresupuestal    varchar(100)		
                       )
    
  IF @Modulo = 'CP' 
  BEGIN
    INSERT INTO #Modulo (Modulo, ObjetoGasto,	ClavePresupuestal) SELECT 'CP',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPD WHERE ID = @ID GROUP BY ClavePresupuestal  
    SELECT @Ejercicio = Ejercicio FROM CP   WHERE ID = @ID
  END
  IF @Modulo = 'COMS' 
  BEGIN 
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'COMS' AND ModuloID = @ID)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'COMS', dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'COMS' AND ModuloID = @ID
      SELECT @Ejercicio = Ejercicio FROM Compra WHERE ID = @ID   
    END
    ELSE
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto,	ClavePresupuestal) SELECT 'COMS', dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CompraD     WHERE ID = @ID GROUP BY ClavePresupuestal
      SELECT @Ejercicio = Ejercicio FROM Compra WHERE ID = @ID
    END
  END  
  IF @Modulo = 'CXP' 
  BEGIN
    INSERT INTO #Modulo (Modulo, ObjetoGasto,	ClavePresupuestal) SELECT 'CXP',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0),          ClavePresupuestal          FROM MovImpuesto WHERE ModuloID = @ID AND Modulo = 'CXP' GROUP BY ClavePresupuestal
    INSERT INTO #Modulo (Modulo, ObjetoGasto,   ClavePresupuestal) SELECT 'CXP',  dbo.fnCDIObjetoGasto (ClavePresupuestalImpuesto1, 6), ClavePresupuestalImpuesto1 FROM MovImpuesto WHERE ModuloID = @ID AND Modulo = 'CXP' AND ISNULL(ClavePresupuestalImpuesto1,'') <> '' GROUP BY ClavePresupuestalImpuesto1
    SELECT @Ejercicio = Ejercicio FROM CXP   WHERE ID = @ID
  END
  IF @Modulo = 'DIN'  
  BEGIN
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'DIN' AND ModuloID = @ID)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'DIN',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'DIN' AND ModuloID = @ID
      SELECT @Ejercicio = Ejercicio FROM Dinero WHERE ID = @ID
    END
    ELSE 
    BEGIN  
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'DIN',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM MovImpuesto WHERE Modulo = 'DIN' AND ModuloID = @ID 
      SELECT @Ejercicio = Ejercicio FROM Dinero WHERE ID = @ID
    END
  END  
  IF @Modulo = 'GAS'  
  BEGIN
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'GAS' AND ModuloID = @ID)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'GAS',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'GAS' AND ModuloID = @ID GROUP BY ClavePresupuestal
      SELECT @Ejercicio = Ejercicio FROM Gasto  WHERE ID = @ID
    END
    ELSE 
    BEGIN 
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'GAS',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM GastoD      WHERE ID = @ID GROUP BY ClavePresupuestal
      SELECT @Ejercicio = Ejercicio FROM Gasto  WHERE ID = @ID
    END
  END 
  
  IF @Modulo = 'EXPLO' AND ISNULL(@ClavePresupuestalExp,'') <> ''
  BEGIN ---  E X P L O R A D O R
    SELECT @ObjetoGastoExp = dbo.fnCDIObjetoGasto (@ClavePresupuestalExp, 0)
    INSERT INTO #Modulo (Modulo,  ObjetoGasto,		ClavePresupuestal) 
    VALUES              (@Modulo, @ObjetoGastoExp,	@ClavePresupuestalExp) 
    SELECT @Ejercicio = @EjercicioExplorador
    IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL 
  END   ---  E X P L O R A D O R

  ---- C P C A L N E T O 
  INSERT INTO #CPCalNeto(Empresa,		Proyecto,			ClavePresupuestal,		Ejercicio,		Periodo,	Presupuesto,				ClaveObjeto)
  SELECT				 CC.Empresa,	CC.Proyecto,		CC.ClavePresupuestal,	CC.Ejercicio,	CC.Periodo,	ISNULL(CC.Presupuesto,0),	dbo.fnCDIObjetoGasto (CC.ClavePresupuestal, 0)
  FROM CPCalNeto CC
  		INNER JOIN #Modulo M
		ON M.ClavePresupuestal = CC.ClavePresupuestal
  WHERE CC.Empresa  = @Empresa     
    AND ISNULL(CC.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,CC.Proyecto),'') 
    AND CC.Ejercicio = @Ejercicio
  
  SELECT  Empresa,		
		  Proyecto,
		  ClavePresupuestal, 
     	  Ejercicio , 
		  [1] AS Enero,		
		  [2] AS Febrero,	
		  [3] AS Marzo,		
		  [4] AS Abril,		
		  [5] AS Mayo,		
		  [6] AS Junio,		
		  [7]  AS Julio,
		  [8]  AS Agosto,
		  [9]  AS Septiembre,
		  [10] AS Octubre,  
		  [11] AS Noviembre,
		  [12] AS Diciembre	 	 	 	
  FROM 
	(SELECT Empresa, Proyecto, ClavePresupuestal, Ejercicio, Periodo, Presupuesto FROM #CPCalNeto) P
	PIVOT
	(
	SUM (Presupuesto) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )
	) AS PVT

RETURN
END 
GO

--EXEC spCDICPCalNeto 'DEMO',	'Proyecto 1', 'DEMO', 19, 'COMS', '',2010	
--EXEC spCDICPCalNeto 'DEMO',	'', 'DEMO', 19, 'EXPLO', '1000-02',2010	
--SELECT * FROM CPCalNeto WHERE EMPRESA = 'DEMO' AND PROYECTO = '1'
--SELECT ClavePresupuestal, Ejercicio, Periodo, Presupuesto  FROM CPCalNeto order by ClavePresupuestal  where Periodo = 1 and Ejercicio = 2009 and ClavePresupuestal = 'A00 1803 001 O099 3300 1 1'



-----------------------------------------------
---- S P C D I C P C A L R E S E R V A D O ----
-----------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_ID('dbo.spCDICPCalReservado') AND Type = 'P') DROP PROCEDURE dbo.spCDICPCalReservado
GO

CREATE PROCEDURE spCDICPCalReservado (
                @Empresa				varchar (5), 
				@Proyecto				varchar (50),
				@Usuario				varchar (10),
				@ID						int,
				@Modulo					varchar (5),
                @ClavePresupuestalExp	varchar(50),
                @EjercicioExplorador	int	
				)
AS 
BEGIN
  DECLARE	@IDMin				int,
			@IDMax				int,
			@IDMinU				int,
			@IDMaxU				int,
			@Ejercicio			int,
            @ObjetoGastoExp		varchar(50),  
			@ClaveObjeto 		varchar(50),
			@ClaveObjetoP		varchar(50),
			@ClaveObjetoH		varchar(50)

  CREATE TABLE #CPCalReservado (  
			ID 					 int         	NOT NULL IDENTITY(1,1),
	        Empresa              varchar(5), 
            Proyecto             varchar(50),   
            ClavePresupuestal    varchar(50),
            Ejercicio             int,
            Periodo              int, 
            Presupuesto          money,
			ClaveObjeto			 varchar(55)	
                       )

   CREATE TABLE #Modulo (  
			ID 					 int         	NOT NULL IDENTITY(1,1),
	        Modulo               varchar(5), 
            ObjetoGasto          varchar(10),
			ClavePresupuestal    varchar(100)		
                       )     
  
  
  -------------------------------------------------------- EMM
  IF @Modulo = 'CP' 
  BEGIN
    INSERT INTO #Modulo (Modulo, ObjetoGasto,	ClavePresupuestal) SELECT 'CP',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPD WHERE ID = @ID GROUP BY ClavePresupuestal  
    SELECT @Ejercicio = Ejercicio FROM CP   WHERE ID = @ID
  END 
  IF @Modulo = 'COMS' 
  BEGIN 
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'COMS' AND ModuloID = @ID)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'COMS', dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'COMS' AND ModuloID = @ID
      SELECT @Ejercicio = Ejercicio FROM Compra WHERE ID = @ID   
    END
    ELSE
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto,	ClavePresupuestal) SELECT 'COMS', dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CompraD     WHERE ID = @ID GROUP BY ClavePresupuestal
      SELECT @Ejercicio = Ejercicio FROM Compra WHERE ID = @ID
    END
  END  
  IF @Modulo = 'CXP' 
  BEGIN
    INSERT INTO #Modulo (Modulo, ObjetoGasto,	ClavePresupuestal) SELECT 'CXP',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0),          ClavePresupuestal FROM MovImpuesto WHERE ModuloID = @ID AND Modulo = 'CXP' GROUP BY ClavePresupuestal
    INSERT INTO #Modulo (Modulo, ObjetoGasto,   ClavePresupuestal) SELECT 'CXP',  dbo.fnCDIObjetoGasto (ClavePresupuestalImpuesto1, 0), ClavePresupuestalImpuesto1 FROM MovImpuesto WHERE ModuloID = @ID AND Modulo = 'CXP' AND ISNULL(ClavePresupuestalImpuesto1,'') <> '' GROUP BY ClavePresupuestalImpuesto1
    SELECT @Ejercicio = Ejercicio FROM CXP   WHERE ID = @ID
  END
  IF @Modulo = 'DIN'  
  BEGIN
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'DIN' AND ModuloID = @ID)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'DIN',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'DIN' AND ModuloID = @ID
      SELECT @Ejercicio = Ejercicio FROM Dinero WHERE ID = @ID
    END
    ELSE 
    BEGIN  
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'DIN',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM MovImpuesto WHERE Modulo = 'DIN' AND ModuloID = @ID
      SELECT @Ejercicio = Ejercicio FROM Dinero WHERE ID = @ID
    END
  END  
  IF @Modulo = 'GAS'  
  BEGIN
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'GAS' AND ModuloID = @ID)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'GAS',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'GAS' AND ModuloID = @ID GROUP BY ClavePresupuestal
      SELECT @Ejercicio = Ejercicio FROM Gasto  WHERE ID = @ID
    END
    ELSE 
    BEGIN 
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'GAS',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM GastoD      WHERE ID = @ID GROUP BY ClavePresupuestal
      SELECT @Ejercicio = Ejercicio FROM Gasto  WHERE ID = @ID
    END
  END  

  IF @Modulo = 'EXPLO' AND ISNULL(@ClavePresupuestalExp,'') <> ''
  BEGIN ---  E X P L O R A D O R
    SELECT @ObjetoGastoExp = dbo.fnCDIObjetoGasto (@ClavePresupuestalExp, 0)
    INSERT INTO #Modulo (Modulo,  ObjetoGasto,		ClavePresupuestal) 
    VALUES              (@Modulo, @ObjetoGastoExp,	@ClavePresupuestalExp) 
    SELECT @Ejercicio = @EjercicioExplorador
    IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL 
  END   ---  E X P L O R A D O R

  INSERT INTO #CPCalReservado	(Empresa,		Proyecto,			ClavePresupuestal,		Ejercicio,		Periodo,	Presupuesto,	ClaveObjeto)
  SELECT						 CC.Empresa,	CC.Proyecto,		CC.ClavePresupuestal,	CC.Ejercicio,	CC.Periodo,	CC.Presupuesto,	dbo.fnCDIObjetoGasto (CC.ClavePresupuestal, 6)
    FROM CPCalReservado CC	
   INNER JOIN #Modulo M
  	  ON M.ClavePresupuestal = CC.ClavePresupuestal
   WHERE CC.Empresa  = @Empresa 
     AND ISNULL(CC.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,CC.Proyecto),'') 
     AND CC.Ejercicio = @Ejercicio
   
  SELECT * FROM #CPCalReservado

RETURN
END 
GO

--EXEC spCDICPCalReservado 'DEMO', 'Proyecto 1', 'DEMO', 85, 'COMS',  '',       0
--EXEC spCDICPCalReservado 'DEMO', 'Proyecto 1', 'DEMO', 19, 'EXPLO', '1000-02',2010


 
 

---------------------------------------------------
---- S P C D I C P C A L N E T O M E N S U A L ----
---------------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE ID = Object_id('dbo.spCDICPCalNetoMensual') AND TYPE = 'P') DROP PROCEDURE dbo.spCDICPCalNetoMensual
GO
CREATE PROCEDURE spCDICPCalNetoMensual (
				@Empresa1				varchar(5), 
				@Proyecto1				varchar (50),
				@Usuario				varchar (10),
				@ID1					int,
				@Modulo					varchar (5),
                @ClavePresupuestalExp	varchar(50),
                @EjercicioExplorador	int	
				)
AS 
BEGIN
DECLARE @Cont				int	,
        @Empresa			varchar(5), 
        @Proyecto			varchar(50),
        @CvePresup			varchar(50),
        @Ejercido			money,
        @EjercidoMA			money,  
        @EjercidoPagado		money,
        @EjercidoPagadoMA	money, 
        @Presupuesto		money, 
        @PresupuestoMA		money, 
        @Acumulado			money,
        @AcumuladoMA		money,
        @Reservado			money,
		@ReservadoMA		money,	
		@Disponible			money,
		@DisponibleMA		money,       
		@IDMin				int,
		@IDMax				int,
		@IDMinU				int,
		@IDMaxU				int,
		@Ejercicio			int,
        @ObjetoGastoExp		varchar(50),  
		@ClaveObjeto 		varchar(50),
		@ClaveObjetoP		varchar(50),
		@ClaveObjetoH		varchar(50),
		@ClavePresupuestal1	varchar(100),
		@ClavePresupuestal2	varchar(100),
		@RemanteDisponible  float,	
		@Mes13  Money
	
CREATE TABLE #CPCalNetoMensual (  
							ID 					 int         	NOT NULL IDENTITY(1,1),
	                        Empresa              varchar(5), 
                            Proyecto             varchar(50),   
                            ClavePresupuestal    varchar(50),
                            Periodo              int,
                            Presupuesto          money,
                            Comprometido         money,
                            Comprometido2        money,
                            Devengado            money,
                            Devengado2           money,
                            Ejercido             money,
                            EjercidoPagado       money,
                            Sobrante             money,
                            Disponible           money,
							Reservado			 money,
							AcumuladoMesAnt      money,
							ClaveObjeto			 varchar(55),							
							Ejercicio			 int,
							Mes13                money
                            )

CREATE TABLE #Modulo   (  
							ID 					 int         	NOT NULL IDENTITY(1,1),
							Modulo               varchar(5), 
							ObjetoGasto          varchar(10),
							ClavePresupuestal    varchar(100)		
                       )
  
  IF @Modulo = 'CP' 
  BEGIN
    INSERT INTO #Modulo (Modulo, ObjetoGasto,	ClavePresupuestal) SELECT 'CP',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPD WHERE ID = @ID1 GROUP BY ClavePresupuestal  
    SELECT @Ejercicio = Ejercicio FROM CP   WHERE ID = @ID1
  END
  IF @Modulo = 'COMS' 
  BEGIN 
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'COMS' AND ModuloID = @ID1)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'COMS', dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'COMS' AND ModuloID = @ID1
      SELECT @Ejercicio = Ejercicio FROM Compra WHERE ID = @ID1   
    END
    ELSE
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'COMS', dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CompraD     WHERE ID = @ID1 GROUP BY ClavePresupuestal
      SELECT @Ejercicio = Ejercicio FROM Compra WHERE ID = @ID1
    END
  END  
  IF @Modulo = 'CXP' 
  BEGIN
    INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'CXP',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0),          ClavePresupuestal FROM MovImpuesto WHERE ModuloID = @ID1 AND Modulo = 'CXP' GROUP BY ClavePresupuestal
    INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'CXP',  dbo.fnCDIObjetoGasto (ClavePresupuestalImpuesto1, 0), ClavePresupuestalImpuesto1 FROM MovImpuesto WHERE ModuloID = @ID1 AND Modulo = 'CXP' AND ISNULL(ClavePresupuestalImpuesto1,'') <> '' GROUP BY ClavePresupuestalImpuesto1
    SELECT @Ejercicio = Ejercicio FROM CXP   WHERE ID = @ID1
  END
  IF @Modulo = 'DIN'  
  BEGIN
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'DIN' AND ModuloID = @ID1)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'DIN',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'DIN' AND ModuloID = @ID1
      SELECT @Ejercicio = Ejercicio FROM Dinero WHERE ID = @ID1
    END
    ELSE 
    BEGIN  
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'DIN',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM MovImpuesto WHERE Modulo = 'DIN' AND ModuloID = @ID1
      SELECT @Ejercicio = Ejercicio FROM Dinero WHERE ID = @ID1
    END
  END  
  IF @Modulo = 'GAS'  
  BEGIN
    IF EXISTS(SELECT * FROM CPCalMov WHERE  Modulo = 'GAS' AND ModuloID = @ID1)
    BEGIN
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'GAS',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM CPCalMov WHERE  Modulo = 'GAS' AND ModuloID = @ID1
      SELECT @Ejercicio = Ejercicio FROM Gasto  WHERE ID = @ID1
    END
    ELSE 
    BEGIN 
      INSERT INTO #Modulo (Modulo, ObjetoGasto, ClavePresupuestal) SELECT 'GAS',  dbo.fnCDIObjetoGasto (ClavePresupuestal, 0), ClavePresupuestal FROM GastoD      WHERE ID = @ID1 GROUP BY ClavePresupuestal
      SELECT @Ejercicio = Ejercicio FROM Gasto  WHERE ID = @ID1
    END
  END  
  
  IF @Modulo = 'EXPLO' AND ISNULL(@ClavePresupuestalExp,'') <> ''
  BEGIN ---  E X P L O R A D O R
    SELECT @ObjetoGastoExp = dbo.fnCDIObjetoGasto (@ClavePresupuestalExp, 0)
    INSERT INTO #Modulo (Modulo,  ObjetoGasto,		ClavePresupuestal) 
    VALUES              (@Modulo, @ObjetoGastoExp,	@ClavePresupuestalExp) 
    SELECT @Ejercicio = @EjercicioExplorador
    IF @Proyecto1 IS NULL OR @Proyecto1 = ' ' OR @Proyecto1 = 'NULL' OR @Proyecto1 = 'Todo' OR @Proyecto1 = 'Todos' OR @Proyecto1 = '(Todos)'  SELECT @Proyecto1 = NULL 
  END   ---  E X P L O R A D O R
   

DECLARE crClavePresupuestal CURSOR 
FOR SELECT e.Empresa,
           e.Proyecto,
           d.ClavePresupuestal                            
      FROM CPD d
     INNER JOIN CP e 
        ON e.ID = d.ID AND e.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
     INNER JOIN MovTipo mt 
        ON mt.Modulo = 'CP' AND mt.Mov = e.Mov AND mt.Clave IN ('CP.AS', 'CP.TA') 
     INNER JOIN #Modulo M
		ON M.ClavePresupuestal = d.ClavePresupuestal
     WHERE E.Empresa   = @Empresa1 
       AND E.Ejercicio = @Ejercicio 
       AND ISNULL(E.Proyecto,'')  = ISNULL(ISNULL(@Proyecto1,E.Proyecto),'') 
     GROUP BY e.Empresa, e.Proyecto, d.ClavePresupuestal       
OPEN crClavePresupuestal 
FETCH NEXT FROM crClavePresupuestal INTO @Empresa, @Proyecto, @CvePresup
WHILE @@FETCH_STATUS = 0
BEGIN
    SELECT @Cont=0                            
    WHILE (11>=@Cont)
    BEGIN
        SELECT @Cont= @Cont+1
        IF @Cont = 1 SELECT @Acumulado = 0.00        
        SELECT @Presupuesto    = ISNULL((SELECT cn.Presupuesto FROM CPCalNeto cn WHERE Empresa=@Empresa AND Proyecto=@Proyecto AND cn.ClavePresupuestal=@CvePresup AND CN.Ejercicio = @Ejercicio AND cn.Periodo= @Cont),   0.0)                 
        SELECT @PresupuestoMA  = ISNULL((SELECT cn.Presupuesto FROM CPCalNeto cn WHERE Empresa=@Empresa AND Proyecto=@Proyecto AND cn.ClavePresupuestal=@CvePresup AND CN.Ejercicio = @Ejercicio AND cn.Periodo= @Cont-1), 0.0)
    /*
        SELECT @Ejercido       = ISNULL((SELECT ISNULL(SUM(d2.Ejercido), 0.0)
                                          FROM CPD d2
                                          JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                          JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') AND d2.ejercido <> NULL AND month (e2.FechaEmision)=@Cont AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                          WHERE e2.Ejercicio = @Ejercicio 
                                       GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0)
      */                                 
		--ISNULL((SELECT ISNULL(SUM(d2.Comprometido), 0.0) + ISNULL(SUM(d2.Comprometido2), 0.0) + ISNULL(SUM(d2.Devengado), 0.0) + ISNULL(SUM(d2.Devengado2), 0.0) + ISNULL(SUM(d2.Ejercido ), 0.0) + ISNULL(SUM(d2.EjercidoPagado), 0.0)
		SELECT @Ejercido       = ISNULL((SELECT ISNULL(SUM(d2.Ejercido), 0.0)
                                          FROM CPD d2
                                          JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                          JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP')
                                          --AND d2.ejercido <> NULL 
                                          AND month (e2.FechaEmision)=@Cont AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                          WHERE e2.Ejercicio = @Ejercicio and e2.Periodo = @Cont
                                       GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0)
		
        SELECT @EjercidoMA     = ISNULL((SELECT ISNULL(SUM(d2.Ejercido), 0.0)
                                          FROM CPD d2
                                          JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                          JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                          --AND d2.ejercido <> NULL 
                                          AND month (e2.FechaEmision)=@Cont-1 AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                          WHERE e2.Ejercicio = @Ejercicio  and e2.Periodo = @Cont
                                       GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0)
               
        SELECT @EjercidoPagado = ISNULL((SELECT ISNULL(SUM(d2.EjercidoPagado), 0.0)
                                         FROM CPD d2
                                           JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                           JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP')
                                           -- AND d2.EjercidoPagado>1 
                                            AND month (e2.FechaEmision)=@Cont AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                         WHERE e2.Ejercicio = @Ejercicio  and e2.Periodo = @Cont
                                         GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0)
        SELECT @EjercidoPagadoMA= ISNULL((SELECT ISNULL(SUM(d2.EjercidoPagado), 0.0)
                                         FROM CPD d2
                                           JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                           JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                           -- AND d2.EjercidoPagado>1 
                                           AND month (e2.FechaEmision)=@Cont-1 AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                         WHERE e2.Ejercicio = @Ejercicio  and e2.Periodo = @Cont
                                         GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0)
        
        SELECT @RemanteDisponible= ISNULL((SELECT ISNULL(SUM(d2.RemanenteDisponible), 0.0)
                                         FROM CPD d2
                                           JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                           JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                           --AND d2.EjercidoPagado>1 
                                           AND month (e2.FechaEmision)=@Cont-1 AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                         WHERE e2.Ejercicio = @Ejercicio  and e2.Periodo = @Cont
                                         GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0) 

        SELECT @Mes13= ISNULL((SELECT ISNULL(SUM(d2.Sobrante), 0.0)
                                         FROM CPD d2
                                           JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                           JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                           --AND d2.EjercidoPagado>1 
                                           AND month (e2.FechaEmision)=@Cont-1 AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                         WHERE e2.Ejercicio = @Ejercicio  and e2.Periodo = @Cont
                                         GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0)                                                                                  
		                                         
		SELECT @Reservado      = ISNULL((SELECT ISNULL(CC.Presupuesto,0.0) FROM CPCalReservado CC WHERE CC.Empresa=@Empresa AND CC.Proyecto=@Proyecto AND CC.ClavePresupuestal=@CvePresup AND CC.Periodo=@Cont    AND CC.Ejercicio=@Ejercicio),0.00)
        SELECT @ReservadoMA    = ISNULL((SELECT ISNULL(CC.Presupuesto,0.0) FROM CPCalReservado CC WHERE CC.Empresa=@Empresa AND CC.Proyecto=@Proyecto AND CC.ClavePresupuestal=@CvePresup AND CC.Periodo=@Cont -1 AND CC.Ejercicio=@Ejercicio),0.00)		
        
        SELECT @Acumulado      = ISNULL(@PresupuestoMA,00) - ISNULL(@EjercidoMA, 0.00) - ISNULL(@EjercidoPagadoMA,0.00) - ISNULL(@ReservadoMA,0.00) + ISNULL(@Acumulado,0.00)
       
        --SELECT @Disponible     = ISNULL(@Presupuesto,0.00) - ISNULL(@Ejercido, 0.00)   - ISNULL(@EjercidoPagado,0.00)   - ISNULL(@Reservado,0.00)  + ISNULL(@Acumulado,0.00)
        -- Adecuacion 5159 JB             
        SELECT @Disponible     = ISNULL(@Presupuesto,0.00) - ISNULL(@Ejercido, 0.00)  - ISNULL(@Mes13,0.00)   
             
        INSERT INTO #CPCalNetoMensual 
        SELECT 
               'Empresa'            =  @Empresa, 
               'Proyecto'           =  @Proyecto,
               'Clave Presupuestal' =  @CvePresup,
               'Periodo'            =  @Cont,  
               
               'Presupuesto'        =  @Presupuesto,
               'Comprometido' = ISNULL((SELECT ISNULL(SUM(d2.Comprometido), 0.0)
                                          FROM CPD d2
                                          JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                          JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                          --AND d2.Comprometido>1 
                                          AND month (e2.FechaEmision)=@Cont AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                          WHERE e2.Ejercicio = @Ejercicio and e2.Periodo = @Cont
                                       GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0),
               'Comprometido2' = ISNULL((SELECT ISNULL(SUM(d2.Comprometido2), 0.0)
                                          FROM CPD d2
                                          JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                          JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                          --AND d2.Comprometido2>1 
                                          AND month (e2.FechaEmision)=@Cont AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                          WHERE e2.Ejercicio = @Ejercicio and e2.Periodo = @Cont
                                       GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0),                                       
               'Devengado' = ISNULL((SELECT ISNULL(SUM(d2.Devengado), 0.0)
                                          FROM CPD d2
                                          JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                          JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                          --AND d2.Devengado>1 
                                          AND month (e2.FechaEmision)=@Cont AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                          WHERE e2.Ejercicio = @Ejercicio and e2.Periodo = @Cont
                                       GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0),
               'Devengado2' = ISNULL((SELECT ISNULL(SUM(d2.Devengado2), 0.0)
                                          FROM CPD d2
                                          JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                          JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                          -- AND d2.Devengado2>1 
                                          AND month (e2.FechaEmision)=@Cont AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                          WHERE e2.Ejercicio = @Ejercicio and e2.Periodo = @Cont
                                       GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0),
                                       
               'Ejercido' = @Ejercido,
                                       
               'Ejercido Pagado' = @EjercidoPagado,
                                                                              
               'Sobrante' = ISNULL((SELECT ISNULL(SUM(d2.Sobrante), 0.0)
                                          FROM CPD d2
                                          JOIN CP e2 ON e2.ID = d2.ID AND e2.Estatus IN ('SINAFECTAR','PENDIENTE','CONCLUIDO')
                                          JOIN MovTipo mt2 ON mt2.Modulo = 'CP' AND mt2.Mov = e2.Mov AND mt2.Clave IN ('CP.AS', 'CP.TA', 'CP.OP') 
                                          --AND d2.Sobrante>1 
                                          AND month (e2.FechaEmision)=@Cont AND d2.ClavePresupuestal=@CvePresup AND e2.Empresa=@Empresa AND e2.Proyecto=@Proyecto
                                          WHERE e2.Ejercicio = @Ejercicio  and e2.Periodo = @Cont
                                       GROUP BY e2.Empresa, e2.Proyecto, d2.ClavePresupuestal), 0.0),

               'Disponible'      = @Disponible,

			   'Reservado'       = @Reservado,

               'AcumuladoMesAnt' = @Acumulado,				  

               'ClaveObjeto'     = dbo.fnCDIObjetoGasto (@CvePresup, 0),
               'Ejercicio'       = @Ejercicio,
               'Mes13'           = @Mes13
               
    END  
	FETCH NEXT FROM crClavePresupuestal INTO @Empresa, @Proyecto, @CvePresup    
END
CLOSE crClavePresupuestal
DEALLOCATE crClavePresupuestal


  SELECT * FROM #CPCalNetoMensual cnm

RETURN
END 
GO

-- EXEC spCDICPCalNetoMensual 'CDI', 'Socios', '01', 0, 'EXPLO', '511-000-028-000-000', 2011		