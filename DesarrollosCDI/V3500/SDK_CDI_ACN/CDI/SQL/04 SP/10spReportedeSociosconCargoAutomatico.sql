SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReportedeSociosconCargoAutomatico @MembresiaD='0',@MembresiaA='17000'
    
/**************** spReportedeSociosconCargoAutomatico****************/
if exists (select * from sysobjects where id = object_id('dbo.spReportedeSociosconCargoAutomatico') and type = 'P') drop procedure dbo.spReportedeSociosconCargoAutomatico
GO
CREATE PROCEDURE spReportedeSociosconCargoAutomatico

@MembresiaD		VARCHAR(50),
@MembresiaA		VARCHAR(50)


AS BEGIN
	
		IF UPPER(@MembresiaD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaD =NULL
		IF UPPER(@MembresiaA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaA = NULL
		
		SELECT  c.Membresia, c.Socio, Titular=(CASE   when c.Titular  = 1 THEN 'Si' ELSE 'No' END), c.Parentesco, c.PersonalNombres, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno,
				c.Categoria, cc.Articulo, a.Descripcion1, a.PrecioLista,  c.Estatus,CDIAutorizacionCargos= (CASE WHEN c.CDIAutorizacionCargos=1 THEN 'Activado' ELSE 'Desactivado' END),DefCargAuto=( CASE WHEN  cb.DefCargAuto = 1 THEN 'Activado' ELSE 'Desavtivado' END)
		FROM	cte c
			  INNER JOIN CDIArticulosCargos cc ON cc.Cliente = c.Cliente
			  INNER JOIN Art a ON a.Articulo = cc.Articulo
			  INNER JOIN CDIDatosBancarios cb ON cb.Cliente=c.Cliente
		WHERE c.CDISocio=1
				AND cb.DefCargAuto=1
				AND ISNULL(Membresia,'') BETWEEN ISNULL(ISNULL(@MembresiaD, Membresia),'')  
				AND ISNULL(ISNULL(@MembresiaA, Membresia),'')
		OR 
				c.CDISocio=1
				AND c.CDIAutorizacionCargos=1
				AND ISNULL(Membresia,'') BETWEEN ISNULL(ISNULL(@MembresiaD, Membresia),'')  
				AND ISNULL(ISNULL(@MembresiaA, Membresia),'')

		ORDER BY c.Membresia
   END

GO
