SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spCDISaldodeBecas @Comite= '' ,  @Programa=''  , @CEPlan=''
    
/**************** spCDISaldodeBecas****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDISaldodeBecas') and type = 'P') drop procedure dbo.spCDISaldodeBecas
GO
CREATE PROCEDURE spCDISaldodeBecas

@Comite			VARCHAR (50),
@Programa		VARCHAR(10),
@CEPlan			VARCHAR(10)

AS BEGIN
	
		IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Comite = NULL
		IF UPPER(@Programa) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Programa = NULL
		IF UPPER(@CEPlan) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @CEPlan =NULL
		
		SELECT c3.CDIComite, c.Programa, C2.FechaInicio, c2.FechaFin, ISNULL(c3.Coordinacion,'SIN COORDINACION') Coordinacion, c.CEPlan, C3.Descripcion, ImporteOriginal= CASE WHEN c.ImporteOriginal <0 THEN 0 ELSE ISNULL(c.ImporteOriginal,0) END,c.Reservado, c.Ejercido,   Importe=CASE WHEN c.Importe <0 THEN  c.Importe*-1 ELSE c.Importe END
		INTO #SaldoBecas
		FROM CDICEBeca c
		INNER JOIN CEPrograma c2 ON c2.Programa = c.Programa
		INNER JOIN CEPlan c3 ON c.CEPlan=c3.CEPlan
		WHERE ISNULL(c3.CDIComite,'') =ISNULL(ISNULL(@Comite,c3.CDIComite),'')
		AND ISNULL(c.Programa,'')= ISNULL(ISNULL(@Programa,c.Programa),'')
		AND ISNULL(c.CEPlan,'')=ISNULL(ISNULL(@CEPlan,c.CEPlan),'')
		GROUP BY  c3.CDIComite,c.Programa, C2.FechaInicio, c2.FechaFin, c3.Coordinacion, c.CEPlan, C3.Descripcion, c.ImporteOriginal, c.Ejercido, c.Reservado, c.Importe
		ORDER BY  c3.CDIComite,c.Programa, c3.Coordinacion, c.CEPlan
   	
   	SELECT   Programa, c1.CEPlan, BecaReservado=SUM (ISNULL(c1.CDIBeca,0) )
   	        INTO #BR
   	        FROM dbo.CE c
   	JOIN dbo.CED c1 ON c.ID = c1.ID
   	WHERE Mov IN ('Solicitud Beca      ')
   	AND Estatus IN ('Pendiente')
   	AND ISNULL(c.Proyecto,'') =ISNULL(ISNULL(@Comite,c.Proyecto),'')
   	AND ISNULL(c.Programa,'')= ISNULL(ISNULL(@Programa,c.Programa),'')
   	AND ISNULL(c1.CEPlan,'')=ISNULL(ISNULL(@CEPlan,c1.CEPlan),'')
   	GROUP BY Programa, c1.CEPlan
   	
   	SELECT  Programa, c1.CEPlan,DescuentoReservado=SUM (ISNULL(c1.CDIBeca,0) )
   		INTO #DR
   		FROM dbo.CE c
   	JOIN dbo.CED c1 ON c.ID = c1.ID
   	WHERE Mov IN ('Solicitud Descuento')
   	AND Estatus IN ('Pendiente')
   	AND ISNULL(c.Proyecto,'') =ISNULL(ISNULL(@Comite,c.Proyecto),'')
   	AND ISNULL(c.Programa,'')= ISNULL(ISNULL(@Programa,c.Programa),'')
   	AND ISNULL(c1.CEPlan,'')=ISNULL(ISNULL(@CEPlan,c1.CEPlan),'')
   	GROUP BY Programa, c1.CEPlan
   	
   	SELECT  Programa, c1.CEPlan, BecaAsignado=SUM (ISNULL(c1.CDIBeca,0) )
   		INTO #BA
   		FROM dbo.CE c
   	JOIN dbo.CED c1 ON c.ID = c1.ID
   	WHERE Mov IN ('Solicitud Beca')
   	AND Estatus IN ('Autorizado')
   	AND ISNULL(c.Proyecto,'') =ISNULL(ISNULL(@Comite,c.Proyecto),'')
   	AND ISNULL(c.Programa,'')= ISNULL(ISNULL(@Programa,c.Programa),'')
   	AND ISNULL(c1.CEPlan,'')=ISNULL(ISNULL(@CEPlan,c1.CEPlan),'')
 	 GROUP BY Programa, c1.CEPlan
 	  	
   	 SELECT Programa, c1.CEPlan, DescuentoAsignado= SUM (ISNULL(c1.CDIBeca,0) )
   		INTO #DA
   		FROM dbo.CE c
   	JOIN dbo.CED c1 ON c.ID = c1.ID
   	WHERE Mov IN ('Solicitud Descuento')
   	AND Estatus IN ('Autorizado')
   	AND ISNULL(c.Proyecto,'') =ISNULL(ISNULL(@Comite,c.Proyecto),'')
   	AND ISNULL(c.Programa,'')= ISNULL(ISNULL(@Programa,c.Programa),'')
   	AND ISNULL(c1.CEPlan,'')=ISNULL(ISNULL(@CEPlan,c1.CEPlan),'')
 	GROUP BY Programa, c1.CEPlan
 	  
 	  
 	  SELECT SB.*,  BecaReservado=SUM(ISNULL( BecaReservado,0)), DescuentoReservado=SUM(ISNULL(DescuentoReservado,0)),
 			 BecaAsignado= SUM( ISNULL(BecaAsignado,0)) , DescuentoAsignado = SUM(ISNULL(DescuentoAsignado,0)) 
 			 FROM #SaldoBecas sb
 	  LEFT OUTER JOIN #BR ON sb.CEPlan = #BR.CEPlan AND sb.Programa = #BR.Programa
 	  LEFT OUTER JOIN #DR ON sb.Programa=#DR.Programa AND sb.CEPlan=#DR.CEPlan
 	  LEFT OUTER JOIN #BA ON sb.Programa=#BA.Programa AND sb.CEPlan=#BA.CEPlan
 	  LEFT OUTER JOIN #DA ON sb.Programa=#DA.Programa AND sb.CEPlan=#DA.CEPlan
 	GROUP BY sb.CDIComite ,  SB.Programa , sb.CEPlan, SB.FechaInicio ,SB.FechaFin ,   SB.Coordinacion , SB.Descripcion , SB.ImporteOriginal , SB.Reservado ,  SB.Ejercido, Importe
 	ORDER BY CDIComite, Coordinacion, SB.CEPlan, FechaInicio, FechaFin
   	
   END

GO
