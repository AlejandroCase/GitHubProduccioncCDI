SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


 
-----------------------------------------------------
----- X P C D I D E S P U E S A F E C T A R C P -----
-----------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.xpCDIDespuesAfectarCP')) DROP PROCEDURE dbo.xpCDIDespuesAfectarCP
GO

CREATE PROCEDURE xpCDIDespuesAfectarCP
                 @Modulo		char(5),  
				 @ID			int,  
				 @Accion		char(20),  
				 @Base			char(20),  
				 @GenerarMov	char(20),  
				 @Usuario		char(10),  
				 @SincroFinal	bit,  
				 @EnSilencio    bit,  
				 @Ok            int				OUTPUT,  
				 @OkRef         varchar(255)	OUTPUT,  
				 @Fecharegistro datetime  
AS BEGIN
   DECLARE	@Empresa					varchar(5),
			@Mov						varchar(20),
            @MovID						varchar(20),
			@Cliente					varchar(10),
			@Estatus					varchar(15),
			@ClavePresupuestal			varchar(50)   

   SELECT @Mov = Mov, @MovID = MovID, @Empresa = Empresa, @Estatus = Estatus FROM CP  WHERE ID = @ID  
   SELECT @ClavePresupuestal = ClavePresupuestal FROM CPD WHERE ID = @ID  

   IF @Modulo = 'CP' AND @Accion IN ('AFECTAR','CANCELAR')
   BEGIN --- C P     
	 IF @Accion = 'AFECTAR'
     BEGIN --- A F E C T A R                              
        IF @Estatus = 'CONCLUIDO' 
        BEGIN --- C O N C L U I D O             
          UPDATE ClavePresupuestal SET TieneMovimientos = 1
            FROM CPD D
		    JOIN ClavePresupuestal CP
              ON CP.ClavePresupuestal = D.ClavePresupuestal
		   WHERE D.ID = @ID  
        END   --- C O N C L U I D O
     END   --- A F E C T A R              
   END   --- C P       
RETURN
END
GO
