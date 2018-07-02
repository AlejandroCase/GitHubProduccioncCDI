SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--Desarrollo: Oscar Danell Moran
--Fecha: 03-Ene-2011
--Reporte de Bajas con Accesos

IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIBajasConAccesos') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIBajasConAccesos
GO
CREATE PROCEDURE spCDIBajasConAccesos 
  @FechaD     datetime,
  @FechaA     datetime 
  AS BEGIN
  	DECLARE 
  		@Ano INT
  		
  		SELECT @Ano = YEAR(@FechaA)
  	
      --Traemos los Socios dados de baja	
	    SELECT c.Cliente,c.Socio,c2.PersonalNombres+' '+c2.PersonalApellidoPaterno+' '+c2.PersonalApellidoMaterno AS 'NombreSocio',
	           c.Membresia,c.Concepto,c2.Categoria,c.Edad,c2.Descripcion19 AS 'Comunidad', c.FechaEmision, c2.Descripcion15 AS 'Causa'
	      INTO #SociosBaja
        FROM CDISocio c 
        LEFT OUTER JOIN Cte c2 ON c.Cliente = c2.Cliente AND c.Socio = c2.Socio
      WHERE c.Mov IN ( 'Baja','Baja por Proceso') AND c.Estatus = 'CONCLUIDO' AND c.FechaEmision BETWEEN @FechaD AND @FechaA
  
      --Traemos el numero de Accesos que tuvieron los socios dados de baja
      SELECT ad.Personal,COUNT(*) AS 'Accesos'
        INTO #AccesosSociosBaja
        FROM Asiste a
        JOIN AsisteD ad ON a.ID = ad.ID
      WHERE a.Mov = 'Registro Soc' AND a.Estatus = 'CONCLUIDO' and ad.Registro = 'Entrada' AND 
            ad.Personal IN (SELECT c.Socio FROM CDISocio c 
                                           LEFT OUTER JOIN Cte c2 ON c.Cliente = c2.Cliente AND c.Socio = c2.Socio
                            WHERE c.Mov IN( 'Baja','Baja por Proceso') AND c.Estatus = 'CONCLUIDO' AND c.FechaEmision BETWEEN @FechaD AND @FechaA) 
            AND year(a.FechaEmision) = @Ano
      GROUP BY ad.Personal   
    
      SELECT a.Cliente,a.Socio,a.NombreSocio,a.Membresia,a.Concepto,a.Categoria,a.Comunidad,a.Edad,b.Accesos,a.FechaEmision, a.Causa
        FROM #SociosBaja a
        JOIN #AccesosSociosBaja b ON a.Socio = b.Personal
      GROUP BY a.Cliente,a.Socio,a.NombreSocio,a.Membresia,a.Concepto,a.Categoria,a.Comunidad,a.Edad,b.Accesos, a.FechaEmision, a.Causa
      ORDER BY a.Socio
              
END 
GO

--spCDIBajasConAccesos '01-10-2011' , '31-10-2011'


 