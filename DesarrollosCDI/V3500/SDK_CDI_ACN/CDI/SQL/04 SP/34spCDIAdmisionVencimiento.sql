SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF



 --EXEC spCDIAdmisionVencimiento @FechaD='01-04-2011', @FechaA='30-04-2011'
 
    
/**************** spCDIAdmisionVencimiento****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIAdmisionVencimiento') and type = 'P') drop procedure dbo.spCDIAdmisionVencimiento
GO
CREATE PROCEDURE spCDIAdmisionVencimiento

@FechaD				DATETIME,
@FechaA				DATETIME

AS BEGIN
	
		
						SELECT v.CDISocio, v.Cliente, a.Descripcion1, v.FechaEmision, v.Mov, v.MovID, v.Concepto, v.Referencia, vd.DescripcionExtra, v.Condicion, v.Vencimiento,
			v.Importe, v.Impuestos, v.PrecioTotal , vd.Articulo, vd.Precio, vd.Cantidad, c.Membresia, c.PersonalNombres, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno
			FROM Venta v
			INNER JOIN VentaD vd	ON vd.ID = v.ID
			INNER JOIN MovTipo mt	ON mt.Mov = v.Mov AND mt.Modulo='VTAS'
			INNER JOIN Art a		ON a.Articulo = vd.Articulo	
			INNER JOIN Cte c		ON c.Cliente = v.Cliente AND c.CDISocio=1
			WHERE			vd.Articulo IN ('ADMISION','ALTA000001','REING00001','REINS00001','CATEGO001','CATEGO002')
					AND		mt.Clave ='VTAS.F'
					AND		v.Estatus ='CONCLUIDO'
					AND v.FechaEmision BETWEEN @FechaD AND @FechaA 
			
					

			ORDER BY vd.Articulo, a.Descripcion1, v.CDISocio, v.Vencimiento



	
   END
GO


