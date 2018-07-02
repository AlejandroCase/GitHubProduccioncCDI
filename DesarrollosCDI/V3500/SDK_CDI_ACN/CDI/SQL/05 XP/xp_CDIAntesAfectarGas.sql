SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

  
---------------------------------------------------
----- X P C D I A N T E S A F E C T A R G A S -----
---------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.xpCDIAntesAfectarGas')) DROP PROCEDURE dbo.xpCDIAntesAfectarGas
GO

CREATE PROCEDURE xpCDIAntesAfectarGas
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
			@ClasificacionGasto		varchar(50), 
            @Concepto				varchar(50), 
			@IDMin					int,
            @IDMax					int,
			@Bandera				int

   CREATE TABLE #GastoD
  (	
   ID						int	IDENTITY(1,1) NOT NULL,	
   Concepto					varchar(50)	    NULL,
   ClavePresupuestal		varchar(50)	    NULL,
  )  
   
   SELECT @Empresa  = Empresa, @Mov = Mov, @MovID = MovID, @FechaEmision = FechaEmision, @Proyecto = Proyecto FROM Gasto WHERE ID = @ID  
   INSERT INTO #GastoD (Concepto, ClavePresupuestal)
   SELECT Concepto, ClavePresupuestal FROM GastoD WHERE ID = @ID 

   IF @Modulo = 'GAS' AND @Accion IN ('AFECTAR')
   BEGIN --- G A S
     SELECT @IDMin = 0, @IDMax = 0
	 SELECT @IDMax = MAX(ISNULL(ID,0)) FROM #GastoD 
     SELECT @IDMin = MIN(ISNULL(ID,0)) FROM #GastoD 
	 WHILE(@IDMax >= @IDMin)
     BEGIN --- 2
	   SELECT @Concepto = '',       @ClavePresupuestal = ''
       SELECT @Concepto = Concepto, @ClavePresupuestal = ClavePresupuestal FROM #GastoD WHERE ID = @IDMin           
       IF ISNULL(@Concepto,'') <> ''
       BEGIN --- C O N C E P T O
         IF ISNULL(@ClavePresupuestal,'') <> '' 
         BEGIN --- C L A V E
           SELECT @Bandera = DBO.fnCDICPValida ('', '', @Concepto, @Proyecto,  @Modulo, @ClavePresupuestal)
           IF @Bandera = 1
           BEGIN --- N O  C O R R E S P O N D E
             SELECT @ClasificacionGasto = Clase FROM Concepto WHERE Modulo = 'GAS' AND Concepto = @Concepto
             SELECT @Ok = 10081, @OKRef = ' la Clasificación: ' + UPPER(ISNULL(@ClasificacionGasto,'')) + '<BR>' + ' o el Concepto: ' + @Concepto + '<BR>' + ' o el Proyecto: ' + UPPER(ISNULL(@Proyecto,'')) + '<BR>' +' con la Clave Presupuestal ' + @ClavePresupuestal
             RETURN
           END   --- N O  C O R R E S P O N D E        
         END   --- C L A V E
       END   --- C O N C E P T O
       ELSE
       BEGIN ---  C O N C E P T O   N O  E X I S T E
         SET @Ok = 20480
         RETURN 
       END   ---  C O N C E P T O  N O  E X I S T E
       SELECT @IDMin = @IDMin + 1
     END  --- 2     
   END   --- G A S   
 
RETURN
END
GO



--SELECT * FROM MENSAJELISTA WHERE DESCRIPCION LIKE('%concepto%')
--DECLARE @Ok				int,
--		@OkRef			varchar(255)
--SET DATEFORMAT YMD
--EXEC xpCDIAntesAfectarGas 'GAS', 10, 'AFECTAR', 'Todo', NULL, 'DEMO', 0,0, @Ok OUTPUT, @OkRef OUTPUT,'2010-10-11 00:00:00.000'
--SELECT @Ok
--
