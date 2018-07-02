SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 25551) INSERT INTO MensajeLista (Mensaje,	Descripcion,	                         	Tipo,		IE)
																VALUES					 (25551,	'Falta Indicar Categorías por Artículo',	'ERROR',	0)		
GO

---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 25552) INSERT INTO MensajeLista (Mensaje,	Descripcion,	                Tipo,		IE)
																VALUES					 (25552,	'Falta Indicar Concepto Gasto',	'ERROR',	0)		
GO

---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 25553) INSERT INTO MensajeLista (Mensaje,	Descripcion,	                Tipo,		IE)
																VALUES					 (25553,	'Falta Indicar Clasificaciones Gastos',	'ERROR',	0)		
GO

-----------------------------------
---- S P C P V E R I F I C A R ----
-----------------------------------
IF EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.spCPVerificar') AND TYPE = 'P') DROP PROCEDURE dbo.spCPVerificar
GO
CREATE PROCEDURE spCPVerificar
    		    @ID               	int,
				@Accion				char(20),
    		    @Empresa          	char(5),
				@Usuario			char(10),
    		    @Modulo	      		char(5),
    		    @Mov              	char(20),
	            @MovID				varchar(20),
    		    @MovTipo	      	char(20),
				@MovMoneda			char(10),
				@MovTipoCambio		float,
				@FechaEmision		datetime,
				@Estatus			char(15),
				@EstatusNuevo		char(15),
    		    @FechaRegistro     	datetime,		   
    	 	    @Proyecto	      	varchar(50),
				@Ejercicio			int,
				@Periodo			int,
				@Conexion			bit,
				@SincroFinal		bit,
				@Sucursal			int,
    		    @Ok               	int          OUTPUT,
    		    @OkRef            	varchar(255) OUTPUT

--//WITH ENCRYPTION
AS BEGIN 
  DECLARE
    @p						int,
    @Articulo				varchar(20),
    @ClavePresupuestal		varchar(50),
	@Especificar			varchar(50),
    @SumaImporte			money,
    @Importe				money,
    @Tipo					varchar(20),
    @Presupuesto			money,
    @Comprometido			money,
    @Comprometido2			money,
    @Devengado				money,
    @Devengado2				money,
    @Ejercido				money,
    @EjercidoPagado			money,
    @Anticipos				money,
    @RemanenteDisponible	money,
    @Sobrante				money,
    @Disponible				money,
    @SaldoPresupuesto		money,
    @SaldoComprometido		money,
    @SaldoComprometido2		money,
    @SaldoDevengado			money,
    @SaldoDevengado2		money,
    @SaldoEjercido			money,
    @SaldoEjercidoPagado	money,
    @SaldoAnticipos			money,
    @SaldoRemanenteDisponible	money,
    @SaldoSobrante			money,
    @SaldoDisponible		money,
    @FlujoAlPeriodo			money,
    @TotalEjercido			money,
    @Reservado				money,
    --@TieneArticulosEsp		bit,
    @PeriodoD				int,
    @TieneDetalle			bit,
    @AplicaComprometido		bit, 
    @SubClave             varchar(20), 
    @Clave                varchar(20),
    @RemanDispo				MONEY
    

  --- P R E S U P U E S T A L  C O M P R O M E T I D O  4 6 5 2
  SELECT @AplicaComprometido = ISNULL(AplicaComprometido,0) FROM CDIEmpresaCFG WHERE Empresa = @Empresa
  SELECT @SubClave = ISNULL(SubClave, ''), @Clave = Clave FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Mov

  IF @Accion = 'CANCELAR'
  BEGIN --- C A N C E L A R
    -- Checar que se haya capturado el movimiento en este modulo
    IF @Conexion = 0 
      IF EXISTS (SELECT * FROM MovFlujo WHERE Cancelado = 0 AND Empresa = @Empresa AND DModulo = @Modulo AND DID = @ID AND OModulo <> DModulo)
	    SELECT @Ok = 60070
  END   --- C A N C E L A R 
  ELSE 
  IF @Accion IN ('AFECTAR', 'VERIFICAR')
  BEGIN --- A F E C T A R    V E R I F I C A R 	
    UPDATE CPCal SET EnMov = NULL WHERE ID = @ID AND EnMov IS NOT NULL
    UPDATE CPArt SET EnMov = NULL WHERE ID = @ID AND EnMov IS NOT NULL    
    IF @Proyecto IS NULL SELECT @Ok = 15010

    SELECT @TieneDetalle = 0
    DECLARE crCPVerificar CURSOR LOCAL FOR 
     SELECT d.ClavePresupuestal, CASE WHEN (@SubClave IN('CP.TAMTR', 'CP.DEV') OR @Mov = 'Cambio Proceso Mes13' OR (@Clave = 'CP.TA' AND @Mov <> 'Clasificacion' )) THEN NULL ELSE cp.Especificar END, UPPER(d.Tipo), 
            ISNULL(SUM(d.Importe), 0.0), ISNULL(SUM(d.Presupuesto), 0.0), ISNULL(SUM(d.Comprometido), 0.0), ISNULL(SUM(d.Comprometido2), 0.0), 
            ISNULL(SUM(d.Devengado), 0.0), ISNULL(SUM(d.Devengado2), 0.0), ISNULL(SUM(d.Ejercido), 0.0), ISNULL(SUM(d.EjercidoPagado), 0.0), 
            ISNULL(SUM(d.Anticipos), 0.0), ISNULL(SUM(d.RemanenteDisponible), 0.0), ISNULL(SUM(d.Sobrante), 0.0), ISNULL(SUM(d.Disponible), 0.0)
       FROM CPD d
       JOIN ClavePresupuestal cp ON cp.ClavePresupuestal = d.ClavePresupuestal
      WHERE d.ID = @ID
      GROUP BY d.ClavePresupuestal, cp.Especificar, d.Tipo
      ORDER BY d.ClavePresupuestal, cp.Especificar, d.Tipo
    OPEN crCPVerificar
    FETCH NEXT FROM crCPVerificar INTO @ClavePresupuestal, @Especificar, @Tipo, @Importe, @Presupuesto, @Comprometido, @Comprometido2, @Devengado, @Devengado2, @Ejercido, @EjercidoPagado, @Anticipos, @RemanenteDisponible, @Sobrante, @Disponible
    WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
    BEGIN
      IF @@FETCH_STATUS <> -2 
      BEGIN --- 2
        SELECT @TieneDetalle = 1
      	IF NULLIF(RTRIM(@ClavePresupuestal), '') IS NULL SELECT @Ok = 25640
      	UPDATE CPCal SET EnMov = 1 WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
      	UPDATE CPArt SET EnMov = 1 WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo

      	IF @MovTipo IN ('CP.AS', 'CP.TA', 'CP.TR', 'CP.RF') AND @Ok IS NULL
      	BEGIN --- M O V T I P O
          -- checar CPCal
    	  SELECT @SumaImporte = 0.0
      	  SELECT @SumaImporte = ISNULL(SUM(Importe), 0.0) FROM CPCal WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
   	      IF @Importe <> @SumaImporte 
      	  BEGIN --- I M P O R T E
            IF ROUND(@Importe, 2) = ROUND(@SumaImporte, 2)
      	    BEGIN --- R O U N D
      	      SELECT @p = MAX(Periodo)
      	        FROM CPCal
      	       WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
      	      	 
      	      UPDATE CPCal
      	         SET Importe = Importe + (@Importe - @SumaImporte)
      	       WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo AND Periodo = @p
      	      	 
              SELECT @SumaImporte = ISNULL(SUM(Importe), 0.0) FROM CPCal WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
      	    END   --- R O U N D
      	    IF @Importe <> @SumaImporte SELECT @Ok = 25520
          END   --- I M P O R T E                
     	
          
          IF @Especificar = 'Articulos' AND @MovTipo NOT IN ('CP.RF')              -- C H E C A R  C P A R T  4 6 4 7  V A L  P R E S
          BEGIN --- A R T I C U L O    E S P E C I F I C O
            IF NOT EXISTS(SELECT * FROM CPArt WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo)
              SELECT @Ok = 25550
      	    SELECT @SumaImporte = 0.0
      	    --SELECT @SumaImporte = ISNULL(SUM(Cantidad*Precio), 0.0) FROM CPArt WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
            --IF @Importe <> @SumaImporte SELECT @Ok = 25525      	    
      	    --IF @Tipo = 'REDUCCION'
            --  EXEC spCPVerificarReduccion @ID, @Accion, @Empresa, @Usuario, @Modulo, @Mov, @MovID, @MovTipo, @MovMoneda, @MovTipoCambio, @FechaEmision, @Estatus, @EstatusNuevo, @FechaRegistro,
            --                            @Proyecto, @Ejercicio, @Periodo,@ClavePresupuestal, @Tipo, @Conexion, @SincroFinal, @Sucursal, @Ok OUTPUT, @OkRef OUTPUT
          END   --- A R T I C U L O    E S P E C I F I C O  
                  
          
          IF @Especificar = 'Categorias Articulos' AND @MovTipo NOT IN ('CP.RF')     -- C H E C A R  C D I C P A R T C A T    4 6 4 7  V A L  P R E S
          BEGIN --- C A T E G O R I A   A R T I C U L O
            IF NOT EXISTS(SELECT * FROM CDICPArtCat WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal) 
              SELECT @Ok = 25551
          END   --- C A T E G O R I A   A R T I C U L O 
         
          IF @Especificar = 'Conceptos Gastos' AND @MovTipo NOT IN ('CP.RF')        -- C H E C A R  C D I C P C O N C E P T O    4 6 4 7  V A L  P R E S
          BEGIN --- C O N C E P T O
            IF NOT EXISTS(SELECT * FROM CDICPConcepto WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal)
              SELECT @Ok = 25552
          END   --- C O N C E P T O
                    
          IF @Especificar = 'Clasificaciones Gastos' AND @MovTipo NOT IN ('CP.RF')  -- C H E C A R  C D I C P C L A S I F I C A C I O N    4 6 4 7  V A L  P R E S
          BEGIN --- C L A S I F I C A C I O N
            IF NOT EXISTS(SELECT * FROM CDICPClasificacion WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal)
              SELECT @Ok = 25553
          END   --- C L A S I F I C A C I O N

      	END   --- M O V T I P O
      	
      	SELECT @SaldoPresupuesto	 = 0.0,
               @SaldoComprometido	 = 0.0,
               @SaldoComprometido2	 = 0.0,
               @SaldoDevengado		 = 0.0,
               @SaldoDevengado2		 = 0.0,
               @SaldoEjercido		 = 0.0,
               @SaldoEjercidoPagado	 = 0.0,
               @SaldoAnticipos           = 0.0,
               @SaldoRemanenteDisponible = 0.0,
               @SaldoSobrante		 = 0.0,
               @SaldoDisponible		 = 0.0
        SELECT @SaldoPresupuesto	 = Presupuesto,
               @SaldoComprometido	 = Comprometido,
               @SaldoComprometido2	 = Comprometido2,
               @SaldoDevengado		 = Devengado,
               @SaldoDevengado2		 = Devengado2,
               @SaldoEjercido		 = Ejercido,
               @SaldoEjercidoPagado	 = EjercidoPagado,
               @SaldoAnticipos           = Anticipos,
               @SaldoRemanenteDisponible = RemanenteDisponible,
               @SaldoSobrante		 = Sobrante,
               @SaldoDisponible		 = Disponible
          FROM CPNeto
         WHERE Empresa = @Empresa AND Proyecto = @Proyecto AND ClavePresupuestal = @ClavePresupuestal
         
        --IF @MovTipo IN ('CP.AS', 'CP.TA', 'CP.TR') AND @Tipo = 'REDUCCION' AND @Importe > @SaldoDisponible AND @Ok IS NULL
        --  SELECT @Ok = 20902
          

        IF @MovTipo = 'CP.OP' AND @Ok IS NULL
        BEGIN
          IF (ROUND(@SaldoPresupuesto		+ @Presupuesto, 2)   < 0.0) 
          OR (ROUND(@SaldoComprometido		+ @Comprometido, 2)  < 0.0)
          OR (ROUND(@SaldoComprometido2		+ @Comprometido2, 2) < 0.0)
          OR (ROUND(@SaldoDevengado		    + @Devengado + @SaldoAnticipos, 2)     < 0.0)
          OR (ROUND(@SaldoDevengado2		+ @Devengado2, 2)    < 0.0)
          OR (ROUND(@SaldoEjercido		    + @Ejercido, 2)      < 0.0)
          OR (ROUND(@SaldoEjercidoPagado	+ @EjercidoPagado, 2)< 0.0)
          OR (ROUND(@SaldoAnticipos		    + @Anticipos, 2)     < 0.0)
          OR (ROUND(@SaldoRemanenteDisponible	+ @RemanenteDisponible, 2) < 0.0)
          OR (ROUND(@SaldoSobrante		    + @Sobrante, 2)      < 0.0)
          --OR (ROUND(@SaldoDisponible		+ @Disponible, 2)    < 0.0)
            SELECT @Ok = 20902
        END       

        SELECT @TotalEjercido = @SaldoEjercido + @Ejercido + @SaldoEjercidoPagado + @EjercidoPagado
        ---  V A L I D A C I O N    P R E S U P U E S T A L  C O M P R O M E T I D O  4 6 5 2
        IF @AplicaComprometido = 1  SELECT @TotalEjercido = @TotalEjercido + @SaldoComprometido + @Comprometido + @SaldoComprometido2 + @SaldoDevengado + @SaldoDevengado2 + @SaldoEjercidoPagado  + @SaldoSobrante
        -----------------------
        --- E J E R C I D O ---	    
        ----------------------- 
        IF @MovTipo = 'CP.OP' AND @Ejercido > 0.0 AND @Ok IS NULL AND ISNULL(@AplicaComprometido,0) = 0
        BEGIN --- C H E C A R   C A N D E L A R I Z A C I O N   F L U J O
          SELECT @FlujoAlPeriodo = 0.0
          SELECT @FlujoAlPeriodo = ISNULL(SUM(Presupuesto), 0.0)
            FROM CPCalDisponible
           WHERE Empresa = @Empresa AND Proyecto = @Proyecto AND ClavePresupuestal = @ClavePresupuestal AND Ejercicio = @Ejercicio AND Periodo <= @Periodo
          IF ROUND(@TotalEjercido, 0) > ROUND(@FlujoAlPeriodo, 0) 
            SELECT @Ok = 25530, @OkRef = RTRIM(@Mov)+'<BR>'+'Excedente: '+CONVERT(varchar, @TotalEjercido - @FlujoAlPeriodo)+ '<BR>'+@ClavePresupuestal
        END   --- C H E C A R   C A N D E L A R I Z A C I O N   F L U J O
        ELSE
        BEGIN --- C H E C A R   C A N D E L A R I Z A C I O N   F L U J O
          -------------------------------
          --- C O M P R O M E T I D O ---	    
          -------------------------------
          
          ------- PARA VALIDAR MOVIMIENTOS DEL EJERCICIO EN CURSO
          
          SELECT @SaldoPresupuesto	 = 0.0,
               @SaldoComprometido	 = 0.0,
               @SaldoComprometido2	 = 0.0,
               @SaldoDevengado		 = 0.0,
               @SaldoDevengado2		 = 0.0,
               @SaldoEjercido		 = 0.0,
               @SaldoEjercidoPagado	 = 0.0,
               @SaldoAnticipos           = 0.0,
               @SaldoRemanenteDisponible = 0.0,
               @SaldoSobrante		 = 0.0,
               @SaldoDisponible		 = 0.0,
               @TotalEjercido		 = 0.0,
               @FlujoAlPeriodo		 = 0.0,
               @RemanDispo			 = 0.0           
          SELECT @SaldoPresupuesto	 = Presupuesto,
               @SaldoComprometido	 = Comprometido,
               @SaldoComprometido2	 = Comprometido2,
               @SaldoDevengado		 = Devengado,
               @SaldoDevengado2		 = Devengado2,
               @SaldoEjercido		 = Ejercido,
               @SaldoEjercidoPagado	 = EjercidoPagado,
               @SaldoAnticipos           = Anticipos,
               @SaldoRemanenteDisponible = RemanenteDisponible,
               @SaldoSobrante		 = Sobrante,
               @SaldoDisponible		 = Disponible
          FROM CDICPNeto
         WHERE Empresa = @Empresa AND Proyecto = @Proyecto AND ClavePresupuestal = @ClavePresupuestal AND Ejercicio = @Ejercicio

						---------JMUCIO Considerar el movimiento Traspaso Remanente como disminucion de Flujo--------        
				SELECT @RemanDispo = ISNULL(SUM(RemanenteDisponible ), 0.0) * -1
				FROM CP c JOIN CPD c2 ON c2.ID = c.ID 
				WHERE c.Empresa = @Empresa AND c.Proyecto = @Proyecto AND c2.ClavePresupuestal = @ClavePresupuestal AND c.Ejercicio = @Ejercicio AND c.Mov = 'Traspaso Remanente' AND c2.RemanenteDisponible < 0.00

--SELECT @SaldoDisponible
--SELECT @RemanDispo
--SELECT @Importe

        IF @MovTipo IN ('CP.AS', 'CP.TA', 'CP.TR') AND @Tipo = 'REDUCCION' AND @Importe > (@SaldoDisponible /*- @RemanDispo*/) AND @Ok IS NULL AND @SubClave <> 'CP.TAMTR'
          SELECT @Ok = 20902, @OkRef = RTRIM(@Mov)+'<BR>'+'Excedente: '+CONVERT(varchar, (@Importe - @SaldoDisponible)) + '<BR>'+@ClavePresupuestal
          
        SELECT @TotalEjercido = @SaldoEjercido + @Ejercido + @SaldoEjercidoPagado + @EjercidoPagado
        ---  V A L I D A C I O N    P R E S U P U E S T A L  C O M P R O M E T I D O  4 6 5 2
        IF @AplicaComprometido = 1  SELECT @TotalEjercido = @TotalEjercido + @SaldoComprometido + @Comprometido + @SaldoComprometido2 + @SaldoDevengado + @SaldoDevengado2 + @SaldoEjercidoPagado  + @SaldoSobrante
          
          
          IF @MovTipo = 'CP.OP' AND @Comprometido > 0.0 AND @Ok IS NULL AND @AplicaComprometido = 1
          BEGIN --- O P E R A C I O N 
            SELECT @FlujoAlPeriodo = 0.0
            SELECT @FlujoAlPeriodo = ISNULL(SUM(Presupuesto), 0.0)
              FROM CPCalDisponible
             WHERE Empresa = @Empresa AND Proyecto = @Proyecto AND ClavePresupuestal = @ClavePresupuestal AND Ejercicio = @Ejercicio AND Periodo <= @Periodo
            IF (ROUND(@TotalEjercido, 0) + ROUND(@RemanDispo, 0)) > ROUND(@FlujoAlPeriodo, 0) 
              SELECT @Ok = 25530, @OkRef = RTRIM(@Mov)+'<BR>'+'Excedente Comprometido: '+CONVERT(varchar, (@TotalEjercido + @RemanDispo) - @FlujoAlPeriodo)+ '<BR>'+@ClavePresupuestal
          END   --- O P E R A C I O N                                              
        END  --- C H E C A R   C A N D E L A R I Z A C I O N   F L U J O

        IF @MovTipo IN ('CP.RF', 'CP.TA', 'CP.TR') AND @Ok IS NULL AND @SubClave <> 'CP.TAMTR'
        BEGIN
          DECLARE crCPVerificarRF CURSOR LOCAL FOR 
           SELECT Periodo, Importe * CASE WHEN @Tipo = 'REDUCCION' THEN -1.0 ELSE 1.0 END 
             FROM CPCal
            WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
          OPEN crCPVerificarRF
          FETCH NEXT FROM crCPVerificarRF INTO @PeriodoD, @Reservado
          WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
          BEGIN
            IF @@FETCH_STATUS <> -2 
            BEGIN      	       	
              -- en el caso de traspasos el reservado se comporta alrevez
              IF @MovTipo <> 'CP.RF' SELECT @Reservado = -@Reservado 
              	            
              SELECT @FlujoAlPeriodo = 0.0
              SELECT @FlujoAlPeriodo = ISNULL(SUM(Presupuesto), 0.0)
                FROM CPCalDisponible
               WHERE Empresa = @Empresa AND Proyecto = @Proyecto AND ClavePresupuestal = @ClavePresupuestal AND Ejercicio = @Ejercicio AND Periodo <= @PeriodoD
              IF ROUND(@TotalEjercido + @Reservado, 0) > ROUND(@FlujoAlPeriodo, 0) 
                SELECT @Ok = 25530, @OkRef = RTRIM(@Mov)+'<BR>'+'Excedente: '+CONVERT(varchar, (@TotalEjercido + @Reservado) - @FlujoAlPeriodo)+ '<BR>'+@ClavePresupuestal+' '+@Tipo
            END
            FETCH NEXT FROM crCPVerificarRF INTO @PeriodoD, @Reservado
          END
          CLOSE crCPVerificarRF
          DEALLOCATE crCPVerificarRF
        END

        IF @Tipo = 'REDUCCION' 
          SELECT @SumaImporte = @SumaImporte - ISNULL(@Importe, 0.0)
        ELSE
          SELECT @SumaImporte = @SumaImporte + ISNULL(@Importe, 0.0)
          
        IF @Ok IS NOT NULL AND @OkRef IS NULL SELECT @OkRef = RTRIM(@Mov)+'<BR>'+@ClavePresupuestal
      END
      FETCH NEXT FROM crCPVerificar INTO @ClavePresupuestal, @Especificar, @Tipo, @Importe, @Presupuesto, @Comprometido, @Comprometido2, @Devengado, @Devengado2, @Ejercido, @EjercidoPagado, @Anticipos, @RemanenteDisponible, @Sobrante, @Disponible
    END
    CLOSE crCPVerificar
    DEALLOCATE crCPVerificar         

    --IF @TieneDetalle = 0 AND @Ok IS NULL SELECT @Ok = 60010

    IF @MovTipo IN ('CP.TA', 'CP.TR') AND @Ok IS NULL 
    BEGIN
      SELECT @SumaImporte = 0.0
      SELECT @SumaImporte = SUM(CASE WHEN UPPER(Tipo) = 'REDUCCION' THEN -Importe ELSE Importe END)
        FROM CPD
       WHERE ID = @ID

      IF @SumaImporte <> 0.0
       SELECT @Ok = 25540    	
    END
    IF @Ok IS NULL
    BEGIN
      DELETE CPCal WHERE ID = @ID AND EnMov IS NULL
      DELETE CPArt WHERE ID = @ID AND EnMov IS NULL
    END
    
    IF @Ok IS NULL AND @Accion IN ('AFECTAR', 'VERIFICAR', 'AUTORIZAR', 'GENERAR')  AND @Modulo IN ('CP')
      EXEC xpCDIVerificarFlujo @Modulo, @ID, @Accion, @Usuario, @Ok OUTPUT, @OkRef OUTPUT
         
  END
  RETURN
END
GO

