SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReportesSociosCitadosenDomingo @FechaD='01-01-2011',@FechaA='30-12-2011', @Estatus='Concluido'
    
/**************** spReportesSociosCitadosenDomingo****************/
if exists (select * from sysobjects where id = object_id('dbo.spReportesSociosCitadosenDomingo') and type = 'P') drop procedure dbo.spReportesSociosCitadosenDomingo
GO
CREATE PROCEDURE spReportesSociosCitadosenDomingo

@FechaD			DATETIME,
@FechaA 		DATETIME,
@Estatus		VARCHAR (15)


AS BEGIN
	
		IF UPPER(@Estatus) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Estatus = NULL
    
		SELECT		c.Mov, c.MovID, c.FechaEmision, c.HoraHonorJusticia, c.Estatus, 
					c.DemandanteTipo, Demandante=c.ClaveDemandante, DemandanteNombres=c1.PersonalNombres, DemandanteApellidoPaterno= c1.PersonalApellidoPaterno,DemandanteApellidoMaterno= c1.PersonalApellidoMaterno, DemandanteTelefono=c1.Telefonos,
					c.DemandadoTipo,Demandado=c.ClaveDemandado, DemandadoNombres=c2.PersonalNombres, DemandadoApellidoPaterno= c2.PersonalApellidoPaterno, DemandadoApellidoMaterno=c2.PersonalApellidoMaterno, DemandadoTElefono=c2.Telefonos,
					c.CitaHonorJusticia, c.Concepto, c.Referencia,c.Comentarios
		FROM		CDISocio c
					inner JOIN cte c1 ON c.ClaveDemandante=c1.Socio
					inner JOIN cte c2 ON c.ClaveDemandado=c2.Socio
		WHERE 
					c.Mov='Honor y Justicia' 
					AND c.CitaHonorJusticia BETWEEN @FechaD  AND @FechaA
					AND ISNULL( c.Estatus,'') = ISNULL(ISNULL(@Estatus,c.Estatus),'')

		ORDER BY c.CitaHonorJusticia
   	
   END

GO
