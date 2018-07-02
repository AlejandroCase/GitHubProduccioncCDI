SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC ReportedeAccesosdesglosadoporeriodoDiaHora @FechaD='01-01-2010',@FechaA='30-06-2011', @SocioD='',@SocioA='', @MembresiaD='8600',@MembresiaA='8699'
    
/**************** ReportedeAccesosdesglosadoporeriodoDiaHora****************/
if exists (select * from sysobjects where id = object_id('dbo.ReportedeAccesosdesglosadoporeriodoDiaHora') and type = 'P') drop procedure dbo.ReportedeAccesosdesglosadoporeriodoDiaHora
GO
CREATE PROCEDURE ReportedeAccesosdesglosadoporeriodoDiaHora

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
		
		SELECT Socio=ad.Personal,c.Membresia, c.PersonalNombres, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno, 
				RegistroAño= YEAR(a.FechaEmision),RegistroMes= MONTH(a.FechaEmision),RegistroDia= DAY(a.FechaEmision), a.FechaEmision,HoraRegistro=Count(ad.HoraRegistro)
		FROM Asiste a
			INNER JOIN AsisteD ad ON ad.ID = a.ID
			INNER JOIN Cte c ON ad.Personal=c.Socio
		WHERE 
				a.Mov='Registro SOC'
			AND	a.Estatus='Concluido'
			AND ISNULL( c.Membresia,'') BETWEEN ISNULL(ISNULL(@MembresiaD,c.Membresia),'')  AND ISNULL(ISNULL(@MembresiaA,c.Membresia),'') 
			AND ISNULL( c.Socio,'') BETWEEN ISNULL(ISNULL(@SocioD,c.Socio),'') AND ISNULL(ISNULL(@SocioA,c.Socio),'')
			AND   a.FechaEmision BETWEEN @FechaD AND @FechaA

		GROUP BY ad.Personal, c.Membresia, c.PersonalNombres, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno, a.FechaEmision

		ORDER BY c.Membresia, ad.Personal ,YEAR(a.FechaEmision), MONTH (a.FechaEmision), DAY(a.FechaEmision)
   	
   END


GO
