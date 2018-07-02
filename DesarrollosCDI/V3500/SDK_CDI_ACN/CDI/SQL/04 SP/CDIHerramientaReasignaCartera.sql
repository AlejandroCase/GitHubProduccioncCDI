SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

IF OBJECT_ID('spCDIReasignaCobrador', 'P') IS NOT NULL
  DROP PROCEDURE spCDIReasignaCobrador
GO

CREATE PROCEDURE spCDIReasignaCobrador(@Estacion int, @Usuario varchar(10), @Agente varchar(10))  
AS  
BEGIN  

  SELECT 'Reasignacion(es) Terminada(s)'
  
  UPDATE c SET Agente = @Agente, UltimoCambio = GETDATE()
  FROM Cte c
  INNER JOIN ListaST lst ON c.Socio = lst.Clave
  WHERE lst.Estacion = LTRIM(STR(@Estacion))  
 
END  
GO
