SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. INTERFAZ PUNTOS
  -- Cliente   . CDI
  -- Folio     . 4560
  -- Fecha     . 19 / 10 / 10
  -- Autor     . EDER MENDOZA


-------------------------------------------------
----- X P C D I A N T E S A F E C T A R C P -----
-------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.xpCDIAntesAfectarCP')) DROP PROCEDURE dbo.xpCDIAntesAfectarCP
GO

CREATE PROCEDURE xpCDIAntesAfectarCP
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
   DECLARE	@Empresa				varchar(5),
			@Mov					varchar(20),
            @MovID					varchar(20),
			@Proyecto				varchar(50),			
			@FechaEmision			datetime,
			@ClavePresupuestal		varchar(50), 
			@IDMin					int,
            @IDMax					int

   CREATE TABLE #ClavePresupuestal
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	
   ClavePresupuestal	varchar(50)	    NULL,
  )  
   
   SELECT @Empresa  = Empresa, @Mov = Mov, @MovID = MovID, @FechaEmision = FechaEmision, @Proyecto = Proyecto FROM CP WHERE ID = @ID  
   INSERT INTO #ClavePresupuestal
   SELECT ClavePresupuestal FROM CPD WHERE ID = @ID 

   IF @Modulo = 'CP' AND @Accion IN ('AFECTAR')
   BEGIN --- C P
     IF EXISTS(SELECT * FROM MovTipo WHERE Modulo ='CP' AND Clave IN ('CP.AP', 'CP.AS', 'CP.TA', 'CP.TR', 'CP.OP') AND Mov = @Mov) 
     BEGIN --- C P   Y   P R O Y
         SELECT @IDMin = 0, @IDMax = 0
		 SELECT @IDMax = MAX(ISNULL(ID,0)) FROM #ClavePresupuestal 
         SELECT @IDMin = MIN(ISNULL(ID,0)) FROM #ClavePresupuestal 
	     WHILE(@IDMax >= @IDMin)
         BEGIN --- 2
		   SELECT @ClavePresupuestal = ''
           SELECT @ClavePresupuestal = ClavePresupuestal FROM #ClavePresupuestal WHERE ID = @IDMin           
           IF ISNULL(@ClavePresupuestal,'') <> ''
           BEGIN
             IF NOT EXISTS (SELECT * FROM CDICPProy WHERE ClavePresupuestal = @ClavePresupuestal AND Proyecto = @Proyecto) 
             BEGIN --- N O  C O R R E S P O N D E
               SELECT @Ok = 25560, @OKRef = @ClavePresupuestal + ' Al Proyecto ' + ISNULL(@Proyecto,'')
               RETURN
             END   --- N O  C O R R E S P O N D E        
           END
           ELSE
           BEGIN ---  C L A V E  N O  E X I S T E
             SET @Ok = 25640
             RETURN 
           END   ---  C L A V E  N O  E X I S T E
           SELECT @IDMin = @IDMin + 1
         END  --- 2

     END   --- C P   Y   P R O Y
   END   --- C P

   
 
RETURN
END
GO

--DECLARE @Ok				int,
--		  @OkRef			varchar(255)
--SET DATEFORMAT YMD
--EXEC xpCDIAntesAfectarCP 'CP', 169, 'AFECTAR', 'Todo', NULL, 'DEMO', 0,0, @Ok OUTPUT, @OkRef OUTPUT,'2010-10-11 00:00:00.000'
--SELECT @Ok
--
