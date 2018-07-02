SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF 
GO
/**************** spCDICopiaDireccionOtroSocio ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICopiaDireccionOtroSocio') and sysstat & 0xf = 4) drop procedure dbo.spCDICopiaDireccionOtroSocio
GO             
CREATE PROCEDURE spCDICopiaDireccionOtroSocio
    	         @Socio     varchar(10),
    	         @SOcio1    varchar(10),
    	         @Numero    int             
AS 
BEGIN
DECLARE
  @Direccion 		    varchar(100),
  @DireccionNumero	    varchar(20),
  @DireccionNumeroInt   varchar(20),
  @EntreCalles	        varchar(100),
  @Plano			    varchar(15),
  @Observaciones		varchar(100),
  @Delegacion		    varchar(100),
  @Colonia 		        varchar(100),
  @Poblacion 		    varchar(100),
  @Estado 			    varchar(30),
  @Pais 			    varchar(30),
  @Zona 			    varchar(30),
  @CodigoPostal 		varchar(15)
  
  SELECT @Direccion = c.Direccion,  @DireccionNumero = c.DireccionNumero,   @DireccionNumeroInt = c.DireccionNumeroInt, @EntreCalles = c.EntreCalles,
         @Plano = c.Plano,          @Observaciones = c.Observaciones,       @Delegacion = c.Delegacion,                 @Colonia = c.Colonia, 
         @Poblacion = @Poblacion,   @Estado = c.Estado,                     @Pais = c.Pais,                             @Zona    = c.Zona,
         @CodigoPostal = c.CodigoPostal
    FROM Cte c WHERE c.Cliente = @Socio


IF @Numero = 1  
  UPDATE Cte
  SET
  	Direccion =          @Direccion,
  	DireccionNumero =    @DireccionNumero,
  	DireccionNumeroInt = @DireccionNumeroInt,
  	EntreCalles =        @EntreCalles,
  	Plano =              @Plano,
  	Observaciones =      @Observaciones,
  	Delegacion =         @Delegacion,
  	Colonia =            @Colonia,
  	Poblacion =          @Poblacion,
  	Estado =             @Estado,
  	Pais =               @Pais,
  	Zona =               @Zona,
  	CodigoPostal =       @CodigoPostal
  WHERE Cliente = @SOcio1
  


IF @Numero = 2  
  UPDATE Cte
  SET
  	CDITransDireccion =     @Direccion,
  	CDITransNumero =        @DireccionNumero,
  	CDITransNumeroInt =     @DireccionNumeroInt,
  	CDITransEntreCalles =   @EntreCalles,
  	CDITransPlano =         @Plano,
  	CDITransDelegacion =    @Delegacion,
  	CDITransColonia =       @Colonia,
  	CDITransPoblacion =     @Poblacion,
  	CDITransEstado =        @Estado,
  	CDITransCodigoPostal =  @CodigoPostal
  WHERE Cliente = @SOcio1


IF @Numero = 3  
  UPDATE Cte
  SET
  	CDITransDireccion2 =     @Direccion,
  	CDITransNumero2 =        @DireccionNumero,
  	CDITransNumeroInt2 =     @DireccionNumeroInt,
  	CDITransEntreCalles2 =   @EntreCalles,
  	CDITransPlano2 =         @Plano,
  	CDITransDelegacion2 =    @Delegacion,
  	CDITransColonia2 =       @Colonia,
  	CDITransPoblacion2 =     @Poblacion,
  	CDITransEstado2 =        @Estado,
  	CDITransCodigoPostal2 =  @CodigoPostal
  WHERE Cliente = @SOcio1


  
		
END

GO

