SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReportedeSociosconCuota @Categoria=''
    
/**************** spReportedeSociosconCuota****************/
if exists (select * from sysobjects where id = object_id('dbo.spReportedeSociosconCuota') and type = 'P') drop procedure dbo.spReportedeSociosconCuota
GO
CREATE PROCEDURE spReportedeSociosconCuota

@Categoria		VARCHAR(50)

AS BEGIN
	
		IF UPPER(@Categoria) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Categoria =NULL
   
		SELECT  c.Membresia, c.Socio, c.Titular  , c.Parentesco, c.PersonalNombres, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno,
				c.Categoria, ccr.Articulo, ccr.Cantidad,PrecioLista= isnull(a.PrecioLista,0),CDISubsidio=ISNULL( c.CDISubsidio,0), CuotaNeta=isnull(a.PrecioLista,0)-ISNULL( c.CDISubsidio,0), ccr.FechaInicio, c.Estatus
		FROM	cte c
				INNER JOIN CDIArtCargosRecurrentes ccr ON ccr.Cliente = c.Cliente
				INNER JOIN Art a ON a.Articulo = ccr.Articulo
		WHERE	c.CDISocio=1
				AND c.Estatus IN ('ALTA','BLOQUEADO')
				AND ISNULL( c.Categoria,'')= ISNULL(ISNULL(@Categoria,c.Categoria),'')
		ORDER BY c.Membresia
  	
   END

GO