SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReportedeSociosporEstatus @Estatus='null'
    
/**************** spReportedeSociosporEstatus****************/
if exists (select * from sysobjects where id = object_id('dbo.spReportedeSociosporEstatus') and type = 'P') drop procedure dbo.spReportedeSociosporEstatus
GO
CREATE PROCEDURE spReportedeSociosporEstatus

@Estatus VARCHAR (15)
AS BEGIN
	
		IF UPPER(@Estatus) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Estatus = NULL
   
		SELECT  c.Membresia, c.Socio, c.Titular  , c.Parentesco, c.PersonalNombres, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno,
				c.Categoria, c.Estatus, c.Telefonos
		FROM	cte c
		WHERE	c.CDISocio=1
				AND ISNULL( c.Estatus,'')= ISNULL(ISNULL(@Estatus, c.Estatus),'')
		ORDER BY c.Membresia, c.Socio
   	
   END

GO
