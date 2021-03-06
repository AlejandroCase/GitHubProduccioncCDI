SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReportedeIngresosSocio @FechaD='01-01-2011',@FechaA='30-05-2011', @SocioD='',@SocioA='', @MembresiaD='11000',@MembresiaA='17000', @Concepto='null'
    
/**************** spReportedeIngresosSocio****************/
if exists (select * from sysobjects where id = object_id('dbo.spReportedeIngresosSocio') and type = 'P') drop procedure dbo.spReportedeIngresosSocio
GO
CREATE PROCEDURE spReportedeIngresosSocio

@FechaD			DATETIME,
@FechaA 		DATETIME,
@SocioD			VARCHAR(100),
@SocioA			VARCHAR(100),
@MembresiaD		VARCHAR(50),
@MembresiaA		VARCHAR(50),
@Concepto		VARCHAR(50)

AS BEGIN
	
		IF UPPER(@SocioD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @SocioD = NULL
		IF UPPER(@SocioA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @SocioA = NULL
		IF UPPER(@MembresiaD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaD =NULL
		IF UPPER(@MembresiaA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaA = NULL
		IF UPPER(@Concepto) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Concepto = NULL
		
	SELECT  c.Concepto, c.CDISocio, c1.PersonalNombres, c1.PersonalApellidoPaterno, c1.PersonalApellidoMaterno, c.FechaEmision,'Importe'= sum(c.Importe) 
	FROM	cxc c
			LEFT OUTER JOIN cxcd ON cxcd.ID = c.ID
			LEFT OUTER JOIN cte c1 ON c.Cliente=c1.Cliente
	WHERE	c1.CDISocio=1 
			AND c.FechaEmision BETWEEN @FechaD AND @FechaA
			AND ISNULL(Membresia,'') BETWEEN ISNULL(ISNULL(@MembresiaD, Membresia),'')  AND ISNULL(ISNULL(@MembresiaA, Membresia),'')
			AND ISNULL(Socio,'') BETWEEN ISNULL(ISNULL(@SocioD, Socio),'') AND ISNULL (ISNULL(@SocioA, Socio),'')
			AND ISNULL(c.Concepto,'')  = ISNULL(ISNULL(@Concepto,c.Concepto),'')
			AND mov='Cobro' AND c.Estatus='Concluido' 

	GROUP BY c.CDISocio, c.Concepto, c.FechaEmision, c1.PersonalNombres, c1.PersonalApellidoPaterno, c1.PersonalApellidoMaterno
	ORDER BY c.Concepto,c.FechaEmision,CDISocio

  	
   END


GO