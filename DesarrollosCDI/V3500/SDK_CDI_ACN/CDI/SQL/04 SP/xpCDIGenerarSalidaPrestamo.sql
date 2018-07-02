SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

IF EXISTS(SELECT * FROM sysobjects WHERE type ='p' AND name = 'xpCDIGenerarSalidaPrestamo') DROP PROCEDURE xpCDIGenerarSalidaPrestamo
GO  
CREATE PROCEDURE xpCDIGenerarSalidaPrestamo 
            @ID                     int,
            @Empresa                VARCHAR(5),
            @Accion                 VARCHAR(20), 
            @Sucursal               int,
            @Modulo                 varchar(10),
            @Mov                    varchar(20),
            @MovID                  varchar(20),
            @Usuario                varchar(10)   
AS     
BEGIN    
 DECLARE 
 	        @GenerarID              int,    
            @Moneda                 char(10),    
            @TipoCambio             FLOAT,
            @Concepto               varchar(50),    
            @Referencia             varchar(50),    
            @Almacen                char(20),    
            @AlmacenDestino         char(20),    
            @GenerarMov             varchar(20),    
            @GenerarMovID           varchar(20),    
            @MovTransferencia       varchar(20),
            @Agente                 varchar(20),
            
            @FechaHoy               DATETIME,
            
            @Renglon                float,    
            @RenglonID              INT,
            @RenglonTipo            VARCHAR(1),
            @Articulo               varchar(20),    
            @SubCuenta              varchar(20),    
            @Unidad                 varchar(50),        
            @Costo                  MONEY,
            @RenglonSub             int,
            @Cantidad               FLOAT,    
            
            @Ok                     int,
            @OkRef                  VARCHAR(255)
    
  SELECT @Moneda        = a.Moneda,   
         @TipoCambio    = a.TipoCambio, 
         @Concepto      = a.Concepto,    
         @Referencia    = @Mov + ' ' + @MovID,    
         @Almacen       = a.AlmacenDestino,
         @Agente        = a.Agente
    FROM Inv a    
   WHERE ID = @ID 
      
  SELECT @GenerarMov = ecm.InvSalidaDiversa FROM EmpresaCfgMov ecm WHERE ecm.Empresa = @Empresa
--  SELECT @Concepto = 'Entrada Diversa'       
  SELECT @FechaHoy = GETDATE()
  
  EXEC spExtraerFecha @FechaHoy OUTPUT
    
  BEGIN TRANSACTION
    
  IF @Accion = 'AFECTAR'
  BEGIN
    INSERT INTO Inv    
      (Empresa, Mov, FechaEmision, Moneda, TipoCambio, Concepto, Referencia, Estatus, Directo, Almacen, Largo, Vencimiento,     
       Usuario, UltimoCambio, Origen, OrigenID, FechaOrigen, Sucursal, SucursalOrigen, VerLote, Agente, SubModulo, SucursalDestino)    
    VALUES    
      (@Empresa, @GenerarMov, @FechaHoy, @Moneda, @TipoCambio, @Concepto, @Referencia, 'SINAFECTAR', 1, @Almacen, 0, @FechaHoy, 
       @Usuario, GETDATE(), @Mov, @MovID, @FechaHoy, @Sucursal, @Sucursal, 1, @Agente, 'INV', @Sucursal)    
    SELECT @GenerarID = @@IDENTITY    
    
    DECLARE crDetalle CURSOR LOCAL FOR
    SELECT Renglon, RenglonSub, RenglonID, RenglonTipo, Articulo, SubCuenta, Costo, CantidadA, Unidad
      FROM InvD WHERE ID = @ID AND CantidadA > 0

    OPEN crDetalle
    FETCH NEXT FROM crDetalle INTO @Renglon, @RenglonSub, @RenglonID, @RenglonTipo, @Articulo, @SubCuenta, @Costo, @Cantidad, @Unidad

    WHILE @@FETCH_STATUS = 0
    BEGIN
      INSERT INTO InvD    
        (ID, Renglon, RenglonSub, RenglonID, Almacen, Articulo, SubCuenta, Cantidad, Costo, Unidad, Factor, CantidadInventario, FechaRequerida,      
         Sucursal, SucursalOrigen)
      VALUES    
       (@GenerarID, @Renglon, @RenglonSub, @RenglonID, @Almacen, @Articulo, @SubCuenta, @Cantidad, @Costo, @Unidad, 1.0, @Cantidad, @FechaHoy,     
        @Sucursal, @Sucursal)    
      
       FETCH NEXT FROM crDetalle INTO @Renglon, @RenglonSub, @RenglonID, @RenglonTipo, @Articulo, @SubCuenta, @Costo, @Cantidad, @Unidad
     END     
  
  
    EXEC spAfectar 'INV', @GenerarID, @Accion, 'Todo', NULL, @Usuario ,0 , 1, @Ok OUTPUT, @OkRef OUTPUT, @Conexion = 1    
    
    SELECT @GenerarMovID = MovID FROM Inv WHERE ID = @GenerarID
    
    IF @Ok IS NULL
      EXEC spMovFlujo @Sucursal, 'AFECTAR', @Empresa, @Modulo, @ID, @Mov, @MovID, 'INV', @GenerarID, @GenerarMov, @GenerarMovID, @Ok OUTPUT
      
    IF @Ok IS NULL 
      UPDATE Inv SET Estatus = 'CONCLUIDO' WHERE ID = @ID

  END
  ELSE IF @Accion = 'CANCELAR'
  BEGIN
    SELECT @GenerarID = ID FROM Inv i WHERE i.Origen = @Mov AND i.OrigenID = @MovID
    
    IF @GenerarID IS NOT NULL
      EXEC spAfectar 'INV', @GenerarID, @Accion, 'Todo', NULL, @Usuario ,0 , 1, @Ok OUTPUT, @OkRef OUTPUT, @Conexion = 1    
  END

  IF @Ok IS NULL
  BEGIN
  	COMMIT TRANSACTION
    SELECT 'Proceso Generado con exito'
  END
  ELSE
  BEGIN
    ROLLBACK TRAN
    SELECT ml.Descripcion + '<BR>' + ISNULL(@OkRef, '') FROM MensajeLista ml WHERE ml.Mensaje = @Ok
  END   

  RETURN    
END  
GO