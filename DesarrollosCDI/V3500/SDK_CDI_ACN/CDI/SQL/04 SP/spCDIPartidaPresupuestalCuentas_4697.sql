SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

-------------------------------------------
--- Desarrollo. PARTIDAS PRESUPUESTALES ---
--- Cliente   . CDI                     ---
--- Folio     . 4697                    ---
--- Fecha     . 21 / 10 / 10            ---
--- Autor     . EDER MENDOZA            ---
-------------------------------------------   
---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 25641) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (25641,	'Falta Indicar Descripción de la Clave Presupuestal',	'ERROR',	0)		
GO

---- M E N S A J E  E R R O R
IF NOT EXISTS(SELECT * FROM MensajeLista WHERE Mensaje = 25642) INSERT INTO MensajeLista (Mensaje,	Descripcion,		Tipo,		IE)
																VALUES					 (25642,	'La Clave Presupuestal, ya Existe',	'ERROR',	0)		
GO


---------------------------------------------------------
---- S P C D I C P E S T R U C T U R A I N S E R T  -----
---------------------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Id = Object_id('dbo.spCDICPEstructuraInsert') AND Type = 'P') DROP PROCEDURE dbo.spCDICPEstructuraInsert
GO
CREATE PROCEDURE spCDICPEstructuraInsert
                    @EstacionTrabajo int 
AS BEGIN   
   DECLARE  @IDMin				int,
            @IDMax				int, 
            @ClavePresupuestal	varchar(20),
			@Descripcion		varchar(100),
			@OK					int,
			@Alta				datetime
  
   CREATE TABLE #CDICP
   (	
    ID						int	IDENTITY(1,1) NOT NULL,	
    ClavePresupuestal		varchar(20) 	NOT NULL,
    Descripcion				varchar(100)    NOT NULL,
   )

   INSERT INTO #CDICP (ClavePresupuestal, Descripcion)
   SELECT              ClavePresupuestal, Descripcion FROM CDICPEstructura WHERE Estacion =  @EstacionTrabajo
   
   IF EXISTS(SELECT * FROM #CDICP)
   BEGIN
     SELECT @IDMin = 0, @IDMax = 0, @OK = 0
     SELECT @IDMax = MAX(ISNULL(ID,0)) FROM #CDICP 
     SELECT @IDMin = MIN(ISNULL(ID,0)) FROM #CDICP 
     WHILE(@IDMax >= @IDMin AND @OK = 0)
     BEGIN --- V A L I D A
       SELECT @ClavePresupuestal = '',                @Descripcion = ''
       SELECT @ClavePresupuestal = ClavePresupuestal, @Descripcion = Descripcion FROM #CDICP WHERE ID = @IDMin     
     
       IF ISNULL(@ClavePresupuestal,'') <> ''      
       BEGIN --- C L A V E     
         IF ISNULL(@Descripcion,'') <> ''      
         BEGIN --- D E S C R I P C I O N
           IF NOT EXISTS (SELECT * FROM ClavePresupuestal WHERE ClavePresupuestal = @ClavePresupuestal)
           BEGIN --- C L A V E  N U E V A
             SELECT @OK = 0
           END   --- C L A V E  N U E V A
           ELSE  --- C L A V E  R E P E T I D A
             SET @OK = 25642 
         END   --- D E S C R I P C I O N
         ELSE  --- S I N D E S C R I P C I O N  
          SET @OK = 25641
       END   --- C L A V E
       ELSE  --- S I N  C L A V E
         SET @OK = 25640
       SELECT @IDMin = @IDMin + 1
     END   --- V A L I D A
  
     IF @OK = 0
     BEGIN --- S I N   E R R O R 
       SELECT @IDMin = 0, @IDMax = 0, @Alta = GETDATE()
       SELECT @IDMax = MAX(ISNULL(ID,0)) FROM #CDICP 
       SELECT @IDMin = MIN(ISNULL(ID,0)) FROM #CDICP 
       WHILE(@IDMax >= @IDMin AND @OK = 0)
       BEGIN --- C L A V E 
         SELECT @ClavePresupuestal = '',                @Descripcion = ''
         SELECT @ClavePresupuestal = ClavePresupuestal, @Descripcion = Descripcion FROM #CDICP WHERE ID = @IDMin     
         INSERT INTO ClavePresupuestal(ClavePresupuestal, Rama,Descripcion, Estatus,EsAcumulativa,Alta)
         VALUES                       (@ClavePresupuestal,NULL,@Descripcion,'ALTA', 1, @Alta)       
         
         DELETE FROM CDICPEstructura WHERE @ClavePresupuestal = ClavePresupuestal AND Estacion =  @EstacionTrabajo           
         SELECT @IDMin = @IDMin + 1
       END   --- C L A V E 
     END  --- S I N   E R R O R    
   END  ---
   ELSE SELECT @OK = 10380 

   SELECT @OK 
RETURN
END
GO

--SELECT * FROM MensajeLista WHERE DESCRIPCION LIKE ('%rama%')


---------------------------------------------------------
---- S P C D I C P E S T R U C T U R A D E L E T E  -----
---------------------------------------------------------
IF EXISTS (SELECT * FROM Sysobjects WHERE Id = Object_id('dbo.spCDICPEstructuraDelete') AND Type = 'P') DROP PROCEDURE dbo.spCDICPEstructuraDelete
GO
CREATE PROCEDURE spCDICPEstructuraDelete
                    @EstacionTrabajo int 
AS BEGIN   
   DELETE FROM CDICPEstructura WHERE Estacion =  @EstacionTrabajo               
RETURN
END
GO



