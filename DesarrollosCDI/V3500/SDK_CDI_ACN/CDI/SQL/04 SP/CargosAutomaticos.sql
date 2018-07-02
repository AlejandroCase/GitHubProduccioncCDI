SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

EXEC sp_configure 'show advanced options', 1
GO
RECONFIGURE
GO

EXEC sp_configure 'xp_cmdshell', 1
GO
RECONFIGURE
GO

IF OBJECT_ID('CDIProcCargosAutomPaso', 'U') IS NULL
  CREATE TABLE CDIProcCargosAutomPaso (Campo varchar(100))
GO

IF OBJECT_ID('spCDIArchivoAutom', 'P') IS NOT NULL
  DROP PROCEDURE spCDIArchivoAutom 
GO

CREATE PROCEDURE spCDIArchivoAutom (@Empresa varchar(5), @Banco varchar(10), @Moneda varchar(10))
AS
BEGIN

  IF @Banco = 'BANCOMER'
    -- ENCABEZADO
    SELECT 'H' + 'WEBFT2.00' + 'ENT' + '8135410' + 'CDEPISRAEL' + @Banco +
           (CAST(REPLACE(CONVERT(char(10), GETDATE(), 110), '-', '') AS CHAR(8))) + REPLICATE(' ', 18) + '.' 'Encabezado'
           --Indicador, VersionLO, TipArch, NumeroAfiliacion, Empresa, Banco, Fecha, Filler, FinReg
    UNION ALL
    --DETALLE
    SELECT 'D'+ '5' + (CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE cdb.NoTarjeta END + REPLICATE('0', (16-DATALENGTH(CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE cdb.NoTarjeta END)))) + 
           --(REPLICATE('0', (12 - DATALENGTH(REPLACE(CAST(ROUND(SUM(CAST(((vd.Precio * vd.Cantidad)*(1+(ISNULL(Impuesto1,0)/100))*(1-(ISNULL(DescuentoLinea,0)/100))) AS money)), 2) as varchar(12)), '.', '')))) + REPLACE(CAST(ROUND(SUM(CAST(((vd.Precio * vd.Cantidad)*(1+(ISNULL(Impuesto1,0)/100))*(1-(ISNULL(DescuentoLinea,0)/100))) AS money)), 2) as varchar(12)), '.', '')) +
           (REPLICATE('0', (12 - DATALENGTH(REPLACE(CAST(ROUND(CAST(cxc.Saldo AS money), 2) as varchar(12)), '.', '')))) + REPLACE(CAST(ROUND(CAST(cxc.Saldo AS money), 2) as varchar(12)), '.', '')) +
           (CASE cxc.Moneda WHEN 'Pesos' THEN '484' WHEN 'Dolar' THEN '840' END) + 
           (REPLICATE('0', (19 - DATALENGTH(LTRIM(STR(cxc.ID))))) + LTRIM(STR(cxc.ID))) + '00' + '0' + REPLICATE(' ', 6) +
           REPLICATE(' ', 3) + '.' Detalle
           --Indicador, Cargo, NumCta, Importe, CodMon, Ref, CodRes, TipoAut, NumAut, Filler, Fin
    FROM Cxc
    INNER JOIN MovTipo mt ON mt.Mov = Cxc.Mov 
    -- ..:: 12/06/2012
    -- INNER JOIN Venta v ON Cxc.OrigenTipo = 'VTAS' AND v.Mov = Cxc.Origen AND v.MovID = Cxc.OrigenID 
    INNER JOIN Venta v ON Cxc.OrigenTipo IN ('VTAS','CXC') AND v.Mov = Cxc.Origen AND v.MovID = Cxc.OrigenID 
    -- ...:::
    INNER JOIN VentaD vd ON v.ID = vd.ID
    INNER JOIN Cte ON Cte.Cliente = Cxc.Cliente
    LEFT JOIN CDIDatosBancarios cdb ON Cte.Cliente = cdb.Cliente
    LEFT JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = vd.Articulo
    LEFT JOIN CDIDatosBancarios cdbv on v.CDITarjetaCargo = cdbv.NoTarjeta
    WHERE cxc.Empresa = @Empresa AND Cxc.Moneda = @Moneda AND Cxc.Estatus = 'PENDIENTE' 
          -- AND mt.Clave = 'CXC.F'   ..::  * 30/05/2012 JPV *
          AND mt.Clave IN ('CXC.F','CXC.D')     
          AND Cxc.Vencimiento <  GETDATE()
          -- ...:::
          AND cte.CDISocio = 1 /*Cte.Tipo = 'Socio'*/ 
          --AND (v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END) --((cdb.NoTarjeta = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 END)
          AND ((ISNULL(cdb.NoTarjeta, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo ELSE '' END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END)
          --AND ISNULL(cdb.Vigencia, GETDATE()) >= GETDATE() /*AND Cte.Titular = 1*/ 
          AND cdb.NoTarjeta IS NOT NULL AND cdb.NoTarjeta <> '' --AND cdb.AMEX IS NULL
          AND ISNULL(cag.Articulo, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN ISNULL(cag.Articulo, '') ELSE vd.Articulo END --antes THEN ''
          AND ISNULL(cdbv.NoTarjeta, '') = CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE ISNULL(cdbv.NoTarjeta, '') END
    UNION ALL
    -- DOCUMENTOS
    SELECT 'D'+ '5' + (CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE cdb.NoTarjeta END + REPLICATE('0', (16-DATALENGTH(CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE cdb.NoTarjeta END)))) + 
           --(REPLICATE('0', (12 - DATALENGTH(REPLACE(CAST(ROUND(SUM(CAST(((vd.Precio * vd.Cantidad)*(1+(ISNULL(Impuesto1,0)/100))*(1-(ISNULL(DescuentoLinea,0)/100))) AS money)), 2) as varchar(12)), '.', '')))) + REPLACE(CAST(ROUND(SUM(CAST(((vd.Precio * vd.Cantidad)*(1+(ISNULL(Impuesto1,0)/100))*(1-(ISNULL(DescuentoLinea,0)/100))) AS money)), 2) as varchar(12)), '.', '')) +
           (REPLICATE('0', (12 - DATALENGTH(REPLACE(CAST(ROUND(CAST(cxc.Saldo AS money), 2) as varchar(12)), '.', '')))) + REPLACE(CAST(ROUND(CAST(cxc.Saldo AS money), 2) as varchar(12)), '.', '')) +
           (CASE cxc.Moneda WHEN 'Pesos' THEN '484' WHEN 'Dolar' THEN '840' END) + 
           (REPLICATE('0', (19 - DATALENGTH(LTRIM(STR(cxc.ID))))) + LTRIM(STR(cxc.ID))) + '00' + '0' + REPLICATE(' ', 6) +
           REPLICATE(' ', 3) + '.'  Detalle
      FROM cxc Cxc 
      JOIN Cxc r 
        ON Cxc.Origen = r.Mov and Cxc.OrigenId = r.MovID  
     INNER JOIN MovTipo mt ON mt.Mov = cxc.Mov
     INNER JOIN Venta v ON v.Mov = r.Origen AND v.MovID = r.OrigenID 
     INNER JOIN VentaD vd ON v.ID = vd.ID
     INNER JOIN Cte ON Cte.Cliente = r.Cliente
      LEFT JOIN CDIDatosBancarios cdb ON Cte.Cliente = cdb.Cliente
      LEFT JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = vd.Articulo
      LEFT JOIN CDIDatosBancarios cdbv on v.CDITarjetaCargo = cdbv.NoTarjeta 
     WHERE cxc.mov = cxc.Origen 
       AND cxc.Origentipo = 'CXC'
       AND cxc.Empresa = @Empresa 
       AND Cxc.Moneda = @Moneda 
       AND Cxc.Estatus = 'PENDIENTE' 
       AND mt.Clave IN ('CXC.D')     
       AND Cxc.Vencimiento <  GETDATE()
       AND cte.CDISocio = 1 
       AND ((ISNULL(cdb.NoTarjeta, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo ELSE '' END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END)
       AND cdb.NoTarjeta IS NOT NULL AND cdb.NoTarjeta <> '' --AND cdb.AMEX IS NULL
       AND ISNULL(cag.Articulo, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN ISNULL(cag.Articulo, '') ELSE vd.Articulo END --antes THEN ''
       AND ISNULL(cdbv.NoTarjeta, '') = CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE ISNULL(cdbv.NoTarjeta, '') END          
    GROUP BY cdb.NoTarjeta, Cxc.Moneda, Cxc.ID, v.CDITarjetaCargo, cxc.Saldo

    UNION ALL
    -- TOTALES
    
    SELECT 'T' + (REPLICATE(0, (6 - DATALENGTH(LTRIM(STR(COUNT(1)))))) + LTRIM(STR(COUNT(1)))) + 
           (REPLICATE('0', (15 - DATALENGTH(REPLACE(CAST(ROUND(SUM(t.Importe), 2) as varchar(12)), '.', '')))) + REPLACE(CAST(ROUND(SUM(t.Importe), 2) as varchar(12)), '.', '')) +
           REPLICATE(0, 6) + REPLICATE(0, 15) + REPLICATE(0, 6) + REPLICATE(0, 15) + '.' Totalizadores
    FROM (SELECT cdb.NoTarjeta, ROUND(CAST(cxc.Saldo AS money), 2) Importe, cxc.Moneda, cxc.ID
          FROM Cxc
          INNER JOIN MovTipo mt ON mt.Mov = Cxc.Mov 
          -- ..:: 12/06/2012
          -- INNER JOIN Venta v ON Cxc.OrigenTipo = 'VTAS' AND v.Mov = Cxc.Origen AND v.MovID = Cxc.OrigenID 
          INNER JOIN Venta v ON Cxc.OrigenTipo IN ('VTAS','CXC') AND v.Mov = Cxc.Origen AND v.MovID = Cxc.OrigenID 
          -- ...:::
          INNER JOIN VentaD vd ON v.ID = vd.ID
          INNER JOIN Cte ON Cte.Cliente = Cxc.Cliente
          LEFT JOIN CDIDatosBancarios cdb ON Cte.Cliente = cdb.Cliente
          LEFT JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = vd.Articulo
          LEFT JOIN CDIDatosBancarios cdbv on v.CDITarjetaCargo = cdbv.NoTarjeta
          WHERE cxc.Empresa = @Empresa AND Cxc.Moneda = @Moneda AND Cxc.Estatus = 'PENDIENTE' -- AND mt.Clave = 'CXC.F' 
            --  ..::  * 30/05/2012 JPV *
            AND mt.Clave IN ('CXC.F','CXC.D')     
            AND Cxc.Vencimiento < GETDATE()
            -- ...:::
            AND cte.CDISocio = 1 /*Cte.Tipo = 'Socio'*/ 
            --AND (v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END) --((cdb.NoTarjeta = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 END)
            AND ((ISNULL(cdb.NoTarjeta, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo ELSE '' END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END)                
            --AND ISNULL(cdb.Vigencia, GETDATE()) >= GETDATE() /*AND Cte.Titular = 1*/ 
            AND cdb.NoTarjeta IS NOT NULL AND cdb.NoTarjeta <> '' --AND cdb.AMEX IS NULL
            AND ISNULL(cag.Articulo, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN ISNULL(cag.Articulo, '') ELSE vd.Articulo END
            AND ISNULL(cdbv.NoTarjeta, '') = CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE ISNULL(cdbv.NoTarjeta, '') END
          -- ..:: 11/06/2012 
          UNION ALL
         SELECT cdb.NoTarjeta, ROUND(CAST(cxc.Saldo AS money), 2) Importe, cxc.Moneda, cxc.ID
           FROM cxc cXC 
           JOIN Cxc r 
             ON cXC.Origen = r.Mov and cXC.OrigenId = r.MovID  
          INNER JOIN MovTipo mt ON mt.Mov = cxc.Mov
          INNER JOIN Venta v ON v.Mov = r.Origen AND v.MovID = r.OrigenID 
          INNER JOIN VentaD vd ON v.ID = vd.ID
          INNER JOIN Cte ON Cte.Cliente = r.Cliente
           LEFT JOIN CDIDatosBancarios cdb ON Cte.Cliente = cdb.Cliente
           LEFT JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = vd.Articulo
           LEFT JOIN CDIDatosBancarios cdbv on v.CDITarjetaCargo = cdbv.NoTarjeta 
          WHERE cxc.mov = cxc.Origen 
            AND cxc.Origentipo = 'cxc'
            AND cxc.Empresa = @Empresa 
            AND Cxc.Moneda = @Moneda 
            AND Cxc.Estatus = 'PENDIENTE' 
            AND mt.Modulo = 'CXC'
            AND mt.Clave IN ('CXC.D')     
            AND CXC.Vencimiento <  GETDATE()
            AND cte.CDISocio = 1 
            AND ((ISNULL(cdb.NoTarjeta, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo ELSE '' END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END)
            AND cdb.NoTarjeta IS NOT NULL AND cdb.NoTarjeta <> '' --AND cdb.AMEX IS NULL
            AND ISNULL(cag.Articulo, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN ISNULL(cag.Articulo, '') ELSE vd.Articulo END --antes THEN ''
            AND ISNULL(cdbv.NoTarjeta, '') = CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE ISNULL(cdbv.NoTarjeta, '') END
          -- ...::: 11/07/2012
          GROUP BY cdb.NoTarjeta, Cxc.Moneda, Cxc.ID, cxc.Saldo) t
                   
    /*SELECT 'T' + (REPLICATE(0, (6 - DATALENGTH(LTRIM(STR(COUNT(1)))))) + LTRIM(STR(COUNT(1)))) + 
           (REPLICATE('0', (15 - DATALENGTH(REPLACE(CAST(SUM(ROUND(SUM((vd.Cantidad * vd.Precio)*(1+(Impuesto1/100))), 2)) as varchar(12)), '.', '')))) + REPLACE(CAST(SUM(ROUND(SUM((vd.Cantidad * vd.Precio)*(1+(Impuesto1/100))), 2)) as varchar(12)), '.', '')) +
           REPLICATE(0, 6) + REPLICATE(0, 15) + REPLICATE(0, 6) + REPLICATE(0, 15) + '.' Totalizadores
           --Indicador, TotTran, MontoTot, TransAprob, MontoTransAprob, TransRech, MontoTransRech, Fin
    FROM Cxc
    INNER JOIN MovTipo mt ON mt.Mov = Cxc.Mov 
    INNER JOIN Venta V ON Cxc.OrigenTipo = 'VTAS' AND V.Mov = Cxc.Origen AND V.MovID = Cxc.OrigenID 
    INNER JOIN VentaD VD ON V.ID = VD.ID
    INNER JOIN Cte ON Cte.Cliente = Cxc.Cliente
    INNER JOIN CDIDatosBancarios cdb ON cte.Cliente = cdb.Cliente
    INNER JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = VD.Articulo
    WHERE cxc.Empresa = @Empresa AND Cxc.Moneda = @Moneda AND Cxc.Estatus = 'PENDIENTE' AND mt.Clave = 'CXC.F' AND v.CDICargoAutomatico = 1 
          AND Cte.Tipo = 'Socio' AND Cte.Titular = 1 AND cdb.DefCargAuto = 1 AND cdb.AMEX IS NULL
    GROUP BY NoTarjeta, Cxc.Moneda, Cxc.ID*/

  ELSE IF @Banco = 'AMEX'
    -- ENCABEZADO
    SELECT 'AMEX' + 'CDITAC' + REPLACE(CONVERT(char(5), GETDATE(), 105), '-', '') + SUBSTRING(LTRIM(STR(YEAR(GETDATE()))), 3,2) + 
           'NPS' + REPLICATE(' ', 71) Encabezado
           -- Etiqueta, Identif, Fecha, Indicador, Filler
    UNION ALL
  --DETALLE
    SELECT '6020629' + ' ' + CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE cdb.Amex END + REPLICATE('0', (15 - DATALENGTH(CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE cdb.Amex END))) + '80' + 
           REPLICATE('0', (11 - DATALENGTH(REPLACE(CAST(ROUND(CAST(cxc.Saldo AS money), 2) as varchar(12)), '.', '')))) + REPLACE(CAST(ROUND(CAST(cxc.Saldo AS money), 2) as varchar(12)), '.', '') +
           REPLACE(CONVERT(char(5), Cxc.FechaEmision, 105), '-', '') + SUBSTRING(LTRIM(STR(YEAR(Cxc.FechaEmision))), 3,2) + 
           Cxc.Mov + ' ' + Cxc.MovID + REPLICATE(' ', (20 - DATALENGTH(Cxc.Mov + ' ' + Cxc.MovID))) + LTRIM(STR(Cxc.ID)) + REPLICATE(' ', (20 - DATALENGTH(LTRIM(STR(Cxc.ID))))) +
           REPLICATE(' ' , 8) Detalle
         --Afiliacion, ResTrans, NoCta, Cargo, Importe, FechaEmision, Descri1, Descri2, Filler
    FROM Cxc
    INNER JOIN MovTipo mt ON mt.Mov = Cxc.Mov 
    -- ..::  * 12/06/2012 JPV*
    -- INNER JOIN Venta v ON Cxc.OrigenTipo = 'VTAS' AND v.Mov = Cxc.Origen AND v.MovID = Cxc.OrigenID 
    INNER JOIN Venta v ON Cxc.OrigenTipo IN ('VTAS','CXC') AND v.Mov = Cxc.Origen AND v.MovID = Cxc.OrigenID 
    -- ...:::
    INNER JOIN VentaD vd ON v.ID = vd.ID
    INNER JOIN Cte ON Cte.Cliente = Cxc.Cliente
    LEFT JOIN CDIDatosBancarios cdb ON Cte.Cliente = cdb.Cliente
    LEFT JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = vd.Articulo
    LEFT JOIN CDIDatosBancarios cdbv on v.CDITarjetaCargo = cdbv.AMEX
    WHERE cxc.Empresa = @Empresa AND Cxc.Moneda = @Moneda AND Cxc.Estatus = 'PENDIENTE' -- AND mt.Clave = 'CXC.F' 
      --  ..::  * 30/05/2012 JPV *
      AND mt.Clave IN ('CXC.F','CXC.D')     
      AND Cxc.Vencimiento < GETDATE()
      -- ...:::
      AND cte.CDISocio = 1 /*Cte.Tipo = 'Socio'*/ 
      --AND (v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END) --((cdb.NoTarjeta = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 END)
      AND ((ISNULL(cdb.AMEX, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo ELSE '' END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END)
      --AND ISNULL(cdb.Vigencia, GETDATE()) >= GETDATE() /*AND Cte.Titular = 1*/ 
      AND cdb.AMEX IS NOT NULL AND cdb.AMEX <> ''
      AND ISNULL(cag.Articulo, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN ISNULL(cag.Articulo, '') ELSE vd.Articulo END
      AND ISNULL(cdbv.AMEX, '') = CASE WHEN ISNULL(v.CDITarjetaCargo, '') = '' THEN ISNULL(cdbv.AMEX, '') ELSE cdb.AMEX END
    -- ..:: 11072012 
    -- Agregar movimientos tipo Documento generados en CXC 
    -- GROUP BY cdb.Amex, Cxc.FechaEmision, Cxc.Mov, Cxc.MovID, Cxc.ID, v.CDITarjetaCargo, cxc.Saldo
    UNION ALL
   SELECT '6020629' + ' ' + CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE cdb.Amex END + REPLICATE('0', (15 - DATALENGTH(CASE WHEN ISNULL(v.CDITarjetaCargo, '') <> '' THEN v.CDITarjetaCargo ELSE cdb.Amex END))) + '80' + 
           REPLICATE('0', (11 - DATALENGTH(REPLACE(CAST(ROUND(CAST(cxc.Saldo AS money), 2) as varchar(12)), '.', '')))) + REPLACE(CAST(ROUND(CAST(cxc.Saldo AS money), 2) as varchar(12)), '.', '') +
           REPLACE(CONVERT(char(5), Cxc.FechaEmision, 105), '-', '') + SUBSTRING(LTRIM(STR(YEAR(Cxc.FechaEmision))), 3,2) + 
           Cxc.Mov + ' ' + Cxc.MovID + REPLICATE(' ', (20 - DATALENGTH(Cxc.Mov + ' ' + Cxc.MovID))) + LTRIM(STR(Cxc.ID)) + REPLICATE(' ', (20 - DATALENGTH(LTRIM(STR(Cxc.ID))))) +
           REPLICATE(' ' , 8) Detalle
     FROM cxc Cxc 
     JOIN Cxc r 
       ON Cxc.Origen = r.Mov and Cxc.OrigenId = r.MovID  
    INNER JOIN MovTipo mt ON mt.Mov = Cxc.Mov 
    INNER JOIN Venta v ON  v.Mov = r.Origen AND v.MovID = r.OrigenID 
    INNER JOIN VentaD vd ON v.ID = vd.ID
    INNER JOIN Cte ON Cte.Cliente = Cxc.Cliente
     LEFT JOIN CDIDatosBancarios cdb ON Cte.Cliente = cdb.Cliente
     LEFT JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = vd.Articulo
     LEFT JOIN CDIDatosBancarios cdbv on v.CDITarjetaCargo = cdbv.AMEX
    WHERE cxc.Empresa = @Empresa AND Cxc.Moneda = @Moneda 
      AND Cxc.Estatus = 'PENDIENTE'
      AND mt.Clave IN ('CXC.D')     
      AND Cxc.Vencimiento < GETDATE()
      AND cte.CDISocio = 1 
      AND ((ISNULL(cdb.AMEX, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo ELSE '' END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END)
      AND cdb.AMEX IS NOT NULL AND cdb.AMEX <> ''
      AND ISNULL(cag.Articulo, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN ISNULL(cag.Articulo, '') ELSE vd.Articulo END
      AND ISNULL(cdbv.AMEX, '') = CASE WHEN ISNULL(v.CDITarjetaCargo, '') = '' THEN ISNULL(cdbv.AMEX, '') ELSE cdb.AMEX END
    GROUP BY cdb.Amex, Cxc.FechaEmision, Cxc.Mov, Cxc.MovID, Cxc.ID, v.CDITarjetaCargo, cxc.Saldo

    UNION ALL
    -- TOTALES
    SELECT 'ENDFILE' + (REPLICATE(0, (6 - DATALENGTH(LTRIM(STR(COUNT(1)))))) + LTRIM(STR(COUNT(1)))) + 
           REPLICATE('0', (11 - DATALENGTH(REPLACE(CAST(SUM(ROUND(t.Importe, 2)) as varchar(12)), '.', '')))) + REPLACE(CAST(SUM(ROUND(t.Importe, 2)) as varchar(12)), '.', '') +
           REPLICATE('0', 6) + REPLICATE('0', 11) + (REPLICATE(0, (6 - DATALENGTH(LTRIM(STR(COUNT(1)))))) + LTRIM(STR(COUNT(1)))) + 
           REPLICATE('0', (11 - DATALENGTH(REPLACE(CAST(SUM(ROUND(t.Importe, 2)) as varchar(12)), '.', '')))) + REPLACE(CAST(SUM(ROUND(t.Importe, 2)) as varchar(12)), '.', '') +
           REPLICATE('0', 6) + REPLICATE('0', 13) + REPLICATE(' ', 13) Totalizadores
           --Constante, Movtos, importe, ImpAbonos, cargos, importecargos, ImpMovAcep, Filler
      FROM (SELECT cdb.Amex Amex, ROUND(CAST(Cxc.Saldo AS money), 2) Importe, Cxc.FechaEmision, Cxc.Mov, Cxc.MovID, Cxc.ID
              FROM Cxc
             INNER JOIN MovTipo mt ON mt.Mov = Cxc.Mov 
             -- ..:: * 12/06/2012 JPV *
             -- INNER JOIN Venta v ON Cxc.OrigenTipo = 'VTAS' AND v.Mov = Cxc.Origen AND v.MovID = Cxc.OrigenID 
             INNER JOIN Venta v ON Cxc.OrigenTipo IN ('VTAS','CXC') AND v.Mov = Cxc.Origen AND v.MovID = Cxc.OrigenID 
             -- ...:::
             INNER JOIN VentaD vd ON v.ID = vd.ID
             INNER JOIN Cte ON Cte.Cliente = Cxc.Cliente
              LEFT JOIN CDIDatosBancarios cdb ON Cte.Cliente = cdb.Cliente
              LEFT JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = vd.Articulo
              LEFT JOIN CDIDatosBancarios cdbv on v.CDITarjetaCargo = cdbv.AMEX
             WHERE cxc.Empresa = @Empresa AND Cxc.Moneda = @Moneda AND Cxc.Estatus = 'PENDIENTE'  -- AND mt.Clave = 'CXC.F' 
              --  ..::  * 30/05/2012 JPV *
               AND mt.Clave IN ('CXC.F','CXC.D')     
               AND Cxc.Vencimiento < GETDATE()
              -- ...:::

               AND cte.CDISocio = 1 /*Cte.Tipo = 'Socio'*/ 
               --AND (v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END) --((cdb.NoTarjeta = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 END)
               AND ((ISNULL(cdb.AMEX, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo ELSE '' END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END)                
               --AND ISNULL(cdb.Vigencia, GETDATE()) >= GETDATE() /*AND Cte.Titular = 1*/ 
               AND cdb.AMEX IS NOT NULL AND cdb.AMEX <> ''
               AND ISNULL(cag.Articulo, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN ISNULL(cag.Articulo, '') ELSE vd.Articulo END
               AND ISNULL(cdbv.AMEX, '') = CASE WHEN ISNULL(v.CDITarjetaCargo, '') = '' THEN ISNULL(cdbv.AMEX, '') ELSE cdb.AMEX END
            UNION ALL
            SELECT cdb.Amex Amex, ROUND(CAST(Cxc.Saldo AS money), 2) Importe, Cxc.FechaEmision, Cxc.Mov, Cxc.MovID, Cxc.ID
             FROM cxc Cxc 
             JOIN Cxc r 
               ON Cxc.Origen = r.Mov and Cxc.OrigenId = r.MovID  
            INNER JOIN MovTipo mt ON mt.Mov = Cxc.Mov 
            INNER JOIN Venta v ON  v.Mov = r.Origen AND v.MovID = r.OrigenID 
            INNER JOIN VentaD vd ON v.ID = vd.ID
            INNER JOIN Cte ON Cte.Cliente = Cxc.Cliente
             LEFT JOIN CDIDatosBancarios cdb ON Cte.Cliente = cdb.Cliente
             LEFT JOIN CDIArticulosCargos cag on cag.cliente = Cte.Cliente and cag.articulo = vd.Articulo
             LEFT JOIN CDIDatosBancarios cdbv on v.CDITarjetaCargo = cdbv.AMEX
            WHERE cxc.Empresa = @Empresa AND Cxc.Moneda = @Moneda 
              AND Cxc.Estatus = 'PENDIENTE'
              AND mt.Clave IN ('CXC.D')     
              AND Cxc.Vencimiento < GETDATE()
              AND cte.CDISocio = 1 
              AND ((ISNULL(cdb.AMEX, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN v.CDITarjetaCargo ELSE '' END) OR v.CDICargoAutomatico = CASE WHEN cdb.DefCargAuto = 1 THEN 0 ELSE 1 END)
              AND cdb.AMEX IS NOT NULL AND cdb.AMEX <> ''
              AND ISNULL(cag.Articulo, '') = CASE WHEN v.CDICargoAutomatico = 1 THEN ISNULL(cag.Articulo, '') ELSE vd.Articulo END
              AND ISNULL(cdbv.AMEX, '') = CASE WHEN ISNULL(v.CDITarjetaCargo, '') = '' THEN ISNULL(cdbv.AMEX, '') ELSE cdb.AMEX END
          GROUP BY cdb.Amex, Cxc.FechaEmision, Cxc.Mov, Cxc.MovID, Cxc.ID, cxc.Saldo) t
END
GO
-- EXEC spCDIArchivoAutom '1', 'BANCOMER', 'Pesos'
-- EXEC spCDIArchivoAutom '1', 'AMEX', 'Pesos'

IF OBJECT_ID('spCDICargosAutom', 'P') IS NOT NULL
  DROP PROCEDURE spCDICargosAutom
GO

CREATE PROCEDURE spCDICargosAutom (@Empresa varchar(5), @Banco varchar(10), @Moneda varchar(10), @Directorio varchar(500))
AS
BEGIN

  DECLARE @ComandoArchivo varchar(500),
          @BorraArch      varchar(300),
          @Existe         int, 
	        @DB             varchar(30), 
	        @FileName       varchar(20), 
	        @RutaArchivo    varchar(550)

  SELECT 'PROCESO FINALIZADO'

  SET @DB = DB_NAME()
  SET @Banco = UPPER(@Banco)

  SET @FileName = CASE WHEN @Banco = 'BANCOMER' THEN '1e' + SUBSTRING(CONVERT(VARCHAR(8), GETDATE(), 112), 3, 8) + '.001'
                       WHEN @Banco = 'AMEX' THEN 'AMEX' + SUBSTRING(CONVERT(VARCHAR(8), GETDATE(), 112), 3, 8) + '.001' END
  
  SET @RutaArchivo = @Directorio + '\' + @FileName

  EXEC xp_fileexist @RutaArchivo, @Existe OUTPUT

  SET @BorraArch = 'del "'+ @RutaArchivo + '"'

  IF @Existe = 1
    EXEC xp_cmdshell @BorraArch

  SET @ComandoArchivo = 'BCP "EXEC ' + RTRIM(@DB) + '.dbo.spCDIArchivoAutom ''' + @Empresa + ''', ''' + @Banco + ''', ''' + @Moneda + ''' " QUERYOUT "' + @RutaArchivo + '" -c -T'  
  EXEC Master..Xp_Cmdshell @ComandoArchivo 

RETURN
END
GO

-- EXEC spCDICargosAutom '1', 'BANCOMER', 'Pesos', 'c:\Comparte'


IF OBJECT_ID('spCDISubeArchAplic', 'P') IS NOT NULL
  DROP PROCEDURE spCDISubeArchAplic
GO

CREATE PROCEDURE spCDISubeArchAplic (@Estacion int, @Usuario varchar(10), @ArchivoProc varchar(100))
AS
BEGIN
  DECLARE @NumRows          int, 
          @Banco            varchar(10), 
          @PrimerIden       varchar(1), 
          @EsResp           varchar(3), 
          @FechaProc        varchar(8), 
          @i                int, 
          @RowsDet          int, 
          @Indicador        varchar(1), 
          @TipoTrans        varchar(1), 
          @NumCta           varchar(16),
          @Importe          varchar(12),
          @CodMon           varchar(3), 
          @NumRef           varchar(19), 
          @CodRes           varchar(2), 
          @TipoAuto         varchar(1), 
          @NumAut           varchar(6), 
          @IDMovCXC         int, 
          @IDGenerado       int, 
          @ObservRespuesta  varchar(50), 
          @ImporteMon       money, 
          @Sucursal         int, 
          @Empresa          varchar(5), 
          @Mov              varchar(20), 
          @MovID            varchar(20), 
          @DMovID           varchar(20), 
          @Ok               int, 
          @Afiliacion       varchar(7), 
          @Resultado        varchar(1), 
          @TipoMov          varchar(2), 
          @FechaMov         varchar(8), 
          @DescriCargo      varchar(20), 
          @DescriMovID      varchar(20), 
          @ArchivoNombre    varchar(100), 
          @CtaDin           varchar(50),
          ----------------------
          --@Empresa varchar(5),
          --@Usuario varchar(10),
          @Socio            varchar(30),
          @Descripcion15    varchar(50),
          @Causa            varchar(50),
          @BajaTotal        bit,
          @Tipo             varchar(15),
          @Cte              varchar(10),
          @IdSoc            int,
          @IdMovSoc         varchar(20), 
          @ArchProcOk       varchar(20), 
          @ComandoArchivo   varchar(500),
          @BorraArch        varchar(300),
          @Existe           int, 
	        @DB               varchar(30), 
	        @RutaArchivo      varchar(550), 
	        @ProfileCfg       varchar(50), 
	        @Destinat         varchar(500), 
	        @Result           varchar(500),
	        @ServidorCorreo   varchar(50),
	        @Sentencia        nvarchar(max),
	        @Subject          varchar(50),
	        @Variables        nvarchar(max)
		----------------------
  
  DECLARE @TmpTable TABLE (ID int IDENTITY(1,1), Campo varchar(100))
  create table #TmpSocios (ID int IDENTITY(1,1), Campo varchar(100))							-----VERIFICAR SE ES MODIFICACION DE HECTOR
  
  DECLARE @TmpDetalle TABLE (ID int IDENTITY(1,1),
                             Indicador varchar(1), 
                             TipoTrans varchar(1), 
                             NumCta varchar(16), 
                             Importe varchar(12),
                             CodMon varchar(3), 
                             NumRef varchar(19), 
                             CodRes varchar(2), 
                             TipoAuto varchar(1), 
                             NumAut varchar(6), 
                             Filler varchar(10)
                             )
  
  DECLARE @TmpDetalleAMEX TABLE (ID int IDENTITY(1,1),
                             Afiliacion varchar(7), 
                             Resultado varchar(1), 
                             NumCta varchar(15), 
                             TipoMov varchar(2),
                             Importe varchar(11), 
                             FechaMov varchar(8), 
                             DescriCargo varchar(20), 
                             DescriMovID varchar(20), 
                             Filler varchar(10)
                             )
  
  --SELECT 'PROCESO FINALIZADO'
  
  Exec('BULK INSERT CDIProcCargosAutomPaso
        FROM ''' + @ArchivoProc + ''' 
        WITH ( FIRSTROW  = 1,
               CODEPAGE =''RAW'',
               ROWTERMINATOR = ''\n'')'
        )
        
  INSERT INTO @TmpTable (Campo)
  SELECT Campo
  FROM CDIProcCargosAutomPaso
  
  SET @NumRows = @@IDENTITY
  
  TRUNCATE TABLE CDIProcCargosAutomPaso
  
  SET @ArchivoNombre = @ArchivoProc

  WHILE CHARINDEX('\', @ArchivoNombre, 1) <> 0
    SET @ArchivoNombre = SUBSTRING(@ArchivoNombre, (CHARINDEX('\', @ArchivoNombre, 1) + 1), 100)
  
  INSERT INTO CDIArchProcCargoAuto(Archivo)
  VALUES (@ArchivoNombre)
  
  SELECT @PrimerIden = SUBSTRING(Campo, 1, 1) FROM @TmpTable WHERE ID = 1 
  
  SET @Banco = CASE @PrimerIden WHEN 'H' THEN 'BANCOMER'
                                WHEN 'A' THEN 'AMEX'
               END

  IF @Banco = 'BANCOMER'
  BEGIN
    SELECT @EsResp = SUBSTRING(Campo, 11,3), @FechaProc = SUBSTRING(Campo, 43, 4) + SUBSTRING(Campo, 39, 2) + SUBSTRING(Campo, 41, 2)
    FROM @TmpTable 
    WHERE ID = 1 

    IF @EsResp = 'RSP'
    BEGIN
      INSERT INTO @TmpDetalle (Indicador, TipoTrans, NumCta, Importe, CodMon, NumRef, CodRes, TipoAuto, NumAut, Filler)
      SELECT SUBSTRING(Campo, 1, 1) Indicador, SUBSTRING(Campo, 2, 1) TipoTrans, SUBSTRING(Campo, 3, 16) NumCta, SUBSTRING(Campo, 19, 12) Importe,
             SUBSTRING(Campo, 31, 3) CodMon, SUBSTRING(Campo, 34, 19) NumRef, SUBSTRING(Campo, 53, 2) CodRes, SUBSTRING(Campo, 55, 1) TipoAuto, 
             SUBSTRING(Campo, 56, 6) NumAut, SUBSTRING(Campo, 62, 10) Filler
      FROM @TmpTable
      WHERE ID BETWEEN 2 AND (@NumRows-1)

      SELECT @i = 1, @RowsDet = @@IDENTITY

      WHILE @i <= @RowsDet
      BEGIN
        SET @ArchProcOk = 'No Procesado'

        SELECT @Indicador = Indicador, @TipoTrans = TipoTrans, @NumCta = NumCta, @Importe = Importe, @CodMon = CodMon, @NumRef = NumRef, 
               @CodRes = CodRes, @TipoAuto = TipoAuto, @NumAut = NumAut
        FROM @TmpDetalle 
        WHERE ID = @i
      
        SET @ObservRespuesta = CASE @CodRes WHEN '00' THEN 'Aprobada'
                                            WHEN '01' THEN 'Llame al emisor'
                                            WHEN '03' THEN 'Comercio invalido'
                                            WHEN '04' THEN 'Retenga y llame'
                                            WHEN '05' THEN 'Declinada'
                                            WHEN '13' THEN 'Monto inválido'
                                            WHEN '14' THEN 'Núm tarjeta inv'
                                            WHEN '40' THEN 'Función no disp'
                                            WHEN '96' THEN 'Error de sintaxis en registro'
                                 END

        SET @IDMovCXC = CAST(@NumRef as int)

        IF @TipoAuto = 1
        BEGIN
          SELECT @Mov = Mov, @MovID = MovID FROM Cxc WHERE ID = @IDMovCXC

          IF EXISTS(SELECT 1 FROM Cxc WHERE ID = @IDMovCXC AND Estatus = 'PENDIENTE')
          BEGIN
            EXEC @IDGenerado = spAfectar 'CXC', @IDMovCXC, 'GENERAR', 'Todo', 'Cobro', @Usuario,0,1

            IF @IDGenerado IS NOT NULL
            BEGIN
          
              SET @ImporteMon = CAST(SUBSTRING(@Importe, 1, 10) + '.' + SUBSTRING(@Importe, 11, 2) as money)
              
              SELECT @CtaDin = DefCtaDinero FROM FormaPago WHERE FormaPago = 'Cargo Automático'
            
              UPDATE Cxc SET Referencia = @NumCta, Observaciones = @ObservRespuesta, FormaCobro = 'Cargo Automático', CtaDinero = @CtaDin
              --ConDesglose = 1, FormaCobro1 = 'Tarjeta Crédito', Importe1 = @ImporteMon, Referencia1 = @NumCta              
              WHERE ID = @IDGenerado

              SET @ArchProcOk = 'Procesado'              
              /**************************Proceso para Desbloqueo de Socios***************************/
              insert into #TmpSocios (Campo)
              select CLiente from cxc where ID = @IDGenerado
              /*******************************/
              EXEC spAfectar 'CXC', @IDGenerado, 'AFECTAR', 'Todo', NULL, @Usuario,0,1
              
            END
          END
        END
        ELSE
        BEGIN
          SELECT @Mov = Mov, @MovID = MovID FROM Cxc WHERE ID = @IDMovCXC
          
          IF EXISTS(SELECT 1 FROM Cxc WHERE ID = @IDMovCXC AND Estatus = 'PENDIENTE')
          BEGIN
            EXEC @IDGenerado = spAfectar 'CXC', @IDMovCXC, 'GENERAR', 'Todo', 'Intento Cobro', @Usuario,0,1

            IF @IDGenerado IS NOT NULL
            BEGIN
            	
              UPDATE Cxc SET Observaciones = @ObservRespuesta
              WHERE ID = @IDGenerado
            
              EXEC spAfectar 'CXC', @IDGenerado, 'AFECTAR', 'Todo', NULL, @Usuario,0,1, @Ok = @Ok OUTPUT

              SELECT @Sucursal = Sucursal, @Empresa = Empresa, @DMovID = MovID ,@Cte=Cliente FROM Cxc WHERE ID = @IDGenerado

              SET @ArchProcOk = 'Procesado'
			-----------------------------------------------------------------------
              SELECT Socio=@Socio FROM cte  WHERE cliente=@Cte
              IF (SELECT Descripcion13/*Estatus*/ FROM Cte WHERE Socio=@Socio AND Cliente = @Cte)<>'Si'--'BLOQUEADO'
              Begin
                SELECT @Tipo=Tipo ,@BajaTotal=NULL  FROM CTE WHERE Socio=@Socio AND Cliente = @Cte--cliente=@Cte
                SELECT @BajaTotal=TarjetasBancariasBloqueo  FROM CDISocAcessoCfgBloqueo
                WHERE TarjetasBancarias=1 AND Empresa=@Empresa AND Tipo=@Tipo
                SET @BajaTotal=isnull(@BajaTotal,0)  

                EXEC CDIinsertSocioBloqueo @Empresa,@Usuario,@Socio,'Intento Cobro','Cobro',@BajaTotal,@IdSoc output,@IdMovSoc output
			              --SELECT * FROM CDISocio
			             -- SELECT * FROM Causa
              END               
              -----------------------------------------------------------------------

              IF @Ok IS NULL
              BEGIN
                EXEC spMovFlujo @Sucursal, 'GENERAR', @Empresa, 'CXC', @IDMovCXC, @Mov, @MovID, 'CXC', @IDGenerado, 'Intento Cobro', @DMovID, @Ok OUTPUT
                EXEC spMovFlujo @Sucursal, 'GENERAR', @Empresa, 'CXC', @IDMovCXC, @Mov, @MovID, 'SOC', @IdSoc, 'Bloqueo', @IdMovSoc, @Ok OUTPUT

                SET @Ok = NULL
              END
            END
          END
        END
        --BEGM 20120604. Reporte si el mov fue porcesado o no 
        UPDATE @TmpTable SET Campo = Campo + ISNULL(@Mov, '') + ' ' + ISNULL(@MovID, '') + ' ' + ISNULL(@ArchProcOk, '') WHERE ID = @i + 1
              
        SET @i = @i + 1
      END     
      
      --SELECT 'PROCESO FINALIZADO'
    END
    ELSE
      SELECT 'El Archivo Seleccionado No Es De Respuesta'
  END

  IF @Banco = 'AMEX' 
  BEGIN
    SELECT @FechaProc = '20' + SUBSTRING(Campo, 15, 2) + SUBSTRING(Campo, 13, 2) + SUBSTRING(Campo, 11, 2)
    FROM @TmpTable 
    WHERE ID = 1 

    INSERT INTO @TmpDetalleAMEX (Afiliacion, Resultado, NumCta, TipoMov, Importe, FechaMov, DescriCargo, DescriMovID, Filler)
    SELECT SUBSTRING(Campo, 1, 7) Afiliacion, SUBSTRING(Campo, 8, 1) Resultado, SUBSTRING(Campo, 9, 15) NumCta, SUBSTRING(Campo, 24, 2) TipoMov, 
           SUBSTRING(Campo, 26, 11) Importe, '20' + SUBSTRING(Campo, 41, 2) + SUBSTRING(Campo, 39, 2) + SUBSTRING(Campo, 37, 2) FechaMov, 
           SUBSTRING(Campo, 43, 20) DescriCargo, SUBSTRING(Campo, 63, 20) DescriMovID, SUBSTRING(Campo, 83, 10) Filler
    FROM @TmpTable
    WHERE ID BETWEEN 2 AND (@NumRows-1)

    SELECT @i = 1, @RowsDet = @@IDENTITY

    WHILE @i <= @RowsDet
    BEGIN
      SET @ArchProcOk = 'No Procesado'
      SELECT @Afiliacion = Afiliacion, @Resultado = Resultado, @NumCta = NumCta, @TipoMov = TipoMov, @Importe = Importe, @FechaMov = FechaMov, 
            @DescriCargo = DescriCargo, @DescriMovID = DescriMovID
      FROM @TmpDetalleAMEX 
      WHERE ID = @i

      SET @IDMovCXC = CAST(@DescriMovID as int)
        
      IF @Resultado = 'A'
      BEGIN
        SELECT @Mov = Mov, @MovID = MovID FROM Cxc WHERE ID = @IDMovCXC
        
        IF EXISTS(SELECT 1 FROM Cxc WHERE ID = @IDMovCXC AND Estatus = 'PENDIENTE')
        BEGIN
          EXEC @IDGenerado = spAfectar 'CXC', @IDMovCXC, 'GENERAR', 'Todo', 'Cobro', @Usuario,0,1

          IF @IDGenerado IS NOT NULL
          BEGIN
          
            SET @ImporteMon = CAST(SUBSTRING(@Importe, 1, 9) + '.' + SUBSTRING(@Importe, 10, 2) as money)
            
            SELECT @CtaDin = DefCtaDinero FROM FormaPago WHERE FormaPago = 'Cargo Auto Amex'
            SET @ArchProcOk = 'Procesado'
            
            UPDATE Cxc SET Referencia = @NumCta, Observaciones = 'Aceptado ' + @DescriCargo, FormaCobro = 'Cargo Auto Amex', CtaDinero = @CtaDin
            --ConDesglose = 1, FormaCobro1 = 'Tarjeta Crédito', Importe1 = @ImporteMon, Referencia1 = @NumCta
            WHERE ID = @IDGenerado
            
            /**************************Proceso para Desbloqueo de Socios***************************/
            insert into #TmpSocios (Campo)
            select CLiente from cxc where ID = @IDGenerado
            /**************/
              
            EXEC spAfectar 'CXC', @IDGenerado, 'AFECTAR', 'Todo', NULL, @Usuario,0,1
          END
        END  
      END
      ELSE
      BEGIN
        SELECT @Mov = Mov, @MovID = MovID FROM Cxc WHERE ID = @IDMovCXC
        
        IF EXISTS(SELECT 1 FROM Cxc WHERE ID = @IDMovCXC AND Estatus = 'PENDIENTE')
        BEGIN
          EXEC @IDGenerado = spAfectar 'CXC', @IDMovCXC, 'GENERAR', 'Todo', 'Intento Cobro', @Usuario,0,1

          IF @IDGenerado IS NOT NULL
          BEGIN
            UPDATE Cxc SET Observaciones = CASE WHEN @Resultado = 'R' THEN 'Rechazado ' ELSE 'Inválido ' END + @DescriCargo
            WHERE ID = @IDGenerado
            
            EXEC spAfectar 'CXC', @IDGenerado, 'AFECTAR', 'Todo', NULL, @Usuario,0,1, @Ok = @Ok OUTPUT

            SELECT @Sucursal = Sucursal, @Empresa = Empresa, @DMovID = MovID, @Cte = Cliente  FROM Cxc WHERE ID = @IDGenerado
            SET @ArchProcOk = 'Procesado'
            	-----------------------------------------------------------------------
            SELECT Socio=@Socio FROM cte  WHERE cliente=@Cte

            IF (SELECT Descripcion13 /*Estatus*/ FROM Cte WHERE Socio=@Socio AND Cliente = @Cte)<>'Si' --'BLOQUEADO'
            Begin
              SELECT @Tipo=Tipo ,@BajaTotal=NULL  FROM CTE WHERE Socio=@Socio AND Cliente = @Cte --cliente=@Cte
              SELECT @BajaTotal=TarjetasBancariasBloqueo  FROM CDISocAcessoCfgBloqueo
              WHERE TarjetasBancarias=1 AND Empresa=@Empresa AND Tipo=@Tipo
              SET @BajaTotal=isnull(@BajaTotal,0)  
              EXEC CDIinsertSocioBloqueo @Empresa,@Usuario,@Socio,'Intento Cobro','Cobro',@BajaTotal,@IdSoc output,@IdMovSoc output
			              --SELECT * FROM CDISocio
			             -- SELECT * FROM Causa
              END       
              -----------------------------------------------------------------------
            
            IF @Ok IS NULL
            BEGIN
              EXEC spMovFlujo @Sucursal, 'GENERAR', @Empresa, 'CXC', @IDMovCXC, @Mov, @MovID, 'CXC', @IDGenerado, 'Intento Cobro', @DMovID, @Ok OUTPUT
              EXEC spMovFlujo @Sucursal, 'GENERAR', @Empresa, 'CXC', @IDMovCXC, @Mov, @MovID, 'SOC', @IdSoc, 'Bloqueo', @IdMovSoc, @Ok OUTPUT
              SET @Ok = NULL
            END
          END
        END
      END
      --BEGM 20120604. Reporte si el mov fue porcesado o no 
      UPDATE @TmpTable SET Campo = Campo + ' ' + ISNULL(@ArchProcOk, '') WHERE ID = @i + 1
      
      SET @i = @i + 1
    END   

    --SELECT 'PROCESO FINALIZADO'
  END

  --BEGM 20120604. Copia el archivo original con respuesta por renglon
  INSERT INTO CDIProcCargosAutomPaso (Campo)
  SELECT Campo FROM @TmpTable

  SET @DB = DB_NAME()

  SET @RutaArchivo = SUBSTRING(@ArchivoProc, 1, CHARINDEX('.', @ArchivoProc , 1)-1) + '_CopiaResp' + SUBSTRING(@ArchivoProc, CHARINDEX('.', @ArchivoProc , 1), 50)

  EXEC xp_fileexist @RutaArchivo, @Existe OUTPUT

  SET @BorraArch = 'del "'+ @RutaArchivo + '"'

  IF @Existe = 1
    EXEC xp_cmdshell @BorraArch

  SET @ComandoArchivo = 'BCP "SELECT Campo FROM ' + RTRIM(@DB) + '.dbo.CDIProcCargosAutomPaso " QUERYOUT "' + @RutaArchivo + '" -c -T'
  EXEC master..Xp_Cmdshell @ComandoArchivo
  
  TRUNCATE TABLE CDIProcCargosAutomPaso

  SELECT @ProfileCfg = CDIProfile, @ServidorCorreo = NULLIF(CDIServer, '') FROM Version    
  SELECT @Subject = 'Cargos Automaticos'
  SELECT @Sentencia = @ServidorCorreo + '.msdb.dbo.sysmail_start_sp'
  EXEC (@Sentencia)


  SELECT @Destinat = CDICorreoCargosAutom FROM CDIEmpresaCfg
  SET @Result = 'El archivo ' + @ArchivoProc + ' fue procesado con exito'
  
    SELECT @Variables = '
        @Profile        varchar(50),
        @Destinatarios  varchar(MAX),
        @Subject        varchar(50),
        @Body           varchar(MAX),
        @body_format    varchar(50)'
        
    SELECT @Sentencia = 'EXEC ' + @ServidorCorreo  + '.msdb.dbo.sp_send_dbmail 
         @profile_name                  = @Profilecfg,
         @recipients                    = @Destinat,
         @subject                       = @Subject,
         @body                          = @Result'

    EXEC sp_ExecuteSQL @Sentencia, @Variables, @Profilecfg, @Destinat, @Subject, @Result

  
  
  
  --EXEC msdb.dbo.sp_send_dbmail @profile_name = @ProfileCfg, 
  --                             @recipients   = @Destinat,  
  --                             @subject      = 'Cargos Automaticos',  
  --                             @body         = @Result
                             
                               
	/**************************Proceso para Desbloqueo de Socios***************************/
	DECLARE 
	@DesCliente varchar(50),
	@DesSocio varchar(50),
	@DesBajaTotal varchar(50)
	
	Exec SpCDISocLlenaSocBloqueo NULL	
	
	DECLARE CurTmpSoc CURSOR FOR 	
    SELECT Campo 
    FROM #TmpSocios 
    OPEN CurTmpSoc
	FETCH NEXT FROM CurTmpSoc INTO @DesCliente
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 
		SET @DesSocio=null
		SELECT @DesSocio=Socio from Cte where  TIpo='Socio' and CLiente=@DesCliente
		if @DesSocio is not null
		BEGIN
			SELECT  TOP 1 @DesBajaTotal=BajaTotal
			FROM CDISocio WHERE Mov='Bloqueo' AND  Socio=@Socio AND Estatus='CONCLUIDO' 
			ORDER BY id DEsc 
			
			Exec CDIinsertSocioDesBloqueo @Empresa,'DEMO',@Socio, null,null,@DesBajaTotal
		END 
		
		FETCH NEXT FROM CurTmpSoc INTO @DesCliente
	END 
	CLOSE CurTmpSoc
	DEALLOCATE CurTmpSoc	
	     
	/*****************************************************/ 
  SELECT 'PROCESO FINALIZADO'
  
  

END
GO

