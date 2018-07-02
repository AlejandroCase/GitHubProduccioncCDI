SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. PRESUPUESTO AÑO SIGUIENTE
  -- Cliente   . CDI
  -- Folio     . 4696
  -- Fecha     . 22 / 11 / 10
  -- Autor     . EDER MENDOZA


---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 55071) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (55071,	'Falta Especificar el Nivel Porcentaje.',	'ERROR',	0)		
GO

IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 55072) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (55072,	'Falta Especificar el Método.',	'ERROR',	0)		
GO

IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 10555) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (10555,	'No se genero Información en las Tablas.',	'ERROR',	0)		
GO

----------------------------------------------------------------
---- S P C D I C P I N S E R T P R E S U P U E S T O S I G -----
----------------------------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Id = Object_id('dbo.spCDICPInsertPresupuestoSig') AND Type = 'P') DROP PROCEDURE dbo.spCDICPInsertPresupuestoSig
GO
CREATE PROCEDURE spCDICPInsertPresupuestoSig
                    @Empresa		varchar(50),
					@Mov			varchar(20),
					@Sucursal		int,
					@EjercicioSig	int,
					@Usuario		varchar(10),	
                    @Proyecto		varchar(50),
					@Concepto		varchar(50),
					@Observaciones	varchar(100),
					@Moneda			varchar(10),
					@Referencia		varchar(50),
					@Estatus		varchar(15),
					@Tipo			varchar(20),
					@FechaEmision	datetime,
					@UltimoCambio	datetime,
					@Estacion		int,
					@Ok				int			OUTPUT
					

AS BEGIN   
   DECLARE  @ID				int,            													
			@TipoCambio		float			 
   
   SELECT @TipoCambio =  TipoCambio  FROM Mon WHERE Moneda   = @Moneda
   -----------------
   BEGIN TRANSACTION    
     INSERT INTO CP (Empresa,				Mov,				MovID,			FechaEmision,	UltimoCambio,   Concepto,			Proyecto,			Moneda,		
	 				 TipoCambio,			Usuario,			Autorizacion,	Referencia,		DocFuente,		Observaciones,		Estatus,			Situacion, 
				     SituacionFecha,		SituacionUsuario,	SituacionNota,	OrigenTipo,		Origen,			OrigenID,			Poliza,				PolizaID, 
				     GenerarPoliza,			ContID,				Ejercicio,		Periodo,		FechaRegistro,	FechaConclusion,	FechaCancelacion,	Sucursal, 
				     SucursalOrigen,		UEN,				Agente,			Personal,		Comentarios)
     VALUES         (@Empresa,				@Mov,				NULL,			@FechaEmision,  @UltimoCambio,	@Concepto,			@Proyecto,			@Moneda,	
				     ISNULL(@TipoCambio,1),	@Usuario,			NULL,			@Referencia,	NULL,			@Observaciones,		@Estatus,			NULL, 
				     NULL,					NULL,				NULL,			NULL,			NULL,			NULL,				NULL,				NULL, 
				     @Sucursal,				NULL,				NULL,			NULL,			NULL,			NULL,				NULL,				0, 
				     @Sucursal,				NULL,				NULL,			NULL,			'')

     SELECT @ID = SCOPE_IDENTITY()
     IF @ID > 0
     BEGIN --- I D
       INSERT INTO CPD (ID,			ClavePresupuestal,	Renglon,												Sucursal,		SucursalOrigen, 
						Tipo,		Importe,			Presupuesto,											Comprometido,	Comprometido2,	
						Devengado,	Devengado2,			Ejercido,												EjercidoPagado, Sobrante,	
						Anticipos,	RemanenteDisponible)
       SELECT           @ID,		ClavePresupuestal,	ROW_NUMBER()OVER(ORDER BY ClavePresupuestal) * 2048.0,	@Sucursal,		@Sucursal,		
						@Tipo,		Importe,			NULL,													NULL,			NULL,			
						NULL,		NULL,				NULL,													NULL,			NULL,	
						NULL,		NULL 
         FROM #TotalClavePresupuestal         
        WHERE ISNULL(Importe,0) > 0 

       IF EXISTS (SELECT * FROM CPD WHERE ID = @ID)
       BEGIN --- E X I S T S
         INSERT INTO CPCal (ID,  ClavePresupuestal, Tipo,  Ejercicio,     Periodo, Importe, EnMov, Sucursal,  SucursalOrigen)
         SELECT             @ID, ClavePresupuestal, @Tipo, @EjercicioSig, Periodo, Importe, NULL,  @Sucursal, @Sucursal
           FROM #CPPresupSig 
          WHERE Importe > 0
          ORDER BY ClavePresupuestal, Periodo  
         
         EXEC spAfectar 'CP', @ID, 'CONSECUTIVO', 'Todo', NULL, @Usuario, @Estacion, @EnSilencio = 1, @Conexion = 1, @Ok = @Ok OUTPUT
       END   --- E X I S T S
     END   --- I D
   
   IF EXISTS (SELECT * FROM MensajeLista WHERE Tipo = 'INFO' AND Mensaje = @Ok) SET @Ok = 0

   IF ISNULL(@Ok,0) > 0 ROLLBACK    
   ELSE 
   BEGIN -- O K
     SELECT @Ok = 0
     COMMIT TRANSACTION
   END   -- O K     
 RETURN
END
GO



-----------------------------------------------------------------------------
-------- S P C D I P R E S U P U E S T O A N O S I G U I E N T E ------------
-----------------------------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spCDIPresupuestoAnoSiguiente') and type = 'P') drop procedure dbo.spCDIPresupuestoAnoSiguiente
GO

CREATE PROCEDURE spCDIPresupuestoAnoSiguiente            			
			@Empresa	varchar(5),
			@Sucursal	int,
			@Usuario	varchar(10),
			@Estacion	int
				 
AS
BEGIN   
  DECLARE 
		  @OK				int,
		  @IDMax			int,		
		  @IDMin 			int,
		  @Ejercicio		int,
		  @EjercicioSig		int,	
		  @Periodo			int,
		  @Moderado			float,
		  @Optimista		float,
		  @Pesimista		float,
		  @InflacionAnual	float,		  
		  @PorcentajeDesc	float,	
		  @FechaEmision		datetime,	
		  @UltimoCambio		datetime,
		  @FechaInicio1		datetime,	
		  @FechaInicio2		datetime,		
		  @FechaFin1		datetime,
		  @FechaFin2		datetime,
		  @FechaInicio1L	varchar(20),	
		  @FechaInicio2L	varchar(20),
		  @FechaFin2L		varchar(20),		
		  @Concepto			varchar(50),
		  @Observaciones	varchar(100),		  
		  @Referencia		varchar(50),	
		  @Estatus			varchar(15),
		  @Proyecto			varchar(50),
		  @Mov				varchar(20),
		  @PorcentajeANivel	varchar(50),	
		  @Metodo			varchar(50),
		  @Moneda			varchar(10),
		  @Tipo				varchar(20)			

  
  CREATE TABLE #CPPresupSig(
		ID					int	IDENTITY(1,1)	NOT NULL,	
        ClavePresupuestal	varchar(50)			NULL,
		Proyecto			varchar(50)			NULL,				
		Importe				money				NULL,
		Ejercicio			int					NULL,
		Periodo				int					NULL,
		InflacionAnual		float				NULL,
		PorcentajeDesc		float				NULL)

  CREATE TABLE #TotalClavePresupuestal(
		ID					int	IDENTITY(1,1)	NOT NULL,	
        ClavePresupuestal	varchar(50)			NULL,
		Importe				money				NULL)

  SELECT @FechaEmision     = FechaEmision,
         @EjercicioSig     = Ejercicio,
         @Proyecto         = Proyecto, 
         @Mov              = Mov, 
         @Moderado         = Moderado, 
         @Optimista        = Optimista, 
         @Pesimista        = Pesimista, 
         @InflacionAnual   = InflacionAnual,
         @PorcentajeANivel = PorcentajeANivel,
         @Metodo		   = Metodo 	
    FROM CDIPresupuestoAnoSig 
   WHERE Empresa = @Empresa

  SELECT @Estatus = 'SINAFECTAR', @Concepto = 'Borrador Presupuesto', @Observaciones = 'Generado por Herramienta', @Referencia = 'Borrador Presupuesto', @Moneda = 'Pesos', @Tipo = 'Ampliacion'
  SELECT @UltimoCambio = @FechaEmision
  EXEC spExtraerFecha @FechaEmision OUTPUT 

  SELECT @Ejercicio    = DATEPART(yy,@FechaEmision)
  SELECT @Periodo      = DATEPART(mm,@FechaEmision)
  -------------------------------------------------
  SELECT @FechaInicio1 = DATEADD (mm, -1, @FechaEmision)   
  SELECT @FechaInicio1L= CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),1),2) + RIGHT('00' + CONVERT(varchar(2),1),2)
  SELECT @FechaInicio1 = CONVERT(datetime,@FechaInicio1L)
  --------------------------------------------------
  SELECT @FechaInicio2L= CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)
  SELECT @FechaInicio2 = CONVERT(datetime,@FechaInicio2L)
  --------------------------------------------------
  SELECT @FechaFin1    = DATEADD (dd, -1, @FechaInicio2) 
  --------------------------------------------------
  SELECT @FechaFin2L= CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),12),2) + RIGHT('00' + CONVERT(varchar(2),31),2)
  SELECT @FechaFin2 = CONVERT(datetime,@FechaFin2L)

  --- V A L I D A C I O N E S 
  IF ISNULL(@Proyecto,'') <> ''
  BEGIN --- P R O Y E C T O
    IF ISNULL(@Mov,'') <> ''
    BEGIN --- M O V
      IF ISNULL(@PorcentajeANivel, '') <> ''
      BEGIN --- P O R C E N T A J E
        IF ISNULL(@Metodo,'') <> ''
        BEGIN --- M E T O D O
          IF ISNULL(@FechaEmision,'') <> ''
          BEGIN --- F E C H A 
            SET @OK = 0 
          END   --- F E C H A
          ELSE SET @OK = 46100
        END   --- M E T O D O 
        ELSE SET @OK = 55072 
      END   --- P O R C E N T A J E
      ELSE SET @OK = 55071
    END   --- M O V
    ELSE SET @OK = 10160
  END   --- P R O Y E C T O
  ELSE SET @OK = 15010
  -----------------------------
  --- P O R C E N T A J E S ---
  -----------------------------
  IF @PorcentajeANivel = 'Global'
  BEGIN --- G L O B A L
    IF @Metodo = 'Optimista' SET @PorcentajeDesc = @Optimista
    IF @Metodo = 'Moderado'  SET @PorcentajeDesc = @Moderado
    IF @Metodo = 'Pesimista' SET @PorcentajeDesc = @Pesimista
  END   --- G L O B A L
  IF @PorcentajeANivel = 'Detalle'
  BEGIN --- D E T A L L E 
    SELECT @Optimista = 0, @Moderado = 0, @Pesimista = 0   
  END   --- D E T A L L E  

  IF ISNULL(@OK,0) = 0 
  BEGIN
    --- O P E R A C I O N   R E A L
    INSERT INTO #CPPresupSig (ClavePresupuestal,	Proyecto,	Importe,									Ejercicio,   Periodo,   InflacionAnual,				    
                              PorcentajeDesc)
    SELECT                    D.ClavePresupuestal,	@Proyecto,	SUM(ISNULL(D.Comprometido,0)*C.TipoCambio),	C.Ejercicio, C.Periodo, ISNULL(@InflacionAnual,0)/ 100,	
                              CASE WHEN @PorcentajeANivel = 'Global' THEN ISNULL(@PorcentajeDesc,0)/ 100 
                                   WHEN @PorcentajeANivel = 'Detalle' AND @Metodo = 'Optimista' THEN (SELECT ISNULL(Cv.Optimista,0)/ 100  FROM ClavePresupuestal Cv WHERE Cv.ClavePresupuestal = D.ClavePresupuestal)
                                   WHEN @PorcentajeANivel = 'Detalle' AND @Metodo = 'Moderado'  THEN (SELECT ISNULL(Cv.Moderado,0)/ 100   FROM ClavePresupuestal Cv WHERE Cv.ClavePresupuestal = D.ClavePresupuestal)
                                   WHEN @PorcentajeANivel = 'Detalle' AND @Metodo = 'Pesimista' THEN (SELECT ISNULL(Cv.Pesimista,0)/ 100  FROM ClavePresupuestal Cv WHERE Cv.ClavePresupuestal = D.ClavePresupuestal)
                                   ELSE 0 END
      FROM CP C
     INNER JOIN CPD D
        ON D.ID = C.ID
     INNER JOIN MovTipo M
        ON M.Modulo = 'CP' AND M.Clave IN ('CP.OP') AND M.Mov = C.Mov
     WHERE C.Empresa		= @Empresa	
       AND C.Proyecto       = @Proyecto  
       AND C.Estatus        = 'CONCLUIDO'      
       AND C.FechaEmision  >= @FechaInicio1
       AND C.FechaEmision  < DATEADD(d,1,@FechaFin1)                     
     GROUP BY D.ClavePresupuestal, C.Ejercicio, C.Periodo
    --- P R E S U P U E S T O    
    INSERT INTO #CPPresupSig (ClavePresupuestal,    Proyecto,	 Importe,        Ejercicio,    Periodo,    InflacionAnual,				    
                              PorcentajeDesc)
    SELECT                    CD.ClavePresupuestal, CD.Proyecto, CD.Presupuesto, CD.Ejercicio, CD.Periodo, ISNULL(@InflacionAnual,0)/ 100,	
                              CASE WHEN @PorcentajeANivel = 'Global' THEN ISNULL(@PorcentajeDesc,0)/ 100 
                                   WHEN @PorcentajeANivel = 'Detalle' AND @Metodo = 'Optimista' THEN (SELECT ISNULL(Cv.Optimista,0)/ 100  FROM ClavePresupuestal Cv WHERE Cv.ClavePresupuestal = CD.ClavePresupuestal)
                                   WHEN @PorcentajeANivel = 'Detalle' AND @Metodo = 'Moderado'  THEN (SELECT ISNULL(Cv.Moderado,0)/ 100   FROM ClavePresupuestal Cv WHERE Cv.ClavePresupuestal = CD.ClavePresupuestal)
                                   WHEN @PorcentajeANivel = 'Detalle' AND @Metodo = 'Pesimista' THEN (SELECT ISNULL(Cv.Pesimista,0)/ 100  FROM ClavePresupuestal Cv WHERE Cv.ClavePresupuestal = CD.ClavePresupuestal)
                                   ELSE 0 END
      FROM CPCalDisponible CD
     WHERE CD.Empresa	   = @Empresa	 
       AND CD.Proyecto     = @Proyecto 
       AND CD.Periodo     >= DATEPART(mm,@FechaInicio2) 
       AND CD.Periodo     <= DATEPART(mm,@FechaFin2) 
       AND CD.Ejercicio    = @Ejercicio
    --- P O R C E N T A J E  I N F L A C I O N    
    UPDATE #CPPresupSig SET Importe = (Importe * InflacionAnual) + Importe
    UPDATE #CPPresupSig SET Importe = (Importe * PorcentajeDesc) + Importe
    ----------------------------------------
    INSERT INTO #TotalClavePresupuestal (ClavePresupuestal, Importe)
    SELECT                               ClavePresupuestal, SUM(ISNULL(Importe,0)) 
      FROM #CPPresupSig
     GROUP BY ClavePresupuestal 
     ORDER BY ClavePresupuestal 
       
    IF EXISTS (SELECT * FROM #CPPresupSig) AND EXISTS (SELECT * FROM #TotalClavePresupuestal) 
    BEGIN --- E X I S T S
      IF EXISTS(SELECT * FROM #TotalClavePresupuestal WHERE Importe > 0)
      BEGIN --- I M P O R T E
        EXEC spCDICPInsertPresupuestoSig @Empresa, @Mov, @Sucursal, @EjercicioSig, @Usuario, @Proyecto, @Concepto, @Observaciones, @Moneda, @Referencia, @Estatus, @Tipo, @FechaEmision, @UltimoCambio, @Estacion, @Ok OUTPUT
      END   --- I M P O R T E
      ELSE SET @OK = 30351
    END   --- E X I S T S
    ELSE SET @OK = 10555
  END
  
  SELECT @OK
       
RETURN 
END
GO

--EXEC spCDIPresupuestoAnoSiguiente 'DEMO', 0, 'EMENDOZA', 101
--SELECT * FROM MENSAJELISTA WHERE MENSAJE = @OK
--SELECT * FROM MENSAJELISTA WHERE DESCRIPCION LIKE ('%IMPORTE%')

-----------------------------------------------------------------------------
-------- S P C D I P R E S U P U E S T O A N O S I G D E L E T E ------------
-----------------------------------------------------------------------------
IF exists (select * from sysobjects where id = object_id('dbo.spCDIPresupuestoAnoSigDelete') and type = 'P') drop procedure dbo.spCDIPresupuestoAnoSigDelete
GO

CREATE PROCEDURE spCDIPresupuestoAnoSigDelete
			@Empresa	varchar(5)
				 
AS
BEGIN   
  DELETE FROM CDIPresupuestoAnoSig WHERE Empresa = @Empresa
  
RETURN 
END
GO

--EXEC spCDIPresupuestoAnoSigDelete 'DEMO'
