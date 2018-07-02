/****************** fnCDICPArt *********************/
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'fnCDICPArt') DROP FUNCTION fnCDICPArt
GO
CREATE FUNCTION fnCDICPArt 
(
	@Articulo       VARCHAR(20),
	@Proyecto       VARCHAR(50),
	@Fecha          DATETIME
)
RETURNS varchar(50)
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Clave          VARCHAR(50),
    @Ejercicio      INT,
    @Periodo        INT
         
  SELECT @Clave = NULL
  SELECT @Ejercicio = DATEPART(YYYY, @Fecha)
  SELECT @Periodo = DATEPART(MM, @Fecha)
  
  SELECT TOP 1 @Clave = vd.CDIClavePresupuestal
    FROM Venta v 
    JOIN VentaD vd ON v.ID = vd.ID
    JOIN MovTipo mt ON v.Mov = mt.Mov AND 'VTAS' = mt.Modulo 
   WHERE mt.Clave       = 'VTAS.PR'
     AND v.Proyecto     = @Proyecto
     AND v.Ejercicio    = @Ejercicio
     AND v.Periodo      = @Periodo
     AND vd.Articulo    = @Articulo

  RETURN (@Clave)
END
GO
