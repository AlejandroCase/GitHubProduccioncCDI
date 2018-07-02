-- select dbo.fnMovTabla('vtas')
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'fnMovTabla') DROP FUNCTION fnMovTabla
GO
CREATE FUNCTION fnMovTabla (@Modulo char(5))
RETURNS varchar(50)
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Tabla	varchar(50)
  SELECT @Tabla = NULL
  SELECT @Tabla = CASE @Modulo 
    WHEN 'VTAS'  THEN 'Venta' 
    WHEN 'COMS'  THEN 'Compra'
    WHEN 'ST'    THEN 'Soporte'
    WHEN 'EMB'   THEN 'Embarque'
    WHEN 'DIN'   THEN 'Dinero' 
    WHEN 'AF'    THEN 'ActivoFijo'
    WHEN 'NOM'   THEN 'Nomina'
    WHEN 'ASIS'  THEN 'Asiste'
    WHEN 'GAS'   THEN 'Gasto'
    WHEN 'CAP'   THEN 'Capital'
    WHEN 'CAM'   THEN 'Cambio'
    WHEN 'PROY'  THEN 'Proyecto'
    WHEN 'INC'   THEN 'Incidencia'
    WHEN 'CONC'  THEN 'Conciliacion'
    WHEN 'PPTO'  THEN 'Presup'
    WHEN 'CREDI' THEN 'Credito'
    WHEN 'CMP'   THEN 'Campana'
    WHEN 'FIS'   THEN 'Fiscal'
    --WHEN 'MEX01' THEN 'ModuloExtra01'
    --WHEN 'MEX02' THEN 'ModuloExtra02'
    --WHEN 'MEX03' THEN 'ModuloExtra03'
    --WHEN 'MEX04' THEN 'ModuloExtra04'
    --WHEN 'MEX05' THEN 'ModuloExtra05'
    --WHEN 'MEX06' THEN 'ModuloExtra06'
    --WHEN 'MEX07' THEN 'ModuloExtra07'
    --WHEN 'MEX08' THEN 'ModuloExtra08'
    --WHEN 'MEX09' THEN 'ModuloExtra09'
    WHEN 'ORG'   THEN 'Organiza'
    WHEN 'RE'	 THEN 'Recluta'
    WHEN 'FRM'   THEN 'FormaExtra'
    WHEN 'CAPT'  THEN 'Captura'
    WHEN 'GES'   THEN 'Gestion'
    WHEN 'OFER'  THEN 'Oferta'
    WHEN 'PACTO' THEN 'Contrato'
    WHEN 'SOC'   THEN 'CDISocio'
    WHEN 'CP'    THEN 'CP'
    WHEN 'CA'    THEN 'CA'
    WHEN 'CE'    THEN 'CE'
    ELSE @Modulo
  END
  RETURN (@Tabla)
END
GO
