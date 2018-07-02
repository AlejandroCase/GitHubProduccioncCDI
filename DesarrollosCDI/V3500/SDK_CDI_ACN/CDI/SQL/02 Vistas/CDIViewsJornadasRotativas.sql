/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
----------------------------------------------------------
---------------    VIEW de                ---------------
----------------------------------------------------------
IF  EXISTS (SELECT * FROM Sys.Views WHERE name='VerPersonalJornadaTiempos') DROP VIEW VerPersonalJornadaTiempos
GO
CREATE VIEW VerPersonalJornadaTiempos
AS 
SELECT ID, Personal, Entrada, Salida, "Ano"= DATEPART(year, Entrada), "Mes" = DATEPART(month, Entrada), "Dia" = DATEPART(day, Entrada), "Semana" = DATEPART(week, Entrada)
  FROM PersonalJornadaTiempos
GO
----------------------------------------------------------
---------------    VIEW de                ---------------
----------------------------------------------------------
IF  EXISTS (SELECT * FROM Sys.Views WHERE name='VerJornadaRotativo') DROP VIEW VerJornadaRotativo
GO
CREATE VIEW VerJornadaRotativo
AS 
SELECT Jornada
  FROM Jornada
WHERE EsRotativa = 1

GO