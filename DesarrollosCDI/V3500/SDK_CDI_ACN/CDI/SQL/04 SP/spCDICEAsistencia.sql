-- spCDICEAsistencia 'CDI', 100, 'PER.2012-1', 'Actividades', '', '',''
-- spCDICEAsistencia 'CDI', 100, '2011-1', NULL, 'KARAREPRE', NULL
-- spCDICEAsistencia 'CDI', 100, '2011-1', NULL, NULL, NULL
/**************** spCDICEAsistencia ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEAsistencia') and type = 'P') drop procedure dbo.spCDICEAsistencia
GO
CREATE PROCEDURE spCDICEAsistencia
    @Empresa        char(5),
    @Estacion       int,
    @CEPrograma     varchar(10),
    @Comite         varchar(50), -- Proyecto
    @CEPlan         varchar(10),
    @Grupo          varchar(10),
    @Pago           varchar(30)
AS
BEGIN
	
  IF @Comite IN ('TODOS', 'TODAS', '(TODOS)', '(TODAS)', '', 'NULL', 'Nulo') SELECT @Comite = NULL
  IF @CEPlan IN ('TODOS', 'TODAS', '(TODOS)', '(TODAS)', '', 'NULL', 'Nulo') SELECT @CEPlan = NULL
  IF @Grupo  IN ('TODOS', 'TODAS', '(TODOS)', '(TODAS)', '', 'NULL', 'Nulo') SELECT @Grupo  = NULL

  DECLARE @CDICEAsistencia TABLE(
  Estatus				 varchar(10),  
  CEPrograma             varchar(10),
  Ciclo                  varchar(100),
  FechaInicio            datetime,
  FechaFin               datetime,
  CElan                  varchar(10),
  CEPlanNombre           varchar(100),
  Materia                varchar(10),
  Grupo                  varchar(10),
  Horario                varchar(30),
  Profesor               varchar(10),
  ProfNombre             varchar(100),
  Cliente                varchar(10),
  CteNombre              varchar(100),
  Telefonos              varchar(100),
  Socio                  varchar(10),
  FechaNacimiento        datetime,
  IDInscripcion          int,
  FechaInscripcion       datetime,
  CoberturaFolio         varchar(20),
  Cobertura              money,
  FechaPago              datetime,
  EstatusCobro           varchar(15)) 
  
  DECLARE
  @IDInscripcion          int,
  @FechaCobro             datetime,
  @CoberturaFolio         varchar(20),
  @Cobertura              money,
  @Cliente                varchar(10),
  @Ejercicio              int,
  @CfgArtCoberturaMedica  varchar(20),
  @SaldoCobMed			  MONEY,
  @IDFactura			  INT 
  
  SELECT @CfgArtCoberturaMedica = CEArtCoberturaMedica
    FROM CDIEmpresaCfg
   WHERE Empresa = @Empresa



  INSERT INTO @CDICEAsistencia
        (Estatus,   CEPrograma, Ciclo,   FechaInicio,   FechaFin,   CElan,     CEPlanNombre,  Materia,    Grupo,    Horario,    Profesor,    ProfNombre, Cliente,   CteNombre,                                                                                                           Telefonos,   Socio,   FechaNacimiento,   IDInscripcion, FechaInscripcion, EstatusCobro, FechaPago)
  SELECT c.Estatus, p.Programa, p.Ciclo, p.FechaInicio, p.FechaFin, cd.CEPlan, l.Descripcion, cd.Materia, cd.Grupo, cd.Horario, cd.Profesor, f.Nombre,   c.Cliente, ISNULL(c.PersonalNombres, '')+' '+ISNULL(c.PersonalApellidoPaterno, '')+' ' +ISNULL(c.PersonalApellidoMaterno, ''),  c.Telefonos, c.Socio, c.FechaNacimiento, c2.ID,         c2.FechaEmision,
         CASE WHEN l.Precio=0 AND   dbo.fnCDIPagoAsiste (@Empresa,  c2.Mov, c2.ID)  IS NULL THEN 'CONCLUIDO' WHEN c3.DescuentoLineal= 100 THEN 'CONCLUIDO'   ELSE   dbo.fnCDIPagoAsiste (@Empresa,  c2.Mov, c2.ID) END,
         CASE WHEN l.Precio=0 AND dbo.fnCDIPagoAsiste (@Empresa,  c2.Mov, c2.ID)  IS NULL  THEN Fechaemision WHEN c3.DescuentoLineal= 100 THEN Fechaemision    ELSE NULL END
         --,dbo.fnCDIPagoAsiste (@Empresa,  c2.Mov, c2.ID) -- JLGG              
    FROM CEPrograma p
    JOIN CEProgramaD cd ON p.Programa = cd.Programa
    LEFT OUTER JOIN Profesor f ON cd.Profesor = f.Profesor
    JOIN CEAlumnoHist ch ON cd.Empresa = ch.Empresa AND cd.Sucursal = ch.Sucursal AND cd.Programa = ch.Programa AND cd.CEPlan = ch.CEPlan AND cd.Materia = ch.Materia AND cd.Grupo = ch.Grupo
    JOIN CEPlan l ON ch.CEPlan = l.CEPlan
    JOIN Cte c ON ch.Alumno = c.Cliente
    JOIN CE c2 ON ch.ModuloID = c2.ID
    JOIN CED c3 ON c3.ID = c2.ID 
   WHERE cd.Empresa = @Empresa
     AND p.Programa = @CEPrograma
     AND l.CDIComite = ISNULL(@Comite, l.CDIComite)
     AND cd.CEPlan = ISNULL(@CEPlan, cd.CEPlan)
     AND ch.Grupo = ISNULL(@Grupo, ch.Grupo)
     AND ch.Estatus IN ('ALTA', 'REVISION')
     AND ch.Modulo = 'CE'
   ORDER BY cd.Materia, cd.Grupo, ch.Alumno
   
 DECLARE crCDICargoCobertura CURSOR FOR
  SELECT c.Cliente, DATEPART(YEAR, GETDATE()) --DATEPART(YEAR, c.FechaInicio)
    FROM @CDICEAsistencia c
    
   OPEN crCDICargoCobertura
  FETCH NEXT FROM crCDICargoCobertura INTO @Cliente, @Ejercicio
  WHILE @@FETCH_STATUS = 0
  BEGIN
  	
  	SELECT @CoberturaFolio = NULL, @Cobertura = NULL  
  	
  SELECT TOP 1 @CoberturaFolio = ar.MovID, @Cobertura = SUM(ISNULL( ar.Cargo,0)), @IDFactura= ar.ModuloID
	    FROM AuxiliarRU ar
	    JOIN MovTipo mt ON ar.Mov = mt.Mov AND mt.Modulo = 'VTAS' AND mt.Clave = 'VTAS.F'
	   WHERE ar.Empresa = @Empresa AND ar.Rama = 'VTAS' AND ar.Modulo = 'VTAS' AND ar.Grupo = @Cliente AND ar.Cuenta = @CfgArtCoberturaMedica
	     AND ar.Ejercicio = @Ejercicio
	GROUP BY MovID, ModuloID HAVING SUM ( Cargo) >0

    IF @CoberturaFolio IS NOT NULL
	    UPDATE @CDICEAsistencia SET CoberturaFolio = @CoberturaFolio WHERE Cliente = @Cliente
	    
	SELECT @SaldoCobMed = ISNULL( c.Saldo,0)
        FROM MovFlujo mf
        JOIN Cxc c ON mf.DID = c.ID
        WHERE mf.OModulo = 'VTAS' AND mf.OID = @IDFactura
        AND mf.DModulo='CXC'
          AND mf.Cancelado = 0
    
    IF  @SaldoCobMed =0
		UPDATE @CDICEAsistencia SET Cobertura = @Cobertura WHERE Cliente = @Cliente
    	  
    FETCH NEXT FROM crCDICargoCobertura INTO @Cliente, @Ejercicio
  END
  
  CLOSE crCDICargoCobertura
  DEALLOCATE crCDICargoCobertura
  
  DECLARE crCDIFechaCobro CURSOR FOR
  SELECT c.IDInscripcion
    FROM @CDICEAsistencia c
  
  OPEN crCDIFechaCobro
  FETCH NEXT FROM crCDIFechaCobro INTO @IDInscripcion
  WHILE @@FETCH_STATUS = 0
  BEGIN
  	EXEC spVerMovFlujo @Estacion, @Empresa, 'CE', @IDInscripcion


  	SELECT @FechaCobro = NULL

  	SELECT @FechaCobro = MIN(c.FechaEmision)
  	  FROM VerMovFlujo v
  	  JOIN MovTipo mt ON v.Mov = mt.Mov AND v.Modulo = mt.Modulo AND mt.Modulo = 'CXC' AND mt.Clave IN ( 'CXC.C', 'CXC.NC', 'CXC.D','CXC.ANC')
  	  JOIN Cxc c ON v.ModuloID = c.ID
  	 WHERE v.Estacion = @Estacion
  	   AND v.Tipo = 'Destino'
  	
  	IF @FechaCobro IS NOT NULL
  	  UPDATE @CDICEAsistencia SET FechaPago = @FechaCobro WHERE IDInscripcion = @IDInscripcion
  	
  	FETCH NEXT FROM crCDIFechaCobro INTO @IDInscripcion
  END
  
  CLOSE crCDIFechaCobro 
  DEALLOCATE crCDIFechaCobro
 

 -- JLGG -MODIFICADO POR SISTEMAS CDI INICIO-  
  IF @Pago='Si Pagado'
  BEGIN 
  SELECT * 
    FROM @CDICEAsistencia c
   WHERE 
   --EstatusCobro='CONCLUIDO'
   FechaPago is not null 
   ORDER BY c.CElan, c.Grupo
  END 
 --     -MODIFICADO POR SISTEMAS CDI FIN-  

IF @Pago='(Todos)'
  BEGIN 
  SELECT * 
    FROM @CDICEAsistencia c
   ORDER BY c.CElan, c.Grupo
  END 

  IF @Pago='No Pagado'
  BEGIN 
  SELECT * 
    FROM @CDICEAsistencia c
   WHERE EstatusCobro IS NULL OR EstatusCobro IN ('SINAFECTAR','CANCELADO', '')
   ORDER BY c.CElan, c.Grupo
  END 
-- JLGG
 
RETURN
END
GO

--EXEC  spCDICEAsistencia 'CDI', 79, '2011/2012', 'Actividades', 'PRUEBACM', ' ', '(Todos)'
GO 