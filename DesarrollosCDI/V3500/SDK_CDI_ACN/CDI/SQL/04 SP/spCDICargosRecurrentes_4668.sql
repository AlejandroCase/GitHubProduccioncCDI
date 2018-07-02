SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--------------------------------------
--- Desarrollo. CARGOS RECURRENTES ---
--- Cliente   . CDI                ---
--- Folio     . 4668               ---
--- Fecha     . 11 / 10 / 10       ---
--- Autor     . EDER MENDOZA       ---
--------------------------------------   

--------------------------------------------------
---- C O N D I C I O N E S  Q U I N C E N A S ----
--------------------------------------------------
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '1 Quincena')   INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('1 Quincena',   1,  1)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '2 Quincenas')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('2 Quincenas',  2,  2)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '3 Quincenas')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('3 Quincenas',  3,  3)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '4 Quincenas')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('4 Quincenas',  4,  4)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '5 Quincenas')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('5 Quincenas',  5,  5)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '6 Quincenas')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('6 Quincenas',  6,  6)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '7 Quincenas')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('7 Quincenas',  7,  7)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '8 Quincenas')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('8 Quincenas',  8,  8)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '9 Quincenas')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('9 Quincenas',  9,  9)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '10 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('10 Quincenas', 10, 10)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '11 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('11 Quincenas', 11, 11)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '12 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('12 Quincenas', 12, 12)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '13 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('13 Quincenas', 13, 13)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '14 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('14 Quincenas', 14, 14)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '15 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('15 Quincenas', 15, 15)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '16 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('16 Quincenas', 16, 16)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '17 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('17 Quincenas', 17, 17)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '18 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('18 Quincenas', 18, 18)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '19 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('19 Quincenas', 19, 19)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '20 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('20 Quincenas', 20, 20)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '21 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('21 Quincenas', 21, 21)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '22 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('22 Quincenas', 22, 22)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '23 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('23 Quincenas', 23, 23)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '24 Quincenas') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('24 Quincenas', 24, 24)
------------------------------------------
---- C O N D I C I O N E S  M E S E S ----
------------------------------------------
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '1 Mes')    INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('1 Mes',    1,  101)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '2 Meses')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('2 Meses',  2,  102)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '3 Meses')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('3 Meses',  3,  103)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '4 Meses')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('4 Meses',  4,  104)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '5 Meses')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('5 Meses',  5,  105)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '6 Meses')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('6 Meses',  6,  106)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '7 Meses')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('7 Meses',  7,  107)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '8 Meses')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('8 Meses',  8,  108)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '9 Meses')  INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('9 Meses',  9,  109)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '10 Meses') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('10 Meses', 10, 110)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '11 Meses') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('11 Meses', 11, 111)
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '12 Meses') INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('12 Meses', 12, 112)
--------------------------------------
---- C O N D I C I O N E S  A N O ----
--------------------------------------
IF NOT EXISTS (SELECT * FROM CDICondicionesRecurrentes WHERE Condicion = '1 Año')    INSERT INTO CDICondicionesRecurrentes(Condicion, NumeroDocumentos, Orden)VALUES('1 Año',    1,  201)


-------------------------------------------
---- S P C D I V E N T A I N S E R T  -----
-------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Id = Object_id('dbo.spCDIVentaInsert') AND Type = 'P') DROP PROCEDURE dbo.spCDIVentaInsert
GO
CREATE PROCEDURE spCDIVentaInsert
                    @Empresa			    varchar(5),
                    @Mov			        varchar(20),
					          @Cliente			    varchar(10),
					          @Condicion			  varchar(50),	
					          @TipoCondicion		varchar(50),
					          @Articulo		      varchar(20),
					          @CargoAutomatico	bit,
					          @FechaEmision		  datetime,
					          @UltimoCambio		  datetime,
					          @Modulo           bit,
					          @UsuarioModulo    varchar(10),
					          @Recurrente       bit,
					          @NombreJob        varchar(100)
						
AS BEGIN   
   DECLARE  @ID							int,
            @IDMAX						int, 
			@Sucursal					int,
			@Temporalidad				int, 	
			@IDMAXDoc					int,
			@Dia						int,
            @Mes						int,
			@DifMeses					int,
			@BanderaDia					int,	    
			@Ok							int,
			@OkRef					varchar(255),
			@DiaUltimoMovConcluido		int,
			@DiasVencimiento			int,
			@FechaUltimoMovConcluido	datetime,			   
			@Usuario					varchar(10),
			@Moneda						varchar(10),
			@Almacen					varchar(10),
			@CDIFacturarA				varchar(10),
			@Observaciones				varchar(100),	
			@Unidad						varchar(50),	
			@ContUso					varchar(50),	
			@Concepto					varchar(50),
			@CondicionGeneral			varchar(50),	
            @Socio						varchar(20),
			@TipoCambio					float,
			@Importe					money,
			@Cantidad					float,
			@Impuesto1					float,
            @ImpuestoT1					float,
			@FechaVencimiento			datetime, 
			@IDNC               int, 
			@CDISubsidio        money, 
			@MovNC              varchar(20), 
			@MovIDNC            varchar(20),
			@MovID              varchar(20),
			@ClavePresupuestalIngresos	VARCHAR(50),
			@Mensaje					INT,
			@EstatusSocio				VARCHAR (15), 
			@Bloqueado          varchar(2)

   IF @Modulo = 0
   BEGIN --- J O B   C A R G O S   R E C U R R E N T E S   1 - 16
     SELECT @Usuario = 'CARGOREC', @Observaciones = 'JOB CARGO RECURRENTE', @BanderaDia = 0, @CondicionGeneral = 'CARGO RECURRENTE'
     SELECT @Cantidad = Cantidad FROM CDIArtCargosRecurrentes WHERE Cliente = @Cliente AND Articulo = @Articulo
     IF ISNULL(@Cantidad,0) = 0 SELECT @Cantidad  = 1
   END   --- J O B   C A R G O S   R E C U R R E N T E S   1 - 16
   ELSE 
   IF @Modulo = 1 AND @Recurrente = 1
   	 SELECT @Cantidad  = 1, @Usuario = @UsuarioModulo, @Observaciones = 'JOB CARGO RECURRENTE', @BanderaDia = 0, @CondicionGeneral = 'CARGO RECURRENTE'
   ELSE 
   IF @Modulo = 1 AND @Recurrente = 0
   	 SELECT @Cantidad  = 1, @Usuario = @UsuarioModulo, @Observaciones = NULL, @BanderaDia = 0, @CondicionGeneral = 'CARGO RECURRENTE'
   	 
   SELECT @Impuesto1 = ISNULL(Impuesto1,0.0), @Unidad = Unidad, @Concepto = Concepto, @ContUso = ContUso FROM ART WHERE Articulo = @Articulo 
   
   IF ISNULL(@Impuesto1,0) > 0 SELECT @ImpuestoT1 = (@Impuesto1/100) 
   ----- F E C H A  V E N C I M I E N T O
   SELECT @DiasVencimiento = ISNULL(DiasVencimiento,0) FROM Condicion  WHERE Condicion = @CondicionGeneral
   IF ISNULL(@DiasVencimiento,0) <> 0 SET @FechaVencimiento = DATEADD(dd, 1, @FechaEmision) 
   ELSE SET @FechaVencimiento = @FechaEmision

   ----- M O N E D A
   SELECT @Moneda  = DefMoneda, @Socio = Socio, @CDIFacturarA = CDIFacturarA, @EstatusSocio = Estatus, @Bloqueado = Descripcion13  FROM Cte WHERE Cliente  = @Cliente
   IF ISNULL(@Moneda,'')   = '' SELECT @Moneda  = MonedaPrecio FROM ART WHERE Articulo = @Articulo
   SELECT @TipoCambio =  TipoCambio  FROM Mon WHERE Moneda   = @Moneda
   
   ------- M E N S A J E -------
   IF @Bloqueado = 'Si' --@EstatusSocio = 'BLOQUEADO'
   BEGIN
   SELECT  @Mensaje= 65030 	
   END
      
   ----- A L M A C E N
   SELECT @Almacen  = AlmacenDef   FROM Cte WHERE Cliente  = @Cliente
   IF ISNULL(@Almacen,'')  = '' SELECT @Almacen = AlmacenGarantias FROM EmpresaGral WHERE Empresa = @Empresa
   ----- S U C U R S A L
   SELECT @Sucursal = EnviarA      FROM Cte WHERE Cliente  = @Cliente
   IF ISNULL(@Sucursal,'') = '' SELECT @Sucursal = Sucursal FROM Alm WHERE Almacen = @Almacen
   ----- I M P O R T E
   SELECT @Importe = PrecioLista, @ClavePresupuestalIngresos= ISNULL( CDIClavePresupuestal ,'511-000-038-999-000') FROM Art WHERE Articulo = @Articulo    
   IF ISNULL(@Importe,0)   = 0  SELECT @Importe = UltimoCosto FROM ArtCosto WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Articulo = @Articulo
   
    
   IF @Articulo ='ADMISION'
   SELECT  @Importe=(
   CASE	WHEN	@Articulo='ADMISION' 
		THEN	(SELECT TOP 1  ISNULL( c.ImporteAnualidad,0) 
	    	 FROM CDISocio c 
	    	 WHERE c.Cliente= @Cliente 
	    	 AND c.Mov='Aceptar' 
	    	 AND c.Estatus IN ('PENDIENTE', 'CONCLUIDO')
	    	 AND c.ID = (SELECT MAX (c.ID) FROM CDISocio c 
	    				 WHERE c.Cliente= @Cliente
	    				 AND c.Mov='Aceptar' AND c.Estatus IN ('PENDIENTE', 'CONCLUIDO')))
   ELSE   PrecioLista  END) 
   FROM Art WHERE Articulo = @Articulo

      -----------------------------------------------------------------------------
   ---- C O N D I C I O N   O R I G E N   C O N D I C I O N   O R I G E N   ----
   -----------------------------------------------------------------------------
   SELECT @IDMAXDoc = MAX(V.ID) FROM Venta V 
    INNER JOIN VentaD VD
       ON VD.ID = V.ID
    WHERE V.Mov = @Mov AND V.Estatus = CASE WHEN @Condicion = '1 Año' THEN V.Estatus ELSE 'CONCLUIDO' END 
          AND Cliente = @Cliente AND VD.Articulo = @Articulo AND ISNULL(Observaciones,'') = @Observaciones 

   SET @Dia =DATEPART(dd,@FechaEmision)
   SET @Mes =DATEPART(mm,@FechaEmision)
   IF ISNULL(@IDMAXDoc,0) > 0
   BEGIN --- F A C T U R A
     SELECT @Temporalidad  = NumeroDocumentos       FROM CDICondicionesRecurrentes WHERE Condicion = @Condicion		--- N U E V A     C O N D I C I O N                
     SELECT @FechaUltimoMovConcluido = FechaEmision FROM Venta                     WHERE ID = @IDMAXDoc
     SELECT @DiaUltimoMovConcluido   = DATEPART(dd,@FechaUltimoMovConcluido)   
     
     IF @DiaUltimoMovConcluido > 1 AND @TipoCondicion IN ('Mes','Año') SELECT @DiaUltimoMovConcluido = 1 --- M O V   M O D U L O 1  D S

     SELECT @DifMeses = DATEDIFF(mm, @FechaUltimoMovConcluido, @FechaEmision) 
     IF @TipoCondicion = 'Quincena' AND @Dia IN(1,16)
     BEGIN --- Q U I N C E N A
       IF @DiaUltimoMovConcluido = 1
       BEGIN --- D I A  U L T I M O  1 
         IF @Dia = 1    SET @DifMeses = (@DifMeses * 2)
         IF @Dia = 16   SET @DifMeses = (@DifMeses * 2) + 1
         IF @Temporalidad = @DifMeses SET @BanderaDia = 1
       END   --- D I A  U L T I M O  1 
       IF @DiaUltimoMovConcluido = 16
       BEGIN --- D I A  U L T I M O  1 6
         IF @Dia = 1    SET @DifMeses = (@DifMeses * 2) - 1
         IF @Dia = 16   SET @DifMeses = (@DifMeses * 2) 
         IF @Temporalidad <= @DifMeses SET @BanderaDia = 1
       END   --- D I A  U L T I M O  1 6
     END   --- Q U I N C E N A
     IF @TipoCondicion = 'Mes' AND @Dia IN(1) 
     BEGIN --- M E S
       IF @Temporalidad <= @DifMeses SET @BanderaDia = 1
     END   --- M E S
     IF @TipoCondicion = 'Año' --AND @Dia IN(1)    
     BEGIN --- A Ñ O
       SET @Temporalidad = @Temporalidad * 12
       IF @Temporalidad <= @DifMeses SET @BanderaDia = 1
     END   --- A Ñ O

   END   --- F A C T U R A
   ELSE  
   BEGIN --- F A C T U R A   N U E V A
   IF @Modulo = 0
     BEGIN 
       IF @TipoCondicion = 'Quincena' AND @Dia IN(1) SET @BanderaDia = 1
       IF @TipoCondicion = 'Mes'      AND @Dia IN(1) SET @BanderaDia = 1
       IF @TipoCondicion = 'Año'      /*AND @Dia IN(1)*/ SET @BanderaDia = 1   
     END 
   ELSE
   IF @Modulo = 1
     SET @BanderaDia = 1     
   END   --- F A C T U R A   N U E V A 
   ---------------------
   ---- V A L I D A ----
   ---------------------
   IF @BanderaDia = 1 AND ISNULL(@Importe,0) > 0 AND ISNULL(@Moneda,'') <> ''
   BEGIN --- V A L I D A
     IF ISNULL(@CargoAutomatico,0) = 0 SET @CargoAutomatico = 0     

	 INSERT INTO Venta (Empresa,				Mov,				MovID,				FechaEmision,	UltimoCambio,		Concepto,							Proyecto,		Moneda,						TipoCambio,
	 				    Usuario,				Autorizacion,		Referencia,			DocFuente,		Observaciones,		Estatus,							Directo,		Prioridad,					RenglonID,
					    Cliente,				EnviarA,			Almacen,			FechaRequerida,	Vencimiento,		Importe,							Impuestos,		ServicioGarantia,			ServicioExpress,
						ServicioDemerito,		ServicioDeducible,	ServicioFlotilla,	ServicioRampa,	Extra,				Sucursal,							SucursalOrigen,	GenerarOP,					ConVigencia,
						DesglosarImpuestos,		DesglosarImpuesto2,	ExcluirPlaneacion,	SubModulo,		Comentarios,		Extra1,								SucursalVenta,	AF,							FordVisitoOASIS,
						ServicioPuntual,		TieneTasaEsp,		CDICargoAutomatico, Condicion,		CDISocio,			CDIFacturarA,						Mensaje,		FormaPagoTipo)															
     VALUES				(@Empresa,				@Mov,				NULL,				@FechaEmision,	@UltimoCambio,		@Concepto,							'Socios',		ISNULL(@Moneda,'Pesos'),	ISNULL(@TipoCambio,1),
						@Usuario,				@Usuario,			NULL,				NULL,			@Observaciones,		'SINAFECTAR',						1,				'Normal',					1,
						@Cliente,				NULL,				@Almacen,			@FechaEmision,	@FechaVencimiento,	@Importe * ISNULL(@ImpuestoT1,1),	@Impuesto1,		0,							0,
						0,						0,					0,					0,				0,					@Sucursal,							@Sucursal,		0,							0,
						0,						0,					0,					'VTAS',			' ',				0,									@Sucursal,		0,							0,
						0,						0,					0,					@CondicionGeneral, @Socio,			@CDIFacturarA,						@Mensaje,		'No Identificado')	  
     SELECT @ID = SCOPE_IDENTITY()
     IF @ID > 0
     BEGIN --- I D
       INSERT INTO VentaD(ID,					Renglon,		RenglonSub,			RenglonID,					RenglonTipo,			EnviarA,	Almacen,				Codigo,				Articulo,			Cantidad,  
						  Precio,				PrecioSugerido, DescuentoTipo,		DescuentoLinea,				DescuentoImporte,		Impuesto1,	Impuesto2,				Impuesto3,			DescripcionExtra,	Costo, 
					      Paquete,				ContUso,		Comision,			Aplica,						AplicaID,				CantidadA,	Factor,					SustitutoArticulo,	SustitutoSubCuenta, Unidad, 
					      FechaRequerida,		Instruccion,	CantidadInventario, Agente,						Departamento,			Sucursal,	PoliticaPrecios,		SucursalOrigen,		AutoLocalidad,		UEN, 
					      Espacio,				HoraRequerida,	CantidadAlterna,	PrecioMoneda,				PrecioTipoCambio,		Estado,		ServicioNumero,			AgentesAsignados,	AFArticulo,			AFSerie, 
					      ExcluirPlaneacion,	ExcluirISAN,	Posicion,			PresupuestoEsp,				ProveedorRef,			TransferirA,Tarima,					ContUso2,			ContUso3,			ABC, 
				          TipoImpuesto1,		TipoImpuesto2,	TipoImpuesto3,		CDIClavePresupuestal)	
       VALUES            (@ID,					2048.0,			0,					1,							'N',					NULL,		@Almacen,				NULL,				@Articulo,			@Cantidad, 
					      @Importe,				@Importe,		NULL,				NULL,						NULL,					@Impuesto1,	0.0,					0.0,				NULL,				0.0, --@Importe * ISNULL(@ImpuestoT1,1),		
					      NULL,					@ContUso,		NULL,				NULL,						NULL,					NULL,		1,						NULL,				NULL,				@Unidad,
					      @FechaEmision,		NULL,			NULL,				NULL,						NULL,					0,			NULL,					0,					NULL,				NULL, 
					      NULL,					NULL,			NULL,				ISNULL(@Moneda,'Pesos'),	ISNULL(@TipoCambio,1),	NULL,		NULL,					NULL,				NULL,				NULL,			
					      0,					0,				NULL,				0,							NULL,					NULL,		NULL,					NULL,				NULL,				NULL, 
					      NULL,					NULL,			NULL,				@ClavePresupuestalIngresos)
       
       EXEC spAfectar 'VTAS', @ID, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=101, @EnSilencio = 1, @Conexion = @Modulo, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
       SELECT @MovID = MovID FROM Venta WHERE ID = @ID
 --DSG
       IF @Ok IS NOT NULL AND @Modulo = 0
       BEGIN
         EXEC spCDIVisorMovJob @NombreJob, 100, @Empresa, @Mov, @MovID, @Cliente, @Socio, @ID, @Articulo, @Concepto, @FechaEmision, 'VTAS', @Usuario, @OK, @OkRef
       END

       --BEGM 20101210. Aplicación Automática Subsidios
       IF EXISTS (SELECT 1 FROM CDISocio WHERE Mov = 'Subsidio' AND Empresa = @Empresa AND Cliente = @Cliente AND FechaVigencia >= GETDATE())
          AND (SELECT ISNULL(CDIAplicaSubs, 0) FROM Art WHERE Articulo = @Articulo) = 1 --Solo para articulos que aplican subsidios
       BEGIN
          SELECT @CDISubsidio = CDISubsidio FROM Cte WHERE Cliente = @Cliente
          SELECT @MovNC = Mov, @MovIDNC = MovID FROM Venta WHERE ID = @ID
                    
			   INSERT INTO Cxc(	Empresa,	Mov,			FechaEmision,	UltimoCambio,	Concepto,	Proyecto,	Moneda,						TipoCambio, 
								Usuario,	Autorizacion,	Observaciones,	Estatus,		Cliente,	ClienteMoneda,							ClienteTipoCambio, 
								Importe,									Impuestos,															AplicaManual, 
								CDISocio,	CDIFacturarA,	FormaCobro)  
          VALUES (				@Empresa,	'Contracargo',	@FechaEmision,	@UltimoCambio,	@Concepto,	'Socios',	ISNULL(@Moneda,'Pesos'),	ISNULL(@TipoCambio,1),
								@Usuario,	@Usuario,		'Subsidio',		'SINAFECTAR',	@Cliente,	ISNULL(@Moneda,'Pesos'),	ISNULL(@TipoCambio,1), 
								(@CDISubsidio*100)/(100+@Impuesto1),        (@CDISubsidio*100)/(100+@Impuesto1) * ISNULL(@ImpuestoT1,1),		1, 
								@Socio,		@CDIFacturarA,	'CONTADO')
          
          SET @IDNC = SCOPE_IDENTITY()

          IF @IDNC > 0
          BEGIN
            INSERT INTO CxcD(ID, Renglon, RenglonSub, Importe, Aplica, AplicaID)
            VALUES(@IDNC, 2048.0, 0, @CDISubsidio, @MovNC, @MovIDNC)
            
            EXEC spAfectar 'CXC', @IDNC, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=101, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
            SELECT @MovID = MovID FROM Cxc WHERE ID = @IDNC
--DSG            
            IF @Ok IS NOT NULL AND @Modulo = 0
            BEGIN
              EXEC spCDIVisorMovJob @NombreJob, 100, @Empresa, 'Contracargo', @MovID, @Cliente, @Socio, @IDNC, @Articulo, @Concepto, @FechaEmision, 'CXC', @Usuario, @OK, @OkRef
            END            
          END
       END --Aplicación Automática Subsidios 

     END   --- I D
   END   --- V A L I D A
 RETURN
END
GO


-------------------------------------------------------------
----- S P C D I J O B C A R G O S R E C U R R E N T E S -----
-------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE Type='p' AND ID=Object_ID('dbo.spCDIJobCargosRecurrentes')) DROP PROCEDURE dbo.spCDIJobCargosRecurrentes
GO

CREATE PROCEDURE spCDIJobCargosRecurrentes
                 @Empresa		char(5),
                 @NombreJob VARCHAR(100)
AS BEGIN
   DECLARE	@IDMin				int,
			@IDMax				int,			
            @CargoAutomatico	bit,			
			@Socio				varchar(10),
			@Articulo			varchar(20),
			@Mov				varchar(20),
			@Condicion			varchar(50),
            @TipoCondicion		varchar(50),
			@FechaEmision		datetime,
			@UltimoCambio		datetime
 
   CREATE TABLE #CDIEstatusSocios  (ID				int IDENTITY (1,1),			
									Estatus			varchar(15)			NOT NULL
								   )

   CREATE TABLE #CDISocios		   (ID					int IDENTITY (1,1),			
									Socio				varchar(10)			NULL,	
									Estatus				varchar(15)			NULL,	
									Tipo				varchar(15)			NULL,	 	
									CargoRecurrenteS	bit					default 0
								   )
  CREATE TABLE #CDISociosArt       (ID					int IDENTITY (1,1),			
									Socio				varchar(10)			NULL,	
									Estatus				varchar(15)			NULL,	
									Tipo				varchar(15)			NULL,	 	
									CargoRecurrenteS	bit					default 0,
									Articulo			varchar(20)			NULL,	 	
								   )
   
  INSERT INTO #CDIEstatusSocios (Estatus) VALUES ('BAJA')
  INSERT INTO #CDIEstatusSocios (Estatus) VALUES ('INACTIVA')
  INSERT INTO #CDIEstatusSocios (Estatus) VALUES ('INACTIVO')
  INSERT INTO #CDIEstatusSocios (Estatus) SELECT Estatus FROM CDIEstatusSocios  
  
  SELECT  TOP(1) @Mov = Mov FROM MovTipo WHERE Modulo = 'VTAS' AND CDICargosRecurrentes = 1
  IF ISNULL(@Mov,'') = '' SELECT @Mov = 'Factura'

  SELECT @FechaEmision =GETDATE()
  SELECT @UltimoCambio = @FechaEmision
  EXEC spExtraerFecha @FechaEmision OUTPUT 
  --- T O D O S  L O S  S O C I O S
  INSERT INTO #CDISocios
  SELECT Cliente, Estatus, Tipo, CDICargosRecurrentes 
    FROM CTE 
   WHERE CDISocio = 1 --- S O C I O
     --AND Titular  = 1 --- T I T U L A R
     AND ISNULL(CDICargosRecurrentes,0) = 1 --- A P L I C A  C A R G O  R E C U R R E N T E  S O C I O
     AND Estatus NOT IN (SELECT ISNULL(Estatus,'') FROM #CDIEstatusSocios) 
     AND Tipo    NOT IN (SELECT ISNULL(Tipo,'')    FROM CDITipoSocios)
  --- T O D O S  L O S  S O C I O S   C O N   S U S   A R T I C U L O S
  INSERT INTO #CDISociosArt (Socio,   Estatus,   Tipo,   CargoRecurrenteS,   Articulo)
  SELECT                     S.Socio, S.Estatus, S.Tipo, S.CargoRecurrenteS, AR.Articulo FROM #CDISocios S
   INNER JOIN CDIArtCargosRecurrentes  AR
      ON AR.Cliente = S.Socio
   INNER JOIN Art A
      ON A.Articulo = AR.Articulo 
   WHERE ISNULL(A.CDICargosRecurrentes,0) = 1 
     AND AR.FechaInicio                 <= @FechaEmision 
     AND ISNULL(FechaFin,@FechaEmision) >= @FechaEmision
     AND A.CDICondicion <> '1 Año'  --BEGM 20120605. No procesa los anuales, tienen su propio job
   GROUP BY S.Socio, S.Estatus, S.Tipo, S.CargoRecurrenteS, AR.Articulo

  IF EXISTS (SELECT * FROM #CDISociosArt) 
  BEGIN 
    SELECT @IDMin = 0, @IDMax = 0
    SELECT @IDMax = MAX(ID) FROM #CDISociosArt
    SELECT @IDMin = MIN(ID) FROM #CDISociosArt
    WHILE(@IDMax >= @IDMin) 
    BEGIN --- S O C I O   A R T I C U L O
      SELECT @Socio = '',               @Articulo = '',          @Condicion = '',           @CargoAutomatico = 0,      @TipoCondicion = ''
      SELECT @Socio = ISNULL(Socio,''), @Articulo = ISNULL(Articulo,'') FROM #CDISociosArt WHERE ID = @IDMin     
      SELECT @Condicion = ISNULL(CDICondicion,'')                       FROM Art           WHERE Articulo = @Articulo   
      IF EXISTS(SELECT * FROM CDIArticulosCargos WHERE Cliente = @Socio AND Articulo = @Articulo) SELECT @CargoAutomatico = 0 --- C A R G O   A U T O M A T I C O
       
      IF ISNULL(@Condicion,'') <> ''     
      BEGIN --- C O N D I C I O N
        IF (SELECT CHARINDEX   ('Quincena', @Condicion)) > 0 SELECT @TipoCondicion = 'Quincena'
        IF (SELECT CHARINDEX   ('Mes',      @Condicion)) > 0 SELECT @TipoCondicion = 'Mes'
        IF (SELECT CHARINDEX   ('Año',      @Condicion)) > 0 SELECT @TipoCondicion = 'Año'
        EXEC spCDIVentaInsert @Empresa, @Mov, @Socio, @Condicion, @TipoCondicion, @Articulo, @CargoAutomatico, @FechaEmision, @UltimoCambio, 0, NULL, 0, @NombreJob 
      END   --- C O N D I C I O N

      SELECT @IDMin = @IDMin + 1
    END   --- S O C I O   A R T I C U L O
  END
--DSG

EXEC spCDIVisorMovJobMail 100, @NombreJob

RETURN
END
GO
--EXEC spCDIJobCargosRecurrentes 'DEMO'


-------------------------------------------------------------------------
----- S P C D I G E N E R A J O B C A R G O S R E C U R R E N T E S -----
-------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.spCDIGeneraJobCargosRecurrentes')) DROP PROCEDURE dbo.spCDIGeneraJobCargosRecurrentes
GO

CREATE PROCEDURE spCDIGeneraJobCargosRecurrentes
                 @Empresa			varchar(15), 
				 @Periodo			int,	
				 @Ejercicio			int
				
AS BEGIN
  DECLARE
    @SQL				varchar(max),
    @BaseLocal			varchar(100),
    @ServicioLocal		varchar(100),
    @UsuarioLocal		varchar(100),
    @NombreJobs			varchar(100),
	@NombreJobs2		varchar(100),
    @FechaDia1			datetime,	
    @FechaDia1L			varchar(20),
	@FechaHoraDia1L		datetime,	   
	@FechaDia16			datetime,
	@FechaDia16L		varchar(20),
	@FechaHoraDia16L	datetime,	
	@Hora1InicioJob		varchar(20),	
    @Hora1Inicio		varchar(20),
	@Hora2InicioJob		varchar(20),	
    @Hora2Inicio		varchar(20)
	

  SELECT @Hora1Inicio = '01:00:00.000', @Hora1InicioJob = '10000'
  SELECT @Hora2Inicio = '02:00:00.000', @Hora2InicioJob = '20000'
  ---------------------------------------   
  SELECT @FechaDia1L  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)
  SELECT @FechaDia1   = CONVERT(datetime,@FechaDia1L)
  SELECT @FechaHoraDia1L = @FechaDia1 + @Hora1Inicio
  ---------------------------------------
  SELECT @FechaDia16L = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),16),2)
  SELECT @FechaDia16  = CONVERT(datetime,@FechaDia16L)
  SELECT @FechaHoraDia16L = @FechaDia16 + @Hora2Inicio
  ----------------------------------------

  SET @NombreJobs     = 'Cargos Recurrentes Dia 1  de Cada Mes ' + @Empresa 
  SET @NombreJobs2    = 'Cargos Recurrentes Dia 16 de Cada Mes ' + @Empresa 
  SET @ServicioLocal  =  CONVERT(char(100), SERVERPROPERTY('ServerName')) 

  CREATE TABLE #Resultado (ID int IDENTITY(1,1) NOT NULL PRIMARY KEY, SQL varchar(255) NULL)
  SELECT @BaseLocal = DB_NAME()
  INSERT #Resultado (SQL) SELECT CHAR(45)+CHAR(45)+' GENERA JOB CAMBIOS RECURRENTES'
  INSERT #Resultado (SQL) SELECT 'SET DATEFIRST 7'
  INSERT #Resultado (SQL) SELECT 'SET ANSI_NULLS OFF'
  INSERT #Resultado (SQL) SELECT 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED'
  INSERT #Resultado (SQL) SELECT 'SET LOCK_TIMEOUT -1'
  INSERT #Resultado (SQL) SELECT 'SET QUOTED_IDENTIFIER OFF'
  INSERT #Resultado (SQL) SELECT 'GO'

  ---E L I M I N A  J O B  D I A  1 
  INSERT #Resultado (SQL) SELECT 'USE msdb'
  INSERT #Resultado (SQL) SELECT 'IF  EXISTS (SELECT job_id FROM SysJobs_View WHERE NAME = N' + CHAR(39) + @NombreJobs + CHAR(39) + ' )' 
  INSERT #Resultado (SQL) SELECT 'EXEC sp_delete_job @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @delete_unused_schedule=1'
  ---C R E A  J O B   D I A  1 
  INSERT #Resultado (SQL) SELECT 'USE msdb'
  INSERT #Resultado (SQL) SELECT 'DECLARE @jobId BINARY(16)'	
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'EXEC  msdb.dbo.sp_add_job @job_name=N'+ CHAR(39)+ @NombreJobs + CHAR(39) + ', '
  INSERT #Resultado (SQL) SELECT '@enabled=1,'
  INSERT #Resultado (SQL) SELECT '@notify_level_eventlog=0,'
  INSERT #Resultado (SQL) SELECT '@notify_level_email=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_netsend=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_page=2,'
  INSERT #Resultado (SQL) SELECT '@delete_level=0,'
  INSERT #Resultado (SQL) SELECT '@description=N'  + CHAR(39) + 'Genera Cargos Recurrentes Folio_4668' + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@category_name=N' + CHAR(39) + '[Uncategorized (Local)]' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@owner_login_name=N' + CHAR(39) + 'sa' + CHAR(39) +', @job_id = @jobId OUTPUT'
  INSERT #Resultado (SQL) SELECT 'select @jobId' 
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobserver @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @server_name = N'+ CHAR(39) + @ServicioLocal + CHAR(39)
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobstep @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @step_name=N' + CHAR(39) +'Ejecutar SP' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@step_id=1,' 
  INSERT #Resultado (SQL) SELECT '@cmdexec_success_code=0,' 
  INSERT #Resultado (SQL) SELECT '@on_success_action=1,' 
  INSERT #Resultado (SQL) SELECT '@on_fail_action=2,'  
  INSERT #Resultado (SQL) SELECT '@retry_attempts=0,' 
  INSERT #Resultado (SQL) SELECT '@retry_interval=0,' 
  INSERT #Resultado (SQL) SELECT '@os_run_priority=0, @subsystem=N' + CHAR(39) + 'TSQL' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@command=N' + CHAR(39) + 'Exec spCDIJobCargosRecurrentes' +  ' ' +@Empresa + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@database_name=N' + CHAR(39)+ @BaseLocal + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@flags=0' 
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_update_job @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@enabled=1,' 
  INSERT #Resultado (SQL) SELECT '@start_step_id=1,' 
  INSERT #Resultado (SQL) SELECT '@notify_level_eventlog=0,' 
  INSERT #Resultado (SQL) SELECT '@notify_level_email=2,'  			 
  INSERT #Resultado (SQL) SELECT '@notify_level_netsend=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_page=2,'
  INSERT #Resultado (SQL) SELECT '@delete_level=0,'
  INSERT #Resultado (SQL) SELECT '@description=N' + CHAR(39) + 'Cargos Recurrentes Folio_4668' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@category_name=N' + CHAR(39) + '[Uncategorized (Local)]' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@owner_login_name=N' + CHAR(39) + 'sa' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_email_operator_name=N' + CHAR(39) + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_netsend_operator_name=N' + CHAR(39) + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_page_operator_name=N' + CHAR(39)+ CHAR(39) 
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'DECLARE @schedule_id int'
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobschedule @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ',@name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@enabled=1,'
  INSERT #Resultado (SQL) SELECT '@freq_type=16,'
  INSERT #Resultado (SQL) SELECT '@freq_interval=1,'
  INSERT #Resultado (SQL) SELECT '@freq_subday_type=1,'
  INSERT #Resultado (SQL) SELECT '@freq_subday_interval=0,'
  INSERT #Resultado (SQL) SELECT '@freq_relative_interval=0,'
  INSERT #Resultado (SQL) SELECT '@freq_recurrence_factor=1,'
  INSERT #Resultado (SQL) SELECT '@active_start_date='+@FechaDia1L+','
  INSERT #Resultado (SQL) SELECT '@active_end_date=99991231,'
  INSERT #Resultado (SQL) SELECT '@active_start_time='+@Hora1InicioJob+','  
  INSERT #Resultado (SQL) SELECT '@active_end_time=235959, @schedule_id = @schedule_id OUTPUT'
  INSERT #Resultado (SQL) SELECT 'select @schedule_id'
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'SET DATEFORMAT YMD'
  INSERT #Resultado (SQL) SELECT 'UPDATE sysjobs_view SET date_created =' + CHAR(39) + CONVERT(varchar,@FechaHoraDia1L,21) + CHAR(39) + ',date_modified =' + CHAR(39) + CONVERT(varchar,@FechaHoraDia1L,21) + CHAR(39) + ' WHERE (Name=N' + CHAR(39) + @NombreJobs + CHAR(39) + 'and category_id=N' + CHAR(39) + CONVERT(varchar(1),0) + CHAR(39) + ')'
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'GO'
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT ''
  --------------------------------------------
  --------------------------------------------
  ---E L I M I N A  J O B  D I A  1 6
  INSERT #Resultado (SQL) SELECT 'USE msdb'
  INSERT #Resultado (SQL) SELECT 'IF  EXISTS (SELECT job_id FROM SysJobs_View WHERE NAME = N' + CHAR(39) + @NombreJobs2 + CHAR(39) + ' )' 
  INSERT #Resultado (SQL) SELECT 'EXEC sp_delete_job @job_name=N' + CHAR(39) + @NombreJobs2 + CHAR(39) + ', @delete_unused_schedule=1'
  ---C R E A  J O B   D I A  1 6 
  INSERT #Resultado (SQL) SELECT 'USE msdb'
  INSERT #Resultado (SQL) SELECT 'DECLARE @jobId BINARY(16)'	
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'EXEC  msdb.dbo.sp_add_job @job_name=N'+ CHAR(39)+ @NombreJobs2 + CHAR(39) + ', '
  INSERT #Resultado (SQL) SELECT '@enabled=1,'
  INSERT #Resultado (SQL) SELECT '@notify_level_eventlog=0,'
  INSERT #Resultado (SQL) SELECT '@notify_level_email=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_netsend=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_page=2,'
  INSERT #Resultado (SQL) SELECT '@delete_level=0,'
  INSERT #Resultado (SQL) SELECT '@description=N'  + CHAR(39) + 'Genera Cargos Recurrentes Folio_4668' + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@category_name=N' + CHAR(39) + '[Uncategorized (Local)]' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@owner_login_name=N' + CHAR(39) + 'sa' + CHAR(39) +', @job_id = @jobId OUTPUT'
  INSERT #Resultado (SQL) SELECT 'select @jobId' 
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobserver @job_name=N' + CHAR(39) + @NombreJobs2 + CHAR(39) + ', @server_name = N'+ CHAR(39) + @ServicioLocal + CHAR(39)
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobstep @job_name=N' + CHAR(39) + @NombreJobs2 + CHAR(39) + ', @step_name=N' + CHAR(39) +'Ejecutar SP' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@step_id=1,' 
  INSERT #Resultado (SQL) SELECT '@cmdexec_success_code=0,' 
  INSERT #Resultado (SQL) SELECT '@on_success_action=1,' 
  INSERT #Resultado (SQL) SELECT '@on_fail_action=2,'  
  INSERT #Resultado (SQL) SELECT '@retry_attempts=0,' 
  INSERT #Resultado (SQL) SELECT '@retry_interval=0,' 
  INSERT #Resultado (SQL) SELECT '@os_run_priority=0, @subsystem=N' + CHAR(39) + 'TSQL' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@command=N' + CHAR(39) + 'Exec spCDIJobCargosRecurrentes' +  ' ' +@Empresa + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@database_name=N' + CHAR(39)+ @BaseLocal + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@flags=0' 
  INSERT #Resultado (SQL) SELECT '' 
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_update_job @job_name=N' + CHAR(39) + @NombreJobs2 + CHAR(39) + ',' 
  INSERT #Resultado (SQL) SELECT '@enabled=1,' 
  INSERT #Resultado (SQL) SELECT '@start_step_id=1,' 
  INSERT #Resultado (SQL) SELECT '@notify_level_eventlog=0,' 
  INSERT #Resultado (SQL) SELECT '@notify_level_email=2,'  			 
  INSERT #Resultado (SQL) SELECT '@notify_level_netsend=2,'
  INSERT #Resultado (SQL) SELECT '@notify_level_page=2,'
  INSERT #Resultado (SQL) SELECT '@delete_level=0,'
  INSERT #Resultado (SQL) SELECT '@description=N' + CHAR(39) + 'Cargos Recurrentes Folio_4668' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@category_name=N' + CHAR(39) + '[Uncategorized (Local)]' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@owner_login_name=N' + CHAR(39) + 'sa' + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_email_operator_name=N' + CHAR(39) + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_netsend_operator_name=N' + CHAR(39) + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@notify_page_operator_name=N' + CHAR(39)+ CHAR(39) 
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'DECLARE @schedule_id int'
  INSERT #Resultado (SQL) SELECT 'EXEC msdb.dbo.sp_add_jobschedule @job_name=N' + CHAR(39) + @NombreJobs2 + CHAR(39) + ',@name=N' + CHAR(39) +@NombreJobs2 + CHAR(39) + ','
  INSERT #Resultado (SQL) SELECT '@enabled=1,'
  INSERT #Resultado (SQL) SELECT '@freq_type=16,'
  INSERT #Resultado (SQL) SELECT '@freq_interval=16,'
  INSERT #Resultado (SQL) SELECT '@freq_subday_type=1,'
  INSERT #Resultado (SQL) SELECT '@freq_subday_interval=0,'
  INSERT #Resultado (SQL) SELECT '@freq_relative_interval=0,'
  INSERT #Resultado (SQL) SELECT '@freq_recurrence_factor=1,'
  INSERT #Resultado (SQL) SELECT '@active_start_date='+@FechaDia16L+','
  INSERT #Resultado (SQL) SELECT '@active_end_date=99991231,'
  INSERT #Resultado (SQL) SELECT '@active_start_time='+@Hora2InicioJob+','  
  INSERT #Resultado (SQL) SELECT '@active_end_time=235959, @schedule_id = @schedule_id OUTPUT'
  INSERT #Resultado (SQL) SELECT 'select @schedule_id'
  INSERT #Resultado (SQL) SELECT ''
  INSERT #Resultado (SQL) SELECT 'SET DATEFORMAT YMD'
  INSERT #Resultado (SQL) SELECT 'UPDATE sysjobs_view SET date_created =' + CHAR(39) + CONVERT(varchar,@FechaHoraDia16L,21) + CHAR(39) + ',date_modified =' + CHAR(39) + CONVERT(varchar,@FechaHoraDia16L,21) + CHAR(39) + ' WHERE (Name=N' + CHAR(39) + @NombreJobs2 + CHAR(39) + 'and category_id=N' + CHAR(39) + CONVERT(varchar(1),0) + CHAR(39) + ')'
  INSERT #Resultado (SQL) SELECT 'GO'

  SELECT SQL FROM #Resultado ORDER BY ID

RETURN
END
GO

--EXEC spCDIGeneraJobCargosRecurrentes 'DEMO', 10,2010

--BEGM 20120605. Aplica los cobros anuales
IF OBJECT_ID('spCDICargosRecurrentesAnuales', 'P') IS NOT NULL
  DROP PROCEDURE spCDICargosRecurrentesAnuales
GO

CREATE PROCEDURE spCDICargosRecurrentesAnuales @Empresa varchar(5), @NombreJob VARCHAR(100)
AS 
BEGIN
  DECLARE	@IDMin				int,
          @IDMax				int,			
          @CargoAutomatico	bit,			
          @Socio				varchar(10),
          @Articulo			varchar(20),
          @Mov				varchar(20),
          @Condicion			varchar(50),
          @TipoCondicion		varchar(50),
          @FechaEmision		datetime,
          @UltimoCambio		datetime
 
  CREATE TABLE #CDIEstatusSocios  (ID	      int IDENTITY (1,1),			
                                   Estatus	varchar(15)			NOT NULL)

  CREATE TABLE #CDISocios	(ID               int IDENTITY (1,1),			
                           Socio            varchar(10)			NULL,	
                           Estatus          varchar(15)			NULL,	
                           Tipo             varchar(15)			NULL,	 	
                           CargoRecurrenteS	bit					default 0
								   )
  CREATE TABLE #CDISociosArt (ID                int IDENTITY (1,1),			
                              Socio             varchar(10)			NULL,	
                              Estatus           varchar(15)			NULL,	
                              Tipo              varchar(15)			NULL,	 	
                              CargoRecurrenteS  bit					default 0,
                              Articulo          varchar(20)			NULL)
   
  INSERT INTO #CDIEstatusSocios (Estatus) VALUES ('BAJA')
  INSERT INTO #CDIEstatusSocios (Estatus) VALUES ('INACTIVA')
  INSERT INTO #CDIEstatusSocios (Estatus) VALUES ('INACTIVO')
  INSERT INTO #CDIEstatusSocios (Estatus) SELECT Estatus FROM CDIEstatusSocios  
  
  SELECT TOP(1) @Mov = Mov FROM MovTipo WHERE Modulo = 'VTAS' AND CDICargosRecurrentes = 1
  IF ISNULL(@Mov,'') = '' SELECT @Mov = 'Factura'

  SELECT @FechaEmision =GETDATE()
  SELECT @UltimoCambio = @FechaEmision
  EXEC spExtraerFecha @FechaEmision OUTPUT 
  --- T O D O S  L O S  S O C I O S
  INSERT INTO #CDISocios
  SELECT Cliente, Estatus, Tipo, CDICargosRecurrentes 
    FROM CTE 
   WHERE CDISocio = 1 --- S O C I O
     --AND Titular  = 1 --- T I T U L A R
     AND ISNULL(CDICargosRecurrentes,0) = 1 --- A P L I C A  C A R G O  R E C U R R E N T E  S O C I O
     AND Estatus NOT IN (SELECT ISNULL(Estatus,'') FROM #CDIEstatusSocios) 
     AND Tipo    NOT IN (SELECT ISNULL(Tipo,'')    FROM CDITipoSocios)
  --- T O D O S  L O S  S O C I O S   C O N   S U S   A R T I C U L O S
  INSERT INTO #CDISociosArt (Socio,   Estatus,   Tipo,   CargoRecurrenteS,   Articulo)
  SELECT                     S.Socio, S.Estatus, S.Tipo, S.CargoRecurrenteS, AR.Articulo FROM #CDISocios S
   INNER JOIN CDIArtCargosRecurrentes  AR
      ON AR.Cliente = S.Socio
   INNER JOIN Art A
      ON A.Articulo = AR.Articulo 
   WHERE ISNULL(A.CDICargosRecurrentes,0) = 1 
     AND AR.FechaInicio                 <= @FechaEmision 
     AND ISNULL(FechaFin,@FechaEmision) >= @FechaEmision
     AND A.CDICondicion = '1 Año'
   GROUP BY S.Socio, S.Estatus, S.Tipo, S.CargoRecurrenteS, AR.Articulo

  IF EXISTS (SELECT 1 FROM #CDISociosArt)
  BEGIN 
    SELECT @IDMin = 0, @IDMax = 0
    SELECT @IDMax = MAX(ID) FROM #CDISociosArt
    SELECT @IDMin = MIN(ID) FROM #CDISociosArt
    WHILE(@IDMax >= @IDMin) 
    BEGIN --- S O C I O   A R T I C U L O
      SELECT @Socio = '',               @Articulo = '',          @Condicion = '',           @CargoAutomatico = 0,      @TipoCondicion = ''
      SELECT @Socio = ISNULL(Socio,''), @Articulo = ISNULL(Articulo,'') FROM #CDISociosArt WHERE ID = @IDMin     
      SELECT @Condicion = ISNULL(CDICondicion,'')                       FROM Art           WHERE Articulo = @Articulo   
      IF EXISTS(SELECT 1 FROM CDIArticulosCargos WHERE Cliente = @Socio AND Articulo = @Articulo) SELECT @CargoAutomatico = 0 --- C A R G O   A U T O M A T I C O
       
      IF ISNULL(@Condicion,'') <> ''     
      BEGIN --- C O N D I C I O N
        SELECT @TipoCondicion = 'Año'
        EXEC spCDIVentaInsert @Empresa, @Mov, @Socio, @Condicion, @TipoCondicion, @Articulo, @CargoAutomatico, @FechaEmision, @UltimoCambio, 0, NULL, 0, @NombreJob 
      END   --- C O N D I C I O N

      SELECT @IDMin = @IDMin + 1
    END   --- S O C I O   A R T I C U L O
  END
  
EXEC spCDIVisorMovJobMail 100, @NombreJob    
RETURN
END
GO


IF OBJECT_ID('spCDIGeneraJobCargosAnuales', 'P') IS NOT NULL
  DROP PROCEDURE spCDIGeneraJobCargosAnuales
GO

CREATE PROCEDURE spCDIGeneraJobCargosAnuales @Empresa     varchar(15), 
                                             @Periodo     int,	
                                             @Ejercicio   int
AS 
BEGIN
  DECLARE @SQL              varchar(max),
          @BaseLocal        varchar(100),
          @ServicioLocal    varchar(100),
          @UsuarioLocal     varchar(100),
          @NombreJobs	      varchar(100),
          @NombreJobs2      varchar(100),
          @FechaDia1        datetime,	
          @FechaDia1L       varchar(20),
          @FechaHoraDia1L   datetime,	   
          @FechaDia16	      datetime,
          @FechaDia16L      varchar(20),
          @FechaHoraDia16L  datetime,	
          @Hora1InicioJob   varchar(20),	
          @Hora1Inicio      varchar(20),
          @Hora2InicioJob   varchar(20),	
          @Hora2Inicio      varchar(20), 
          @DiaCargoAnual    int

  CREATE TABLE #Resultado (ID int IDENTITY(1,1) NOT NULL PRIMARY KEY, SQL varchar(255) NULL)
	
  SELECT @Hora1Inicio = '01:00:00.000', @Hora1InicioJob = '10000'
  SELECT @DiaCargoAnual = CDIDiaCargoAnual FROM CDIEmpresaCfg WHERE Empresa = @Empresa
  SET @DiaCargoAnual = ISNULL(@DiaCargoAnual, 1)

  SELECT @FechaDia1L  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),@DiaCargoAnual),2)
  SELECT @FechaDia1   = CONVERT(datetime,@FechaDia1L)
  SELECT @FechaHoraDia1L = @FechaDia1 + @Hora1Inicio

  SET @NombreJobs     = 'Cargos Recurrentes Anuales ' + @Empresa 
  SET @ServicioLocal  =  CONVERT(char(100), SERVERPROPERTY('ServerName')) 

  SELECT @BaseLocal = DB_NAME()
  SELECT @SQL = CHAR(45)+CHAR(45)+' GENERA JOB CARGOS RECURRENTES ANUALES' + 
                CHAR(10) + 'SET DATEFIRST 7'+ 
                CHAR(10) + 'SET ANSI_NULLS OFF'+
                CHAR(10) + 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED'+
                CHAR(10) + 'SET LOCK_TIMEOUT -1'+
                CHAR(10) + 'SET QUOTED_IDENTIFIER OFF'+
                --CHAR(10) + 'GO'+
                CHAR(10) + ''+
                CHAR(10) + 'USE msdb'+
                CHAR(10) + 'IF  EXISTS (SELECT job_id FROM SysJobs_View WHERE NAME = N' + CHAR(39) + @NombreJobs + CHAR(39) + ' )' +
                CHAR(10) + 'EXEC sp_delete_job @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @delete_unused_schedule=1'+
                CHAR(10) + ''+
                CHAR(10) + 'USE msdb'+
                CHAR(10) + 'DECLARE @jobId BINARY(16)'	+
                CHAR(10) + ''+
                CHAR(10) + 'EXEC  msdb.dbo.sp_add_job @job_name=N'+ CHAR(39)+ @NombreJobs + CHAR(39) + ', '+
                CHAR(10) + '@enabled=1,'+
                CHAR(10) + '@notify_level_eventlog=0,'+
                CHAR(10) + '@notify_level_email=2,'+
                CHAR(10) + '@notify_level_netsend=2,'+
                CHAR(10) + '@notify_level_page=2,'+
                CHAR(10) + '@delete_level=0,'+
                CHAR(10) + '@description=N'  + CHAR(39) + 'Genera Cargos Anuales' + CHAR(39) + ',' +
                CHAR(10) + '@category_name=N' + CHAR(39) + '[Uncategorized (Local)]' + CHAR(39) + ','+
                CHAR(10) + '@owner_login_name=N' + CHAR(39) + 'sa' + CHAR(39) +', @job_id = @jobId OUTPUT'+
                CHAR(10) + 'select @jobId' +
                CHAR(10) + '' +
                CHAR(10) + 'EXEC msdb.dbo.sp_add_jobserver @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @server_name = N'+ CHAR(39) + @ServicioLocal + CHAR(39)+
                CHAR(10) + '' +
                CHAR(10) + 'EXEC msdb.dbo.sp_add_jobstep @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ', @step_name=N' + CHAR(39) +'Ejecutar SP' + CHAR(39) + ','+
                CHAR(10) + '@step_id=1,' +
                CHAR(10) + '@cmdexec_success_code=0,' +
                CHAR(10) + '@on_success_action=1,' +
                CHAR(10) + '@on_fail_action=2,'  +
                CHAR(10) + '@retry_attempts=0,' +
                CHAR(10) + '@retry_interval=0,' +
                CHAR(10) + '@os_run_priority=0, @subsystem=N' + CHAR(39) + 'TSQL' + CHAR(39) + ','+
                CHAR(10) + '@command=N' + CHAR(39) + 'Exec spCDICargosRecurrentesAnuales' +  ' ' +@Empresa + CHAR(39) + ',' +
                CHAR(10) + '@database_name=N' + CHAR(39)+ @BaseLocal + CHAR(39) + ',' +
                CHAR(10) + '@flags=0' +
                CHAR(10) + '' +
                CHAR(10) + 'EXEC msdb.dbo.sp_update_job @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ',' +
                CHAR(10) + '@enabled=1,' +
                CHAR(10) + '@start_step_id=1,' +
                CHAR(10) + '@notify_level_eventlog=0,' +
                CHAR(10) + '@notify_level_email=2,'  	+
                CHAR(10) + '@notify_level_netsend=2,'+
                CHAR(10) + '@notify_level_page=2,'+
                CHAR(10) + '@delete_level=0,'+
                CHAR(10) + '@description=N' + CHAR(39) + 'Cargos Anuales' + CHAR(39) + ','+
                CHAR(10) + '@category_name=N' + CHAR(39) + '[Uncategorized (Local)]' + CHAR(39) + ','+
                CHAR(10) + '@owner_login_name=N' + CHAR(39) + 'sa' + CHAR(39) + ','+
                CHAR(10) + '@notify_email_operator_name=N' + CHAR(39) + CHAR(39) + ','+
                CHAR(10) + '@notify_netsend_operator_name=N' + CHAR(39) + CHAR(39) + ','+
                CHAR(10) + '@notify_page_operator_name=N' + CHAR(39)+ CHAR(39) +
                CHAR(10) + ''+
                CHAR(10) + 'DECLARE @schedule_id int'+
                CHAR(10) + 'EXEC msdb.dbo.sp_add_jobschedule @job_name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ',@name=N' + CHAR(39) + @NombreJobs + CHAR(39) + ','+
                CHAR(10) + '@enabled=1,'+
                CHAR(10) + '@freq_type=1,'+
                CHAR(10) + '@freq_subday_type=1,'+
                CHAR(10) + '@freq_subday_interval=0,'+
                CHAR(10) + '@freq_relative_interval=0,'+
                CHAR(10) + '@active_start_date='+@FechaDia1L+','+
                CHAR(10) + '@active_end_date=99991231,'+
                CHAR(10) + '@active_start_time='+@Hora1InicioJob+','  +
                CHAR(10) + '@active_end_time=235959, @schedule_id = @schedule_id OUTPUT'+
                CHAR(10) + 'select @schedule_id'+
                CHAR(10) + ''+
                CHAR(10) + 'SET DATEFORMAT YMD'+
                CHAR(10) + 'UPDATE sysjobs_view SET date_created =' + CHAR(39) + CONVERT(varchar,@FechaHoraDia1L,21) + CHAR(39) + ',date_modified =' + CHAR(39) + CONVERT(varchar,@FechaHoraDia1L,21) + CHAR(39) + ' WHERE (Name=N' + CHAR(39) + @NombreJobs + CHAR(39) + 'and category_id=N' + CHAR(39) + CONVERT(varchar(1),0) + CHAR(39) + ')'+
                CHAR(10) + ''
                
  EXECUTE(@SQL)

RETURN
END
GO


--exec spCDIGeneraJobCargosAnuales 'CDI', 1,2013
