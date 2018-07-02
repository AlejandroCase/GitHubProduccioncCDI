SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. INTEGRACION PARTIDA PRESUPUESTAL
  -- Cliente   . CDI
  -- Folio     . 4925
  -- Fecha     . 09 / 02 / 11
  -- Autor     . EDER MENDOZA

		
---------------------------------------------------------------------------------
-------- S P C D I R E P I N T E G R A C I O N P A R T I D A P R E S ------------
---------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepIntegracionPartidaPres') AND type = 'P') DROP PROCEDURE dbo.spCDIRepIntegracionPartidaPres
GO

CREATE PROCEDURE spCDIRepIntegracionPartidaPres
    	  @Empresa				varchar(5),		  
		  @Proyecto				varchar(50),  
   		  @Ejercicio			int,
		  @ClavePresupuestal	varchar(50) 
AS
BEGIN   

  CREATE TABLE #IntegracionPresupuesto          
  (           
   ID     int IDENTITY(1,1) NOT NULL,              
   OrigenTipo   varchar(20),          
   Origen    varchar(20),          
   OrigenID    varchar(20),             
   Aplica    varchar(20),          
   AplicaID    varchar(20),          
   EmpresaCDI   varchar(5),              
   Importe    money        NULL,            
   Transpaso   money        NULL,            
   Comprometido   money        NULL,      
   Comprometido2 MONEY NULL,          
   Devengado   money        NULL,          
   Ejercido    money        NULL,            
 Sobrante    money   null,     
 Sobrante2   MONEY  NULL,    
 Sobrante3 MONEY NULL,  
 Sobrante4	MONEY NULL,
 Remanente   money   null,          
   Disponible   money        NULL,       
   DiponibleMensual MONEY,         
   Ejercicio   int          NULL,          
   Periodo    int          NULL,            
   ClavePresupuestal    varchar(50)  NULL,          
   DescripcionClave  varchar(100) NULL,           
   DescripcionProy  varchar(100) NULL,           
   Comite    varchar(50)  NULL,          
   Orden    int          NULL,               
   SubTotal    varchar(20)  NULL          
   )          
          
  DECLARE  @OrigenTipo varchar(20),          
           @Origen3     varchar(20),    
           @Origen4  varchar(20),    
           @SubTotal1 varchar(20),          
           @SubTotal2 varchar(20),          
           @SubTotal3 varchar(20),          
           @SubTotal4 varchar(20),          
           @SubTotal5 varchar(20),          
           @SubTotal6 varchar(20),          
           @SubTotal7   varchar(20),          
           @SubTotal8 varchar(20) ,      
           @SubTotal9 VARCHAR (20) ,    
           @SubTotal10 VARCHAR (20),    
           @SubTotal11 VARCHAR (20),  
           @SubTotal12 VARCHAR (20) ,
           @SubTotal13 VARCHAR(20)
               
               
          
  SELECT @OrigenTipo = 'GAS',         @Origen3   = 'Disponible',@Origen4   = 'Disponible Mensual'            
  SELECT @SubTotal1  = 'Presupuesto', @SubTotal2 = 'Transpasos', @SubTotal3 = 'Comprometido',           
         @SubTotal4  = 'Devengado',   @SubTotal5 = 'Ejercido',   @SubTotal6 = 'Disponible',          
         @SubTotal7  = 'Sobrante',   @SubTotal8 = 'Remanente', @SubTotal9='DisponibleMensual'  ,@SubTotal10='Sobrante2',    
         @SubTotal11='Comprometido2', @SubTotal12=  'Sobrante3'  , @Subtotal13='Sobrante4'      
          
  IF @Proyecto          IS NULL OR @Proyecto = ' '          OR @Proyecto          = 'NULL' OR @Proyecto = 'Todo'          OR @Proyecto = 'Todos'          OR @Proyecto = '(Todos)'           SELECT @Proyecto = NULL           
  IF @ClavePresupuestal IS NULL OR @ClavePresupuestal = ' ' OR @ClavePresupuestal = 'NULL' OR @ClavePresupuestal = 'Todo' OR @ClavePresupuestal = 'Todos' OR @ClavePresupuestal = '(Todos)'  SELECT @ClavePresupuestal = NULL           
          
         
          
          
  INSERT INTO #IntegracionPresupuesto          
  -- I M P O R T E          
  SELECT @OrigenTipo,   C.Mov,  C.MovID,                   '',             '',            UPPER(C.Empresa),           
         ISNULL(CPC.Importe,0) * MT1.Factor AS Importe1,           
         0.00                               AS Transpaso1,           
         0.00                               AS Comprometido1,     
         0.00                               AS Comprometido2,           
         0.00                               AS Devengado1,           
         0.00                               AS Ejercido1,           
         0.00           AS Sobrante1,    
         0.00                               AS Sobrante2,      
          0.00                               AS Sobrante3, 
          0.00								AS Sobrante4,             
         0.00        AS Remanente1,          
         0.00                               AS Disponible1,      
         0.00        AS DisponimbleM,           
         CPC.Ejercicio, CPC.Periodo, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,''), 1, @SubTotal1          
    FROM CP C          
   INNER JOIN CPD CD                ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1           ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.AS' AND MT1.Mov = C.Mov          
   INNER JOIN CPCAL CPC             ON CPC.ID = C.ID AND CPC.ClavePresupuestal = CD.ClavePresupuestal AND CPC.Ejercicio = C.Ejercicio            
   INNER JOIN ClavePresupuestal Cl  ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P                ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa                      = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')
     AND CD.Tipo						= 'Ampliacion'
     UNION ALL
   SELECT @OrigenTipo,   C.Mov,  C.MovID,                   '',             '',            UPPER(C.Empresa),           
         ISNULL(CPC.Importe,0) * MT1.Factor * -1 AS Importe1,           
         0.00                               AS Transpaso1,           
         0.00                               AS Comprometido1,     
         0.00                               AS Comprometido2,           
         0.00                               AS Devengado1,           
         0.00                               AS Ejercido1,           
         0.00           AS Sobrante1,    
         0.00                               AS Sobrante2,      
          0.00                               AS Sobrante3, 
          0.00								AS Sobrante4,             
         0.00        AS Remanente1,          
         0.00                               AS Disponible1,      
         0.00        AS DisponimbleM,           
         CPC.Ejercicio, CPC.Periodo, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,''), 1, @SubTotal1          
    FROM CP C          
   INNER JOIN CPD CD                ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1           ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.AS' AND MT1.Mov = C.Mov          
   INNER JOIN CPCAL CPC             ON CPC.ID = C.ID AND CPC.ClavePresupuestal = CD.ClavePresupuestal AND CPC.Ejercicio = C.Ejercicio            
   INNER JOIN ClavePresupuestal Cl  ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P                ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa                      = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')
     AND CD.Tipo						= 'Reduccion'  
                     
   UNION ALL          
  -- T R A N S P A S O          
  SELECT '',    C.Mov,       C.MovID,                 '',  '',            UPPER(C.Empresa),           
         0.00                               AS Importe1,           
         CASE CPC.Tipo WHEN 'Reduccion' THEN ISNULL(CPC.Importe,0) * MT1.Factor * -1 ELSE ISNULL(CPC.Importe,0) * MT1.Factor END AS Transpaso1,                   
         0.00                               AS Comprometido1,    
         0.00                               AS Comprometido2,           
         0.00                               AS Devengado1,           
         0.00                               AS Ejercido1,           
         0.00        AS Sobrante1,       
         0.00          AS Sobrante2,       
         0.00                               AS Sobrante3, 
         0.00								AS Sobrante4, 
         0.00         AS Remanente1,          
         0.00                               AS Disponible1,        
         0.00         AS DisponimbleM,         
         CPC.Ejercicio, CPC.Periodo, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,''), 2, @SubTotal2          
    FROM CP C          
   INNER JOIN CPD CD          
      ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1          
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.TA' AND MT1.Mov = C.Mov          
   INNER JOIN CPCAL CPC          
      ON CPC.ID = C.ID AND CPC.ClavePresupuestal = CD.ClavePresupuestal AND CPC.Ejercicio = C.Ejercicio AND CPC.Tipo = CD.Tipo            
   INNER JOIN ClavePresupuestal Cl          
      ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P          
      ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa                      = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
   UNION ALL          
   -- R E M A N E N T E        
    SELECT '', C.Mov,       C.MovID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), UPPER(C.Empresa),           
         0.00           AS Importe1,          
         0.00           AS Transpaso1,          
         0.00           AS Comprometido1,      
         0.00                               AS Comprometido2,        
         0.00           AS Devengado1,           
         0.00           AS Ejercido1,           
         0.00           AS Sobrante1,      
          0.00        AS Sobrante2,      
          0.00                               AS Sobrante3,  
          0.00								AS Sobrante4,      
         ISNULL(CD.RemanenteDisponible,0) * MT1.Factor  AS Remanente1,          
         0.00           AS Disponible1,            
         0.00        AS DisponimbleM,      
         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 3, @SubTotal8          
    FROM CP C          
   INNER JOIN CPD CD          
      ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1          
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov          
   INNER JOIN ClavePresupuestal Cl          
     ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P          
      ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa      = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
     AND ISNULL(CD.RemanenteDisponible,0)      <> 0           
           
       UNION ALL    
       
       
       
  -- C O M P R O M E T I D O          
  SELECT C.OrigenTipo, C.Origen,  C.OrigenID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), UPPER(C.Empresa),           
         0.00                                   AS Importe1,          
         0.00                                   AS Transpaso1,          
         ISNULL(CD.Comprometido,0) * MT1.Factor AS Comprometido1,      
         0.00                               AS Comprometido2,        
         0.00                                   AS Devengado1,           
         0.00                                   AS Ejercido1,           
         0.00         AS Sobrante1,      
         0.00          AS Sobrante2,    
         0.00                               AS Sobrante3,    
         0.00								AS Sobrante4,  
         0.00          AS Remanente1,          
         0.00                                   AS Disponible1,      
         0.00         AS DisponimbleM,            
         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 4, @SubTotal3          
    FROM CP C          
   INNER JOIN CPD CD          
      ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1          
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov          
   INNER JOIN ClavePresupuestal Cl          
      ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P          
      ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa                      = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
     AND ISNULL(CD.Comprometido,0)      > 0    
     --AND C.Origen NOT IN ('Cargo por Aj. Provee','Solicitud Cargo')       
   UNION ALL          
       
       
   -- C O M P R O M E T I D O    2      
  --SELECT C.OrigenTipo, C.Origen,  C.OrigenID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), UPPER(C.Empresa),           
  --       0.00                                   AS Importe1,          
  --       0.00                                   AS Transpaso1,          
  --       0.00                                   AS Comprometido1,    
  --       ISNULL(CD.Comprometido2,0) * MT1.Factor AS Comprometido2,           
  --       0.00                                   AS Devengado1,           
  --       0.00                                   AS Ejercido1,           
  --       0.00         AS Sobrante1,      
  --       0.00          AS Sobrante2,       
  --       0.00                               AS Sobrante3,  
  --       0.00								AS Sobrante4, 
  --       0.00          AS Remanente1,          
  --       0.00                                   AS Disponible1,      
  --       0.00         AS DisponimbleM,            
  --       C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 5, @SubTotal11         
  --  FROM CP C          
  -- INNER JOIN CPD CD                ON CD.ID = C.ID           
  -- INNER JOIN MovTipo MT1          
  --    ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov          
  -- INNER JOIN ClavePresupuestal Cl          
  --    ON CL.ClavePresupuestal = CD.ClavePresupuestal          
  -- INNER JOIN Proy P          
  --    ON P.Proyecto = C.Proyecto          
  -- WHERE C.Estatus                      = 'CONCLUIDO'          
  --   AND C.Empresa                      = @Empresa          
  --   AND C.Ejercicio                    = @Ejercicio               
  --   AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
  --   AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
  --   AND ISNULL(CD.Comprometido2,0)      > 0           
  --   AND C.Origen='Cargo por Aj. Provee'    
  -- UNION ALL          
      
       
       
  -- D E V E N G A D O          
  SELECT C.OrigenTipo, C.Origen,  C.OrigenID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), UPPER(C.Empresa),           
         0.00                                AS Importe1,          
         0.00                                AS Transpaso1,           
         0.00                                AS Comprometido1,    
         0.00                               AS Comprometido2,          
         ISNULL(CD.Devengado,0) * MT1.Factor AS Devengado1,           
   0.00                                AS Ejercido1,           
         0.00         AS Sobrante1,      
         0.00          AS Sobrante2,    
         0.00                               AS Sobrante3, 
         0.00								AS Sobrante4,     
         0.00             AS Remanente1,          
         0.00                                AS Disponible1,       
         0.00          AS DisponimbleM,           
         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 6, @SubTotal4          
    FROM CP C          
   INNER JOIN CPD CD          
      ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1          
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov          
   INNER JOIN ClavePresupuestal Cl          
      ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P          
      ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa                      = @Empresa          
     AND C.Ejercicio = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
     AND ISNULL(CD.Devengado,0)         > 0           
   UNION ALL          
  -- E J E R C I D O          
  SELECT C.OrigenTipo, C.Origen,  C.OrigenID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), UPPER(C.Empresa),           
         0.00                               AS Importe1,          
         0.00                               AS Transpaso1,          
         0.00                               AS Comprometido1,     
         0.00                               AS Comprometido2,         
         0.00                               AS Devengado1,           
         ISNULL(CD.Ejercido,0) * MT1.Factor AS Ejercido1,          
         0.00           AS Sobrante1,     
         0.00          AS Sobrante2,    
         0.00                               AS Sobrante3,   
         0.00								AS Sobrante4,   
                  
         0.00          AS Remanente1,           
         0.00                               AS Disponible1,         
         0.00        AS DisponimbleM,         
         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 7, @SubTotal5          
    FROM CP C          
   INNER JOIN CPD CD          
      ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1          
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov          
   INNER JOIN ClavePresupuestal Cl          
 ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P          
      ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa                      = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
     AND ISNULL(CD.Ejercido,0)          <> 0           
  UNION ALL          
          
          
-- S O B R A N T E           
  SELECT '', C.Mov,       C.MovID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), UPPER(C.Empresa),           
         0.00                                   AS Importe1,          
         0.00                                   AS Transpaso1,          
         0.00              AS Comprometido1,     
         0.00                               AS Comprometido2,         
         0.00                                   AS Devengado1,     
         0.00                                   AS Ejercido1,           
         ISNULL(CD.Sobrante,0) * MT1.Factor  AS Sobrante1,      
         0.00           AS Sobrante2,      
         0.00                               AS Sobrante3,    
                 0.00								AS Sobrante4,
         0.00          AS Remanente1,          
         0.00                                   AS Disponible1,         
         0.00           AS DisponimbleM,         
         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 10, @SubTotal7          
    FROM CP C          
   INNER JOIN CPD CD          
      ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1          
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov          
   INNER JOIN ClavePresupuestal Cl          
      ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P          
      ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa             = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
     AND ISNULL(CD.Sobrante,0)     < > 0      
     --AND C.Mov   NOT IN ('Traspaso de Mes 13')         
   UNION ALL          
        -- S O B R A N T E    2       
  SELECT '', C.Mov,       C.MovID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), UPPER(C.Empresa),           
         0.00                                   AS Importe1,          
         0.00                                   AS Transpaso1,          
         0.00          AS Comprometido1,     
         0.00                               AS Comprometido2,         
         0.00                                   AS Devengado1,           
         0.00                                   AS Ejercido1,    
         0.00           AS Sobrante1,        
                    
         ISNULL(CD.Sobrante,0) * MT1.Factor  AS Sobrante2,    
         0.00                               AS Sobrante3,    
          0.00								AS Sobrante4,               
         0.00         AS Remanente1,          
         0.00                                   AS Disponible1,         
         0.00        AS DisponimbleM,         
         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 11, @SubTotal10          
    FROM CP C          
   INNER JOIN CPD CD          
      ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1          
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov          
   INNER JOIN ClavePresupuestal Cl          
      ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P          
      ON P.Proyecto = C.Proyecto         
   WHERE   
   C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa             = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
     AND ISNULL(CD.Sobrante,0)     < > 0      
     AND C.Mov   NOT IN ('Traspaso de Mes 13','Ajuste Mes 13')        
       
       
     UNION ALL    
     -- S O B R A N T E    3       
  SELECT '', C.Mov,       C.MovID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), UPPER(C.Empresa),           
         0.00                                   AS Importe1,          
         0.00                                   AS Transpaso1,          
         0.00          AS Comprometido1,     
         0.00                               AS Comprometido2,         
         0.00                                   AS Devengado1,           
         0.00                                   AS Ejercido1,    
         0.00           AS Sobrante1,        
  0.00                               AS Sobrante2,                    
         ISNULL(CD.Sobrante,0) * MT1.Factor  AS Sobrante3,      
         0.00								AS Sobrante4,                
         0.00         AS Remanente1,          
         0.00                                   AS Disponible1,         
         0.00        AS DisponimbleM,         
         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 12,@SubTotal12       
    FROM CP C          
   INNER JOIN CPD CD          
      ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1          
      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov          
   INNER JOIN ClavePresupuestal Cl          
      ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P          
      ON P.Proyecto = C.Proyecto          
   WHERE     C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa             = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')           
     AND ISNULL(CD.Sobrante,0)      > 0      
     AND C.Mov    IN ('Ajuste Mes 13')       
       UNION ALL    
            -- S O B R A N T E    4      
 SELECT @OrigenTipo,   C.Mov,  C.MovID,                   '',             '',            UPPER(C.Empresa),           
         0.00								AS Importe1,           
         0.00                               AS Transpaso1,           
         0.00                               AS Comprometido1,     
         0.00                               AS Comprometido2,           
         0.00                               AS Devengado1,           
         0.00                               AS Ejercido1,           
         0.00								AS Sobrante1,    
         0.00                               AS Sobrante2,      
          0.00                               AS Sobrante3, 
          ISNULL(CPC.Importe,0) * -1 AS Sobrante4,             
         0.00        AS Remanente1,          
         0.00                               AS Disponible1,      
         0.00        AS DisponimbleM,           
         CPC.Ejercicio, DATEPART(mm,FechaEmision)  , CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,''), 10, @SubTotal13    
                       
    FROM CP C          
   INNER JOIN CPD CD                ON CD.ID = C.ID           
   INNER JOIN MovTipo MT1           ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.AS' AND MT1.Mov = C.Mov          
   INNER JOIN CPCAL CPC             ON CPC.ID = C.ID AND CPC.ClavePresupuestal = CD.ClavePresupuestal AND CPC.Ejercicio = C.Ejercicio            
   INNER JOIN ClavePresupuestal Cl  ON CL.ClavePresupuestal = CD.ClavePresupuestal          
   INNER JOIN Proy P                ON P.Proyecto = C.Proyecto          
   WHERE C.Estatus                      = 'CONCLUIDO'          
     AND C.Empresa                      = @Empresa          
     AND C.Ejercicio                    = @Ejercicio               
     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')                
     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'')
     AND CD.Tipo						= 'Ampliacion'   
     AND C.Mov   ='Cambio Proceso Mes13'
     
     
     
   -- D I S P O N I B L E          
  IF EXISTS(SELECT * FROM #IntegracionPresupuesto)          
    INSERT INTO #IntegracionPresupuesto           
    SELECT @OrigenTipo, @Origen3, '', '', '', @Empresa,          
     0.00                   AS Importe1,           
           0.00                   AS Transpaso1,          
           0.00                   AS Comprometido1,     
           0.00                               AS Comprometido2,          
           0.00                   AS Devengado1,           
           0.00                   AS Ejercido1,          
           0.00                   AS Sobrante1,     
                    0.00        AS Sobrante2,   
           0.00                               AS Sobrante3, 
           0.00					AS Sobrante4,             
     0.00                      AS Remanente1,           
           SUM((ISNULL(Importe,0) + ISNULL(Transpaso,0)) - ISNULL(Comprometido,0))   AS Disponible1,        
           0.00        AS DisponimbleM,        
           @Ejercicio, Periodo, ClavePresupuestal, DescripcionClave, DescripcionProy, Comite, 8, @SubTotal6          
      FROM #IntegracionPresupuesto              
     WHERE SubTotal IN (@SubTotal1,@SubTotal2,@SubTotal3)          
     GROUP BY Periodo, Comite, DescripcionProy, ClavePresupuestal, DescripcionClave          
     ORDER BY Periodo, Comite, DescripcionProy, ClavePresupuestal, DescripcionClave      
           
           
      -- D I S P O N I B L E    M E N S U A L         
  IF EXISTS(SELECT * FROM #IntegracionPresupuesto)          
    INSERT INTO #IntegracionPresupuesto           
    SELECT @OrigenTipo, @Origen4, '','','' ,@Empresa,          
     0.00                   AS Importe1,           
           0.00                   AS Transpaso1,          
           0.00                   AS Comprometido1,    
           0.00                               AS Comprometido2,           
           0.00                   AS Devengado1,           
           0.00                   AS Ejercido1,          
           0.00                   AS Sobrante1,      
           0.00        AS Sobrante2,       
                  0.00                               AS Sobrante3,  
                  0.00 AS Sobrante4,       
    0.00                      AS Remanente1,           
           0.00                    AS Disponible1,          
            SUM(ISNULL(Importe,0) + ISNULL(Transpaso,0)+ ISNULL(Remanente,0) - ISNULL(Comprometido,0) -ISNULL(Sobrante2,0)-ISNULL(Comprometido2,0)-ISNULL(Sobrante3,0) )  AS DisponimbleM,      
           @Ejercicio, Periodo, ClavePresupuestal, DescripcionClave, DescripcionProy, Comite,9, @SubTotal9         
      FROM #IntegracionPresupuesto              
    WHERE  SubTotal IN (@SubTotal1,@SubTotal2,@SubTotal8,@SubTotal3,@SubTotal10,@SubTotal11,@SubTotal12)          
     GROUP BY Periodo, Comite, DescripcionProy, ClavePresupuestal, DescripcionClave          
     ORDER BY Periodo, Comite, DescripcionProy, ClavePresupuestal, DescripcionClave                  
          

  SELECT Empresa1, ClavePresupuestal1, DescripcionClave1, Ejercicio1, Comite1, OrigenTipo1, Origen1, OrigenID1, Aplica1, AplicaID1,  Orden1, SubTotal1,                
         SUM(Enero)      AS EneroC,   SUM(Febrero) AS FebreroC, SUM(Marzo)    AS MarzoC,  SUM(Abril)     AS AbrilC,          
         SUM(Mayo)       AS MayoC,    SUM(Junio)   AS JunioC,   SUM(Julio)    AS JulioC,  SUM(Agosto)    AS AgostoC,          
         SUM(Septiembre) AS SeptiembreC, SUM(Octubre) AS OctubreC, SUM(Noviembre) AS NoviembreC, SUM(Diciembre) AS DiciembreC, SUM(Mes13) AS Mes13C          
    FROM      (-- I M P O R T E           
               SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
       Ejercicio   AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,          
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Importe FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal1) P          
             PIVOT          
              (SUM (Importe) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                           
          
                UNION ALL          
            -- T R A N S P A S O          
               SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,   
       Ejercicio   AS Ejercicio1,           
       OrigenTipo  AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
       AplicaID          AS AplicaID1,          
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Transpaso FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal2) P          
             PIVOT          
              (SUM (Transpaso) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                                           
          
                UNION ALL          
               -- C O M P R O M E T I D O          
               SELECT EmpresaCDI        AS Empresa1,                
     ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
                      Ejercicio         AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,            
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Comprometido FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal3 AND ISNULL(Comprometido, 0) > 0) P          
             PIVOT          
              (SUM (Comprometido) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                            
          
                UNION ALL          
                    
                -- C O M P R O M E T I D O      2    
               SELECT EmpresaCDI        AS Empresa1,                
     ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
                      Ejercicio         AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID     AS AplicaID1,            
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
      [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Comprometido2      FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal11 AND ISNULL(Comprometido2, 0) > 0) P          
             PIVOT          
              (SUM (Comprometido2) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                            
          
                UNION ALL          
                   
               -- D E V E N G A D O           
               SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
                      Ejercicio         AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,            
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
	   [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Devengado FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal4 AND  ISNULL(Devengado, 0)
  
    
      
        
 > 0) P          
             PIVOT          
              (SUM (Devengado) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                                           
          
                UNION ALL          
               -- S O B R A N T E          
               SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
                      Ejercicio         AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,            
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Sobrante FROM #IntegracionPresupuesto WHERE SubTotal in ( @SubTotal7 ,@SubTotal13) AND ISNULL(Sobrante, 0) <>
  
    
      
        
 0) P          
             PIVOT          
              (SUM (Sobrante) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                                                    
                UNION ALL          
                       
                       
                       ---  S O  B  R  A  N  T E  4
                       
                       SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
       Ejercicio   AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,          
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal13,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Sobrante4 FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal13) P          
             PIVOT          
              (SUM (Sobrante4) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                           
          
                UNION ALL   
                         
               -- R E M A N E N T E          
               SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
                      Ejercicio         AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,            
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Remanente FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal8 AND ISNULL(Remanente, 0) 
  
    
      
<> 0) P          
             PIVOT          
              (SUM (Remanente) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                                                    
                UNION ALL          
                         
               -- E J E R C I D O          
               SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
                      Ejercicio   AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,            
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Ejercido FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal5 AND ISNULL(Ejercido, 0) > 
  
    
      
0) P          
             PIVOT          
              (SUM (Ejercido) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT                                                    
                UNION ALL          
                         
       
               -- D I S P O N I B L E           
               SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
                      Ejercicio         AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,            
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Disponible FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal6) P          
             PIVOT          
              (SUM (Disponible) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT          
        UNION ALL        
                    
              -- D I S P O N I B L E  M E N S U A L         
               SELECT EmpresaCDI        AS Empresa1,                
       ClavePresupuestal AS ClavePresupuestal1,          
                      DescripcionClave  AS DescripcionClave1,             
                      Comite   AS Comite1,          
                      Ejercicio         AS Ejercicio1,           
       OrigenTipo        AS OrigenTipo1,           
                      Origen            AS Origen1,            
                      OrigenID          AS OrigenID1,           
                      Aplica            AS Aplica1,           
                      AplicaID          AS AplicaID1,            
                      Orden             AS Orden1,          
                      SubTotal          AS SubTotal1,          
       [1]  AS Enero,            
       [2]  AS Febrero,           
       [3]  AS Marzo,            
       [4]  AS Abril,            
       [5]  AS Mayo,            
       [6]  AS Junio,            
       [7]  AS Julio,          
       [8]  AS Agosto,          
       [9]  AS Septiembre,          
       [10] AS Octubre,            
       [11] AS Noviembre,          
       [12] AS Diciembre,  
       [13] AS Mes13          
                 FROM           
           (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, DiponibleMensual             FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal9) P    
  
    
      
             PIVOT          
              (SUM (DiponibleMensual) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13] )) AS PVT)      
                    
                    
   IntegracionPresupuesto          
   GROUP BY Empresa1, Ejercicio1, Comite1, ClavePresupuestal1, DescripcionClave1, Orden1, SubTotal1, OrigenTipo1, Origen1, OrigenID1, Aplica1, AplicaID1            
   ORDER BY Empresa1, Ejercicio1, Comite1, ClavePresupuestal1, Orden1          

          
          
        
RETURN           
END       

GO      
--EXEC spCDIRepIntegracionPartidaPres 'cdi','','2011','517-000-026-000-000'      
--EXEC spCDIRepIntegracionPartidaPres 'CDI','','2011','507-000-060-000-000' 




---------------------------------------------------------------------------------
------------------------ S P      O R I G I N A L -------------------------------
---------------------------------------------------------------------------------


--  CREATE TABLE #IntegracionPresupuesto
--  (	
--   ID					int	IDENTITY(1,1) NOT NULL,	   
--   OrigenTipo			varchar(20),
--   Origen				varchar(20),
--   OrigenID				varchar(20),   
--   Aplica				varchar(20),
--   AplicaID				varchar(20),
--   EmpresaCDI			varchar(5),	   
--   Importe				money        NULL,  
--   Transpaso			money        NULL,  
--   Comprometido			money        NULL,  
--   Devengado			money        NULL,
--   Ejercido				money        NULL, 	
--   Disponible			money        NULL,
--   Ejercicio			int          NULL,
--   Periodo				int          NULL,	 
--   ClavePresupuestal    varchar(50)  NULL,
--   DescripcionClave		varchar(100) NULL,	
--   DescripcionProy		varchar(100) NULL,	
--   Comite				varchar(50)  NULL,
--   Orden				int          NULL,   	 
--   SubTotal				varchar(20)  NULL
--   )

--  DECLARE  @OrigenTipo	varchar(20),
--           @Origen3	    varchar(20),
--           @SubTotal1	varchar(20),
--           @SubTotal2	varchar(20),
--           @SubTotal3	varchar(20),
--           @SubTotal4	varchar(20),
--           @SubTotal5	varchar(20),
--           @SubTotal6	varchar(20)  

--  SELECT @OrigenTipo = 'GAS',         @Origen3   = 'Disponible'
--  SELECT @SubTotal1  = 'Presupuesto', @SubTotal2 = 'Transpasos', @SubTotal3 = 'Comprometido', 
--         @SubTotal4  = 'Devengado',   @SubTotal5 = 'Ejercido',   @SubTotal6 = 'Disponible'

--  IF @Proyecto          IS NULL OR @Proyecto = ' '          OR @Proyecto          = 'NULL' OR @Proyecto = 'Todo'          OR @Proyecto = 'Todos'          OR @Proyecto = '(Todos)'           SELECT @Proyecto = NULL 
--  IF @ClavePresupuestal IS NULL OR @ClavePresupuestal = ' ' OR @ClavePresupuestal = 'NULL' OR @ClavePresupuestal = 'Todo' OR @ClavePresupuestal = 'Todos' OR @ClavePresupuestal = '(Todos)'  SELECT @ClavePresupuestal = NULL 


--  INSERT INTO #IntegracionPresupuesto
--  -- I M P O R T E
--  SELECT @OrigenTipo,   C.Mov,       '',                   '',             '',            C.Empresa, 
--         ISNULL(CPC.Importe,0) * MT1.Factor AS Importe1, 
--         0.00                               AS Transpaso1, 
--         0.00                               AS Comprometido1, 
--         0.00                               AS Devengado1, 
--         0.00                               AS Ejercido1, 
--         0.00                               AS Disponible1, 
--         CPC.Ejercicio, CPC.Periodo, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,''), 1, @SubTotal1
--    FROM CP C
--   INNER JOIN CPD CD
--      ON CD.ID = C.ID 
--   INNER JOIN MovTipo MT1
--      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.AS' AND MT1.Mov = C.Mov
--   INNER JOIN CPCAL CPC
--      ON CPC.ID = C.ID AND CPC.ClavePresupuestal = CD.ClavePresupuestal AND CPC.Ejercicio = C.Ejercicio  
--   INNER JOIN ClavePresupuestal Cl
--      ON CL.ClavePresupuestal = CD.ClavePresupuestal
--   INNER JOIN Proy P
--      ON P.Proyecto = C.Proyecto
--   WHERE C.Estatus                      = 'CONCLUIDO'
--     AND C.Empresa                      = @Empresa
--     AND C.Ejercicio                    = @Ejercicio     
--     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')      
--     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'') 
--   UNION ALL
--  -- T R A N S P A S O
--  SELECT '',    C.Mov,       C.MovID,                 '',             '',            C.Empresa, 
--         0.00                               AS Importe1, 
--         CASE CPC.Tipo WHEN 'Reduccion' THEN ISNULL(CPC.Importe,0) * MT1.Factor * -1 ELSE ISNULL(CPC.Importe,0) * MT1.Factor END AS Transpaso1,         
--         0.00                               AS Comprometido1, 
--         0.00                               AS Devengado1, 
--         0.00                               AS Ejercido1, 
--         0.00                               AS Disponible1, 
--         CPC.Ejercicio, CPC.Periodo, CD.ClavePresupuestal, Cl.Descripcion, P.Descripcion, ISNULL(C.Proyecto,''), 2, @SubTotal2
--    FROM CP C
--   INNER JOIN CPD CD
--      ON CD.ID = C.ID 
--   INNER JOIN MovTipo MT1
--      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.TA' AND MT1.Mov = C.Mov
--   INNER JOIN CPCAL CPC
--      ON CPC.ID = C.ID AND CPC.ClavePresupuestal = CD.ClavePresupuestal AND CPC.Ejercicio = C.Ejercicio AND CPC.Tipo = CD.Tipo  
--   INNER JOIN ClavePresupuestal Cl
--      ON CL.ClavePresupuestal = CD.ClavePresupuestal
--   INNER JOIN Proy P
--      ON P.Proyecto = C.Proyecto
--   WHERE C.Estatus                      = 'CONCLUIDO'
--     AND C.Empresa                      = @Empresa
--     AND C.Ejercicio                    = @Ejercicio     
--     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')      
--     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'') 
--   UNION ALL
--  -- C O M P R O M E T I D O
--  SELECT C.OrigenTipo, C.Origen,  C.OrigenID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), C.Empresa, 
--         0.00                                   AS Importe1,
--         0.00                                   AS Transpaso1,
--         ISNULL(CD.Comprometido,0) * MT1.Factor AS Comprometido1,
--         0.00                                   AS Devengado1, 
--         0.00                                   AS Ejercido1, 
--         0.00                                   AS Disponible1,  
--         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 3, @SubTotal3
--    FROM CP C
--   INNER JOIN CPD CD
--      ON CD.ID = C.ID 
--   INNER JOIN MovTipo MT1
--      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov
--   INNER JOIN ClavePresupuestal Cl
--      ON CL.ClavePresupuestal = CD.ClavePresupuestal
--   INNER JOIN Proy P
--      ON P.Proyecto = C.Proyecto
--   WHERE C.Estatus                      = 'CONCLUIDO'
--     AND C.Empresa                      = @Empresa
--     AND C.Ejercicio                    = @Ejercicio     
--     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')      
--     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'') 
--     AND ISNULL(CD.Comprometido,0)      > 0 
--   UNION ALL
--  -- D E V E N G A D O
--  SELECT C.OrigenTipo, C.Origen,  C.OrigenID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), C.Empresa, 
--         0.00                                AS Importe1,
--         0.00                                AS Transpaso1, 
--         0.00                                AS Comprometido1,
--         ISNULL(CD.Devengado,0) * MT1.Factor AS Devengado1, 
--         0.00                                AS Ejercido1, 
--         0.00                                AS Disponible1,  
--         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 4, @SubTotal4
--    FROM CP C
--   INNER JOIN CPD CD
--      ON CD.ID = C.ID 
--   INNER JOIN MovTipo MT1
--      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov
--   INNER JOIN ClavePresupuestal Cl
--      ON CL.ClavePresupuestal = CD.ClavePresupuestal
--   INNER JOIN Proy P
--      ON P.Proyecto = C.Proyecto
--   WHERE C.Estatus                      = 'CONCLUIDO'
--     AND C.Empresa                      = @Empresa
--     AND C.Ejercicio                    = @Ejercicio     
--     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')      
--     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'') 
--     AND ISNULL(CD.Devengado,0)         > 0 
--   UNION ALL
--  -- E J E R C I D O
--  SELECT C.OrigenTipo, C.Origen,  C.OrigenID,           ISNULL(CD.Aplica,''), ISNULL(CD.AplicaID,''), C.Empresa, 
--         0.00                               AS Importe1,
--         0.00                               AS Transpaso1,
--         0.00                               AS Comprometido1,
--         0.00                               AS Devengado1, 
--         ISNULL(CD.Ejercido,0) * MT1.Factor AS Ejercido1, 
--         0.00                               AS Disponible1,  
--         C.Ejercicio,  C.Periodo, CD.ClavePresupuestal, Cl.Descripcion,       P.Descripcion,          ISNULL(C.Proyecto,''), 5, @SubTotal5
--    FROM CP C
--   INNER JOIN CPD CD
--      ON CD.ID = C.ID 
--   INNER JOIN MovTipo MT1
--      ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov
--   INNER JOIN ClavePresupuestal Cl
--      ON CL.ClavePresupuestal = CD.ClavePresupuestal
--   INNER JOIN Proy P
--      ON P.Proyecto = C.Proyecto
--   WHERE C.Estatus                      = 'CONCLUIDO'
--     AND C.Empresa                      = @Empresa
--     AND C.Ejercicio                    = @Ejercicio     
--     AND ISNULL(C.Proyecto,'')          = ISNULL(ISNULL(@Proyecto,C.Proyecto),'')      
--     AND ISNULL(CD.ClavePresupuestal,'')= ISNULL(ISNULL(@ClavePresupuestal,CD.ClavePresupuestal),'') 
--     AND ISNULL(CD.Ejercido,0)          > 0 

--   -- D I S P O N I B L E
--  IF EXISTS(SELECT * FROM #IntegracionPresupuesto)
--    INSERT INTO #IntegracionPresupuesto 
--    SELECT @OrigenTipo, @Origen3, '', '', '', @Empresa,
--           0.00 AS Importe1, 
--           0.00 AS Transpaso1,
--           0.00 AS Comprometido1, 
--           0.00 AS Devengado1, 
--           0.00 AS Ejercido1,
--           SUM((ISNULL(Importe,0) + ISNULL(Transpaso,0)) - ISNULL(Comprometido,0)) AS Disponible1,
--           @Ejercicio, Periodo, ClavePresupuestal, DescripcionClave, DescripcionProy, Comite, 6, @SubTotal6
--      FROM #IntegracionPresupuesto    
--     WHERE SubTotal IN (@SubTotal1,@SubTotal2,@SubTotal3)
--     GROUP BY Periodo, Comite, DescripcionProy, ClavePresupuestal, DescripcionClave
--     ORDER BY Periodo, Comite, DescripcionProy, ClavePresupuestal, DescripcionClave         

--  --SELECT * FROM #IntegracionPresupuesto ORDER BY ClavePresupuestal

--  SELECT Empresa1, ClavePresupuestal1, DescripcionClave1, Ejercicio1, Comite1, OrigenTipo1, Origen1, OrigenID1, Aplica1, AplicaID1,  Orden1, SubTotal1,      
--         SUM(Enero)      AS EneroC,			SUM(Febrero) AS FebreroC,	SUM(Marzo)	   AS MarzoC,		SUM(Abril)     AS AbrilC,
--         SUM(Mayo)       AS MayoC,			SUM(Junio)   AS JunioC,		SUM(Julio)	   AS JulioC,		SUM(Agosto)    AS AgostoC,
--         SUM(Septiembre) AS SeptiembreC,	SUM(Octubre) AS OctubreC,	SUM(Noviembre) AS NoviembreC,	SUM(Diciembre) AS DiciembreC
--    FROM      (-- I M P O R T E 
--               SELECT EmpresaCDI        AS Empresa1,				  
--		              ClavePresupuestal AS ClavePresupuestal1,
--                      DescripcionClave  AS DescripcionClave1,   
--                      Comite			AS Comite1,
--     	              Ejercicio         AS Ejercicio1, 
--					  OrigenTipo        AS OrigenTipo1, 
--                      Origen            AS Origen1,  
--                      OrigenID          AS OrigenID1, 
--                      Aplica            AS Aplica1, 
--                      AplicaID          AS AplicaID1,
--                      Orden             AS Orden1,
--                      SubTotal          AS SubTotal1,
--		              [1]  AS Enero,		
--		              [2]  AS Febrero,	
--					  [3]  AS Marzo,		
--					  [4]  AS Abril,		
--					  [5]  AS Mayo,		
--					  [6]  AS Junio,		
--					  [7]  AS Julio,
--					  [8]  AS Agosto,
--					  [9]  AS Septiembre,
--					  [10] AS Octubre,  
--					  [11] AS Noviembre,
--					  [12] AS Diciembre
--                 FROM 
--	          (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Importe FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal1) P
--	            PIVOT
--	             (SUM (Importe) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT                 

--                UNION ALL
--               -- T R A N S P A S O
--               SELECT EmpresaCDI        AS Empresa1,				  
--		              ClavePresupuestal AS ClavePresupuestal1,
--                      DescripcionClave  AS DescripcionClave1,   
--                      Comite			AS Comite1,
--     	              Ejercicio         AS Ejercicio1, 
--					  OrigenTipo        AS OrigenTipo1, 
--                      Origen            AS Origen1,  
--                      OrigenID          AS OrigenID1, 
--                      Aplica            AS Aplica1, 
--                      AplicaID          AS AplicaID1,
--                      Orden             AS Orden1,
--                      SubTotal          AS SubTotal1,
--		              [1]  AS Enero,		
--		              [2]  AS Febrero,	
--					  [3]  AS Marzo,		
--					  [4]  AS Abril,		
--					  [5]  AS Mayo,		
--					  [6]  AS Junio,		
--					  [7]  AS Julio,
--					  [8]  AS Agosto,
--					  [9]  AS Septiembre,
--					  [10] AS Octubre,  
--					  [11] AS Noviembre,
--					  [12] AS Diciembre
--                 FROM 
--	          (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Transpaso FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal2) P
--	            PIVOT
--	             (SUM (Transpaso) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT                                 

--                UNION ALL
--               -- C O M P R O M E T I D O
--               SELECT EmpresaCDI        AS Empresa1,				  
--		              ClavePresupuestal AS ClavePresupuestal1,
--                      DescripcionClave  AS DescripcionClave1,   
--                      Comite			AS Comite1,
--     	              Ejercicio         AS Ejercicio1, 
--					  OrigenTipo        AS OrigenTipo1, 
--                      Origen            AS Origen1,  
--                      OrigenID          AS OrigenID1, 
--                      Aplica            AS Aplica1, 
--                      AplicaID          AS AplicaID1,		
--                      Orden             AS Orden1,
--                      SubTotal          AS SubTotal1,
--		              [1]  AS Enero,		
--		              [2]  AS Febrero,	
--					  [3]  AS Marzo,		
--					  [4]  AS Abril,		
--					  [5]  AS Mayo,		
--					  [6]  AS Junio,		
--					  [7]  AS Julio,
--					  [8]  AS Agosto,
--					  [9]  AS Septiembre,
--					  [10] AS Octubre,  
--					  [11] AS Noviembre,
--					  [12] AS Diciembre
--                 FROM 
--	          (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Comprometido FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal3 AND ISNULL(Comprometido, 0) > 0) P
--	            PIVOT
--	             (SUM (Comprometido) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT                  

--                UNION ALL
--               -- D E V E N G A D O 
--               SELECT EmpresaCDI        AS Empresa1,				  
--		              ClavePresupuestal AS ClavePresupuestal1,
--                      DescripcionClave  AS DescripcionClave1,   
--                      Comite			AS Comite1,
--     	              Ejercicio         AS Ejercicio1, 
--					  OrigenTipo        AS OrigenTipo1, 
--                      Origen            AS Origen1,  
--                      OrigenID          AS OrigenID1, 
--                      Aplica            AS Aplica1, 
--                      AplicaID          AS AplicaID1,		
--                      Orden             AS Orden1,
--                      SubTotal          AS SubTotal1,
--		              [1]  AS Enero,		
--		              [2]  AS Febrero,	
--					  [3]  AS Marzo,		
--					  [4]  AS Abril,		
--					  [5]  AS Mayo,		
--					  [6]  AS Junio,		
--					  [7]  AS Julio,
--					  [8]  AS Agosto,
--					  [9]  AS Septiembre,
--					  [10] AS Octubre,  
--					  [11] AS Noviembre,
--					  [12] AS Diciembre
--                 FROM 
--	          (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Devengado FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal4 AND  ISNULL(Devengado, 0) > 0) P
--	            PIVOT
--	             (SUM (Devengado) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT                                 

--                UNION ALL
--               -- E J E R C I D O
--               SELECT EmpresaCDI        AS Empresa1,				  
--		              ClavePresupuestal AS ClavePresupuestal1,
--                      DescripcionClave  AS DescripcionClave1,   
--                      Comite			AS Comite1,
--     	              Ejercicio         AS Ejercicio1, 
--					  OrigenTipo        AS OrigenTipo1, 
--                      Origen            AS Origen1,  
--                      OrigenID          AS OrigenID1, 
--                      Aplica            AS Aplica1, 
--                      AplicaID          AS AplicaID1,		
--                      Orden             AS Orden1,
--                      SubTotal          AS SubTotal1,
--		              [1]  AS Enero,		
--		              [2]  AS Febrero,	
--					  [3]  AS Marzo,		
--					  [4]  AS Abril,		
--					  [5]  AS Mayo,		
--					  [6]  AS Junio,		
--					  [7]  AS Julio,
--					  [8]  AS Agosto,
--					  [9]  AS Septiembre,
--					  [10] AS Octubre,  
--					  [11] AS Noviembre,
--					  [12] AS Diciembre
--                 FROM 
--	          (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Ejercido FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal5 AND ISNULL(Ejercido, 0) > 0) P
--	            PIVOT
--	             (SUM (Ejercido) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT                                          
--                UNION ALL
--               -- D I S P O N I B L E 
--               SELECT EmpresaCDI        AS Empresa1,				  
--		              ClavePresupuestal AS ClavePresupuestal1,
--                      DescripcionClave  AS DescripcionClave1,   
--                      Comite			AS Comite1,
--     	              Ejercicio         AS Ejercicio1, 
--					  OrigenTipo        AS OrigenTipo1, 
--                      Origen            AS Origen1,  
--                      OrigenID          AS OrigenID1, 
--                      Aplica            AS Aplica1, 
--                      AplicaID          AS AplicaID1,		
--                      Orden             AS Orden1,
--                      SubTotal          AS SubTotal1,
--		              [1]  AS Enero,		
--		              [2]  AS Febrero,	
--					  [3]  AS Marzo,		
--					  [4]  AS Abril,		
--					  [5]  AS Mayo,		
--					  [6]  AS Junio,		
--					  [7]  AS Julio,
--					  [8]  AS Agosto,
--					  [9]  AS Septiembre,
--					  [10] AS Octubre,  
--					  [11] AS Noviembre,
--					  [12] AS Diciembre
--                 FROM 
--	          (SELECT EmpresaCDI, ClavePresupuestal, DescripcionClave, Comite, OrigenTipo, Origen,  OrigenID,  Aplica, AplicaID, Orden, SubTotal, Ejercicio, Periodo, Disponible FROM #IntegracionPresupuesto WHERE SubTotal = @SubTotal6) P
--	            PIVOT
--	             (SUM (Disponible) FOR Periodo IN ( [1] , [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12] )) AS PVT                                 
--              )
--   IntegracionPresupuesto
--   GROUP BY Empresa1, Ejercicio1, Comite1, ClavePresupuestal1, DescripcionClave1, Orden1, SubTotal1, OrigenTipo1, Origen1, OrigenID1, Aplica1, AplicaID1  
--   ORDER BY Empresa1, Ejercicio1, Comite1, ClavePresupuestal1, Orden1
 
--RETURN 
--END
--GO

--EXEC spCDIRepIntegracionPartidaPres 'CDI', '',2012, '514-000-026-001-000'
----EXEC spCDIRepIntegracionPartidaPres 'CDI', '',2011, ''
