SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO


--CONTROL PRESUPUESTAL
IF NOT EXISTS(SELECT * FROM MovTipo WHERE Modulo = 'CP' AND Clave = 'CP.OP' AND Mov = 'Devolución Anterior') 
  INSERT MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) 
  VALUES ('CP', 310, 'Devolución Anterior', 'CP.OP', NULL, 'CP', 'Devolución Anterior')
GO    

IF NOT EXISTS(SELECT * FROM MovTipo WHERE Modulo = 'CP' AND Clave = 'CP.OP' AND Mov = 'Devolución Actual') 
  INSERT MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) 
  VALUES ('CP', 320, 'Devolución Actual', 'CP.OP', NULL, 'CP', 'Devolución Actual')
GO   


/**************** CDIxpCompraDAsignar ****************/
IF EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID('dbo.CDIxpCompraDAsignar') AND type = 'P') 
  DROP PROCEDURE dbo.CDIxpCompraDAsignar
GO

CREATE PROCEDURE CDIxpCompraDAsignar
        @Estacion	int,
		    @ID		int
AS 
BEGIN
  DECLARE @Mov			char(20),
    @MovID			varchar(20),
    @Renglon			float,
    @RenglonID			int,
    @LModulo			char(5),
    @LID			int,
    @LRenglon			float,
    @LRenglonSub		int,
    @Articulo			char(20),
    @SubCuenta			varchar(50),
    @Costo			float,
    @ContUso			char(20),
    @RenglonTipo		char(1),
    @Almacen			char(10),
    @Proveedor			char(10),
    @Cantidad			float,
    @CantidadInventario		float,
    @Unidad			varchar(50),
    @ClavePresupuestal varchar(50)

  SELECT @Renglon = 0.0, @RenglonID = 0, @Proveedor = NULL, @Mov = NULL, @MovID = NULL

  BEGIN TRANSACTION
    DECLARE crLista CURSOR FOR
    SELECT Modulo, ID, Renglon, RenglonSub
    FROM ListaIDRenglon
    WHERE Estacion = @Estacion
    ORDER BY IDInterno

    OPEN crLista
    FETCH NEXT FROM crLista INTO @LModulo, @LID, @LRenglon, @LRenglonSub
    WHILE @@FETCH_STATUS <> -1 
    BEGIN
      IF @@FETCH_STATUS <> -2 
      BEGIN
        SELECT @Articulo = d.Articulo, @ClavePresupuestal = d.ClavePresupuestal, @Almacen = d.Almacen
        FROM CompraD d
        WHERE d.ID = @LID AND d.Renglon = @LRenglon AND d.RenglonSub = @LRenglonSub

        SELECT @Renglon = @Renglon + 2048.0, @RenglonID = @RenglonID + 1

        UPDATE CompraD SET ClavePresupuestal = @ClavePresupuestal 
        WHERE ID = @ID AND Renglon = @Renglon AND RenglonID = @RenglonId AND Articulo = @Articulo
        
      END
      FETCH NEXT FROM crLista INTO @LModulo, @LID, @LRenglon, @LRenglonSub
    END -- While
    CLOSE crLista
    DEALLOCATE crLista

    DELETE ListaIDRenglon WHERE Estacion = @Estacion
  COMMIT TRANSACTION
  RETURN
END
GO

 

