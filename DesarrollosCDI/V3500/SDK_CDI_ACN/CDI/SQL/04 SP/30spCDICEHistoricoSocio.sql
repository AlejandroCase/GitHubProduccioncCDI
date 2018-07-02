SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spCDICEHistoricoSocio @Membresia='null', @Socio='', @Comite= '' ,  @Programa=''  , @CEPlan='', @Grupo='', @Alumno=''
    
/**************** spCDICEHistoricoSocio****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEHistoricoSocio') and type = 'P') drop procedure dbo.spCDICEHistoricoSocio
GO
CREATE PROCEDURE spCDICEHistoricoSocio

@Membresia		VARCHAR (10),
@Socio			VARCHAR(100),
@Comite			VARCHAR (50),
@Programa		VARCHAR(10),
@CEPlan			VARCHAR(10),
@Grupo			CHAR(10),
@Alumno			CHAR(10)

AS BEGIN
	
		IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Comite = NULL
		IF UPPER(@Programa) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Programa = NULL
		IF UPPER(@CEPlan) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @CEPlan =NULL
		IF UPPER(@Socio) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Socio = NULL
		IF UPPER(@Membresia) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Membresia = NULL
		IF UPPER(@Alumno) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Alumno = NULL
    
 	
		SELECT cte.Membresia, cte.Socio , ch.Alumno, cte.PersonalNombres, cte.PersonalApellidoPaterno, cte.PersonalApellidoMaterno, ch.Programa, ch.CEPlan, ch.Grupo, c.Descripcion, ch.Estatus, cte.Tipo, c.CDIComite, Importe=isnull(v2.Importe,0),  DescuentoLineal=isnull(v2.DescuentoLineal,0), Neto=v2.Importe-v2.DescuentoLineal, c.Coordinacion, ce2.Mov   
		FROM CEAlumnoHist ch
		INNER JOIN CEPlan c ON c.CEPlan = ch.CEPlan
		INNER JOIN cte ON ch.Alumno=cte.Cliente
		INNER JOIN ce ON ce.Programa=ch.Programa AND ce.CEPlan=ch.CEPlan AND ch.Alumno=ce.Cliente 
		INNER JOIN Venta v ON v.OrigenTipo='CE' AND v.Origen=ce.Mov AND v.OrigenID=ce.MovID AND v.Cliente=ce.Cliente
		INNER JOIN Venta v2 ON  v2.Origen=v.Mov AND v2.OrigenID=v.MovID
		LEFT OUTER JOIN ce ce2 ON ce.Cliente=ce2.Cliente AND ce2.Mov IN ('Solicitud Beca','Solicitud Descuento') AND  ce2.Programa=ce.Programa AND ce2.CEPlan=ce.CEPlan 
		WHERE
				ISNULL(cte.Membresia,'') = ISNULL(ISNULL(@Membresia,cte.Membresia),'')		
		AND		ISNULL(cte.Socio,'')= ISNULL(ISNULL(@Socio, cte.Socio),'')
		AND		ISNULL(c.CDIComite,'')=ISNULL(ISNULL(@Comite,c.CDIComite),'')
		AND		ISNULL(ch.Programa,'')=ISNULL(ISNULL(@Programa,ch.Programa),'')
		AND		ISNULL(ch.CEPlan,'')=ISNULL(ISNULL(@CEPlan,ch.CEPlan),'')
		AND		ISNULL(ch.Alumno,'')=ISNULL(ISNULL(@Alumno,ch.Alumno),'')
		AND v2.Estatus='CONCLUIDO'

		GROUP BY cte.Membresia, cte.Socio , ch.Alumno, cte.PersonalNombres, cte.PersonalApellidoPaterno, cte.PersonalApellidoMaterno, ch.Programa, ch.CEPlan, ch.Grupo, c.Descripcion, ch.Estatus, cte.Tipo, c.CDIComite, v2.Importe,  v2.DescuentoLineal, c.Coordinacion, ce2.Mov
		ORDER BY cte.Membresia, cte.Socio, c.CDIComite, ch.Programa, ch.CEPlan




   END

GO