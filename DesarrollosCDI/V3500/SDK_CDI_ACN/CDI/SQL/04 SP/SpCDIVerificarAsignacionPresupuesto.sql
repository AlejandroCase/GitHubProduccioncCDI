SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDIVerificarAsignacionPresupuesto') and type = 'P') DROP PROCEDURE dbo.SpCDIVerificarAsignacionPresupuesto
GO 
CREATE PROCEDURE SpCDIVerificarAsignacionPresupuesto

		@ID				INT,
		@Ok             int          OUTPUT,
		@OkRef          varchar(255) OUTPUT
		
AS BEGIN
   	
   	DECLARE			@ClavePresupuestal		varchar(50),
   					@Especificar			varchar(50),
   					@Tipo					varchar(20),
   					@Importe				money,
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
					@Disponible				MONEY,
					@SumaImporte			MONEY,
					@Proyecto				VARCHAR (50),
					@TieneDetalle			BIT,
					@p						int, 
					@SubClave             varchar(20), 
					@Mov                  varchar(20), 
					@Clave                 varchar(20)
					
				   
		
	SELECT @Proyecto = Proyecto, @Mov = Mov FROM cp WHERE id=@ID	
	SELECT @SubClave = ISNULL(SubClave, ''), @Clave = Clave FROM MovTipo WHERE Modulo = 'CP' AND Mov = @Mov
				   
				   
					UPDATE CPCal SET EnMov = NULL WHERE ID = @ID AND EnMov IS NOT NULL
					UPDATE CPArt SET EnMov = NULL WHERE ID = @ID AND EnMov IS NOT NULL    
					IF @Proyecto IS NULL SELECT @Ok = 15010

--					SELECT @TieneDetalle = 0
				   
  DECLARE crCPVerificarCDICPAsignacion CURSOR LOCAL FOR 
  SELECT d.ClavePresupuestal, CASE WHEN (@SubClave IN('CP.TAMTR', 'CP.DEV')  OR @Mov = 'Cambio Proceso Mes13' OR (@Clave = 'CP.TA' AND @Mov <> 'Clasificacion' )) THEN NULL ELSE cp.Especificar END, 
         UPPER(d.Tipo), ISNULL(SUM(d.Importe), 0.0)--, ISNULL(SUM(d.Presupuesto), 0.0), ISNULL(SUM(d.Comprometido), 0.0), ISNULL(SUM(d.Comprometido2), 0.0), ISNULL(SUM(d.Devengado), 0.0), ISNULL(SUM(d.Devengado2), 0.0), ISNULL(SUM(d.Ejercido), 0.0), ISNULL(SUM(d.EjercidoPagado), 0.0), ISNULL(SUM(d.Anticipos), 0.0), ISNULL(SUM(d.RemanenteDisponible), 0.0), ISNULL(SUM(d.Sobrante), 0.0), ISNULL(SUM(d.Disponible), 0.0)
       FROM CPD d
       JOIN ClavePresupuestal cp ON cp.ClavePresupuestal = d.ClavePresupuestal
      WHERE d.ID = @ID
      GROUP BY d.ClavePresupuestal, cp.Especificar, d.Tipo
      ORDER BY d.ClavePresupuestal, cp.Especificar, d.Tipo
    OPEN crCPVerificarCDICPAsignacion
    FETCH NEXT FROM crCPVerificarCDICPAsignacion INTO @ClavePresupuestal, @Especificar, @Tipo, @Importe--, @Presupuesto, @Comprometido, @Comprometido2, @Devengado, @Devengado2, @Ejercido, @EjercidoPagado, @Anticipos, @RemanenteDisponible, @Sobrante, @Disponible
    WHILE @@FETCH_STATUS <> -1-- AND @Ok IS NULL
    BEGIN
      --IF @@FETCH_STATUS <> -2 
      
BEGIN 
--				SELECT @TieneDetalle = 1

--SELECT @ClavePresupuestal, @Especificar, @Tipo
				IF NULLIF(RTRIM(@ClavePresupuestal), '') IS NULL SELECT @Ok = 25640
   				UPDATE CPCal SET EnMov = 1 WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
   				UPDATE CPArt SET EnMov = 1 WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
   				
	--			SELECT @Tipo, @ClavePresupuestal, @Tipo ,@ID
				BEGIN
					
				
							
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
      								IF @Importe <> @SumaImporte SELECT @Ok = 25520, @OkRef ='El Importe de la Clave Presupuestal ' + @ClavePresupuestal + ' no es igual al total de la calendarización por periodo'
								  END   --- I M P O R T E                
						     	
					END
	
					BEGIN
						
					

					IF @Especificar = 'Articulos' --AND @ok IS NULL-- AND @MovTipo NOT IN ('CP.RF')              -- C H E C A R  C P A R T  4 6 4 7  V A L  P R E S
					  BEGIN --- A R T I C U L O    E S P E C I F I C O
						IF NOT EXISTS(SELECT * FROM CPArt WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo)
						  SELECT @Ok = 25550, @OkRef= 'La Clave Presupuestal ' + @ClavePresupuestal + ' no tiene Artículos asignados'
						  --SELECT @ID
     -- 						SELECT @SumaImporte = 0.0
     -- 					--SELECT @SumaImporte = ISNULL(SUM(Cantidad*Precio), 0.0) FROM CPArt WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal AND Tipo = @Tipo
					--	--IF @Importe <> @SumaImporte SELECT @Ok = 25525      	    
     -- 					--IF @Tipo = 'REDUCCION'
					--	--  EXEC spCPVerificarReduccion @ID, @Accion, @Empresa, @Usuario, @Modulo, @Mov, @MovID, @MovTipo, @MovMoneda, @MovTipoCambio, @FechaEmision, @Estatus, @EstatusNuevo, @FechaRegistro,
					--	--                            @Proyecto, @Ejercicio, @Periodo,@ClavePresupuestal, @Tipo, @Conexion, @SincroFinal, @Sucursal, @Ok OUTPUT, @OkRef OUTPUT
					  END   --- A R T I C U L O    E S P E C I F I C O  
			                  
					  IF @Especificar = 'Categorias Articulos' --AND @MovTipo NOT IN ('CP.RF')     -- C H E C A R  C D I C P A R T C A T    4 6 4 7  V A L  P R E S
					  BEGIN --- C A T E G O R I A   A R T I C U L O
					    IF NOT EXISTS(SELECT * FROM CDICPArtCat WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal)
					      SELECT @Ok = 25551, @OkRef= 'La Clave Presupuestal ' + @ClavePresupuestal + ' no tiene Categoría Asignada'
					  END   --- C A T E G O R I A   A R T I C U L O 
			         
					  IF @Especificar = 'Conceptos Gastos' --AND @MovTipo NOT IN ('CP.RF')        -- C H E C A R  C D I C P C O N C E P T O    4 6 4 7  V A L  P R E S
					  BEGIN --- C O N C E P T O
					    IF NOT EXISTS(SELECT * FROM CDICPConcepto WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal)
					      SELECT @Ok = 25552, @OkRef= 'La Clave Presupuestal ' + @ClavePresupuestal + ' no tiene Concepto Asignado'
					  END   --- C O N C E P T O
			                    
					  IF @Especificar = 'Clasificaciones Gastos' --AND @MovTipo NOT IN ('CP.RF')  -- C H E C A R  C D I C P C L A S I F I C A C I O N    4 6 4 7  V A L  P R E S
					  BEGIN --- C L A S I F I C A C I O N
					    IF NOT EXISTS(SELECT * FROM CDICPClasificacion WHERE ID = @ID AND ClavePresupuestal = @ClavePresupuestal)
					      SELECT @Ok = 25553, @OkRef= 'La Clave Presupuestal ' + @ClavePresupuestal + ' no tiene Calsificación de Gasto Asignada'
					  END   --- C L A S I F I C A C I O N

			END

END

  FETCH NEXT FROM crCPVerificarCDICPAsignacion INTO @ClavePresupuestal, @Especificar, @Tipo, @Importe--, @Presupuesto, @Comprometido, @Comprometido2, @Devengado, @Devengado2, @Ejercido, @EjercidoPagado, @Anticipos, @RemanenteDisponible, @Sobrante, @Disponible
    END
    CLOSE crCPVerificarCDICPAsignacion
    DEALLOCATE crCPVerificarCDICPAsignacion    



END
-- exec SpCDIVerificarAsignacionPresupuesto 749, '25550', 'asd'
GO
