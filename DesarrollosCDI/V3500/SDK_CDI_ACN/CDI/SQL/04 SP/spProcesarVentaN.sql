/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spProcesarVentaN ****************/
if exists (select * from sysobjects where id = object_id('dbo.spProcesarVentaN') and type = 'P') drop procedure dbo.spProcesarVentaN
GO             
CREATE PROCEDURE spProcesarVentaN
                    @Estacion		int,
		    @Empresa		char(5),
		    @FacturaMov		char(20),
		    @FechaEmision	datetime,
		    @Usuario		char(10),
		    @CteCNO		char(10) 	= NULL,
		    @EnSilencio		bit	 	= 0,
		    @Ok			int	 	= NULL	OUTPUT,
		    @OkRef		varchar(255)	= NULL	OUTPUT

--//WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
    @TipoCosteo			varchar(20),
    @VentaMultiAlmacen		bit,
    @FacturaID			int,
    @FacturaFechaEmision	datetime,
    @FacturaMovID		varchar(20),
    @NotaID			int,
    @AjusteID			int,
    @Cuantas			int,
    @CuantasFacturas		int,
    @Cliente			char(10),
    @EnviarA			int,
    @ClienteVMOS		char(10),
    @VentaEstatus		char(15),
    @EstatusVMOS		char(15),
    @AlmacenEncabezado		char(10),
    @Almacen			char(10),
    @Posicion			char(10),
    @ArtTipo			char(20),
    @Moneda			char(10),
    @TipoCambio			float,
    @Concepto			varchar(50),
    @Articulo			char(20),
    @SubCuenta			varchar(50),
    @Unidad			varchar(50),
    @Factor			float,
    @Cantidad			float,
    @CantidadInventario		float,
    @Disponible			float,
    @MonedaCosto		char(10),
    @Costo			float,
    @Precio        		float,
    @PrecioNeto        		float,
    @Proveedor			char(10),
    @DescuentoTipo		char(1),
    @DescuentoLinea		float,
    @DescuentoGlobal		float,
    @SobrePrecio		float,
    @Impuesto1			float,
    @Impuesto2			float,
    @Impuesto3			money,
    @Renglon			float,
    @RenglonID			int,
    @FactorCosto		float,
    @TipoCambioCosto		float,
    @ImporteTotal		money,
    @Agente			char(10),
    @UEN			int,
    @CfgCosteoNivelSubCuenta 	bit,
    @Sucursal			int,
    @AjusteMov			char(20),
    @AjusteMovID		varchar(20),
    @Condicion			varchar(50),
    @FechaRegistro		datetime,
    @LeyendaEstatus		varchar(50),
    @CerrarSucursalAuto		bit,
    @CfgCosteoSeries		bit,
    @CfgCosteoLotes		bit,
    @ArtCostoIdentificado	bit,
    @SeriesLotesAutoOrden	varchar(20), 
    @AsignarConsecutivo		bit,
    @Accion			char(20),
    @LotesFijos			bit,
    @Lote			varchar(50),
    @RenglonTipo		char(1),
	@PrecioMonedaD		varchar(10),
	@PrecioTipoCambioD	float,
--JGD 19Abril2011. Ticket 4390 Uso de Variables para pasar la Información de las Ofertas aplicadas a las Notas, hacia la Factura generada
    @CantidadObsequio	float,
    @OfertaID	int,
	@PrecioSugerido	float,
	@DescuentoImporte	money,
	@Puntos	float,
	@Comision	float
--Fin JGD 19Abril2011. Ticket 4390

  IF NOT EXISTS(SELECT * FROM ListaID WHERE Estacion = @Estacion) OR ((SELECT Clave FROM MovTipo WHERE Modulo = 'VTAS' AND Mov = @FacturaMov) <> 'VTAS.F')
  BEGIN
    SELECT NULL
    RETURN
  END

  SELECT @EnviarA = NULL, @NotaID = NULL, @AjusteID = NULL, @ImporteTotal = 0.0, @Condicion = NULL, @FacturaMovID = NULL,
         @FechaRegistro = GETDATE(), @LeyendaEstatus = '', @Agente = NULL, @UEN = NULL, @Proveedor = NULL, @CuantasFacturas = 0

  SELECT @AjusteMov = InvAjuste
    FROM EmpresaCfgMov
   WHERE Empresa = @Empresa

  SELECT @CfgCosteoNivelSubCuenta = CosteoNivelSubCuenta,
         @ClienteVMOS             = NULLIF(RTRIM(ClienteFacturaVMOS), ''),
         @EstatusVMOS             = ISNULL(NULLIF(RTRIM(EstatusFacturaVMOS), ''), 'BORRADOR'),
         @AsignarConsecutivo      = ISNULL(AsignarConsecutivoFacturaVMOS, 0),
         @TipoCosteo		  = ISNULL(NULLIF(RTRIM(UPPER(TipoCosteo)), ''), 'PROMEDIO'),
         @CfgCosteoSeries	  = ISNULL(CosteoSeries, 0),
         @CfgCosteoLotes	  = ISNULL(CosteoLotes, 0),
	 @SeriesLotesAutoOrden    = UPPER(SeriesLotesAutoOrden)
    FROM EmpresaCfg
   WHERE Empresa = @Empresa

  --IF @CteCNO IS NULL SELECT @EstatusVMOS = 'BORRADOR'

  SELECT @VentaEstatus = @EstatusVMOS
  IF @EstatusVMOS = 'CONCLUIDO'  SELECT @VentaEstatus = 'BORRADOR'

  IF @VentaEstatus = 'BORRADOR'   SELECT @LeyendaEstatus = ' (Borrador)'      ELSE
  IF @VentaEstatus = 'CONFIRMAR'  SELECT @LeyendaEstatus = ' (por Confirmar)' ELSE
  IF @VentaEstatus = 'SINAFECTAR' SELECT @LeyendaEstatus = ' (Sin Afectar)'  

  SELECT @VentaMultiAlmacen = VentaMultiAlmacen
    FROM EmpresaCfg2
   WHERE Empresa = @Empresa

  SELECT @Sucursal = Sucursal FROM UsuarioSucursal WHERE Usuario = @Usuario
  SELECT @CerrarSucursalAuto = CerrarSucursalAuto FROM EmpresaGral WHERE Empresa = @Empresa

  EXEC spExtraerFecha @FechaEmision OUTPUT

  DECLARE crLista CURSOR 
      FOR SELECT ID FROM ListaID WHERE Estacion = @Estacion
  OPEN crLista
  FETCH NEXT FROM crLista INTO @NotaID
  CLOSE crLista
  DEALLOCATE crLista
  IF @NotaID IS NULL 
  BEGIN
    SELECT @Ok = 10160
    IF @EnSilencio = 1 RETURN
  END

  IF EXISTS(SELECT * FROM Inv WHERE Empresa = @Empresa AND Estatus = 'CONFIRMAR' AND OrigenTipo = 'VMOS' AND Sucursal = @Sucursal)
  BEGIN
    SELECT @Ok = 10170
    IF @EnSilencio = 1 RETURN
  END

  SELECT @ImporteTotal = SUM(ISNULL(Importe, 0.0) + ISNULL(Impuestos, 0.0))
    FROM Venta v, ListaID l
   WHERE v.ID = l.ID
     AND l.Estacion = @Estacion

  IF @ImporteTotal < 0.0
  BEGIN
    SELECT @Ok = 10180
    IF @EnSilencio = 1 RETURN
  END

  SELECT @AlmacenEncabezado = Almacen, 
         @Cliente = ISNULL(@CteCNO, ISNULL(@ClienteVMOS, Cliente)), 
         @Moneda = Moneda, 
         @TipoCambio = TipoCambio, 
         @Concepto = Concepto 
    FROM Venta 
   WHERE ID = @NotaID

  IF @CteCNO IS NOT NULL
  BEGIN
    SELECT @Cliente = ISNULL(NULLIF(RTRIM(FacturarCte), ''), Cliente),
           @EnviarA = FacturarCteEnviarA,
           @Condicion = Condicion,	
           @Agente = Agente
      FROM Cte
     WHERE Cliente = @CteCNO
     SELECT @UEN = UEN FROM Usuario WHERE Usuario = @Usuario
  END

  CREATE TABLE #Facturas (ID int NULL, FechaEmision datetime NULL)
  BEGIN TRANSACTION
    DECLARE crFechaEmision CURSOR LOCAL FOR
     SELECT DISTINCT FechaEmision
       FROM Venta v, ListaID l
      WHERE l.Estacion = @Estacion AND v.ID = l.ID
    OPEN crFechaEmision
    FETCH NEXT FROM crFechaEmision INTO @FacturaFechaEmision
    WHILE @@FETCH_STATUS = 0 AND @Ok IS NULL
    BEGIN

      INSERT Venta (Sucursal,  SucursalOrigen, Empresa,  Mov,         FechaEmision,         Moneda,  TipoCambio,  Almacen,            Cliente,  EnviarA,  Condicion,  Concepto,  Usuario,  Estatus,       OrigenTipo, Agente,  UEN, FormaPagoTipo)--Cambio CFD Flexible
            VALUES (@Sucursal, @Sucursal,      @Empresa, @FacturaMov, @FacturaFechaEmision, @Moneda, @TipoCambio, @AlmacenEncabezado, @Cliente, @EnviarA, @Condicion, @Concepto, @Usuario, @VentaEstatus, 'VMOS',     @Agente, @UEN, 'Varios')--Cambio CFD Flexible
      SELECT @FacturaID = SCOPE_IDENTITY()

      SELECT @Renglon = 0, @RenglonID = 0
      -- Devoluciones
      DECLARE crNotas CURSOR LOCAL
          FOR SELECT d.Almacen, d.Posicion, d.Articulo, d.SubCuenta, d.RenglonTipo, d.Unidad, ISNULL(ROUND(d.Impuesto1, 4),0.0), ISNULL(ROUND(d.Impuesto2, 4),0.0), ISNULL(ROUND(d.Impuesto3, 4),0.0), SUM(d.Cantidad), SUM(d.CantidadInventario), ISNULL(d.DescuentoTipo,''), ISNULL(d.DescuentoLinea,0.0), ISNULL(d.Precio,0.0), ISNULL(v.DescuentoGlobal,0.0), ISNULL(v.SobrePrecio,0.0), Art.MonedaCosto, Art.Tipo, Art.CostoIdentificado, d.PrecioMoneda, d.PrecioTipoCambio, d.CantidadObsequio, d.OfertaID, d.PrecioSugerido, d.DescuentoImporte, d.Puntos, d.Comision --Cambio CFD Flexible
                FROM Venta v, VentaD d, ListaID l, Art
               WHERE v.ID = d.ID AND d.ID = l.ID 
                 AND v.FechaEmision = @FacturaFechaEmision
                 AND l.Estacion = @Estacion
                 AND d.Cantidad < 0.0
                 AND Art.Articulo = d.Articulo
               GROUP BY d.Almacen, d.Posicion, d.Articulo, Art.MonedaCosto, Art.Tipo, Art.CostoIdentificado, d.SubCuenta, d.RenglonTipo, d.Unidad, ROUND(d.Impuesto1, 4), ROUND(d.Impuesto2, 4), ROUND(d.Impuesto3, 4), d.DescuentoTipo, d.DescuentoLinea, d.Precio, v.DescuentoGlobal, v.SobrePrecio, d.PrecioMoneda, d.PrecioTipoCambio, d.CantidadObsequio, d.OfertaID, d.PrecioSugerido, d.DescuentoImporte, d.Puntos, d.Comision
               ORDER BY d.Almacen, d.Posicion, d.Articulo, Art.MonedaCosto, Art.Tipo, Art.CostoIdentificado, d.SubCuenta, d.RenglonTipo, d.Unidad, ROUND(d.Impuesto1, 4), ROUND(d.Impuesto2, 4), ROUND(d.Impuesto3, 4), d.DescuentoTipo, d.DescuentoLinea, d.Precio, v.DescuentoGlobal, v.SobrePrecio, d.PrecioMoneda, d.PrecioTipoCambio, d.CantidadObsequio, d.OfertaID, d.PrecioSugerido, d.DescuentoImporte, d.Puntos, d.Comision

      OPEN crNotas
      FETCH NEXT FROM crNotas INTO @Almacen, @Posicion, @Articulo, @SubCuenta, @RenglonTipo, @Unidad, @Impuesto1, @Impuesto2, @Impuesto3, @Cantidad, @CantidadInventario, @DescuentoTipo, @DescuentoLinea, @Precio, @DescuentoGlobal, @SobrePrecio, @MonedaCosto, @ArtTipo, @ArtCostoIdentificado, @PrecioMonedaD, @PrecioTipoCambioD, @CantidadObsequio, @OfertaID, @PrecioSugerido, @DescuentoImporte, @Puntos, @Comision
      WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
      BEGIN
        IF @@FETCH_STATUS <> -2 
        BEGIN
          SELECT @PrecioNeto = dbo.fnSubTotal(@Precio, @DescuentoGlobal, @SobrePrecio)
          IF @VentaMultiAlmacen = 0 AND @Almacen <> @AlmacenEncabezado SELECT @Ok = 20860, @OkRef = @Almacen
          SELECT @Costo = NULL
          EXEC spVerCosto @Sucursal, @Empresa, @Proveedor, @Articulo, @SubCuenta, @Unidad, @TipoCosteo, @Moneda, @TipoCambio, @Costo OUTPUT, 0, @Precio = @PrecioNeto
          SELECT @Renglon = @Renglon + 2048, @RenglonID = @RenglonID + 1
          INSERT VentaD (Sucursal,  SucursalOrigen, ID,         Renglon, RenglonSub, RenglonID,  RenglonTipo,  Almacen,  Posicion,  Articulo,  SubCuenta,  Unidad,  Impuesto1,  Impuesto2,  Impuesto3,  Cantidad,  CantidadInventario,  DescuentoTipo,  DescuentoLinea,  Precio,      Costo,  UEN,  Agente, PrecioMoneda, PrecioTipoCambio, CantidadObsequio, OfertaID, PrecioSugerido, DescuentoImporte, Puntos, Comision)
                 VALUES (@Sucursal, @Sucursal,      @FacturaID, @Renglon,         0, @RenglonID, @RenglonTipo, @Almacen, @Posicion, @Articulo, @SubCuenta, @Unidad, @Impuesto1, @Impuesto2, @Impuesto3, @Cantidad, @CantidadInventario, @DescuentoTipo, @DescuentoLinea, @PrecioNeto, @Costo, @UEN, @Agente, @PrecioMonedaD, @PrecioTipoCambioD, @CantidadObsequio, @OfertaID, @PrecioSugerido, @DescuentoImporte, @Puntos, @Comision)

          IF (@ArtTipo IN ('SERIE', 'VIN') AND (@CfgCosteoSeries = 1 OR @ArtCostoIdentificado = 1)) OR (@ArtTipo IN ('LOTE', 'PARTIDA') AND (@CfgCosteoLotes = 1 OR @ArtCostoIdentificado = 1)) 
          BEGIN
            INSERT SerieLoteMov (Empresa,  Modulo, ID,         RenglonID,  Articulo,  SubCuenta,              SerieLote,   ArtCostoInv,   Cantidad,        CantidadAlterna,        Sucursal, Propiedades)
                          SELECT @Empresa, 'VTAS', @FacturaID, @RenglonID, @Articulo, ISNULL(@SubCuenta, ''), s.SerieLote, s.ArtCostoInv, SUM(s.Cantidad), SUM(s.CantidadAlterna), @Sucursal,ISNULL(s.Propiedades, '')
                            FROM SerieLoteMov s, Venta v, VentaD d, ListaID l, Art
                           WHERE v.ID = d.ID AND d.ID = l.ID 
                             AND v.FechaEmision = @FacturaFechaEmision
                             AND l.Estacion = @Estacion
                             AND d.Cantidad < 0.0
                             AND Art.Articulo = d.Articulo
                             AND s.Empresa = @Empresa AND s.Modulo = 'VTAS' AND s.ID = v.ID AND s.RenglonID = d.RenglonID AND s.Articulo = @Articulo AND ISNULL(s.SubCuenta, '') = ISNULL(@SubCuenta, '') 
                             AND d.Almacen = @Almacen AND ISNULL(d.Posicion, '') = ISNULL(@Posicion, '') AND d.Articulo = @Articulo AND Art.MonedaCosto = @MonedaCosto AND ISNULL(d.SubCuenta, '') = ISNULL(@SubCuenta, '') AND d.Unidad = @Unidad AND ISNULL(ROUND(d.Impuesto1, 4),0.0) = @Impuesto1 AND ISNULL(ROUND(d.Impuesto2, 4),0.0) = @Impuesto2 AND ISNULL(ROUND(d.Impuesto3, 4),0.0) = @Impuesto3 AND ISNULL(d.DescuentoTipo,'') = @DescuentoTipo AND ISNULL(d.DescuentoLinea,0.0) = @DescuentoLinea AND ISNULL(d.Precio,0.0) = @Precio AND ISNULL(ROUND(v.DescuentoGlobal, 10),0.0) = ISNULL(ROUND(@DescuentoGlobal, 10),0.0) AND ISNULL(ROUND(v.SobrePrecio, 10),0.0) = ISNULL(ROUND(@SobrePrecio, 10),0.0) --Cambio CFD Flexible
                           GROUP BY s.SerieLote, s.ArtCostoInv, s.Propiedades

--JGD se igualaron a NULL @DescuentoGlobal y @SobrePrecio
            SELECT @Costo = ISNULL(SUM(m.Cantidad*ISNULL(s.CostoPromedio*Mon.TipoCambio, 0.0))/NULLIF(SUM(m.Cantidad), 0.0), 0.0)/@TipoCambio
              FROM SerieLoteMov m, SerieLote s, Art a, Mon
              WHERE m.Empresa = @Empresa AND m.Modulo = 'VTAS' AND m.ID = @FacturaID AND m.RenglonID = @RenglonID AND m.Articulo = @Articulo AND m.SubCuenta = ISNULL(@SubCuenta, '')
                AND s.Empresa = @Empresa AND s.Articulo = @Articulo AND s.SubCuenta = ISNULL(@SubCuenta, '') AND s.SerieLote = m.SerieLote AND s.Sucursal = @Sucursal AND s.Almacen = @Almacen 
                AND a.Articulo = @Articulo
                AND Mon.Moneda = a.MonedaCosto

	    -- Esto sirve para ponerle costo a ArtCostoInv
            UPDATE SerieLoteMov 
               SET ArtCostoInv = s.CostoPromedio
              FROM SerieLoteMov m, SerieLote s
              WHERE m.Empresa = @Empresa AND m.Modulo = 'VTAS' AND m.ID = @FacturaID AND m.RenglonID = @RenglonID AND m.Articulo = @Articulo AND m.SubCuenta = ISNULL(@SubCuenta, '')
                AND s.Empresa = @Empresa AND s.Articulo = @Articulo AND s.SubCuenta = ISNULL(@SubCuenta, '') AND s.SerieLote = m.SerieLote AND s.Sucursal = @Sucursal AND s.Almacen = @Almacen

            UPDATE VentaD SET Costo = @Costo WHERE ID = @FacturaID AND Renglon = @Renglon AND RenglonSub = 0
          END
        END
        FETCH NEXT FROM crNotas INTO @Almacen, @Posicion, @Articulo, @SubCuenta, @RenglonTipo, @Unidad, @Impuesto1, @Impuesto2, @Impuesto3, @Cantidad, @CantidadInventario, @DescuentoTipo, @DescuentoLinea, @Precio, @DescuentoGlobal, @SobrePrecio, @MonedaCosto, @ArtTipo, @ArtCostoIdentificado, @PrecioMonedaD, @PrecioTipoCambioD, @CantidadObsequio, @OfertaID, @PrecioSugerido, @DescuentoImporte, @Puntos, @Comision
      END -- While
      CLOSE crNotas
      DEALLOCATE crNotas
      -- Ventas
      DECLARE crNotas CURSOR LOCAL
          FOR SELECT d.Almacen, d.Posicion, d.Articulo, d.SubCuenta, d.RenglonTipo, d.Unidad, ISNULL(ROUND(d.Impuesto1, 4),0.0), ISNULL(ROUND(d.Impuesto2, 4),0.0), ISNULL(ROUND(d.Impuesto3, 4),0.0), SUM(d.Cantidad), SUM(d.CantidadInventario), ISNULL(d.DescuentoTipo,''), ISNULL(d.DescuentoLinea,0.0), ISNULL(d.Precio,0.0), ISNULL(v.DescuentoGlobal,0.0), ISNULL(v.SobrePrecio,0.0), Art.MonedaCosto, Art.Tipo, Art.CostoIdentificado, d.PrecioMoneda, d.PrecioTipoCambio, d.CantidadObsequio, d.OfertaID, d.PrecioSugerido, d.DescuentoImporte, d.Puntos, d.Comision --Cambio CFD Flexible
                FROM Venta v, VentaD d, ListaID l, Art
               WHERE v.ID = d.ID AND d.ID = l.ID 
                 AND v.FechaEmision = @FacturaFechaEmision
                 AND l.Estacion = @Estacion
                 AND d.Cantidad > 0.0
                 AND Art.Articulo = d.Articulo
               GROUP BY d.Almacen, d.Posicion, d.Articulo, Art.MonedaCosto, Art.Tipo, Art.CostoIdentificado, d.SubCuenta, d.Unidad, d.RenglonTipo, ROUND(d.Impuesto1, 4), ROUND(d.Impuesto2, 4), ROUND(d.Impuesto3, 4), d.DescuentoTipo, d.DescuentoLinea, d.Precio, v.DescuentoGlobal, v.SobrePrecio, d.PrecioMoneda, d.PrecioTipoCambio, d.CantidadObsequio, d.OfertaID, d.PrecioSugerido, d.DescuentoImporte, d.Puntos, d.Comision
               ORDER BY d.Almacen, d.Posicion, d.Articulo, Art.MonedaCosto, Art.Tipo, Art.CostoIdentificado, d.SubCuenta, d.Unidad, d.RenglonTipo, ROUND(d.Impuesto1, 4), ROUND(d.Impuesto2, 4), ROUND(d.Impuesto3, 4), d.DescuentoTipo, d.DescuentoLinea, d.Precio, v.DescuentoGlobal, v.SobrePrecio, d.PrecioMoneda, d.PrecioTipoCambio, d.CantidadObsequio, d.OfertaID, d.PrecioSugerido, d.DescuentoImporte, d.Puntos, d.Comision

      OPEN crNotas
      FETCH NEXT FROM crNotas INTO @Almacen, @Posicion, @Articulo, @SubCuenta, @RenglonTipo, @Unidad, @Impuesto1, @Impuesto2, @Impuesto3, @Cantidad, @CantidadInventario, @DescuentoTipo, @DescuentoLinea, @Precio, @DescuentoGlobal, @SobrePrecio, @MonedaCosto, @ArtTipo, @ArtCostoIdentificado, @PrecioMonedaD, @PrecioTipoCambioD, @CantidadObsequio, @OfertaID, @PrecioSugerido, @DescuentoImporte, @Puntos, @Comision
      WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
      BEGIN
        IF @@FETCH_STATUS <> -2 
        BEGIN
          SELECT @PrecioNeto = dbo.fnSubTotal(@Precio, @DescuentoGlobal, @SobrePrecio)
          IF @VentaMultiAlmacen = 0 AND @Almacen <> @AlmacenEncabezado SELECT @Ok = 20860, @OkRef = @Almacen
          SELECT @Costo = NULL
          EXEC spVerCosto @Sucursal, @Empresa, @Proveedor, @Articulo, @SubCuenta, @Unidad, @TipoCosteo, @Moneda, @TipoCambio, @Costo OUTPUT, 0, @Precio = @PrecioNeto
          SELECT @Renglon = @Renglon + 2048, @RenglonID = @RenglonID + 1
          INSERT VentaD (Sucursal,  SucursalOrigen, ID,         Renglon,  RenglonSub, RenglonID,  RenglonTipo,  Almacen,  Posicion,  Articulo,  SubCuenta,  Unidad,  Impuesto1,  Impuesto2,  Impuesto3,  Cantidad,  CantidadInventario,  DescuentoTipo,  DescuentoLinea,  Precio,      Costo,  UEN,  Agente, PrecioMoneda, PrecioTipoCambio, CantidadObsequio, OfertaID, PrecioSugerido, DescuentoImporte, Puntos, Comision)
                 VALUES (@Sucursal, @Sucursal,      @FacturaID, @Renglon,          0, @RenglonID, @RenglonTipo, @Almacen, @Posicion, @Articulo, @SubCuenta, @Unidad, @Impuesto1, @Impuesto2, @Impuesto3, @Cantidad, @CantidadInventario, @DescuentoTipo, @DescuentoLinea, @PrecioNeto, @Costo, @UEN, @Agente, @PrecioMonedaD, @PrecioTipoCambioD, @CantidadObsequio, @OfertaID, @PrecioSugerido, @DescuentoImporte, @Puntos, @Comision)

          IF (@ArtTipo IN ('SERIE', 'VIN') AND (@CfgCosteoSeries = 1 OR @ArtCostoIdentificado = 1)) OR (@ArtTipo IN ('LOTE', 'PARTIDA') AND (@CfgCosteoLotes = 1 OR @ArtCostoIdentificado = 1)) OR ((SELECT NotasBorrador FROM EmpresaCFG WHERE Empresa = @Empresa) = 1 AND @ArtTipo IN ('SERIE','LOTE'))
            INSERT SerieLoteMov (Empresa,  Modulo, ID,         RenglonID,  Articulo,  SubCuenta,              SerieLote,   ArtCostoInv,  Cantidad,        CantidadAlterna,        Sucursal,  Propiedades)
                          SELECT @Empresa, 'VTAS', @FacturaID, @RenglonID, @Articulo, ISNULL(@SubCuenta, ''), s.SerieLote, s.ArtCostoInv, SUM(s.Cantidad), SUM(s.CantidadAlterna), @Sucursal,ISNULL(s.Propiedades, '')
                            FROM SerieLoteMov s, Venta v, VentaD d, ListaID l, Art
                           WHERE v.ID = d.ID AND d.ID = l.ID 
                             AND v.FechaEmision = @FacturaFechaEmision
                             AND l.Estacion = @Estacion
                             AND d.Cantidad > 0.0
                             AND Art.Articulo = d.Articulo
                             AND s.Empresa = @Empresa AND s.Modulo = 'VTAS' AND s.ID = v.ID AND s.RenglonID = d.RenglonID AND s.Articulo = @Articulo AND ISNULL(s.SubCuenta, '') = ISNULL(@SubCuenta, '') 
                             AND d.Almacen = @Almacen AND ISNULL(d.Posicion, '') = ISNULL(@Posicion, '') AND d.Articulo = @Articulo AND Art.MonedaCosto = @MonedaCosto AND ISNULL(d.SubCuenta, '') = ISNULL(@SubCuenta, '') AND d.Unidad = @Unidad AND ISNULL(ROUND(d.Impuesto1, 4),0.0) = @Impuesto1 AND ISNULL(ROUND(d.Impuesto2, 4),0.0) = @Impuesto2 AND ISNULL(ROUND(d.Impuesto3, 4),0.0) = @Impuesto3 AND ISNULL(d.DescuentoTipo,'') = @DescuentoTipo AND ISNULL(d.DescuentoLinea,0.0) = @DescuentoLinea AND ISNULL(d.Precio,0.0) = @Precio AND ISNULL(ROUND(v.DescuentoGlobal, 10),0.0) = ISNULL(ROUND(@DescuentoGlobal, 10),0.0) AND ISNULL(ROUND(v.SobrePrecio, 10),0.0) = ISNULL(ROUND(@SobrePrecio, 10),0.0) --Cambio CFD Flexible
                           GROUP BY s.SerieLote, s.ArtCostoInv, s.Propiedades
--JGD se igualaron a NULL @DescuentoGlobal y @SobrePrecio
        END
        FETCH NEXT FROM crNotas INTO @Almacen, @Posicion, @Articulo, @SubCuenta, @RenglonTipo, @Unidad, @Impuesto1, @Impuesto2, @Impuesto3, @Cantidad, @CantidadInventario, @DescuentoTipo, @DescuentoLinea, @Precio, @DescuentoGlobal, @SobrePrecio, @MonedaCosto, @ArtTipo, @ArtCostoIdentificado, @PrecioMonedaD, @PrecioTipoCambioD, @CantidadObsequio, @OfertaID, @PrecioSugerido, @DescuentoImporte, @Puntos, @Comision
      END -- While
      CLOSE crNotas
      DEALLOCATE crNotas

      INSERT VentaOrigen (ID, OrigenID, Sucursal, SucursalOrigen)
      SELECT @FacturaID, v.ID, @Sucursal, @Sucursal 
        FROM Venta v, ListaID l
       WHERE l.Estacion = @Estacion AND v.ID = l.ID AND v.FechaEmision = @FacturaFechaEmision

      INSERT #Facturas (ID, FechaEmision) VALUES (@FacturaID, @FacturaFechaEmision)
      SELECT @CuantasFacturas = @CuantasFacturas + 1

      FETCH NEXT FROM crFechaEmision INTO @FacturaFechaEmision
    END -- While
    CLOSE crFechaEmision
    DEALLOCATE crFechaEmision

    -- Auto Ajuste
    SELECT @Renglon = 0, @RenglonID = 0
    DECLARE crRojo CURSOR 
        FOR SELECT d.Almacen, d.Articulo, NULLIF(RTRIM(d.SubCuenta), ''), ROUND(d.Disponible, 4), a.Unidad, ISNULL(a.LotesFijos, 0)
              FROM ArtSubDisponible d, Art a, Alm
             WHERE a.Articulo = d.Articulo AND ROUND(d.Disponible, 4) < 0.0
               AND d.Almacen = alm.Almacen AND alm.Sucursal = @Sucursal AND Empresa = @Empresa
    OPEN crRojo
    FETCH NEXT FROM crRojo INTO @Almacen, @Articulo, @SubCuenta, @Disponible, @Unidad, @LotesFijos
    WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
    BEGIN
      IF @@FETCH_STATUS <> -2 
      BEGIN 
        IF @Renglon = 0
        BEGIN
          INSERT Inv (Sucursal,  SucursalOrigen, Empresa,  Mov,         FechaEmision,  Moneda,  TipoCambio,  Almacen,            Concepto,  Usuario,  Estatus,    OrigenTipo, UEN)
              VALUES (@Sucursal, @Sucursal,      @Empresa, @AjusteMov, @FechaEmision, @Moneda, @TipoCambio, @AlmacenEncabezado, @Concepto, @Usuario, 'CONFIRMAR', 'VMOS', @UEN)
          SELECT @AjusteID = SCOPE_IDENTITY()
        END
        SELECT @Lote = NULL, @Costo = NULL
        SELECT @Factor = ISNULL(Factor, 1) FROM Unidad WHERE Unidad = @Unidad

        -- Leer Inverso
        IF @LotesFijos = 1
        BEGIN
          IF @SeriesLotesAutoOrden = 'ASCENDENTE' 
            SELECT @Lote = (SELECT TOP 1 Lote FROM ArtLoteFijo WHERE Articulo = @Articulo ORDER BY Lote DESC) 
          ELSE
            SELECT @Lote = (SELECT TOP 1 Lote FROM ArtLoteFijo WHERE Articulo = @Articulo ORDER BY Lote)

          SELECT @Lote = NULLIF(RTRIM(@Lote), '')
          IF @Lote IS NOT NULL
            SELECT @Costo = MIN(CostoPromedio)*@Factor FROM SerieLote WHERE Empresa = @Empresa AND Articulo = @Articulo AND SubCuenta = ISNULL(@SubCuenta, '') AND SerieLote = @Lote AND Almacen = @Almacen
        END
--JGD
--        ELSE
--          SELECT @Lote = (SELECT SerieLote FROM Serielotemov WHERE Articulo = @Articulo AND Modulo = 'VTAS' AND Empresa = @Empresa AND ID = @NotaID AND Sucursal = @Sucursal) 

        IF @Costo IS NULL
          EXEC spVerCosto @Sucursal, @Empresa, @Proveedor, @Articulo, @SubCuenta, @Unidad, @TipoCosteo, @Moneda, @TipoCambio, @Costo OUTPUT, 0

        SELECT @Renglon = @Renglon + 2048, @RenglonID = @RenglonID + 1 
        INSERT InvD (Sucursal,  SucursalOrigen, ID,        Renglon,  RenglonSub, RenglonID,  Almacen,  Articulo,  SubCuenta,  Unidad,  Cantidad,              CantidadInventario, Costo)
             VALUES (@Sucursal, @Sucursal,      @AjusteID, @Renglon, 0,          @RenglonID, @Almacen, @Articulo, @SubCuenta, @Unidad, -@Disponible/@Factor, -@Disponible,        @Costo)
--JGD
        IF (@LotesFijos = 1 AND @Lote IS NOT NULL) OR ((SELECT NotasBorrador FROM EmpresaCFG WHERE Empresa = @Empresa) = 1 AND @ArtTipo IN ('SERIE','LOTE'))
        BEGIN
          IF @ArtTipo = 'SERIE'          
          BEGIN
            INSERT SerieLoteMov (Empresa,  Modulo, ID,         RenglonID,  Articulo,  SubCuenta,              SerieLote,   ArtCostoInv,  Cantidad,        CantidadAlterna,        Sucursal,Propiedades)
                          SELECT @Empresa, 'INV', @AjusteID, @RenglonID, @Articulo, ISNULL(@SubCuenta, ''), s.SerieLote, s.ArtCostoInv, SUM(s.Cantidad), SUM(s.CantidadAlterna), @Sucursal,ISNULL(s.Propiedades, '')
                            FROM SerieLoteMov s
                           WHERE s.Empresa = @Empresa AND s.Modulo = 'VTAS' 
                             AND Articulo = @Articulo
                             AND ID = @NotaID AND Sucursal = @Sucursal
                           GROUP BY s.SerieLote, s.ArtCostoInv, s.Propiedades
          END
          ELSE
          BEGIN
            SELECT @Lote = (SELECT SerieLote FROM Serielotemov WHERE Articulo = @Articulo AND Modulo = 'VTAS' AND Empresa = @Empresa AND ID = @NotaID AND Sucursal = @Sucursal) 
            INSERT SerieLoteMov (Empresa,  Sucursal,  Modulo, ID,        RenglonID,  Articulo,  SubCuenta,              SerieLote, Cantidad) 
                         VALUES (@Empresa, @Sucursal, 'INV',  @AjusteID, @RenglonID, @Articulo, ISNULL(@SubCuenta, ''), @Lote,     -@Disponible/@Factor) 
          END
        END
      END
      FETCH NEXT FROM crRojo INTO @Almacen, @Articulo, @SubCuenta, @Disponible, @Unidad, @LotesFijos
    END -- While
    CLOSE crRojo
    DEALLOCATE crRojo

    DELETE ListaID WHERE Estacion = @Estacion
    SELECT @Cuantas = @@ROWCOUNT

    IF @CerrarSucursalAuto = 1 AND @AjusteID IS NOT NULL AND @Ok IS NULL
      EXEC spInv @AjusteID, 'INV', 'AFECTAR', 'TODO', @FechaRegistro, NULL, @Usuario, 1, 0, NULL,
                 @AjusteMov, @AjusteMovID OUTPUT, NULL, NULL,
                 @Ok OUTPUT, @OkRef OUTPUT, 0

    IF @CerrarSucursalAuto = 1 OR @AsignarConsecutivo = 1 OR (@EstatusVMOS = 'CONCLUIDO' AND @AjusteID IS NULL) AND @Ok IS NULL
    BEGIN
      DECLARE crFacturas CURSOR LOCAL FOR
       SELECT ID
         FROM #Facturas
      OPEN crFacturas
      FETCH NEXT FROM crFacturas INTO @FacturaID
      WHILE @@FETCH_STATUS = 0 AND @Ok IS NULL
      BEGIN
        IF @EstatusVMOS = 'CONCLUIDO' SELECT @Accion = 'AFECTAR' ELSE SELECT @Accion = 'CONSECUTIVO' 
        EXEC spInv @FacturaID, 'VTAS', @Accion, 'TODO', @FechaRegistro, NULL, @Usuario, 1, 0, NULL,
                   @FacturaMov OUTPUT, @FacturaMovID OUTPUT, NULL, NULL,
                   @Ok OUTPUT, @OkRef OUTPUT, 0
        IF @Ok IN (80030, 80060) SELECT @Ok = NULL, @OkRef = NULL
        FETCH NEXT FROM crFacturas INTO @FacturaID
      END
      CLOSE crFacturas
      DEALLOCATE crFacturas
      SELECT @LeyendaEstatus = ''
    END
  IF @Ok IS NULL
  BEGIN
    COMMIT TRANSACTION

    IF @EnSilencio = 0
    BEGIN
      SELECT @OkRef = RTRIM(Convert(char, @Cuantas))+' Nota(s) procesadas.'
      IF @AjusteID IS NOT NULL SELECT @OkRef = RTRIM(@OkRef)  + '<BR>Se Genero: '+RTRIM(@AjusteMov)+' (por Confirmar) en Inventarios'
      IF @FacturaID IS NOT NULL
      BEGIN
        IF @CuantasFacturas = 1 
          SELECT @OkRef = RTRIM(@OkRef) + '<BR>Se Genero: '+RTRIM(@FacturaMov)+' '+ISNULL(RTRIM(@FacturaMovID), '')+' '+@LeyendaEstatus
        ELSE
          SELECT @OkRef = RTRIM(@OkRef) + '<BR>Se Generaron: '+CONVERT(varchar, @CuantasFacturas)+' '+RTRIM(@FacturaMov)+'(s) '+@LeyendaEstatus
      END
      SELECT @OkRef
    END
  END ELSE

  BEGIN
    ROLLBACK TRANSACTION

    IF @EnSilencio = 0
      SELECT Descripcion+' '+RTRIM(@OkRef) 
        FROM MensajeLista
       WHERE Mensaje = @Ok  
  END

  RETURN
END
GO