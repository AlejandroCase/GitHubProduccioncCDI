SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReporteSubsidiosSocios @FechaD='01-01-2011',@FechaA='30-05-2011', @SocioD='',@SocioA='', @MembresiaD='null',@MembresiaA='null'
    
/**************** spReporteSubsidiosSocios****************/
if exists (select * from sysobjects where id = object_id('dbo.spReporteSubsidiosSocios') and type = 'P') drop procedure dbo.spReporteSubsidiosSocios
GO
CREATE PROCEDURE spReporteSubsidiosSocios

@FechaD			DATETIME,
@FechaA 		DATETIME,
@SocioD			VARCHAR(100),
@SocioA			VARCHAR(100),
@MembresiaD		VARCHAR(50),
@MembresiaA		VARCHAR(50)


AS BEGIN
	
		IF UPPER(@SocioD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @SocioD = NULL
		IF UPPER(@SocioA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @SocioA = NULL
		IF UPPER(@MembresiaD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaD =NULL
		IF UPPER(@MembresiaA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaA = NULL

		SELECT		c.Mov, c.MovID, c1.Membresia, c1.Socio, c.FechaEmision, c.FechaVigencia, c1.Categoria, ccr.Articulo, a.Descripcion1, 
					FormadePago= SUBSTRING( a.CDICondicion,3,9), Cuota=ISNULL( a.PrecioLista,0),Subsidio=ISNULL( c.ImporteSubsidio,0), 
					CuotaFinal=ISNULL( a.PrecioLista,0)-ISNULL( c.ImporteSubsidio,0), NombreCompleto= c1.PersonalNombres + ' ' + c1.PersonalApellidoPaterno + ' ' +  c1.PersonalApellidoMaterno
		FROM		CDISocio c
					INNER JOIN cte c1 ON c.Cliente=c1.Cliente
					INNER JOIN CDIArtCargosRecurrentes ccr ON ccr.Cliente = c1.Cliente
					INNER JOIN art a ON a.Articulo = ccr.Articulo 
		WHERE		c.Mov='Subsidio' AND c.Estatus='Concluido'
					AND c.FechaEmision BETWEEN @FechaD AND @FechaA
					AND ISNULL(c1.Membresia,'') BETWEEN ISNULL(ISNULL(@MembresiaD, c1.Membresia),'')  AND ISNULL(ISNULL(@MembresiaA, c1.Membresia),'')
					AND ISNULL(c1.Socio,'') BETWEEN ISNULL(ISNULL(@SocioD, c1.Socio),'') AND ISNULL (ISNULL(@SocioA, c1.Socio),'')
		ORDER BY c1.Membresia, c1.Socio
   	
   END



GO