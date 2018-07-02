SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReporteSociosFiltradoporEdad @EdadD='101',@EdadA='999' , @Estatus='baja'
    
/**************** spReporteSociosFiltradoporEdad****************/
if exists (select * from sysobjects where id = object_id('dbo.spReporteSociosFiltradoporEdad') and type = 'P') drop procedure dbo.spReporteSociosFiltradoporEdad
GO
CREATE PROCEDURE spReporteSociosFiltradoporEdad

@EdadD		VARCHAR	(5),
@EdadA		VARCHAR (5),
@Estatus	VARCHAR (15)


AS BEGIN
	
		IF UPPER(@Estatus) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Estatus = NULL
   
		SELECT	Membresia, Socio, PersonalNombres, PersonalApellidoPaterno, PersonalApellidoMaterno,  Estatus, FechaNacimiento, 'EdadActual'= DATEDIFF(YEAR, FechaNacimiento, GETDATE())
		FROM	cte  
		WHERE	CDISocio=1  
		AND		(DATEDIFF(YEAR, FechaNacimiento, GETDATE())) BETWEEN @EdadD AND @EdadA
		AND ISNULL( Estatus,'') = ISNULL(ISNULL(@Estatus,Estatus),'')

		ORDER BY DATEDIFF(YEAR, FechaNacimiento, GETDATE()), Membresia, Socio 
   END



GO