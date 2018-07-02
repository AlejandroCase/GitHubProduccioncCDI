/**************** spGenerarCFD ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarCFD') and type = 'P') drop procedure dbo.spGenerarCFD
GO             
CREATE PROCEDURE spGenerarCFD
			@Estacion	int,
			@Modulo		char(5),
			@ID		int,
			@Layout		varchar(50),

			@Validar	bit		= 0,
			@Ok		int		= NULL OUTPUT,
			@OkRef		varchar(255)	= NULL OUTPUT
WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Empresa			char(5),
    @EmpresaRFC			varchar(20),
    @EmpresaNombre		varchar(100),
    @EmpresaDireccion		varchar(100),
    @EmpresaDireccionNumero	varchar(20),
    @EmpresaDireccionNumeroInt	varchar(20),
    @EmpresaColonia		varchar(100),
    @EmpresaPoblacion		varchar(100),
    @EmpresaObservaciones	varchar(100),
    @EmpresaDelegacion		varchar(100),
    @EmpresaEstado		varchar(30),
    @EmpresaPais		varchar(30),
    @EmpresaCodigoPostal	varchar(15),
    @EmpresaRegistroPatronal	varchar(20),
    @EmpresaGLN			varchar(50),
    @EmpresaTelefonos		varchar(100),
    @EmpresaEAN13		varchar(20),
    @EmpresaDUN14		varchar(20),
    @EmpresaSKUCliente		varchar(20),
    @EmpresaSKUEmpresa		varchar(20),
    @EmpresaSKUCodigoInterno	bit,

    @SucursalNombre		varchar(100),
    @SucursalGLN		varchar(50),
    @SucursalDireccion		varchar(100),
    @SucursalDireccionNumero	varchar(20),
    @SucursalDireccionNumeroInt	varchar(20),
    @SucursalColonia		varchar(100),
    @SucursalPoblacion		varchar(100),
    @SucursalObservaciones	varchar(100),
    @SucursalDelegacion		varchar(100),
    @SucursalEstado		varchar(30),
    @SucursalPais		varchar(30),
    @SucursalCodigoPostal	varchar(15),

    @ClienteRFC			varchar(20),
    @ClienteNombre		varchar(100),
    @ClienteDireccion		varchar(100),
    @ClienteDireccionNumero	varchar(20),
    @ClienteDireccionNumeroInt	varchar(20),
    @ClienteColonia		varchar(100),
    @ClientePoblacion		varchar(100),
    @ClienteObservaciones	varchar(100),
    @ClienteDelegacion		varchar(100),
    @ClienteEstado		varchar(30),
    @ClientePais		varchar(30),
    @ClienteCodigoPostal	varchar(15),
    @ClienteGLN			varchar(50),
    @ClienteTelefonos		varchar(100),
    @ClienteIEPS		varchar(20),

    @EnviarARFC			varchar(20),
    @EnviarANombre		varchar(100),
    @EnviarADireccion		varchar(100),
    @EnviarADireccionNumero	varchar(20),
    @EnviarADireccionNumeroInt	varchar(20),
    @EnviarAColonia		varchar(100),
    @EnviarAPoblacion		varchar(100),
    @EnviarAObservaciones	varchar(100),
    @EnviarADelegacion		varchar(100),
    @EnviarAEstado		varchar(30),
    @EnviarAPais		varchar(30),
    @EnviarACodigoPostal	varchar(15),
    @EnviarAGLN			varchar(50),
    @EnviarATelefonos		varchar(100),

    @Sucursal			int,
    @Version			varchar(10),
    @noCertificado		varchar(20),
    @Mov			varchar(20),
    @MovID			varchar(20),
    @Referencia			varchar(50),
    @ReferenciaFecha		datetime,
    @ConsecutivoModulo		char(5),
    @ConsecutivoMov		varchar(20),
    @Fecha			datetime,
    @Serie 			varchar(20),
    @Folio			bigint,
    @FechaEmision		datetime,
    @noAprobacion		int,
    @fechaAprobacion		datetime,
    @MovTipo			varchar(20),
    @tipoDeComprobante		varchar(20),
    @FormaEnvio			varchar(50),
    @Condicion			varchar(50),
    @Vencimiento		datetime,
    @formaDePago		varchar(100),
    @metodoDePago		varchar(100),
    @Importe			money,
    @SubTotal			money,
    @Descuento			varchar(50),
    @DescuentosTotales		money,
    @ImpuestosTotal		money,
    @Total			money,
    @Cliente			varchar(10),
    @EnviarA			int,
    @Renglon			float,
    @RenglonSub			int,
    @RenglonID			int,
    @RenglonTipo		char(1),
    @Cantidad			float,
    @CantidadTotal		float,
    @Codigo			varchar(50),
    @Unidad			varchar(50),
    @Articulo			varchar(20),
    @SubCuenta			varchar(50),
    @noIdentificacion		varchar(100),
    @ArtDescripcion1		varchar(255),
    @ArtDescripcion2		varchar(255),
    @ArtTipoEmpaque		varchar(50),
    @TipoEmpaqueClave		varchar(20),
    @TipoEmpaqueTipo		varchar(20),

    @Precio			money,
    @PrecioLinea		money,
    @PrecioSinDescuentos	money,
    @SubTotalLinea		money,
    @TotalLinea			money,

    @SerieLote			varchar(50),
    @Pedimento			varchar(20), 
    @PedimentoFecha		datetime, 
    @Aduana			varchar(50),
    @AduanaGLN			varchar(50),
    @AduanaCiudad		varchar(50),
    @Impuesto1			float,

    @Impuesto1Linea		money,
    @Impuesto1SubTotal		money,
    @Impuesto1Total		money,

    @Impuesto1Promedio		float,
    @Impuesto2			float,
    @Impuesto2Linea		money,
    @Impuesto2SubTotal		money,
    @Impuesto2Total		money,

    @Impuesto2Promedio		float,
    @PctDescuentoLinea		float,

    @DescuentoLinea		money,
    @DescuentoGlobalLinea	money,

    @EmisorID 			varchar(20), 
    @ReceptorID 		varchar(20), 
    @ProveedorID 		varchar(20), 
    @ProveedorIDDeptoEnviarA	varchar(20),
    @TipoAddenda 		varchar(50), 
    @AddendaVersion 		varchar(10),
    @OrdenCompra 		varchar(50), 
    @FechaOrdenCompra		datetime,
    @DiasVencimiento		int,
    @Estatus			varchar(15),
    @DescuentoGlobal		float,

    @ImporteDescuentoGlobal	money,

    @Departamento		int,
    @DepartamentoClave		varchar(20),
    @DepartamentoNombre		varchar(100),
    @DepartamentoContacto       varchar(100),
    @EmpresaRepresentante	varchar(100),
    @Observaciones		varchar(100),
    @DefImpuesto		float,
    @DefImpuestoZona		float,
    @ZonaImpuesto		varchar(30),
    @EnviarAClave		varchar(20),
    @Embarque 			varchar(50), 
    @EmbarqueFecha 		datetime, 
    @Recibo 			varchar(50), 
    @ReciboFecha 		datetime,
    @Moneda			char(10),	
    @MonedaClave		char(3),
    @UnidadClave		char(3),
    @TipoCambio			float,
    @FechaRequerida		datetime,
    @MN				bit,
    @Paquetes			int,
    @CantidadEmpaque		float,
    @EAN13			varchar(20),
    @DUN14			varchar(20),
    @SKUCliente			varchar(20),
    @SKUEmpresa			varchar(20),
    @SKUDelCliente		bit,
    @PrimerSerieLote		varchar(50),

    @ImporteLinea		money,
    @SumaImporteLinea		money,
    @SumaCantidad		money,
    @SumaSubTotalLinea		money,

    @Conteo			int,
    @ImporteEnLetra		varchar(255),
    @TipoCondicion		varchar(20),
    @ProntoPago 		bit, 
    @DescuentoProntoPago	float,
    @DescuentoClave		varchar(20),
    @UnidadFactor		float,
    @Liverpool			bit,
    @Gigante			bit,
    @ComercialMexicana		bit,
    @Elektra			bit,
    @EHB			bit,
    @Antecedente		varchar(50),
    @AntecedenteFecha		datetime,
    @ModoPruebas		bit,
    @ReferenciaEnvio		varchar(14),
    @Origen			varchar(20),
    @OrigenID			varchar(20),

    @NumeroArticulos 		int, 
    @EntregaMercancia 		varchar(20),	
    @agenteAduanal 		varchar(10),
    @AgenteAduanalNombre 	varchar(100),
    @TotalCajas 		int,
    @Concepto 			varchar(50),
    @AduanaClave		varchar(10),
    @PedimentoFecha2		datetime, 
    @PedimentoFecha3		datetime,
    @PaqueteEsCantidad		bit,

    @InformacionCompra 		varchar(20),
    @CompSubTotal 		money,
    @CompDescuentoLineal 	money,
    @CompImporteDescuentoGlobal money,
    @CompImpuesto1Total 	money,
    @CompImpuesto2Total 	money,
    @CompPrecio 		money,
    @PersonalCobrador 		varchar(10),
    @emailCobrador 		varchar(50),
    @AnticiposFacturados	money,
    @AnticiposImpuestos		money,
    @AgruparDetalle 		int,
    @ArtUnidad 			varchar(20),
    @UtilizaPaquete 		int,
    @SeFacturaPor		varchar(50),
    @MovIDCFD			varchar(20),
    @Agente				varchar(20),
    @DescripcionExtra	varchar(100)

  IF @Modulo NOT IN ('VTAS', 'CXC') RETURN 

  SET CONCAT_NULL_YIELDS_NULL ON


  SELECT @MN = 0, 
         @SumaCantidad = 0.0,
         @SumaSubTotalLinea = 0.0,
         @SumaImporteLinea = 0.0,  
         @Conteo = 0,
         @Layout = UPPER(@Layout),
         @ModoPruebas = 0,
         @Liverpool = 0,
         @Gigante = 0,
         @ComercialMexicana = 0,
         @Elektra = 0,
         @EHB = 0,
         @PaqueteEsCantidad = 0

  IF @Layout = 'AMECE / LIVERPOOL' 	SELECT @Liverpool 	     = 1 ELSE
  IF @Layout = 'AMECE / GIGANTE'   	SELECT @Gigante   	     = 1 ELSE
  IF @Layout = 'AMECE / CM' 	   	SELECT @ComercialMexicana    = 1 ELSE
  IF @Layout = 'INTERFACTURA / ELEKTRA' SELECT @Elektra 	     = 1 ELSE
  IF @Layout IN ('INTERFACTURA / EHB', 'INTERFACTURA / HEB')	SELECT @EHB 		     = 1 

  IF @Layout = 'SORIANA' SELECT @Layout = 'SORIANA CEDIS' 

  IF @Layout IN ('CHEDRAUI', 'EDIFACT')
    CREATE TABLE #CFD (
	ID 		int 		NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Requerido	bit		NULL,
	Campo		varchar(100)	NULL,
	Dato 		varchar(255) 	NULL)
  IF @Layout = 'EDIFACT'
    CREATE TABLE #EDI (
	ID 		int 		NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Requerido	bit		NULL,
	Campo		varchar(100)	NULL,
	Dato 		varchar(255) 	NULL)



  IF @Modulo = 'VTAS'
    SELECT @Estatus = Estatus, @Empresa = Empresa, @Sucursal = Sucursal, @Mov = Mov, @MovID = MovID, @FormaEnvio = FormaEnvio, @Condicion = Condicion, @Vencimiento = Vencimiento, @Cliente = ISNULL(CDIFacturarA, Cliente), @EnviarA = EnviarA, @Descuento = Descuento, @DescuentoGlobal = DescuentoGlobal,
           @OrdenCompra = OrdenCompra, @FechaOrdenCompra = FechaOrdenCompra, @Departamento = Departamento, @ZonaImpuesto = ZonaImpuesto, @Moneda = Moneda, @TipoCambio = TipoCambio, @FechaRequerida = FechaRequerida, @Observaciones = Observaciones,
           @Referencia = Referencia, @FechaEmision = FechaEmision, @Origen = Origen, @OrigenID = OrigenID,
           @AnticiposFacturados = AnticiposFacturados, @Anticiposimpuestos = AnticiposImpuestos, @Agente = Agente
      FROM Venta 
     WHERE ID = @ID

  IF @Modulo = 'CXC'
  BEGIN
    SELECT @Estatus = Estatus, @Empresa = Empresa, @Sucursal = Sucursal, @Mov = Mov, @MovID = MovID, @Cliente = ISNULL(CDIFacturarA, Cliente), @EnviarA = ClienteEnviarA, 
           @Moneda = Moneda, @TipoCambio = TipoCambio, @Observaciones = Observaciones, @Concepto = Concepto,
           @Referencia = Referencia, @FechaEmision = FechaEmision, @Impuesto1Total = Impuestos, @ImpuestosTotal = Impuestos, @Importe = Importe
      FROM CXC 
     WHERE ID = @ID

     SELECT @ImporteDescuentoGlobal = 0 

     IF @Importe = 0.0 OR @ImpuestosTotal = 0.0
        SELECT @Impuesto1 = 0.00
     ELSE 
       SELECT @Impuesto1 = ROUND((@ImpuestosTotal*100)/@Importe,2)
  END

  IF @Layout = 'SAT'
    SELECT @MN = SAT_MN 
      FROM EmpresaCFD 
      WHERE Empresa = @Empresa

  IF @MN = 1 AND @Modulo = 'CXC'
    SELECT @Impuesto1Total = @Impuesto1Total*@TipoCambio, @ImpuestosTotal = @ImpuestosTotal*@TipoCambio , @Importe = @Importe*@TipoCambio


  IF @Validar = 1 AND @Modulo IN ('VTAS', 'CXC', 'CXP') AND @ID IS NOT NULL
  BEGIN
    SELECT @MovIDCFD = MovID FROM CFD WHERE Modulo = @Modulo AND ModuloID = @ID
    IF NULLIF(RTRIM(@MovID), '') <> NULLIF(RTRIM(@MovIDCFD), '')
      SELECT @OK = 30013, @OkRef = RTRIM(@Mov)+' '+RTRIM(@MovIDCFD)
  END

  SELECT @Fecha = Fecha FROM CFD WHERE Modulo = @Modulo AND ModuloID = @ID
  IF @@ROWCOUNT = 0
  BEGIN
    SELECT @Fecha = GETDATE()
    IF @Validar = 0
      IF NOT EXISTS (SELECT ModuloID FROM CFD WHERE Modulo = @Modulo AND ModuloID = @ID )
        INSERT CFD (Modulo, ModuloID, Fecha) VALUES (@Modulo, @ID, @Fecha)
  END 

  IF @Modulo = 'VTAS'
  BEGIN
    IF @MN = 1
    BEGIN
      SELECT @CantidadTotal = SUM(Cantidad), @Importe = SUM(Importe*TipoCambio), @DescuentosTotales = SUM(DescuentosTotales*TipoCambio), --@Total = SUM(ImporteTotal*TipoCambio), 
             @Impuesto1Total = SUM(Impuesto1Total*TipoCambio), @Impuesto2Total = SUM(Impuesto2Total*TipoCambio), @ImpuestosTotal = SUM(Impuestos*TipoCambio),
             @ImporteDescuentoGlobal = SUM(ImporteDescuentoGlobal*TipoCambio)
        FROM VentaTCalc 
       WHERE ID = @ID

      SELECT @AnticiposFacturados = ISNULL(@AnticiposFacturados,0) * @TipoCambio,
             @AnticiposImpuestos  = ISNULL(@AnticiposImpuestos,0) * @TipoCambio
    END
    ELSE 
      SELECT @CantidadTotal = SUM(Cantidad), @Importe = SUM(Importe), @DescuentosTotales = SUM(DescuentosTotales), --@Total = SUM(ImporteTotal), 
             @Impuesto1Total = SUM(Impuesto1Total), @Impuesto2Total = SUM(Impuesto2Total), @ImpuestosTotal = SUM(Impuestos),
             @ImporteDescuentoGlobal = SUM(ImporteDescuentoGlobal)
        FROM VentaTCalc 
       WHERE ID = @ID

/** AR se agrego la lectura de @Entregamercancia*/
    SELECT @Embarque = Embarque, @EmbarqueFecha = EmbarqueFecha, @Recibo = Recibo, @ReciboFecha = ReciboFecha, @EntregaMercancia = EntregaMercancia
      FROM VentaEntrega
     WHERE ID = @ID

    SELECT @NumeroArticulos = COUNT(DISTINCT(Articulo)) FROM VentaD WHERE ID = @ID AND RenglonTipo <> 'C'
  END

  SELECT @SubTotal = Round(@Importe - @ImporteDescuentoGlobal - ISNULL(@AnticiposFacturados,0) + ISNULL(@AnticiposImpuestos,0),2)
  SELECT @ImpuestosTotal = ROUND(@ImpuestosTotal - ISNULL(@AnticiposImpuestos,0),2)
  SELECT @Total = @SubTotal + @ImpuestosTotal
  SELECT @ImporteEnLetra = dbo.fnNumeroEnEspanol(@Total, @Moneda)

  SELECT @Impuesto1Total = ROUND(@Impuesto1Total - ISNULL(@AnticiposImpuestos,0),2)

  SELECT @ClienteRFC = dbo.fnLimpiarRFC(RFC), @ClienteNombre = Nombre, @ClienteDireccion = Direccion, @ClienteDireccionNumero = DireccionNumero, @ClienteDireccionNumeroInt = DireccionNumeroInt,
         @ClienteColonia = Colonia, @ClientePoblacion = Poblacion, @ClienteObservaciones = EntreCalles/*Observaciones*/, @ClienteDelegacion = Delegacion, @ClienteEstado = Estado, 
         @ClientePais = Pais, @ClienteCodigoPostal = CodigoPostal, @ClienteGLN = GLN, @ClienteTelefonos = Telefonos, @ClienteIEPS = IEPS, @PersonalCobrador = PersonalCobrador
    FROM Cte
   WHERE Cliente = @Cliente

  SELECT @emailCobrador = email FROM Personal WHERE Personal = @PersonalCobrador

  SELECT @ReceptorID = ReceptorID, @TipoAddenda = TipoAddenda, 
         @AddendaVersion = CASE WHEN VersionFecha < @Fecha OR VersionFecha IS NULL THEN Version ELSE VersionAnterior END
    FROM CteCFD
   WHERE Cliente = @Cliente

   IF @TipoAddenda IN ('CHEDRAUI', 'EDIFACT') AND LEN(@ClienteRFC) NOT IN (12, 13)
     SELECT @ClienteRFC = NULL

  
  SELECT @EmisorID = EmisorID, @ProveedorID = ProveedorID, @InformacionCompra = InformacionCompra
    FROM CteEmpresaCFD
   WHERE Cliente = @Cliente AND Empresa = @Empresa

  SELECT @ProveedorIDDeptoEnviarA = ProveedorID 
    FROM CteDeptoEnviarA 
   WHERE Cliente = @Cliente AND Departamento = @Departamento AND Empresa = @Empresa AND EnviarA = @EnviarA

  SELECT @EnviarAClave = ISNULL(NULLIF(RTRIM(Clave), ''), CONVERT(varchar(20), ID)),
         @EnviarANombre = Nombre, @EnviarADireccion = Direccion, @EnviarADireccionNumero = DireccionNumero, @EnviarADireccionNumeroInt = DireccionNumeroInt,
         @EnviarAColonia = Colonia, @EnviarAPoblacion = Poblacion, @EnviarAObservaciones = NULLIF(RTRIM(EntreCalles/*Observaciones*/),''), @EnviarADelegacion = Delegacion, @EnviarAEstado = Estado, 
         @EnviarAPais = Pais, @EnviarACodigoPostal = CodigoPostal, @EnviarAGLN = GLN, @EnviarATelefonos = Telefonos
    FROM CteEnviarA
   WHERE Cliente = @Cliente AND ID = @EnviarA

  SELECT @DepartamentoClave = Clave, 
         @DepartamentoNombre = Departamento,
         @DepartamentoContacto = Contacto
    FROM CteDepto 
   WHERE Cliente = @Cliente AND Departamento = @Departamento

  IF @Subtotal = 0.0
    SELECT @Impuesto1Promedio = 0.0,
           @Impuesto2Promedio = 0.0
  ELSE
    SELECT @Impuesto1Promedio = (@Impuesto1Total*100)/@SubTotal,
           @Impuesto2Promedio = (@Impuesto2Total*100)/@SubTotal

  SELECT @EmpresaRFC = dbo.fnLimpiarRFC(RFC), @EmpresaNombre = Nombre, 
         @EmpresaDireccion = Direccion, @EmpresaDireccionNumero = DireccionNumero, @EmpresaDireccionNumeroInt = DireccionNumeroInt,
         @EmpresaColonia = Colonia, @EmpresaPoblacion = Poblacion, @EmpresaObservaciones = NULL, @EmpresaDelegacion = Delegacion, @EmpresaEstado = Estado, 
         @EmpresaPais = Pais, @EmpresaCodigoPostal = CodigoPostal,
         @EmpresaRepresentante = Representante, @EmpresaRegistroPatronal = RegistroPatronal, @EmpresaGLN = GLN, @EmpresaTelefonos = Telefonos
    FROM Empresa
   WHERE Empresa = @Empresa

  IF @TipoAddenda IN ('CHEDRAUI', 'EDIFACT') AND LEN(@EmpresaRFC) NOT IN (12, 13)
    SELECT @EmpresaRFC = NULL
	
  SELECT @noCertificado = noCertificado, 
         @Version = CASE WHEN versionFecha<@Fecha OR versionFecha IS NULL THEN version ELSE versionAnterior END,
         @EmpresaEAN13 = EAN13, @EmpresaDUN14 = DUN14, @EmpresaSKUCliente = SKU, @EmpresaSKUEmpresa = SKUEmpresa, 
         @EmpresaSKUCodigoInterno = ISNULL(SKUCodigoInterno, 0), @ModoPruebas = ModoPruebas, @PaqueteEsCantidad = PaqueteEsCantidad,
         @AgruparDetalle = AgruparDetalle
    FROM EmpresaCFD
   WHERE Empresa = @Empresa

  SELECT @DefImpuesto = DefImpuesto 
    FROM EmpresaGral
  SELECT @DefImpuestoZona = @DefImpuesto
  EXEC spZonaImp @ZonaImpuesto, @DefImpuestoZona OUTPUT

  SELECT @MonedaClave = Clave FROM Mon WHERE Moneda = @Moneda
  SELECT @DescuentoClave = Clave FROM Descuento WHERE Descuento = @Descuento

  SELECT @SucursalNombre = Nombre, @SucursalGLN = GLN, 
         @SucursalDireccion = Direccion, @SucursalDireccionNumero = DireccionNumero, @SucursalDireccionNumeroInt = DireccionNumeroInt,
         @SucursalColonia = Colonia, @SucursalPoblacion = Poblacion, @SucursalObservaciones = NULL, @SucursalDelegacion = Delegacion, @SucursalEstado = Estado, 
         @SucursalPais = Pais, @SucursalCodigoPostal = CodigoPostal
    FROM Sucursal
   WHERE Sucursal = @Sucursal

  SELECT @TipoCondicion = TipoCondicion, @formaDePago = CFD_formaDePago, @metodoDePago = CFD_metodoDePago, @DiasVencimiento = ISNULL(DiasVencimiento,1),
         @ProntoPago = ProntoPago, @DescuentoProntoPago = DescuentoProntoPago
    FROM Condicion 
   WHERE Condicion = @Condicion

  IF @Modulo = 'CXC'
    SELECT @formaDePago = 'PAGO EN UNA SOLA EXHIBICION'

  SELECT @MovTipo = Clave, @tipoDeComprobante = CFD_tipoDeComprobante,
         @ConsecutivoModulo = ConsecutivoModulo, @ConsecutivoMov = ConsecutivoMov
    FROM MovTipo 
   WHERE Modulo = @Modulo AND Mov = @Mov

  EXEC spMovIDEnSerieConsecutivo @MovID, @Serie OUTPUT, @Folio OUTPUT

  SELECT @noAprobacion = noAprobacion, @fechaAprobacion = fechaAprobacion
    FROM CFDFolio
   WHERE Empresa = @Empresa AND Modulo = @ConsecutivoModulo AND Mov = @ConsecutivoMov AND Serie = @Serie AND @Folio BETWEEN FolioD AND FolioA AND Estatus = 'ALTA' 

  IF @@ROWCOUNT = 0
    SELECT @noAprobacion = noAprobacion, @fechaAprobacion = fechaAprobacion
      FROM CFDFolio
     WHERE Empresa = @Empresa AND Modulo = @ConsecutivoModulo AND Mov = @ConsecutivoMov AND ISNULL(Serie,'') = ISNULL(@Serie,'') AND @Folio BETWEEN FolioD AND FolioA AND Estatus = 'ALTA' 

  IF @MovTipo IN ('VTAS.D', 'VTAS.B') 
  BEGIN
    SELECT @ReferenciaFecha = Fecha FROM CFD WHERE Empresa = @Empresa AND MovID = @Referencia 
    IF @@ROWCOUNT = 0
      SELECT @ReferenciaFecha = FechaRegistro FROM Venta WHERE Empresa = @Empresa AND MovID = @Referencia AND Estatus IN ('CONCLUIDO', 'PENDIENTE')
  END

  SELECT @Antecedente      = CASE WHEN @Estatus='CANCELADO' THEN @MovID WHEN @MovTipo IN ('VTAS.D', 'VTAS.B', 'CXC.NC', 'CXC.CA') THEN @Referencia      ELSE @OrdenCompra      END
  SELECT @AntecedenteFecha = CASE WHEN @Estatus='CANCELADO' THEN @Fecha WHEN @MovTipo IN ('VTAS.D', 'VTAS.B', 'CXC.NC', 'CXC.CA') THEN @ReferenciaFecha ELSE @FechaOrdenCompra END
  SELECT @ReferenciaEnvio = dbo.fnDateTimeFmt(GETDATE(), 'AAMMDDHHMMSSMM')

  EXEC xpGenerarCFDEncabezado   @Estacion, @Modulo, @ID, @Layout, @Validar, @Empresa,  @Sucursal, @Cliente, @EnviarA, @EmpresaGLN, @Version,
			        @Mov, @MovID, @Estatus, @ConsecutivoModulo, @ConsecutivoMov, @Fecha,  @Serie, @Folio, @MovTipo, @tipoDeComprobante, @TipoAddenda, @AddendaVersion, 
				@Moneda, @TipoCambio, @Liverpool, @Gigante, @ComercialMexicana, @Elektra, @EHB, @Origen, @OrigenID, @SucursalGLN OUTPUT, @ClienteGLN OUTPUT,
				@EnviarAGLN OUTPUT, @Referencia OUTPUT,  @ReferenciaFecha OUTPUT, @FormaEnvio OUTPUT, @Condicion OUTPUT, @Vencimiento OUTPUT, @formaDePago OUTPUT,
				@metodoDePago OUTPUT,  @EmisorID OUTPUT, @ReceptorID OUTPUT,  @ProveedorID OUTPUT,  @OrdenCompra OUTPUT,  @FechaOrdenCompra OUTPUT, @DepartamentoClave OUTPUT,
				@DepartamentoNombre OUTPUT, @DepartamentoContacto OUTPUT, @Observaciones OUTPUT, @EnviarAClave OUTPUT, @Embarque OUTPUT,  @EmbarqueFecha OUTPUT, 
				@Recibo OUTPUT,  @ReciboFecha OUTPUT, @MonedaClave OUTPUT, @FechaRequerida OUTPUT, @TipoCondicion OUTPUT, @DescuentoClave OUTPUT, @Antecedente OUTPUT,
				@AntecedenteFecha OUTPUT, @ReferenciaEnvio OUTPUT, @Ok OUTPUT,  @OkRef OUTPUT, @AgruparDetalle OUTPUT

  IF @Validar = 1
  BEGIN
      IF @MovID IS NOT NULL
      BEGIN
        IF @noAprobacion IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - No Aprobacion'
        IF @FechaAprobacion IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Año Aprobacion'
        IF @Folio IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Folio'
      END
      IF @Fecha IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Fecha'
      IF NULLIF(RTRIM(@FormaDePago), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Forma De Pago'
      IF NULLIF(RTRIM(@noCertificado), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa Nombre'
      IF @SubTotal IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - SubTotal'
      IF @Total IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Total'
      IF NULLIF(RTRIM(@tipoDeComprobante), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Tipo de Comprobante'

      IF NULLIF(RTRIM(@EmpresaRFC), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa RFC'
      IF LEN(@EmpresaRFC) NOT IN (12,13) SELECT @Ok = 10010, @OkRef = 'CFD - Empresa RFC Requiere 12 o 13 Caracteres'

      IF NULLIF(RTRIM(@EmpresaNombre), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa Nombre'
      IF NULLIF(RTRIM(@ClienteRFC), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Cliente RFC'
      IF LEN(@ClienteRFC) NOT IN (12,13) SELECT @Ok = 10010, @OkRef = 'CFD - Cliente RFC Requiere 12 o 13 Caracteres'
      IF NULLIF(RTRIM(@ClientePais), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Cliente Pais'

      IF NULLIF(RTRIM(@EmpresaDireccion), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa Calle'
      IF NULLIF(RTRIM(@EmpresaDelegacion), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa Municipio'
      IF NULLIF(RTRIM(@EmpresaEstado), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa Estado'
      IF NULLIF(RTRIM(@EmpresaPais), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa Pais'
      IF NULLIF(RTRIM(@EmpresaCodigoPostal), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa Codigo Postal'

      IF @Modulo = 'VTAS' AND @LayOut = 'DETALLISTA'
      BEGIN
        IF NULLIF(RTRIM(@Antecedente), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Orden Compra'
        IF NULLIF(RTRIM(@FechaOrdenCompra),'') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Fecha Orden Compra'
        IF NULLIF(RTRIM(@ClienteGLN), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Cliente GLN'
        IF LEN(@ClienteGLN) <> 13 SELECT @Ok = 10010, @OkRef = 'CFD - Cliente GLN Requiere 13 Caracteres'
        IF ISNULL(NULLIF(RTRIM(@ProveedorIDDeptoEnviarA),''), NULLIF(RTRIM(@ProveedorID),'')) IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - ProveedorID'
  
        IF NULLIF(RTRIM(@Recibo), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Recibo'
        IF LEN(@Recibo) > 35 SELECT @Ok = 10010, @OkRef = 'CFD - Recibo Excede Tamaño Maximo 35'
        IF NULLIF(RTRIM(@ReciboFecha),'') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Fecha Recibo'
  
        IF NULLIF(RTRIM(@DepartamentoClave), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Clave Departamento Cliente'
        IF LEN(@DepartamentoClave) > 35 SELECT @Ok = 10010, @OkRef = 'CFD - Clave Departamento Cliente Excede Tamaño Maximo 35'
  
        IF NULLIF(RTRIM(@EmpresaGLN), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Empresa GLN'
        IF LEN(@EmpresaGLN) <> 13 SELECT @Ok = 10010, @OkRef = 'CFD - Empresa GLN Requiere 13 Caracteres'
  
        IF LEN(@MonedaClave) <> 3 SELECT @Ok = 10010, @OkRef = 'CFD - Moneda Clave Requiere 3 Caracteres'
        IF @MonedaClave NOT IN ('', NULL, 'MXN', 'XEU', 'USD') SELECT @Ok = 10010, @OkRef = 'CFD - Moneda Clave Debe ser MXN, XEU ó USD)'
      END

    IF @Layout LIKE '%INTERFACTURA%' OR @TipoAddenda LIKE '%INTERFACTURA%'
    BEGIN
      IF NULLIF(RTRIM(@EmisorID), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - EmisorID'
      IF NULLIF(RTRIM(@ReceptorID), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - ReceptorID'
      IF NULLIF(RTRIM(@ProveedorID), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - ProveedorID'
      IF NULLIF(RTRIM(@monedaClave), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Moneda Clave'
      IF @Modulo = 'CXC' AND @MovTipo IN ('CXC.NC', 'CXC.CA')
      BEGIN
        IF NULLIF(RTRIM(@Antecedente), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Referencia'
        IF NULLIF(RTRIM(@Concepto), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Concepto'
      END
    END

    IF @Layout IN ('INTERFACTURA / EHB', 'INTERFACTURA / HEB') OR @TipoAddenda IN ('INTERFACTURA / EHB', 'INTERFACTURA / HEB')
    BEGIN
      IF NULLIF(RTRIM(@monedaClave), '') NOT IN ('MXN', 'USD') SELECT @Ok = 10010, @OkRef = 'CFD - Moneda Clave No Existe'
      IF NULLIF(RTRIM(@EnviarAClave), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - EnviarAClave'
      IF NULLIF(RTRIM(Convert(varchar(10),@Total)), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Total'
      IF NULLIF(RTRIM(CONVERT(varchar(10),@SubTotal)), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - SubTotal'
      IF NULLIF(RTRIM(@ProveedorID), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - ProveedorID'
      IF NULLIF(RTRIM(@EnviarADelegacion), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Enviar a Delegacion'
      IF NULLIF(RTRIM(@Moneda), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Moneda'
      IF NULLIF(RTRIM(CONVERT(varchar(10),@Impuesto1Total)), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Impuesto1Total'
      IF NULLIF(RTRIM(@EnviarADireccion), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Enviar a Direccion'
      IF NULLIF(RTRIM(@DepartamentoClave), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Clave Departamento HEB'
      IF dbo.fnEsNumerico(@OrdenCompra) = 0 SELECT @Ok = 10010, @OkRef = 'CFD - Orden Compra Debe Ser Numero'
    END

  END

  IF @Layout = 'SAT'
  BEGIN
    SELECT '<?xml version="1.0" encoding="UTF-8" ?>'
--    IF @TipoAddenda = 'INTERFACTURA' SELECT '<FacturaRoot>'
    IF @Version = '1.0'
      SELECT '<Comprobante'+
              dbo.fnXML('version', @Version)+
              dbo.fnXML('serie', @Serie)+
              dbo.fnXMLBigint('folio', @Folio)+
              dbo.fnXMLDatetime('fecha', @Fecha)+
              dbo.fnXML('sello', '{@Sello}')+
              dbo.fnXMLInt('noAprobacion', @noAprobacion)+
              dbo.fnXML('formaDePago', @formaDePago)+
              dbo.fnXML('noCertificado', @noCertificado)+
              dbo.fnXML8000('certificado', '{@Certificado}')+
             '>'
    ELSE
      SELECT '<Comprobante'+
--              CASE WHEN @TipoAddenda IN ('INTERFACTURA','AMECE / LIVERPOOL') THEN ' xmlns="http://www.sat.gob.mx/cfd/2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sat.gob.mx/cfd/2 http://www.sat.gob.mx/sitio_internet/cfd/2/cfdv2.xsd"' ELSE '' END+
                CASE WHEN @TipoAddenda = 'Detallista' 
                THEN ' xmlns:xsi='+char(34)+'http://www.w3.org/2001/XMLSchema-instance'+char(34)+' xmlns='+char(34)+'http://www.sat.gob.mx/cfd/2'+char(34)+' xmlns:detallista='+char(34)+'http://www.sat.gob.mx/detallista'+char(34)+' xsi:schemaLocation='+char(34)+'http://www.sat.gob.mx/cfd/2 http://www.sat.gob.mx/sitio_internet/cfd/2/cfdv2.xsd http://www.sat.gob.mx/detallista http://www.sat.gob.mx/sitio_internet/cfd/detallista/detallista.xsd'+char(34)+' '
                ELSE ' xmlns='+char(34)+'http://www.sat.gob.mx/cfd/2'+char(34)+' xmlns:xsi='+char(34)+'http://www.w3.org/2001/XMLSchema-instance'+char(34)+' xsi:schemaLocation='+char(34)+'http://www.sat.gob.mx/cfd/2 http://www.sat.gob.mx/sitio_internet/cfd/2/cfdv2.xsd'+char(34)+' ' 
                END+
              dbo.fnXML('version', @Version)+
              dbo.fnXML('serie', @Serie)+
              dbo.fnXMLBigint('folio', @Folio)+
              dbo.fnXMLDatetime('fecha', @Fecha)+
              dbo.fnXML('sello', '{@Sello}')+
              dbo.fnXMLInt('noAprobacion', @noAprobacion)+
              dbo.fnXMLInt('anoAprobacion', YEAR(@fechaAprobacion))+
              dbo.fnXML('formaDePago', @formaDePago)+
              dbo.fnXML('noCertificado', @noCertificado)+
              dbo.fnXML8000('certificado', '{@Certificado}')+
              dbo.fnXML('condicionesDePago', @Condicion)+
              dbo.fnXMLMoney('subTotal', @SubTotal)+
              dbo.fnXMLMoney('descuento', @DescuentosTotales)+
              dbo.fnXML('motivoDescuento', NULLIF(RTRIM(@Descuento),''))+
              dbo.fnXMLMoney('total', @Total)+
              dbo.fnXML('metodoDePago', @metodoDePago)+
              dbo.fnXML('tipoDeComprobante', LOWER(@tipoDeComprobante))+
             '>'

    SELECT '<Emisor'+
            dbo.fnXML('rfc', @EmpresaRFC)+
            dbo.fnXML('nombre', @EmpresaNombre)+
           '>'
    SELECT '<DomicilioFiscal'+
            dbo.fnXML('calle', @EmpresaDireccion)+
            dbo.fnXML('noExterior', @EmpresaDireccionNumero)+
            dbo.fnXML('noInterior', @EmpresaDireccionNumeroInt)+
            dbo.fnXML('colonia', @EmpresaColonia)+
            dbo.fnXML('localidad', @EmpresaPoblacion)+
            dbo.fnXML('referencia', @EmpresaObservaciones)+
            dbo.fnXML('municipio', @EmpresaDelegacion)+
            dbo.fnXML('estado', @EmpresaEstado)+
            dbo.fnXML('pais', @EmpresaPais)+
            dbo.fnXML('codigoPostal', @EmpresaCodigoPostal)+
           '/>'

    IF @Sucursal <> 0
    SELECT '<ExpedidoEn'+
            dbo.fnXML('calle', @SucursalDireccion)+
            dbo.fnXML('noExterior', @SucursalDireccionNumero)+
            dbo.fnXML('noInterior', @SucursalDireccionNumeroInt)+
            dbo.fnXML('colonia', @SucursalColonia)+
            dbo.fnXML('localidad', @SucursalPoblacion)+
            dbo.fnXML('referencia', @SucursalObservaciones)+
            dbo.fnXML('municipio', @SucursalDelegacion)+
            dbo.fnXML('estado', @SucursalEstado)+
            dbo.fnXML('pais', @SucursalPais)+
            dbo.fnXML('codigoPostal', @SucursalCodigoPostal)+
           '/>'
    SELECT '</Emisor>'

    SELECT '<Receptor'+
            dbo.fnXML('rfc', @ClienteRFC)+
            dbo.fnXML('nombre', @ClienteNombre)+
           '>'
    SELECT '<Domicilio'+
            dbo.fnXML('calle', @ClienteDireccion)+
            dbo.fnXML('noExterior', @ClienteDireccionNumero)+
            dbo.fnXML('noInterior', @ClienteDireccionNumeroInt)+
            dbo.fnXML('colonia', @ClienteColonia)+
            dbo.fnXML('localidad', @ClientePoblacion)+
            dbo.fnXML('referencia', @ClienteObservaciones)+
            dbo.fnXML('municipio', @ClienteDelegacion)+
            dbo.fnXML('estado', @ClienteEstado)+
            dbo.fnXML('pais', @ClientePais)+
            dbo.fnXML('codigoPostal', @ClienteCodigoPostal)+
           '/>'
    SELECT '</Receptor>'
  END ELSE
  IF @Layout LIKE 'AMECE%'
  BEGIN
    SELECT '<Addenda>'+
           '<requestForPayment'+
           ' xmlns:xsi='+char(34)+'http://www.w3.org/2001/XMLSchema-instance'+char(34)+' '+
           dbo.fnXML('type', 'SimpleInvoiceType')+
           dbo.fnXML('contentVersion', '1.3.1')+
           dbo.fnXML('documentStructureVersion', 'AMC7.1')+
           dbo.fnXML('documentStatus', CASE WHEN @Estatus='CANCELADO' THEN 'DELETE' ELSE 'ORIGINAL' END)+
	   CASE WHEN @Gigante = 1 OR @ComercialMexicana = 1 THEN dbo.fnXMLDatetime('DeliveryDate', @Fecha) ELSE dbo.fnXMLDatetimeFmt('DeliveryDate', @Fecha, 'AAAA-MM-DD') END+
           '>'

--      IF @Gigante = 0
        SELECT '<requestForPaymentIdentification>'+
                 dbo.fnTag('entityType', CASE @MovTipo WHEN 'VTAS.D' THEN 'CREDIT_NOTE' WHEN 'VTAS.B' THEN 'DEBIT_NOTE' ELSE 'INVOICE' END)+
                 dbo.fnTag('uniqueCreatorIdentification', @MovID)+
               '</requestForPaymentIdentification>'

--      IF @Gigante = 0
      SELECT '<specialInstruction'+dbo.fnXML('code', CASE WHEN @Gigante = 1 THEN 'PUR' ELSE 'ZZZ' END)+'>'+
                dbo.fnTag('text', CASE WHEN @Gigante = 1 THEN @InformacionCompra ELSE RTRIM(@ImporteEnLetra)+' M.N.' END)+
              '</specialInstruction>'

      SELECT '<orderIdentification>'+
             /*CASE WHEN @Liverpool = 0 THEN '<referenceIdentification'+dbo.fnXML('type', 'ON')+'>'+ISNULL(@Antecedente, '')+'</referenceIdentification>'
             ELSE dbo.fnTag('referenceIdentification', @Antecedente) END+*/
             '<referenceIdentification'+dbo.fnXML('type', 'ON')+'>'+ISNULL(@Antecedente, '')+'</referenceIdentification>'+
             CASE WHEN @ComercialMexicana = 1  THEN dbo.fnTagDatetime('ReferenceDate', @Fecha) 
                  WHEN @Gigante = 0 AND @ComercialMexicana = 0 THEN dbo.fnTagDateTimeFmt('ReferenceDate', @AntecedenteFecha, 'AAAA-MM-DD')
                  ELSE '' END+
--             CASE WHEN @Gigante = 0 THEN dbo.fnTagDateTimeFmt('ReferenceDate', @AntecedenteFecha, 'AAAA-MM-DD') ELSE '' END+
	     '</orderIdentification>'

--      IF @Gigante = 0
      SELECT '<AdditionalInformation>'+
--               '<referenceIdentification'+dbo.fnXML('type', 'BT')+'>'+ISNULL(@Serie, '')+'</referenceIdentification>'+
               '<referenceIdentification'+dbo.fnXML('type', 'ATZ')+'>'+CONVERT(varchar(20), ISNULL(@noAprobacion, 0))+'</referenceIdentification>'+
             '</AdditionalInformation>'

      IF /*@Gigante = 0 AND*/ NULLIF(RTRIM(@Recibo), '') IS NOT NULL AND @ReciboFecha IS NOT NULL
        SELECT '<DeliveryNote>'+
                 dbo.fnTag('referenceIdentification', @Recibo)+
	         CASE WHEN @ComercialMexicana = 1 THEN dbo.fnTagDatetime('ReferenceDate', @Fecha) ELSE dbo.fnTagDatetimeFmt('ReferenceDate', @Fecha, 'AAAA-MM-DD') END+
               '</DeliveryNote>'

--      IF @Gigante = 0

      SELECT '<buyer>'
        SELECT '<gln>'+ISNULL(@ClienteGLN,'')+'</gln>'

        IF @Gigante = 0 AND @DepartamentoClave IS NOT NULL
        SELECT '<contactInformation>'+
	         '<personOrDepartmentName>'+
                   dbo.fnTag('text', LEFT(@DepartamentoClave, 35))+
	         '</personOrDepartmentName>'+
               '</contactInformation>'
 
      SELECT '</buyer>'

      SELECT '<seller>'+
--               CASE WHEN @Gigante = 0 THEN dbo.fnTag('gln', @EmpresaGLN) ELSE '' END+
                dbo.fnTag('gln', @EmpresaGLN)+
               '<alternatePartyIdentification'+dbo.fnXML('type', 'SELLER_ASSIGNED_IDENTIFIER_FOR_A_PARTY')+'>'+ISNULL(@ProveedorIDDeptoEnviarA, @ProveedorID)+'</alternatePartyIdentification>'+
             '</seller>'

      IF /*@Gigante = 0 AND*/ @Liverpool = 0
        SELECT '<shipTo>'+
                 dbo.fnTag('gln', @EnviarAGLN)+
                 CASE WHEN @Gigante = 0 THEN
                 '<nameAndAddress>'+
                   dbo.fnTag('name', LEFT(@EnviarANombre,35))+
                   dbo.fnTag('streetAddressOne', LEFT(@EnviarADireccion+' '+@EnviarADireccionNumero+' '+ISNULL(@EnviarADireccionNumeroInt,'')+' '+ISNULL(@EnviarAColonia,''), 35))+
                   dbo.fnTag('city', LEFT(@EnviarAEstado, 35))+
                   dbo.fnTag('postalCode', LEFT(@EnviarACodigoPostal, 9))+
                 '</nameAndAddress>'
                 ELSE '' END+
               '</shipTo>'

        SELECT '<currency'+dbo.fnXML('currencyISOCode', @MonedaClave)+'>'+
                 dbo.fnTag('currencyFunction', 'BILLING_CURRENCY')+
                 dbo.fnTagFloat('rateOfChange', @TipoCambio)+
               '</currency>'

      IF @Gigante = 0 AND @Liverpool = 0
      BEGIN
        SELECT '<paymentTerms'+
               dbo.fnXML('paymentTermsEvent', CASE @TipoCondicion WHEN 'Contado' THEN 'DATE_OF_INVOICE' ELSE 'EFFECTIVE_DATE' END)+
               dbo.fnXML('PaymentTermsRelationTime', 'REFERENCE_AFTER')+'>'+
               '<netPayment'+dbo.fnXML('netPaymentTermsType', 'BASIC_NET')+'>'+
                 '<paymentTimePeriod>'+
                 '<timePeriodDue'+dbo.fnXML('timePeriod', 'DAYS')+'>'+
                   dbo.fnTagInt('value', @DiasVencimiento)+
                 '</timePeriodDue>'+
                 '</paymentTimePeriod>'+
               '</netPayment>'    
        IF @ProntoPago = 1
          SELECT '<discountPayment'+dbo.fnXML('discountType', 'ALLOWANCE_BY_PAYMENT_ON_TIME')+'>'+
                   dbo.fnTagFloat('percentage', @DescuentoProntoPago)+
                 '</discountPayment>'
        SELECT '</paymentTerms>'
      END

      IF @Gigante = 0 
        SELECT '<allowanceCharge'+dbo.fnXML('settlementType', CASE WHEN @Liverpool = 1 THEN 'BILL_BACK' ELSE 'OFF_INVOICE' END)+dbo.fnXML('allowanceChargeType', 'ALLOWANCE_GLOBAL')+'>'+
                 dbo.fnTag('specialServicesType', ISNULL(NULLIF(RTRIM(@DescuentoClave), ''), 'AJ'))+
                 '<monetaryAmountOrPercentage>'+
                   '<rate'+dbo.fnXML('base', 'INVOICE_VALUE')+'>'+
                     dbo.fnTagFloat('percentage', ISNULL(@DescuentoGlobal, 0.0))+
                   '</rate>'+
                 '</monetaryAmountOrPercentage>'+
               '</allowanceCharge>'
  END ELSE
  IF @Layout LIKE '%INTERFACTURA%'
  BEGIN
    SELECT '<Addenda>'+
             CASE WHEN @MovTipo IN ('VTAS.D','CXC.NC') THEN '<if:NotaCreditoInterfactura' 
                  WHEN @MovTipo IN ('VTAS.B','CXC.CA') THEN '<if:NotaDebitoInterfactura' 
                  ELSE '<if:FacturaInterfactura' END+
             dbo.fnXML('xmlns:if', 'https://www.interfactura.com/Schemas/Documentos')+
             dbo.fnXML('TipoDocumento', CASE WHEN @MovTipo IN ('VTAS.D','CXC.NC') THEN 'NotaCredito' WHEN @MovTipo IN ('VTAS.B','CXC.CA') THEN 'NotaDebito' ELSE 'Factura' END)+
--             dbo.fnXML('TipoDocumento', CASE @MovTipo WHEN 'VTAS.D' THEN 'NotaCredito' WHEN 'VTAS.B' THEN 'NotaDebito' ELSE 'Factura' END)+
             '>'
    SELECT '<if:Emisor'+dbo.fnXML('RI', @EmisorID)+dbo.fnXML('NumProveedor', @ProveedorID)+'/>'
    SELECT '<if:Receptor'+dbo.fnXML('RI', @ReceptorID)+'/>'
    SELECT '<if:Encabezado'

    IF @Elektra = 1
    BEGIN
    SELECT  dbo.fnXMLDateTime('Fecha',  @Fecha)+
	    dbo.fnXML('NumProveedor', @ProveedorID)+
	    dbo.fnXML('MonedaDoc',  @monedaClave)+
	    dbo.fnXMLFloat('IVAPCT',  ROUND(@Impuesto1Promedio,2))+
	    dbo.fnXMLmoney('Iva',  @Impuesto1Total)+
	    dbo.fnXMLMoney('SubTotal',  @SubTotal)+
	    dbo.fnXMLMoney('Total',  @Total)+
	    dbo.fnXML(CASE @MovTipo 
                      WHEN 'VTAS.D' THEN 'FolioFactura' 
                      WHEN 'CXC.NC' THEN 'FolioFactura' 
                      WHEN 'VTAS.B' THEN 'FolioFactura' 
                      WHEN 'CXC.CA' THEN 'FolioFactura' 
                      ELSE 'FolioOrdenCompra' END, @Antecedente)+
	    dbo.fnXMLFloat('PorcentajeDescuento', @DescuentoGlobal)+
	    dbo.fnXMLMoney('TotalDescuento', @ImporteDescuentoGlobal)
    END
/*
            dbo.fnXML('PorcentajeMerma', NULL)
	    dbo.fnXML('TotalMerma', NULL)
	    dbo.fnXML('PorcentajeDescuentoPromo', NULL)
	    dbo.fnXML('Descuento', NULL)
*/


     IF @EHB = 1
     BEGIN
-- Este bloque esta basado en el archivo ejemplo.xml mandado por EHB, difiere con el esquema Factura.xsd
        SELECT 
	    dbo.fnXMLBigint('Folio', @Folio)+     --???
	    dbo.fnXML('MonedaDoc',  @MonedaClave)+   --- 'MXN'
	    dbo.fnXML('MonedaDesc',  CASE @MonedaClave WHEN 'MXN' THEN 'Pesos' WHEN 'USD' THEN 'Dolares' END)+
	    dbo.fnXMLint('FolioAvisoPrefactura',  CASE WHEN dbo.fnEsNumerico(@OrdenCompra) = 1 THEN @OrdenCompra ELSE NULL END)+--???
	    dbo.fnXMLDateTime('Fecha',  @Fecha)+
	    dbo.fnXML('CondicionPago',  @Condicion)+
	    dbo.fnXMLMoney('SubTotal',  @SubTotal)+
	    dbo.fnXMLmoney('Iva',  @Impuesto1Total)+
	    dbo.fnXMLMoney('Total',  @Total)+
	    dbo.fnXMLFloat('IVAPCT',  ROUND(@Impuesto1Promedio,2))+
	    dbo.fnXML('NumProveedor', @ProveedorID)+
	    dbo.fnXML('NumSucursal',  @EnviarAClave)+
	    dbo.fnXMLDateTime('FechaPago',  @Vencimiento)+
	    dbo.fnXML('DomicilioSucursalCliente',  LEFT(@EnviarADireccion+' '+@EnviarADireccionNumero+' '+ISNULL(@EnviarADireccionNumeroInt,''), 50))+
	    dbo.fnXML('ColoniaSucursalCliente',  LEFT(@EnviarAColonia, 30))+
	    dbo.fnXML('MunicipioSucursalCliente',  LEFT(@EnviarADelegacion, 20))+
	    dbo.fnXML('CPSucursalCliente',  LEFT(@EnviarACodigoPostal, 10))+
	    dbo.fnXML('Moneda',  @MonedaClave)+   --- 'MXN'
	    dbo.fnXML('DepartamentoCliente',  @DepartamentoClave)+
	    dbo.fnXML('NoAprobacion',  @Noaprobacion)
	    ---dbo.fnXML('Serie',  @Serie)+
            ---dbo.fnXMLBigint('FolioSerie', @Folio + '-' + @Serie)+--???

--En caso de que el xml a generar este basado en el esquema Factura.xsd habra que descomentar esta seccion y comentar la anterior
/*
        SELECT
	    dbo.fnXMLMoney('Total',  @Total)+
	    dbo.fnXMLMoney('SubTotal',  @SubTotal)+
	    dbo.fnXML('Serie',  @Serie)+
	    dbo.fnXML('NumSucursal',  @EnviarAClave)+	
	    dbo.fnXML('NumProveedor', @ProveedorID)+
	    dbo.fnXML('MunicipioSucursalCliente',  LEFT(@EnviarADelegacion, 20))+
	    dbo.fnXML('MonedaDesc',  @Moneda)+
	    dbo.fnXML('Moneda',  @MonedaClave)+
	    dbo.fnXMLmoney('Iva',  @Impuesto1Total)+
	    dbo.fnXMLFloat('IVAPCT',  ROUND(@Impuesto1Promedio,2))+
        dbo.fnXMLBigint('FolioSerie', @Folio)+--???
	    dbo.fnXMLint('FolioAvisoPrefactura',  @OrdenCompra)+--???
        dbo.fnXMLBigint('Folio', @Folio)+--???
	    dbo.fnXMLDateTime('FechaPago',  @Vencimiento)+
	    dbo.fnXML('DomicilioSucursalCliente',  LEFT(@EnviarADireccion+' '+@EnviarADireccionNumero+' '+ISNULL(@EnviarADireccionNumeroInt,''), 50))+
	    dbo.fnXML('DepartamentoCliente',  @DepartamentoClave)+
	    dbo.fnXML('CondicionPago',  @Condicion)+
	    dbo.fnXML('ColoniaSucursalCliente',  LEFT(@EnviarAColonia, 30))+
	    dbo.fnXML('NoAprobacion',  @Noap	robacion)+
	    dbo.fnXML('CPSucursalCliente',  LEFT(@EnviarACodigoPostal, 10))
*/
      END
     /*

	    dbo.fnXML('LocalidadSucursalCliente',  LEFT(@EnviarAPoblacion, 20))+
	    dbo.fnXML('MunicipioSucursalCliente',  LEFT(@EnviarADelegacion, 20))+
	    dbo.fnXML('EstadoSucursalCliente',  LEFT(@EnviarAEstado, 20))+

	    dbo.fnXML('FolioAvisoPago',  @OrdenCompra)+

	    dbo.fnXML('NumCliente',  @Cliente)+
	    dbo.fnXML('Pedido',  @OrigenID)+
	    dbo.fnXML('CondicionesVenta',  @Condicion)+
	    dbo.fnXML('DomicilioEmbarque',  LEFT(@SucursalDireccion+' '+@SucursalDireccionNumero+' '+ISNULL(@SucursalDireccionNumeroInt,''), 50))+
	    dbo.fnXML('ColoniaProveedor',  LEFT(@SucursalColonia, 30))+
	    dbo.fnXML('LocalidadProveedor',  LEFT(@SucursalPoblacion, 20))+
	    dbo.fnXML('MunicipioProveedor',  LEFT(@SucursalDelegacion, 20))+
	    dbo.fnXML('EstadoProveedor',  LEFT(@SucursalEstado, 20))+
	    dbo.fnXML('PaisProveedor',  LEFT(@SucursalPais, 20))+
	    dbo.fnXML('LineaTransporteProveedor',  LEFT(@FormaEnvio, 30))+
	    dbo.fnXML('FolioNotaRecepcion',  @Recibo)+
	    dbo.fnXML('NumSucursalNotaRecepcion',  NULL)+
	    dbo.fnXMLMoney('IEPS25',  (SELECT SUM(Impuesto2Total) FROM VentaTCalc WHERE ID = @ID AND Impuesto2 = 25.0))+
	    dbo.fnXMLMoney('IEPS30',  (SELECT SUM(Impuesto2Total) FROM VentaTCalc WHERE ID = @ID AND Impuesto2 = 30.0))+
	    dbo.fnXMLMoney('IEPS50',  (SELECT SUM(Impuesto2Total) FROM VentaTCalc WHERE ID = @ID AND Impuesto2 = 50.0))+

	    dbo.fnXMLFloat('Cantidad',  @CantidadTotal)+
	    dbo.fnXMLFloat('TotalBrutoEmpaques',  NULL)+
	    dbo.fnXMLFloat('TotalDescuentos',  NULL)+
	    dbo.fnXMLDateTime('FechaRecepcion',  @ReciboFecha)+
	    dbo.fnXMLFloat('TotalNetoEmpaques',  NULL)
*/
     SELECT '>'

  END ELSE
  IF @Layout = 'HOME DEPOT'
  BEGIN
    SELECT '<Addenda>'+
             '<Encabezado'+
              dbo.fnXML('oc',@OrdenCompra)+
              dbo.fnXMLBigint('folio', @Folio)+
              dbo.fnXML('serie', @Serie)+
              dbo.fnXMLDatetimeFmt('fecha', @Fecha, 'DD/MM/AAAA')+
	      dbo.fnXML('proveedor', @ProveedorID)+
              dbo.fnXMLMoney('subtotal', @SubTotal)+
	      dbo.fnXMLmoney('iva',  @Impuesto1Total)+
              dbo.fnXMLMoney('total', @Total)+
	      dbo.fnXML('divisa',  'PESO')+
	      dbo.fnXMLFloat('tipoCambio',  @TipoCambio)+
              dbo.fnXMLMoney('descuento1', @DescuentosTotales)+
              dbo.fnXMLMoney('descuento2', NULL)+
              '>'
  END ELSE
  IF @Layout LIKE 'SORIANA%'
  BEGIN
    SELECT '<Addenda>'
      SELECT '<DSCargaRemisionProv>'
        SELECT '<Remision'
        IF @Layout = 'SORIANA CEDIS'
          SELECT dbo.fnXML('Id', 'Remision1')+
                 dbo.fnXMLInt('RowOrder',1)

        SELECT '>'+
               dbo.fnTag('Proveedor', LEFT(@ProveedorID, 35))+
               dbo.fnTag('Remision', LEFT(ISNULL(@Serie,'')+Convert(varchar,@Folio), 35))+
               dbo.fnTagInt('Consecutivo', 0)+
               dbo.fnTagDatetime('FechaRemision', @Fecha)+
--               dbo.fnTagDatetimeFMT('FechaRemision', @EmbarqueFecha, 'AAAA-MM-DD')+
               dbo.fnTag('Tienda', @EnviarAClave)+
               dbo.fnTagInt('TipoMoneda', 1)+ --1=Pesos
               dbo.fnTagInt('TipoBulto', 1)+ --1=Cajas
               dbo.fnTagInt('EntregaMercancia', @EntregaMercancia)+
               dbo.fnTag('CumpleReqFiscales', 'true')+
               dbo.fnTagFloat('CantidadBultos', @CantidadTotal)+
               dbo.fnTagMoney('Subtotal', @SubTotal )+
               dbo.fnTagMoney('Descuentos', ISNULL(@DescuentosTotales,0.00))+
               dbo.fnTagMoney('IEPS', ISNULL(@Impuesto2total,0.00) )+
               dbo.fnTagMoney('IVA', @Impuesto1Total )+
               dbo.fnTagMoney('OtrosImpuestos', 0.00 )+
               dbo.fnTagMoney('Total', @Total)+
               dbo.fnTagFloat('CantidadPedidos', 1 )+
               dbo.fnTagDateTime('FechaEntregaMercancia', @ReciboFecha)

        IF @Layout = 'SORIANA TIENDA'
          SELECT --dbo.fnTagDateTimeFmt('FechaEntregaMercancia', @ReciboFecha, 'AAAA-MM-DD' )
                 dbo.fnTag('EmpaqueEnCajas', '' )+
                 dbo.fnTag('EmpaqueEnTarimas', '' )+
                 dbo.fnTagFloat('CantidadCajasTarimas', NULL)

        SELECT '</Remision>'

        SELECT '<Pedidos'
        IF @Layout = 'SORIANA CEDIS'
          SELECT dbo.fnXML('Id','Pedido1')+
                 dbo.fnXMLInt('RowOrder',1)
        SELECT '>'+
               dbo.fnTag('Proveedor', LEFT(@ProveedorID, 35))+
               dbo.fnTag('Remision', LEFT(LEFT(ISNULL(@Serie,'')+Convert(varchar,@Folio), 35), 35))+
               dbo.fnTag('FolioPedido', @OrdenCompra)+
               dbo.fnTag('Tienda', @EnviarAClave)+
               dbo.fnTag('CantidadArticulos', @NumeroArticulos)
        SELECT '</Pedidos>'
 
  END ELSE
  IF @Layout = 'FEMSA'
  BEGIN
    SELECT '<Addenda>'
      SELECT '<Documento>'
        SELECT '<FacturaFemsa>'
          SELECT dbo.fnTag('noVersAdd', @AddendaVersion)+
                 dbo.fnTag('claseDoc', CASE @MovTipo WHEN  'VTAS.F' THEN 1 ELSE NULL END)+
                 dbo.fnTag('noSociedad', @receptorID)+
                 dbo.fnTag('noProveedor', @ProveedorID)+
                 dbo.fnTag('noPedido', @OrdenCompra)+
                 dbo.fnTag('moneda', @MonedaClave)+
                 dbo.fnTag('noEntrada', @Recibo)+
                 dbo.fnTag('noRemision', @Embarque)+
--                 dbo.fnTag('noSocio', @DepartamentoClave)+
                 '<noSocio>'+ISNULL(@DepartamentoClave,'')+'</noSocio>'+
--                 dbo.fnTag('centroCostos', NULL)+
                 '<centroCostos>'+'</centroCostos>'+
--                 dbo.fnTag('iniPerLiq', NULL)+
                 '<iniPerLiq>'+'</iniPerLiq>'+
--                 dbo.fnTag('finPerLiq', NULL)+
                 '<finPerLiq>'+'</finPerLiq>'+
--                 dbo.fnTag('retencion1', NULL)+
                 '<retencion1>'+'</retencion1>'+
--                 dbo.fnTag('retencion2', NULL)+
                 '<retencion2>'+'</retencion2>'+
--                 dbo.fnTag('retencion3', NULL)+
                 '<retencion3>'+'</retencion3>'+
--                 dbo.fnTag('email', @emailCobrador)
                 '<email>'+ISNULL(@emailCobrador,'')+'</email>'
        SELECT '</FacturaFemsa>'
      SELECT '</Documento>'
    SELECT '</Addenda>'
  END ELSE
  IF @Layout = 'Detallista'
  BEGIN
    SELECT '<Complemento>'

    SELECT '<detallista:detallista'
    SELECT dbo.fnXML('type', 'SimpleInvoiceType')+
           dbo.fnXML('documentStructureVersion', 'AMC8.1')+
           dbo.fnXML('documentStatus', CASE WHEN @Estatus='CANCELADO' THEN 'DELETE' ELSE 'ORIGINAL' END)+
           dbo.fnXML('contentVersion', '1.3.1')+
           '>'

        SELECT '<detallista:requestForPaymentIdentification>'+
                 dbo.fnTagXSD('detallista','entityType', CASE @MovTipo WHEN 'VTAS.D' THEN 'CREDIT_NOTE' WHEN 'VTAS.B' THEN 'DEBIT_NOTE' ELSE 'INVOICE' END)+
                 --dbo.fnTagXSD('detallista','uniqueCreatorIdentification', @MovID)+
               '</detallista:requestForPaymentIdentification>'

      SELECT '<detallista:specialInstruction'+dbo.fnXML('code','ZZZ')+'>'+
                dbo.fnTagXSD('detallista','text', RTRIM(@ImporteEnLetra)+' M.N.')+
              '</detallista:specialInstruction>'

      SELECT '<detallista:orderIdentification>'+
             '<detallista:referenceIdentification'+dbo.fnXML('type', 'ON')+'>'+ISNULL(@Antecedente, '')+'</detallista:referenceIdentification>'+
             dbo.fnTagDatetimeFmtXSD('detallista','ReferenceDate', @AntecedenteFecha, 'AAAA-MM-DD')+
             '</detallista:orderIdentification>'

      SELECT '<detallista:AdditionalInformation>'+
               '<detallista:referenceIdentification'+dbo.fnXML('type', 'ATZ')+'>'+CONVERT(varchar(20), ISNULL(@noAprobacion, 0))+'</detallista:referenceIdentification>'+
             '</detallista:AdditionalInformation>'

      IF NULLIF(RTRIM(@Recibo), '') IS NOT NULL AND @ReciboFecha IS NOT NULL
        SELECT '<detallista:DeliveryNote>'+
                 dbo.fnTagXSD('detallista','referenceIdentification', @Recibo)+
	             dbo.fnTagDatetimeFmtXSD('detallista','ReferenceDate', @ReciboFecha, 'AAAA-MM-DD')+
               '</detallista:DeliveryNote>'

      SELECT '<detallista:buyer>'
        SELECT '<detallista:gln>'+ISNULL(@ClienteGLN,'')+'</detallista:gln>'

        IF @DepartamentoClave IS NOT NULL
        SELECT '<detallista:contactInformation>'+
	         '<detallista:personOrDepartmentName>'+
                   dbo.fnTagXSD('detallista','text', LEFT(@DepartamentoClave, 35))+
	         '</detallista:personOrDepartmentName>'+
             '</detallista:contactInformation>'
      SELECT '</detallista:buyer>'

      SELECT '<detallista:seller>'+
                dbo.fnTagXSD('detallista','gln', @EmpresaGLN)+
               '<detallista:alternatePartyIdentification'+dbo.fnXML('type', 'SELLER_ASSIGNED_IDENTIFIER_FOR_A_PARTY')+'>'+ISNULL(@ProveedorIDDeptoEnviarA, @ProveedorID)+'</detallista:alternatePartyIdentification>'+
             '</detallista:seller>'


      IF @Liverpool = 0
        SELECT '<detallista:shipTo>'+
                 dbo.fnTagXSD('detallista','gln', @EnviarAGLN)+
                 '<detallista:nameAndAddress>'+
                   dbo.fnTagXSD('detallista','name', LEFT(@EnviarANombre,35))+
                   dbo.fnTagXSD('detallista','streetAddressOne', LEFT(@EnviarADireccion+' '+@EnviarADireccionNumero+' '+ISNULL(@EnviarADireccionNumeroInt,'')+' '+ISNULL(@EnviarAColonia,''), 35))+
                   dbo.fnTagXSD('detallista','city', LEFT(@EnviarAEstado, 35))+
                   dbo.fnTagXSD('detallista','postalCode', LEFT(@EnviarACodigoPostal, 9))+
                 '</detallista:nameAndAddress>'+
               '</detallista:shipTo>'

        SELECT '<detallista:currency'+dbo.fnXML('currencyISOCode', @MonedaClave)+'>'+
                 dbo.fnTagXSD('detallista','currencyFunction', 'BILLING_CURRENCY')+
                 dbo.fnTagFloatXSD('detallista','rateOfChange', @TipoCambio)+
               '</detallista:currency>'

/*
        SELECT '<detallista:paymentTerms'+
               dbo.fnXML('paymentTermsEvent', CASE @TipoCondicion WHEN 'Contado' THEN 'DATE_OF_INVOICE' ELSE 'EFFECTIVE_DATE' END)+
               dbo.fnXML('PaymentTermsRelationTime', 'REFERENCE_AFTER')+'>'+
               '<detallista:netPayment'+dbo.fnXML('netPaymentTermsType', 'BASIC_NET')+'>'+
                 '<detallista:paymentTimePeriod>'+
                 '<detallista:timePeriodDue'+dbo.fnXML('timePeriod', 'DAYS')+'>'+
                   dbo.fnTagIntXSD('detallista','value', @DiasVencimiento)+
                 '</detallista:timePeriodDue>'+
                 '</detallista:paymentTimePeriod>'+
               '</detallista:netPayment>'    
        IF @ProntoPago = 1
          SELECT '<detallista:discountPayment'+dbo.fnXML('discountType', 'ALLOWANCE_BY_PAYMENT_ON_TIME')+'>'+
                   dbo.fnTagFloatXSD('detallista','percentage', @DescuentoProntoPago)+
                 '</detallista:discountPayment>'
        SELECT '</detallista:paymentTerms>'

*/
        SELECT '<detallista:allowanceCharge'+dbo.fnXML('settlementType', CASE WHEN @Liverpool = 1 THEN 'BILL_BACK' ELSE 'OFF_INVOICE' END)+dbo.fnXML('allowanceChargeType', 'ALLOWANCE_GLOBAL')+'>'+
                 dbo.fnTagXSD('detallista','specialServicesType', ISNULL(NULLIF(RTRIM(@DescuentoClave), ''), 'AJ'))+
                 '<detallista:monetaryAmountOrPercentage>'+
                   '<detallista:rate'+dbo.fnXML('base', 'INVOICE_VALUE')+'>'+
                     dbo.fnTagFloatXSD('detallista','percentage', ISNULL(@DescuentoGlobal, 0.0))+
                   '</detallista:rate>'+
                 '</detallista:monetaryAmountOrPercentage>'+
               '</detallista:allowanceCharge>'
  END ELSE
  IF @LayOut = 'ASPEL'
  BEGIN
    SELECT '<Addenda>'
    SELECT dbo.fnTag('Numero', @MovID)+
            dbo.fnTag('clave', @Cliente)+
            dbo.fnTag('NoVendedor', @Agente)
    SELECT '<Obspartidas>'
  END ELSE
  IF @Layout = 'EDIFACT'
  BEGIN
    INSERT #EDI SELECT 1, '<Datos Identificacion Mensaje>', 'UNB'
    INSERT #EDI SELECT 1, 'Tipo Mensaje', 'UNOA:2'
    INSERT #EDI SELECT 1, 'Emisor ID', @EmisorID
    INSERT #EDI SELECT 1, 'Receptor ID', @ReceptorID
    INSERT #EDI SELECT 1, 'Fecha Envio', dbo.fnEDIDatetime(GETDATE())
    INSERT #EDI SELECT 1, 'Referencia Envio', dbo.fnEDI(@ReferenciaEnvio)
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Cabecera Mensaje>', 'UNH'
    INSERT #EDI SELECT 1, 'Referencia Mensaje', dbo.fnEDI(RTRIM(@Modulo)+CONVERT(varchar, @ID))
    INSERT #EDI SELECT 1, 'Tipo Mensaje', 'INVOIC:D:01B:UN:AMC002'
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Principio Mensaje>', 'BGM'
    INSERT #EDI SELECT 1, 'Nombre Documento', CASE @MovTipo WHEN 'VTAS.D' THEN '381' WHEN 'VTAS.B' THEN '383' ELSE '380' END
    INSERT #EDI SELECT 1, 'Numero Documento', CONVERT(varchar(20), @Folio)
    INSERT #EDI SELECT 1, 'Funcion Mensaje', CASE WHEN @Estatus = 'CANCELADO' THEN '1' ELSE '9' END
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Fecha Hora>', 'DTM'
    INSERT #EDI SELECT 1, 'Fecha Hora Documento', '137:'+CONVERT(varchar, @Fecha, 112)+':102'
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Texto Libre>', 'FTX'
    INSERT #EDI SELECT 1, 'Clave Importe con Letra', 'ZZZ'
    INSERT #EDI SELECT 0, '???', ''
    INSERT #EDI SELECT 0, '???', ''
    INSERT #EDI SELECT 1, 'Importe con Letra', dbo.fnEDIMax(dbo.fnEDI(@ImporteEnLetra), 512)
    INSERT #EDI SELECT 1, 'Idioma', 'ES'
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT CASE WHEN NULLIF(LTRIM(@Recibo),'') IS NOT NULL THEN 0 ELSE 1 END, '<Referencia>', 'RFF'
    INSERT #EDI SELECT CASE WHEN NULLIF(LTRIM(@Recibo),'') IS NOT NULL THEN 0 ELSE 1 END, 'Antecedente', 'ON:'+dbo.fnEDI(NULLIF(@Antecedente, ''))
    INSERT #EDI SELECT CASE WHEN NULLIF(LTRIM(@Recibo),'') IS NOT NULL THEN 0 ELSE 1 END, '<Fin>', ''

    INSERT #EDI SELECT CASE WHEN NULLIF(LTRIM(@Recibo),'') IS NOT NULL THEN 0 ELSE 1 END, '<Fecha Hora>', 'DTM'
    INSERT #EDI SELECT CASE WHEN NULLIF(LTRIM(@Recibo),'') IS NOT NULL THEN 0 ELSE 1 END, 'Antecedente Fecha', '171:'+CONVERT(varchar, @AntecedenteFecha, 112)+':102'
    INSERT #EDI SELECT CASE WHEN NULLIF(LTRIM(@Recibo),'') IS NOT NULL THEN 0 ELSE 1 END, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Referencia>', 'RFF'
    INSERT #EDI SELECT 0, 'Serie', 'BT:'+dbo.fnEDI(ISNULL(@Serie, ''))
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Referencia>', 'RFF'
    INSERT #EDI SELECT 1, 'Clave No Aprobacion', 'ATZ:'+CONVERT(varchar(20), NULLIF(@noAprobacion, 0))
    INSERT #EDI SELECT 1, '<Fin>', ''

    IF NULLIF(@Recibo, '') IS NOT NULL
    BEGIN
      INSERT #EDI SELECT 1, '<Referencia>', 'RFF'
      INSERT #EDI SELECT 1, 'Recibo', 'DQ:'+dbo.fnEDI(NULLIF(@Recibo, ''))
      INSERT #EDI SELECT 1, '<Fin>', ''

      INSERT #EDI SELECT 1, '<Fecha Hora>', 'DTM'
      INSERT #EDI SELECT 1, 'Fecha Recibo', '171:'+CONVERT(varchar, @ReciboFecha, 112)+':102'
      INSERT #EDI SELECT 1, '<Fin>', ''
    END

    INSERT #EDI SELECT 1, '<Nombre y Direccion>', 'NAD'
    INSERT #EDI SELECT 1, 'Receptor', 'BY'
    INSERT #EDI SELECT 1, 'Receptor - GLN', NULLIF(RTRIM(dbo.fnEDI(@ClienteGLN)),'')+'::9'
    INSERT #EDI SELECT 0, '???', ''
    INSERT #EDI SELECT 1, 'Receptor - Nombre', dbo.fnEDIMax(dbo.fnEDI(@ClienteNombre), 35)
    INSERT #EDI SELECT 1, 'Receptor - Direccion', dbo.fnEDI(LEFT(NULLIF(RTRIM(@ClienteDireccion),'')+' '+NULLIF(RTRIM(@ClienteDireccionNumero),'')+' '+ISNULL(@ClienteDireccionNumeroInt,''), 35)) + ':' +NULLIF(dbo.fnEDI(LEFT(@ClienteColonia, 35)),'')
--    INSERT #EDI SELECT 0, 'Receptor - Colonia', dbo.fnEDI(LEFT(@ClienteColonia, 35))
    INSERT #EDI SELECT 0, 'Receptor - Delegacion', dbo.fnEDI(LEFT(@ClienteDelegacion, 35))
    INSERT #EDI SELECT 0, 'Receptor - Estado', dbo.fnEDI(LEFT(@ClienteEstado, 9))
    INSERT #EDI SELECT 0, 'Receptor - Codigo Postal', dbo.fnEDI(LEFT(@ClienteCodigoPostal, 17))
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Referencia>', 'RFF'
    INSERT #EDI SELECT 1, 'Receptor - RFC', 'GN:'+dbo.fnEDI(NULLIF(@ClienteRFC, ''))
    INSERT #EDI SELECT 1, '<Fin>', ''

    IF NULLIF(RTRIM(@ClienteIEPS), '') IS NOT NULL
    BEGIN
      INSERT #EDI SELECT 1, '<Referencia>', 'RFF'
      INSERT #EDI SELECT 1, 'Receptor - IEPS', 'ZZZ:'+dbo.fnEDI(NULLIF(@ClienteIEPS, ''))
      INSERT #EDI SELECT 1, '<Fin>', ''
    END

    /*IF NULLIF(@DepartamentoClave, '') IS NOT NULL
    BEGIN
      INSERT #EDI SELECT 1, '<Contacto>', 'CTA'
      INSERT #EDI SELECT 1, 'Clave Contacto', 'PD'
      INSERT #EDI SELECT 1, 'Departamento y Nombre Contacto', dbo.fnEDIMax(dbo.fnEDI(@DepartamentoClave), 17)+':'+dbo.fnEDIMax(dbo.fnEDI(ISNULL(@DepartamentoContacto, '')), 35)
      INSERT #EDI SELECT 1, '<Fin>', ''
    END*/
    INSERT #EDI SELECT 1, '<Nombre y Direccion>', 'NAD'
    INSERT #EDI SELECT 1, 'Emisor', 'SU'
    INSERT #EDI SELECT 0, 'Emisor - GLN', ISNULL(RTRIM(dbo.fnEDI(@EmpresaGLN)),'')+CASE WHEN NULLIF(RTRIM(dbo.fnEDI(@EmpresaGLN)),'') IS NULL THEN '' ELSE '::9' END
    INSERT #EDI SELECT 0, '???', ''
    INSERT #EDI SELECT 1, 'Emisor - Nombre', dbo.fnEDIMax(dbo.fnEDI(@EmpresaNombre), 35)
    INSERT #EDI SELECT 1, 'Emisor - Direccion', dbo.fnEDI(LEFT(NULLIF(RTRIM(@EmpresaDireccion),'')+' '+NULLIF(RTRIM(@EmpresaDireccionNumero),'')+' '+ISNULL(@EmpresaDireccionNumeroInt,''), 35)) + ':' +NULLIF(dbo.fnEDI(LEFT(@EmpresaColonia, 35)),'')
    INSERT #EDI SELECT 0, 'Emisor - Delegacion', dbo.fnEDI(LEFT(@EmpresaDelegacion, 35))
    INSERT #EDI SELECT 0, 'Emisor - Estado', dbo.fnEDI(LEFT(@EmpresaEstado, 9))
    INSERT #EDI SELECT 0, 'Emisor - Codigo Postal', dbo.fnEDI(LEFT(@EmpresaCodigoPostal, 17))
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Referencia>', 'RFF'
    INSERT #EDI SELECT 1, 'Emisor - RFC', 'GN:'+dbo.fnEDI(NULLIF(@EmpresaRFC, ''))
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Referencia>', 'RFF'
    INSERT #EDI SELECT 1, 'Proveedor ID', 'IA:'+ dbo.fnEDI(NULLIF(RTRIM(ISNULL(@ProveedorIDDeptoEnviarA, @ProveedorID)), ''))
    INSERT #EDI SELECT 1, '<Fin>', ''

    IF @Sucursal > 0
    BEGIN
      INSERT #EDI SELECT 1, '<Nombre y Direccion>', 'NAD'
      INSERT #EDI SELECT 1, 'Sucursal', 'II'
--      INSERT #EDI SELECT 1, 'Sucursal - GLN', NULLIF(RTRIM(dbo.fnEDI(@SucursalGLN)),'')+'::9'
      INSERT #EDI SELECT 0, 'Sucursal - GLN', ISNULL(RTRIM(dbo.fnEDI(@SucursalGLN)),'')+CASE WHEN NULLIF(RTRIM(dbo.fnEDI(@SucursalGLN)),'') IS NULL THEN '' ELSE '::9' END
      INSERT #EDI SELECT 0, '???', ''
      INSERT #EDI SELECT 1, 'Sucursal - Nombre', dbo.fnEDIMax(dbo.fnEDI(CASE WHEN @Sucursal = 0 THEN @EmpresaNombre ELSE @SucursalNombre END), 35)
      INSERT #EDI SELECT 1, 'Sucursal - Direccion', dbo.fnEDI(LEFT(NULLIF(RTRIM(@SucursalDireccion),'')+' '+NULLIF(RTRIM(@SucursalDireccionNumero),'')+' '+ISNULL(@SucursalDireccionNumeroInt,''), 35)) + ':' +NULLIF(dbo.fnEDI(LEFT(@SucursalColonia, 35)),'')
      INSERT #EDI SELECT 0, 'Sucursal - Delegacion', dbo.fnEDI(LEFT(@SucursalDelegacion, 35))
      INSERT #EDI SELECT 0, 'Sucursal - Estado', dbo.fnEDI(LEFT(@SucursalEstado, 9))
      INSERT #EDI SELECT 0, 'Sucursal - Codigo Postal', dbo.fnEDI(LEFT(@SucursalCodigoPostal, 17))
      INSERT #EDI SELECT 1, '<Fin>', ''
    END

    INSERT #EDI SELECT 1, '<Nombre y Direccion>', 'NAD'
    INSERT #EDI SELECT 1, 'EnviarA', 'ST'
    INSERT #EDI SELECT 1, 'EnviarA - GLN', NULLIF(RTRIM(dbo.fnEDI(@EnviarAGLN)),'')+'::9'
    INSERT #EDI SELECT 0, '???', ''
    INSERT #EDI SELECT 1, 'EnviarA - Nombre', dbo.fnEDIMax(dbo.fnEDI(@EnviarANombre), 35)
    INSERT #EDI SELECT 1, 'EnviarA - Direccion', dbo.fnEDI(LEFT(NULLIF(RTRIM(@EnviarADireccion),'')+' '+NULLIF(RTRIM(@EnviarADireccionNumero),'')+' '+ISNULL(@EnviarADireccionNumeroInt,''), 35)) + ':' +NULLIF(dbo.fnEDI(LEFT(@EnviarAColonia, 35)),'')
    INSERT #EDI SELECT 1, 'EnviarA - Delegacion', dbo.fnEDI(LEFT(@EnviarADelegacion, 35))
    INSERT #EDI SELECT 0, 'EnviarA - Estado', dbo.fnEDI(LEFT(@EnviarAEstado, 9))
    INSERT #EDI SELECT 0, 'EnviarA - Codigo Postal', dbo.fnEDI(LEFT(@EnviarACodigoPostal, 17))
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Divisas>', 'CUX'
    INSERT #EDI SELECT 1, 'Moneda', '2:'+NULLIF(dbo.fnEDI(@MonedaClave), '')+':4'
--    INSERT #EDI SELECT 1, 'Tipo Cambio', CONVERT(varchar(20), ROUND(@TipoCambio, 4))
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Condiciones Pago>', 'PAT'
    INSERT #EDI SELECT 1, 'Condicion Basico', '1'
    INSERT #EDI SELECT 0, '????', ''
    INSERT #EDI SELECT 1, 'Tiempo Pago', '5:3:D:'+CONVERT(varchar, @DiasVencimiento)
    INSERT #EDI SELECT 1, '<Fin>', ''

    IF @ProntoPago = 1
    BEGIN
      INSERT #EDI SELECT 1, '<Porcentaje>', 'PCD'
      INSERT #EDI SELECT 1, 'Porcentaje', '12:'+CONVERT(varchar(20), ROUND(@DescuentoProntoPago, 2))+':13'
      INSERT #EDI SELECT 1, '<Fin>', ''
    END

    IF NULLIF(@DescuentoGlobal, 0.0) IS NOT NULL
    BEGIN
      INSERT #EDI SELECT 1, '<Descuento Global>', 'ALC'
      INSERT #EDI SELECT 1, 'Tipo Descuento', 'A'
      INSERT #EDI SELECT 0, 'Imputacion Descuento', ''
      INSERT #EDI SELECT 0, '????', ''
      INSERT #EDI SELECT 0, '????', ''
      INSERT #EDI SELECT 1, 'Clave Descuento', dbo.fnEDI(NULLIF(@DescuentoClave, ''))
      INSERT #EDI SELECT 1, '<Fin>', ''

      INSERT #EDI SELECT 1, '<Porcentaje>', 'PCD'
      INSERT #EDI SELECT 1, 'Porcentaje', '1:'+CONVERT(varchar(20), ROUND(@DescuentoGlobal, 2))+':13'
      INSERT #EDI SELECT 1, '<Fin>', ''
    END
  END ELSE
  IF @Layout = 'CHEDRAUI'
  BEGIN
    INSERT #CFD SELECT 1, 'Encabezado 0', '[H0]'
    INSERT #CFD SELECT 1, 'Receptor - RFC', @ClienteRFC
    INSERT #CFD SELECT 1, 'Clave Emisor', @EmisorID
    INSERT #CFD SELECT 1, 'Version Addenda', @AddendaVersion
    INSERT #CFD SELECT 1, 'Ano Aprobacion', CONVERT(varchar(20), YEAR(@fechaAprobacion))
    INSERT #CFD SELECT 1, 'Numero Certificado', @noCertificado
    INSERT #CFD SELECT 0, 'Tipo Impresion', '0'		-- 0 = Electronica, 1 = Impresa
    INSERT #CFD SELECT 1, 'Tipo Envio', CASE WHEN @ModoPruebas = 1 THEN 'T' ELSE 'P' END
    INSERT #CFD SELECT 0, 'Etiqueta 1', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 2', NULL
    INSERT #CFD SELECT 0, 'Enter', '{@Enter}'

    INSERT #CFD SELECT 1, 'Encabezado 1', '[H1]'
    INSERT #CFD SELECT 1, 'Serie', @Serie
    INSERT #CFD SELECT 1, 'Folio', CONVERT(varchar(20), @Folio)
    INSERT #CFD SELECT 1, 'Numero Aprobacion', CONVERT(varchar(20), @noAprobacion)
    INSERT #CFD SELECT 1, 'Fecha Poliza', SUBSTRING(CONVERT(varchar, @Fecha, 126), 1, 19)
    INSERT #CFD SELECT 1, 'Antecedente', @Antecedente
    INSERT #CFD SELECT 1, 'Fecha Antecedente', SUBSTRING(CONVERT(varchar, @AntecedenteFecha, 126), 1, 19)
    INSERT #CFD SELECT 1, 'Forma Pago', @formaDePago
    INSERT #CFD SELECT 1, 'Dias Vencimiento', CONVERT(varchar(20), @DiasVencimiento)
    INSERT #CFD SELECT 1, 'Funcion', CASE WHEN @Estatus = 'CANCELADO' THEN 'C' ELSE 'O' END
    INSERT #CFD SELECT 1, 'Tipo Documento', CASE @MovTipo WHEN  'VTAS.D' THEN 'NOTA DE CREDITO' WHEN 'VTAS.D' THEN 'NOTA DE DEBITO' ELSE 'FACTURA COMERCIAL' END
    INSERT #CFD SELECT 0, '% Descuento Global 1', CONVERT(varchar(20), ROUND(@DescuentoGlobal, 2))
    INSERT #CFD SELECT 0, 'Descuento Global 1', @Descuento
    INSERT #CFD SELECT 0, '$ Descuento Global 1', CONVERT(varchar(20), ROUND(@ImporteDescuentoGlobal, 2))
    INSERT #CFD SELECT 0, '% Descuento Global 2', NULL	
    INSERT #CFD SELECT 0, 'Descuento Global 2', NULL	
    INSERT #CFD SELECT 0, '$ Descuento Global 2', NULL	
    INSERT #CFD SELECT 0, '% Descuento Global 3', NULL	
    INSERT #CFD SELECT 0, 'Descuento Global 3', NULL	
    INSERT #CFD SELECT 0, '$ Descuento Global 3', NULL	
    INSERT #CFD SELECT 1, 'Ano Aprobacion', CONVERT(varchar(20), YEAR(@fechaAprobacion))
    INSERT #CFD SELECT 1, 'Numero Interno', @Mov+' '+@MovID
    INSERT #CFD SELECT 1, 'Departamento - Nombre', @DepartamentoNombre
    INSERT #CFD SELECT 0, 'Emisor - Representante Legal', @EmpresaRepresentante
    INSERT #CFD SELECT 1, 'Clave Proveedor', ISNULL(@ProveedorIDDeptoEnviarA, @ProveedorID)
    INSERT #CFD SELECT 1, 'Tasa Global IVA', CONVERT(varchar(20), ROUND(@DefImpuestoZona, 2))
    INSERT #CFD SELECT 1, 'Numero Tienda (Enviar a)', @EnviarAClave
    INSERT #CFD SELECT 0, 'Recibo', @Recibo
    INSERT #CFD SELECT 0, 'Fecha Recibo', SUBSTRING(CONVERT(varchar, @ReciboFecha, 126), 1, 19)
    INSERT #CFD SELECT 0, 'Cuenta Predial', NULL	
    INSERT #CFD SELECT 0, 'Numero Cheque', NULL	
    INSERT #CFD SELECT 1, 'Clave Moneda', @MonedaClave
    INSERT #CFD SELECT 1, 'Tipo Cambio', CONVERT(varchar(20), ROUND(@TipoCambio, 4))
    INSERT #CFD SELECT 0, 'Fecha Requerida', SUBSTRING(CONVERT(varchar, @FechaRequerida, 126), 1, 19)
    INSERT #CFD SELECT 0, 'Departamento - Contacto', @DepartamentoContacto
    INSERT #CFD SELECT 0, 'Departamento - Clave', @DepartamentoClave
    INSERT #CFD SELECT 0, 'Observaciones 1', @Observaciones
    INSERT #CFD SELECT 0, 'Observaciones 2', NULL
    INSERT #CFD SELECT 0, 'Observaciones 3', NULL
    INSERT #CFD SELECT 0, 'Observaciones 4', NULL
    INSERT #CFD SELECT 0, 'Observaciones 5', NULL
    INSERT #CFD SELECT 0, 'Embarque', @Embarque
    INSERT #CFD SELECT 0, 'Fecha Embarque', SUBSTRING(CONVERT(varchar, @EmbarqueFecha, 126), 1, 19)
    INSERT #CFD SELECT 0, 'Importe con Letra', @ImporteEnLetra
    INSERT #CFD SELECT 0, 'Tipo Impresion', '0'		-- 0 = Electronica, 1 = Impresa
    INSERT #CFD SELECT 1, 'Tipo Envio', CASE WHEN @ModoPruebas = 1 THEN 'T' ELSE 'P' END
    INSERT #CFD SELECT 0, 'Etiqueta 1', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 2', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 3', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 4', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 5', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 6', NULL
    --INSERT #CFD SELECT 0, 'Etiqueta 7', NULL
    INSERT #CFD SELECT 0, 'Enter', '{@Enter}'

    INSERT #CFD SELECT 1, 'Encabezado 2', '[H2]'
    INSERT #CFD SELECT 1, 'Emisor - Nombre', @EmpresaNombre
    INSERT #CFD SELECT 1, 'Emisor - RFC', @EmpresaRFC
    INSERT #CFD SELECT 0, 'Emisor - GLN', @EmpresaGLN
    INSERT #CFD SELECT 1, 'Emisor - Direccion', @EmpresaDireccion
    INSERT #CFD SELECT 1, 'Emisor - Numero Exterior', @EmpresaDireccionNumero
    INSERT #CFD SELECT 0, 'Emisor - Numero Interior', ISNULL(NULLIF(RTRIM(@EmpresaDireccionNumeroInt), ''), 'S/N')
    INSERT #CFD SELECT 1, 'Emisor - Colonia', @EmpresaColonia
    INSERT #CFD SELECT 1, 'Emisor - Poblacion', @EmpresaPoblacion
    INSERT #CFD SELECT 0, 'Emisor - Observaciones', @EmpresaObservaciones
    INSERT #CFD SELECT 1, 'Emisor - Delegacion', @EmpresaDelegacion
    INSERT #CFD SELECT 1, 'Emisor - Estado', @EmpresaEstado
    INSERT #CFD SELECT 1, 'Emisor - Pais', @EmpresaPais
    INSERT #CFD SELECT 1, 'Emisor - Codigo Postal', @EmpresaCodigoPostal
    INSERT #CFD SELECT 0, 'Emisor - Registro Patronal', @EmpresaRegistroPatronal
    INSERT #CFD SELECT 0, 'Emisor - Telefonos', @EmpresaTelefonos
    INSERT #CFD SELECT 0, 'Etiqueta 1', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 2', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 3', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 4', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 5', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 6', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 7', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 8', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 9', NULL
    --INSERT #CFD SELECT 0, 'Etiqueta 10', NULL
    INSERT #CFD SELECT 0, 'Enter', '{@Enter}'

    INSERT #CFD SELECT 1, 'Encabezado 3', '[H3]'
    INSERT #CFD SELECT 0, 'Etiqueta 1', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 2', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 3', NULL
    INSERT #CFD SELECT 0, 'Expedido En - Direccion',       CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalDireccion END
    INSERT #CFD SELECT 0, 'Expedido En - Numero Exterior', CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalDireccionNumero END
    INSERT #CFD SELECT 0, 'Expedido En - Numero Interior', CASE WHEN @Sucursal = 0 THEN NULL ELSE ISNULL(NULLIF(RTRIM(@SucursalDireccionNumeroInt), ''), 'S/N') END
    INSERT #CFD SELECT 0, 'Expedido En - Colonia',         CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalColonia END
    INSERT #CFD SELECT 0, 'Expedido En - Poblacion',       CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalPoblacion END
    INSERT #CFD SELECT 0, 'Expedido En - Observaciones',   CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalObservaciones END
    INSERT #CFD SELECT 0, 'Expedido En - Delegacion',      CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalDelegacion END
    INSERT #CFD SELECT 0, 'Expedido En - Estado',          CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalEstado END
    INSERT #CFD SELECT 0, 'Expedido En - Pais',            CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalPais END
    INSERT #CFD SELECT 0, 'Expedido En - Codigo Postal',   CASE WHEN @Sucursal = 0 THEN NULL ELSE @SucursalCodigoPostal END
    INSERT #CFD SELECT 0, 'Etiqueta 4', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 5', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 6', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 7', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 8', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 9', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 10', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 11', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 12', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 13', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 14', NULL
    --INSERT #CFD SELECT 0, 'Etiqueta 15', NULL
    INSERT #CFD SELECT 0, 'Enter', '{@Enter}'

    INSERT #CFD SELECT 1, 'Encabezado 4', '[H4]'
    INSERT #CFD SELECT 1, 'Receptor - Nombre', @ClienteNombre
    INSERT #CFD SELECT 1, 'Receptor - RFC', @ClienteRFC
    INSERT #CFD SELECT 1, 'Receptor - GLN', @ClienteGLN
    INSERT #CFD SELECT 1, 'Receptor - Direccion', @ClienteDireccion
    INSERT #CFD SELECT 1, 'Receptor - Numero Exterior', @ClienteDireccionNumero
    INSERT #CFD SELECT 0, 'Receptor - Numero Interior', ISNULL(NULLIF(RTRIM(@ClienteDireccionNumeroInt), ''), 'S/N')
    INSERT #CFD SELECT 1, 'Receptor - Colonia', @ClienteColonia
    INSERT #CFD SELECT 1, 'Receptor - Poblacion', @ClientePoblacion
    INSERT #CFD SELECT 0, 'Receptor - Observaciones', @ClienteObservaciones
    INSERT #CFD SELECT 1, 'Receptor - Delegacion', @ClienteDelegacion
    INSERT #CFD SELECT 1, 'Receptor - Estado', @ClienteEstado
    INSERT #CFD SELECT 1, 'Receptor - Pais', @ClientePais
    INSERT #CFD SELECT 1, 'Receptor - Codigo Postal', @ClienteCodigoPostal
    INSERT #CFD SELECT 0, 'Receptor - Registro Patronal', NULL
    INSERT #CFD SELECT 0, 'Receptor - Telefonos', @ClienteTelefonos
    INSERT #CFD SELECT 0, 'Etiqueta 1', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 2', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 3', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 4', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 5', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 6', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 7', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 8', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 9', NULL
    --INSERT #CFD SELECT 0, 'Etiqueta 10', NULL
    INSERT #CFD SELECT 0, 'Enter', '{@Enter}'

    INSERT #CFD SELECT 1, 'Encabezado 5', '[H5]'
    INSERT #CFD SELECT 1, 'Enviar a - Nombre', @EnviarANombre
    INSERT #CFD SELECT 1, 'Enviar a - RFC', @ClienteRFC
    INSERT #CFD SELECT 1, 'Enviar a - GLN', @EnviarAGLN
    INSERT #CFD SELECT 1, 'Enviar a - Direccion', @EnviarADireccion
    INSERT #CFD SELECT 1, 'Enviar a - Numero Exterior', @EnviarADireccionNumero
    INSERT #CFD SELECT 0, 'Enviar a - Numero Interior', ISNULL(NULLIF(RTRIM(@EnviarADireccionNumeroInt), ''), 'S/N')
    INSERT #CFD SELECT 1, 'Enviar a - Colonia', @EnviarAColonia
    INSERT #CFD SELECT 1, 'Enviar a - Poblacion', @EnviarAPoblacion
    INSERT #CFD SELECT 0, 'Enviar a - Observaciones', @EnviarAObservaciones
    INSERT #CFD SELECT 1, 'Enviar a - Delegacion', @EnviarADelegacion
    INSERT #CFD SELECT 1, 'Enviar a - Estado', @EnviarAEstado
    INSERT #CFD SELECT 1, 'Enviar a - Pais', @EnviarAPais
    INSERT #CFD SELECT 1, 'Enviar a - Codigo Postal', @EnviarACodigoPostal
    INSERT #CFD SELECT 0, 'Enviar a - Registro Patronal', NULL
    INSERT #CFD SELECT 0, 'Enviar a - Telefonos', @EnviarATelefonos
    INSERT #CFD SELECT 0, 'Etiqueta 1', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 2', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 3', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 4', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 5', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 6', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 7', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 8', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 9', NULL
    --INSERT #CFD SELECT 0, 'Etiqueta 10', NULL
    INSERT #CFD SELECT 0, 'Enter', '{@Enter}'
  END

  -- Detalle
  IF @Layout = 'SAT'
  BEGIN
    SELECT '<Conceptos>'
/** Detalle de CXC*/
    IF @Modulo = 'CXC'  
    BEGIN
      IF @Version = '1.0'
        SELECT '<Concepto'+
                dbo.fnXMLFloat('cantidad', 1.00)+
                dbo.fnXML('unidad', 'PCE')+
                dbo.fnXML('descripcion', @Concepto)+
                dbo.fnXMLMoney('valorUnitario', @Importe)+
                dbo.fnXMLmoney('importe', @Importe)+
               '>'
      ELSE
        SELECT '<Concepto'+
                dbo.fnXMLFloat('cantidad', 1.00)+
                dbo.fnXML('unidad', 'PCE')+
                dbo.fnXML('noIdentificacion', @Concepto)+
                dbo.fnXML('descripcion', @Concepto)+
                dbo.fnXMLMoney('valorUnitario', @Importe)+
                dbo.fnXMLmoney('importe', @Importe)+
               '>'
      SELECT '</Concepto>'
    END
  END

  IF @Layout LIKE '%INTERFACTURA%' AND @Modulo = 'CXC'
  BEGIN
          SELECT '<if:Cuerpo'+
                 dbo.fnXML('Renglon', 1)+
                 dbo.fnXMLFloat('Cantidad', 1)+
                 dbo.fnXML('Concepto', @Concepto)+
                 dbo.fnXMLMoney('PUnitario', @Total)+
                 dbo.fnXMLMoney('Importe', @Total)+
                 '>'
          SELECT '</if:Cuerpo>'

  END

  IF @Modulo = 'VTAS'  
  BEGIN
    IF @AgruparDetalle = 1
    DECLARE crDetalle CURSOR LOCAL FOR 
     SELECT MAX(d.Renglon), MAX(d.RenglonSub), MAX(d.RenglonID), MAX(d.RenglonTipo), MAX(d.Codigo), SUM(d.CantidadNeta), MAX(ISNULL(NULLIF(RTRIM(d.Unidad), ''), a.Unidad)), MAX(ISNULL(NULLIF(d.Factor, 0.0), 1.0)), d.Articulo, d.SubCuenta, SUM(d.SubTotal * (CASE WHEN @MN = 1 THEN d.TipoCambio ELSE 1.0 END)),
            dbo.fnQueCodigo(@EmpresaEAN13, d.Articulo, d.SubCuenta, MAX(d.Codigo), @Cliente), dbo.fnQueCodigo(@EmpresaDUN14, d.Articulo, d.SubCuenta, MAX(d.Codigo), @Cliente), dbo.fnQueCodigo(@EmpresaSKUCliente, d.Articulo, d.SubCuenta, MAX(d.Codigo), @Cliente), dbo.fnQueCodigo(@EmpresaSKUEmpresa, d.Articulo, d.SubCuenta, MAX(d.Codigo), @Cliente),
            MAX(d.DescuentoLinea), SUM(ISNULL(d.DescuentoLineal, 0.0)), SUM(ISNULL(d.ImporteDescuentoGlobal, 0.0)), MAX(d.Impuesto1), MAX(d.Impuesto2), SUM(ISNULL(d.Impuesto1Total, 0.0)), SUM(ISNULL(d.Impuesto2Total, 0.0)),
            MAX(a.Descripcion1), MAX(a.Descripcion2), MAX(a.TipoEmpaque), d.Precio
       FROM VentaTCalc d 
       JOIN Art a ON a.Articulo = d.Articulo 
      WHERE d.ID = @ID AND d.RenglonTipo <> 'C'
      GROUP BY d.Articulo, d.Subcuenta, d.Precio
    ELSE 

    IF @AgruparDetalle = 0
    DECLARE crDetalle CURSOR LOCAL FOR 
     SELECT d.Renglon, d.RenglonSub, d.RenglonID, d.RenglonTipo, d.Codigo, ISNULL(d.CantidadNeta,0.0), ISNULL(NULLIF(RTRIM(d.Unidad), ''), a.Unidad), ISNULL(NULLIF(d.Factor, 0.0), 1.0), d.Articulo, d.SubCuenta, d.SubTotal * (CASE WHEN @MN = 1 THEN d.TipoCambio ELSE 1.0 END),
            dbo.fnQueCodigo(@EmpresaEAN13, d.Articulo, d.SubCuenta, d.Codigo, @Cliente), dbo.fnQueCodigo(@EmpresaDUN14, d.Articulo, d.SubCuenta, d.Codigo, @Cliente), dbo.fnQueCodigo(@EmpresaSKUCliente, d.Articulo, d.SubCuenta, d.Codigo, @Cliente), dbo.fnQueCodigo(@EmpresaSKUEmpresa, d.Articulo, d.SubCuenta, d.Codigo, @Cliente),
            d.DescuentoLinea, ISNULL(d.DescuentoLineal, 0.0), ISNULL(d.ImporteDescuentoGlobal, 0.0), ISNULL(d.Impuesto1,0), ISNULL(d.Impuesto2,0), ISNULL(d.Impuesto1Total, 0.0), ISNULL(d.Impuesto2Total, 0.0),
            a.Descripcion1, a.Descripcion2, a.TipoEmpaque, d.Precio
       FROM VentaTCalc d 
       JOIN Art a ON a.Articulo = d.Articulo 
      WHERE d.ID = @ID AND d.RenglonTipo <> 'C'
    OPEN crDetalle
    FETCH NEXT FROM crDetalle INTO @Renglon, @RenglonSub, @RenglonID, @RenglonTipo, @Codigo, @Cantidad, @Unidad, @UnidadFactor, @Articulo, @SubCuenta, @SubTotalLinea, 
                                   @EAN13, @DUN14, @SKUCliente, @SKUEmpresa, 
                                   @PctDescuentoLinea, @DescuentoLinea, @DescuentoGlobalLinea, @Impuesto1, @Impuesto2, @Impuesto1Linea, @Impuesto2Linea,
                                   @ArtDescripcion1, @ArtDescripcion2, @ArtTipoEmpaque, @Precio
    WHILE @@FETCH_STATUS <> -1 AND @@Error = 0 
    BEGIN
      IF @@FETCH_STATUS <> -2 
      BEGIN
--        IF @RenglonTipo = 'J' AND EXISTS(SELECT * FROM VentaD WHERE ID = @ID AND RenglonID = @RenglonID AND RenglonTipo = 'C' AND NULLIF(Precio, 0.0) IS NOT NULL)
--          SELECT @Ok = 20305, @OkRef = 'CFD - Los Componentes no Pueden tener Precio Independiente'
        IF @RenglonTipo = 'J'  --AND @AgruparDetalle = 1
        BEGIN
          SELECT @CompSubTotal 			= ISNULL(SUM(SubTotal), 0.0),
                 @CompDescuentoLineal 		= ISNULL(SUM(DescuentoLineal), 0.0), 
                 @CompImporteDescuentoGlobal 	= ISNULL(SUM(ImporteDescuentoGlobal), 0.0), 
                 @CompImpuesto1Total 		= ISNULL(SUM(Impuesto1Total), 0.0), 
                 @compImpuesto2Total 		= ISNULL(SUM(Impuesto2Total), 0.0),
                 @CompPrecio 			= ISNULL(SUM(ISNULL(Precio,0.0)*Cantidad),0.0)		
            FROM VentaTCalc WHERE ID = @ID AND RenglonID = @RenglonID AND RenglonTipo = 'C'
        
          SELECT @SubTotalLinea 	= @SubTotalLinea + @CompSubTotal
          SELECT @DescuentoLinea 	= @DescuentoLinea 		+ @CompDescuentoLineal
          SELECT @DescuentoGlobalLinea 	= @DescuentoGlobalLinea 	+ @CompImporteDescuentoGlobal
          SELECT @Impuesto1Linea 	= @Impuesto1Total 		+ @CompImpuesto1Total
          SELECT @Impuesto2Linea 	= @Impuesto2Total 		+ @CompImpuesto2Total
          SELECT @Precio 		= @Precio 			+ @CompPrecio / @Cantidad
        END

        SELECT @UnidadClave = Clave FROM Unidad WHERE Unidad = @Unidad

        IF  @AgruparDetalle = 1
        BEGIN
          --SELECT @ArtUnidad = ArtUnidad, @UtilizaPaquete = SinPaquete FROM Cte WHERE Cliente = @Cliente
          --IF @UtilizaPaquete = 1 SELECT @UnidadFactor = Factor FROM ArtUnidad
          SELECT @Paquetes = @Cantidad / ISNULL(NULLIF(@UnidadFactor, 0.0), 1.0)
        END ELSE 
          SELECT @Paquetes = Paquete, @DescripcionExtra = DescripcionExtra
            FROM VentaD 
           WHERE ID = @ID AND Renglon = @Renglon AND RenglonSub = @RenglonSub

        IF NULLIF(@Paquetes, 0.0) IS NULL 
          SELECT @Paquetes = @Cantidad, @CantidadEmpaque = @UnidadFactor
        ELSE
          SELECT @CantidadEmpaque = @Cantidad / ISNULL(NULLIF(@Paquetes, 0.0), 1.0)

        IF @PaqueteEsCantidad = 1 AND @Tipoaddenda IN ('CHEDRAUI', 'AMECE / CM')
          SELECT @Cantidad = @Paquetes

        SELECT @noIdentificacion = RTRIM(@Articulo)+' '+ISNULL(RTRIM(@SubCuenta), '')
        SELECT @TipoEmpaqueClave = Clave, @TipoEmpaqueTipo = Tipo FROM TipoEmpaque WHERE TipoEmpaque = @ArtTipoEmpaque
        IF @Layout = 'EDIFACT' AND @UnidadClave = 'PCE' SELECT @UnidadClave = 'EA'
        IF @Layout = 'AMECE / GIGANTE' AND @UnidadClave = 'PCE' SELECT @UnidadClave = 'PZA'
  
        EXEC xpGenerarCFDDetalle @Estacion, @Modulo, @ID, @Layout, @Version, @Renglon, @RenglonSub, 
                                 @Cantidad OUTPUT, @Codigo OUTPUT, @Unidad OUTPUT, @UnidadClave OUTPUT, @UnidadFactor OUTPUT, @Articulo OUTPUT, @SubCuenta OUTPUT, 
                                 @ArtDescripcion1 OUTPUT, @ArtDescripcion2 OUTPUT, @ArtTipoEmpaque OUTPUT, @TipoEmpaqueClave OUTPUT, @TipoEmpaqueTipo OUTPUT,
                                 @Paquetes OUTPUT, @CantidadEmpaque OUTPUT, @EAN13 OUTPUT, @DUN14 OUTPUT, @SKUCliente OUTPUT, @SKUEmpresa OUTPUT, @noIdentificacion OUTPUT, 
                                 @AgruparDetalle, @Cliente, @OrdenCompra OUTPUT
        IF @Cantidad = 0 SELECT @SubTotalLinea  =  0 ELSE SELECT @SubTotalLinea  = ROUND(@SubTotalLinea/@Cantidad,2) * @Cantidad
        SELECT @TotalLinea = @SubTotalLinea + ISNULL(@Impuesto1Linea, 0.0) + ISNULL(@Impuesto2Linea, 0.0)
        SELECT @ImporteLinea = @SubTotalLinea + @DescuentoGlobalLinea
        SELECT @Conteo = @Conteo + 1,
               @SumaCantidad = @SumaCantidad + ISNULL(@Cantidad, 0.0),
               @SumaSubTotalLinea = @SumaSubTotalLinea + ISNULL(@SubTotalLinea, 0.0),
               @SumaImporteLinea = @SumaImporteLinea + ISNULL(@ImporteLinea, 0.0)
        IF @Cantidad = 0 SELECT @PrecioLinea = 0 ELSE SELECT @PrecioLinea = ROUND(convert(money, @SubTotalLinea / NULLIF(@Cantidad, 0.0)),2)
  
        SELECT @PrimerSerieLote = NULL, @Pedimento = NULL, @PedimentoFecha = NULL, @Aduana = NULL, @AduanaGLN = NULL, @AduanaCiudad = NULL

        IF @AgruparDetalle = 0
        BEGIN
          IF @RenglonTipo = 'J'
            SELECT @PrimerSerieLote = NULLIF(RTRIM(MIN(SerieLote)), '')
              FROM VentaD d
              JOIN Art a ON d.Articulo = a.Articulo
              JOIN SerieLoteMov s ON s.Modulo = 'VTAS' AND d.Id = s.ID AND d.RenglonID = s.RenglonID AND d.Articulo = s.Articulo AND ISNULL(d.Subcuenta,'') = ISNULL(s.Subcuenta,'')
             WHERE a.Tipo IN ('Serie', 'Lote') AND d.ID = @ID AND d.RenglonID = @RenglonID AND s.Empresa = @Empresa
          ELSE
            SELECT @PrimerSerieLote = NULLIF(RTRIM(MIN(SerieLote)), '')
              FROM SerieLoteMov 
             WHERE Empresa = @Empresa AND Modulo = @Modulo AND ID = @ID AND RenglonID = @RenglonID AND Articulo = @Articulo AND ISNULL(SubCuenta, '') = ISNULL(@SubCuenta, '')
        END

        IF @AgruparDetalle = 1
        BEGIN
          IF @RenglonTipo = 'J'
            SELECT @PrimerSerieLote = NULLIF(RTRIM(MIN(SerieLote)), '')
              FROM VentaD d
              JOIN Art a ON d.Articulo = a.Articulo
              JOIN SerieLoteMov s ON s.Modulo = 'VTAS' AND d.Id = s.ID /*AND d.RenglonID = s.RenglonID*/ AND d.Articulo = s.Articulo AND ISNULL(d.Subcuenta,'') = ISNULL(s.Subcuenta,'')
             WHERE a.Tipo IN ('Serie', 'Lote') AND d.ID = @ID /*AND d.RenglonID = @RenglonID*/ AND s.Empresa = @Empresa
          ELSE
            SELECT @PrimerSerieLote = NULLIF(RTRIM(MIN(SerieLote)), '')
              FROM SerieLoteMov 
             WHERE Empresa = @Empresa AND Modulo = @Modulo AND ID = @ID /*AND RenglonID = @RenglonID*/ AND Articulo = @Articulo AND ISNULL(SubCuenta, '') = ISNULL(@SubCuenta, '')
        END

        IF @PrimerSerieLote IS NOT NULL
          SELECT @Pedimento = dbo.fnLimpiarRFC(p.Propiedades), @PedimentoFecha = p.Fecha1, @PedimentoFecha2 = p.Fecha2, @PedimentoFecha3 = p.Fecha3, @Aduana = p.Aduana, @AgenteAduanal = p.AgenteAduanal
            FROM SerieLote s
            JOIN SerieLoteProp p ON p.Propiedades = s.Propiedades
           WHERE s.SerieLote = @PrimerSerieLote
				
        IF @Aduana IS NOT NULL
          SELECT @AduanaGLN = GLN, @AduanaCiudad = Ciudad FROM Aduana WHERE Aduana = @Aduana

        IF @AgenteAduanal IS NOT NULL
          SELECT @AgenteAduanalNombre = Nombre FROM Prov WHERE Proveedor = @AgenteAduanal
  
        IF @Validar = 1
        BEGIN
          IF @Layout IN ('INTERFACTURA / EHB', 'INTERFACTURA / HEB') OR @TipoAddenda IN ('INTERFACTURA / EHB', 'INTERFACTURA / HEB')
          BEGIN
            IF NULLIF(RTRIM(@UnidadClave), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Clave Unidad'
            IF NULLIF(RTRIM(CONVERT(varchar(10),@Precio)), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Precio Unitario'
            IF NULLIF(RTRIM(CONVERT(varchar(10),@SubTotalLinea)), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - SubTotal Linea'
            IF NULLIF(RTRIM(@CantidadEmpaque), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Factor Empaque'
            IF NULLIF(RTRIM(@EAN13), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD -Codigo Articulo EAN13'
            IF NULLIF(RTRIM(@ArtDescripcion1), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Concepto'
            IF NULLIF(RTRIM(@SKUCliente), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Codigo Articulo SKU'
            IF NULLIF(RTRIM(@Cantidad), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Cantidad'
            IF NULLIF(RTRIM(@Moneda), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Moneda'
          END

          IF NULLIF(RTRIM(@Cantidad), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Cantidad'
          IF NULLIF(RTRIM(@ArtDescripcion1), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Concepto'
          IF @SubTotalLinea IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - SubTotal'
          IF @Layout = 'DETALLISTA'
          BEGIN
            IF NULLIF(RTRIM(@EAN13), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Codigo de Barras'
            IF LEN(@EAN13) > 14  SELECT @Ok = 10010, @OkRef = 'CFD - Excede Tamaño Caracteres 14'
            IF NULLIF(RTRIM(@UnidadClave), '') IS NULL SELECT @Ok = 10010, @OkRef = 'CFD - Articulo Clave Unidad'
          END
        END

        IF @Layout = 'SAT'
        BEGIN
          IF @Version = '1.0'
            SELECT '<Concepto'+
                    dbo.fnXMLFloat('cantidad', @Cantidad)+
                    dbo.fnXML('unidad', CASE WHEN @Liverpool = 1 THEN @UnidadClave ELSE @Unidad END)+
                    dbo.fnXML('descripcion', @ArtDescripcion1)+
                    dbo.fnXMLMoney('valorUnitario', @SubTotalLinea/NULLIF(@Cantidad, 0.0))+
                    dbo.fnXMLmoney('importe', @SubTotalLinea)+
                   '>'
          ELSE
            SELECT '<Concepto'+
                    dbo.fnXMLFloat('cantidad', @Cantidad)+
                    dbo.fnXML('unidad', CASE WHEN @Liverpool = 1 THEN @UnidadClave ELSE @Unidad END)+
                    dbo.fnXML('noIdentificacion', @noIdentificacion)+
                    dbo.fnXML('descripcion', @ArtDescripcion1)+
                    dbo.fnXMLMoney('valorUnitario', @SubTotalLinea/NULLIF(@Cantidad, 0.0))+
                    dbo.fnXMLmoney('importe', @SubTotalLinea)+
                   '>'

             IF NULLIF(@Pedimento,'') IS NOT NULL AND @TipoAddenda IN ('AMECE / LIVERPOOL', 'AMECE / CM')
             SELECT '<InformacionAduanera'+
                     dbo.fnXML('numero', @Pedimento)+
                     dbo.fnXMLDatetimeFmt('fecha', @PedimentoFecha, 'AAAA-MM-DD')+
                     dbo.fnXML('aduana', @Aduana)+
                    '/>'

        END ELSE
        IF @Layout LIKE 'AMECE%'
        BEGIN
          SELECT '<lineItem'+
                 dbo.fnXML('type', 'SimpleInvoiceLineItemType')+
                 dbo.fnXMLInt('number', @Conteo)
                 +'>'

           SELECT '<tradeItemIdentification>'
--          SELECT       dbo.fnTag('gtin', ISNULL(@EAN13,' '))
           SELECT '<gtin>'+ISNULL(@EAN13,'')+'</gtin>'
           SELECT '</tradeItemIdentification>'
  
          IF @Gigante = 0 
          SELECT '<alternateTradeItemIdentification'+dbo.fnXML('type', CASE WHEN @EmpresaSKUCodigoInterno=1 THEN 'SUPPLIER_ASSIGNED' ELSE 'BUYER_ASSIGNED' END)+'>'+
                 CASE WHEN @EmpresaSKUCodigoInterno=1 THEN RTRIM(@SKUEmpresa) ELSE RTRIM(@SKUCliente) END+
                 '</alternateTradeItemIdentification>' 

--          IF @Gigante = 0
          SELECT '<tradeItemDescriptionInformation'+dbo.fnXML('language', 'ES')+'>'+
                 dbo.fnTag('longText', LEFT(@ArtDescripcion1, 35))+
                 '</tradeItemDescriptionInformation>' 
  
          IF ABS(@SubTotalLinea) > 0.01
          BEGIN
--            SELECT '<invoicedQuantity'+dbo.fnXML('unitOfMeasure', CASE WHEN @Liverpool = 1 THEN NULL ELSE @UnidadClave END)+'>'+
            SELECT '<invoicedQuantity'+dbo.fnXML('unitOfMeasure', @UnidadClave)+'>'+
                   CONVERT(varchar(20), ISNULL(@Cantidad, 0.0))+
                   '</invoicedQuantity>'
            IF @Gigante = 0 
              SELECT '<aditionalQuantity'+dbo.fnXML('QuantityType', 'NUM_CONSUMER_UNITS')+'>'+
                     CONVERT(varchar(20), @Paquetes)+
                     '</aditionalQuantity>'
          END
          ELSE 
          BEGIN
--            SELECT '<invoicedQuantity'+dbo.fnXML('unitOfMeasure', CASE WHEN @Liverpool = 1 THEN NULL ELSE @UnidadClave END)+'>0.00</invoicedQuantity>'
            SELECT '<invoicedQuantity'+dbo.fnXML('unitOfMeasure', @UnidadClave)+'>0.00</invoicedQuantity>'
            IF @Gigante = 0
            BEGIN
              IF @UnidadFactor <> 1.0
                SELECT '<aditionalQuantity'+dbo.fnXML('QuantityType', 'NUM_CONSUMER_UNITS')+'>'+
                       CONVERT(varchar(20), @Cantidad*@UnidadFactor)+
                       '</aditionalQuantity>'
              ELSE
                SELECT '<aditionalQuantity'+dbo.fnXML('QuantityType', 'FREE_GOODS')+'>'+
                       CONVERT(varchar(20), ISNULL(@Cantidad, 0.0))+
                       '</aditionalQuantity>'
            END
          END
  
          IF @Gigante = 0 
--            SELECT '<grossPrice>'+dbo.fnTagMoney(CASE WHEN @Liverpool = 1 THEN 'amount' ELSE 'Amount' END, @ImporteLinea/NULLIF(@Cantidad, 0.0))+'</grossPrice>'
            SELECT '<grossPrice>'+dbo.fnTagMoney('Amount', @ImporteLinea/NULLIF(@Cantidad, 0.0))+'</grossPrice>'
          IF @Gigante = 0 --AND @ComercialMexicana = 0
--            SELECT '<netPrice>'  +dbo.fnTagMoney(CASE WHEN @Liverpool = 1 THEN 'amount' ELSE 'Amount' END, @SubTotalLinea/NULLIF(@Cantidad, 0.0))+'</netPrice>'
            SELECT '<netPrice>'  +dbo.fnTagMoney('Amount', @SubTotalLinea/NULLIF(@Cantidad, 0.0))+'</netPrice>'
  
          IF NULLIF(RTRIM(@OrdenCompra),'') IS NOT NULL AND @Liverpool = 0 AND @ComercialMexicana = 1
            SELECT '<AdditionalInformation>'+
                     '<referenceIdentification'+dbo.fnXML('type', 'ON')+'>'+@OrdenCompra+
                     '</referenceIdentification>'+
                   '</AdditionalInformation>'
  
          IF @Gigante = 0 
          BEGIN
            IF @Layout IN ('AMECE', 'AMECE / CM') AND NULLIF(@Pedimento, '') IS NOT NULL
              SELECT '<Customs>'+
                     dbo.fnTag('gln', @AduanaGLN)+
         	       '<alternatePartyIdentification'+dbo.fnXML('type', 'TN')+'/>'+
                        dbo.fnTagDatetimeFmt('ReferenceDate', @PedimentoFecha, 'AAAA-MM-DD')+
                       '<nameAndAddress>'+
                       dbo.fnTag('name', @Aduana)+
                       '</nameAndAddress>'+
                     '</Customs>'

            IF @Layout IN ('AMECE', /*'AMECE / CM',*/ 'AMECE / GIGANTE') AND NULLIF(@Paquetes, 0) IS NOT NULL 
              SELECT '<palletInformation>'+
                       dbo.fnTagInt('palletQuantity', @Paquetes)+
                       '<description'+dbo.fnXML('type', @TipoEmpaqueTipo)+'>'+'default'+'</description>'+
                         '<transport>'+
--                           dbo.fnTag('methodOfPayment', 'PAID_BY_BUYER')+
                           dbo.fnTag('methodOfPayment', 'PREPAID_BY_SELLER')+
                         '</transport>'+
                     '</palletInformation>'

            /*IF @PrimerSerieLote IS NOT NULL AND @PedimentoFecha IS NOT NULL
              SELECT '<extendedAttributes>'+
                       '<lotNumber'+dbo.fnXMLDatetimeFmt('productionDate', @PedimentoFecha, 'AAAA-MM-DD')+'>'+
                       @PrimerSerieLote+
                       '</lotNumber>'+ 
                     '</extendedAttributes>'*/

            IF NULLIF(@PctDescuentoLinea, 0.0) IS NOT NULL
              SELECT '<allowanceCharge'+dbo.fnXML('allowanceChargeType', 'ALLOWANCE_GLOBAL')+'>'+
                       '<monetaryAmountOrPercentage>'+
                         dbo.fnTagFloat('percentagePerUnit', @PctDescuentoLinea)+
                       '</monetaryAmountOrPercentage>'+
                     '</allowanceCharge>' 

            IF @Layout IN ('AMECE'/*, 'AMECE / CM'*/)
            BEGIN
              SELECT '<tradeItemTaxInformation>'+
                       dbo.fnTag('taxTypeDescription', 'VAT')+
                       '<tradeItemTaxAmount>'+ 
                         dbo.fnTagFloat('taxPercentage', @Impuesto1)+
                         dbo.fnTagMoney('taxAmount', @Impuesto1Linea)+
                       '</tradeItemTaxAmount>'+ 
                       dbo.fnTag('taxCategory', 'TRANSFERIDO')+
                     '</tradeItemTaxInformation>'

              IF @Impuesto2Linea <> 0.0
                SELECT '<tradeItemTaxInformation>'+
                         dbo.fnTag('taxTypeDescription', 'GST')+
                         '<tradeItemTaxAmount>'+ 
                           dbo.fnTagFloat('taxPercentage', @Impuesto2)+
                           dbo.fnTagMoney('taxAmount', @Impuesto2Linea)+
                         '</tradeItemTaxAmount>'+ 
                       dbo.fnTag('taxCategory', 'TRANSFERIDO')+
                       '</tradeItemTaxInformation>'
            END
          END

          SELECT '<totalLineAmount>'+
	  	 '<grossAmount>'+
--                      dbo.fnTagMoney(CASE WHEN @Liverpool = 1 THEN 'amount' ELSE 'Amount' END, @ImporteLinea)+
                      dbo.fnTagMoney('Amount', CASE WHEN @Gigante=1 THEN @SubTotalLinea ELSE @ImporteLinea END)+
		   '</grossAmount>'
           IF @ComercialMexicana = 0
             SELECT '<netAmount>'+
--                      dbo.fnTagMoney(CASE WHEN @Liverpool = 1 THEN 'amount' ELSE 'Amount' END, @SubTotalLinea)+
                       dbo.fnTagMoney('Amount', CASE WHEN @Gigante=1 THEN @ImporteLinea ELSE @SubTotalLinea END)+
		     '</netAmount>'
        
          SELECT '</totalLineAmount>'	    
          SELECT '</lineItem>'
        END ELSE
        IF @Layout LIKE '%INTERFACTURA%'
        BEGIN
          SELECT '<if:Cuerpo'

          IF @Elektra = 1
           BEGIN
                 SELECT
                 dbo.fnXML('Renglon', @Conteo)+
                 dbo.fnXMLFloat('Cantidad', @Cantidad)+
                 dbo.fnXML('Concepto', @ArtDescripcion1)+
                 dbo.fnXMLMoney('PUnitario', @Precio)+ /** JH 22.1.2007 @SubTotalLinea/NULLIF(@Cantidad, 0.0)+ISNULL(@DescuentoGlobalLinea,0.0))+ **/
                 dbo.fnXMLMoney('Importe', @Cantidad*@Precio)  /** JH 22.1.2007 @TotalLinea +ISNULL(@DescuentoGlobalLinea,0.0))+ **/
            END

          IF @EHB = 1
          SELECT 
                 dbo.fnXML('U_x0020_de_x0020_M', @UnidadClave)+
                 dbo.fnXMLMoney('SubTotal', @SubTotalLinea)+
                 dbo.fnXML('SKU', @SKUEmpresa)+
                 dbo.fnXMLMoney('PUnitario', @Precio)+
                 dbo.fnXMLFloat('FactorEmpaque', @CantidadEmpaque)+
                 dbo.fnXML('EAN13', @EAN13)+
                 dbo.fnXML('Concepto', @ArtDescripcion1)+
                 dbo.fnXML('Codigo', @SKUCliente)+
                 dbo.fnXMLFloat('Cantidad', @Cantidad)+
                 dbo.fnXMLMoney('TotalDescuentos', @DescuentoGlobalLinea+@DescuentoLinea)+
                 dbo.fnXMLMoney('CUnitarioLista', @Precio) -- JH 22.1.2007 @PrecioLinea)+ 

/*
                 dbo.fnXML('EAN14', @DUN14)+
                 dbo.fnXML('Capacidad', NULL)+
                 dbo.fnXMLFloat('CantidadUdeM', @Paquetes)+
                 dbo.fnXMLMoney('CUnitarioListaUdeM', @Precio*@Cantidad)+   -- JH 22.1.2007  @PrecioLinea*@Cantidad)+ 
                 dbo.fnXMLMoney('DescuentoComercial', @DescuentoGlobalLinea)+
                 dbo.fnXMLMoney('DescuentoLinea', @DescuentoLinea)+
                 dbo.fnXMLMoney('DescuentoPromocional', NULL)+
                 dbo.fnXMLMoney('DescuentoLogistico', NULL)+
                 dbo.fnXMLMoney('DescuentoConfidencial', NULL)+
                 dbo.fnXMLMoney('DescuentoTemporal', NULL)+
                 dbo.fnXMLMoney('DescuentoNoDevolucion', NULL)+
                 dbo.fnXMLMoney('DescuentoProntoPago', NULL)+
                 dbo.fnXMLMoney('DescuentoEspecial', NULL)+
                 dbo.fnXML('Aduana', @Aduana)+
                 dbo.fnXML('PedimentoAduanero', @Pedimento)+
                 dbo.fnXMLDateTime('FechaAduana', @PedimentoFecha)+
                 dbo.fnXMLMoney('CUnitario', @Precio)+  -- JH 22.1.2007  @SubTotalLinea/NULLIF(@Cantidad, 0.0))+
-- Se Quito Dividir entre @Paquetes
                 dbo.fnXMLFloat('IVAPCT', @Impuesto1)+
                 dbo.fnXMLMoney('Iva', @Impuesto1Linea)+
                 dbo.fnXMLMoney('IEPS25', CASE WHEN @Impuesto2 = 25.0 THEN @Impuesto2Linea END)+
                 dbo.fnXMLMoney('IEPS30', CASE WHEN @Impuesto2 = 30.0 THEN @Impuesto2Linea END)+
                 dbo.fnXMLMoney('IEPS55', CASE WHEN @Impuesto2 = 50.0 THEN @Impuesto2Linea END)
*/
          SELECT '>'
          SELECT '</if:Cuerpo>'
        END ELSE
        IF @Layout = 'HOME DEPOT'
        BEGIN 
          SELECT '<Detalle'+
                 dbo.fnXML('SKU', @SKUCliente)+
                 dbo.fnXMLFloat('cantidad', @Cantidad)+
                 dbo.fnXML('descripcion', @ArtDescripcion1)+
                 dbo.fnXMLMoney('valor', @PrecioLinea)+
                 dbo.fnXML('unidad', @Unidad)+
                 dbo.fnXMLMoney('IVA', @Impuesto1Linea)+
                 dbo.fnXML('vendorPack', @CantidadEmpaque)+'/>'
        END ELSE 
        IF @Layout LIKE 'SORIANA%'
        BEGIN 

          IF @Layout = 'SORIANA TIENDA' AND @Pedimento IS NOT NULL
          BEGIN
            SELECT '<Pedimento'+
                    --dbo.fnXML('Id','Pedimento1'))+
                    --dbo.fnXMLInt('RowOrder',1)+
                   '>'+
                   dbo.fnTag('Proveedor', LEFT(@ProveedorID, 35))+
                   dbo.fnTag('Remision', LEFT(@Embarque, 35))+
                   dbo.fnTag('Pedimento',@Pedimento)+
                   dbo.fnTag('Aduana', @AduanaClave)+
                   dbo.fnTag('AgenteAduanal',@AgenteAduanal)+
                   dbo.fnTagInt('TipoPedimento',1)+ --1=A1LiberadoEnFrontera
                   dbo.fnTagDateTime('FechaPedimento',@PedimentoFecha)+
                   dbo.fnTagDateTime('FechaReciboLaredo',@PedimentoFecha2)+
                   dbo.fnTagDateTime('FechaBillOfLading',@PedimentoFecha3)
            SELECT '</Pedimento>'
          END

          SELECT '<Articulos'+
                   dbo.fnXML('Id','Articulo'+Convert(varchar,@Conteo))+
                   dbo.fnXMLInt('RowOrder',@Conteo)+
                 '>'+
                 dbo.fnTag('Proveedor', LEFT(@ProveedorID, 35))+
                 dbo.fnTag('Remision', LEFT(ISNULL(@Serie,'')+Convert(varchar,@Folio), 35))+
                 dbo.fnTag('FolioPedido', @OrdenCompra)+
                 dbo.fnTag('Tienda', @EnviarAClave)+
                 dbo.fnTag('Codigo', @EAN13)+
                 dbo.fnTagFloat('CantidadUnidadCompra', @Cantidad)+
                 dbo.fnTagFloat('CostoNetoUnidadCompra', @PrecioLinea)+
                 dbo.fnTagFloat('PorcentajeIEPS', ISNULL(@Impuesto2,0))+
                 dbo.fnTagFloat('PorcentajeIVA', ISNULL(@Impuesto1,0))
          SELECT '</Articulos>'

          IF @Layout = 'SORIANA TIENDA'
          BEGIN
          SELECT '<CajasTarimas'+
                  dbo.fnXMLInt('Id',1)+
                  dbo.fnXMLInt('RowOrder',@Conteo)+
                 '>'+
                 dbo.fnTag('Proveedor', LEFT(@ProveedorID, 35))+
                 dbo.fnTag('Remision', LEFT(@Embarque, 35))+
                 dbo.fnTag('NumeroCajaTarima',@OrdenCompra)+
                 dbo.fnTag('CodigoBarraCajaTarima',@EAN13)+
                 dbo.fnTag('SucursalDistribuir',@EnviarAClave)+
                 dbo.fnTag('CantidadArticulos', @Paquetes)
          SELECT '</CajasTarimas>'

          SELECT '<ArticulosPorCajaTarima'+
                  dbo.fnXMLInt('Id',1)+
                  dbo.fnXMLInt('RowOrder',@Conteo)+
                 '>'+
                 dbo.fnTag('Proveedor', LEFT(@ProveedorID, 35))+
                 dbo.fnTag('Remision', LEFT(@Embarque, 35))+
                 dbo.fnTag('FolioPedido', @OrdenCompra)+
                 dbo.fnTag('NumeroCajaTarima', @OrdenCompra)+
                 dbo.fnTag('SucursalDistribuir', @EAN13)+
                 dbo.fnTag('Codigo', @EAN13)+
                 dbo.fnTag('CantidadUnidadCompra', @CantidadEmpaque)
          SELECT '</ArticulosPorCajaTarima>'

          END
        END ELSE 
        IF @Layout = 'DETALLISTA'
        BEGIN
          SELECT '<detallista:lineItem'+
                 dbo.fnXML('type', 'SimpleInvoiceLineItemType')+
                 dbo.fnXMLInt('number', @Conteo)
                 +'>'

           SELECT '<detallista:tradeItemIdentification>'
--          SELECT       dbo.fnTagXSD('detallista','gtin', ISNULL(@EAN13,' '))
           SELECT '<detallista:gtin>'+ISNULL(@EAN13,'')+'</detallista:gtin>'
           SELECT '</detallista:tradeItemIdentification>'
  
          SELECT '<detallista:alternateTradeItemIdentification'+dbo.fnXML('type', CASE WHEN @EmpresaSKUCodigoInterno=1 THEN 'SUPPLIER_ASSIGNED' ELSE 'BUYER_ASSIGNED' END)+'>'+
                 CASE WHEN @EmpresaSKUCodigoInterno=1 THEN RTRIM(@SKUEmpresa) ELSE RTRIM(@SKUCliente) END+
                 '</detallista:alternateTradeItemIdentification>' 

          SELECT '<detallista:tradeItemDescriptionInformation'+dbo.fnXML('language', 'ES')+'>'+
                 dbo.fnTagXSD('detallista','longText', LEFT(@ArtDescripcion1, 35))+
                 '</detallista:tradeItemDescriptionInformation>' 
  
          IF ABS(@SubTotalLinea) > 0.01
          BEGIN
            SELECT '<detallista:invoicedQuantity'+dbo.fnXML('unitOfMeasure', @UnidadClave)+'>'+
                   CONVERT(varchar(20), ISNULL(@Cantidad, 0.0))+
                   '</detallista:invoicedQuantity>'
            IF @Gigante = 0 
              SELECT '<detallista:aditionalQuantity'+dbo.fnXML('QuantityType', 'NUM_CONSUMER_UNITS')+'>'+
                     CONVERT(varchar(20), @Paquetes)+
                     '</detallista:aditionalQuantity>'
          END
          ELSE 
          BEGIN
            SELECT '<detallista:invoicedQuantity'+dbo.fnXML('unitOfMeasure', @UnidadClave)+'>0.00</detallista:invoicedQuantity>'
              IF @UnidadFactor <> 1.0
                SELECT '<detallista:aditionalQuantity'+dbo.fnXML('QuantityType', 'NUM_CONSUMER_UNITS')+'>'+
                       CONVERT(varchar(20), @Cantidad*@UnidadFactor)+
                       '</detallista:aditionalQuantity>'
          END
  
          SELECT '<detallista:grossPrice>'+dbo.fnTagMoneyXSD('detallista','Amount', @ImporteLinea/NULLIF(@Cantidad, 0.0))+'</detallista:grossPrice>'
          SELECT '<detallista:netPrice>'  +dbo.fnTagMoneyXSD('detallista','Amount', @SubTotalLinea/NULLIF(@Cantidad, 0.0))+'</detallista:netPrice>'
  
          IF NULLIF(RTRIM(@OrdenCompra),'') IS NOT NULL AND @Liverpool = 0 AND @ComercialMexicana = 0
            SELECT '<detallista:AdditionalInformation>'+
                     '<detallista:referenceIdentification'+dbo.fnXML('type', 'ON')+'>'+@OrdenCompra+
                     '</detallista:referenceIdentification>'+
                   '</detallista:AdditionalInformation>'
  
          IF @Gigante = 0 
          BEGIN
/*
            IF @Layout IN ('AMECE', 'AMECE / CM') AND NULLIF(@Pedimento, '') IS NOT NULL
              SELECT '<detallista:Customs>'+
                     dbo.fnTagXSD('detallista','gln', @AduanaGLN)+
         	       '<detallista:alternatePartyIdentification'+dbo.fnXML('type', 'TN')+'/>'+
                        dbo.fnTagDatetimeFmtXSD('detallista','ReferenceDate', @PedimentoFecha, 'AAAA-MM-DD')+
                       '<detallista:nameAndAddress>'+
                       dbo.fnTagXSD('detallista','name', @Aduana)+
                       '</detallista:nameAndAddress>'+
                     '</detallista:Customs>'
*/
/*
            IF /*@Layout IN ('AMECE', 'AMECE / GIGANTE') AND */NULLIF(@Paquetes, 0) IS NOT NULL AND @TipoEmpaqueTipo IS NOT NULL
              SELECT '<detallista:palletInformation>'+
                       dbo.fnTagIntXSD('detallista','palletQuantity', @Paquetes)+
                       '<detallista:description'+dbo.fnXML('type', @TipoEmpaqueTipo)+'>'+'default'+'</detallista:description>'+
                         '<detallista:transport>'+
--                           dbo.fnTagXSD('detallista','methodOfPayment', 'PAID_BY_BUYER')+
                           dbo.fnTagXSD('detallista','methodOfPayment', 'PREPAID_BY_SELLER')+
                         '</detallista:transport>'+
                     '</detallista:palletInformation>'
*/

            /*IF @PrimerSerieLote IS NOT NULL AND @PedimentoFecha IS NOT NULL
              SELECT '<detallista:extendedAttributes>'+
                       '<detallista:lotNumber'+dbo.fnXMLDatetimeFmt('productionDate', @PedimentoFecha, 'AAAA-MM-DD')+'>'+
                       @PrimerSerieLote+
                       '</detallista:lotNumber>'+ 
                     '</detallista:extendedAttributes>'*/

            IF NULLIF(@PctDescuentoLinea, 0.0) IS NOT NULL
              SELECT '<detallista:allowanceCharge'+dbo.fnXML('allowanceChargeType', 'ALLOWANCE_GLOBAL')+'>'+
                       '<detallista:monetaryAmountOrPercentage>'+
                         dbo.fnTagFloatXSD('detallista','percentagePerUnit', @PctDescuentoLinea)+
                       '</detallista:monetaryAmountOrPercentage>'+
                     '</detallista:allowanceCharge>' 

            --IF @Layout IN ('AMECE'/*, 'AMECE / CM'*/)
            --BEGIN
              SELECT '<detallista:tradeItemTaxInformation>'+
                       dbo.fnTagXSD('detallista','taxTypeDescription', 'VAT')+
                       '<detallista:tradeItemTaxAmount>'+ 
                         dbo.fnTagFloatXSD('detallista','taxPercentage', @Impuesto1)+
                         dbo.fnTagMoneyXSD('detallista','taxAmount', @Impuesto1Linea)+
                       '</detallista:tradeItemTaxAmount>'+ 
                       dbo.fnTagXSD('detallista','taxCategory', 'TRANSFERIDO')+
                     '</detallista:tradeItemTaxInformation>'

              IF @Impuesto2Linea <> 0.0
                SELECT '<detallista:tradeItemTaxInformation>'+
                         dbo.fnTagXSD('detallista','taxTypeDescription', 'GST')+
                         '<detallista:tradeItemTaxAmount>'+ 
                           dbo.fnTagFloatXSD('detallista','taxPercentage', @Impuesto2)+
                           dbo.fnTagMoneyXSD('detallista','taxAmount', @Impuesto2Linea)+
                         '</detallista:tradeItemTaxAmount>'+ 
                       dbo.fnTagXSD('detallista','taxCategory', 'TRANSFERIDO')+
                       '</detallista:tradeItemTaxInformation>'
            --END
          END

          SELECT '<detallista:totalLineAmount>'+
	  	 '<detallista:grossAmount>'+
--                      dbo.fnTagMoney(CASE WHEN @Liverpool = 1 THEN 'amount' ELSE 'Amount' END, @ImporteLinea)+
                      dbo.fnTagMoneyXSD('detallista','Amount', CASE WHEN @Gigante=1 THEN @SubTotalLinea ELSE @ImporteLinea END)+
		   '</detallista:grossAmount>'
           IF @ComercialMexicana = 0
             SELECT '<detallista:netAmount>'+
--                      dbo.fnTagMoney(CASE WHEN @Liverpool = 1 THEN 'amount' ELSE 'Amount' END, @SubTotalLinea)+
                       dbo.fnTagMoneyXSD('detallista','Amount', CASE WHEN @Gigante=1 THEN @ImporteLinea ELSE @SubTotalLinea END)+
		     '</detallista:netAmount>'
        
          SELECT '</detallista:totalLineAmount>'	    
          SELECT '</detallista:lineItem>'
        END ELSE
        IF @LayOut = 'ASPEL'
        BEGIN
          SELECT dbo.fnTag('ObsPartida', @DescripcionExtra)
        END ELSE
        IF @Layout = 'EDIFACT'
        BEGIN
          INSERT #EDI SELECT 1, '<Linea>', 'LIN'
          INSERT #EDI SELECT 1, 'Numero', CONVERT(varchar(20), @Conteo)
          INSERT #EDI SELECT 0, 'ID Articulo', ''
          INSERT #EDI SELECT 1, 'EAN', NULLIF(RTRIM(dbo.fnEDI(@EAN13)),'')+':SRV::9'
          INSERT #EDI SELECT 1, '<Fin>', ''
  
          IF NULLIF(RTRIM(@SKUCliente), '') IS NOT NULL AND @EmpresaSKUCodigoInterno = 0
          BEGIN
            INSERT #EDI SELECT 1, '<ID Adicional Producto>', 'PIA'
            INSERT #EDI SELECT 1, 'ID Adicional', '1'
            INSERT #EDI SELECT 1, 'SKU', dbo.fnEDI(@SKUCliente)+':'+CASE WHEN @EmpresaSKUCodigoInterno = 1 THEN 'SA' ELSE 'IN' END
            INSERT #EDI SELECT 1, '<Fin>', ''
          END

          INSERT #EDI SELECT 1, '<Descripcion Articulo>', 'IMD'
          INSERT #EDI SELECT 1, 'Tipo', 'F'
          INSERT #EDI SELECT 0, 'Titulo Descripcion', ''
          INSERT #EDI SELECT 1, 'Articulo - Descripcion 1', ':::'+NULLIF(dbo.fnEDI(@ArtDescripcion1), '')+':'+ISNULL(dbo.fnEDI(@ArtDescripcion2), '')+':ES'
          INSERT #EDI SELECT 1, '<Fin>', ''
  
          INSERT #EDI SELECT 1, '<Cantidad>', 'QTY'
          IF ABS(@SubTotalLinea) > 0.01
            INSERT #EDI SELECT 1, 'Cantidad y Unidad Facturada', '47:'+CONVERT(varchar(20), ROUND(@Cantidad, 2))+':'+NULLIF(dbo.fnEDI(@UnidadClave), '')
          ELSE 
          BEGIN
            INSERT #EDI SELECT 1, 'Cantidad y Unidad Facturada', '47:0.00:'+NULLIF(dbo.fnEDI(@UnidadClave), '')
            INSERT #EDI SELECT 1, 'Cantidad y Unidad Gratis', '192:'+CONVERT(varchar(20), ROUND(@Cantidad, 2))+':'+NULLIF(dbo.fnEDI(@UnidadClave), '')
          END
          INSERT #EDI SELECT 1, '<Fin>', ''
  
          INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
          INSERT #EDI SELECT 1, 'Importe Linea Neto', '203:'+CONVERT(varchar(20), ROUND(@ImporteLinea, 2))
          INSERT #EDI SELECT 1, '<Fin>', ''
 
          /*INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
          INSERT #EDI SELECT 1, 'Importe Linea Bruto', '98:'+CONVERT(varchar(20), ROUND(@SubTotalLinea, 2))
          INSERT #EDI SELECT 1, '<Fin>', ''*/

          INSERT #EDI SELECT 1, '<Precio Unitario>', 'PRI'
          INSERT #EDI SELECT 1, 'Precio Neto', 'AAA:'+CONVERT(varchar(20), CONVERT(money,ROUND(@ImporteLinea/NULLIF(@Cantidad, 0.0), 2)))+'::::'+ISNULL(dbo.fnEDI(@UnidadClave), '')
          INSERT #EDI SELECT 1, '<Fin>', ''

          /*INSERT #EDI SELECT 1, '<Precio Unitario>', 'PRI'
          INSERT #EDI SELECT 1, 'Precio Bruto', 'AAB:'+CONVERT(varchar(20), ROUND(@SubTotalLinea/NULLIF(@Cantidad, 0.0), 2))+'::::'+ISNULL(@UnidadClave, '')
          INSERT #EDI SELECT 1, '<Fin>', ''*/

          /*IF NULLIF(@Paquetes, 0) IS NOT NULL
          BEGIN
            INSERT #EDI SELECT 1, '<Empaque>', 'PAC'
            INSERT #EDI SELECT 1, 'Paquetes', CONVERT(varchar(20), @Paquetes)
            INSERT #EDI SELECT 0, 'Titulo Empaque', NULL
            INSERT #EDI SELECT 1, 'Tipo Empaque - Clave', @TipoEmpaqueClave
            INSERT #EDI SELECT 1, '<Fin>', ''
          END*/

          -- IVA
          INSERT #EDI SELECT 1, '<Impuestos>', 'TAX'
          INSERT #EDI SELECT 1, 'Clave Impuestos', '7'
          INSERT #EDI SELECT 1, 'IVA', 'VAT'
          INSERT #EDI SELECT 0, 'Titulo', ''
          INSERT #EDI SELECT 0, '????', ''
          INSERT #EDI SELECT 1, 'Tasa', ':::'+CONVERT(varchar(20), ROUND(@Impuesto1, 2))
          INSERT #EDI SELECT 1, 'IVA Transferido', 'B'
          INSERT #EDI SELECT 1, '<Fin>', ''

          INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
          INSERT #EDI SELECT 1, 'Importe IVA', '124:'+CONVERT(varchar(20), ROUND(@Impuesto1Linea, 2))
          INSERT #EDI SELECT 1, '<Fin>', ''

          -- IEPS
          IF NULLIF(@Impuesto2Linea, 0.0) IS NOT NULL
          BEGIN
            INSERT #EDI SELECT 1, '<Impuestos>', 'TAX'
            INSERT #EDI SELECT 1, 'Clave Impuestos', '7'
            INSERT #EDI SELECT 1, 'IEPS', 'GST'
            INSERT #EDI SELECT 0, 'Titulo', ''
            INSERT #EDI SELECT 0, '????', ''
            INSERT #EDI SELECT 1, 'Tasa', ':::'+CONVERT(varchar(20), ROUND(@Impuesto2, 2))
            INSERT #EDI SELECT 1, 'IVA Transferido', 'B'
            INSERT #EDI SELECT 1, '<Fin>', ''

            INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
            INSERT #EDI SELECT 1, 'Importe IEPS', '124:'+CONVERT(varchar(20), ROUND(@Impuesto2Linea, 2))
            INSERT #EDI SELECT 1, '<Fin>', ''
          END

          IF NULLIF(RTRIM(@Pedimento), '') IS NOT NULL
          BEGIN
            INSERT #EDI SELECT 1, '<Nombre y Direccion>', 'NAD'
            INSERT #EDI SELECT 1, 'Aduana', 'CM'
            INSERT #EDI SELECT 0, 'Aduana - GLN', ISNULL(NULLIF(RTRIM(dbo.fnEDI(@AduanaGLN)), '')+'::9','')
  --          INSERT #EDI SELECT 0, '???', ''
            INSERT #EDI SELECT 0, 'Nombre de la Parte', ''
            INSERT #EDI SELECT 1, 'Aduana - Nombre', dbo.fnEDIMax(dbo.fnEDI(@Aduana), 35)
            INSERT #EDI SELECT 1, '<Fin>', ''

            INSERT #EDI SELECT 1, '<Referencia>', 'RFF'
            INSERT #EDI SELECT 1, 'Recibo', 'TN:'+dbo.fnEDI(NULLIF(@Pedimento, ''))
            INSERT #EDI SELECT 1, '<Fin>', ''

            INSERT #EDI SELECT 1, '<Fecha Hora>', 'DTM'
            INSERT #EDI SELECT 1, 'Fecha Pedimiento', '171:'+CONVERT(varchar, @PedimentoFecha, 112)+':102'
            INSERT #EDI SELECT 1, '<Fin>', ''
          END

          IF @DescuentoLinea <> 0.0
          BEGIN
            INSERT #EDI SELECT 1, '<Descuento Linea>', 'ALC'
            INSERT #EDI SELECT 1, 'Tipo Descuento', 'A'
            INSERT #EDI SELECT 1, 'Secuencia Calculo', '1'
            INSERT #EDI SELECT 0, 'Titulo', ''
            INSERT #EDI SELECT 0, 'Clave Descuento', ''
            INSERT #EDI SELECT 1, '<Fin>', ''

            INSERT #EDI SELECT 1, '<Porcentaje>', 'PCD'
            INSERT #EDI SELECT 1, 'Porcentaje', '1:'+CONVERT(varchar(20), ROUND(@PctDescuentoLinea, 2))
            INSERT #EDI SELECT 1, '<Fin>', ''

            INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
            INSERT #EDI SELECT 1, 'Importe Descuento Linea', '204:'+CONVERT(varchar(20), ROUND(@DescuentoLinea, 2))
            INSERT #EDI SELECT 1, '<Fin>', ''
          END
        END ELSE
        IF @Layout = 'CHEDRAUI'
        BEGIN
          INSERT #CFD SELECT 1, 'Detalle', '[D]'
          INSERT #CFD SELECT 1, 'EAN', @EAN13
          INSERT #CFD SELECT 1, 'DUN14', @DUN14
          INSERT #CFD SELECT 1, 'Articulo - Descripcion 1', @ArtDescripcion1
          INSERT #CFD SELECT 0, 'Articulo - Descripcion 2', @ArtDescripcion2
          IF ABS(@SubTotalLinea) > 0.01
            INSERT #CFD SELECT 1, 'Cantidad', CONVERT(varchar(20), ROUND(@Cantidad, 2))
          ELSE
            INSERT #CFD SELECT 1, 'Cantidad', '0.00'
          INSERT #CFD SELECT 1, 'Unidad - Clave', @UnidadClave
          INSERT #CFD SELECT 1, 'Cantidad Empaque', CONVERT(varchar(20), ROUND(@CantidadEmpaque, 4))
          INSERT #CFD SELECT 1, 'Precio Linea', CONVERT(varchar(20), ROUND(@PrecioLinea, 2))
          INSERT #CFD SELECT 0, '% Desc 1', CONVERT(varchar(20), ROUND(@PctDescuentoLinea, 10))
          INSERT #CFD SELECT 0, 'Tipo Desc 1', NULL
          INSERT #CFD SELECT 0, 'Importe Desc 1', CONVERT(varchar(20), ROUND(@DescuentoLinea, 2))
          INSERT #CFD SELECT 0, '% Desc 2', NULL
          INSERT #CFD SELECT 0, 'Tipo Desc 2', NULL
          INSERT #CFD SELECT 0, 'Importe Desc 2', NULL
          INSERT #CFD SELECT 0, '% Desc 3', NULL
          INSERT #CFD SELECT 0, 'Tipo Desc 3', NULL
          INSERT #CFD SELECT 0, 'Importe Desc 3', NULL
          INSERT #CFD SELECT 0, '% Desc 4', NULL
          INSERT #CFD SELECT 0, 'Tipo Desc 4', NULL
          INSERT #CFD SELECT 0, 'Importe Desc 4', NULL
          INSERT #CFD SELECT 0, '% Desc 5', NULL
          INSERT #CFD SELECT 0, 'Tipo Desc 5', NULL
          INSERT #CFD SELECT 0, 'Importe Desc 5', NULL
          INSERT #CFD SELECT 1, 'Precio Neto', CONVERT(varchar(20), ROUND(@SubTotalLinea, 2))
          INSERT #CFD SELECT 1, '% IVA', CONVERT(varchar(20), ROUND(@Impuesto1, 2))
          INSERT #CFD SELECT 1, '% IEPS', CONVERT(varchar(20), ROUND(ISNULL(@Impuesto2, 0.0), 2))
          INSERT #CFD SELECT 1, 'Cantidad Embarcada', CONVERT(varchar(20), ROUND(@Cantidad, 2))
          INSERT #CFD SELECT 0, 'Aduana', @Aduana
          INSERT #CFD SELECT 0, 'Fecha Pedimento', CONVERT(varchar, @PedimentoFecha, 126)
          INSERT #CFD SELECT 0, 'Pedimento', @Pedimento
          INSERT #CFD SELECT 0, 'Articulo - Clave', @Articulo
          INSERT #CFD SELECT 0, 'SKU', @SKUCliente
          IF ABS(@SubTotalLinea) > 0.01
            INSERT #CFD SELECT 1, 'Cantidad Gratuita', '0.00'
          ELSE
            INSERT #CFD SELECT 1, 'Cantidad Gratuita', CONVERT(varchar(20), ROUND(@Cantidad, 2))
          INSERT #CFD SELECT 0, 'Tipo Empaque', @ArtTipoEmpaque
          INSERT #CFD SELECT 0, 'Pago Empaque', NULL		-- Quien paga el empaque
          INSERT #CFD SELECT 1, 'Precio Bruto', CONVERT(varchar(20), CONVERT(money,ROUND(@PrecioLinea*@Cantidad, 2)))
          INSERT #CFD SELECT 1, 'Importe sin DescuentoGlobal', CONVERT(varchar(20), ROUND(@ImporteLinea, 2))
          INSERT #CFD SELECT 1, 'Monto IVA', CONVERT(varchar(20), ROUND(@Impuesto1Linea, 2))
          INSERT #CFD SELECT 1, 'Monto IEPS', CONVERT(varchar(20), ROUND(ISNULL(@Impuesto2Linea, 0.0), 2))
          INSERT #CFD SELECT 0, '% ISR', NULL
          INSERT #CFD SELECT 0, 'Monto ISR', NULL
          INSERT #CFD SELECT 0, '% Impuesto Petroleo', NULL
          INSERT #CFD SELECT 0, 'Monto Impuesto Petroleo', NULL
          INSERT #CFD SELECT 0, '% Excento', NULL
          INSERT #CFD SELECT 0, 'Monto Excento', NULL
          INSERT #CFD SELECT 0, '% Estatal', NULL
          INSERT #CFD SELECT 0, 'Monto Estatal', NULL
          INSERT #CFD SELECT 0, '% Cedular', NULL
          INSERT #CFD SELECT 0, 'Monto Cedular', NULL
          INSERT #CFD SELECT 0, '% Municipal', NULL
          INSERT #CFD SELECT 0, 'Monto Municipal', NULL
          INSERT #CFD SELECT 0, '% Hospedaje', NULL
          INSERT #CFD SELECT 0, 'Monto Hospedaje', NULL
          INSERT #CFD SELECT 0, '% Otros', NULL
          INSERT #CFD SELECT 0, 'Monto Otros', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 1', NULL
          INSERT #CFD SELECT 0, 'Numero Cuenta Predial', NULL
          INSERT #CFD SELECT 0, 'Cantidad Real Kilos, Metros o Litros', '0.00'
          INSERT #CFD SELECT 0, 'Etiqueta 2', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 3', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 4', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 5', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 6', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 7', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 8', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 9', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 10', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 11', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 12', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 13', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 14', NULL
          INSERT #CFD SELECT 0, 'Etiqueta 15', NULL

/*
          INSERT #CFD SELECT 1, 'Datos Adicionales 1', '[D1]'
          INSERT #CFD SELECT 0, 'Descripcion 1', NULL

          INSERT #CFD SELECT 1, 'Datos Adicionales 2', '[D2]'
          INSERT #CFD SELECT 0, 'Descripcion 1', NULL*/
          INSERT #CFD SELECT 0, 'Enter', '{@Enter}'
        END

        IF @Layout = 'SAT' AND @PrimerSerieLote IS NOT NULL AND @TipoAddenda NOT IN ('AMECE / LIVERPOOL', 'AMECE / CM')
        BEGIN
          IF @RenglonTipo = 'J'
            DECLARE crSerieLoteMov CURSOR LOCAL FOR 
             SELECT s.SerieLote, dbo.fnLimpiarRFC(s.Propiedades), p.Fecha1, p.Aduana  
               FROM SerieLoteMov s
               JOIN SerieLoteProp p ON p.Propiedades = s.Propiedades
              WHERE s.Empresa = @Empresa AND s.Modulo = @Modulo AND s.ID = @ID AND s.RenglonID = @RenglonID 
              GROUP BY s.SerieLote, s.Propiedades, p.Fecha1, p.Aduana
              ORDER BY s.SerieLote, s.Propiedades, p.Fecha1, p.Aduana
          ELSE
            DECLARE crSerieLoteMov CURSOR LOCAL FOR 
             SELECT s.SerieLote, dbo.fnLimpiarRFC(s.Propiedades), p.Fecha1, p.Aduana  
               FROM SerieLoteMov s
               JOIN SerieLoteProp p ON p.Propiedades = s.Propiedades
              WHERE s.Empresa = @Empresa AND s.Modulo = @Modulo AND s.ID = @ID AND s.RenglonID = @RenglonID AND s.Articulo = @Articulo AND ISNULL(s.SubCuenta, '') = ISNULL(@SubCuenta, '')
              GROUP BY s.SerieLote, s.Propiedades, p.Fecha1, p.Aduana
              ORDER BY s.SerieLote, s.Propiedades, p.Fecha1, p.Aduana
          OPEN crSerieLoteMov
          FETCH NEXT FROM crSerieLoteMov INTO @SerieLote, @Pedimento, @PedimentoFecha, @Aduana
          WHILE @@FETCH_STATUS <> -1 AND @@Error = 0 
          BEGIN
            IF @@FETCH_STATUS <> -2 
            BEGIN

              EXEC xpCFDSerieLote @Empresa, @Modulo, @Id, @Renglon, @RenglonSub, @RenglonID, @RenglonTipo, @Articulo, @Subcuenta, @TipoAddenda, @LayOut, @SerieLote, @Pedimento OUTPUT, @PedimentoFecha OUTPUT, @Aduana OUTPUT

              IF @Pedimento IS NOT NULL AND @Validar = 1
              BEGIN
                IF NULLIF(RTRIM(@Pedimento), '') IS NULL	SELECT @Ok = 10010, @OkRef = 'CFD - Pedimento'
                IF @PedimentoFecha IS NULL					SELECT @Ok = 10010, @OkRef = 'CFD - Pedimento Fecha'
                IF NULLIF(RTRIM(@Aduana), '') IS NULL		SELECT @Ok = 10010, @OkRef = 'CFD - Aduana'
              END

              IF @Layout = 'SAT' AND @Pedimento IS NOT NULL
                SELECT '<InformacionAduanera'+
                        dbo.fnXML('numero', @Pedimento)+
                        dbo.fnXMLDatetimeFmt('fecha', @PedimentoFecha, 'AAAA-MM-DD')+
                        dbo.fnXML('aduana', @Aduana)+
                       '/>'
            END
            FETCH NEXT FROM crSerieLoteMov INTO @SerieLote, @Pedimento, @PedimentoFecha, @Aduana
          END
          CLOSE crSerieLoteMov
          DEALLOCATE crSerieLoteMov
        END
        IF @Layout = 'SAT'
          SELECT '</Concepto>'
      END
      FETCH NEXT FROM crDetalle INTO @Renglon, @RenglonSub, @RenglonID, @RenglonTipo, @Codigo, @Cantidad, @Unidad, @UnidadFactor, @Articulo, @SubCuenta, @SubTotalLinea, 
                                     @EAN13, @DUN14, @SKUCliente, @SKUEmpresa,
                                     @PctDescuentoLinea, @DescuentoLinea, @DescuentoGlobalLinea, @Impuesto1, @Impuesto2, @Impuesto1Linea, @Impuesto2Linea,
                                     @ArtDescripcion1, @ArtDescripcion2, @ArtTipoEmpaque, @Precio
    END
    CLOSE crDetalle
    DEALLOCATE crDetalle
/** END de IF 'VTAS'   */
  END
  IF @Layout = 'SAT'
    SELECT '</Conceptos>'

  IF @Layout LIKE 'AMECE%'
  BEGIN
    IF @Gigante = 0
      SELECT '<totalAmount>'+
--             dbo.fnTagMoney(CASE WHEN @Liverpool = 1 THEN 'amount' ELSE 'Amount' END, @Importe)+
             dbo.fnTagMoney('Amount', @Importe)+
             '</totalAmount>'


    IF @Gigante = 0 --AND NULLIF(@ImporteDescuentoGlobal, 0.0) IS NOT NULL
      SELECT '<TotalAllowanceCharge'+dbo.fnXML('allowanceOrChargeType', 'ALLOWANCE')+'>'+
             dbo.fnTagMoney('Amount', ISNULL(@ImporteDescuentoGlobal, 0.0))+
             '</TotalAllowanceCharge>'

    SELECT '<baseAmount>'+
             dbo.fnTagMoney('Amount', @SubTotal)+
           '</baseAmount>'
  END

  -- Impuestos
  IF @Version = '1.0' AND @Layout = 'SAT'
  BEGIN
    IF @Layout = 'SAT'
    BEGIN
      SELECT '<Impuestos><Traslados>'
      SELECT '<Traslado'+
              dbo.fnXML('impuesto', 'IVA')+
              dbo.fnXMLMoney('importe', @Impuesto1Total)+
              '/>'
      IF @Impuesto2Total <> 0.0
        SELECT '<Traslado'+
                dbo.fnXML('impuesto', 'IEPS')+
                dbo.fnXMLMoney('importe', @Impuesto2Total)+
                '/>'
      SELECT '</Traslados></Impuestos>'
    END
  END

  IF (@Version = '2.0' AND @Layout = 'SAT') OR @Layout IN ('AMECE', 'AMECE / LIVERPOOL', 'AMECE / CM')
  BEGIN
    IF @Layout = 'SAT'
    BEGIN
      SELECT '<Impuestos'+
              dbo.fnXMLMoney('totalImpuestosTrasladados', @ImpuestosTotal)+'>'
      SELECT '<Traslados>'
    END 

    IF @Modulo = 'CXC'  
    BEGIN
      IF @Layout = 'SAT'
        SELECT '<Traslado'+
                dbo.fnXML('impuesto', 'IVA')+
                dbo.fnXMLFloat2('tasa', @Impuesto1)+
                dbo.fnXMLMoney('importe', @Impuesto1Total)+
               '/>'
    END

    -- IVA
    IF @Modulo = 'VTAS'  
    BEGIN
      DECLARE crImpuesto1 CURSOR LOCAL FOR 
       SELECT Impuesto1, SUM(Impuesto1Total * CASE WHEN @MN = 1 THEN TipoCambio ELSE 1.0 END)
         FROM VentaTCalc
        WHERE ID = @ID
        GROUP BY Impuesto1
        ORDER BY Impuesto1
    OPEN crImpuesto1
    FETCH NEXT FROM crImpuesto1 INTO @Impuesto1, @Impuesto1SubTotal
    WHILE @@FETCH_STATUS <> -1 AND @@Error = 0 
    BEGIN
      IF @@FETCH_STATUS <> -2 
      BEGIN

        IF @Validar = 1
        BEGIN
          IF @Impuesto1 IS NULL	SELECT @Ok = 10010, @OkRef = 'CFD - Tasa Impuesto IVA'
          IF @Impuesto1SubTotal IS NULL	SELECT @Ok = 10010, @OkRef = 'CFD - Importe Impuesto IVA'
        END

        IF @Layout = 'SAT'
          SELECT '<Traslado'+
                  dbo.fnXML('impuesto', 'IVA')+
                  dbo.fnXMLMoney('tasa', @Impuesto1)+
                  dbo.fnXMLMoney('importe', @Impuesto1SubTotal)+
                 '/>'
        ELSE
        IF @Layout IN ('AMECE', 'AMECE / LIVERPOOL', 'AMECE / CM')
        BEGIN
          SELECT '<tax'+dbo.fnXML('type', 'VAT')+'>'
          SELECT dbo.fnTagFloat('taxPercentage', @Impuesto1)+
		 dbo.fnTagMoney('taxAmount', @Impuesto1SubTotal)+
		 dbo.fnTag('taxCategory', CASE WHEN @ComercialMexicana=0 THEN 'TRANSFERIDO' ELSE NULL END)
          SELECT '</tax>'
        END
      END
      FETCH NEXT FROM crImpuesto1 INTO @Impuesto1, @Impuesto1SubTotal
    END
    CLOSE crImpuesto1
    DEALLOCATE crImpuesto1
    END

    -- IEPS

    IF @Modulo = 'VTAS'  
    BEGIN
      DECLARE crImpuesto2 CURSOR LOCAL FOR 
       SELECT Impuesto2, SUM(Impuesto2Total * CASE WHEN @MN = 1 THEN TipoCambio ELSE 1.0 END)
         FROM VentaTCalc
        WHERE ID = @ID
        GROUP BY Impuesto2
        ORDER BY Impuesto2
    OPEN crImpuesto2
    FETCH NEXT FROM crImpuesto2 INTO @Impuesto2, @Impuesto2SubTotal
    WHILE @@FETCH_STATUS <> -1 AND @@Error = 0 
    BEGIN
      IF @@FETCH_STATUS <> -2 AND NULLIF(@Impuesto2, 0.0) IS NOT NULL
      BEGIN
       IF @Layout = 'SAT'
          SELECT '<Traslado'+
                  dbo.fnXML('impuesto', 'IEPS')+
                  dbo.fnXMLMoney('tasa', @Impuesto2)+
                  dbo.fnXMLmoney('importe', @Impuesto2SubTotal)+
                 '/>'
        ELSE
        IF @Layout IN ('AMECE', 'AMECE / LIVERPOOL', 'AMECE / CM')
        BEGIN
          SELECT '<tax'+dbo.fnXML('type', 'GST')+'>	'
          SELECT dbo.fnTagFloat('taxPercentage', @Impuesto2)+
		 dbo.fnTagMoney('taxAmount', @Impuesto2SubTotal)+
		 dbo.fnTag('taxCategory', CASE WHEN @ComercialMexicana=0 THEN 'TRANSFERIDO' ELSE NULL END)
          SELECT '</tax>'
        END
      END
      FETCH NEXT FROM crImpuesto2 INTO @Impuesto2, @Impuesto2SubTotal
    END
    CLOSE crImpuesto2
    DEALLOCATE crImpuesto2
    END

    IF @Layout = 'SAT'
    BEGIN
      SELECT '</Traslados>'
      SELECT '</Impuestos>'
    END 
  END

  -- Totales
  IF @Layout LIKE 'AMECE%'
  BEGIN
/*    IF @Liverpool = 1
      SELECT '<taxAmount>'+
             dbo.fnTagMoney('Amount', @ImpuestosTotal)+
             '</taxAmount>'*/

--    IF @Gigante = 0 
      SELECT '<payableAmount>'+
             dbo.fnTagMoney('Amount', @Total)+
             '</payableAmount>'
  END ELSE
  IF @Layout = 'DETALLISTA'
  BEGIN
      SELECT '<detallista:totalAmount>'+
             dbo.fnTagMoneyXSD('detallista','Amount', @Importe)+
             '</detallista:totalAmount>'

      SELECT '<detallista:TotalAllowanceCharge'+dbo.fnXML('allowanceOrChargeType', 'ALLOWANCE')+'>'+
             dbo.fnTagXSD('detallista','specialServicesType', ISNULL(NULLIF(RTRIM(@DescuentoClave), ''), 'AJ'))+
             dbo.fnTagMoneyXSD('detallista','Amount', ISNULL(@ImporteDescuentoGlobal, 0.0))+
             '</detallista:TotalAllowanceCharge>'

      SELECT '</detallista:detallista>'
     SELECT '</Complemento>'
  END ELSE
  IF @Layout = 'EDIFACT'
  BEGIN
    INSERT #EDI SELECT 1, '<Fin Detalle>', 'UNS'
    INSERT #EDI SELECT 1, 'Separacion', 'S'
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Total Control>', 'CNT'
    INSERT #EDI SELECT 1, 'Conteo', '2:'+CONVERT(varchar(20), @Conteo)
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
    INSERT #EDI SELECT 1, 'Gran Total', '9:'+CONVERT(varchar(20), ROUND(@Total, 2))
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
    INSERT #EDI SELECT 1, 'SubTotal sin Descuentos', '79:'+CONVERT(varchar(20), ROUND(@SubTotal-@ImporteDescuentoGlobal, 2))
    INSERT #EDI SELECT 1, '<Fin>', ''

    IF NULLIF(@DescuentoGlobal, 0.0) IS NOT NULL
    BEGIN
      INSERT #EDI SELECT 1, '<Descuento Global>', 'ALC'
      INSERT #EDI SELECT 1, 'Tipo Descuento', 'A'
      INSERT #EDI SELECT 0, 'Titulo', ''
      INSERT #EDI SELECT 0, 'Numero Descuento', ''
      INSERT #EDI SELECT 0, 'Imputacion Descuento', ''
      INSERT #EDI SELECT 1, 'Secuencia Calculo', '1'
      INSERT #EDI SELECT 0, 'Titulo', ''
      INSERT #EDI SELECT 1, 'Clave Descuento', dbo.fnEDI(@DescuentoClave)
      INSERT #EDI SELECT 1, '<Fin>', ''

      INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
      INSERT #EDI SELECT 1, 'Importe Descuento Global', '131:'+CONVERT(varchar(20), ROUND(@DescuentoGlobal, 2))
      INSERT #EDI SELECT 1, '<Fin>', ''
    END

    INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
    INSERT #EDI SELECT 1, 'SubTotal', '125:'+CONVERT(varchar(20), ROUND(@SubTotal, 2))
    INSERT #EDI SELECT 1, '<Fin>', ''

    -- IVA
    INSERT #EDI SELECT 1, '<Impuestos>', 'TAX'
    INSERT #EDI SELECT 1, 'Clave Impuestos', '7'
    INSERT #EDI SELECT 1, 'IVA', 'VAT'
    INSERT #EDI SELECT 0, 'Titulo', ''
    INSERT #EDI SELECT 0, '????', ''
    INSERT #EDI SELECT 1, 'Tasa', ':::'+CONVERT(varchar(20), ROUND(@Impuesto1Promedio, 2))
    INSERT #EDI SELECT 1, 'IVA Transferido', 'B'
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
    INSERT #EDI SELECT 1, 'Importe IVA', '124:'+CONVERT(varchar(20), ROUND(@Impuesto1Total, 2))
    INSERT #EDI SELECT 1, '<Fin>', ''

    -- IEPS
    IF NULLIF(@Impuesto2Total, 0.0) IS NOT NULL
    BEGIN
      INSERT #EDI SELECT 1, '<Impuestos>', 'TAX'
      INSERT #EDI SELECT 1, 'Clave Impuestos', '7'
      INSERT #EDI SELECT 1, 'IEPS', 'GST'
      INSERT #EDI SELECT 0, 'Titulo', ''
      INSERT #EDI SELECT 0, '????', ''
      INSERT #EDI SELECT 1, 'Tasa', ':::'+CONVERT(varchar(20), ROUND(@Impuesto2Promedio, 2))
      INSERT #EDI SELECT 1, 'IVA Transferido', 'B'
      INSERT #EDI SELECT 1, '<Fin>', ''

      INSERT #EDI SELECT 1, '<Importe Monetario>', 'MOA'
      INSERT #EDI SELECT 1, 'Importe IEPS', '124:'+CONVERT(varchar(20), ROUND(@Impuesto2Total, 2))
      INSERT #EDI SELECT 1, '<Fin>', ''
    END

    INSERT #EDI SELECT 1, '<Fin Mensaje>', 'UNT'
    INSERT #EDI SELECT 1, 'Total Segmentos', CONVERT(varchar, COUNT(*)+1) FROM #EDI WHERE Campo = '<Fin>'
    INSERT #EDI SELECT 1, 'Referencia Mensaje', RTRIM(@Modulo)+CONVERT(varchar, @ID)
    INSERT #EDI SELECT 1, '<Fin>', ''

    INSERT #EDI SELECT 1, '<Fin Mensaje>', 'UNZ'
    INSERT #EDI SELECT 1, 'Numero Mensajes', '1'
    INSERT #EDI SELECT 1, 'Referencia Envio', dbo.fnEDI(@ReferenciaEnvio)
    INSERT #EDI SELECT 1, '<Fin>', ''
  END ELSE
  IF @Layout = 'CHEDRAUI'
  BEGIN
    INSERT #CFD SELECT 1, 'SubTotales', '[S]'
    INSERT #CFD SELECT 1, 'SubTotal', CONVERT(varchar(20), ROUND(@SubTotal+@ImporteDescuentoGlobal, 2))
    INSERT #CFD SELECT 0, 'Monto Descuento 1', CONVERT(varchar(20), ROUND(@ImporteDescuentoGlobal, 2))
    INSERT #CFD SELECT 0, 'Monto Descuento 2', NULL
    INSERT #CFD SELECT 0, 'Monto Descuento 3', NULL
    INSERT #CFD SELECT 0, 'Monto Descuento 4', NULL
    INSERT #CFD SELECT 0, 'Monto Descuento 5', NULL
    INSERT #CFD SELECT 1, 'IVA', CONVERT(varchar(20), ROUND(@Impuesto1Total, 2))
    INSERT #CFD SELECT 1, 'IEPS', CONVERT(varchar(20), ROUND(ISNULL(@Impuesto2Total, 0.0), 2))
    INSERT #CFD SELECT 1, 'Total', CONVERT(varchar(20), ROUND(@Total, 2))
    INSERT #CFD SELECT 1, 'SubTotal 2', CONVERT(varchar(20), ROUND(@SubTotal, 2))
    INSERT #CFD SELECT 0, 'Total Articulos Facturados', CONVERT(varchar(20), ROUND(@SumaCantidad, 4))
    INSERT #CFD SELECT 1, '% IVA', CONVERT(varchar(20), ROUND(@Impuesto1Promedio, 2))
    INSERT #CFD SELECT 1, '% IEPS', CONVERT(varchar(20), ROUND(@Impuesto2Promedio, 2))
    INSERT #CFD SELECT 0, '% ISR', NULL
    INSERT #CFD SELECT 0, 'Monto ISR', NULL
    INSERT #CFD SELECT 0, '% Impuesto Petroleo', NULL
    INSERT #CFD SELECT 0, 'Monto Impuesto Petroleo', NULL
    INSERT #CFD SELECT 0, '% Excento', NULL
    INSERT #CFD SELECT 0, 'Monto Excento', NULL
    INSERT #CFD SELECT 0, '% Estatal', NULL
    INSERT #CFD SELECT 0, 'Monto Estatal', NULL
    INSERT #CFD SELECT 0, '% Cedular', NULL
    INSERT #CFD SELECT 0, 'Monto Cedular', NULL
    INSERT #CFD SELECT 0, '% Municipal', NULL
    INSERT #CFD SELECT 0, 'Monto Municipal', NULL
    INSERT #CFD SELECT 0, '% Hospedaje', NULL
    INSERT #CFD SELECT 0, 'Monto Hospedaje', NULL
    INSERT #CFD SELECT 0, '% Otros', NULL
    INSERT #CFD SELECT 0, 'Monto Otros', NULL
    INSERT #CFD SELECT 1, 'Numero Partidas', CONVERT(varchar(20), @Conteo)
    INSERT #CFD SELECT 0, '% IVA Retenido', NULL
    INSERT #CFD SELECT 0, 'Monto IVA Retenido', NULL
    INSERT #CFD SELECT 0, '% ISR Retenido', NULL
    INSERT #CFD SELECT 0, 'Monto ISR Retenido', NULL
    INSERT #CFD SELECT 0, 'Monto Total Descuentos', CONVERT(varchar(20), ROUND(@DescuentosTotales, 2))
    INSERT #CFD SELECT 1, 'SubTotal 3', CONVERT(varchar(20), ROUND(@SumaSubTotalLinea, 2))
    INSERT #CFD SELECT 1, 'SubTotal 4', CONVERT(varchar(20), ROUND(ISNULL(@SumaImporteLinea,0.0)+ISNULL(@Impuesto1Total, 0.0)+ISNULL(@Impuesto2Total, 0.0), 2))
    INSERT #CFD SELECT 0, 'Etiqueta 1', NULL
    INSERT #CFD SELECT 0, 'Etiqueta 2', NULL
    INSERT #CFD SELECT 0, 'Enter', '{@Enter}'
  END 

  -- Addendas
  IF @Layout = 'SAT'
    SELECT '<Addenda>{@Addenda}</Addenda>'

  -- Generar Resultado EDIFACT
  IF @Layout = 'EDIFACT'
    EXEC spConvertirEDIFACT

  IF @Layout = 'SAT'
  BEGIN
    SELECT '</Comprobante>'
--    IF @TipoAddenda = 'INTERFACTURA' SELECT '</FacturaRoot>'

    IF @Validar = 0
    BEGIN
      IF @Estatus = 'CANCELADO'
        UPDATE CFD 
           SET FechaCancelacion = GETDATE()
         WHERE Modulo = @Modulo AND ModuloID = @ID
      ELSE
        UPDATE CFD 
           SET Fecha = @Fecha, Ejercicio = YEAR(@Fecha), Periodo = MONTH(@Fecha), Empresa = @Empresa, MovID = @MovID, Serie = @Serie, Folio = @Folio, RFC = @ClienteRFC, 
               Aprobacion = CONVERT(varchar, YEAR(@fechaAprobacion))+CONVERT(varchar, @noAprobacion), Importe = @SubTotal, Impuesto1 = @Impuesto1Total, Impuesto2 = @Impuesto2Total
         WHERE Modulo = @Modulo AND ModuloID = @ID
    END
  END ELSE
  IF @Layout IN ('CHEDRAUI', 'EDIFACT')
  BEGIN
    IF EXISTS(SELECT * FROM #CFD WHERE Requerido = 1 AND NULLIF(RTRIM(Dato), '') IS NULL)
    BEGIN
      INSERT #CFD SELECT 1, '{@CamposRequeridos}', NULL
      SELECT Campo
        FROM #CFD
       WHERE Requerido = 1 AND NULLIF(RTRIM(Dato), '') IS NULL
       ORDER BY ID
    END ELSE
    BEGIN
      SELECT ISNULL(RTRIM(Dato), '')
        FROM #CFD
       ORDER BY ID
    END
  END ELSE  
  IF @Layout LIKE 'AMECE%'
    SELECT '</requestForPayment>'+
           '</Addenda>'
  ELSE
  IF @Layout LIKE '%INTERFACTURA%'
    SELECT '</if:Encabezado>'+
             CASE @MovTipo 
             WHEN 'VTAS.D' THEN '</if:NotaCreditoInterfactura>' 
             WHEN 'CXC.NC' THEN '</if:NotaCreditoInterfactura>' 
             WHEN 'VTAS.B' THEN '</if:NotaDebitoInterfactura>' 
             WHEN 'CXC.CA' THEN '</if:NotaDebitoInterfactura>' 
             ELSE '</if:FacturaInterfactura>' END+
           '</Addenda>'
  ELSE
  IF @Layout = 'HOME DEPOT'
    SELECT '</Encabezado>'+
           '</Addenda>'
  ELSE
  IF @Layout = 'SORIANA'
    SELECT '</DSCargaRemisionProv>'+
           '</Addenda>'
  ELSE
  IF @LayOut = 'ASPEL'
  BEGIN
    SELECT '</Obspartidas>'
    SELECT dbo.fnTagInt('totalpartidas',@NumeroArticulos)
    SELECT '<Cadena>'
    --SELECT cadenaOriginal FROM CFD WHERE Modulo = @Modulo AND ModuloID = @ID
    SELECT  '{@CadenaOriginal}'
    SELECT '</Cadena>'
    SELECT dbo.fnTag('Observaciones', @Observaciones)+
            dbo.fnTag('NoEmpresa', 2)
    SELECT '</Addenda>'
  END
  IF @LayOut = 'ASSENSA'
    EXEC SpAddendaSorianaASSENSA @Id, @Referencia

  SET CONCAT_NULL_YIELDS_NULL OFF
  RETURN
END
GO

