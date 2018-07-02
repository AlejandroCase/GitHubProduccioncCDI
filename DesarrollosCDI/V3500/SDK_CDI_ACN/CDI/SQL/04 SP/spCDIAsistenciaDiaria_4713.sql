SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


  -- Desarrollo. ASISTENCIA DIARIA
  -- Cliente   . CDI
  -- Folio     . 4573
  -- Fecha     . 14 / 12 / 10
  -- Autor     . EDER MENDOZA



---------------------------------------------------------------------
-------- S P C D I R E P A S I S T E N C I A D I A R I A ------------
---------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepAsistenciaDiaria') AND type = 'P') DROP PROCEDURE dbo.spCDIRepAsistenciaDiaria
GO

CREATE PROCEDURE spCDIRepAsistenciaDiaria
    	  @Empresa			varchar(5),		  
          @Mov				varchar(20),		  
		  @Periodo			int,  
   		  @Ejercicio		int,
		  @NumeroAños		int	
AS
BEGIN   
   
  DECLARE @EjercicioInicial	  int,
		  @EjercicioInicial1  int,
          @RenglonMax		  int,
          @RenglonMin		  int,
          @NumeroSemanasMax	  int,
          @NumeroSemanasMin	  int,
		  @NumeroSemana1	  int,
		  @NumeroSemana2	  int,
          @NumeroSemana3 	  int,
          @NumeroSemana4	  int,
          @NumeroSemana5	  int,
          @NumeroSemana6	  int,
		  @DiaPrimero		  int,	
		  @DiaUltimo		  int,
          @CalculoPorSemana	  int,  
		  @RegistroDiario6	  int,  
          @DiadlaSemanaLetra6 varchar(50),
          @FechaDiaL		  varchar(20),
		  @FechaDiaPrimeroL	  varchar(20),
		  @DiaLetraCalculo	  varchar(50),
          @DiaLetraCalculoVer varchar(50),  
          @FechaDiaPrimero	  datetime,
          @FechaDia			  datetime,
		  @FechaDiaUltimo	  datetime 

  CREATE TABLE #AsistenciaDiariaPersonal
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	   
   Personal				varchar(10),
   Registro				varchar(10),
   EmpresaCDI			varchar(5),	   
   Periodo				int,  
   Ejercicio			int,
   Dia					int,   	
   Fecha				datetime
   )

  CREATE TABLE #AsistenciaDiaria
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	       
   EmpresaCDI			varchar(5),	   
   DiaFechaReg			int,   	
   Periodo				int,  
   Ejercicio			int,   
   Fecha1				datetime,		  
   DiadlaSemana			int,   
   DiadlaSemanaLetra	varchar(50),   
   NumeroSemana			int,
   RegistroDiario		int   
   )

  CREATE TABLE #Formato
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	             
   EmpresaCDI			varchar(5),	   
   DiaFechaReg1			int			NULL,   	
   DiadlaSemana1		int			NULL,      
   DiadlaSemanaLetra1	varchar(50)	NULL,  
   Periodo1				int			NULL,  
   Ejercicio1			int			NULL,  
   RegistroDiario1		int			NULL,     
   NumeroSemana1		int			NULL,
   DiaFechaReg2			int			NULL,   		  
   DiadlaSemana2		int			NULL,  
   DiadlaSemanaLetra2	varchar(50)	NULL,  
   Periodo2				int			NULL,  
   Ejercicio2			int			NULL,     
   RegistroDiario2		int			NULL,  
   NumeroSemana2		int			NULL,	  
   DiaFechaReg3		int			NULL,   	
   DiadlaSemana3		int			NULL,  
   DiadlaSemanaLetra3	varchar(50)	NULL,  
   Periodo3				int			NULL,  
   Ejercicio3			int			NULL,  
   RegistroDiario3		int			NULL,  
   NumeroSemana3		int			NULL,	  
   DiaFechaReg4			int			NULL,   	
   DiadlaSemana4		int			NULL,  
   DiadlaSemanaLetra4	varchar(50)	NULL,  
   Periodo4				int			NULL,  
   Ejercicio4			int			NULL,  
   RegistroDiario4		int			NULL,  
   NumeroSemana4		int			NULL,	  
   DiaFechaReg5			int			NULL,   	
   DiadlaSemana5		int			NULL,  
   DiadlaSemanaLetra5	varchar(50)	NULL,  
   Periodo5				int			NULL,  
   Ejercicio5			int			NULL,  
   RegistroDiario5		int			NULL,  
   NumeroSemana5		int			NULL,	  
   DiaFechaReg6			int			NULL,   	
   DiadlaSemana6		int			NULL,  
   DiadlaSemanaLetra6	varchar(50)	NULL,  
   Periodo6				int			NULL,  
   Ejercicio6			int			NULL,  
   RegistroDiario6		int			NULL,    
   NumeroSemana6		int			NULL,	  
   CalculoPorSemana		int			NULL,
   GrupoPorSemana		int			NULL,
   SubTotalRegistroDiario int		NULL,
   )

  CREATE TABLE #DiasSemana(	
   ID					int	IDENTITY(1,1) NOT NULL,	                  
   DiaLetra				varchar(50)	NULL)  
  
  CREATE TABLE #FaltaAsistenciaDiaria(   
   DiaFecha				int			NULL,
   Periodo				int			NULL,
   Ejercicio			int			NULL,
   Fecha1				datetime	NULL)  

   
  SET @EjercicioInicial  = @Ejercicio - ISNULL(@NumeroAños,5)
  SET @EjercicioInicial1 = @Ejercicio - ISNULL(@NumeroAños,5)
  SET @FechaDiaPrimeroL  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)
  SET @FechaDiaPrimero   = CONVERT(datetime,@FechaDiaPrimeroL)
  SET @FechaDiaUltimo    = DATEADD (mm, 1, @FechaDiaPrimeroL)
  SET @FechaDiaUltimo    = DATEDIFF(dd, 1, @FechaDiaUltimo) 
  SET @DiaUltimo         = DATEPART(dd, @FechaDiaUltimo)	
  SET @DiaLetraCalculo   = 'Viernes'
  SET @DiaLetraCalculoVer= 'Jueves'
     
  IF @Mov IS NULL OR @Mov = ' ' OR @Mov = 'NULL' OR @Mov = 'Todo' OR @Mov = 'Todos' OR @Mov = '(Todos)'  SELECT @Mov = NULL 
  -------------------------------------
  INSERT INTO #DiasSemana 
  VALUES  ('Domingo')
  INSERT INTO #DiasSemana 
  VALUES  ('Lunes')
  INSERT INTO #DiasSemana 
  VALUES  ('Martes')
  INSERT INTO #DiasSemana 
  VALUES  ('Miércoles')
  INSERT INTO #DiasSemana 
  VALUES  ('Jueves')
  INSERT INTO #DiasSemana 
  VALUES  ('Viernes')
  INSERT INTO #DiasSemana 
  VALUES  ('Sábado')               
  
  WHILE (@Ejercicio >= @EjercicioInicial1)
  BEGIN --- E J E R C I C I O  *  E J E R C I C I O   
    SELECT @DiaPrimero = DATEPART(dd, @FechaDiaPrimero), @FechaDia = NULL     
    WHILE (@DiaUltimo >= @DiaPrimero)
    BEGIN --- D I A * D I A   
      SET @FechaDiaL  = CONVERT(varchar(4),@EjercicioInicial1) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),@DiaPrimero),2)
      SET @FechaDia   = CONVERT(datetime,@FechaDiaL)

      INSERT INTO #FaltaAsistenciaDiaria (DiaFecha,		Periodo,  Ejercicio,          Fecha1)   
      VALUES                             (@DiaPrimero,	@Periodo, @EjercicioInicial1, @FechaDia) 
      SET @DiaPrimero = @DiaPrimero + 1
    END   --- D I A * D I A   
    SET @EjercicioInicial1 = @EjercicioInicial1 + 1 
  END   --- E J E R C I C I O  *  E J E R C I C I O   
  -------------------------------------               
  INSERT INTO #AsistenciaDiariaPersonal  
  SELECT AD.Personal, AD.Registro, @Empresa, DATEPART(mm,A.FechaEmision), DATEPART(yy,A.FechaEmision), DATEPART(dd,A.FechaEmision), A.FechaEmision
    FROM Asiste A
   INNER JOIN AsisteD AD
      ON AD.ID = A.ID 
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'ASIS' AND MT1.Clave = 'ASIS.R' AND MT1.Mov = A.Mov
   WHERE A.Estatus                  =  'CONCLUIDO'
     AND A.Empresa                  =  @Empresa  
     AND DATEPART(mm,A.FechaEmision)=  @Periodo
     AND DATEPART(yy,A.FechaEmision)>  @EjercicioInicial
     AND DATEPART(yy,A.FechaEmision)<= @Ejercicio
     AND ISNULL(A.Mov,'') = ISNULL(ISNULL(@Mov,A.Mov),'') 
     AND AD.Registro      =  'Entrada'
   GROUP BY AD.Personal, AD.Registro, A.FechaEmision
   
  INSERT INTO #AsistenciaDiaria
  SELECT EmpresaCDI, Dia, Periodo, Ejercicio, Fecha, DATEPART(dw,Fecha), DATENAME(dw,Fecha), DATEPART(ww,Fecha), COUNT(0) AS RegistroDiario
    FROM #AsistenciaDiariaPersonal     
   GROUP BY EmpresaCDI,Periodo,Ejercicio,Dia,Fecha 
   ORDER BY EmpresaCDI,Fecha 

  ---- F A L T A   A S I S T E N C I A   D I A R I A 
  IF EXISTS(SELECT * FROM #AsistenciaDiaria)INSERT INTO #AsistenciaDiaria
												SELECT @Empresa, FA.DiaFecha, FA.Periodo, FA.Ejercicio, FA.Fecha1,  DATEPART(dw,FA.Fecha1), DATENAME(dw,FA.Fecha1), DATEPART(ww,FA.Fecha1), 0 AS RegistroDiario
                                                  FROM #FaltaAsistenciaDiaria FA
                                                  LEFT JOIN #AsistenciaDiaria ASP
                                                    ON ASP.DiaFechaReg = FA.DiaFecha AND ASP.Periodo = FA.Periodo AND ASP.Ejercicio = FA.Ejercicio
                                                 WHERE ISNULL(ASP.RegistroDiario,0) = 0
                                                 ORDER BY FA.Ejercicio, FA.Periodo, FA.DiaFecha

  ---- F O R M A T O
  SELECT @NumeroSemanasMax = 5, @NumeroSemanasMin = 0, @NumeroSemana1 = 0, @NumeroSemana2 = 0, @NumeroSemana3 = 0, @NumeroSemana4 = 0, @NumeroSemana5 = 0, @NumeroSemana6 = 0, @CalculoPorSemana = 0
  WHILE (@NumeroSemanasMax >= @NumeroSemanasMin)
  BEGIN       
    SELECT @NumeroSemana1  = MIN(NumeroSemana) FROM #AsistenciaDiaria WHERE NumeroSemana > @NumeroSemana1 AND Ejercicio = @Ejercicio-5
    SELECT @NumeroSemana2  = MIN(NumeroSemana) FROM #AsistenciaDiaria WHERE NumeroSemana > @NumeroSemana2 AND Ejercicio = @Ejercicio-4
    SELECT @NumeroSemana3  = MIN(NumeroSemana) FROM #AsistenciaDiaria WHERE NumeroSemana > @NumeroSemana3 AND Ejercicio = @Ejercicio-3
    SELECT @NumeroSemana4  = MIN(NumeroSemana) FROM #AsistenciaDiaria WHERE NumeroSemana > @NumeroSemana4 AND Ejercicio = @Ejercicio-2
    SELECT @NumeroSemana5  = MIN(NumeroSemana) FROM #AsistenciaDiaria WHERE NumeroSemana > @NumeroSemana5 AND Ejercicio = @Ejercicio-1 
    SELECT @NumeroSemana6  = MIN(NumeroSemana) FROM #AsistenciaDiaria WHERE NumeroSemana > @NumeroSemana6 AND Ejercicio = @Ejercicio
    INSERT INTO #Formato (	EmpresaCDI,
							DiaFechaReg1,	
                            RegistroDiario1,
                            DiadlaSemana1, 
                            DiadlaSemanaLetra1, Periodo1,	Ejercicio1,		NumeroSemana1,	
                            DiaFechaReg2,  
                            RegistroDiario2,  
                            DiadlaSemana2,
							DiadlaSemanaLetra2, Periodo2,	Ejercicio2,		NumeroSemana2,
                            DiaFechaReg3,
                            RegistroDiario3,
                            DiadlaSemana3,
	                        DiadlaSemanaLetra3, Periodo3,	Ejercicio3,		NumeroSemana3,		
                            DiaFechaReg4,
                            RegistroDiario4,
                            DiadlaSemana4,
							DiadlaSemanaLetra4, Periodo4,	Ejercicio4,		NumeroSemana4,                              
                            DiaFechaReg5,
							RegistroDiario5,	
                            DiadlaSemana5, 
                            DiadlaSemanaLetra5, Periodo5,	Ejercicio5,		NumeroSemana5,		
                            DiaFechaReg6,
                            RegistroDiario6,
                            DiadlaSemana6,
							DiadlaSemanaLetra6, Periodo6,	Ejercicio6,		NumeroSemana6,
                            CalculoPorsemana)
    SELECT                  @Empresa,
							(SELECT A.DiaFechaReg    FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana1 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-5),
                            (SELECT A.RegistroDiario FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana1 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-5), 
                            (SELECT A.DiadlaSemana   FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana1 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-5),  
                            DS.DiaLetra,		@Periodo,	@Ejercicio-5,	@NumeroSemana1,	
                            (SELECT A.DiaFechaReg    FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana2 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-4),
                            (SELECT A.RegistroDiario FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana2 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-4), 
                            (SELECT A.DiadlaSemana   FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana2 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-4), 
                            DS.DiaLetra,		@Periodo,	@Ejercicio-4,	@NumeroSemana2,	
                            (SELECT A.DiaFechaReg    FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana3 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-3),   
                            (SELECT A.RegistroDiario FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana3 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-3),   
                            (SELECT A.DiadlaSemana   FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana3 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-3),   
                            DS.DiaLetra,		@Periodo,	@Ejercicio-3,	@NumeroSemana3,	
                            (SELECT A.DiaFechaReg    FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana4 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-2),
                            (SELECT A.RegistroDiario FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana4 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-2),
                            (SELECT A.DiadlaSemana   FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana4 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-2),
                            DS.DiaLetra,		@Periodo,	@Ejercicio-2,	@NumeroSemana4,	
                            (SELECT A.DiaFechaReg    FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana5 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-1),
                            (SELECT A.RegistroDiario FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana5 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-1), 
                            (SELECT A.DiadlaSemana   FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana5 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio-1), 
                            DS.DiaLetra,		@Periodo,	@Ejercicio-1,	@NumeroSemana5,	
                            (SELECT A.DiaFechaReg    FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana6 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio),
                            (SELECT A.RegistroDiario FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana6 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio), 
                            (SELECT A.DiadlaSemana   FROM #AsistenciaDiaria A WHERE A.NumeroSemana = @NumeroSemana6 AND A.DiadlaSemanaLetra = DS.DiaLetra AND A.Periodo = @Periodo AND A.Ejercicio = @Ejercicio), 
							DS.DiaLetra,		@Periodo,	@Ejercicio,		@NumeroSemana6,
                            CASE WHEN @DiaLetraCalculoVer = DS.DiaLetra THEN 1 ELSE 0 END                            
      FROM #DiasSemana DS

    SELECT @NumeroSemanasMin = @NumeroSemanasMin + 1                

  END
  --------------------------------------------
  --- S U B T O T A L   P O R  S E M A N A ---
  --------------------------------------------
  SELECT @RenglonMax = MAX(ID)FROM #Formato
  SELECT @RenglonMin = MIN(ID)FROM #Formato
  SELECT @CalculoPorSemana = 1   
  WHILE (@RenglonMax > @RenglonMin)
  BEGIN       
    SELECT @DiadlaSemanaLetra6 = DiadlaSemanaLetra6 FROM #Formato WHERE ID = @RenglonMin
     
    IF @DiaLetraCalculo = @DiadlaSemanaLetra6 SELECT @CalculoPorSemana = @CalculoPorSemana + 1   

    UPDATE #Formato SET GrupoPorSemana =  @CalculoPorSemana WHERE ID = @RenglonMin

    IF @DiaLetraCalculo = @DiadlaSemanaLetra6
    BEGIN
      SELECT @RegistroDiario6 = SUM(RegistroDiario6) FROM #Formato  WHERE GrupoPorSemana = @CalculoPorSemana - 1
      UPDATE #Formato SET SubTotalRegistroDiario = @RegistroDiario6 WHERE GrupoPorSemana = @CalculoPorSemana - 1 AND DiadlaSemanaLetra6 = @DiaLetraCalculoVer AND ISNULL(DiaFechaReg6,0) <> 0
    END    
    SELECT @RenglonMin = @RenglonMin + 1    
  END

  --SELECT * FROM #AsistenciaDiaria ORDER BY Ejercicio, DiaFechaReg
  SELECT * FROM #Formato ORDER BY EmpresaCDI
    
RETURN 
END
GO

--EXEC spCDIRepAsistenciaDiaria 'DEMO', '',12, 2010, 6

