SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
/**************** spRepGandhiCausasBloqueoBaja ****************/
if exists (select * from sysobjects where id = object_id('dbo.spRepGandhiCausasBloqueoBaja') and type = 'P') drop procedure dbo.spRepGandhiCausasBloqueoBaja
GO  
CREATE PROCEDURE spRepGandhiCausasBloqueoBaja (@Membresia INT) 
AS
BEGIN
  DECLARE
  @Cliente  VARCHAR(10), 
  @Socio    VARCHAR(100),
  @Causas   VARCHAR(500)

  CREATE TABLE #RepCausasBloqueoBaja (Cliente VARCHAR(10), Membresia INT, Socio VARCHAR(100), Nombre VARCHAR(255) NULL, Estatus VARCHAR(15) NULL, Bloqueo VARCHAR(50) NULL, CausaActual VARCHAR(50) NULL, Causas VARCHAR(MAX) NULL) 

  INSERT INTO #RepCausasBloqueoBaja ( Cliente, Membresia,     Socio,       Nombre, 
                                      Estatus, Bloqueo,       CausaActual )          
  SELECT                              Cliente, Membresia,     Socio,       ISNULL(PersonalNombres, '')+' '+ISNULL(PersonalApellidoPaterno, '')+' '+ISNULL(PersonalApellidoMaterno, ''),
                                      Estatus, Descripcion13, Descripcion15   
    FROM Cte
   WHERE Membresia = @Membresia
 
    DECLARE crCausaBloqueo CURSOR FOR    
     SELECT Cliente, Socio FROM #RepCausasBloqueoBaja
    OPEN crCausaBloqueo
    FETCH NEXT FROM crCausaBloqueo INTO @Cliente, @Socio
    WHILE @@FETCH_STATUS <> -1  
    BEGIN
      IF @@FETCH_STATUS <> -2  
       BEGIN

         EXEC SpCDISocLlenaSocBloqueo @Socio           
         SELECT @Causas = COALESCE(@Causas + ',', '') + Causa FROM CDIPasoSocBloqueoDepura WHERE Socio = @Socio GROUP BY Causa          
         UPDATE #RepCausasBloqueoBaja SET Causas = @Causas WHERE Cliente = @Cliente
         
       END 
      FETCH NEXT FROM crCausaBloqueo INTO @Cliente, @Socio
    END  -- While
    CLOSE crCausaBloqueo
    DEALLOCATE crCausaBloqueo

  Select * FROM #RepCausasBloqueoBaja
END
GO
--EXEC spRepGandhiCausasBloqueoBaja 9977