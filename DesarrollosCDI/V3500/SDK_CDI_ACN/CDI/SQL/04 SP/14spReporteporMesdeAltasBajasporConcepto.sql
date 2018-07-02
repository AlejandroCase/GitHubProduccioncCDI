SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReporteporMesdeAltasBajasporConcepto @Ejercicio='2011', @PeriodoD='1',@PeriodoA='1'
    
/**************** spReporteporMesdeAltasBajasporConcepto****************/
if exists (select * from sysobjects where id = object_id('dbo.spReporteporMesdeAltasBajasporConcepto') and type = 'P') drop procedure dbo.spReporteporMesdeAltasBajasporConcepto
GO
CREATE PROCEDURE spReporteporMesdeAltasBajasporConcepto

@Ejercicio		VARCHAR (5),
@PeriodoD		VARCHAR	(5),
@PeriodoA		VARCHAR (5)


AS BEGIN
	
		SELECT	c.Mov,C1.Categoria, c.Concepto, CantidaMembresia= COUNT (DISTINCT( isnull(C.Membresia,0))), CantidadSocios= COUNT (DISTINCT (isnull(c.socio,0)))+ COUNT ( DISTINCT((isnull(cd.Socio,0))))
		FROM	CDISocio c
				LEFT OUTER JOIN CDISocioD cd ON cd.ID = c.ID
				LEFT OUTER JOIN MovTipo mt ON mt.Mov=c.Mov AND mt.Modulo='SOC'
				LEFT OUTER JOIN CTE C1 ON C.Cliente=C1.Cliente
		WHERE	mt.Clave IN ('SOC.BAJA','SOC.ACEPTA') AND C1.CDISocio=1
				AND c.Estatus='CONCLUIDO'
				AND YEAR ( c.FechaEmision) = @Ejercicio
				AND MONTH( c.FechaEmision)  BETWEEN @PeriodoD AND @PeriodoA 
				AND c.mov not IN ('Desbloqueo')
		GROUP BY c.Mov,C1.Categoria,c.Concepto
		ORDER BY c.Mov, c1.Categoria, c.Concepto


   END

GO
