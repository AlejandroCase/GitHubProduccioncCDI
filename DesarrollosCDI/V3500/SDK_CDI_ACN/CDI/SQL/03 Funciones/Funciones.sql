SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. CATALOGO DE ROLES
  -- Cliente   . CDI
  -- Folio     . 4554
  -- Fecha     . 07 / 10 / 10
  -- Autor     . EDER MENDOZA


------------------------------------------------------------------------------------
--------------- D B O . F N C D I N O M B R E C O M P L E T O C A T ----------------
------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Name = 'fnCDINombreCompletoCat' and TYPE = 'fn') DROP FUNCTION dbo.fnCDINombreCompletoCat
GO

CREATE FUNCTION dbo.fnCDINombreCompletoCat
(                
   @Catalogo		varchar(50),
   @ClavePersona	varchar(10)
)
RETURNS varchar(155)
AS BEGIN
  DECLARE @NombreCompleto	varchar(155)
  
  IF @Catalogo = 'Proveedor'   
  BEGIN --- P R O V E D O R
    IF EXISTS (SELECT * FROM Prov     WHERE Proveedor  = @ClavePersona) 
    BEGIN 
      IF EXISTS (SELECT * FROM Prov  WHERE Proveedor  = @ClavePersona AND ISNULL(CDINombre,'') <> '')
        SELECT @NombreCompleto = ISNULL(CDINombre,'') + '  ' + ISNULL(CDIApellidoPaterno,'') + '  ' + ISNULL(CDIApellidoMaterno,'') FROM Prov     WHERE Proveedor  = @ClavePersona
      ELSE
       SELECT @NombreCompleto = ISNULL(Nombre,'') FROM Prov     WHERE Proveedor  = @ClavePersona
    END
  END   --- P R O V E D O R
 
  IF @Catalogo = 'Personal'   
    SELECT @NombreCompleto = ISNULL(Pe.Nombre,'')          + '  ' + ISNULL(Pe.ApellidoPaterno,'')    + '  ' + ISNULL(Pe.ApellidoMaterno,'')					FROM Personal Pe WHERE Pe.Personal   = @ClavePersona
  IF @Catalogo = 'Socios'   
    SELECT @NombreCompleto = ISNULL(Ct.PersonalNombres,'') + '  ' + ISNULL(Ct.PersonalApellidoPaterno,'')  + '  ' + ISNULL(Ct.PersonalApellidoMaterno,'')   FROM Cte Ct      WHERE Ct.Cliente    = @ClavePersona
  IF @Catalogo = 'Clientes'   
    SELECT @NombreCompleto = ISNULL(Ct.Nombre,'')																											FROM Cte Ct      WHERE Ct.Cliente    = @ClavePersona
 
RETURN (@NombreCompleto)
END
GO
--SELECT dbo.fnCDINombreCompletoCat('Proveedor','PROV001')
IF EXISTS (SELECT * FROM Sysobjects WHERE Name = 'fnCDIPrecioCuota' and TYPE = 'fn') DROP FUNCTION dbo.fnCDIPrecioCuota
GO
CREATE FUNCTION dbo.fnCDIPrecioCuota (@Cuota        varchar(30))
RETURNS money
AS BEGIN
	DECLARE @Precio money
	
	SELECT @Precio = (SELECT TOP 1 Precio FROM ListaPreciosD lpd WHERE lpd.Lista =@Cuota)
	
	RETURN(@Precio)
END
GO

------------------------------------------------------------------------------------
--------------- CDIAutorizacionFlujo ----------------
------------------------------------------------------------------------------------
IF EXISTS(SELECT * FROM sysobjects s WHERE TYPE = 'p' AND NAME = 'CDIAutorizacionFlujo') DROP PROCEDURE CDIAutorizacionFlujo
GO
CREATE PROCEDURE CDIAutorizacionFlujo 
        @Modulo                 VARCHAR(5), 
        @ID                     INT
AS 
BEGIN
  DECLARE 
  	@Autorizacion       BIT,
  	@TablaModulo        VARCHAR(30),
  	@Variables          NVARCHAR(MAX),
  	@SQL                NVARCHAR(MAX)
  
  SELECT @TablaModulo = dbo.fnMovTabla(@Modulo)
  
  SELECT @Variables = '
  	    @ID                     int, 
  	    @CDIFlujoAutorizacion   bit             OUTPUT'
  
  SELECT @SQL = 'SELECT @CDIFlujoAutorizacion = CDIFlujoAutorizacion FROM ' + @TablaModulo + ' WHERE ID = @ID'
  
  EXEC sp_ExecuteSQL @SQL, @Variables, @ID, @Autorizacion OUTPUT

  SELECT @Autorizacion
  
  RETURN
END
GO

------------------------------------------------------
--------------- fnCDISociosXMembresia ----------------
------------------------------------------------------
--BEGM 20101020. Venta Cobro
IF OBJECT_ID('fnCDISociosXMembresia', 'IF') IS NOT NULL
  DROP FUNCTION fnCDISociosXMembresia
GO

CREATE FUNCTION fnCDISociosXMembresia (@Cliente varchar(10))
RETURNS Table
AS
RETURN
  (SELECT NoTarjeta, Vigencia, Institucion, NoSeguridad, CtaBancariaDom, Ctes.Membresia, tarj.Cliente, Ctes.Nombre
   FROM (SELECT NoTarjeta, Vigencia, Institucion, NoSeguridad, CtaBancariaDom, Cliente
         FROM CDIDatosBancarios
         WHERE ISNULL(NoTarjeta, '') <> ''
         UNION ALL
         SELECT AMEX, VigenciaAMEX, 'AMEX', NoSeguridadAMEX, ' ' CtaBancariaDom, Cliente
         FROM CDIDatosBancarios cdb
         WHERE ISNULL(AMEX, '') <> '' ) tarj
   INNER JOIN (SELECT Cliente, Membresia, PersonalNombres + ' ' + PersonalApellidoPaterno + ' ' + PersonalApellidoMaterno Nombre 
               FROM Cte 
               WHERE CDISocio = 1 AND Cliente = @Cliente
               UNION ALL
               SELECT Cliente, Membresia, PersonalNombres + ' ' + PersonalApellidoPaterno + ' ' + PersonalApellidoMaterno Nombre 
               FROM Cte 
               WHERE Membresia = (SELECT Membresia FROM Cte WHERE CDISocio = 1 AND Cliente = @Cliente) AND Cliente <> @Cliente
               ) Ctes ON tarj.Cliente = Ctes.Cliente
    )
GO

------------------------------------------------------
--------------- CDIfnCDIArchivoProcesado ----------------
------------------------------------------------------
--BEGM 20101022. Cargos Automáticos
IF OBJECT_ID('CDIfnCDIArchivoProcesado', 'FN') IS NOT NULL
  DROP FUNCTION CDIfnCDIArchivoProcesado 
GO

CREATE FUNCTION CDIfnCDIArchivoProcesado(@Archivo varchar(100))
RETURNS BIT
AS
BEGIN
  DECLARE @Existe bit 
  
  WHILE CHARINDEX('\', @Archivo, 1) <> 0
    SET @Archivo = SUBSTRING(@Archivo, (CHARINDEX('\', @Archivo, 1) + 1), 100)

  SELECT @Existe = CAST(1 as bit)
  FROM CDIArchProcCargoAuto
  WHERE Archivo = @Archivo
  
  RETURN ISNULL(@Existe, 0)
END
GO



-------------------------------------------------
--- Desarrollo. VALIDA PARTIDA PRESUPUESTAL   ---
--- Cliente   . CDI                           ---
--- Folio     . 4647                          ---
--- Fecha     . 29 / 10 / 10                  ---
--- Autor     . EDER MENDOZA                  ---
-------------------------------------------------   

-------------------------------------------------------
--------------- D B O . F N C D I C P  ----------------
-------------------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Name = 'fnCDICP' and TYPE = 'fn') DROP FUNCTION dbo.fnCDICP
GO

CREATE FUNCTION dbo.fnCDICP
(                
   @Articulo			varchar(20),
   @ClasificacionGasto	varchar(50),	
   @Concepto			varchar(50),
   @Proyecto			varchar(50),	
   @Modulo				varchar(50)


)
RETURNS varchar(50)
AS BEGIN
  DECLARE @ID					int, 	
		  @CategoriaArt			varchar(50),          
		  @ClavePresupuestal	varchar(50)

  IF @Modulo = 'COMS'
  BEGIN --- C O M S
    SELECT @CategoriaArt = Categoria FROM Art WHERE Articulo = @Articulo
    
    SELECT @ID = MAX(C.ID) FROM CP C
     INNER JOIN CPD D
        ON D.ID = C.ID
     INNER JOIN CDICPArtCat A
        ON A.ID = C.ID AND A.ClavePresupuestal = D.ClavePresupuestal
     WHERE C.Estatus   = 'CONCLUIDO'
       AND A.Categoria = @CategoriaArt
       AND C.Proyecto  = @Proyecto
    
    IF ISNULL(@ID,0) > 0  SELECT @ClavePresupuestal = ClavePresupuestal FROM CDICPArtCat WHERE ID = @ID AND Categoria = @CategoriaArt --- C A T E G O R I A
    ELSE
    BEGIN --- A R T I C U L O
      SELECT @ID = MAX(C.ID) FROM CP C
       INNER JOIN CPD D
          ON D.ID = C.ID
       INNER JOIN CPArt A
          ON A.ID = C.ID AND A.ClavePresupuestal = D.ClavePresupuestal
       WHERE C.Estatus  = 'CONCLUIDO'
         AND A.Articulo = @Articulo 
         AND C.Proyecto = @Proyecto          

      SELECT @ClavePresupuestal = ClavePresupuestal FROM CPArt WHERE ID = @ID AND Articulo = @Articulo
    END   --- A R T I C U L O          
  END   --- C O M S 
  

  IF @Modulo = 'GAS'
  BEGIN --- G A S
    IF ISNULL(@ClasificacionGasto,'')  = '' SELECT @ClasificacionGasto = Clase FROM Concepto WHERE Modulo = 'GAS' AND Concepto = @Concepto

    SELECT @ID = MAX(C.ID) FROM CP C
     INNER JOIN CPD D
        ON D.ID = C.ID
     INNER JOIN CDICPClasificacion Cl
        ON Cl.ID = C.ID AND Cl.ClavePresupuestal = D.ClavePresupuestal
     WHERE C.Estatus        = 'CONCLUIDO'
       AND Cl.Clasificacion = @ClasificacionGasto
       AND Cl.Modulo        = 'GAS' 
       AND C.Proyecto       = @Proyecto           
    
    IF ISNULL(@ID,0) > 0  SELECT @ClavePresupuestal = ClavePresupuestal FROM CDICPClasificacion WHERE ID = @ID AND Clasificacion = @ClasificacionGasto --- C L A S I F I C A C I O N
    ELSE
    BEGIN --- C O N C E P T O
      SELECT @ID = MAX(C.ID) FROM CP C
       INNER JOIN CPD D
          ON D.ID = C.ID
       INNER JOIN CDICPConcepto Co
          ON Co.ID = C.ID AND Co.ClavePresupuestal = D.ClavePresupuestal
       WHERE C.Estatus   = 'CONCLUIDO'
         AND Co.Concepto = @Concepto
         AND Co.Modulo   = 'GAS' 
         AND C.Proyecto  = @Proyecto  

      SELECT @ClavePresupuestal = ClavePresupuestal FROM CDICPConcepto WHERE ID = @ID AND Concepto = @Concepto AND Modulo = 'GAS'   
    END   --- C O N C E P T O
  END   --- G A S

RETURN (@ClavePresupuestal)
END
GO
--SELECT dbo.fnCDICP('','','Honorarios','Proyecto 1', 'GAS')


------------------------------------------------------------------
--------------- D B O . F N C D I C P V A L I D A ----------------
------------------------------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Name = 'fnCDICPValida' and TYPE = 'fn') DROP FUNCTION dbo.fnCDICPValida
GO

CREATE FUNCTION dbo.fnCDICPValida
(                
   @Articulo			varchar(20),
   @ClasificacionGasto	varchar(50),	
   @Concepto			varchar(50),
   @Proyecto			varchar(50),	
   @Modulo				varchar(50),
   @ClavePresupuestal	varchar(50)
)
RETURNS int
AS BEGIN
  DECLARE @ID				int,
          @Bandera			int,
		  @CategoriaArt		varchar(50),
		  @Especificar		varchar(50)	

  SELECT @Especificar = Especificar FROM ClavePresupuestal WHERE ClavePresupuestal = @ClavePresupuestal
  SELECT @Bandera = 0
 
  IF @Modulo = 'COMS'
  BEGIN --- C O M S
    SELECT @CategoriaArt = Categoria FROM Art WHERE Articulo = @Articulo   
    IF @Especificar = 'Categorias Articulos'
    BEGIN --- C A T E G O R I A   A R T I C U L O S  
      IF NOT EXISTS (SELECT * FROM CP C
                      INNER JOIN CPD D
                         ON D.ID = C.ID
                      INNER JOIN CDICPArtCat A
                         ON A.ID = C.ID AND A.ClavePresupuestal = D.ClavePresupuestal
                      WHERE C.Estatus           = 'CONCLUIDO'
                        AND A.Categoria         = @CategoriaArt
                        AND C.Proyecto          = @Proyecto
                        AND A.ClavePresupuestal = @ClavePresupuestal) SELECT @Bandera = 1
    END   --- C A T E G O R I A   A R T I C U L O S
    IF @Especificar = 'Articulos'
    BEGIN --- A R T I C U L O S  
      IF NOT EXISTS(SELECT * FROM CP C
                     INNER JOIN CPD D
                        ON D.ID = C.ID
                     INNER JOIN CPArt A
                        ON A.ID = C.ID AND A.ClavePresupuestal = D.ClavePresupuestal
                     WHERE C.Estatus           = 'CONCLUIDO'
                       AND A.Articulo          = @Articulo 
                       AND C.Proyecto          = @Proyecto          
                       AND A.ClavePresupuestal = @ClavePresupuestal)  SELECT @Bandera = 1       
    END   --- A R T I C U L O  
	
	IF @Especificar NOT IN  ('Articulos','Categorias Articulos')  SELECT @Bandera = 1        
  
  END   --- C O M S   

  IF @Modulo = 'GAS'
  BEGIN --- G A S
    
    IF ISNULL(@ClasificacionGasto,'')  = '' SELECT @ClasificacionGasto = Clase FROM Concepto WHERE Modulo = 'GAS' AND Concepto = @Concepto

    IF @Especificar = 'Clasificaciones Gastos'
    BEGIN --- C L A S I F I C A C I O N   G A S T O S
      IF NOT EXISTS(SELECT * FROM CP C
                     INNER JOIN CPD D
                        ON D.ID = C.ID
                     INNER JOIN CDICPClasificacion Cl
                        ON Cl.ID = C.ID AND Cl.ClavePresupuestal = D.ClavePresupuestal
                     WHERE C.Estatus            = 'CONCLUIDO'
                       AND Cl.Clasificacion     = @ClasificacionGasto
                       AND Cl.Modulo            = 'GAS' 
                       AND C.Proyecto           = @Proyecto           
                       AND Cl.ClavePresupuestal = @ClavePresupuestal) SELECT @Bandera = 1
    END  --- C L A S I F I C A C I O N   G A S T O S
    IF @Especificar = 'Conceptos Gastos'
    BEGIN --- C O N C E P T O S          G A S T O S 
      IF NOT EXISTS (SELECT * FROM CP C
                      INNER JOIN CPD D
                         ON D.ID = C.ID
                      INNER JOIN CDICPConcepto Co
                         ON Co.ID = C.ID AND Co.ClavePresupuestal = D.ClavePresupuestal
                      WHERE C.Estatus            = 'CONCLUIDO'
                        AND Co.Concepto          = @Concepto
                        AND Co.Modulo            = 'GAS' 
                        AND C.Proyecto           = @Proyecto  
                        AND Co.ClavePresupuestal = @ClavePresupuestal) SELECT @Bandera = 1
    END   --- C O N C E P T O S          G A S T O S 
    
     IF @Especificar NOT IN  ('Conceptos Gastos','Clasificaciones Gastos')  SELECT @Bandera = 1
     
  END   --- G A S

RETURN (@Bandera)
END
GO
--SELECT dbo.fnCDICPValida('','','AGUA','Proyecto 2', 'GAS', '3001-12')



--BEGM 20101104. Calculo de subsidios
------------------------------------------------------
----------------- fnCDIPorcSubsidio ------------------
------------------------------------------------------
IF OBJECT_ID('fnCDIPorcSubsidio', 'FN') IS NOT NULL
  DROP FUNCTION fnCDIPorcSubsidio 
GO

CREATE FUNCTION fnCDIPorcSubsidio (@FactorEgre float, @FactorEgreBas float)
RETURNS float
AS
BEGIN
  DECLARE @PorcSubsidio float
  
  IF @FactorEgre <= 1.00
    SET @PorcSubsidio = CASE WHEN @FactorEgreBas > 60.00 THEN 50.00
                             WHEN @FactorEgreBas BETWEEN 30.00 AND 60.00 THEN 20.00
                             ELSE 0.00 END
  ELSE
  IF @FactorEgre BETWEEN 1.01 AND 2.00
    SET @PorcSubsidio = CASE WHEN @FactorEgreBas > 60.00 THEN 30.00
                             WHEN @FactorEgreBas BETWEEN 30.00 AND 60.00 THEN 10.00
                             ELSE 0.00 END
  ELSE
    SET @PorcSubsidio = 0.00
  
  RETURN (@PorcSubsidio)

END
GO

---------------------------------------------------------
----------------- fnCDICalculaSubsidio ------------------
---------------------------------------------------------
IF OBJECT_ID('fnCDICalculaSubsidio ', 'FN') IS NOT NULL
  DROP FUNCTION fnCDICalculaSubsidio  
GO

CREATE FUNCTION fnCDICalculaSubsidio (@Cliente varchar(10))
RETURNS money
AS
BEGIN
  DECLARE @Ingresos float, 
          @Egresos  float, 
          @Factor   float, 
          @EgreBas  float, 
          @Coleg    float, 
          @FactEgreBas float, 
          @PorcSub float, 
          @CuotaMembresia money, 
          @ImporteSubs money
          
  SELECT @Ingresos = ISNULL(IngresoMensual, 0), 
         @Egresos = ISNULL(Alimentacion, 0) + ISNULL(GastosMedicos, 0)+ ISNULL(Gas, 0) + ISNULL(Recracion, 0)+ ISNULL(Agua, 0) + 
                    ISNULL(AbonosCreditos, 0) + ISNULL(Predial, 0) + ISNULL(RopaCalzado, 0) + ISNULL(Telefono, 0) + ISNULL(FondoAhorro, 0) + 
                    ISNULL(TelefonoCelular, 0) + ISNULL(Transporte, 0) + ISNULL(Otros, 0) + ISNULL(OtrosDependientes, 0) + ISNULL(MontoRentaMes, 0), 
         @EgreBas = ISNULL(Alimentacion, 0) + ISNULL(Agua, 0) + ISNULL(MontoRentaMes, 0) + ISNULL(GastosMedicos, 0)
  FROM CDIEstudioSocioeconomico 
  WHERE Cliente = @Cliente
  
  SELECT @Coleg = ISNULL(SUM(Monto),0)
  FROM CDIColegiaturas c 
  WHERE c.Cliente = @Cliente

  SELECT @Egresos = @Egresos + @Coleg, 
         @EgreBas = @EgreBas + @Coleg
  
  SET @Egresos = CASE WHEN @Egresos = 0 THEN 1 ELSE @Egresos END
  SET @Factor = @Ingresos/@Egresos

  SELECT @FactEgreBas = (@EgreBas / @Egresos) * 100
  
  SELECT @PorcSub = dbo.fnCDIPorcSubsidio(@Factor, @FactEgreBas)
  
  SELECT @CuotaMembresia = ISNULL(CDICuotaMembresia,0) FROM Cte WHERE Cliente = @Cliente

  SET @ImporteSubs = @CuotaMembresia * (@PorcSub/100) --(1-(@PorcSub/100)) BEGM 20101117. Regrese el importe de subsidio y no la cuota total

  RETURN @ImporteSubs 
END
GO


-----------------------------------------
--- Desarrollo. SIMULACION DEL MES 13 ---
--- Cliente   . CDI                   ---
--- Folio     . 4650                  ---
--- Fecha     . 08 / 11 / 10          ---
--- Autor     . EDER MENDOZA          ---
-----------------------------------------   

--------------------------------------------------------------------------------
--------------- D B O . F N C D I I M P O R T E S I M M E S 1 3 ----------------
--------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Name = 'fnCDIImporteSimMes13' and TYPE = 'fn') DROP FUNCTION dbo.fnCDIImporteSimMes13
GO

CREATE FUNCTION dbo.fnCDIImporteSimMes13
(                
		@Empresa			varchar(5),
		@Proyecto			varchar(50),
		@ClavePresupuestal	varchar(50),
		@Ejercicio			int,
		@Periodo			int	
)
RETURNS money
AS BEGIN
  DECLARE @Importe				money,
          @SaldoComprometido	money,
          @saldoComprometido2	money,  
          @SaldoEjercido		money,
          @SaldoEjercidoPagado	money,
		  @SaldoSobrante		money,
		  @SaldoRemanenteDisponible money,
		  @SaldoDevolucionAnticipo  MONEY,    
          @Total				money,
		  @FlujoPeriodo			MONEY
		


  SELECT @SaldoComprometido	  = ISNULL(SUM(d.Comprometido*e.TipoCambio), 0.0),       
         @SaldoEjercido		  = ISNULL(SUM(d.Ejercido*e.TipoCambio), 0.0),
         @SaldoEjercidoPagado = ISNULL(SUM(d.EjercidoPagado), 0.0)              
         --@SaldoSobrante       = ISNULL(SUM(d.Sobrante*e.TipoCambio), 0.0),
         --@SaldoRemanenteDisponible	= ISNULL(SUM(D.RemanenteDisponible*e.TipoCambio), 0.00)  
    FROM CPD D
    JOIN CP E ON E.ID = D.ID AND E.Estatus = 'CONCLUIDO'
    JOIN MovTipo MT ON MT.Modulo = 'CP' AND MT.Mov = E.Mov AND MT.Clave IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.OP')
   WHERE E.Empresa         = @Empresa
AND E.Proyecto          = @Proyecto
AND D.ClavePresupuestal = @ClavePresupuestal  
AND E.Ejercicio         = @Ejercicio  
AND E.Periodo           = @Periodo -- '<' Solo el periodo a cerrar, no anteriores
AND D.Comprometido 		> 0

SELECT @saldoComprometido2   = ISNULL(SUM(D.Comprometido2*e.TipoCambio), 0.00)      
FROM CPD D     
JOIN CP E ON E.ID = D.ID AND E.Estatus = 'CONCLUIDO'    
JOIN MovTipo MT ON MT.Modulo = 'CP' AND MT.Mov = E.Mov AND MT.Clave IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.OP')      
WHERE E.Origen   = 'Cargo por Aj. Provee'    
AND E.Empresa   = @Empresa    
AND E.Proyecto   = @Proyecto    
AND D.ClavePresupuestal = @ClavePresupuestal      
AND E.Ejercicio         = @Ejercicio      
AND E.Periodo           = @Periodo    -- '<' Solo el periodo a cerrar, no anteriores
AND D.Comprometido2  > 0    
  
SELECT @SaldoRemanenteDisponible = ISNULL(SUM(D.RemanenteDisponible*e.TipoCambio), 0.00)      
FROM CPD D     
JOIN CP E ON E.ID = D.ID AND E.Estatus = 'CONCLUIDO'    
JOIN MovTipo MT ON MT.Modulo = 'CP' AND MT.Mov = E.Mov AND MT.Clave IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.OP')      
WHERE D.RemanenteDisponible<= 0 --IS NOT NULL    
AND E.Empresa   = @Empresa  
AND E.Proyecto   = @Proyecto  
AND D.ClavePresupuestal = @ClavePresupuestal  
AND E.Ejercicio         = @Ejercicio  
AND E.Periodo           = @Periodo    -- '<' Solo el periodo a cerrar, no anteriores
  
SELECT @SaldoDevolucionAnticipo = ISNULL(SUM(D.RemanenteDisponible*e.TipoCambio), 0.00)      
FROM CPD D     
JOIN CP E ON E.ID = D.ID AND E.Estatus = 'CONCLUIDO'    
JOIN MovTipo MT ON MT.Modulo = 'CP' AND MT.Mov = E.Mov AND MT.Clave IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.OP')      
WHERE E.Origen   IN ('Devolucion Anticipo','Compra Rechazada')  
AND E.Empresa   = @Empresa    
AND E.Proyecto   = @Proyecto    
AND D.ClavePresupuestal = @ClavePresupuestal      
AND E.Ejercicio         = @Ejercicio      
AND E.Periodo           = @Periodo  -- '<' Solo el periodo a cerrar, no anteriores
  
SELECT @SaldoSobrante    = ISNULL(SUM(d.Sobrante*e.TipoCambio), 0.0)       
FROM CPD D     
JOIN CP E ON E.ID = D.ID AND E.Estatus = 'CONCLUIDO'    
JOIN MovTipo MT ON MT.Modulo = 'CP' AND MT.Mov = E.Mov AND MT.Clave IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.OP')      
WHERE D.Sobrante   IS NOT NULL  
AND E.Empresa   = @Empresa    
AND E.Proyecto   = @Proyecto    
AND D.ClavePresupuestal = @ClavePresupuestal       
AND E.Ejercicio         = @Ejercicio   
AND E.Periodo           = @Periodo  -- '<' Solo el periodo a cerrar, no anteriores
  
SELECT @Total = ISNULL(@SaldoEjercido,0) + ISNULL(@SaldoEjercidoPagado,0) + ISNULL(@SaldoComprometido,0) + ISNULL(@SaldoSobrante,0) + ISNULL(@SaldoComprometido2,0)  
SELECT @FlujoPeriodo = ISNULL(SUM(Presupuesto), 0.0)     
FROM CPCalDisponible    
WHERE Empresa = @Empresa AND Proyecto = @Proyecto AND ClavePresupuestal = @ClavePresupuestal AND Ejercicio = @Ejercicio AND Periodo = @Periodo      -- '<' Solo el periodo a cerrar, no anteriores
SELECT @FlujoPeriodo = @FlujoPeriodo + @SaldoRemanenteDisponible + ISNULL(@SaldoDevolucionAnticipo,0)  
SELECT @Importe = ISNULL(@FlujoPeriodo,0) - ISNULL(@Total,0)      
RETURN (@Importe)    
END
GO   
    
--EXEC fnCDIImporteSimMes13 'CDI', 'ACTIVIDADES', '506-037-001-000-000', 2011, 6



--OR E.Origen				= 'Cargo por Aj. Provee'
--AND E.Empresa			= @Empresa
--AND E.Proyecto			= @Proyecto
--AND D.ClavePresupuestal = @ClavePresupuestal  
--AND E.Ejercicio         = @Ejercicio  
--AND E.Periodo           = @Periodo
--AND D.Comprometido2		> 0
--OR D.RemanenteDisponible IS NOT NULL
--AND E.Empresa			= @Empresa
--AND E.Proyecto			= @Proyecto
--AND D.ClavePresupuestal = @ClavePresupuestal  
--AND E.Ejercicio         = @Ejercicio
--AND E.Periodo           = @Periodo

--  SELECT @Total = ISNULL(@SaldoEjercido,0) + ISNULL(@SaldoEjercidoPagado,0) + ISNULL(@SaldoComprometido,0) +/* ISNULL(@SaldoSobrante,0)*/ISNULL(@SaldoComprometido2,0)
  
--  SELECT @FlujoPeriodo = ISNULL(SUM(Presupuesto), 0.0)
--    FROM CPCalDisponible
--   WHERE Empresa = @Empresa AND Proyecto = @Proyecto AND ClavePresupuestal = @ClavePresupuestal AND Ejercicio = @Ejercicio AND Periodo = @Periodo
--  SELECT @FlujoPeriodo = @FlujoPeriodo + @SaldoRemanenteDisponible         
--  SELECT @Importe = ISNULL(@FlujoPeriodo,0) - ISNULL(@Total,0)
   
--RETURN (@Importe)
--END
--GO

---SELECT dbo.fnCDIImporteSimMes13 ('DEMO','Proyecto 1','1000-02',2010,11)

--BEGM 20101111. Desarrollo Formas de Pago, Ventas Cobro
------------------------------------------------------
--------------- fnCDIFormasPagoTipo ------------------
------------------------------------------------------
IF OBJECT_ID('fnCDIFormasPagoTipo', 'IF') IS NOT NULL
  DROP FUNCTION fnCDIFormasPagoTipo
GO

CREATE FUNCTION fnCDIFormasPagoTipo(@Cliente varchar(10), @CEPlan varchar(10) = NULL)
RETURNS Table
AS
RETURN
  ( SELECT Tipo
    FROM FormaPagoTipoD fptd
    INNER JOIN (SELECT fp.FormaPago 
                FROM FormaPago fp
                INNER JOIN CDIFormaPagoCte fpc ON fp.FormaPago = fpc.FormaPago
                INNER JOIN Cte c ON c.Cliente = fpc.Cliente
                INNER JOIN CDIFormaPagoTipSoc fpts ON c.Tipo = fpts.Tipo AND fp.FormaPago = fpts.FormaPago
                WHERE c.Cliente = @Cliente
                ) fps on fptd.FormaPago = fps.FormaPago
    INNER JOIN CDICEPlanFormaPagoTipo pfpt ON fptd.Tipo = pfpt.FormaPagoTipo AND CEPlan = ISNULL(@CEPlan, CEPlan)
    GROUP BY Tipo
    UNION
    SELECT Tipo
    FROM FormaPagoTipoD fpt
    INNER JOIN (SELECT FormaPago 
                FROM FormaPago
                WHERE CDIPorDefault = 1) fpd ON fpt.FormaPago = fpd.FormaPago
    )
GO

------------------------------------------------------
----------------- fnCDIFormasPago --------------------
------------------------------------------------------
IF OBJECT_ID('fnCDIFormasPago', 'TF') IS NOT NULL
  DROP FUNCTION fnCDIFormasPago
GO

CREATE FUNCTION fnCDIFormasPago(@Tipo varchar(50), @Cliente varchar(10))
RETURNS @FormasPago TABLE 
(FormaPago varchar(50) NOT NULL
)
AS
BEGIN
  SET @Tipo = NULLIF(NULLIF(RTRIM(@Tipo), ''), '0')

  IF @Tipo IS NULL
    INSERT INTO @FormasPago
    SELECT FormaPago FROM FormaPago WHERE CDIPorDefault = 1 ORDER BY Orden
  ELSE
    INSERT INTO @FormasPago
    SELECT fp.FormaPago 
    FROM FormaPago fp
    INNER JOIN FormaPagoTipoD fptd ON fp.FormaPago = fptd.FormaPago
    INNER JOIN FormaPagoTipoD fpt ON fpt.FormaPago = fptd.FormaPago
    INNER JOIN CDIFormaPagoCte fpc ON fp.FormaPago = fpc.FormaPago
    INNER JOIN Cte c ON c.Cliente = fpc.Cliente
    INNER JOIN CDIFormaPagoTipSoc fpts ON c.Tipo = fpts.Tipo AND fp.FormaPago = fpts.FormaPago
    WHERE c.Cliente = @Cliente AND fpt.Tipo = CASE WHEN @Tipo = 'TodosTipos' THEN fpt.Tipo ELSE @Tipo END
    UNION
    SELECT FormaPago 
    FROM FormaPago
    WHERE CDIPorDefault = 1

RETURN
END
GO

------------------------------------------------------
------------------ fnCDICondPago ---------------------
------------------------------------------------------
IF OBJECT_ID('fnCDICondPago', 'TF') IS NOT NULL
  DROP FUNCTION fnCDICondPago
GO

CREATE FUNCTION fnCDICondPago(@Cliente varchar(10), @CEPlan varchar(10) = NULL)
RETURNS @CondPago TABLE 
(Condicion varchar(50) NOT NULL
)
AS
BEGIN
  IF @CEPlan IS NULL
    INSERT INTO @CondPago
    SELECT Condicion FROM Condicion WHERE CDIPorDefault = 1 ORDER BY Orden
  ELSE
    INSERT INTO @CondPago
    SELECT cd.Condicion
    FROM Condicion cd
    INNER JOIN CDICEPlanCondicion cepc ON cd.Condicion = cepc.Condicion
    INNER JOIN CDICondPagoCte cpc ON cepc.Condicion = cpc.CondPago
    INNER JOIN Cte c ON c.Cliente = cpc.Cliente
    INNER JOIN CDICondPagoTipSoc cpts ON c.Tipo = cpts.Tipo AND cpts.CondPago = cepc.Condicion
    WHERE c.Cliente = @Cliente AND CEPlan = @CEPlan
    UNION
    SELECT Condicion
    FROM Condicion
    WHERE CDIPorDefault = 1

RETURN
END
GO

-----***** fnTextoRemplazaEtiq *****-----
--BEGM 20120516. Regresa texto del motivo de Baja/Bloqueo
IF OBJECT_ID('fnTextoRemplazaEtiq', 'FN') IS NOT NULL
  DROP FUNCTION fnTextoRemplazaEtiq
GO

CREATE FUNCTION fnTextoRemplazaEtiq(@Texto         varchar(MAX), 
                                    @Mov           varchar(20), 
                                    @EstatusPrev   varchar(15), 
                                    @AccesoPrev    varchar(50), 
                                    @CausaPrev     varchar(50), 
                                    @IDCxc         int, 
                                    @Socio         varchar(30),
                                    @TipoCte       varchar(15),
                                    @MovAnterior   varchar(100))
RETURNS varchar(MAX)    
AS
BEGIN
  DECLARE @Cuantos      int, 
          @i            int, 
          @Etiqueta     varchar(50), 
          @Tbla         varchar(50), 
          @Campo        varchar(50), 
          @Tipo         int, 
          @ValorCxc     varchar(50), 
          @Cadena       varchar(255), 
          @Causas       varchar(500),
          @Fecha        datetime,
          @Clave        varchar(20),
          @MovOrigen    varchar(20),   
          @TipoMov      varchar(10)
          

  SELECT @MovOrigen = Mov FROM Cxc WHERE ID = @IDCxc
  SELECT @Clave = Clave FROM MovTipo WHERE Mov = @MovOrigen AND Modulo = 'CXC'  
  IF @Clave = 'CXC.D'
    SELECT @TipoMov = 'Documentos'
  ELSE
    SELECT @TipoMov = 'Facturas'          
  
  DECLARE @tmpEtiquetas TABLE ( ID        int IDENTITY(1,1), 
                                Etiqueta  varchar(50), 
                                Tbla      varchar(50), 
                                Campo     varchar(50))

  DECLARE @tmpValorCxc TABLE (Valor   varchar(50))

  SELECT @EstatusPrev = ISNULL(@EstatusPrev, ''), 
         @AccesoPrev  = ISNULL(@AccesoPrev, ''), 
         @CausaPrev   = ISNULL(@CausaPrev, ''), 
         @IDCxc       = ISNULL(@IDCxc, 0)
                                   
  INSERT INTO @tmpEtiquetas(Etiqueta, Tbla, Campo)
  SELECT Etiqueta, Tbla, Campo
  FROM CDICfgTextoMovBloq
  
  SELECT @Cuantos = SCOPE_IDENTITY(), @i = 1  
  
  WHILE @i<= @Cuantos
  BEGIN
    SELECT @Etiqueta = Etiqueta, @Tbla = Tbla, @Campo = Campo
    FROM @tmpEtiquetas 
    WHERE ID = @i 
    
    IF @Tbla IN ('CDISocio', 'Cte', 'Cxc')
    BEGIN
      SELECT @Tipo = CASE WHEN Data_Type IN ('char', 'varchar', 'nvarchar', 'nchar') THEN 1
                          WHEN Data_Type IN ('int', 'decimal', 'smallint', 'numeric', 'float', 'real') THEN 2 
                          WHEN Data_Type IN ('datetime', 'smalldatetime') THEN 3 END
      FROM INFORMATION_SCHEMA.COLUMNS
      WHERE Table_Name = @Tbla AND Column_Name = @Campo
      
      IF @Etiqueta = '&Vencimiento&'
      BEGIN  
        SELECT @Fecha = Vencimiento FROM Cxc WHERE ID = @IDCxc
        SELECT @Texto = REPLACE(@Texto, @Etiqueta, CONVERT(VARCHAR(3), DATEDIFF(day, @Fecha, GETDATE())))
      END
      ELSE      
      SELECT @Texto = REPLACE(@Texto, @Etiqueta, ''' + ' + CASE @Tipo WHEN 1 THEN 'ISNULL(' 
                                                                      WHEN 2 THEN 'CAST(ISNULL(' 
                                                                      WHEN 3 THEN 'ISNULL(CONVERT(char(10), ' ELSE '' END + LTRIM(RTRIM(@Tbla)) + '.' + LTRIM(RTRIM(@Campo))
                                                         + CASE @Tipo WHEN 1 THEN ', '''')' 
                                                                      WHEN 2 THEN ', '''') AS varchar(100))' 
                                                                      WHEN 3 THEN ', 101), '''')' ELSE '' END 
                                                         + ' + ''') 
    END
    
    ELSE IF @Tbla = 'CDISocAcessoCfgBloqueo'
      SELECT @Texto = REPLACE(@Texto, @Etiqueta, ''' + CASE CDISocio.Causa WHEN ''Admisión'' THEN CDISocAcessoCfgBloqueo.AdmisionBloqueo
                             WHEN ''Cuota'' THEN CDISocAcessoCfgBloqueo.CuotaBloqueo
                             WHEN ''Inscripción'' THEN CDISocAcessoCfgBloqueo.InscripcionBloqueo
                             WHEN ''OtrosIngresos'' THEN CDISocAcessoCfgBloqueo.OtrosIngresosBloqueo
                             WHEN ''Credencial'' THEN CDISocAcessoCfgBloqueo.CredencialBloqueo
                             WHEN ''Casilleros'' THEN CDISocAcessoCfgBloqueo.CasillerosBloqueo
                             WHEN ''TarjetasBancarias'' THEN CDISocAcessoCfgBloqueo.TarjetasBancariasBloqueo ELSE '''' END  +  ''') 

    ELSE IF @Tbla = 'CDISocAcessoCfgVencimiento'
    BEGIN 
      IF @Campo like '%Tolerancia'
        SELECT @Texto = REPLACE(@Texto, @Etiqueta, ''' + CAST(CASE CDISocio.Causa WHEN ''Admisión'' THEN CDISocAcessoCfgVencimiento.AdmisionTolerancia
                               WHEN ''Cuota'' THEN CDISocAcessoCfgVencimiento.CuotaTolerancia
                               WHEN ''Inscripción'' THEN CDISocAcessoCfgVencimiento.InscripcionTolerancia
                               WHEN ''OtrosIngresos'' THEN CDISocAcessoCfgVencimiento.OtrosIngresosTolerancia
                               WHEN ''Credencial'' THEN CDISocAcessoCfgVencimiento.CredencialTolerancia
                               WHEN ''Casilleros'' THEN CDISocAcessoCfgVencimiento.CasillerosTolerancia
                               WHEN ''TarjetasBancarias'' THEN CDISocAcessoCfgVencimiento.TarjetasBancariasTolerancia ELSE '''' END as varchar(20)) +  ''') 
      ELSE
      BEGIN
        IF @Mov = 'Baja'
          SELECT @Texto = REPLACE(@Texto, @Etiqueta, ''' + CAST(CASE CDISocio.Causa WHEN ''Admisión'' THEN CDISocAcessoCfgVencimiento.AdmisionBaja
                                 WHEN ''Cuota'' THEN CDISocAcessoCfgVencimiento.CuotaBaja
                                 WHEN ''Inscripción'' THEN CDISocAcessoCfgVencimiento.InscripcionBaja
                                 WHEN ''OtrosIngresos'' THEN CDISocAcessoCfgVencimiento.OtrosIngresosBaja
                                 WHEN ''Credencial'' THEN CDISocAcessoCfgVencimiento.CredencialBaja
                                 WHEN ''Casilleros'' THEN CDISocAcessoCfgVencimiento.CasillerosBaja
                                 WHEN ''TarjetasBancarias'' THEN CDISocAcessoCfgVencimiento.TarjetasBancariasBaja ELSE '''' END as varchar(20)) +  ''') 
        ELSE IF @Mov = 'Bloqueo'
          SELECT @Texto = REPLACE(@Texto, @Etiqueta, ''' + CAST(CASE CDISocio.Causa WHEN ''Admisión'' THEN CDISocAcessoCfgVencimiento.AdmisionBloqueado
                                 WHEN ''Cuota'' THEN CDISocAcessoCfgVencimiento.CuotaBloqueado
                                 WHEN ''Inscripción'' THEN CDISocAcessoCfgVencimiento.InscripcionBloqueado
                                 WHEN ''OtrosIngresos'' THEN CDISocAcessoCfgVencimiento.OtrosIngresosBloqueado
                                 WHEN ''Credencial'' THEN CDISocAcessoCfgVencimiento.CredencialBloqueado
                                 WHEN ''Casilleros'' THEN CDISocAcessoCfgVencimiento.CasillerosBloqueado
                                 WHEN ''TarjetasBancarias'' THEN CDISocAcessoCfgVencimiento.TarjetasBancariasBloqueado ELSE '''' END as varchar(20)) +  ''') 
      END
    END
    
    ELSE IF @Tbla = 'Campo Calculado'
    BEGIN
      IF @Etiqueta = '&DiasPolitica&'
      BEGIN
        IF @Mov = 'Baja'
          SELECT @Texto = REPLACE(@Texto, @Etiqueta, ''' + CAST(CASE CDISocio.Causa WHEN ''Admisión'' THEN CDISocAcessoCfgVencimiento.AdmisionBaja + CDISocAcessoCfgVencimiento.AdmisionTolerancia
                                 WHEN ''Cuota'' THEN CDISocAcessoCfgVencimiento.CuotaBaja + CDISocAcessoCfgVencimiento.CuotaTolerancia
                                 WHEN ''Inscripción'' THEN CDISocAcessoCfgVencimiento.InscripcionBaja + CDISocAcessoCfgVencimiento.InscripcionTolerancia
                                 WHEN ''OtrosIngresos'' THEN CDISocAcessoCfgVencimiento.OtrosIngresosBaja + CDISocAcessoCfgVencimiento.OtrosIngresosTolerancia
                                 WHEN ''Credencial'' THEN CDISocAcessoCfgVencimiento.CredencialBaja + CDISocAcessoCfgVencimiento.CredencialTolerancia
                                 WHEN ''Casilleros'' THEN CDISocAcessoCfgVencimiento.CasillerosBaja + CDISocAcessoCfgVencimiento.CasillerosTolerancia
                                 WHEN ''TarjetasBancarias'' THEN CDISocAcessoCfgVencimiento.TarjetasBancariasBaja + CDISocAcessoCfgVencimiento.TarjetasBancariasTolerancia ELSE '''' END as varchar(20)) +  ''') 
        ELSE IF @Mov = 'Bloqueo'
          SELECT @Texto = REPLACE(@Texto, @Etiqueta, ''' + CAST(CASE CDISocio.Causa WHEN ''Admisión'' THEN CDISocAcessoCfgVencimiento.AdmisionBloqueado + CDISocAcessoCfgVencimiento.AdmisionTolerancia
                                 WHEN ''Cuota'' THEN CDISocAcessoCfgVencimiento.CuotaBloqueado + CDISocAcessoCfgVencimiento.CuotaTolerancia
                                 WHEN ''Inscripción'' THEN CDISocAcessoCfgVencimiento.InscripcionBloqueado + CDISocAcessoCfgVencimiento.InscripcionTolerancia
                                 WHEN ''OtrosIngresos'' THEN CDISocAcessoCfgVencimiento.OtrosIngresosBloqueado + CDISocAcessoCfgVencimiento.OtrosIngresosTolerancia
                                 WHEN ''Credencial'' THEN CDISocAcessoCfgVencimiento.CredencialBloqueado + CDISocAcessoCfgVencimiento.CredencialTolerancia
                                 WHEN ''Casilleros'' THEN CDISocAcessoCfgVencimiento.CasillerosBloqueado + CDISocAcessoCfgVencimiento.CasillerosTolerancia
                                 WHEN ''TarjetasBancarias'' THEN CDISocAcessoCfgVencimiento.TarjetasBancariasBloqueado + CDISocAcessoCfgVencimiento.TarjetasBancariasTolerancia ELSE '''' END as varchar(20)) +  ''') 
      END
    END
    
    ELSE IF @Tbla = 'CteHist'
      SELECT @Texto = CASE @Campo WHEN 'Estatus' THEN REPLACE(@Texto, @Etiqueta, ' ' + @EstatusPrev + ' ') 
                                  WHEN 'Descripcion13' THEN REPLACE(@Texto, @Etiqueta, ' ' + @AccesoPrev + ' ') 
                                  WHEN 'Descripcion15' THEN REPLACE(@Texto, @Etiqueta, ' ' + @CausaPrev + ' ') 
                                  ELSE REPLACE(@Texto, @Etiqueta, ' ') END
    ELSE IF @Tbla = 'Movimiento Previo'
      SELECT @Texto = REPLACE(@Texto, @Etiqueta, ' ' + @MovAnterior + ' ')
    

    SET @i = @i + 1
  END

  SELECT @Causas = COALESCE(@Causas + ',', '') + Causa FROM CDIPasoSocBloqueoDepura WHERE Socio = @Socio GROUP BY Causa 
  SELECT @Causas = ISNULL(@Causas, '')
  SELECT @Texto = @Texto + ' Causas de Bloqueo: ' + @Causas

  SET @Texto = '''' + @Texto + ''''
  SET @Texto = 'SELECT @SQLOUT = ' + @Texto + '
                FROM CDISocio
                INNER JOIN Cte ON CDISocio.Cliente = Cte.Cliente and CDISocio.Socio = Cte.Socio
                LEFT JOIN CDISocAcessoCfgBloqueo ON CDISocAcessoCfgBloqueo.Empresa = CDISocio.Empresa and CDISocAcessoCfgBloqueo.Tipo = '''+@TipoCte+'''
                LEFT JOIN CDISocAcessoCfgVencimiento ON CDISocAcessoCfgVencimiento.Empresa = CDISocio.Empresa AND CDISocAcessoCfgVencimiento.AplicaA = '''+@TipoMov+''' and CDISocAcessoCfgVencimiento.Tipo = '''+@TipoCte+'''
                LEFT JOIN Cxc ON Cxc.Empresa = CDISocio.Empresa AND Cxc.Cliente = CDISocio.Cliente AND Cxc.ID = ' + LTRIM(STR(@IDCxc)) + '
                WHERE CDISocio.Mov = ''' + @Mov + ''''

  
  RETURN @Texto
  
END
GO

IF EXISTS (SELECT * FROM Sysobjects WHERE Name = 'CDIfnTotalArt' and TYPE = 'fn') DROP FUNCTION dbo.CDIfnTotalArt
GO
CREATE FUNCTION CDIfnTotalArt(@Articulo VARCHAR(20), @FechaA1 DATETIME, @Ejercicio INT, @Almacen VARCHAR (10) )
RETURNS FLOAT
AS
BEGIN
  DECLARE @Total FLOAT,
          @FechaD1 DATETIME
  
  SELECT  @FechaD1 = MIN(Fecha) FROM Tiempo WHERE Anio = @Ejercicio   
  
 SELECT @Total = Sum(isnull(id.Cantidad, 0))
   FROM Inv i
        LEFT JOIN InvD id    ON id.ID = i.ID              
        LEFT JOIN Art a      ON a.Articulo = id.Articulo
  WHERE id.Articulo = @Articulo AND i.Estatus = 'CONCLUIDO' 
		AND i.Mov IN ('Salida Cafeteria', 'Salida Diversa', 'Salida Rápida') 
		AND FechaEmision BETWEEN @FechaD1 AND @FechaA1
		AND i.Almacen = ISNULL(@Almacen, i.Almacen) 
  
  RETURN ISNULL(@Total, 0)
END
GO

