SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF



 --EXEC spCDIAdmisionVencimientoPlazos  @FechaA='30-11-2011'
 
    
/**************** spCDIAdmisionVencimientoPlazos****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIAdmisionVencimientoPlazos') and type = 'P') drop procedure dbo.spCDIAdmisionVencimientoPlazos
GO
CREATE PROCEDURE spCDIAdmisionVencimientoPlazos

--@FechaD				DATETIME,
@FechaA				DATETIME

AS BEGIN
	
		
		SELECT cte.PersonalNombres, cte.PersonalApellidoPaterno, cte.PersonalApellidoMaterno, cte.Membresia, cte.Socio, vd.Articulo, a.Descripcion1,
		 c.Concepto, c.Saldo, c.Vencimiento, diasmoratorios, c.FechaEmision , c.Mov, c.MovID
		FROM CxcInfo ci
			INNER JOIN cxc c ON c.Mov=ci.mov AND c.MovID=ci.movid
			INNER JOIN Venta v ON v.Mov = c.Mov AND v.MovID = c.MovID
			INNER JOIN VentaD vd ON vd.ID = v.ID
			INNER JOIN Art a ON a.Articulo = vd.Articulo
			INNER JOIN cte ON cte.Cliente=ci.Cliente AND cte.CDISocio=1
		WHERE vd.Articulo IN ('ADMISION','ALTA000001','REING00001','REINS00001')
			AND c.Vencimiento <=@FechaA 
		ORDER BY a.Descripcion1

   END
GO


