SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

  
-----------------------------------------------------
----- X P C D I A N T E S A F E C T A R C O M S -----
-----------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.xpCDIAntesAfectarComs')) DROP PROCEDURE dbo.xpCDIAntesAfectarComs
GO

CREATE PROCEDURE xpCDIAntesAfectarComs
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
			@Categoria				varchar(50), 
            @Articulo				varchar(20), 
			@IDMin					int,
            @IDMax					int,
			@Bandera				int

   CREATE TABLE #CompraD
  (	
   ID						int	IDENTITY(1,1) NOT NULL,	
   Articulo					varchar(50)	    NULL,
   ClavePresupuestal		varchar(50)	    NULL,
  )  
   
   SELECT @Empresa  = Empresa, @Mov = Mov, @MovID = MovID, @FechaEmision = FechaEmision, @Proyecto = Proyecto FROM Compra WHERE ID = @ID  
   INSERT INTO #CompraD (Articulo, ClavePresupuestal)
   SELECT                Articulo, ClavePresupuestal FROM CompraD WHERE ID = @ID 

   IF @Modulo = 'COMS' AND @Accion IN ('AFECTAR')
   BEGIN --- C O M S 
     SELECT @IDMin = 0, @IDMax = 0
	 SELECT @IDMax = MAX(ISNULL(ID,0)) FROM #CompraD 
     SELECT @IDMin = MIN(ISNULL(ID,0)) FROM #CompraD 
	 WHILE(@IDMax >= @IDMin)
     BEGIN --- 2
	   SELECT @Articulo = '',       @ClavePresupuestal = ''
       SELECT @Articulo = Articulo, @ClavePresupuestal = ClavePresupuestal FROM #CompraD WHERE ID = @IDMin           
       IF ISNULL(@Articulo,'') <> ''
       BEGIN --- A R T I C U L O
         IF ISNULL(@ClavePresupuestal,'') <> '' 
         BEGIN --- C L A V E
           SELECT @Bandera = DBO.fnCDICPValida (@Articulo, '', '', @Proyecto,  @Modulo, @ClavePresupuestal)
           IF @Bandera = 1
           BEGIN --- N O  C O R R E S P O N D E
             SELECT @Categoria = Categoria FROM Art WHERE Articulo = @Articulo   
             SELECT @Ok = 10081, @OKRef = ' la Categoria: ' + UPPER(ISNULL(@Categoria,'')) + '<BR>' + ' o el Articulo: ' + @Articulo + '<BR>' + ' o el Proyecto: ' + UPPER(ISNULL(@Proyecto,'')) + '<BR>' +' con la Clave Presupuestal ' + @ClavePresupuestal
             RETURN
           END   --- N O  C O R R E S P O N D E        
         END   --- C L A V E
       END   --- A R T I C U L O
       ELSE
       BEGIN ---  A R T I C U L O   N O  E X I S T E
         SET @Ok = 20400
         RETURN 
       END   ---  A R T I C U L O   N O  E X I S T E
       SELECT @IDMin = @IDMin + 1
     END  --- 2     
   END   --- C O M S 
 
RETURN
END
GO



--SELECT * FROM MENSAJELISTA WHERE DESCRIPCION LIKE('%Articulo%')
--DECLARE @Ok				int,
--		@OkRef			varchar(255)
--SET DATEFORMAT YMD
--EXEC xpCDIAntesAfectarComs 'COMS', 10, 'AFECTAR', 'Todo', NULL, 'DEMO', 0,0, @Ok OUTPUT, @OkRef OUTPUT,'2010-10-11 00:00:00.000'
--SELECT @Ok
--
