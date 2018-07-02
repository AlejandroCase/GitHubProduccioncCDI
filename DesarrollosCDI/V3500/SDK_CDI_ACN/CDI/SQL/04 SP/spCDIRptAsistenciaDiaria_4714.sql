SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--Desarrollo: Oscar Danell Moran
--Fecha: 07-Ene-2011
--Reporte de Asistencia Diaria

-- Tabla que contine las edades de los socios
if not exists (select * from sysobjects where id = object_id('dbo.CDIEdad') and type = 'U') 
BEGIN
  CREATE TABLE dbo.CDIEdad (
	ID					int 	    	NOT NULL IDENTITY(1,1),
  EDAD        int
	CONSTRAINT priCDIEdad PRIMARY KEY CLUSTERED (ID)
  )

INSERT INTO CDIEDAD VALUES(0)
INSERT INTO CDIEDAD VALUES(1)
INSERT INTO CDIEDAD VALUES(2)
INSERT INTO CDIEDAD VALUES(3)
INSERT INTO CDIEDAD VALUES(4)
INSERT INTO CDIEDAD VALUES(5)
INSERT INTO CDIEDAD VALUES(6)
INSERT INTO CDIEDAD VALUES(7)
INSERT INTO CDIEDAD VALUES(8)
INSERT INTO CDIEDAD VALUES(9)
INSERT INTO CDIEDAD VALUES(10)
INSERT INTO CDIEDAD VALUES(11)
INSERT INTO CDIEDAD VALUES(12)
INSERT INTO CDIEDAD VALUES(13)
INSERT INTO CDIEDAD VALUES(14)
INSERT INTO CDIEDAD VALUES(15)
INSERT INTO CDIEDAD VALUES(16)
INSERT INTO CDIEDAD VALUES(17)
INSERT INTO CDIEDAD VALUES(18)
INSERT INTO CDIEDAD VALUES(19)
INSERT INTO CDIEDAD VALUES(20)
INSERT INTO CDIEDAD VALUES(21)
INSERT INTO CDIEDAD VALUES(22)
INSERT INTO CDIEDAD VALUES(23)
INSERT INTO CDIEDAD VALUES(24)
INSERT INTO CDIEDAD VALUES(25)
INSERT INTO CDIEDAD VALUES(26)
INSERT INTO CDIEDAD VALUES(27)
INSERT INTO CDIEDAD VALUES(28)
INSERT INTO CDIEDAD VALUES(29)
INSERT INTO CDIEDAD VALUES(30)
INSERT INTO CDIEDAD VALUES(31)
INSERT INTO CDIEDAD VALUES(32)
INSERT INTO CDIEDAD VALUES(33)
INSERT INTO CDIEDAD VALUES(34)
INSERT INTO CDIEDAD VALUES(35)
INSERT INTO CDIEDAD VALUES(36)
INSERT INTO CDIEDAD VALUES(37)
INSERT INTO CDIEDAD VALUES(38)
INSERT INTO CDIEDAD VALUES(39)
INSERT INTO CDIEDAD VALUES(40)
INSERT INTO CDIEDAD VALUES(41)
INSERT INTO CDIEDAD VALUES(42)
INSERT INTO CDIEDAD VALUES(43)
INSERT INTO CDIEDAD VALUES(44)
INSERT INTO CDIEDAD VALUES(45)
INSERT INTO CDIEDAD VALUES(46)
INSERT INTO CDIEDAD VALUES(47)
INSERT INTO CDIEDAD VALUES(48)
INSERT INTO CDIEDAD VALUES(49)
INSERT INTO CDIEDAD VALUES(50)
INSERT INTO CDIEDAD VALUES(51)
INSERT INTO CDIEDAD VALUES(52)
INSERT INTO CDIEDAD VALUES(53)
INSERT INTO CDIEDAD VALUES(54)
INSERT INTO CDIEDAD VALUES(55)
INSERT INTO CDIEDAD VALUES(56)
INSERT INTO CDIEDAD VALUES(57)
INSERT INTO CDIEDAD VALUES(58)
INSERT INTO CDIEDAD VALUES(59)
INSERT INTO CDIEDAD VALUES(60)
INSERT INTO CDIEDAD VALUES(61)
INSERT INTO CDIEDAD VALUES(62)
INSERT INTO CDIEDAD VALUES(63)
INSERT INTO CDIEDAD VALUES(64)
INSERT INTO CDIEDAD VALUES(65)
INSERT INTO CDIEDAD VALUES(66)
INSERT INTO CDIEDAD VALUES(67)
INSERT INTO CDIEDAD VALUES(68)
INSERT INTO CDIEDAD VALUES(69)
INSERT INTO CDIEDAD VALUES(70)
INSERT INTO CDIEDAD VALUES(71)
INSERT INTO CDIEDAD VALUES(72)
INSERT INTO CDIEDAD VALUES(73)
INSERT INTO CDIEDAD VALUES(74)
INSERT INTO CDIEDAD VALUES(75)
INSERT INTO CDIEDAD VALUES(76)
INSERT INTO CDIEDAD VALUES(77)
INSERT INTO CDIEDAD VALUES(78)
INSERT INTO CDIEDAD VALUES(79)
INSERT INTO CDIEDAD VALUES(80)
INSERT INTO CDIEDAD VALUES(81)
INSERT INTO CDIEDAD VALUES(82)
INSERT INTO CDIEDAD VALUES(83)
INSERT INTO CDIEDAD VALUES(84)
INSERT INTO CDIEDAD VALUES(85)
INSERT INTO CDIEDAD VALUES(86)
INSERT INTO CDIEDAD VALUES(87)
INSERT INTO CDIEDAD VALUES(88)
INSERT INTO CDIEDAD VALUES(89)
INSERT INTO CDIEDAD VALUES(90)
INSERT INTO CDIEDAD VALUES(91)
INSERT INTO CDIEDAD VALUES(92)
INSERT INTO CDIEDAD VALUES(93)
INSERT INTO CDIEDAD VALUES(94)
INSERT INTO CDIEDAD VALUES(95)
INSERT INTO CDIEDAD VALUES(96)
INSERT INTO CDIEDAD VALUES(97)
INSERT INTO CDIEDAD VALUES(98)
INSERT INTO CDIEDAD VALUES(99) 
END
GO

-- Tabla que contine las horas del dia
if not exists (select * from sysobjects where id = object_id('dbo.CDIHorasDia') and type = 'U') 
BEGIN
  CREATE TABLE dbo.CDIHorasDia (
	ID					int 	    	NOT NULL IDENTITY(1,1),
  Hora        varchar(5)
	CONSTRAINT priCDIHorasDia PRIMARY KEY CLUSTERED (ID)
  )

INSERT INTO CDIHorasDia VALUES('06:00')
INSERT INTO CDIHorasDia VALUES('07:00')
INSERT INTO CDIHorasDia VALUES('08:00')
INSERT INTO CDIHorasDia VALUES('09:00')
INSERT INTO CDIHorasDia VALUES('10:00')
INSERT INTO CDIHorasDia VALUES('11:00')
INSERT INTO CDIHorasDia VALUES('12:00')
INSERT INTO CDIHorasDia VALUES('13:00')
INSERT INTO CDIHorasDia VALUES('14:00')
INSERT INTO CDIHorasDia VALUES('15:00')
INSERT INTO CDIHorasDia VALUES('16:00')
INSERT INTO CDIHorasDia VALUES('17:00')
INSERT INTO CDIHorasDia VALUES('18:00')
INSERT INTO CDIHorasDia VALUES('19:00')
INSERT INTO CDIHorasDia VALUES('20:00')
INSERT INTO CDIHorasDia VALUES('21:00')
INSERT INTO CDIHorasDia VALUES('22:00')
INSERT INTO CDIHorasDia VALUES('23:00')
END
GO


IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIRptAsistenciaDiaria') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIRptAsistenciaDiaria
GO
CREATE PROCEDURE spCDIRptAsistenciaDiaria 
  @Fecha     DATETIME,
  @Tipo      INT 
  AS BEGIN
    SELECT a.FechaEmision, ad.Personal,FLOOR(DATEDIFF(dd,ISNULL(FechaNacimiento,@Fecha),@Fecha)/365) AS 'EDAD', ad.HoraRegistro,
           'h6'= CASE WHEN ad.HoraRegistro >= '06:00' AND ad.HoraRegistro < '07:00' THEN 1 ELSE 0 END,
           'h7'= CASE WHEN ad.HoraRegistro >= '07:00' AND ad.HoraRegistro < '08:00' THEN 1 ELSE 0 END,
           'h8'= CASE WHEN ad.HoraRegistro >= '08:00' AND ad.HoraRegistro < '09:00' THEN 1 ELSE 0 END,
           'h9'= CASE WHEN ad.HoraRegistro >= '09:00' AND ad.HoraRegistro < '10:00' THEN 1 ELSE 0 END,
           'h10'= CASE WHEN ad.HoraRegistro >= '10:00' AND ad.HoraRegistro < '11:00' THEN 1 ELSE 0 END,
           'h11'= CASE WHEN ad.HoraRegistro >= '11:00' AND ad.HoraRegistro < '12:00' THEN 1 ELSE 0 END,
           'h12'= CASE WHEN ad.HoraRegistro >= '12:00' AND ad.HoraRegistro < '13:00' THEN 1 ELSE 0 END,
           'h13'= CASE WHEN ad.HoraRegistro >= '13:00' AND ad.HoraRegistro < '14:00' THEN 1 ELSE 0 END,
           'h14'= CASE WHEN ad.HoraRegistro >= '14:00' AND ad.HoraRegistro < '15:00' THEN 1 ELSE 0 END, 
           'h15'= CASE WHEN ad.HoraRegistro >= '15:00' AND ad.HoraRegistro < '16:00' THEN 1 ELSE 0 END,
           'h16'= CASE WHEN ad.HoraRegistro >= '16:00' AND ad.HoraRegistro < '17:00' THEN 1 ELSE 0 END,
           'h17'= CASE WHEN ad.HoraRegistro >= '17:00' AND ad.HoraRegistro < '18:00' THEN 1 ELSE 0 END,
           'h18'= CASE WHEN ad.HoraRegistro >= '18:00' AND ad.HoraRegistro < '19:00' THEN 1 ELSE 0 END,
           'h19'= CASE WHEN ad.HoraRegistro >= '19:00' AND ad.HoraRegistro < '20:00' THEN 1 ELSE 0 END,
           'h20'= CASE WHEN ad.HoraRegistro >= '20:00' AND ad.HoraRegistro < '21:00' THEN 1 ELSE 0 END,
           'h21'= CASE WHEN ad.HoraRegistro >= '21:00' AND ad.HoraRegistro < '22:00' THEN 1 ELSE 0 END,
           'h22'= CASE WHEN ad.HoraRegistro >= '22:00' AND ad.HoraRegistro < '23:00' THEN 1 ELSE 0 END,
           'h23'= CASE WHEN ad.HoraRegistro >= '23:00' AND ad.HoraRegistro < '24:00' THEN 1 ELSE 0 END,
           'HoraR'= CASE WHEN ad.HoraRegistro >= '06:00' AND ad.HoraRegistro < '07:00' THEN '06:00'
                         WHEN ad.HoraRegistro >= '07:00' AND ad.HoraRegistro < '08:00' THEN '07:00'
                         WHEN ad.HoraRegistro >= '08:00' AND ad.HoraRegistro < '09:00' THEN '08:00'
                         WHEN ad.HoraRegistro >= '09:00' AND ad.HoraRegistro < '10:00' THEN '09:00'
                         WHEN ad.HoraRegistro >= '10:00' AND ad.HoraRegistro < '11:00' THEN '10:00'
                         WHEN ad.HoraRegistro >= '11:00' AND ad.HoraRegistro < '12:00' THEN '11:00'
                         WHEN ad.HoraRegistro >= '12:00' AND ad.HoraRegistro < '13:00' THEN '12:00'
                         WHEN ad.HoraRegistro >= '13:00' AND ad.HoraRegistro < '14:00' THEN '13:00'
                         WHEN ad.HoraRegistro >= '14:00' AND ad.HoraRegistro < '15:00' THEN '14:00' 
                         WHEN ad.HoraRegistro >= '15:00' AND ad.HoraRegistro < '16:00' THEN '15:00'
                         WHEN ad.HoraRegistro >= '16:00' AND ad.HoraRegistro < '17:00' THEN '16:00'
                         WHEN ad.HoraRegistro >= '17:00' AND ad.HoraRegistro < '18:00' THEN '17:00'
                         WHEN ad.HoraRegistro >= '18:00' AND ad.HoraRegistro < '19:00' THEN '18:00'
                         WHEN ad.HoraRegistro >= '19:00' AND ad.HoraRegistro < '20:00' THEN '19:00'
                         WHEN ad.HoraRegistro >= '20:00' AND ad.HoraRegistro < '21:00' THEN '20:00'
                         WHEN ad.HoraRegistro >= '21:00' AND ad.HoraRegistro < '22:00' THEN '21:00'
                         WHEN ad.HoraRegistro >= '22:00' AND ad.HoraRegistro < '23:00' THEN '22:00'
                         WHEN ad.HoraRegistro >= '23:00' AND ad.HoraRegistro < '24:00' THEN '23:00' END
      INTO #Asistencia     
      FROM Asiste a 
      JOIN AsisteD ad ON a.ID = ad.ID
      left outer JOIN Cte ON ad.Personal = Cte.Socio
    WHERE a.Mov = 'Registro Soc' AND a.Estatus = 'CONCLUIDO' AND ad.Registro = 'Entrada'-- AND Cte.Estatus = 'ALTA'
         AND a.FechaEmision = @Fecha
    ORDER BY ad.HoraRegistro
  
    IF @Tipo = 1
      SELECT '1' AS Orden,CDIEdad.Edad,SUM(isnull(a.h6,0)) 'H6',SUM(isnull(a.h7,0)) 'H7',SUM(isnull(a.h8,0)) 'H8',
             SUM(isnull(a.h9,0)) 'H9',SUM(isnull(a.h10,0)) 'H10',SUM(isnull(a.h11,0)) 'H11',
             SUM(isnull(a.h12,0)) 'H12',SUM(isnull(a.h13,0)) 'H13',SUM(isnull(a.h14,0)) 'H14',
             SUM(isnull(a.h15,0)) 'H15',SUM(isnull(a.h16,0)) 'H16',SUM(isnull(a.h17,0)) 'H17',
             SUM(isnull(a.h18,0)) 'H18',SUM(isnull(a.h19,0)) 'H19',SUM(isnull(a.h20,0)) 'H20',
             SUM(isnull(a.h21,0)) 'H21',SUM(isnull(a.h22,0)) 'H22',SUM(isnull(a.h23,0)) 'H23'
        FROM CDIEdad
        LEFT OUTER JOIN #Asistencia a ON CDIEdad.Edad = a.Edad
      GROUP BY CDIEdad.Edad
      ORDER BY CDIEdad.Edad
    ELSE 
    IF @Tipo = 2
    	SELECT '2' AS Orden,CDIHorasDia.Hora,SUM(isnull(a.h6,0)) 'H6',SUM(isnull(a.h7,0)) 'H7',SUM(isnull(a.h8,0)) 'H8',
           SUM(isnull(a.h9,0)) 'H9',SUM(isnull(a.h10,0)) 'H10',SUM(isnull(a.h11,0)) 'H11',
           SUM(isnull(a.h12,0)) 'H12',SUM(isnull(a.h13,0)) 'H13',SUM(isnull(a.h14,0)) 'H14',
           SUM(isnull(a.h15,0)) 'H15',SUM(isnull(a.h16,0)) 'H16',SUM(isnull(a.h17,0)) 'H17',
           SUM(isnull(a.h18,0)) 'H18',SUM(isnull(a.h19,0)) 'H19',SUM(isnull(a.h20,0)) 'H20',
           SUM(isnull(a.h21,0)) 'H21',SUM(isnull(a.h22,0)) 'H22',SUM(isnull(a.h23,0)) 'H23'
    	  FROM CDIHorasDia     
        LEFT OUTER JOIN #Asistencia a ON CDIHorasDia.Hora = a.HoraR
      GROUP BY CDIHorasDia.Hora
      ORDER BY CDIHorasDia.Hora
    ELSE 
    IF @Tipo = 3        
      SELECT c.Edad,COUNT(a.HoraR) Total
        FROM CDIEdad c
        LEFT OUTER JOIN #Asistencia a ON c.Edad = a.Edad
      GROUP BY c.Edad
      ORDER BY c.Edad
  
  END
  GO
--spCDIRptAsistenciaDiaria '2011-01-01',3









