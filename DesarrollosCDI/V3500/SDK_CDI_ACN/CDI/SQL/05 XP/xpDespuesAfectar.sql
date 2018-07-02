SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. INTERFAZ PUNTOS
  -- Cliente   . CDI
  -- Folio     . 4560
  -- Fecha     . 19 / 10 / 10
  -- Autor     . EDER MENDOZA


-----------------------------------------
---- X P D E S P U E S A F E C T A R ----
------------------------------------------

IF EXISTS (SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.xpDespuesAfectar') AND type = 'P') DROP PROCEDURE dbo.xpDespuesAfectar
GO
CREATE PROCEDURE xpDespuesAfectar
        @Modulo			char(5),
        @ID				int,
        @Accion			char(20),
        @Base			char(20),
        @GenerarMov		char(20),
        @Usuario		char(10),
        @SincroFinal	bit,
        @EnSilencio	    bit,
        @Ok             int 			OUTPUT,
    	  @OkRef          varchar(255) 	OUTPUT,
        @FechaRegistro	datetime
AS 
BEGIN
  DECLARE @MovO varchar(20), 
          @MovIDO varchar(20), 
          @Socio varchar(100), 
          @CDICargoAutomatico bit, 
          @CDITarjetaCargo varchar(16), 
          @Estatus varchar(15), 
          @FechaEmision datetime, 
          @Mov varchar(20), 
          @MovID varchar(20), 
          @Empresa varchar(5), 
          @Proyecto varchar(50), 
          @UEN int, 
          @Sucursal int, 
          @Moneda varchar(10), 
          @Fecha datetime, 
          @IDGenerado int, 
          @ClavePresupuestal varchar(50), 
          @Importe money, 
          @Renglon float, 
          @TipoCambio float, 
          @ClaveAfec varchar(20), 
          @DMov varchar(20), 
          @DMovID varchar(20), 
          @EstatusCompra varchar(15),
          @DEscripcion15 varchar(50),
          @Causa varchar(50),
          @BajaTotal	bit,
          @FormaCobro varchar(50),
          @DescuentoLineal money,
          @Precio		   MONEY,
          @MovCxp			  varchar(20),
          @MovIDCxp varchar(20),
          @Condicion		  VARCHAR(50),
          @Prov	VARCHAR(10),
          @VencimientoCDI DATETIME,
          @EstatusSocio	VARCHAR(15),
          @CausaBloqueo	VARCHAR(50), 
          @Bloqueado    varchar(2), --BEGM 20120425. Indicador de bloqueado (Cte.Descripcion13)
          @DesBloqueo   bit,
          
          @IDSolicBeca  int, -- JBF 5753 Cancelar Solicitudes de Becas apartir de los PreRegistros
          @Referencia   varchar(100), --BEGM 20120601. Concluir el movimiento previo de los movs tipo COMS.CA
          @RefID        varchar(20), 
          @ClaveReq     varchar(20),
          @CDIClavePresupuestal VARCHAR(20),
          @Tipo         varchar(20)
          
     --------------------------------------------------------------------------
     --- V E N T A S   V E N T A S   V E N T A S   V E N T A S  V E N T A S ---
     --------------------------------------------------------------------------
     IF @Modulo IN ('VTAS') AND @Accion IN ('AFECTAR','CANCELAR')
     BEGIN --- M O D U L O   V E N T A S 
       EXEC xpCDIDespuesAfectarSolPuntos @Modulo,@ID,@Accion,@Base,@GenerarMov,@Usuario,@SincroFinal, @EnSilencio, @Ok  OUTPUT, @OkRef OUTPUT,  @Fecharegistro              
     END   --- M O D U L O   V E N T A S 
     
     --------------------------------------------------------------------------
     --- N               O          M               I            N       A ---
     --------------------------------------------------------------------------
     IF @Modulo IN ('NOM') AND @Accion IN ('AFECTAR','CANCELAR')
     BEGIN --- Nomina ini
       EXEC spCDIMovCopiarVac @ID,@Accion,@Fecharegistro,@Usuario     
     END   --- Nomina Fin

     ------------------------------------------------------------------------------------------
     --- C O N T R O L   P R E S U P U E S T A L    C O N T R O L   P R E S U P U E S T A L ---
     ------------------------------------------------------------------------------------------
     IF @Modulo IN ('CP') AND @Accion IN ('AFECTAR','CANCELAR') 
     BEGIN --- C O N T R O L  I N I
       EXEC xpCDIDespuesAfectarCP @Modulo,@ID,@Accion,@Base,@GenerarMov,@Usuario,@SincroFinal, @EnSilencio, @Ok  OUTPUT, @OkRef OUTPUT,  @Fecharegistro       
     END   --- C O N T R O L  F I N

     --BEGM 20101029. Para copiar el socio y el check de cargo automático
     IF @Modulo = 'VTAS'
     BEGIN
        SELECT @MovO = Mov, @MovIDO = MovID, @Socio = CDISocio, @CDICargoAutomatico = CDICargoAutomatico, @CDITarjetaCargo = CDITarjetaCargo 
        FROM Venta 
        WHERE ID = @ID
        
        SELECT TOP 1 @CDIClavePresupuestal = CDIClavePresupuestal FROM VentaD WHERE ID = @ID

        IF @Accion IN ( 'AFECTAR', 'AUTORIZAR')
        BEGIN
          UPDATE Cxc SET CDISocio = @Socio, CDICargoAutomatico = @CDICargoAutomatico, CDIClavePresupuestal = @CDIClavePresupuestal
          WHERE OrigenTipo = 'VTAS' AND Origen = @MovO AND OrigenID = @MovIDO 
                AND ID = (SELECT MAX(ID) FROM Cxc WHERE OrigenTipo = 'VTAS' AND Origen = @MovO AND OrigenID = @MovIDO )
        END

        IF @Accion = 'GENERAR'
        BEGIN
          UPDATE Venta SET CDISocio = @Socio, CDICargoAutomatico = @CDICargoAutomatico, CDITarjetaCargo = @CDITarjetaCargo
          WHERE OrigenTipo = 'VTAS' AND Origen = @MovO AND OrigenID = @MovIDO 
                AND ID = (SELECT MAX(ID) FROM Venta WHERE OrigenTipo = 'VTAS' AND Origen = @MovO AND OrigenID = @MovIDO )
        END
     END
     
   IF @Modulo = 'CXC' AND @Accion IN ('GENERAR','AFECTAR')  
   BEGIN
   --     --BEGM 20101208. Ambas acciones actualizan los datos en el mov de destino
     	SELECT  @ClaveAfec= mt.Clave , @Mov=c.Mov , @MovID=c.MovID FROM Cxc c
			INNER JOIN MovTipo mt ON mt.Mov = c.Mov AND mt.Modulo='CXC'
			AND c.ID=@ID
			GROUP BY mt.Clave, C.Mov, c.MovID
    	 
    	 IF @ClaveAfec<>'CXC.D'
    		 BEGIN
	    	 	
	    	 
	     		
     			SELECT @MovO = Mov, @MovIDO = MovID, @Socio = CDISocio, @CDICargoAutomatico = CDICargoAutomatico,@FormaCobro=FormaCobro
				  FROM Cxc
				  WHERE ID = @ID

					UPDATE Cxc SET CDISocio = @Socio, CDICargoAutomatico = @CDICargoAutomatico
					WHERE OrigenTipo = 'CXC' AND Origen = @MovO AND OrigenID = @MovIDO 
						  AND ID = (SELECT MAX(ID) FROM Cxc WHERE OrigenTipo = 'CXC' AND Origen = @MovO AND OrigenID = @MovIDO )
    		 END
    	 
    	 
    	 IF @ClaveAfec = 'CXC.D'
    	 
    		 BEGIN
	    	 	
    	 			SELECT @MovO = Mov, @MovIDO = MovID, @Socio = CDISocio, @CDICargoAutomatico = CDICargoAutomatico,@FormaCobro=FormaCobro
					FROM Cxc
    	 			WHERE OrigenTipo='CXC' AND Mov =@Mov AND MovID =@MovID

					UPDATE Cxc SET CDISocio = @Socio, CDICargoAutomatico = @CDICargoAutomatico
					WHERE OrigenTipo = 'CXC' AND Origen = @MovO AND OrigenID = @MovIDO 
						  AND ID IN (SELECT ID FROM Cxc WHERE OrigenTipo = 'CXC' AND Origen = @MovO AND OrigenID = @MovIDO )
    		 END
    	 
    	 
    	 
     		IF @Accion ='AFECTAR' AND @ClaveAfec IN ('CXC.C','CXC.NC','CXC.ANC') AND @Socio IS NOT NULL  and @FormaCobro not in ('Cargo Automático','Cargo Auto Amex')
     		BEGIN
     			SELECT @EstatusSocio= Estatus , @CausaBloqueo= Descripcion15, @Bloqueado = Descripcion13 FROM cte WHERE Socio=@Socio
     			IF @Bloqueado = 'Si' --AND @CausaBloqueo='Cuota' --@EstatusSocio ='BLOQUEADO' --Se desbloquea solo si tiene desbloque automático
     			BEGIN
            EXEC SpCDISocLlenaSocBloqueo @Socio
            SELECT @Tipo = Tipo FROM Cte WHERE Socio = @Socio

            SELECT @Empresa = Empresa FROM Cxc WHERE ID = @ID
            
            SELECT @DesBloqueo = CASE @CausaBloqueo WHEN 'Admision'           THEN ISNULL(AdmisionDesbloqueo, 0)
                                                    WHEN 'Cuota'              THEN ISNULL(CuotaDesbloqueo, 0)
                                                    WHEN 'Inscripcion'        THEN ISNULL(InscripcionDesbloqueo, 0)
                                                    WHEN 'OtrosIngresos'      THEN ISNULL(OtrosIngresosDesbloqueo, 0)
                                                    WHEN 'Credencial'         THEN ISNULL(CredencialDesbloqueo, 0)
                                                    WHEN 'Casilleros'         THEN ISNULL(CasillerosDesbloqueo, 0)
                                                    WHEN 'Tarjetas Bancarias' THEN ISNULL(TarjetasBancariasDesbloqueo , 0)
                                      ELSE 0 END
            FROM CDISocAcessoCfgBloqueo
            WHERE Empresa = @Empresa AND Tipo = @Tipo
            
            SELECT  TOP 1 @DEscripcion15 = NULL, @Causa = NULL, @BajaTotal = BajaTotal
            FROM CDISocio 
            WHERE Mov IN ('Bloqueo', 'Baja') AND Socio = @Socio AND Estatus = 'CONCLUIDO' 
            ORDER BY ID DESC 

            SELECT @DEscripcion15 = ISNULL(@DEscripcion15, ''), @Causa = ISNULL(@Causa,''), @BajaTotal = ISNULL(@BajaTotal,0)
              
            IF @DesBloqueo = 1
            BEGIN
              EXEC CDIinsertSocioDesBloqueo @Empresa,@Usuario,@Socio, @DEscripcion15,@Causa,@BajaTotal,NULL, NULL
            END
          END
     		END
              
     END
     
     IF @Modulo = 'CE' and @Accion = 'AFECTAR'
     BEGIN
	  SELECT @Mov = Mov FROM CE WHERE ID = @ID	  
	  SELECT @ClaveAfec = Clave FROM MovTipo WHERE Modulo = 'CE' and Mov = @Mov
	  IF @ClaveAfec = 'CE.P'
	  BEGIN
	    SELECT TOP 1 @DescuentoLineal = DescuentoLineal, @Precio = Precio FROM CED WHERE ID = @ID
	    IF @DescuentoLineal = 100 or @Precio = 0.00
	     EXEC spAfectar 'CE', @ID, 'AFECTAR', 'Todo', @EnSilencio = 1, @Ok = null, @OkRef = null--, @Conexion = 1	
	  END 	   
     END

     --BEGM 20101101. Devoluciones Presupuestales
      IF @Modulo = 'COMS' AND @Accion = 'AFECTAR'
      BEGIN
        SELECT @ClaveAfec = mt.Clave
        FROM Compra c
        INNER JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'COMS'
        WHERE ID = @ID

       -- IF @ClaveAfec = 'COMS.D'
       -- BEGIN
       
       --  SET @Fecha = GETDATE()
      
       --  SELECT @Estatus = Estatus, @Mov = Mov, @MovID = MovID, @MovO = SUBSTRING(Referencia, 1, (PATINDEX('%[0-9]%', Referencia)-2)), 
       --         @MovIDO = SUBSTRING(Referencia, (PATINDEX('%[0-9]%', Referencia)), 10), @Empresa = Empresa, @Proyecto = Proyecto, 
       --         @UEN = UEN, @Sucursal = Sucursal, @Moneda = Moneda, @TipoCambio = TipoCambio, @EstatusCompra = CDIEstatusCompra
       --  FROM Compra 
       --  WHERE ID = @ID
      
       --  IF @Estatus = 'CONCLUIDO'
       --  BEGIN
       --    SELECT @FechaEmision = FechaEmision FROM Compra WHERE Mov = @MovO AND MovID = @MovIDO
        
       --    IF YEAR(@FechaEmision) <= YEAR(@Fecha) AND MONTH(@FechaEmision) < MONTH(@Fecha)
       --      INSERT INTO CP(Empresa, Sucursal, Mov, FechaEmision, UltimoCambio, UEN, Proyecto, Usuario, Estatus, 
       --                     OrigenTipo, Origen, OrigenID, Moneda, TipoCambio)
       --      VALUES(@Empresa, @Sucursal, 'Devolución Anterior', dbo.fnFechaSinHora(@Fecha), @Fecha, @UEN, @Proyecto, @Usuario, 'SINAFECTAR', 
       --             'COMS', @Mov, @MovID, @Moneda, @TipoCambio)
       --    ELSE --YEAR(@FechaEmision) = YEAR(@Fecha) AND MONTH(@FechaEmision) = MONTH(@Fecha)
       --      INSERT INTO CP(Empresa, Sucursal, Mov, FechaEmision, UltimoCambio, UEN, Proyecto, Usuario, Estatus, 
       --                      OrigenTipo, Origen, OrigenID, Moneda, TipoCambio)
       --      VALUES(@Empresa, @Sucursal, 'Devolución Actual', dbo.fnFechaSinHora(@Fecha), @Fecha, @UEN, @Proyecto, @Usuario, 'SINAFECTAR', 
       --              'COMS', @Mov, @MovID, @Moneda, @TipoCambio)

       --    SELECT @IDGenerado = @@IDENTITY, @Renglon = 2048.0
          
       --    DECLARE cr_Detalle CURSOR FOR
       --    SELECT ClavePresupuestal, SUM(((Costo * (Cantidad-ISNULL(CantidadCancelada,0)))-(CASE WHEN DescuentoTipo='$' THEN DescuentoLinea ELSE ((Costo * (Cantidad-ISNULL(CantidadCancelada,0))) * (ISNULL(DescuentoLinea,0)/100)) END)) * (1 + ISNULL(Impuesto1,0)/100))
       --    FROM CompraD
       --    WHERE ID = @ID AND ClavePresupuestal IS NOT NULL
       --    GROUP BY ClavePresupuestal
          
       --    OPEN cr_Detalle 
       --    FETCH NEXT FROM cr_Detalle INTO @ClavePresupuestal, @Importe
       --    WHILE @@FETCH_STATUS = 0
       --    BEGIN
       --      IF YEAR(@FechaEmision) <= YEAR(@Fecha) AND MONTH(@FechaEmision) < MONTH(@Fecha)
       --      BEGIN
       --        IF @EstatusCompra = 'Recibido'
       --          INSERT INTO CPD(ID, ClavePresupuestal, Renglon, Comprometido2, Sobrante)
       --          VALUES(@IDGenerado, @ClavePresupuestal, @Renglon, @Importe * -1, @Importe)
       --        ELSE
       --        IF @EstatusCompra = 'Programado'
       --          INSERT INTO CPD(ID, ClavePresupuestal, Renglon, Devengado, Sobrante)
       --          VALUES(@IDGenerado, @ClavePresupuestal, @Renglon, @Importe * -1, @Importe)
       --        ELSE
       --        IF @EstatusCompra = 'Pagado'
       --          INSERT INTO CPD(ID, ClavePresupuestal, Renglon, Ejercido, Sobrante)
       --          VALUES(@IDGenerado, @ClavePresupuestal, @Renglon, @Importe * -1, @Importe)
       --      END
       --      ELSE
       --      BEGIN
       --        IF @EstatusCompra = 'Recibido'
       --          INSERT INTO CPD(ID, ClavePresupuestal, Renglon, Comprometido2, Sobrante) -- RemanenteDisponible)
       --          VALUES(@IDGenerado, @ClavePresupuestal, @Renglon, @Importe * -1, @Importe)
       --        ELSE
       --        IF @EstatusCompra = 'Programado'
       --          INSERT INTO CPD(ID, ClavePresupuestal, Renglon, Devengado, Sobrante) -- RemanenteDisponible)
       --          VALUES(@IDGenerado, @ClavePresupuestal, @Renglon, @Importe * -1, @Importe)
       --        ELSE
       --        IF @EstatusCompra = 'Pagado'
       --          INSERT INTO CPD(ID, ClavePresupuestal, Renglon, Ejercido, Sobrante) -- RemanenteDisponible)
       --          VALUES(@IDGenerado, @ClavePresupuestal, @Renglon, @Importe * -1, @Importe)
       --      END

       --      SET @Renglon = @Renglon + 2048.0
         
       --      FETCH NEXT FROM cr_Detalle INTO @ClavePresupuestal, @Importe
       --    END
       --    CLOSE cr_Detalle 
       --    DEALLOCATE cr_Detalle 
          
       --    EXEC spAfectar 'CP', @IDGenerado, 'AFECTAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT

       --    IF @Ok IS NULL
       --    BEGIN
       --      SELECT @DMov = Mov, @DMovID = MovID FROM CP WHERE ID = @IDGenerado
       --      EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, 'COMS', @ID, @Mov, @MovID, 'CP', @IDGenerado, @DMov, @DMovID, @Ok OUTPUT
       --    END

       --  END
       --END

        IF @ClaveAfec = 'COMS.CA' -- BEGM 20120601. Debe concluir la requisición de origen
        BEGIN
          SELECT @MovO = Origen, @MovIDO = OrigenID FROM Compra WHERE ID = @ID
          
          SELECT @ClaveReq = Clave FROM MovTipo WHERE Modulo = 'COMS' AND Mov = @MovO
          
          IF @ClaveReq = 'COMS.O' 
            UPDATE Compra SET Estatus = 'CONCLUIDO' FROM Compra WHERE Mov = @MovO AND MovID = @MovIDO
        END
      END
      
      IF @Modulo = 'COMS' AND @Accion = 'CANCELAR'
      BEGIN
        SELECT @ClaveAfec = mt.Clave
        FROM Compra c
        INNER JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'COMS'
        WHERE ID = @ID
        
        IF @ClaveAfec = 'COMS.CA' -- BEGM 20120601. Debe dejar en pendiente la requisición de origen
        BEGIN
          SELECT @MovO = Origen, @MovIDO = OrigenID FROM Compra WHERE ID = @ID
          
          SELECT @ClaveReq = Clave FROM MovTipo WHERE Modulo = 'COMS' AND Mov = @MovO
          
          IF @ClaveReq = 'COMS.O' 
            UPDATE Compra SET Estatus = 'PENDIENTE' FROM Compra WHERE Mov = @MovO AND MovID = @MovIDO
        END
        
      END
     
   ----------------------------------------------------------------------------------------
   ---------- C U E N T A S  P O R  P A G A R    C U E N T A S  P O R  P A G A R ----------
   ----------------------------------------------------------------------------------------
	 IF @Modulo = 'CXP'
     BEGIN
        SELECT @MovCxp = Mov, @MovIDCxp = MovID, @Prov = Proveedor, @Condicion = Condicion
        FROM Cxp
        WHERE ID = @ID

        IF @Accion = 'GENERAR'
        BEGIN
          UPDATE Cxp SET Condicion = @Condicion
          WHERE OrigenTipo = 'CXP' AND Origen = @MovCxp AND OrigenID = @MovIDCxp
                AND ID = (SELECT MAX(ID) FROM Cxp WHERE OrigenTipo = 'CXP' AND Origen = @MovCxp AND OrigenID = @MovIDCxp)
          
          SELECT @FechaEmision = FechaEmision
          FROM Cxp
          WHERE OrigenTipo = 'CXP' AND Origen = @MovCxp AND OrigenID = @MovIDCxp
                AND ID = (SELECT MAX(ID) FROM Cxp WHERE OrigenTipo = 'CXP' AND Origen = @MovCxp AND OrigenID = @MovIDCxp)
          
          EXEC spCalcularVencimiento @Modulo, @Empresa, @Prov, @Condicion, @FechaEmision, @VencimientoCDI OUTPUT, NULL, NULL
          
          UPDATE cxp SET Vencimiento = @VencimientoCDI
          WHERE OrigenTipo = 'CXP' AND Origen = @MovCxp AND OrigenID = @MovIDCxp
                AND ID = (SELECT MAX(ID) FROM Cxp WHERE OrigenTipo = 'CXP' AND Origen = @MovCxp AND OrigenID = @MovIDCxp)
        END
     END
   
   --------------------------------------------------------------------------
     --- CE Cancelacion de Solicitud Becas, apartir de un PreRegitro ---
     --------------------------------------------------------------------------  
   IF @Modulo = 'CE' AND @Accion IN ('CANCELAR')  
   BEGIN
       SELECT @IDSolicBeca = isnull(c2.CDIBecaAplicada,0)
	   FROM CE c
	   JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'CE' AND mt.Clave = 'CE.P'
	   JOIN CED c2 ON c.ID = c2.ID
	   WHERE c.ID = @ID
	   
	   IF @IDSolicBeca > 0
		   EXEC spAfectar 'CE', @IDSolicBeca, 'CANCELAR', @EnSilencio = 1, @Ok = @Ok OUTPUT, @OKRef = @OkRef OUTPUT
   END
   

    IF @Modulo = 'GAS' AND @Accion = 'CANCELAR'
    BEGIN
      SELECT @ClaveAfec = mt.Clave
      FROM Gasto g
      INNER JOIN MovTipo mt ON g.Mov = mt.Mov AND mt.Modulo = 'GAS'
      WHERE ID = @ID      
     
    END   
   
  RETURN
END
GO
