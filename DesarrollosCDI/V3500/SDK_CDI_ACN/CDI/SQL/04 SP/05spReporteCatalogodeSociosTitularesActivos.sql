SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReporteCatalogodeSociosTitularesActivos @MembresiaD='0',@MembresiaA= '999999'
 
    
/**************** spReporteCatalogodeSociosTitularesActivos****************/
if exists (select * from sysobjects where id = object_id('dbo.spReporteCatalogodeSociosTitularesActivos') and type = 'P') drop procedure dbo.spReporteCatalogodeSociosTitularesActivos
GO
CREATE PROCEDURE spReporteCatalogodeSociosTitularesActivos

@MembresiaD			VARCHAR(50),
@MembresiaA 		VARCHAR(50)


AS BEGIN
	
		IF UPPER(@MembresiaD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaD =NULL
		IF UPPER(@MembresiaA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaA = NULL
		    

		SELECT c.Membresia, c.Socio, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno, c.PersonalNombres, c.Tipo, c.Direccion, c.DireccionNumero, c.DireccionNumeroInt,
		c.Colonia, c.Delegacion, c.CodigoPostal, c.Telefonos, TipoTelefono=ct.Tipo, TelefonoAdicional=ct.Telefono
		FROM Cte c
		LEFT OUTER JOIN CteTel ct ON ct.Cliente = c.Cliente
		WHERE	c.CDISocio=1
		AND		c.Titular=1 
		AND		c.Estatus='ALTA'
		AND		ISNULL(c.Membresia,NULL) BETWEEN ISNULL(ISNULL(@MembresiaD, c.Membresia),'') AND ISNULL(ISNULL(@MembresiaA,c.Membresia),'')

--ORDER BY a.FechaEmision, ad.HoraRegistro
   	
   END

GO