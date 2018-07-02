SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spCDICEKardexInscritos @Comite='', @Coordinacion='',@CEPlan='',@CEPrograma='',@Grupo='',@Socio='1620603'
    
/**************** spCDICEKardexInscritos****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEKardexInscritos') and type = 'P') drop procedure dbo.spCDICEKardexInscritos
GO
CREATE PROCEDURE spCDICEKardexInscritos

@Comite				VARCHAR(50),
@Coordinacion		VARCHAR(50),
@CEPlan				VARCHAR(50),
@CEPrograma			VARCHAR(50)	,
@Grupo				VARCHAR(50),
@Socio				VARCHAR(50)	

AS BEGIN
	
		IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')			SELECT @Comite =NULL
		IF UPPER(@Coordinacion) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')	SELECT @Coordinacion =NULL
		IF UPPER(@CEPlan) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')			SELECT @CEPlan =NULL
		IF UPPER(@Socio) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')			SELECT @Socio =NULL
		IF UPPER(@CEPrograma) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')		SELECT @CEPrograma =NULL
		IF UPPER(@Grupo) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')			SELECT @Grupo =NULL
		
   
			SELECT	Id= IDENTITY(INT,1,1),	ch.Empresa,ch.Alumno, c4.PersonalNombres,c4.PersonalApellidoPaterno, c4.PersonalApellidoMaterno, 
					c4.Membresia,ch.Programa,ch.CEPlan, ch.Grupo,HistEstatus=ch.Estatus,
					c.FechaEmision, c.Concepto,c3.CDIComite, c.Mov,c.MovID, MovEstatus = c.Estatus, 
					c.Importe, c.Impuestos,   c2.Horario, c2.Precio,
					DescuentoLineal=ISNULL( c2.DescuentoLineal,0), Beca =ISNULL( c2.CDIBeca,0),  c3.Descripcion,c3.Coordinacion,
					c2.CDIBeca, c2.CDIBecaAplicada, MovBeca =c5.Mov, MovIdBeca= c5.MovID , 
					EsBeca= CASE WHEN c5.Mov='Solicitud Beca' THEN 'B' WHEN c5.Mov ='Solicitud Descuento' THEN 'D' ELSE 'NA' END 
			INTO #CDICEKardex
			FROM	CEAlumnoHist ch
				JOIN CE c ON c.ID=ch.ModuloID
				JOIN CED c2 ON c2.ID = c.ID
				JOIN CEPlan c3 ON ch.CEPlan=c3.CEPlan
				JOIN cte c4 ON ch.Alumno=c4.Socio
				LEFT OUTER JOIN CE c5 ON c5.ID = c2.CDIBecaAplicada
				LEFT OUTER JOIN CED c6 ON c5.ID= c6.ID 
			WHERE	c.Estatus IN ('PENDIENTE','CONCLUIDO', 'CANCELADO')
			AND ISNULL ( c3.CDIComite,'') = ISNULL ( ISNULL( @Comite, c3.CDIComite),'')
			AND ISNULL( c3.Coordinacion,'') = ISNULL ( ISNULL ( @Coordinacion, c3.Coordinacion),'')
			AND ISNULL ( ch.CEPlan, '') = ISNULL( ISNULL ( @CEPlan, c3.CEPlan),'')
			AND ISNULL ( ch.Alumno, '') = ISNULL ( ISNULL ( @Socio, ch.Alumno),'')
			AND ISNULL ( ch.Programa,'') = ISNULL (ISNULL ( @CEPrograma, ch.Programa),'')
			AND ISNULL ( ch.Grupo,'') = ISNULL ( ISNULL ( @Grupo, ch.Grupo), '')
			ORDER BY  c3.CDIComite, c3.Coordinacion,ch.Alumno
  	
  	SELECT a.*,  BecaImporte= CASE WHEN a.EsBeca ='B' THEN a.Beca ELSE 0 END,
  	 DescuentoImporte= CASE WHEN a.EsBeca ='D' THEN a.Beca ELSE 0 END FROM #CDICEKardex a
  	JOIN #CDICEKardex b ON a.id= b.id
  	
  	
  	
  	
  	
   END

GO