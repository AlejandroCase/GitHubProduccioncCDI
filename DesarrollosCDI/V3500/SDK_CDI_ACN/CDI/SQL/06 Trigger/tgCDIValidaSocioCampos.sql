
/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
-------------------------------------------------------
--- T G C D I V A L I D A N I P C D I C L I E N T E ---
-------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.tgCDIValidaSocioCampos') and sysstat & 0xf = 8) drop trigger dbo.tgCDIValidaSocioCampos
GO
--CREATE TRIGGER tgCDIValidaSocioCampos ON Cte
----//WITH ENCRYPTION
--FOR INSERT, UPDATE
--AS 
--BEGIN
--  DECLARE
--  	@Cliente  varchar(10),
--  	@Estatus	VARCHAR(50),
--  	@Subsidio	MONEY,
--  	@Categoria	VARCHAR(50),
--  	@EstatusO	VARCHAR(50),
--  	@SubsidioO	MONEY,
--  	@CategoriaO	VARCHAR(50),
--  	@OrigenModulo	BIT
			
    	
      	
-- IF UPDATE (Descripcion1)
	 
--	 BEGIN
 	
-- 	   		SELECT  @Cliente = Cliente, @Estatus=Estatus , @Subsidio=CDISubsidio, @Categoria=Categoria
--  				 FROM INSERTED 
	  	  
--  			SELECT  @EstatusO=Estatus , @SubsidioO=CDISubsidio, @CategoriaO=Categoria
--  				FROM DELETED 
	  	  
			
--  				IF @Estatus<>@EstatusO
--  					BEGIN
--  						UPDATE cte SET Estatus =@EstatusO WHERE Cliente=@Cliente
--  					END
  				
	  		
--  				IF @Subsidio<>@SubsidioO
--  					BEGIN
--  						UPDATE cte SET CDISubsidio = @SubsidioO WHERE Cliente=@Cliente	
--  					END
  				
	  		
--  				IF @Categoria<>@CategoriaO
--  					BEGIN
--  						UPDATE cte SET Categoria = @CategoriaO WHERE Cliente=@Cliente	
--  					END
--  	END
--END 
GO