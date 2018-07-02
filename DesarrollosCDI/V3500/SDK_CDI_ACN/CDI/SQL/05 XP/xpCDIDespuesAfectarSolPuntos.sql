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


-------------------------------------------------------------------
----- X P C D I D E S P U E S A F E C T A R S O L P U N T O S -----
-------------------------------------------------------------------
SET ANSI_NULLS ON
GO 


IF EXISTS (SELECT * FROM sysobjects WHERE type='p' AND id=object_id('dbo.xpCDIDespuesAfectarSolPuntos')) DROP PROCEDURE dbo.xpCDIDespuesAfectarSolPuntos
GO

CREATE PROCEDURE xpCDIDespuesAfectarSolPuntos
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
			@FechaEmision				datetime, 
			@Titular					bit,
			@LongitudCadena				int
   
   SET ANSI_NULLS ON
   SET ANSI_WARNINGS ON
   SET DATEFORMAT YMD

   SELECT @Empresa  = Empresa, @Mov = Mov, @MovID = MovID, @Cliente = Cliente, @Estatus = Estatus, @FechaEmision = FechaEmision FROM Venta WHERE ID = @ID  
   SELECT @Cantidad = SUM(au.Factor * vd.Cantidad) 
     FROM VentaD VD
    INNER JOIN ART A
       ON A.Articulo = VD.Articulo
    INNER JOIN ArtUnidad au ON au.Articulo = A.Articulo
    WHERE VD.ID = @ID  
      AND A.CDIInterfazPuntos = 1  

   SELECT @Socio = Socio, @Membresia = Membresia, @Parentesco = Parentesco,   @Titular = Titular FROM Cte WHERE Cliente = @Cliente 
   SELECT @LongitudCadena = LEN(@Socio)
   SELECT @SufijosSocios  = SUBSTRING(RTRIM(@Socio),@LongitudCadena - 1, 2)

   IF @Modulo = 'VTAS' AND @Accion IN ('AFECTAR','CANCELAR')
   BEGIN --- V T A S               
     IF EXISTS(SELECT * FROM MovTipo WHERE Modulo = 'VTAS' AND Clave = 'VTAS.F' AND Mov = @Mov)
     BEGIN --- F A C T U R A S    
       IF EXISTS (SELECT * FROM VentaD VD 
                   INNER JOIN ART A
                      ON A.Articulo = VD.Articulo
                   WHERE VD.ID = @ID  
                     AND A.CDIInterfazPuntos = 1)  
      -- BEGIN --- I N T E R F A Z
      --   CREATE TABLE #ExisteDatoTabVin (SESITARJ float NULL)          
      --   SELECT @Servidor = Servidor, @TablaVinculada = ISNULL(TablaVinculada,'') FROM CDIServidorVinculado WHERE Empresa = @Empresa AND Producto = 'MYSQL' AND Proceso = 'INTERFAZ SOLICITUD PUNTOS'
      --   SELECT @ServidorBaseTabla = 'SELECT SESITARJ FROM ' + @Servidor + '...' + @TablaVinculada + ' WHERE Soc_act = ' + CHAR(39)+ ISNULL(@Membresia,'') + CHAR(39) + ' AND Sub_act = ' + CHAR(39)+ ISNULL(@SufijosSocios,'') + CHAR(39)
      --   INSERT INTO #ExisteDatoTabVin
      --   EXEC(@ServidorBaseTabla)    
	     IF @Accion = 'AFECTAR'
         BEGIN --- A F E C T A R                      
           ----------------------------------------------------------
           IF @Estatus = 'CONCLUIDO' AND ISNULL(@Membresia,'') <> ''
           BEGIN --- C O N C L U I D O             
             IF NOT EXISTS (SELECT * FROM CDIPuntos WHERE Mov = @Mov AND MovID = @MovID) 
               INSERT INTO CDIPuntos (Empresa, Mov, MovID, ClaveSocio,Membresia, SubSocio,      FechaMovimiento,Puntos)
               VALUES                (@Empresa,@Mov,@MovID,@Socio,    @Membresia,@SufijosSocios,@FechaEmision,  @Cantidad)                    
             --IF EXISTS(SELECT * FROM #ExisteDatoTabVin)    
             --BEGIN --- E X I S T E  C L I E N T E
               --SELECT @SESITARJ = ISNULL(SESITARJ,0) FROM #ExisteDatoTabVin
               --SELECT @SESITARJ = ISNULL(@SESITARJ,0) + ISNULL(@Cantidad,0)
               --SELECT @ServidorBaseTablaUpdate = 'UPDATE ' + @Servidor +  '...' + @TablaVinculada + ' SET SESITARJ =' + CONVERT(varchar(20),@SESITARJ) + ', Fec_Pago = ' + CHAR(39) + CONVERT(varchar(10),@FechaEmision, 21) + CHAR(39) + ' WHERE Soc_act = ' + CHAR(39)+ ISNULL(@Membresia,'') + CHAR(39) + ' AND Sub_act = ' + CHAR(39)+ ISNULL(@SufijosSocios,'') + CHAR(39)
               --EXEC(@ServidorBaseTablaUpdate)    
             --END   --- E X I S T E  C L I E N T E 
             --ELSE
             --BEGIN
             --  SELECT @ServidorBaseTablaInsert = 'INSERT INTO ' + @Servidor +  '...' +  @TablaVinculada + ' (Soc_act,Sub_act,Fec_Pago,SESITARJ,SESIUTI) VALUES ('+ CHAR(39)+ ISNULL(@Membresia,'') + CHAR(39) + ',' + CHAR(39) + ISNULL(@SufijosSocios,'') + CHAR(39) + ',' + CHAR(39) + CONVERT(varchar(10),@FechaEmision, 21) + CHAR(39) + ',' + CONVERT(varchar(20),@Cantidad) + ',' + CONVERT(varchar(20),0) + ')'
             --  EXEC(@ServidorBaseTablaInsert)    
             --END  
           END   --- C O N C L U I D O
         END   --- A F E C T A R
         ----------------------------------------------------------
         IF @Accion = 'CANCELAR'
         BEGIN --- C A N C E L A R
           IF @Estatus = 'CANCELADO' AND ISNULL(@Membresia,'') <> ''
           BEGIN --- C A N C E L A D O
             DELETE FROM CDIPuntos WHERE Empresa = @Empresa AND Mov = @Mov AND MovID = @MovID
             --SELECT @SESITARJ = ISNULL(SESITARJ,0) FROM #ExisteDatoTabVin
             --SELECT @SESITARJ = ISNULL(@SESITARJ,0) - ISNULL(@Cantidad,0)
             --SELECT @ServidorBaseTablaUpdate = 'UPDATE ' + @Servidor +  '...' + @TablaVinculada + ' SET SESITARJ =' + CONVERT(varchar(20),@SESITARJ) + ', Fec_Pago = ' + CHAR(39) + CONVERT(varchar(10),@FechaEmision, 21) + CHAR(39) + ' WHERE Soc_act = ' + CHAR(39)+ ISNULL(@Membresia,'') + CHAR(39) + ' AND Sub_act = ' + CHAR(39)+ ISNULL(@SufijosSocios,'') + CHAR(39)
             --EXEC(@ServidorBaseTablaUpdate)     
           END   --- C A N C E L A D O
         END   --- C A N C E L A R
       --END   --- I N T E R F A Z  
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

