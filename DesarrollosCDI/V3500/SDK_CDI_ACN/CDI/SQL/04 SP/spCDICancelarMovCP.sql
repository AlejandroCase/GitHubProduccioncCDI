/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
/**************** spCDICancelarMovCP ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICancelarMovCP') and type = 'P') drop procedure dbo.spCDICancelarMovCP
GO             
CREATE PROCEDURE dbo.spCDICancelarMovCP
                @ID     INT,                 
                @Modulo VARCHAR(5),
	              @Ok     INT          OUTPUT,
	              @OkRef  VARCHAR(255) OUTPUT  
AS 
BEGIN  
  DECLARE
    @Origen            VARCHAR(20),
    @OrigenID          VARCHAR(20),
    @IDCP              INT,
    @MovGenera         VARCHAR(20),
    @FechaConH         DATETIME,
    @FechaSinH         DATETIME,
    @IDNuevo           INT,
    @Renglon           FLOAT,
    @RenglonC          FLOAT,
    @ClavePresupuestal VARCHAR(50),
    @Importe           MONEY,
    @TipoPeriodo       VARCHAR(10),
    @Periodo           INT,
    @PeriodoMov        INT,
    @PeriodoReal       INT,
    @Sucursal          INT,
    @SucursalOrigen    INT,
    @Ejercicio         INT,
    @Usuario           VARCHAR(10)
    
    SELECT @FechaSinH = dbo.fnFechaSinHora(GETDATE()), @FechaConH = GETDATE(), @Renglon = 2048, @PeriodoReal = MONTH(GETDATE())

  IF @Modulo = 'COMS'
  BEGIN
    SELECT @Origen = Mov, @OrigenID = MovID, @PeriodoMov = Periodo FROM Compra WHERE ID = @ID
    SELECT @IDCP = ID, @Periodo = Periodo, @Sucursal= Sucursal, @SucursalOrigen = SucursalOrigen, @Ejercicio = Ejercicio, @Usuario = Usuario 
      FROM CP 
     WHERE OrigenTipo = 'COMS' AND Origen = @Origen AND OrigenID = @OrigenID
    SELECT @MovGenera = MovDestino FROM CDICFGMovCP WHERE MovOrigen =  @Origen
    SELECT @TipoPeriodo = CDICalendarizacion FROM MovTipo WHERE Modulo = 'COMS' AND Mov = @Origen
    IF @TipoPeriodo = 'Mes 13' OR @PeriodoMov < @PeriodoReal
    BEGIN
      IF ISNULL(@MovGenera, '') <> '' 
      BEGIN
        INSERT INTO CP (Empresa, Sucursal, Mov,        FechaEmision, UltimoCambio, Proyecto, Usuario, Referencia,            Estatus,      Moneda, TipoCambio)
             SELECT     Empresa, Sucursal, @MovGenera, @FechaSinH,   @FechaConH,   Proyecto, Usuario, @Origen+' '+@OrigenID, 'SINAFECTAR', Moneda, TipoCambio
               FROM CP     
              WHERE ID = @IDCP
        SELECT @IDNuevo = SCOPE_IDENTITY()
        
        DECLARE crDatos CURSOR LOCAL FOR
        SELECT Renglon, ClavePresupuestal, Comprometido 
        FROM CPD 
        WHERE ID = @IDCP       
        OPEN crDatos
        FETCH NEXT FROM crDatos INTO @RenglonC, @ClavePresupuestal, @Importe
        WHILE @@FETCH_STATUS <> -1 
        BEGIN
          IF @@FETCH_STATUS <> -2 
          BEGIN
            INSERT INTO CPD ( ID,       ClavePresupuestal,  Renglon,  Tipo,        Importe, Sucursal,  SucursalOrigen)
                 SELECT       @IDNuevo, @ClavePresupuestal, @Renglon, 'Reduccion', @Importe, @Sucursal, @SucursalOrigen 
            INSERT INTO CPCal ( ID,       ClavePresupuestal,  Tipo,        Ejercicio,  Periodo,  Importe )
                 SELECT         @IDNuevo, @ClavePresupuestal, 'Reduccion', @Ejercicio, @Periodo, @Importe
                 
                 SELECT @Renglon = @Renglon + 2048
                                  
            INSERT INTO CPD ( ID,       ClavePresupuestal,  Renglon,  Tipo,        Importe, Sucursal,  SucursalOrigen)
                 SELECT       @IDNuevo, @ClavePresupuestal, @Renglon, 'Ampliacion', @Importe, @Sucursal, @SucursalOrigen
            INSERT INTO CPCal ( ID,       ClavePresupuestal,  Tipo,    Ejercicio,  Periodo,  Importe )
                 SELECT    @IDNuevo, @ClavePresupuestal, 'Ampliacion', @Ejercicio, 13, @Importe

                 SELECT @Renglon = @Renglon + 2048
                 
            FETCH NEXT FROM crDatos INTO @RenglonC, @ClavePresupuestal, @Importe
          END
        END
        CLOSE crDatos
        DEALLOCATE crDatos
        EXEC spAfectar 'CP', @IDNuevo, 'AFECTAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
      END
    END
  END


  IF @Modulo = 'GAS'
  BEGIN
    SELECT @Origen = Mov, @OrigenID = MovID, @PeriodoMov = Periodo FROM Gasto WHERE ID = @ID
    SELECT @IDCP = ID, @Periodo = Periodo, @Sucursal= Sucursal, @SucursalOrigen = SucursalOrigen, @Ejercicio = Ejercicio, @Usuario = Usuario 
      FROM CP 
     WHERE OrigenTipo = 'GAS' AND Origen = @Origen AND OrigenID = @OrigenID
    SELECT @MovGenera = MovDestino FROM CDICFGMovCP WHERE MovOrigen =  @Origen
    SELECT @TipoPeriodo = CDICalendarizacion FROM MovTipo WHERE Modulo = 'GAS' AND Mov = @Origen
    IF @TipoPeriodo = 'Mes 13' OR @PeriodoMov < @PeriodoReal
    BEGIN
      IF ISNULL(@MovGenera, '') <> '' 
      BEGIN
        INSERT INTO CP (Empresa, Sucursal, Mov,        FechaEmision, UltimoCambio, Proyecto, Usuario, Referencia,            Estatus,      Moneda, TipoCambio)
             SELECT     Empresa, Sucursal, @MovGenera, @FechaSinH,   @FechaConH,   Proyecto, Usuario, @Origen+' '+@OrigenID, 'SINAFECTAR', Moneda, TipoCambio
               FROM CP     
              WHERE ID = @IDCP
        SELECT @IDNuevo = SCOPE_IDENTITY()
        
        DECLARE crDatos CURSOR LOCAL FOR
        SELECT Renglon, ClavePresupuestal, Comprometido 
        FROM CPD 
        WHERE ID = @IDCP       
        OPEN crDatos
        FETCH NEXT FROM crDatos INTO @RenglonC, @ClavePresupuestal, @Importe
        WHILE @@FETCH_STATUS <> -1 
        BEGIN
          IF @@FETCH_STATUS <> -2 
          BEGIN
            INSERT INTO CPD ( ID,       ClavePresupuestal,  Renglon,  Tipo,        Importe, Sucursal,  SucursalOrigen)
                 SELECT       @IDNuevo, @ClavePresupuestal, @Renglon, 'Reduccion', @Importe, @Sucursal, @SucursalOrigen 
            INSERT INTO CPCal ( ID,       ClavePresupuestal,  Tipo,        Ejercicio,  Periodo,  Importe )
                 SELECT         @IDNuevo, @ClavePresupuestal, 'Reduccion', @Ejercicio, @Periodo, @Importe
                 
                 SELECT @Renglon = @Renglon + 2048
                                  
            INSERT INTO CPD ( ID,       ClavePresupuestal,  Renglon,  Tipo,        Importe, Sucursal,  SucursalOrigen)
                 SELECT       @IDNuevo, @ClavePresupuestal, @Renglon, 'Ampliacion', @Importe, @Sucursal, @SucursalOrigen
            INSERT INTO CPCal ( ID,       ClavePresupuestal,  Tipo,    Ejercicio,  Periodo,  Importe )
                 SELECT    @IDNuevo, @ClavePresupuestal, 'Ampliacion', @Ejercicio, 13, @Importe

                 SELECT @Renglon = @Renglon + 2048
                 
            FETCH NEXT FROM crDatos INTO @RenglonC, @ClavePresupuestal, @Importe
          END
        END
        CLOSE crDatos
        DEALLOCATE crDatos
        EXEC spAfectar 'CP', @IDNuevo, 'AFECTAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
      END
    END
  END

RETURN 
END 
GO

/**************** spCDIBonificacionCP ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIBonificacionCP') and type = 'P') drop procedure dbo.spCDIBonificacionCP
GO             
CREATE PROCEDURE dbo.spCDIBonificacionCP
                @ID     INT,                 
                @Modulo VARCHAR(5),
	              @Ok     INT          OUTPUT,
	              @OkRef  VARCHAR(255) OUTPUT  
AS 
BEGIN  
  DECLARE
    @Origen            VARCHAR(20),
    @OrigenID          VARCHAR(20),
    @IDCP              INT,
    @MovGenera         VARCHAR(20),
    @Proyecto          VARCHAR(50),
    @FechaConH         DATETIME,
    @FechaSinH         DATETIME,
    @IDNuevo           INT,
    @Renglon           FLOAT,
    @RenglonC          FLOAT,
    @ClavePresupuestal VARCHAR(50),
    @Importe           MONEY,
    @TipoPeriodo       VARCHAR(10),
    @Periodo           INT,
    @PeriodoMov        INT,
    @PeriodoReal       INT,
    @Sucursal          INT,
    @SucursalOrigen    INT,
    @Ejercicio         INT,
    @Usuario           VARCHAR(10)
    
    SELECT @FechaSinH = dbo.fnFechaSinHora(GETDATE()), @FechaConH = GETDATE(), @Renglon = 2048, @PeriodoReal = MONTH(GETDATE())

  IF @Modulo = 'COMS'
  BEGIN
    SELECT @Origen = Mov, @OrigenID = MovID, @Sucursal = Sucursal, @Ejercicio = Ejercicio, @SucursalOrigen = SucursalOrigen, @PeriodoMov = Periodo 
      FROM Compra 
     WHERE ID = @ID
    SELECT @MovGenera = MovDestino FROM CDICFGMovCP WHERE MovOrigen =  @Origen
    SELECT @TipoPeriodo = CDICalendarizacion FROM MovTipo WHERE Modulo = 'COMS' AND Mov = @Origen
    IF ISNULL(@MovGenera, '') <> '' 
    BEGIN
      INSERT INTO CP (Empresa, Sucursal, Mov,        FechaEmision, UltimoCambio, Proyecto, Usuario, Referencia,            Estatus,      Moneda, TipoCambio)
           SELECT     Empresa, Sucursal, @MovGenera, @FechaSinH,   @FechaConH,   Proyecto, Usuario, @Origen+' '+@OrigenID, 'SINAFECTAR', Moneda, TipoCambio
             FROM Compra     
            WHERE ID = @ID
      SELECT @IDNuevo = SCOPE_IDENTITY()
      
      DECLARE crDatos CURSOR LOCAL FOR
       SELECT ClavePresupuestal, SUM(Cantidad * Costo) 
         FROM CompraD 
        WHERE ID = @ID          
        GROUP BY ClavePresupuestal
      OPEN crDatos
      FETCH NEXT FROM crDatos INTO @ClavePresupuestal, @Importe
      WHILE @@FETCH_STATUS <> -1 
      BEGIN
        IF @@FETCH_STATUS <> -2 
        BEGIN
          IF @TipoPeriodo = 'Mes 13'
            SELECT @Periodo = 13
          ELSE  
          IF @TipoPeriodo = 'Mismo mes'
            SELECT @Periodo = @PeriodoReal
                                
          INSERT INTO CPD ( ID,       ClavePresupuestal,  Renglon,  Tipo,        Importe, Sucursal,  SucursalOrigen)
               SELECT       @IDNuevo, @ClavePresupuestal, @Renglon, 'Ampliacion', @Importe, @Sucursal, @SucursalOrigen
          INSERT INTO CPCal ( ID,       ClavePresupuestal,  Tipo,         Ejercicio,  Periodo,  Importe )
               SELECT         @IDNuevo, @ClavePresupuestal, 'Ampliacion', @Ejercicio, @Periodo, @Importe
               SELECT @Renglon = @Renglon + 2048
               
          FETCH NEXT FROM crDatos INTO @ClavePresupuestal, @Importe
        END
      END
      CLOSE crDatos
      DEALLOCATE crDatos
      
      EXEC spAfectar 'CP', @IDNuevo, 'AFECTAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
    END

  END


  IF @Modulo = 'GAS'
  BEGIN
    SELECT @Origen = Mov, @OrigenID = MovID, @Sucursal = Sucursal, @Ejercicio = Ejercicio, @SucursalOrigen = SucursalOrigen, @PeriodoMov = Periodo 
      FROM Gasto 
     WHERE ID = @ID
    SELECT @MovGenera = MovDestino FROM CDICFGMovCP WHERE MovOrigen =  @Origen
    SELECT @TipoPeriodo = CDICalendarizacion FROM MovTipo WHERE Modulo = 'GAS' AND Mov = @Origen
    IF ISNULL(@MovGenera, '') <> '' 
    BEGIN
      INSERT INTO CP (Empresa, Sucursal, Mov,        FechaEmision, UltimoCambio, Proyecto, Usuario, Referencia,            Estatus,      Moneda, TipoCambio)
           SELECT     Empresa, Sucursal, @MovGenera, @FechaSinH,   @FechaConH,   Proyecto, Usuario, @Origen+' '+@OrigenID, 'SINAFECTAR', Moneda, TipoCambio
             FROM Gasto     
            WHERE ID = @ID
      SELECT @IDNuevo = SCOPE_IDENTITY()
      
      DECLARE crDatos CURSOR LOCAL FOR
       SELECT ClavePresupuestal, SUM(Importe) 
         FROM GastoD 
        WHERE ID = @ID          
        GROUP BY ClavePresupuestal, Importe
      OPEN crDatos
      FETCH NEXT FROM crDatos INTO @ClavePresupuestal, @Importe
      WHILE @@FETCH_STATUS <> -1 
      BEGIN
        IF @@FETCH_STATUS <> -2 
        BEGIN
          IF @TipoPeriodo = 'Mes 13'
            SELECT @Periodo = 13
          ELSE  
          IF @TipoPeriodo = 'Mismo mes'
            SELECT @Periodo = @PeriodoReal
                                            
          INSERT INTO CPD ( ID,       ClavePresupuestal,  Renglon,  Tipo,        Importe, Sucursal,  SucursalOrigen)
               SELECT       @IDNuevo, @ClavePresupuestal, @Renglon, 'Ampliacion', @Importe, @Sucursal, @SucursalOrigen
          INSERT INTO CPCal ( ID,       ClavePresupuestal,  Tipo,         Ejercicio,  Periodo,  Importe )
               SELECT         @IDNuevo, @ClavePresupuestal, 'Ampliacion', @Ejercicio, @Periodo, @Importe
               SELECT @Renglon = @Renglon + 2048
               
          FETCH NEXT FROM crDatos INTO @ClavePresupuestal, @Importe
        END
      END
      CLOSE crDatos
      DEALLOCATE crDatos
      
      EXEC spAfectar 'CP', @IDNuevo, 'AFECTAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
    END
  END
RETURN 
END 
GO
