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


---------------------------------------------------------------
----- X P C D I A N T E S A F E C T A R S O L P U N T O S -----
---------------------------------------------------------------
SET ANSI_NULLS ON
GO 


IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.xpCDIAntesAfectarSolPuntos')) DROP PROCEDURE dbo.xpCDIAntesAfectarSolPuntos
GO

CREATE PROCEDURE xpCDIAntesAfectarSolPuntos
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
			@Socio						varchar(100),
            @Membresia					varchar(100),
			@Parentesco					varchar(50),
			@SufijosSocios				varchar(2),
			@Servidor					varchar(50),			
			@TablaVinculada				varchar(50),
			@ServidorBaseTabla			varchar(200), 
            @ServidorBaseTablaInsert	varchar(MAX), 
            @ServidorBaseTablaUpdate	varchar(MAX), 
			@Cantidad					float,
			@SESITARJ					float,
			@FechaEmision				datetime  
   
   SET ANSI_NULLS ON
   SET ANSI_WARNINGS ON

   SELECT @Empresa  = Empresa, @Mov = Mov, @MovID = MovID, @Cliente = Cliente, @Estatus = Estatus, @FechaEmision = FechaEmision FROM Venta WHERE ID = @ID  
   SELECT @Cantidad = SUM(au.Factor * vd.Cantidad) 
     FROM VentaD VD
    INNER JOIN ART A
       ON A.Articulo = VD.Articulo
	INNER JOIN ArtUnidad au ON au.Articulo = A.Articulo
    WHERE VD.ID = @ID  
      AND A.CDIInterfazPuntos = 1  

   SELECT @Socio = Socio, @Membresia = Membresia, @Parentesco = Parentesco   FROM Cte        WHERE Cliente = @Cliente AND ISNULL(Titular,0) = 0
   SELECT @SufijosSocios = SufijosSocios									   FROM Parentesco WHERE Parentesco = @Parentesco

   IF @Modulo = 'VTAS' AND @Accion IN ('CANCELAR')
   BEGIN --- V T A S               
     IF EXISTS(SELECT * FROM MovTipo WHERE Modulo = 'VTAS' AND Clave = 'VTAS.F' AND Mov = @Mov)
     BEGIN --- F A C T U R A S    
       IF EXISTS (SELECT * FROM VentaD VD 
                   INNER JOIN ART A
                      ON A.Articulo = VD.Articulo
                   WHERE VD.ID = @ID  
                     AND A.CDIInterfazPuntos = 1)  
       BEGIN --- I N T E R F A Z        
	     IF @Accion = 'CANCELAR'
         BEGIN --- C A N C E L A R
           --CREATE TABLE #ExisteDatoTabVin (SESITARJ float NULL)
           --SELECT @Servidor = Servidor, @TablaVinculada = ISNULL(TablaVinculada,'') FROM CDIServidorVinculado WHERE Empresa = @Empresa AND Producto = 'MYSQL' AND Proceso = 'INTERFAZ SOLICITUD PUNTOS'
           --SELECT @ServidorBaseTabla = 'SELECT SESITARJ FROM ' + @Servidor + '...' + @TablaVinculada + ' WHERE Soc_act = ' + CHAR(39)+ ISNULL(@Membresia,'') + CHAR(39) + ' AND Sub_act = ' + CHAR(39)+ ISNULL(@SufijosSocios,'') + CHAR(39)
           --INSERT INTO #ExisteDatoTabVin
           --EXEC(@ServidorBaseTabla)    
           --IF EXISTS(SELECT * FROM #ExisteDatoTabVin)    
           --BEGIN --- E X I S T E  C L I E N T E
           --  SELECT @SESITARJ = ISNULL(SESITARJ,0) FROM #ExisteDatoTabVin            
           --  IF @SESITARJ < @Cantidad SELECT @OK = 10554
           --END   --- E X I S T E  C L I E N T E                         
		   IF @Estatus = 'CANCELADO' AND ISNULL(@Membresia,'') <> ''
           BEGIN   
		   DELETE FROM CDIPuntos WHERE Empresa = @Empresa AND Mov = @Mov AND MovID = @MovID
		   END
         END   --- C A N C E L A R       
       END   --- I N T E R F A Z  
     END   --- F A C T U R A S 
   END   --- V T A S

   SET ANSI_NULLS OFF
   SET ANSI_WARNINGS OFF
 
RETURN
END
GO

SET ANSI_NULLS OFF
GO 

--DECLARE @Ok				int,
--		@OkRef			varchar(255)
--SET DATEFORMAT YMD
--EXEC xpCDIDespuesAfectarSolPuntos 'VTAS', 160, 'AFECTAR', 'Todo', NULL, 'DEMO', 0,0, @Ok OUTPUT, @OkRef OUTPUT,'2010-10-11 00:00:00.000'

