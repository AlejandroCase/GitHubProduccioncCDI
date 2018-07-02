-- spCDICEComparativo 'CDI', 100, '2011-1'
/**************** spCDICEComparativo ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEComparativo') and type = 'P') drop procedure dbo.spCDICEComparativo
GO
CREATE PROCEDURE spCDICEComparativo
    @Empresa        char(5),
    @Estacion       int,
    @CEPrograma     varchar(10),
    @Proyecto       varchar(50)
AS
BEGIN
	DECLARE
	@FechaD           datetime,
	@FechaA           datetime,
	@FechaDAnt        datetime,
	@FechaAAnt        datetime,
	@CEProgramaA      varchar(10),
	@ID               int,
	@Cobrado          money,
	@MesDAnt          int,
	@MesAAnt          int,
	@MesDActual       int,
	@MesAActual       int,
	@EjercicioAnt     int,
	@EjercicioActual  int
	
	DECLARE @CDICEComparativo TABLE(
	ID                int,
	Mov               varchar(20),
	MovID             varchar(20),
	CEPrograma        varchar(10),
	CEPlan            varchar(10),
	Importe           money,
	Cobrado           money)
	
	DECLARE @CDICEComparativoActual TABLE(
	CEPlan            varchar(10),
  Cobrados          int,
  Inscritos         int,
	MontoCobrado      money)

	DECLARE @CDICEComparativoAnterior TABLE(
	CEPlan            varchar(10),
	Cobrados          int,
	Inscritos         int,
	MontoCobrado      money)
	
	DECLARE @CDICEComparativoActualR TABLE(
	CEPlan            varchar(10),
  Cobrados          int,
  Inscritos         int,
	MontoCobrado      money)

	DECLARE @CDICEComparativoAnteriorR TABLE(
	CEPlan            varchar(10),
	Cobrados          int,
	Inscritos         int,
	MontoCobrado      money)

	DECLARE @CDICEComparativoIngresos TABLE(
	CEPlan            varchar(10),
  Ingresos          money)

	DECLARE @CDICEComparativoR TABLE(
	CEPlan            varchar(10))
	
	SELECT @FechaD = c.FechaInicio, @FechaA = c.FechaFin FROM CEPrograma c WHERE c.Programa = @CEPrograma
	
	SELECT TOP 1 @CEProgramaA = c.Programa FROM CEPrograma c WHERE c.FechaInicio < @FechaD AND DATEDIFF(MONTH, c.FechaInicio, c.FechaFin)  > 1 ORDER BY c.FechaInicio DESC
	
  SELECT @FechaDAnt = c.FechaInicio, @FechaAAnt = c.FechaFin FROM CEPrograma c WHERE c.Programa = @CEProgramaA
	
	SELECT @MesDAnt = DATEPART(MONTH, @FechaDAnt), 
	       @MesAAnt = DATEPART(MONTH, @FechaAAnt),
	       @MesDActual = DATEPART(MONTH, @FechaD),
	       @MesAActual = DATEPART(MONTH, @FechaA),
	       @EjercicioAnt = DATEPART(YEAR, @FechaDAnt),
	       @EjercicioActual = DATEPART(YEAR, @FechaD)

  IF @Proyecto IN ('TODOS', 'TODAS', '(TODOS)', '(TODAS)', '', 'NULL', 'NULO') SELECT @Proyecto = NULL
--	SELECT @CEProgramaA

	INSERT INTO @CDICEComparativo(ID, Mov, MovID, CEPrograma, CEPlan, Importe)
	SELECT c.ID, c.Mov, c.MovID, c.Programa, c.CEPlan, c.Importe 
	  FROM CE c
	  JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'CE' AND mt.Clave IN ('CE.I', 'CE.P')
	 WHERE c.Empresa = @Empresa
	   AND c.Programa IN (@CEPrograma, @CEProgramaA)
	   AND c.Estatus IN ('PENDIENTE', 'CONCLUIDO')
	   AND c.Proyecto = ISNULL(@Proyecto, c.Proyecto)
	
  DECLARE crCDICEComparativo CURSOR FOR
  SELECT ID
    FROM @CDICEComparativo
	
	OPEN crCDICEComparativo
	FETCH NEXT FROM crCDICEComparativo INTO @ID
	WHILE @@FETCH_STATUS = 0
	BEGIN
		
  	EXEC spVerMovFlujo @Estacion, @Empresa, 'CE', @ID

  	SELECT @Cobrado = NULL

  	SELECT @Cobrado = SUM(Importe-(Importe*IvaFiscal))
  	  FROM VerMovFlujo v
  	  JOIN MovTipo mt ON v.Mov = mt.Mov AND v.Modulo = mt.Modulo AND mt.Modulo = 'CXC' AND mt.Clave = 'CXC.C'
  	  JOIN Cxc c ON v.ModuloID = c.ID
  	 WHERE v.Estacion = @Estacion
  	   AND v.Tipo = 'Destino'
  	   AND c.Estatus = 'CONCLUIDO'
  	
  	IF @Cobrado IS NOT NULL
  	  UPDATE @CDICEComparativo SET Cobrado = @Cobrado WHERE ID = @ID
  	  
    FETCH NEXT FROM crCDICEComparativo INTO @ID
	END
	
	CLOSE crCDICEComparativo
	DEALLOCATE crCDICEComparativo
	
	INSERT INTO @CDICEComparativoActual
	      (CEPlan,   Cobrados, Inscritos, MontoCobrado)
	SELECT c.CEPlan, CASE WHEN ISNULL(Cobrado, 0) > 0 THEN 1 WHEN ISNULL(Cobrado, 0) <= 0 THEN 0 END, 1, c.Cobrado
	  FROM @CDICEComparativo c
	 WHERE c.CEPrograma = @CEPrograma

	INSERT INTO @CDICEComparativoAnterior
	      (CEPlan,   Cobrados, Inscritos, MontoCobrado)
	SELECT c.CEPlan, CASE WHEN ISNULL(Cobrado, 0) > 0 THEN 1 WHEN ISNULL(Cobrado, 0) <= 0 THEN 0 END, 1, c.Cobrado
	  FROM @CDICEComparativo c
	 WHERE c.CEPrograma = @CEProgramaA
--	 GROUP BY c.CEPlan, CASE WHEN ISNULL(Cobrado, 0) > 0 THEN 1 WHEN ISNULL(Cobrado, 0) <= 0 THEN 0 END

  INSERT INTO @CDICEComparativoActualR(CEPlan, Cobrados, Inscritos, MontoCobrado)
  SELECT CEPlan, SUM(Cobrados), SUM(Inscritos), SUM(MontoCobrado)
    FROM @CDICEComparativoActual
   GROUP BY CEPlan
	 
  INSERT INTO @CDICEComparativoAnteriorR(CEPlan, Cobrados, Inscritos, MontoCobrado)
  SELECT CEPlan, SUM(Cobrados), SUM(Inscritos), SUM(MontoCobrado)
    FROM @CDICEComparativoAnterior
   GROUP BY CEPlan

	INSERT INTO @CDICEComparativoR(CEPlan)
	SELECT ca.CEPlan
	  FROM @CDICEComparativoActualR ca
	 GROUP BY ca.CEPlan
	UNION 
	SELECT CEPlan
	  FROM @CDICEComparativoAnteriorR
	 GROUP BY CEPlan
	 
--	 SELECT 5, * FROM @CDICEComparativoR cr
	--SELECT 10, * FROM @CDICEComparativo c
--	SELECT 20, * FROM @CDICEComparativoActual ca
	-- SELECT 30, * FROM @CDICEComparativoAnterior ca
	
  INSERT INTO @CDICEComparativoIngresos(CEPlan, Ingresos)
  SELECT c.CEPlan, SUM(c.Importe)
    FROM @CDICEComparativo c
   WHERE ISNULL(c.Cobrado, 0) > 0
   GROUP BY c.CEPlan

	SELECT cr.CEPlan, 
	      'InscritosCobradosActual' = (ca.Cobrados), 'InscritosActual' = (ca.Inscritos), 'CantidadActual' = (ca.MontoCobrado),
        'InscritosCobradosAnt'    = (ca2.Cobrados), 'InscritosAnt' = (ca2.Inscritos), 'CantidadAnt' = (ca2.MontoCobrado),
        'Ingresos' = c.Ingresos, 
        'MesDAnt' = @MesDAnt, 'MesAAnt' = @MesAAnt, 'MesDActual' = @MesDActual, 'MesAActual' = @MesAActual, 
        'EjercicioAnt' = @EjercicioAnt, 'EjercicioActual' = @EjercicioActual
	 FROM @CDICEComparativoR cr
	 LEFT OUTER JOIN @CDICEComparativoActualR ca ON cr.CEPlan = ca.CEPlan
	 LEFT OUTER JOIN @CDICEComparativoAnteriorR ca2 ON cr.CEPlan = ca2.CEPlan
	 LEFT OUTER JOIN @CDICEComparativoIngresos c ON cr.CEPlan = c.CEPlan
	ORDER BY cr.CEPlan        	
--  SELECT * FROM @CDICEComparativo c
	
	RETURN
END
GO
