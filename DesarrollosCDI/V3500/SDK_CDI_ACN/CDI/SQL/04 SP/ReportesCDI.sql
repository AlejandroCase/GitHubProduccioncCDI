SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

-------****ESTADO DE CUENTA****-------
--BEGM 20101117. Estado de Cuenta CXC
IF OBJECT_ID('spCDIRepCxcEstadoCuenta', 'P') IS NOT NULL
  DROP PROCEDURE spCDIRepCxcEstadoCuenta
GO

CREATE PROCEDURE spCDIRepCxcEstadoCuenta(@Empresa varchar(5), @Socio varchar(100), @Sucursal int, @Fecha datetime, @Membresia int,
                                         @Concepto varchar(50), @Cliente varchar(10), @Estatus varchar(15), @Moneda varchar(10))
AS
BEGIN

  DECLARE @tmp_EdoCuenta TABLE (ID          int IDENTITY(1,1),
                                Empresa     varchar(5), 
                                Cliente     varchar(20), 
                                Socio       varchar(100), 
                                Nombre      varchar(150), 
                                Fecha       datetime, 
                                Mov         varchar(20), 
                                MovID       varchar(20), 
                                Concepto    varchar(50), 
                                Cargo       money, 
                                FechaAbono  datetime, 
                                MovAbono    varchar(20), 
                                MovIDAbono  varchar(20), 
                                Abono       money, 
                                Membresia   int)

  IF @Cliente = '0' SELECT @Cliente = NULL
  IF @Sucursal = -1 SELECT @Sucursal = NULL
  SELECT @Estatus = NULLIF(NULLIF(RTRIM(@Estatus), ''), 'NULL')
  IF @Estatus = '0' SELECT @Estatus = NULL
  SET @Socio = NULLIF(@Socio, 'NULL')
  SET @Cliente = NULLIF(@Cliente, 'NULL')
  SET @Membresia = NULLIF(@Membresia, 0)
  SET @Concepto = NULLIF(@Concepto, 'NULL')
  SET @Moneda = NULLIF(@Moneda, 'NULL')

  INSERT INTO @tmp_EdoCuenta(Empresa, Cliente, Socio, Nombre, Fecha, Mov, MovID, Concepto, Cargo, FechaAbono, MovAbono, MovIDAbono, Abono, Membresia)
  SELECT a.Empresa, a.Cuenta Cliente, c.Socio, 
               c.PersonalNombres + ' ' + ISNULL(c.PersonalApellidoPaterno, '') + ' ' + ISNULL(c.PersonalApellidoMaterno, '') Nombre, 
               a.Fecha, a.Mov, a.MovID, cxc.Concepto, a.Cargo, ax.Fecha FechaAbono, ax.Mov MovAbono, ax.MovID MovIDAbono, ax.Abono, Membresia
  FROM Auxiliar a
  INNER JOIN Cxc ON a.Empresa = Cxc.Empresa AND a.Mov = Cxc.Mov AND a.MovID = Cxc.MovID 
  LEFT JOIN Auxiliar ax ON a.Empresa = ax.Empresa AND ax.Rama = 'CXC' AND a.Mov = ax.Aplica AND a.MovID = ax.AplicaID 
                           AND ax.EsCancelacion = 0 AND ISNULL(ax.Abono, 0) <> 0
  INNER JOIN Cxc c2 ON ax.Empresa = c2.Empresa AND ax.Mov = c2.Mov AND ax.MovID = c2.MovID
  INNER JOIN Cte c ON a.Cuenta = c.Cliente
  INNER JOIN MovTipo mt ON Cxc.Mov = mt.Mov 
  WHERE a.Empresa = @Empresa 
        AND a.Rama = 'CXC' 
        AND a.EsCancelacion = 0
        AND ax.EsCancelacion = 0 
        AND ISNULL(a.Cargo, 0) <> 0  
        AND Cxc.OrigenTipo <> 'DIN'
        AND Cxc.Estatus = ISNULL(@Estatus, Cxc.Estatus)
        AND Cxc.Estatus NOT IN ('SINAFECTAR', 'CANCELADO')
        AND c2.Estatus NOT IN ('SINAFECTAR', 'CANCELADO')
        AND mt.Clave IN ('CXC.A', 'CXC.AR', 'CXC.F', 'CXC.FAC', 'CXC.FA', 'CXC.D', 'CXC.DM', 'CXC.DA', 'CXC.DP', 'CXC.NC', 'CXC.DAC', 'CXC.NCD','CXC.NCF', 'CXC.DV', 'CXC.NCP', 'CXC.CA', 'CXC.CAD', 'CXC.CAP','CXC.CD', 'CXC.RM', 'CXC.IM', 'CXC.SD', 'CXC.SCH') 
        AND ISNULL(Cxc.FechaConclusion, @Fecha) >= @Fecha 
        AND c.Socio = ISNULL(@Socio, c.Socio)
        AND a.Cuenta = ISNULL(@Cliente, a.Cuenta) 
        AND Cxc.Sucursal = ISNULL(@Sucursal, Cxc.Sucursal)
        AND Cxc.Moneda = ISNULL(@Moneda, Cxc.Moneda)
        AND ISNULL(c.Membresia, 0) = ISNULL(@Membresia, ISNULL(c.Membresia, 0))
        AND ISNULL(Cxc.Concepto, '') = ISNULL(@Concepto, ISNULL(Cxc.Concepto, ''))
  ORDER BY Cliente, Mov, MovID
  
  UPDATE t1 SET t1.Cargo = CASE WHEN t1.Mov = t2.Mov AND t1.MovID = t2.MovID THEN 0.00 ELSE t1.Cargo END
  FROM @tmp_EdoCuenta t1
  INNER JOIN @tmp_EdoCuenta t2 ON t1.ID = t2.ID + 1

  SELECT Empresa, Cliente, Socio, Nombre, Fecha, Mov, MovID, Concepto, Cargo, FechaAbono, MovAbono, MovIDAbono, Abono, Membresia
  FROM @tmp_EdoCuenta
  ORDER BY Cliente, Mov, MovID
END
GO

-------**** A N Á L I T I C O  D E  C O R T E  D E  C A J A ****-------
--BEGM 20101122. Reporte Análitico de Corte De Caja
IF OBJECT_ID('spCDIRepCorteCaja', 'P') IS NOT NULL
  DROP PROCEDURE spCDIRepCorteCaja
GO

CREATE PROCEDURE spCDIRepCorteCaja (@Empresa varchar(5), @Comite varchar(50), @CtaDin varchar(10), @Cajero varchar(10), @Fecha datetime)
AS
BEGIN
  SET @Comite = CASE WHEN @Comite IN ('(Todos)', 'NULL', '') THEN NULL ELSE @Comite END
  SET @CtaDin = CASE WHEN @CtaDin IN ('(Todas)', 'NULL', '') THEN NULL ELSE @CtaDin END
  SET @Cajero = CASE WHEN @Cajero IN ('(Todos)', 'NULL', '') THEN NULL ELSE @CtaDin END
  
  SELECT Concepto, Proyecto, CtaDinero, Cajero, [TCredito], [TDebito], [AMEX], [AMEXPROMO], [Transferencia], [Efectivo], [Cheque], [ChequeUSD], [Otras], 
         ISNULL([TCredito],0)+ISNULL([TDebito],0)+ISNULL([AMEX],0)+ISNULL([AMEXPROMO],0)+ISNULL([Transferencia],0)+ISNULL([Efectivo],0)+ISNULL([Cheque],0)+ISNULL([ChequeUSD],0)+ISNULL([Otras], 0) Importe
  FROM (SELECT ISNULL(d.Concepto, 'Sin Concepto') Concepto, ISNULL(d.Proyecto, 'Sin Proyecto') Proyecto, d.CtaDinero, d.Cajero, 
               CASE WHEN ISNULL(d.FormaPago, dd.FormaPago) LIKE 'TC%' OR ISNULL(d.FormaPago, dd.FormaPago) IN ('Tarjeta Credito', 'Tarjeta Crédito') THEN 'TCredito' 
                    WHEN ISNULL(d.FormaPago, dd.FormaPago) IN ('Tarjeta Débito', 'Tarjeta Debito', 'T. Debito') THEN 'TDebito'
                    WHEN ISNULL(d.FormaPago, dd.FormaPago) = 'AME EXP' THEN 'AMEX'
                    WHEN ISNULL(d.FormaPago, dd.FormaPago) = 'AME EXP PROMO' THEN 'AMEXPROMO'
                    WHEN ISNULL(d.FormaPago, dd.FormaPago) IN ('Transferencia', 'Transferencia Electronica', 'Transferencia Electrónica') THEN 'Transferencia'
                    WHEN ISNULL(d.FormaPago, dd.FormaPago) IN ('Cheque', 'ChequeUSD', 'Efectivo') THEN ISNULL(d.FormaPago, dd.FormaPago)
               ELSE 'Otras' END FormaPago,
              (CASE WHEN d.FormaPago IS NULL THEN dd.Importe ELSE d.Importe END * CAST(d.TipoCambio as money)) Importe
        FROM Dinero d
        INNER JOIN DineroD dd ON d.ID = dd.ID
        INNER JOIN MovTipo mt ON mt.Mov = d.Mov
        INNER JOIN CtaDinero cd ON cd.CtaDinero = d.CtaDinero
        WHERE d.Empresa = @Empresa AND Clave = 'DIN.I' AND d.Estatus = 'CONCLUIDO' AND cd.Tipo = 'CAJA' 
              AND ISNULL(d.Proyecto, '') = ISNULL(@Comite, ISNULL(d.Proyecto, ''))
              AND d.CtaDinero = ISNULL(@CtaDin, d.CtaDinero)
              AND d.Cajero = ISNULL(@Cajero, d.Cajero)
              AND FechaEmision = @Fecha
        ) orig
  PIVOT(SUM(Importe) FOR FormaPago in ([TCredito], [TDebito], [AMEX], [AMEXPROMO], [Transferencia], [Efectivo], [Cheque], [ChequeUSD], [Otras])) pvt
  ORDER BY /*Proyecto,*/ CtaDinero, Cajero , concepto
    
END
GO


-------**** A N Á L I T I C O  D E  C A R G O S ****-------
--BEGM 20101125. Reporte Resumen Analítico de Cargos
IF OBJECT_ID('spCDIRepResumenCargos', 'P') IS NOT NULL
  DROP PROCEDURE spCDIRepResumenCargos
GO

CREATE PROCEDURE spCDIRepResumenCargos (@Empresa varchar(5), @FechaD datetime, @FechaA datetime)
AS
BEGIN
  DECLARE @TmpResumenCargos TABLE (Concepto   varchar(50), 
                                   Cargos     float DEFAULT 0.00, 
                                   Pagos      float DEFAULT 0.00, 
                                   Descuento  float DEFAULT 0.00, 
                                   Saldo      float DEFAULT 0.00
                            )

  DECLARE @PasoImportes TABLE (Concepto   varchar(50), 
                               Importe    float)
                            
  INSERT INTO @TmpResumenCargos (Concepto, Cargos)
  SELECT ISNULL(Concepto, '') Concepto, SUM(ISNULL(Importe,0) + ISNULL(Impuestos, 0)) Importe
  FROM Venta
  WHERE Estatus = 'CONCLUIDO' AND Concepto <> 'Deportes' 
        AND Empresa = @Empresa
        AND FechaEmision BETWEEN @FechaD AND @FechaA
  GROUP BY ISNULL(Concepto, '')

  --Pagos (Cobros)
  INSERT INTO @PasoImportes(Concepto, Importe)
  SELECT ISNULL(Concepto, '') Concepto, SUM(ISNULL(Importe,0) + ISNULL(Impuestos, 0)) Importe
  FROM Cxc
  INNER JOIN MovTipo mt ON mt.Mov = Cxc.Mov AND mt.Modulo = 'CXC'
  WHERE mt.Clave = 'CXC.C' AND Estatus = 'CONCLUIDO'
        AND Empresa = @Empresa
        AND FechaEmision BETWEEN @FechaD AND @FechaA
  GROUP BY ISNULL(Concepto, '')
  
  UPDATE t SET Pagos = pag.Importe
  FROM @TmpResumenCargos t
  INNER JOIN @PasoImportes pag ON t.Concepto = pag.Concepto

  INSERT INTO @TmpResumenCargos(Concepto, Pagos)
  SELECT pag.Concepto, pag.Importe
  FROM @TmpResumenCargos t
  RIGHT JOIN @PasoImportes pag ON t.Concepto = pag.Concepto
  WHERE t.Concepto IS NULL AND pag.Concepto IS NOT NULL

  DELETE @PasoImportes 

  --Descuentos  
  INSERT INTO @PasoImportes(Concepto, Importe)
  SELECT ISNULL(Concepto, '') Concepto, SUM(ISNULL(Importe,0) + ISNULL(Impuestos, 0)) Importe
  FROM Cxc
  WHERE Mov = 'Nota Credito' AND OrigenTipo = 'VTAS'
        AND Empresa = @Empresa
        AND FechaEmision BETWEEN @FechaD AND @FechaA
  GROUP BY ISNULL(Concepto, '') 

  UPDATE t SET Descuento = descto.Importe
  FROM @TmpResumenCargos t
  INNER JOIN @PasoImportes descto ON t.Concepto = descto.Concepto

  INSERT INTO @TmpResumenCargos(Concepto, Descuento)
  SELECT descto.Concepto, descto.Importe
  FROM @TmpResumenCargos t
  RIGHT JOIN @PasoImportes descto ON t.Concepto = descto.Concepto
  WHERE t.Concepto IS NULL AND descto.Concepto IS NOT NULL

  UPDATE @TmpResumenCargos SET Saldo = ISNULL(Cargos, 0.00) - ISNULL(Pagos, 0.00) - ISNULL(Descuento, 0.00)
  
  SELECT *
  FROM @TmpResumenCargos 
  ORDER BY Concepto

END
GO


-------**** R E I N S T A L A C I O N  D E  S O C I O S ****-------
--BEGM 20101206. Reporte de Reinstalación de Socios
IF OBJECT_ID('spCDIRepReinstalaciones', 'P') IS NOT NULL
  DROP PROCEDURE spCDIRepReinstalaciones
GO

CREATE PROCEDURE spCDIRepReinstalaciones (@Empresa varchar(5), @Fecha datetime, @SocioD varchar(100), @SocioA varchar(100))
AS
BEGIN
  
  DECLARE @ListaBajas TABLE (ID int identity(1,1), Cliente varchar(10), Fecha datetime, IDCteHist int, Estatus varchar(15))
  DECLARE @Clientes TABLE (Cliente varchar(10), Fecha datetime)

  IF @SocioD IN ('', 'NULL', NULL) 
    SELECT @SocioD = MIN(Socio) FROM Cte WHERE CDISocio = 1
  
  IF @SocioA IN ('', 'NULL', NULL) 
    SELECT @SocioA = MAX(Socio) FROM Cte WHERE CDISocio = 1

  INSERT INTO @ListaBajas(Cliente, Fecha, IDCteHist, Estatus)
  SELECT c.Cliente, Fecha, ID, ch.Estatus
  FROM CteHist ch
  INNER JOIN Cte c ON c.Cliente = ch.Cliente
  WHERE c.Socio BETWEEN @SocioD AND @SocioA

  INSERT INTO @Clientes
  SELECT t2.Cliente, t2.Fecha
  FROM @ListaBajas t1
  LEFT JOIN @ListaBajas t2 ON t1.ID = t2.ID + 1 
  WHERE t1.Estatus <> t2.Estatus 
        AND t1.Estatus = 'ALTA' 
        AND t2.Estatus = 'BLOQUEADO' 
        AND dbo.fnFechaSinHora(t2.Fecha) = @Fecha

  SELECT ROW_NUMBER() OVER(ORDER BY cs.ID) Renglon, cs.Socio, dbo.fnFechaSinHora(cs.FechaEmision) FechaReinstal, 
          nmlc.ImporteCobro MontoPagado, nmlc.Meses ObservacionesCobro, nmlnc.ImporteCobro Condonado, nmlnc.Meses ObservaCondonado, 
          u.Nombre Autorizo, nmlcp.Meses ObservacionesPorCobrar, nmlcp.ImporteCobro PorCobrar
  FROM CDISocio cs
  INNER JOIN MovTipo mt ON cs.Mov = mt.Mov
  INNER JOIN @Clientes c ON c.Cliente = cs.Cliente
  LEFT JOIN dbo.fnCDINombreMesImporte (@Empresa, 'Cobro', @Fecha) nmlc ON cs.Cliente = nmlc.Cliente AND dbo.fnFechaSinHora(cs.FechaEmision) = nmlc.FechaCobro
  LEFT JOIN dbo.fnCDINombreMesImporte (@Empresa, 'NCR', @Fecha) nmlnc ON cs.Cliente = nmlnc.Cliente AND dbo.fnFechaSinHora(cs.FechaEmision) = nmlnc.FechaCobro
  LEFT JOIN Usuario u ON nmlnc.Usuario = u.Usuario
  LEFT JOIN dbo.fnCDINombreMesImporte (@Empresa, 'CobroPend', @Fecha) nmlcp ON cs.Cliente = nmlcp.Cliente AND dbo.fnFechaSinHora(cs.FechaEmision) = nmlcp.FechaCobro
  WHERE mt.Clave = 'SOC.ACEPTA' AND SubClave = 'SOC.REINGRESO'
  ORDER BY dbo.fnFechaSinHora(cs.FechaEmision), cs.Socio

END
GO

IF OBJECT_ID('fnCDINombreMesImporte', 'TF') IS NOT NULL
  DROP FUNCTION fnCDINombreMesImporte
GO

CREATE FUNCTION fnCDINombreMesImporte (@Empresa varchar(5), @Tipo varchar(10), @Fecha datetime)
RETURNS @NombreMesCXC TABLE(ID int IDENTITY(1,1), 
                            Cliente varchar(10), 
                            FechaCobro datetime, 
                            ImporteCobro money,
                            Meses varchar(100), 
                            Usuario varchar(10))
AS
BEGIN 
  DECLARE @Total int, 
          @i int, 
          @ListaMeses varchar(100), 
          @FechaCobro datetime, 
          @Cliente varchar(10)

  DECLARE @MesID TABLE (Mes varchar(10), Fecha datetime, Cliente varchar(10), ImporteCobro money, Usuario varchar(10))

  IF @Tipo = 'Cobro'
    INSERT INTO @MesID(Mes, Fecha, Cliente, ImporteCobro)
    SELECT SUBSTRING(DATENAME(MM, c.FechaEmision), 1, 3) Mes, cc.FechaEmision, cc.Cliente, cc.Importe 
    FROM Cxc c
    INNER JOIN CxcD cd ON cd.Aplica = c.Mov AND cd.AplicaID = c.MovID 
    INNER JOIN Cxc cc on cd.id = cc.id
    INNER JOIN MovTipo mt ON cc.Mov = mt.Mov
    WHERE cc.Empresa = @Empresa AND mt.Modulo = 'CXC' AND mt.Clave = 'CXC.C' AND cc.Estatus = 'CONCLUIDO'
          AND cc.FechaEmision >= @Fecha
  ELSE IF @Tipo = 'NCR'
    INSERT INTO @MesID
    SELECT SUBSTRING(DATENAME(MM, c.FechaEmision), 1, 3) Mes, cc.FechaEmision, cc.Cliente, cc.Importe, cc.Usuario
    FROM Cxc c
    INNER JOIN CxcD cd ON cd.Aplica = c.Mov AND cd.AplicaID = c.MovID 
    INNER JOIN Cxc cc on cd.id = cc.id
    INNER JOIN MovTipo mt ON cc.Mov = mt.Mov
    WHERE cc.Empresa = @Empresa AND mt.Modulo = 'CXC' AND mt.Clave = 'CXC.NC' AND cc.Estatus = 'CONCLUIDO'
          AND cc.FechaEmision >= @Fecha
  ELSE IF @Tipo = 'CobroPend'
    INSERT INTO @MesID(Mes, Fecha, Cliente, ImporteCobro)
    SELECT SUBSTRING(DATENAME(MM, c.FechaEmision), 1, 3) Mes, cc.FechaEmision, cc.Cliente, cc.Importe
    FROM Cxc c
    INNER JOIN CxcD cd ON cd.Aplica = c.Mov AND cd.AplicaID = c.MovID 
    INNER JOIN Cxc cc on cd.id = cc.id
    INNER JOIN MovTipo mt ON cc.Mov = mt.Mov
    WHERE cc.Empresa = @Empresa AND mt.Modulo = 'CXC' AND mt.Clave = 'CXC.F' AND cc.Estatus = 'PENDIENTE'
          AND cc.FechaEmision >= @Fecha


  INSERT INTO @NombreMesCXC(Cliente, FechaCobro, Usuario, ImporteCobro)
  SELECT Cliente, Fecha, ISNULL(Usuario, ''), SUM(ImporteCobro) Importe
  FROM @MesID
  GROUP BY Cliente, Fecha, ISNULL(Usuario, '')
  
  SELECT @Total = @@IDENTITY, @i = 1

  WHILE @i <= @Total
  BEGIN
    SELECT @FechaCobro = FechaCobro, @Cliente = Cliente FROM @NombreMesCXC WHERE ID = @i
  
    SELECT @ListaMeses = COALESCE(@ListaMeses + ', ', '') + Mes FROM @MesID WHERE Cliente = @Cliente AND Fecha = @FechaCobro GROUP BY Mes
  
    UPDATE @NombreMesCXC SET Meses = @ListaMeses WHERE ID = @i
  
    SELECT @ListaMeses = NULL, @i = @i + 1 

  END

RETURN
END
GO

-------**** C A N C E L A C I O N E S  C X C ****-------
--BEGM 20101208. Reporte de Cancelaciones

IF OBJECT_ID('spCDIRepCancelaciones', 'P') IS NOT NULL
  DROP PROCEDURE spCDIRepCancelaciones
GO

CREATE PROCEDURE spCDIRepCancelaciones (@Empresa varchar(5), @FechaD datetime, @FechaA datetime)
AS
BEGIN

  SELECT CAST(YEAR(v.FechaEmision) as varchar(4)) Anio, CAST(MONTH(v.FechaEmision) as varchar(2)) Periodo, ISNULL(Cxc.Concepto, '') Concepto, 
         SUM(Cxc.Importe) Importe, SUM(Cxc.Impuestos) Impuestos, SUM(Cxc.Importe + Cxc.Impuestos) Total
  FROM Cxc
  INNER JOIN CxcD ON Cxc.ID = CxcD.ID
  INNER JOIN MovTipo mt ON Cxc.Mov = mt.Mov
  INNER JOIN Venta v ON CxcD.Aplica = v.Mov AND CxcD.AplicaID = v.MovID
  WHERE Cxc.Empresa = @Empresa 
        AND mt.Clave = 'CXC.NC' 
        AND cxc.Estatus = 'CONCLUIDO'
        AND v.FechaEmision BETWEEN @FechaD AND @FechaA
  GROUP BY YEAR(v.FechaEmision), MONTH(v.FechaEmision), ISNULL(Cxc.Concepto, '')
  ORDER BY Concepto, Anio, Periodo
END
GO

-------**** C A R G O S  T C ****-------
--BEGM 20101213. Reporte de Cargos a Tarjetas de Crédito

IF OBJECT_ID('spCDIRepCargosTC', 'P') IS NOT NULL
  DROP PROCEDURE spCDIRepCargosTC
GO

CREATE PROCEDURE spCDIRepCargosTC (@Empresa varchar(5), @FechaD datetime, @FechaA datetime)
AS
BEGIN

  --SELECT c.Socio, ISNULL(c.PersonalNombres, '') + ' ' + ISNULL(c.PersonalApellidoPaterno, '') + ' ' + ISNULL(c.PersonalApellidoMaterno, '') Nombre, 
  --       ISNULL(cxc.Referencia, '') Referencia, cxc.FechaEmision, ISNULL(cxc.Concepto, '') Concepto, 
  --       SUM(cxc.Importe + ISNULL(cxc.Impuestos, 0.00)) Importe
  --FROM Cxc
  --INNER JOIN Cte c ON cxc.Cliente = c.Cliente
  --WHERE cxc.Empresa = @Empresa
  --      AND cxc.FechaEmision BETWEEN @FechaD AND @FechaA
  --      AND cxc.CDICargoAutomatico = 1 
  --      AND cxc.Estatus = 'CONCLUIDO'
  --      AND cxc.Mov = 'Cobro' 
  --GROUP BY c.Socio, ISNULL(c.PersonalNombres, ''), ISNULL(c.PersonalApellidoPaterno, ''), ISNULL(c.PersonalApellidoMaterno, ''), 
  --         ISNULL(cxc.Referencia, ''), cxc.FechaEmision, ISNULL(cxc.Concepto, '') 
  --ORDER BY Socio, Referencia, FechaEmision, Concepto

		SELECT c.Socio, ISNULL(c.PersonalNombres, '') + ' ' + ISNULL(c.PersonalApellidoPaterno, '') + ' ' + ISNULL(c.PersonalApellidoMaterno, '') Nombre,  
				ISNULL(d.Referencia, '') Referencia, d.FechaEmision, ISNULL(d.Concepto, '') Concepto,  
				SUM(d.Importe + ISNULL(d.Impuestos, 0.00)) Importe  
		FROM Dinero d  
				INNER JOIN Cte c ON d.Contacto = c.Cliente
		WHERE d.Empresa = @Empresa
				AND d.FechaEmision BETWEEN @FechaD AND @FechaA
				AND d.Mov IN ('Deposito Amex','Deposito Bancomer')
				AND d.Estatus = 'CONCLUIDO'
		GROUP BY c.Socio, ISNULL(c.PersonalNombres, ''), ISNULL(c.PersonalApellidoPaterno, ''), ISNULL(c.PersonalApellidoMaterno, ''),  
				ISNULL(d.Referencia, ''), d.FechaEmision, ISNULL(d.Concepto, '')
		ORDER BY Socio, Referencia, FechaEmision, Concepto

END
GO


-------**** C O M P A R A T I V O  D E  I N G R E S O S ****-------
--BEGM 20110103. Comparativo de Ingresos

IF OBJECT_ID('CDImis_spVentaCompCat', 'P') IS NOT NULL
  DROP PROCEDURE CDImis_spVentaCompCat
GO

CREATE PROCEDURE CDImis_spVentaCompCat
                 @Ejercicio	    int,
                 @Periodo	      int,
                 @EjercicioAnt	int,
                 @MesAnt		    int,
                 @ArticuloD	    char(20),
                 @ArticuloA	    char(20),
                 @Categoria	    varchar(50),
                 @Empresa	      char(5)
		    
AS 
BEGIN

    DECLARE @DiaAct		int,
            @DiaAnt		int,
            @MesAct		int,
            @AnoAct		int,
            @AnoAnt		int

    --SELECT @EjercicioAnt = @Ejercicio - 1
    SELECT @MesAct = @Periodo
    --SELECT @MesAnt = @Periodo

-- Articulos
    SELECT a.Articulo, a.Categoria
    INTO #Artic
    FROM Art a
    INNER JOIN mis_VentaUtilD b ON a.Articulo = b.Articulo
    WHERE b.MovClave IN('VTAS.F', 'VTAS.FM', 'VTAS.D', 'VTAS.B', 'VTAS.EST')
          AND ((b.Ejercicio = @EjercicioAnt
          AND b.Periodo <= @Periodo) 
          OR (b.Ejercicio = @Ejercicio
          AND b.Periodo <= @Periodo))
          AND ISNULL(a.Categoria, '')  = CASE @Categoria  WHEN 'NULL' THEN ISNULL(a.Categoria, '')  ELSE @Categoria  END
          AND a.Articulo BETWEEN @ArticuloD AND @ArticuloA
    GROUP BY a.Articulo, a.Categoria
    ORDER BY a.Articulo

-- Existencias
  SELECT a.Articulo,
         'Existencia' = Sum(b.Existencia)
    INTO #Exist 
    FROM Art a
    JOIN ArtExistenciaNeta b ON a.Articulo = b.Articulo
   WHERE ISNULL(a.Categoria, '') = CASE @Categoria WHEN 'NULL' THEN ISNULL(a.Categoria, '') ELSE @Categoria END
     AND b.Empresa = @Empresa
   GROUP BY a.Articulo
   ORDER BY a.Articulo

-- Cantidad Actual
  --SELECT a.Articulo,
  --       'CantAct' = SUM(b.CantidadFactor)
  --  INTO #Actual
  --  FROM Art a
  --  JOIN mis_VentaUtilD b ON a.Articulo = b.Articulo 
  -- WHERE b.Ejercicio = @Ejercicio
  --   AND b.MovClave IN('VTAS.F', 'VTAS.FM', 'VTAS.D', 'VTAS.B', 'VTAS.EST')
  --   AND b.Periodo <= @Periodo
  --   AND ISNULL(a.Categoria, '') = CASE @Categoria WHEN 'NULL' THEN ISNULL(a.Categoria, '') ELSE @Categoria END
  --   AND b.Empresa = @Empresa
  -- GROUP BY a.Articulo

-- Cantidad Mes Actual
  SELECT a.Articulo,
         'CantMAct' = SUM(b.CantidadFactor), 
         'ImpMAct' = SUM(b.Importe)
    INTO #ActualM
    FROM Art a
    JOIN mis_VentaUtilD b ON a.Articulo = b.Articulo 
   WHERE b.Ejercicio = @Ejercicio
     AND b.MovClave IN('VTAS.F', 'VTAS.FM', 'VTAS.D', 'VTAS.B', 'VTAS.EST')
     AND b.Periodo = @Periodo
     AND ISNULL(a.Categoria, '') = CASE @Categoria WHEN 'NULL' THEN ISNULL(a.Categoria, '') ELSE @Categoria END
     AND b.Empresa = @Empresa
   GROUP BY a.Articulo

---- Cantidad Anterior
--  SELECT a.Articulo,
--         'CantAnt' = SUM(b.CantidadFactor)
--    INTO #Anterior
--    FROM Art a
--    JOIN mis_VentaUtilD b ON a.Articulo = b.Articulo  
--   WHERE b.Ejercicio = @EjercicioAnt
--     AND b.MovClave IN('VTAS.F', 'VTAS.FM', 'VTAS.D', 'VTAS.B', 'VTAS.EST')
--     AND b.Periodo <= @MesAnt --@Periodo
--     AND ISNULL(a.Categoria, '') = CASE @Categoria WHEN 'NULL' THEN ISNULL(a.Categoria, '') ELSE @Categoria END
--     AND b.Empresa = @Empresa
--   GROUP BY a.Articulo
--   ORDER BY a.Articulo

-- Cantidad Mes Anterior
  SELECT a.Articulo,
         'CantMAnt' = SUM(b.CantidadFactor), 
         'ImpMAnt' = SUM(b.Importe)
    INTO #AnteriorM
    FROM Art a
    JOIN mis_VentaUtilD b ON a.Articulo = b.Articulo 
   WHERE b.Ejercicio = @EjercicioAnt
     AND b.MovClave IN('VTAS.F', 'VTAS.FM', 'VTAS.D', 'VTAS.B', 'VTAS.EST')
     AND b.Periodo = @MesAnt --@Periodo
     AND ISNULL(a.Categoria, '') = CASE @Categoria WHEN 'NULL' THEN ISNULL(a.Categoria, '') ELSE @Categoria END
     AND b.Empresa = @Empresa
   GROUP BY a.Articulo
   ORDER BY a.Articulo

-- Graba en Tabla de Resultados
  SELECT a.Articulo, a.Categoria,
         --'CantAct'  = CASE when CantAct  IS NULL THEN 0 ELSE CantAct  end,
         'ImpMAct'  = CASE when ImpMAct  IS NULL THEN 0 ELSE ImpMAct  end,
         'CantMAct' = CASE when CantMAct IS NULL THEN 0 ELSE CantMAct end,
         --'CantAnt'  = CASE when CantAnt  IS NULL THEN 0 ELSE CantAnt  end,
         'ImpMAnt'  = CASE when ImpMAnt  IS NULL THEN 0 ELSE ImpMAnt  end,
         'CantMAnt' = CASE when CantMAnt IS NULL THEN 0 ELSE CantMAnt end,
         'Existencia' = CASE when Existencia IS NULL THEN 0 ELSE Existencia end
    INTO #COMPARRCat
    FROM #Artic a
    LEFT OUTER JOIN #Exist b ON a.Articulo = b.Articulo
    --LEFT OUTER JOIN #Actual c ON a.Articulo = c.Articulo
    --LEFT OUTER JOIN #Anterior d ON a.Articulo = d.Articulo
    LEFT OUTER JOIN #ActualM e ON a.Articulo = e.Articulo
    LEFT OUTER JOIN #AnteriorM f ON a.Articulo = f.Articulo
   ORDER BY a.Categoria, a.Articulo

--Despliega Información
  SELECT *  FROM #COMPARRCat
  ORDER BY Categoria, Articulo

END
GO

