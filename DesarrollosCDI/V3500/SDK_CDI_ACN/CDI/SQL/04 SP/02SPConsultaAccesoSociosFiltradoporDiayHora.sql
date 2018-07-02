SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC ConsultaAccesoSociosFiltradoporDiayHora @FechaD='01-04-2011', @FechaA='30-04-2011',@HoraD='10:00', @HoraA='10:30'
 
    
/**************** ConsultaAccesoSociosFiltradoporDiayHora****************/
if exists (select * from sysobjects where id = object_id('dbo.ConsultaAccesoSociosFiltradoporDiayHora') and type = 'P') drop procedure dbo.ConsultaAccesoSociosFiltradoporDiayHora
GO
CREATE PROCEDURE ConsultaAccesoSociosFiltradoporDiayHora

@FechaD				DATETIME,
@FechaA				DATETIME,
@HoraD				VARCHAR(5),
@HoraA				VARCHAR(5)

AS BEGIN
	
	SELECT a.FechaEmision, ad.HoraRegistro, ad.Personal AS Socio, c.PersonalNombres, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno
	  FROM Asiste a
	LEFT OUTER JOIN AsisteD ad  ON ad.ID = a.ID 
	INNER JOIN cte c ON c.Socio=ad.Personal
	WHERE 
	a.Mov='Registro Soc'
	AND a.Estatus = 'Concluido' 
	AND a.FechaEmision BETWEEN @FechaD AND @FechaA	
	AND ad.HoraRegistro BETWEEN @HoraD AND @HoraA	

ORDER BY a.FechaEmision, ad.HoraRegistro
   	
   END

GO
