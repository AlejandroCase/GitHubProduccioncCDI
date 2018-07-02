SET ANSI_NULLS OFF
SET QUOTED_IDENTIFIER OFF
SET DATEFIRST 7
GO

/**************** spEliminaCEPlan ****************/
if exists (select * from sysobjects where id = object_id('dbo.spEliminaCEPlan') and type = 'P') drop procedure dbo.spEliminaCEPlan
GO
CREATE PROCEDURE spEliminaCEPlan
	@Estacion		int

AS
BEGIN

	DELETE CEPlanAsigna WHERE Estacion = @Estacion
	DELETE CEPlanAsigna2 WHERE Estacion = @Estacion

RETURN
END
GO

-- spCEAsignaMateria '100', 'DEMO', 0.0, 28.0, '1234567890', '1', 'C3', '0'
/**************** spCEAsignaMateria ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEAsignaMateria') and type = 'P') drop procedure dbo.spCEAsignaMateria
GO
CREATE PROCEDURE spCEAsignaMateria
	@Estacion		  int,
	@Empresa		  char(5),
	@Sucursal		  int,
	@ID			      int,
	@Programa		  char(10),
	@Plan			    char(10),
	@EnSilencio		bit = 0,
	@Ok           int = NULL OUTPUT,
	@OkRef        varchar(255) = NULL OUTPUT

AS
BEGIN
	DECLARE
	@Alumno			char(10),
	@Personal		char(10),
	@Cliente		char(10),
	@TipoCte		char(15),
	@RamaCte		char(10),
	@Contacto		char(10),
	@ContactoTipo	char(15),
	@Renglon		float,
	@Materia		char(10),
	@Grupo			char(10),
	@Profesor		char(10),
	@Horario		varchar(30),
	@Espacio		char(10),
	@Precio			float,
	@ListaPrecios	varchar(20),
	@Moneda			char(10),
	@Disponible		int,
	@Directo		bit,	
	@Descuento		varchar(30),
	@DescGlobal		money,
	@Mensaje		varchar(255),
    --- E M M 
    @IDH	        int,
    @ModuloH		varchar(15),
	@HorarioH		varchar(30),	 
    --- E M M


	---  M A L L    
    @ComiteMov		VARCHAR (50),
	@CEPlanMov		VARCHAR (50),
	@ComitePlan		VARCHAR (50)
    ---  M A L L    

  DELETE FROM ListaIDOk WHERE Estacion = @Estacion

	SELECT @Directo = CreditoDirecto FROM CEPlan WHERE CEPlan = @Plan
	SELECT @Cliente = NULLIF(Cliente,''), @Personal = NULLIF(Personal,''), @Moneda = Moneda
	  FROM CE WHERE ID = @ID
	IF @Cliente is not null
	  SELECT @TipoCte = ISNULL(Tipo,''), @RamaCte = ISNULL(Rama,''), @Descuento = Descuento
	    FROM Cte WHERE Cliente = @Cliente
	    
    IF @Descuento IS NOT NULL
      SELECT @DescGlobal = d.Porcentaje FROM Descuento d WHERE d.Descuento = @Descuento

	SELECT @Alumno = @Cliente

	IF @Alumno is null AND @Personal is not null
   	  SELECT @Contacto = @Personal, @ContactoTipo = 'Personal'
  	ELSE
    	  SELECT @Contacto = @Cliente, @ContactoTipo = 'Cliente'

	IF @Directo = 0
	SELECT @Materia = ISNULL(Materia,''), @Grupo = Grupo FROM CEPlanAsigna WHERE Estacion = @Estacion
	ELSE
	SELECT @Grupo = Grupo FROM CEPlanAsigna2 WHERE Estacion = @Estacion

	SELECT @Espacio = Espacio, @Profesor = Profesor, @Horario = Horario, @Disponible = ISNULL(Disponible,0) 
	  FROM CEProgramaD
	 WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

	IF @Alumno is not null AND @Personal is not null
		BEGIN
			SELECT @Ok = 10060, @OkRef = 'Solo puede indicar el Alumno o una Persona, pero no ambos'
			--RETURN
		END

	IF @Alumno is null AND @Personal is null
		BEGIN
			SELECT @Ok = 10060, @OkRef = 'Falta indicar el Alumno o la Persona'
			--RETURN
		END
		
		
	--V A L I D A     C O M I T E   C O R R E C T O ----

	SELECT @ComiteMov= c.Proyecto, @CEPlanMov=c.CEPlan  FROM CE c WHERE id=@Id
	
	SELECT @ComitePlan= c.CDIComite  FROM CEPlan c WHERE c.CEPlan=@CEPlanMov
	
	IF @ComiteMov <> @ComitePlan
   	 SELECT @Ok = 10060, @OkRef = ': Seleccionaste el Comité ' + @ComiteMov + ' y el curso pertenece al Comité ' + @ComitePlan
  
	--V A L I D A     C O M I T E   C O R R E C T O ----

		
		

--	IF @Disponible < 1
--		BEGIN
--			SELECT 'No hay cupo en este Grupo. Indique otro.'
--			RETURN
--		END

	IF @Directo = 0
	BEGIN 
		IF EXISTS(SELECT c.Dependencia, a.Materia
		    FROM CEPlanD d
	  	    JOIN CEMateriaDependencia c ON d.CEPlan = c.CEPlan AND d.Materia = c.Materia AND d.CEPlan = @Plan AND d.Materia = @Materia
		    LEFT OUTER JOIN CEAlumnoHist a ON d.CEPlan = a.CEPlan AND c.Dependencia = a.Materia AND a.Empresa = @Empresa AND a.Alumno = @Contacto AND a.AlumnoTipo = @ContactoTipo AND a.Estatus = 'APROBADO'
	 	   GROUP BY c.Dependencia, a.Materia
		  HAVING a.Materia is null)
		BEGIN
			--SELECT 'No puede Asignar la Materia. Hay dependencias que no ha aprobado.'
			SELECT @Ok = 10060, @OkRef = 'No puede Asignar el Curso. Hay dependencias que no ha aprobado.'
			--RETURN
		END
	END

	IF @Directo = 0 AND Exists(SELECT * FROM CEAlumnoHist WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION') AND ISNULL(Materia,'') = ISNULL(@Materia,''))
	  BEGIN
	    --SELECT 'La Materia ya fue Aprobada o Asignada en el Programa Actual.'
	    SELECT @Ok = 10060, @OkRef = 'El Curso ya fue Aprobado o Asignado en el Programa Actual.'
	    --RETURN
	  END

	IF @Directo = 1 AND Exists(SELECT * FROM CEAlumnoHist WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION')AND  Grupo= @Grupo AND Programa =@Programa )
	BEGIN
      --- E M M
      IF EXISTS (SELECT * FROM CEAlumnoHist WHERE Empresa = @Empresa AND Alumno  = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION') AND Modulo = 'CE') 
      BEGIN --- C E
        SELECT @IDH = ModuloID,  @ModuloH = Modulo FROM CEAlumnoHist WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION') AND Grupo = @Grupo AND Programa = @Programa
        SELECT @HorarioH = Horario FROM CED WHERE ID = @IDH
        IF @HorarioH = @Horario SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ya fue Aprobado o Asignado en el Programa Actual.' 
      END   --- C E
      --- E M M 
      ELSE        
	    SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ya fue Aprobado o Asignado en el Programa Actual.'
	  --RETURN
	END

	IF @Directo = 0 AND Exists(SELECT * FROM CED WHERE ID = @ID AND Materia = @Materia)
		BEGIN
			--SELECT 'La Materia ya esta Asignada al Movimiento'
			SELECT @Ok = 10060, @OkRef = 'El Curso ya esta Asignada al Movimiento'
--			RETURN
		END

  IF @Ok IS NULL
  BEGIN
	  BEGIN TRAN

		SELECT @Renglon = Max(Renglon) FROM CED WHERE ID = @ID
	
		SELECT @Renglon = ISNULL(@Renglon,0) + 2048
	
		IF @Directo = 1
		  BEGIN
		    -- SELECT @Precio = Precio FROM CEPlanPrecio WHERE CEPlan = @Plan AND ISNULL(ClienteTipo,'') = @TipoCte AND ISNULL(Rama,'') = @RamaCte
		    --IF ISNULL(@Precio,0) = 0
		    SELECT @Precio = Precio FROM CEPlan WHERE CEPlan = @Plan
		  END
		ELSE
		  BEGIN
		    ---SELECT @Precio = Precio FROM CEMateriaPrecio WHERE Materia = @Materia AND ISNULL(ClienteTipo,'') = @TipoCte AND ISNULL(Rama,'') = @RamaCte
		    SELECT @Precio = Precio FROM CEPlanD WHERE CEPlan = @Plan AND Materia = @Materia
		    IF ISNULL(@Precio,0) = 0
		      SELECT @Precio = Precio FROM CEMateria WHERE Materia = @Materia
		  END
	
		INSERT INTO CED(ID, Renglon, CEPlan, Materia, Grupo, Espacio, Profesor, Horario, Sucursal, Precio, Reservado, DescuentoLineal)
			SELECT @ID, @Renglon, @Plan, ISNULL(@Materia,''), @Grupo, @Espacio, @Profesor, @Horario, @Sucursal, @Precio, 1, @DescGlobal
	
		UPDATE CEProgramaD SET Reservado = ISNULL(Reservado,0) + 1, Disponible = ISNULL(Disponible,0) - 1
		  WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

		COMMIT TRAN
		
  END

  IF @EnSilencio = 0
  BEGIN
  	IF @Ok IS NULL
		  SELECT 'Curso Reservado'
--		SELECT 'Materia Reservada'

		ELSE
		BEGIN
			SELECT @Mensaje = ml.Descripcion FROM MensajeLista ml WHERE ml.Mensaje = @Ok
			SELECT @Mensaje = RTRIM(ISNULL(@Mensaje, '')) + ' ' + RTRIM(@OkRef)
			SELECT @Mensaje
		END
  END
  
  RETURN
END
GO

/**************** spCESugierePlantilla ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCESugierePlantilla') and type = 'P') drop procedure dbo.spCESugierePlantilla
GO
CREATE PROCEDURE spCESugierePlantilla
	@Estacion		int,
	@Empresa		char(5),
	@Sucursal		int,
	@Programa		char(10),
	@Plan			char(10),
	@Grupo			char(10),
	@Grado			int

AS
BEGIN
	DECLARE
	@Directo		bit

	DELETE CEPlanAsignaPlantilla WHERE Estacion = @Estacion

	SELECT @Directo = CreditoDirecto FROM CEPlan WHERE CEPlan = @Plan

	IF @Directo = 1
	BEGIN
	  SELECT 'La Plantilla solo se utiliza cuando el Plan de Estudios incluye Materias'
	  RETURN
	END

	INSERT INTO CEPlanAsignaPlantilla(Estacion, Materia, Grupo, Espacio, Profesor, Horario, Sucursal)
          SELECT @Estacion, p.Materia, p.Grupo, p.Espacio, p.Profesor, p.Horario, p.Sucursal
	    FROM CEProgramaD p, CEMateria m
	   WHERE p.Materia = m.Materia
	     AND p.Empresa = @Empresa AND p.Sucursal = @Sucursal
	     AND p.Programa = @Programa AND p.CEPlan = @Plan
	     AND p.Grupo = @Grupo AND m.Grado = @Grado

RETURN
END
GO

/**************** spCEAsignaPlantilla ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEAsignaPlantilla') and type = 'P') drop procedure dbo.spCEAsignaPlantilla
GO
CREATE PROCEDURE spCEAsignaPlantilla
	@Empresa		char(5),
	@Sucursal		int,
	@Estacion		int,
	@ID			int,
	@Programa		char(10),
	@Plan			char(10)

AS
BEGIN
	DECLARE
	@Alumno			char(10),
	@Personal		char(10),
	@Cliente		char(10),
	@TipoCte		char(15),
	@RamaCte		char(10),
	@Contacto		char(10),
	@ContactoTipo		char(15),
	@Renglon		float,
	@Materia		char(10),
	@Grupo			char(10),
	@Profesor		char(10),
	@Horario		varchar(30),
	@Espacio		char(10),
	@Precio			float,
	@Disponible		int,
	@Directo		bit,
	@OK			int,
	@OkRef			varchar(255)

	SELECT @Cliente = NULLIF(Cliente,''), @Personal = NULLIF(Personal,'') FROM CE WHERE ID = @ID
	IF @Cliente is not null
	  SELECT @TipoCte = ISNULL(Tipo,''), @RamaCte = ISNULL(Rama,'') FROM Cte WHERE Cliente = @Cliente

	SELECT @Alumno = @Cliente

	IF @Alumno is null AND @Personal is not null
   	  SELECT @Contacto = @Personal, @ContactoTipo = 'Personal'
  	ELSE
    	  SELECT @Contacto = @Cliente, @ContactoTipo = 'Cliente'

	IF @Alumno is not null AND @Personal is not null
	BEGIN
	  SELECT @OkRef = 'Solo puede indicar el Alumno o una Persona, pero no ambos'
	  RETURN
	END	

	IF @Alumno is null AND @Personal is null
	BEGIN
	  SELECT 'Falta indicar el Alumno o la Persona'
	  RETURN
	END

	SELECT @OK = NULL

	BEGIN TRAN

          DECLARE crCEAsignaPlantilla CURSOR FOR
	  SELECT p.Materia, p.Grupo, p.Espacio, p.Profesor, p.Horario, p.Sucursal
	    FROM ListaID l, CEPlanAsignaPlantilla p
	   WHERE l.Estacion = p.Estacion
	     AND l.ID = p.ID
	     AND l.Estacion = @Estacion

	  SELECT @Renglon = Max(Renglon) FROM CED WHERE ID = @ID

	  OPEN crCEAsignaPlantilla
	  FETCH NEXT FROM crCEAsignaPlantilla INTO @Materia, @Grupo, @Espacio, @Profesor, @Horario, @Sucursal
	  WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	  BEGIN 

	    SELECT @Renglon = ISNULL(@Renglon,0) + 2048

	    IF EXISTS(SELECT c.Dependencia, a.Materia
		        FROM CEPlanD d
	  	        JOIN CEMateriaDependencia c ON d.CEPlan = c.CEPlan AND d.Materia = c.Materia AND d.CEPlan = @Plan AND d.Materia = @Materia
		        LEFT OUTER JOIN CEAlumnoHist a ON d.CEPlan = a.CEPlan AND c.Dependencia = a.Materia AND a.Empresa = @Empresa AND a.Alumno = @Contacto AND a.AlumnoTipo = @ContactoTipo AND a.Estatus = 'APROBADO'
	 	        GROUP BY c.Dependencia, a.Materia
		       HAVING a.Materia is null)
	      SELECT @OK = 1, @OKRef = 'No puede Asignar la Materia ' + RTRIM(@Materia) + '. Hay dependencias que no ha aprobado.'
	    ELSE
	    IF Exists(SELECT * FROM CEAlumnoHist WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION') AND ISNULL(Materia,'') = ISNULL(@Materia,''))
	      SELECT @OK = 1, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya fue Aprobada o Asignada en el programa Actual.'
	    IF Exists(SELECT * FROM CED WHERE ID = @ID AND Materia = @Materia)
	      SELECT @OK = 1, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya esta Asignada al Movimiento'
	
	    -- Calcula Precio
	    SELECT @Precio = NULL
	    SELECT @Precio = Precio FROM CEMateriaPrecio WHERE Materia = @Materia AND ISNULL(ClienteTipo,'') = @TipoCte AND ISNULL(Rama,'') = @RamaCte
	    IF ISNULL(@Precio,0) = 0
	      -- SELECT @Precio = Precio FROM CEPlanD WHERE CEPlan = @Plan AND Materia = @Materia
	      SELECT @Precio = Precio FROM CEMateria WHERE Materia = @Materia
	
	    INSERT INTO CED(ID, Renglon, CEPlan, Materia, Grupo, Espacio, Profesor, Horario, Sucursal, Precio, Reservado)
		    SELECT @ID, @Renglon, @Plan, ISNULL(@Materia,''), @Grupo, @Espacio, @Profesor, @Horario, @Sucursal, @Precio, 1
	
	     UPDATE CEProgramaD SET Reservado = ISNULL(Reservado,0) + 1, Disponible = ISNULL(Disponible,0) - 1
		  WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

	     FETCH NEXT FROM crCEAsignaPlantilla INTO @Materia, @Grupo, @Espacio, @Profesor, @Horario, @Sucursal
	   END

	   CLOSE crCEAsignaPlantilla
	   DEALLOCATE crCEAsignaPlantilla

  IF @OK is null
  BEGIN
    COMMIT TRAN
    SELECT @OKRef = 'Plantilla Reservada'
    SELECT @OkRef
  END
  ELSE
  BEGIN
    ROLLBACK TRAN
    SELECT @OkRef
  END

RETURN
END
GO


/**************** spCEGenerarCalendario ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEGenerarCalendario') and type = 'P') drop procedure dbo.spCEGenerarCalendario
GO

CREATE PROCEDURE spCEGenerarCalendario
		@ID		int,
		@Accion  	char(20),
		@Modulo		char(10),
		@EnFirme	bit = 0,
		@Ok		int		OUTPUT,
		@OkRef		varchar(255)	OUTPUT,
		@EnSilencio	bit = 1


-- WITH ENCRYPTION
AS BEGIN
  DECLARE
    @FechaD		datetime,
    @FechaA		datetime,

    @FechaMovD		datetime,
    @FechaMovA		datetime,

    @Empresa		char(5),
    @Sucursal		int,
    @Programa		varchar(10),
    @Domingo 		bit,
    @Lunes   		bit,
    @Martes  		bit,
    @Miercoles		bit,
    @Jueves		bit,
    @Viernes		bit,
    @Sabado		bit,

    @Plan		char(10),
    @Materia		char(10),
    @Grupo		char(10),
    @Espacio		char(10),
    @Profesor		char(10),
    @Horario		varchar(30),
    @EspacioN		char(10),
    @ProfesorN		char(10),
    @HorarioN		varchar(30),

    @HoraD		char(5),
    @HoraA		char(5),
    @DiaSemana		int, -- DATEPART(weekday, @Fecha)
    @Estatus		char(15),
    @Fecha		datetime,
    @Inicio		datetime,
    @Fin		datetime,
    @Mov		char(20),
    @MovTipo		char(10)

    SET DATEFIRST 7

	IF @EnFirme = 1 SELECT @Estatus = 'ACTIVO' ELSE SELECT @Estatus = 'BORRADOR'

	SELECT @Empresa = Empresa, @Sucursal = Sucursal, @Programa = Programa, @FechaMovD = FechaInicio, @FechaMovA = FechaFin, @Mov = Mov
          FROM CE WHERE ID = @ID

	SELECT @MovTipo = Clave FROM MovTipo WHERE Modulo = @Modulo AND Mov = @Mov

	SELECT @FechaD = FechaInicio, @FechaA = FechaFin FROM CEPrograma WHERE Programa = @Programa
	IF NOT EXISTS(SELECT * FROM CEPrograma WHERE Programa = @Programa)
	BEGIN
		SELECT @OK = 10060, @OkRef = 'No existe el Programa indicado'
		RETURN
	END
	ELSE
	IF @FechaD is null OR @FechaA is null
	BEGIN
		SELECT @OK = 10060, @OkRef = 'Es necesario indicar el rango de Fechas del Programa especificado'
		RETURN
	END
	ELSE
	IF @FechaD > @FechaMovD
	BEGIN
		SELECT @OK = 60170, @OkRef = 'La Fecha de Inicio del Movimiento no debe ser anterior a la Fecha de Inicio del Programa indicado'
		RETURN
	END
	ELSE
	IF @FechaA < @FechaMovA
	BEGIN
		SELECT @OK = 60170, @OkRef = 'La Fecha Final del Movimiento no debe ser posterior a la Fecha Final del Programa indicado'
		RETURN
	END
	ELSE
	IF @FechaD > @FechaA 
	BEGIN
		SELECT @OK = 10060, @OkRef = 'Las Fechas del Programa indicado no son correctas.'
		RETURN
	END
	
	DELETE CECalendario WHERE Estatus = 'BORRADOR' AND Modulo = @Modulo AND ModuloID = @ID -- Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')
	DELETE CECalendarioGeneral WHERE Estatus = 'BORRADOR' AND Modulo = @Modulo AND ModuloID = @ID -- AND Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')
	
	DECLARE crCECalendario CURSOR FOR
	SELECT CEPlan, ISNULL(Materia,''), Grupo, Espacio, Profesor, Horario, NULLIF(RTRIM(EspacioN), ''), NULLIF(RTRIM(ProfesorN), ''), NULLIF(RTRIM(HorarioN), '')
	  FROM CED
	 WHERE ID = @ID
	   --AND ISNULL(Horario,'') <> ''
	
	OPEN crCECalendario
	FETCH NEXT FROM crCECalendario INTO @Plan, @Materia, @Grupo, @Espacio, @Profesor, @Horario, @EspacioN, @ProfesorN, @HorarioN
	WHILE @@FETCH_STATUS = 0
	BEGIN
    IF NULLIF(RTRIM(@Plan), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM CEPlan c WHERE c.CEPlan = @Plan) = 0
        UPDATE CEPlan SET TieneMovimientos = 1 WHERE CEPlan = @Plan
          
    IF NULLIF(RTRIM(@Materia), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM CEMateria c WHERE c.Materia = @Materia) = 0
        UPDATE CEMateria SET TieneMovimientos = 1 WHERE Materia = @Materia

    IF NULLIF(RTRIM(@Espacio), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM Espacio e WHERE e.Espacio = @Espacio) = 0
        UPDATE Espacio SET TieneMovimientos = 1 WHERE Espacio = @Espacio

    IF NULLIF(RTRIM(@EspacioN), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM Espacio e WHERE e.Espacio = @EspacioN) = 0
        UPDATE Espacio SET TieneMovimientos = 1 WHERE Espacio = @EspacioN

    IF NULLIF(RTRIM(@Profesor), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM Profesor p WHERE p.Profesor = @Profesor) = 0
        UPDATE Profesor SET TieneMovimientos = 1 WHERE Profesor = @Profesor

    IF NULLIF(RTRIM(@ProfesorN), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM Profesor p WHERE p.Profesor = @ProfesorN) = 0
        UPDATE Profesor SET TieneMovimientos = 1 WHERE Profesor = @ProfesorN

		  SELECT @Fecha = @FechaMovD

	          EXEC spExtraerFecha @Fecha OUTPUT

		  IF @MovTipo = 'CE.CP' AND @Accion = 'AFECTAR'
		  SELECT @Domingo   		= Domingo, 
		         @Lunes     		= Lunes, 
		         @Martes    		= Martes, 
		         @Miercoles 		= Miercoles, 
		         @Jueves    		= Jueves, 
		         @Viernes   		= Viernes,		 
		         @Sabado    		= Sabado,
			 @HoraD			= HoraD,
			 @HoraA			= HoraA
		    FROM Horario
		   WHERE Horario = ISNULL(@HorarioN, @Horario)
                  ELSE
		  SELECT @Domingo   		= Domingo, 
		         @Lunes     		= Lunes, 
		         @Martes    		= Martes, 
		         @Miercoles 		= Miercoles, 
		         @Jueves    		= Jueves, 
		         @Viernes   		= Viernes,		 
		         @Sabado    		= Sabado,
			 @HoraD			= HoraD,
			 @HoraA			= HoraA
		    FROM Horario
		   WHERE Horario = @Horario

		IF @MovTipo = 'CE.CP' AND @Accion = 'AFECTAR'
		INSERT INTO CECalendarioGeneral(Empresa, Modulo, ModuloID, Sucursal, Programa, Espacio, Profesor, CEPlan, Grupo, Materia, Estatus, Domingo, Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, HoraD, HoraA)
					VALUES(@Empresa, @Modulo, @ID, @Sucursal, @Programa, isnull(@EspacioN,@Espacio), isnull(@ProfesorN,@Profesor), @Plan, @Grupo, @Materia, @Estatus, @Domingo, @Lunes, @Martes, @Miercoles, @Jueves, @Viernes, @Sabado, @HoraD, @HoraA)
		ELSE
		INSERT INTO CECalendarioGeneral(Empresa, Modulo, ModuloID, Sucursal, Programa, Espacio, Profesor, CEPlan, Grupo, Materia, Estatus, Domingo, Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, HoraD, HoraA)
					VALUES(@Empresa, @Modulo, @ID, @Sucursal, @Programa, @Espacio, ISNULL(@Profesor, ''), @Plan, @Grupo, @Materia, @Estatus, @Domingo, @Lunes, @Martes, @Miercoles, @Jueves, @Viernes, @Sabado, @HoraD, @HoraA)

		WHILE @Fecha <= @FechaMovA
		BEGIN
	 		IF @Fecha not in (SELECT Fecha FROM DiaFestivo WHERE EsLaborable = 0)
			BEGIN
				SELECT @Inicio = @Fecha, @Fin = @Fecha
				SELECT @DiaSemana = DATEPART(weekday, @Fecha)

				IF (@DiaSemana = 1 AND @Domingo   = 1) OR (@DiaSemana = 2 AND @Lunes  = 1) OR (@DiaSemana = 3 AND @Martes  = 1) OR
				   (@DiaSemana = 4 AND @Miercoles = 1) OR (@DiaSemana = 5 AND @Jueves = 1) OR (@DiaSemana = 6 AND @Viernes = 1) OR
				   (@DiaSemana = 7 AND @Sabado    = 1)
	
				BEGIN
					EXEC spAgregarHora @HoraD, @Inicio OUTPUT
					EXEC spAgregarHora @HoraA, @Fin OUTPUT
	
					IF @MovTipo = 'CE.CP' AND @Accion = 'AFECTAR'
					  INSERT INTO CECalendario (Empresa, Modulo, ModuloID, Sucursal, Programa, Espacio, Profesor, CEPlan, Grupo, Materia, Estatus, Inicio, Fin)
							VALUES(@Empresa, @Modulo, @ID, @Sucursal, @Programa, isnull(@EspacioN,@Espacio), isnull(@ProfesorN,@Profesor), ISNULL(@Plan,''), @Grupo, ISNULL(@Materia,''), @Estatus, @Inicio, @Fin)
					ELSE
					  INSERT INTO CECalendario (Empresa, Modulo, ModuloID, Sucursal, Programa, Espacio, Profesor, CEPlan, Grupo, Materia, Estatus, Inicio, Fin)
							VALUES(@Empresa, @Modulo, @ID, @Sucursal, @Programa, @Espacio, ISNULL(@Profesor, ''), ISNULL(@Plan,''), @Grupo, ISNULL(@Materia,''), @Estatus, @Inicio, @Fin)

				END
			END
	
			SELECT @Fecha = DATEADD(day, 1, @Fecha)

		END

			FETCH NEXT FROM crCECalendario INTO @Plan, @Materia, @Grupo, @Espacio, @Profesor, @Horario, @EspacioN, @ProfesorN, @HorarioN
	END

	CLOSE crCECalendario
	DEALLOCATE crCECalendario

  IF @EnSilencio = 0
    SELECT NULL

  RETURN
END
GO

/**************** xpAfectarOtrosModulos ****************/
if exists (select * from sysobjects where id = object_id('dbo.xpAfectarOtrosModulos') and type = 'P') drop procedure dbo.xpAfectarOtrosModulos
GO
CREATE PROCEDURE xpAfectarOtrosModulos
           @ID              int,
   		   @Modulo	      	char(5),
		   @Accion			char(20),
		   @Base			char(20),
		   @FechaRegistro	datetime,
		   @GenerarMov		char(20),
		   @Usuario			char(10), 
   		   @Conexion		bit,
		   @SincroFinal		bit,
   		   @Mov	      		char(20)	OUTPUT,
   		   @MovID           varchar(20)	OUTPUT,
		   @IDGenerar		int			OUTPUT,

		   @Ok				int			OUTPUT,
		   @OkRef			varchar(255)	OUTPUT,
           @Estacion		int 
AS BEGIN

  IF @Modulo = 'CE' AND @Ok IS NULL
    EXEC spCE @ID, @Modulo, @Accion, @Base, @FechaRegistro, @GenerarMov, @Usuario, @Conexion, @SincroFinal, 
              @Mov OUTPUT, @MovID OUTPUT, @IDGenerar OUTPUT, 
              @Ok OUTPUT, @OkRef OUTPUT
  ELSE
  IF @Modulo = 'CA' AND @Ok IS NULL
    EXEC spCA @ID, @Modulo, @Accion, @Base, @FechaRegistro, @GenerarMov, @Usuario, @Conexion, @SincroFinal, 
              @Mov OUTPUT, @MovID OUTPUT, @IDGenerar OUTPUT, 
              @Ok OUTPUT, @OkRef OUTPUT
  ELSE
  IF @Modulo = 'SOC' AND @Ok IS NULL 
    EXEC spSocio @ID, @Modulo, @Accion, @Base, @FechaRegistro, @GenerarMov, @Usuario, @Conexion, @SincroFinal, 
    	         @Mov OUTPUT, @MovID OUTPUT, @IDGenerar	OUTPUT,
		         @Ok OUTPUT, @OkRef OUTPUT
  ELSE 	
    SELECT @Ok = 70020, @OkRef = @Modulo 

  RETURN
END 
GO

/**************** spCE ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCE') and type = 'P') drop procedure dbo.spCE
GO
CREATE PROCEDURE spCE
        @ID                  	int,
        @Modulo	      		    char(5),
        @Accion			          char(20),
        @Base			            char(20),
        @FechaRegistro		    datetime,
        @GenerarMov			      char(20),
        @Usuario			        char(10),
        @Conexion			        bit,
        @SincroFinal			    bit,
        @Mov	      			    char(20)	    OUTPUT,
        @MovID            		varchar(20)	  OUTPUT,
        @IDGenerar			      int		        OUTPUT,

        @Ok				            int		        OUTPUT,
        @OkRef			          varchar(255)	OUTPUT
-- WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
    @Sucursal		              int,
    @SucursalDestino	        int,
    @SucursalOrigen	          int,
--    @EnLinea		            bit,
--    @PuedeEditar	          bit,
    @Empresa	      	        char(5),
    @MovTipo   		            char(20),
    @MovMoneda		            char(10),
    @MovTipoCambio	          float,
    @PrecioMoneda	            char(10),
    @PrecioTipoCambio	        float,
    @FechaEmision     	      datetime,
    @FechaAfectacion	        datetime,
    @FechaConclusion	        datetime,
    @Proyecto	      	        varchar(50),
    @MovUsuario	      	      char(10),
    @Autorizacion     	      char(10),
    @Observaciones    	      varchar(255),
    @Estatus          	      char(15),
    @EstatusNuevo	            char(15),
    @Ejercicio	      	      int,
    @Periodo	      	        int,
    @Concepto		              varchar(50),
    @Referencia  	            varchar(50),
    @Importe		              money,
    @Impuestos		            money,
    @FechaInicio	            datetime,
    @FechaFin		              datetime,

    @Cliente		              char(10),
    @Cliente2		              char(10),
    @Porcentaje		            float,
    @Porcentaje2	            float,
    @Personal		              char(10),
    @Plan		                  char(10),
    @CreditoDirecto	          bit,
    @Materia		              char(10),
    @Grupo		                char(10),
    @Reservado		            int,
    @Programa		              char(10),
    @Condicion		            varchar(50),
    @Descuento		            varchar(50),
    @GenerarMovID	            varchar(20)
--    @GenerarPoliza	bit,
--    @CfgContX		bit,
--    @CfgContXGenerar	char(20)/*,
--    @Verificar		bit*/

  -- Leer Datos Generales del Movimiento
  SELECT @Sucursal = Sucursal, --@SucursalDestino = SucursalDestino, @SucursalOrigen = SucursalOrigen, 
         @Empresa = Empresa, @MovID = MovID, @Mov = Mov, @FechaEmision = FechaEmision, @Proyecto = Proyecto,
         @MovUsuario = Usuario, @Autorizacion = Autorizacion, 
         @MovMoneda = Moneda, @MovTipoCambio = TipoCambio, 
         @Observaciones = Observaciones, @Estatus = UPPER(Estatus), 
         @FechaInicio = FechaInicio, @FechaFin = FechaFin,
         @Cliente = NULLIF(RTRIM(Cliente), ''), @Cliente2 = NULLIF(RTRIM(Cliente2), ''), @Porcentaje = ISNULL(Porcentaje,0), @Porcentaje2 = ISNULL(Porcentaje2,0), @Personal = NULLIF(Personal,''), 
	 @Plan = NULLIF(RTRIM(CEPlan), ''), @Programa = NULLIF(RTRIM(Programa), ''), 
	 @Condicion = NULLIF(RTRIM(Condicion), ''), @Descuento = NULLIF(RTRIM(Descuento), ''),
         @Concepto = Concepto, @Referencia = Referencia, 
         @FechaConclusion = FechaConclusion
    FROM CE
   WHERE ID = @ID
  IF @@ERROR <> 0 SELECT @Ok = 1

  SELECT @CreditoDirecto = CreditoDirecto FROM CEPlan WHERE CEPlan = @Plan

  IF NULLIF(RTRIM(@Usuario), '') IS NULL SELECT @Usuario = @MovUsuario
  -- Leer MovTipo, Periodo y Ejercicio	
  IF @Accion = 'AFECTAR' SELECT @FechaAfectacion = @FechaEmision ELSE SELECT @FechaAfectacion = @FechaRegistro
--  EXEC spFechaAfectacion @Empresa, @Modulo, @ID, @Accion, @FechaEmision OUTPUT, @FechaRegistro, @FechaAfectacion OUTPUT
  EXEC spExtraerFecha @FechaAfectacion OUTPUT
  EXEC spExtraerFecha @FechaInicio OUTPUT
  EXEC spExtraerFecha @FechaFin OUTPUT

  EXEC spMovTipo @Modulo, @Mov, @FechaAfectacion, NULL, NULL, NULL, @MovTipo OUTPUT, @Periodo OUTPUT, @Ejercicio OUTPUT, @Ok OUTPUT
-- Valida Fechas
  EXEC spMovOk @SincroFinal, @ID, @Estatus, @Sucursal, @Accion, @Empresa, @Usuario, @Modulo, @Mov, @FechaAfectacion, @FechaRegistro, @Ejercicio, @Periodo, @Proyecto, @Ok OUTPUT, @OkRef OUTPUT

/*
  IF @Ok IS NULL
  BEGIN
    IF @SucursalDestino IS NOT NULL AND @SucursalDestino <> @Sucursal AND @Accion = 'AFECTAR'
    BEGIN
      EXEC spSucursalEnLinea @SucursalDestino, @EnLinea OUTPUT
      IF @EnLinea = 1 
      BEGIN
        EXEC spMovConsecutivo @Sucursal, @SucursalOrigen, @SucursalDestino, @Empresa, @Usuario, @Modulo, @Ejercicio, @Periodo, @ID, @Mov, NULL, @Estatus, @Concepto, @Accion, @Conexion, @SincroFinal, @MovID OUTPUT, @Ok OUTPUT, @OkRef OUTPUT
        EXEC spAsignarSucursalEstatus @ID, @Modulo, @SucursalDestino, NULL
        SELECT @Sucursal = @SucursalDestino
      END ELSE
        SELECT @Accion = 'SINCRO'
    END

    IF @Estatus = 'SINCRO' AND @Accion = 'CANCELAR'
    BEGIN
      EXEC spPuedeEditarMovMatrizSucursal @Sucursal, @SucursalOrigen, @ID, @Modulo, @Empresa, @Usuario, @Mov, @Estatus, 1, @PuedeEditar OUTPUT
      IF @PuedeEditar = 0 
        SELECT @Ok = 60300 
      ELSE BEGIN
--        SELECT @Estatus = 'SINAFECTAR'--, @Verificar = 0
        EXEC spAsignarSucursalEstatus @ID, @Modulo, @Sucursal, @Estatus
      END
    END
  END
*/

  IF (@Accion <> 'CANCELAR' AND @Estatus IN ('SINAFECTAR', 'PENDIENTE', 'VIGENTE')) OR 
     (@Accion = 'CANCELAR'  AND @Estatus IN ('CONCLUIDO',  'PENDIENTE', 'VIGENTE', 'AUTORIZADO'))
  BEGIN
/*
    SELECT @CfgContX = ContX
      FROM EmpresaGral
     WHERE Empresa = @Empresa
    IF @@ERROR <> 0 SELECT @Ok = 1

    IF @CfgContX = 1 
      SELECT @CfgContXGenerar = ContXGenerar
        FROM EmpresaCfgModulo
       WHERE Empresa = @Empresa
         AND Modulo  = @Modulo
    IF @@ERROR <> 0 SELECT @Ok = 1
*/
    IF @Accion = 'CANCELAR' 
      SELECT @EstatusNuevo = 'CANCELADO' 
    ELSE
    IF @Accion = 'AFECTAR' AND @MovTipo IN ('CE.P', 'CE.BES')
    BEGIN
    	IF @Estatus = 'SINAFECTAR'
        SELECT @EstatusNuevo = 'PENDIENTE'
      ELSE
        SELECT @EstatusNuevo = 'CONCLUIDO'
    END
    ELSE
    IF @Accion = 'AUTORIZAR' AND @MovTipo IN ('CE.BES')
      SELECT @EstatusNuevo = 'AUTORIZADO'
    ELSE
    IF @Accion = 'RECHAZAR' AND @MovTipo IN ('CE.BES')
      SELECT @EstatusNuevo = 'RECHAZADO'
    ELSE
    	SELECT @EstatusNuevo = 'CONCLUIDO'

    -- Verificar antes de Afectar
    EXEC spCEVerificar @ID, @Accion, @Empresa, @Usuario, @Modulo, @Mov, @MovID, @MovTipo, @MovMoneda, @MovTipoCambio,
                       @FechaEmision, @Estatus, 
                       @FechaInicio, @FechaFin,
                       @Cliente, @Cliente2, @Personal, @Condicion, @Descuento, @Porcentaje, @Porcentaje2,
                       @Plan, @CreditoDirecto, @Programa, 
                       @Conexion, @SincroFinal, @Sucursal, 
                       @Ok OUTPUT, @OkRef OUTPUT

      -- Quitar los mensajes cuando la afectacion es normal 
    IF @Ok BETWEEN 80000 AND 89999 AND @Accion IN ('AFECTAR', 'CANCELAR', 'AUTORIZAR', 'RECHAZAR') SELECT @Ok = NULL ELSE

      -- Si Verifico y todo estuvo bien
    IF @Accion = 'VERIFICAR' AND @Ok IS NULL SELECT @Ok = 80000
    
    IF @Accion IN ('AFECTAR', 'CANCELAR', 'CONSECUTIVO', 'AUTORIZAR', 'RECHAZAR') AND @Ok IS NULL
      EXEC spCEAfectar  @ID, @Accion, @Empresa, @Modulo, @Mov, @MovID OUTPUT, @MovTipo, @MovMoneda, @MovTipoCambio, 
                        @FechaEmision, @FechaAfectacion, @FechaConclusion,
                        @Proyecto, @Usuario, @Autorizacion, @Observaciones, 
                        @Estatus, @EstatusNuevo, @FechaRegistro, @Ejercicio, @Periodo, 
                        @FechaInicio, @FechaFin,
                        @Cliente, @Cliente2, @Personal, @Condicion, @Descuento, @Concepto, @Referencia, @Porcentaje, @Porcentaje2,
                        @Plan, @CreditoDirecto, @Programa,
                        @SincroFinal, @Sucursal, @Conexion, 
                        @GenerarMov OUTPUT, @IDGenerar OUTPUT, @GenerarMovID OUTPUT,
                        @Ok OUTPUT, @OkRef OUTPUT
 
  END ELSE 
  BEGIN
    IF @Estatus = 'SINAFECTAR' AND @Accion = 'CANCELAR' /*EXEC spMovCancelarSinAfectar @Modulo, @ID, @Ok OUTPUT ELSE*/ AND @OK is NULL
-- Sustituye spMovCancelarSinAfectar
    BEGIN
      BEGIN TRANSACTION
	    UPDATE CE SET Estatus = 'CANCELADO' WHERE ID = @ID
	    IF @@ERROR <> 0 SELECT @Ok = 1

      IF @MovTipo IN ('CE.I', 'CE.P') AND @OK is null
      BEGIN
        DECLARE crCECancelar CURSOR FOR
         SELECT ISNULL(Materia,''), Grupo, ISNULL(Reservado,0)
           FROM CED
          WHERE ID = @ID

        OPEN crCECancelar
        FETCH NEXT FROM crCECancelar INTO @Materia, @Grupo, @Reservado
        WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
        BEGIN

          UPDATE CEProgramaD SET Disponible = ISNULL(Disponible,0) + @Reservado, Reservado = ISNULL(Reservado,0) - @Reservado
           WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa 
             AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

          FETCH NEXT FROM crCECancelar INTO @Materia, @Grupo, @Reservado
        END
            
        CLOSE crCECancelar
        DEALLOCATE crCECancelar
      END

	    IF @Ok IS NULL
        COMMIT TRANSACTION
	    ELSE 
	      ROLLBACK TRANSACTION
    END
    ELSE
    IF @Estatus = 'AFECTANDO'
      SELECT @Ok = 80020 
    ELSE
    IF @Estatus = 'CONCLUIDO' 
      SELECT @Ok = 80010
    ELSE
    	SELECT @Ok = 60040, @OkRef = 'Estatus: '+@Estatus
  END

/*
  IF @Accion = 'SINCRO' AND @Ok = 80060 
  BEGIN
    SELECT @Ok = NULL, @OkRef = NULL
    EXEC spSucursalEnLinea @SucursalDestino, @EnLinea OUTPUT
    IF @EnLinea = 1 EXEC spSincroFinalModulo @Modulo, @ID, @Ok OUTPUT, @OkRef OUTPUT
  END
*/
  -- Si hay Mensaje pero no tiene referencia
  IF @Ok IS NOT NULL AND @OkRef IS NULL 

  -- Si se Genero un Movimiento, Desplegarlo
  IF @Ok = 80030
    SELECT @OkRef = 'Movimiento: '+RTRIM(@GenerarMov)+' '+LTRIM(Convert(Char, @GenerarMovID))

  -- Si hubo un error poner como referencia el Movimiento
  ELSE
    SELECT @OkRef = 'Movimiento: '+RTRIM(@Mov)+' '+LTRIM(Convert(Char, @MovID)), @IDGenerar = NULL

  RETURN
END
GO

/**************** spCEVerificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEVerificar') and type = 'P') drop procedure dbo.spCEVerificar
GO
CREATE PROCEDURE spCEVerificar
		@ID			              int,
		@Accion			          char(20),
		@Empresa		          char(5),
		@Usuario		          char(10),
		@Modulo			          char(5),
		@Mov                  varchar(20),
		@MovID          			varchar(20),
		@MovTipo		          char(20),
		@MovMoneda		        char(10),
		@MovTipoCambio		    float,
		@FechaEmision		      datetime,
		@Estatus		          char(15),
		@FechaInicio		      datetime,
		@FechaFin		          datetime,
		@Cliente		          char(10),
		@Cliente2		          char(10),
		@Personal		          char(10),
		@Condicion		        varchar(50),
		@Descuento		        varchar(50),
		@Porcentaje		        float,
		@Porcentaje2		      float,
		@Plan			            char(10),
		@CreditoDirecto		    bit,
		@Programa		          char(10),
		@Conexion		          bit,
		@SincroFinal		      bit,
		@Sucursal		          int,
		@Ok 			            int 		      OUTPUT, 
		@OkRef 			          varchar(255)	OUTPUT

AS
BEGIN
	DECLARE
		@FechaInicioPrograma		datetime,
		@FechaFinPrograma			  datetime,
		@EstatusPrograma			  char(15),
		@PlanAlumno					    char(10),
		@CteEstatus					    char(15),
		@ArticuloInscripcion		varchar(20),
		@ArticuloMateria 			  varchar(20),
		@ArticuloSEP				    varchar(20),
		@AlmDefSuc					    char(10),
		@Materia					      char(10),
		
		@ClienteD               varchar(10),
		@ProgramaD              varchar(10),
		@CEPlanD                varchar(10),
		@Precio                 money,
		@CDIBeca                money,
		@Importe                money,
		@Reservado              money,
		@Ejercido               money,
		@Disponible             money,
		@BecaAplicada           int,
		@Renglon                float,
		@PermiteBeca            BIT,
		@EstatusPreCDI			VARCHAR(50)

  IF @Accion = 'CANCELAR'
  BEGIN
    IF @MovTipo = 'CE.AP' AND @Estatus = 'CONCLUIDO'
    BEGIN
      IF Exists(SELECT d.* FROM CE e, CED c, CEProgramaD d
                 WHERE e.ID = c.ID AND c.ID = @ID
                   AND e.Empresa = d.Empresa AND c.Sucursal = d.Sucursal AND e.Programa = d.Programa AND c.CEPlan = d.CEPlan 
                   AND ISNULL(c.Materia,'') = ISNULL(d.Materia,'') AND NULLIF(c.Grupo,'') = NULLIF(d.Grupo,'') AND ISNULL(d.Cupo,0) <> ISNULL(d.Disponible,0))
        SELECT @OK = 10100, @OkRef = 'Existen Grupos que ya han sido asignados'
    END
    ELSE
    IF @MovTipo = 'CE.BES' AND @Estatus = 'RECHAZADO'
      SELECT @Ok = 60050
  END
  ELSE
  BEGIN
	  SELECT @FechaInicioPrograma = FechaInicio, @FechaFinPrograma = FechaFin, @EstatusPrograma = RTRIM(ISNULL(Estatus,''))
	    FROM CEPrograma WHERE Programa = @Programa

	  IF NOT EXISTS(SELECT * FROM CED WHERE ID = @ID)
	    SELECT @OK = 60010
	  ELSE
	  IF @MovTipo NOT IN ('CE.BEA', 'CE.BEAU', 'CE.BED', 'CE.BES') AND EXISTS(SELECT * FROM CED WHERE ID = @ID AND RTRIM(NULLIF(Grupo,'')) IS NULL)
	    SELECT @OK = 10060, @OkRef = 'Existen partidas sin Grupo'
      ELSE
	  IF @Programa IS NULL
	    SELECT @OK = 10060, @OkRef = 'Falta indicar el Programa'
	  ELSE
	  IF @EstatusPrograma <> 'VIGENTE'
	    SELECT @OK = 10045, @OkRef = 'El Programa indicado no se encuentra VIGENTE'
	  ELSE
	  IF @MovTipo = 'CE.AP'
	  BEGIN
	    IF @FechaInicio is null OR @FechaFin is null
	      SELECT @OK = 60170, @OkRef = 'Falta indicar la Fecha de Inicio o Fin del Movimiento'
	    ELSE
	    IF @FechaInicioPrograma > @FechaInicio
	      SELECT @OK = 60170, @OkRef = 'La Fecha de Inicio del Movimiento no debe ser anterior a la Fecha de Inicio del Programa indicado'
	    ELSE
	    IF @FechaFinPrograma < @FechaFin
	      SELECT @OK = 60170, @OkRef = 'La Fecha Final del Movimiento no debe ser posterior a la Fecha Final del Programa indicado'
      ELSE
	    IF EXISTS(SELECT * FROM CED c WHERE c.ID = @ID AND NULLIF(RTRIM(c.CEPlan), '') IS NULL)
        SELECT @OK = 10060, @OkRef = 'Existen partidas sin Plan de Estudios'
      ELSE
      IF EXISTS(SELECT * FROM CED c WHERE c.ID = @ID AND NULLIF(RTRIM(c.Espacio), '') IS NULL)
        SELECT @OK = 10060, @OkRef = 'Existen partidas sin Salón'
      ELSE
      IF EXISTS(SELECT * FROM CED c WHERE c.ID = @ID AND NULLIF(RTRIM(c.Profesor), '') IS NULL)
        SELECT @OK = 10060, @OkRef = 'Existen partidas sin Profesor'
	    ELSE
        IF EXISTS(
          SELECT *
            FROM CED c
            JOIN CEPlan c2 ON c.CEPlan = c2.CEPlan
           WHERE c.ID = @ID
             AND ISNULL(c2.CreditoDirecto, 0) = 0
             AND NULLIF(RTRIM(c.Materia), '') IS NULL)
          SELECT @OK = '10060', @OkRef = 'Existen partidas sin Curso'
	    ELSE
        IF EXISTS(
          SELECT *
            FROM CED c
            JOIN CEPlan c2 ON c.CEPlan = c2.CEPlan
           WHERE c.ID = @ID
             AND ISNULL(c2.HorarioVariable, 0) = 0
             AND NULLIF(RTRIM(c.Horario), '') IS NULL)
          SELECT @OK = '10060', @OkRef = 'Existen partidas sin Horario'
	  END
	  ELSE
	  IF @MovTipo in ('CE.I', 'CE.P')
    BEGIN
      SELECT @ArticuloInscripcion = ArticuloInscripcion, @ArticuloMateria = ArticuloMateria, @ArticuloSEP = HHArticuloSEP
        FROM EmpresaCfgCE WHERE Empresa = @Empresa
      SELECT @AlmDefSuc = NULLIF(AlmacenPrincipal,'') FROM Sucursal WHERE Sucursal = @Sucursal

      IF @Plan IS NULL
        SELECT @OK = 60170, @OkRef = 'Falta indicar el Plan de Estudios'
      ELSE
      IF @Cliente IS NOT NULL AND (SELECT Estatus FROM Cte WHERE Cliente = @Cliente) = 'BAJA' --<> 'ALTA'
        SELECT @OK = 10045, @OKRef = 'El Estatus del Cliente es BAJA' --no es ALTA
      ELSE
      IF @Cliente IS NOT NULL AND ROUND(@Porcentaje + @Porcentaje2,0) <> 100
        SELECT @OK = 10060, @OkRef = 'La suma de los porcentajes no es del 100%'
      ELSE
      IF Exists(SELECT * FROM CED WHERE ID = @ID AND ISNULL(CEPlan,'') <> @Plan)
        SELECT @OK = 10060, @OkRef = 'Se asignaron Cursos que no corresponden al Plan de Estudios indicado' -- SELECT @OK = 10060, @OkRef = 'Se asignaron Materias que no corresponden al Plan de Estudios indicado'
      ELSE
      IF @Cliente IS NULL AND @Personal IS NULL
        SELECT @OK = 10060, @OkRef = 'Requiere indicar el Cliente o Personal'
      ELSE
      IF @Cliente IS NOT NULL AND @Personal IS NOT NULL
        SELECT @OK = 10060, @OkRef = 'Requiere indicar solo el Cliente o la Persona'
      ELSE
      IF @Cliente IS NOT NULL AND (ISNULL(@ArticuloInscripcion,'') = '' OR ISNULL(@ArticuloMateria,'') = '' OR ISNULL(@ArticuloSEP, '') = '')
        SELECT @OK = 10060, @OkRef = 'Falta indicar los artículos de Inscripción y/o Materia y/o SEP en la Configuración de Control Escolar'
      ELSE
      IF @AlmDefSuc IS NULL
        SELECT @OK = 10060, @OkRef = 'Falta indicar el Almacén por Omisión de la Sucursal'
/*	    ELSE
      IF @Cliente IS NOT NULL AND @CreditoDirecto = 0
        BEGIN
	  SELECT @PlanAlumno = CEPlan FROM Cte WHERE Cliente = @Cliente
	  IF @PlanAlumno <> @Plan
	    SELECT @OK = 10060, @OkRef = 'El Plan de Estudios del Alumno no corresponde con el indicado en el Movimiento'
        END*/
    END -- IF @MovTipo in ('CE.I', 'CE.P')
  END
  
  IF @MovTipo IN ('CE.BEA', 'CE.BEAU', 'CE.BED', 'CE.BES') AND @Mov <>'Solicitud Descuento'
  BEGIN
  	DECLARE crCEVerificarBeca CURSOR FOR
     SELECT c.Cliente, d.Renglon, ISNULL(c2.CDIPermiteBeca, 0), d.CDIBecaAplicada, c.Programa, d.CEPlan, ISNULL(d.Materia, ''), ISNULL(d.Precio, 0), ISNULL(d.CDIBeca, 0), ISNULL(b.Importe, 0), ISNULL(b.Reservado, 0), ISNULL(b.Ejercido, 0), ISNULL(b.ImporteOriginal, 0) - ISNULL(b.Reservado, 0) - ISNULL(b.Ejercido, 0)
  	   FROM CE c
  	   JOIN CED d ON c.ID = d.ID
  	   JOIN CEPlan c2 ON d.CEPlan = c2.CEPlan
       LEFT OUTER JOIN CDICEBeca b ON c.Empresa = b.Empresa AND c.Programa = b.Programa AND d.CEPlan = b.CEPlan AND ISNULL(d.Materia, '') = b.Materia
  	  WHERE c.ID = @ID
    
    OPEN crCEVerificarBeca
    FETCH next FROM crCEVerificarBeca INTO @ClienteD, @Renglon, @PermiteBeca, @BecaAplicada, @ProgramaD, @CEPlanD, @Materia, @Precio, @CDIBeca, @Importe, @Reservado, @Ejercido, @Disponible
    WHILE @@FETCH_STATUS = 0 AND @Ok IS NULL
    BEGIN
    	IF @Accion = 'CANCELAR'
    	BEGIN
    		IF @MovTipo = 'CE.BEA' AND (@Reservado > 0 OR @Ejercido > 0)
    		  SELECT @Ok = 10060, @OkRef = 'Ya tiene Becas Reservadas o Ejercidas. Programa: ' + RTRIM(@ProgramaD) + ', Plan: ' + RTRIM(@CEPlanD) + ', Curso: ' + RTRIM(@Materia)
    		ELSE
    		IF @MovTipo = 'CE.BEAU' AND @Disponible - @CDIBeca < 0
    		  SELECT @Ok = 10060, @OkRef = 'El Importe de la Beca a Cancelar es mayor al Disponible. Programa: ' + RTRIM(@ProgramaD) + ', Plan: ' + RTRIM(@CEPlanD) + ', Curso: ' + RTRIM(@Materia)
    		ELSE
    		IF @MovTipo = 'CE.BES' AND @BecaAplicada IS NOT NULL
    			SELECT @EstatusPreCDI=Estatus  from dbo.CE AS c	WHERE id=@BecaAplicada
    			IF @EstatusPreCDI <>'CANCELADO'
    		  SELECT @Ok = 10060, @OkRef = 'La Beca ya fue Aplicada. Curso: ' + RTRIM(@CEPlanD)
    	END -- IF @Accion = 'CANCELAR'
    	ELSE
    	BEGIN
    		IF @MovTipo = 'CE.BEA' AND @PermiteBeca = 0
    		  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ' + RTRIM(@CEPlanD) + ' no permite Beca'
    		ELSE
        IF EXISTS(SELECT ID FROM CED c WHERE c.ID = @ID AND c.Renglon <> @Renglon AND c.CEPlan = @CEPlanD AND c.Materia = @Materia)
    		  SELECT @Ok = 10060, @OkRef = 'Repetido. Plan: ' + RTRIM(@CEPlanD) + ', Curso: ' + RTRIM(@Materia)
    		ELSE
    		IF (@MovTipo IN ('CE.BEA', 'CE.BEAU', 'CE.BED') AND @CDIBeca <= 0) OR (@MovTipo = 'CE.BES' AND @Precio < 0)
    		  SELECT @Ok = 30100, @OkRef = 'Programa: ' + RTRIM(@ProgramaD) + ', Plan: ' + RTRIM(@CEPlanD) + ', Curso: ' + RTRIM(@Materia)
    		ELSE
    		IF @MovTipo = 'CE.BEA' AND @Importe > 0
    		  SELECT @Ok = 10060, @OkRef = 'Ya tiene Beca Asignada. Programa: ' + RTRIM(@ProgramaD) + ', Plan: ' + RTRIM(@CEPlanD) + ', Curso: ' + RTRIM(@Materia)
    		ELSE
    		--IF @MovTipo = 'CE.BEAU' AND @Importe = 0
    		--  SELECT @Ok = 10060, @OkRef = 'No tiene Beca Asignada. Programa: ' + RTRIM(@ProgramaD) + ', Plan: ' + RTRIM(@CEPlanD) + ', Curso: ' + RTRIM(@Materia)
    		--ELSE
    		IF @MovTipo = 'CE.BED' AND @Disponible - @CDIBeca < 0
    		  SELECT @Ok = 10060, @OkRef = 'El Importe de la Beca a Disminuir es mayor al Disponible. Programa: ' + RTRIM(@ProgramaD) + ', Plan: ' + RTRIM(@CEPlanD) + ', Curso: ' + RTRIM(@Materia) + '<BR>Disponible ' + RTRIM(dbo.fnMonetarioEnTexto(@Disponible))
    		ELSE
    		IF @MovTipo = 'CE.BES'
    		BEGIN
    			IF @CDIBeca <= 0
    		    SELECT @Ok = 10060, @OkRef = 'Falta indicar el Importe de la Beca. Plan ' + RTRIM(@CEPlanD) + ' Curso: ' + RTRIM(@Materia) + '<BR>Disponible ' + RTRIM(dbo.fnMonetarioEnTexto(@Disponible))
    		  ELSE
    			IF @CDIBeca > @Disponible AND @Estatus = 'SINAFECTAR'
    		    SELECT @Ok = 10060, @OkRef = 'El Importe de la Beca excede al Disponible. Curso: ' + RTRIM(@Materia) + '<BR>Disponible ' + RTRIM(dbo.fnMonetarioEnTexto(@Disponible))
    		  ELSE
    		  IF @CDIBeca > @Precio
    		    SELECT @Ok = 10060, @OkRef = 'La Importe de la Beca excede al Precio. Curso: ' + RTRIM(@Materia)
    		END
    	END
    	FETCH next FROM crCEVerificarBeca INTO @ClienteD, @Renglon, @PermiteBeca, @BecaAplicada, @ProgramaD, @CEPlanD, @Materia, @Precio, @CDIBeca, @Importe, @Reservado, @Ejercido, @Disponible
    END
    
    CLOSE crCEVerificarBeca
    DEALLOCATE crCEVerificarBeca
  END
  
  IF @OK is null
    EXEC xpCEVerificar @ID, @Accion, @Empresa, @Usuario, @Modulo, @Mov, @MovID, @MovTipo, @MovMoneda, @MovTipoCambio,
                       @FechaEmision, @Estatus, 
                       @FechaInicio, @FechaFin,
                       @Cliente, @Cliente2, @Personal, @Condicion, @Descuento, @Porcentaje, @Porcentaje2,
                       @Plan, @CreditoDirecto, @Programa, 
                       @Conexion, @SincroFinal, @Sucursal, 
                       @Ok OUTPUT, @OkRef OUTPUT

RETURN
END
GO

/**************** xpCEGenerarVenta ****************/
if exists (select * from sysobjects where id = object_id('dbo.xpCEGenerarVenta') and type = 'P') drop procedure dbo.xpCEGenerarVenta
GO
CREATE PROCEDURE xpCEGenerarVenta
		@ID			int,
		@Accion			char(20),
		@Empresa		char(5),
		@Modulo			char(5),
		@Mov			varchar(20),
		@MovID 			varchar(20),
		@MovTipo		char(20),
		@Estatus		char(15),
		@EstatusNuevo		char(15),
		@VentaID		int, 
		@Ok 			int		OUTPUT,
		@OkRef 			varchar(255)	OUTPUT

AS
BEGIN

  RETURN
END
GO

/**************** spCEGenerarVenta ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEGenerarVenta') and type = 'P') drop procedure dbo.spCEGenerarVenta
GO
CREATE PROCEDURE spCEGenerarVenta
		@ID					      int,
		@Accion				    char(20),
		@Empresa			    char(5),
		@Modulo				    char(5),
		@Mov				      varchar(20),
		@MovID 				    varchar(20)	OUTPUT,
		@MovTipo			    char(20),
		@MovMoneda			  char(10),
		@MovTipoCambio		float,
    @FechaEmision		  datetime,
		@FechaAfectacion	datetime,
		@FechaConclusion	datetime,
		@Proyecto			    varchar(50),
		@Usuario			    char(10),
		@Autorizacion		  char(10),
		@Observaciones		varchar(100),
		@Estatus			    char(15),
		@EstatusNuevo		  char(15),
		@FechaRegistro		datetime,
		@Ejercicio			  int,
		@Periodo			    int,
		@FechaInicio		  datetime,
		@FechaFin			    datetime,
		@Cliente			    char(10),
		@Cliente2			    char(10),
		@Personal			    char(10),
		@Condicion			  varchar(50),
		@Descuento			  varchar(30),
		@Concepto			    varchar(50),
		@Referencia			  varchar(50),
		@Porcentaje			  float,
		@Porcentaje2		  float,
		@Plan				      char(10),
		@CreditoDirecto		bit,
		@Programa			    char(10),
		@SincroFinal		  bit,
		@Sucursal			    int,
		@Conexion			    bit = 0,
		@Ok 				      int		OUTPUT,
		@OkRef 				    varchar(255)	OUTPUT

AS
BEGIN
  DECLARE
  @CEInscripcionVentaExcluir	bit	,
  @VentaID						int,
  @VentaMov						char(20),
  @VentaMovEstatus				char(15),
  @VentaMovID					varchar(20),
  @RenglonVenta					float,
  @AlmDefSuc					char(10),
  @UEN							int,
  @DescuentoGlobal				float,
  @DescuentoImporte				money,
  @ArticuloMateria				varchar(20),
  @ArticuloInscripcion			varchar(20),
  @Precio						float,
  @DescuentoLineal				float,
  @Impuestos					float,
  @Impuesto1					float,
  @Inscripcion					money,
  @Unidad						varchar(50),
  @CantidadInventario			float,
  @CfgMultiUnidades				bit,
  @CfgMultiUnidadesNivel		char(20),
  @Renglon						float,
  @Materia						varchar(10),
  @Grupo						varchar(10),
  @Hoy							datetime,
  -- Enrique Toral
  @Vencimiento					datetime,
  @FormaCobro1					varchar(50),
  @FormaCobro2					varchar(50),
  @FormaCobro3					varchar(50),
  @FormaCobro4					varchar(50),
  @FormaCobro5					varchar(50),
  @Importe1						money,
  @Importe2						money,
  @Importe3						money,
  @Importe4						money,
  @Importe5						money,
  @Referencia1					varchar(50),
  @Referencia2					varchar(50),
  @Referencia3					varchar(50),
  @Referencia4					varchar(50),
  @Referencia5					varchar(50),
  @Cobrado						money,
  @Cambio						money,
  @ImporteTotal					money,
  @MovTipoVenta					varchar(10),
  @IDCxc						int,
  @CobroMov						varchar(20),
  @CobroMovID					varchar(20),
  @CtaDinero					varchar(10),
  @Cajero						varchar(10),
  @Sep							money,
  @ArticuloSEP					varchar(20),
  @Material						char(20),
  @Cantidad						float,
  @CobroID						int,
  @ProgramaFechaInicio          datetime,
  @IDInscripcion                int,
  --- E M M
  @CDIFacturarA					varchar(20),
  /*******se agrego varible******************/
  @CDIClavepresupuestal	VARCHAR (50)
  /*******se agrego varible******************/
  

    -- EToral 30/Jul/09. Si el movimiento esta en la lista de HHCEInscripcionVentaExcluir, no genera Venta
  SELECT @CEInscripcionVentaExcluir = 0
  IF EXISTS(SELECT Mov FROM HHCEInscripcionVentaExcluir WHERE Mov = @Mov)
    SELECT @CEInscripcionVentaExcluir = 1

  SELECT @ImporteTotal = dbo.fnHHCEImporte(@ID, @Empresa)
  SELECT @ProgramaFechaInicio = c.FechaInicio
    FROM CEPrograma c
   WHERE c.Programa = @Programa

  IF ((@ImporteTotal > 0.0 AND @MovTipo in ('CE.I', 'CE.P')) OR @MovTipo = 'CE.B') AND @Cliente <> '' AND @CEInscripcionVentaExcluir = 0 AND ((@MovTipo in ('CE.I', 'CE.P')) OR ((@MovTipo = 'CE.B') AND (@FechaEmision < @ProgramaFechaInicio) ))
  BEGIN
    IF @Accion = 'CANCELAR'
    BEGIN
      DECLARE crCEFactura CURSOR FOR
       SELECT mf.DID, mf3.DID
         FROM MovFlujo mf
         LEFT OUTER JOIN MovFlujo mf2 ON mf2.OModulo = 'VTAS' AND mf2.OID = mf.DID AND mf2.DModulo = 'CXC' AND mf2.Cancelado = 0
         LEFT OUTER JOIN MovFlujo mf3 ON mf3.OModulo = 'CXC' AND mf3.OID = mf2.DID AND mf3.DModulo = 'CXC' AND mf3.Cancelado = 0
         WHERE mf.Empresa = @Empresa AND mf.OModulo = @Modulo AND mf.OID = @ID AND mf.DModulo = 'VTAS' AND mf.Cancelado = 0

      OPEN crCEFactura
      FETCH NEXT FROM crCEFactura INTO @VentaID, @CobroID
      WHILE @@FETCH_STATUS = 0 AND @Ok IS NULL
      BEGIN
      	IF @CobroID IS NOT NULL
      	BEGIN
      	  EXEC spAfectar 'CXC', @CobroID, 'CANCELAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT, @EnSilencio = 1, @Conexion = 1
      	END
      	
      	IF @Ok IS NULL
      	BEGIN 
          SELECT @VentaMov = Mov, @VentaMovID = MovID FROM Venta WHERE ID = @VentaID

          EXEC spAfectar 'VTAS', @VentaID, 'CANCELAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT, @EnSilencio = 1, @Conexion = 1

          IF @OK IS NULL
            EXEC spMovFlujo @Sucursal, @Accion, @Empresa, @Modulo, @ID, @Mov, @MovID, 'VTAS', @VentaID, @VentaMov, @VentaMovID, @Ok = @Ok OUTPUT
        END

        FETCH NEXT FROM crCEFactura INTO @VentaID, @CobroID
      END
      CLOSE crCEFactura
      DEALLOCATE crCEFactura

    END
    ELSE
    IF @Estatus = 'SINAFECTAR'
    BEGIN
      SELECT @Impuesto1 = Impuesto1 FROM CEPlan WHERE CEPlan = @Plan
      SELECT @Inscripcion = ISNULL(Inscripcion,0), @Sep = ISNULL(HHCuotaSEPImporte, 0), @UEN = UEN FROM CE WHERE ID = @ID
      SELECT @DescuentoGlobal = DescuentoGlobal, @Vencimiento = HHVencimiento FROM CE WHERE ID = @ID
      SELECT @VentaMov = MovVenta, @VentaMovEstatus = ISNULL(NULLIF(RTRIM(EstatusVenta),''),'BORRADOR') FROM EmpresaCfgCE WHERE Empresa = @Empresa
      IF @MovTipo = 'CE.B'
        SELECT @VentaMov = ecm.VentaSolicitudDevolucion FROM EmpresaCfgMov ecm WHERE ecm.Empresa = @Empresa
      SELECT @AlmDefSuc = AlmacenPrincipal FROM Sucursal WHERE Sucursal = @Sucursal
      SELECT @ArticuloInscripcion = ArticuloInscripcion, @ArticuloMateria = ArticuloMateria, @ArticuloSEP = HHArticuloSEP
        FROM EmpresaCfgCE WHERE Empresa = @Empresa
      SELECT @CfgMultiUnidades = MultiUnidades, @CfgMultiUnidadesNivel = ISNULL(UPPER(NivelFactorMultiUnidad), 'UNIDAD')
        FROM EmpresaCfg2
       WHERE Empresa = @Empresa
       
      SELECT @ImporteTotal = ROUND(@ImporteTotal * (@Porcentaje/100), 2)
       
      SELECT @Hoy = getdate()
      EXEC spExtraerFecha @Hoy OUTPUT
        
      IF @Porcentaje > 0
      BEGIN
        ----- E M M
        SELECT @CDIFacturarA = CDIFacturarA  FROM Cte WHERE Cliente  = @Cliente

        INSERT INTO Venta(Empresa,  Mov,       FechaEmision, Concepto, Proyecto, UEN, Moneda, TipoCambio, Usuario, Referencia, Observaciones, Estatus, Directo, Cliente, Almacen, Condicion, Descuento, DescuentoGlobal,                      OrigenTipo, Origen, OrigenID, Sucursal,  CDIFacturarA)
        SELECT            @Empresa, @VentaMov, @FechaEmision, @Concepto, @Proyecto, @UEN, @MovMoneda, @MovTipoCambio, @Usuario, @Referencia, @Observaciones, 'SINAFECTAR', 1, @Cliente, @AlmDefSuc, @Condicion, @Descuento, @DescuentoGlobal, 'CE',       @Mov,   @MovID,   @Sucursal, @CDIFacturarA

        SELECT @VentaID = @@IDENTITY

        DECLARE crCEFactura CURSOR FOR
        SELECT Renglon, ISNULL(Materia,''), Grupo, Precio, DescuentoLineal
          FROM CED
        WHERE ID = @ID

        OPEN crCEFactura
        FETCH NEXT FROM crCEFactura INTO @Renglon, @Materia, @Grupo, @Precio, @DescuentoLineal
        WHILE @@FETCH_STATUS = 0
        BEGIN
        	IF @MovTipo = 'CE.B'
        	BEGIN
        		SELECT @IDInscripcion = NULL
        		SELECT @IDInscripcion = ch.ModuloID
        		  FROM CEAlumnoHist ch
        		 WHERE ch.Empresa = @Empresa AND ch.Sucursal = @Sucursal AND ch.Alumno = @Cliente 
        		   AND ch.Programa = @Programa AND ch.CEPlan = @Plan AND ch.Materia = @Materia AND ch.Grupo = @Grupo AND ch.Modulo = 'CE'
        		IF @IDInscripcion IS NOT NULL
        		  SELECT @Precio = c.Precio, @DescuentoLineal = c.DescuentoLineal
        		    FROM CED c
        		   WHERE c.ID = @IDInscripcion AND c.Materia = @Materia AND c.Grupo = @Grupo
        	END

          SELECT @Unidad = Unidad FROM Art WHERE Articulo = @ArticuloMateria
          EXEC xpCantidadInventario @ArticuloMateria, NULL, @Unidad, @CfgMultiUnidades, @CfgMultiUnidadesNivel, 1, @CantidadInventario OUTPUT

			SELECT @CDIClavepresupuestal= CDIClavePresupuestal  FROM ce WHERE id= @ID

          INSERT INTO VentaD(ID, Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad, Unidad, CantidadInventario, Almacen, Articulo, Precio, DescuentoTipo, DescuentoLinea, Impuesto1, Sucursal, CDIClavePresupuestal)--, PrecioMoneda, PrecioTipoCambio)
          SELECT @VentaID, @Renglon, 0, 	1, 	'N', 	1, 	@Unidad, @CantidadInventario, @AlmDefSuc, @ArticuloMateria, @Precio*@Porcentaje/100, '%', @DescuentoLineal, @Impuesto1, @Sucursal, @CDIClavepresupuestal

          FETCH NEXT FROM crCEFactura INTO @Renglon, @Materia, @Grupo, @Precio, @DescuentoLineal
        END
        CLOSE crCEFactura
        DEALLOCATE crCEFactura

        -- Inserta Materiales
        DECLARE crCEFactura2 CURSOR FOR
        SELECT h.Articulo, h.Cantidad, h.Precio, h.Descuento, a.Impuesto1
          FROM HHCEArt h
          JOIN Art a ON a.Articulo = h.Articulo
         WHERE ID = @ID

        OPEN crCEFactura2
        FETCH NEXT FROM crCEFactura2 INTO @Material, @Cantidad, @Precio, @DescuentoLineal, @Impuesto1
        WHILE @@FETCH_STATUS = 0
        BEGIN
          SELECT @Renglon = ISNULL(@Renglon, 0) + 2048
          SELECT @Unidad = Unidad FROM Art WHERE Articulo = @Material
          EXEC xpCantidadInventario @Material, NULL, @Unidad, @CfgMultiUnidades, @CfgMultiUnidadesNivel, 1, @CantidadInventario OUTPUT

          INSERT INTO VentaD
                 (ID,       Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad,   Unidad,  CantidadInventario,  Almacen,    Articulo,  Precio,                 DescuentoTipo, DescuentoLinea,   Impuesto1, Sucursal)--, PrecioMoneda, PrecioTipoCambio)
          SELECT @VentaID, @Renglon, 0, 	     1, 	    'N', 	     @Cantidad, @Unidad, @CantidadInventario, @AlmDefSuc, @MateriaL, @Precio*@Porcentaje/100, '%',          @DescuentoLineal, @Impuesto1, @Sucursal

          FETCH NEXT FROM crCEFactura2 INTO @Material, @Cantidad, @Precio, @DescuentoLineal, @Impuesto1
        END
        CLOSE crCEFactura2
        DEALLOCATE crCEFactura2

        IF @Inscripcion > 0
        BEGIN
          SELECT @Renglon = @Renglon + 2048
          SELECT @Unidad = Unidad FROM Art WHERE Articulo = @ArticuloInscripcion
          EXEC xpCantidadInventario @ArticuloInscripcion, NULL, @Unidad, @CfgMultiUnidades, @CfgMultiUnidadesNivel, 1, @CantidadInventario OUTPUT

          INSERT INTO VentaD(ID, Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad, Unidad, CantidadInventario, Almacen, Articulo, 		Precio, 	      Impuesto1, Sucursal)--, PrecioMoneda, PrecioTipoCambio)
          SELECT @VentaID, @Renglon, 0, 	1, 	'N', 		1, 	@Unidad, @CantidadInventario, @AlmDefSuc, @ArticuloInscripcion, @Inscripcion*@Porcentaje/100, 0,         @Sucursal
        END

        IF @Sep > 0
        BEGIN
          SELECT @Renglon = @Renglon + 2048
          SELECT @Unidad = Unidad FROM Art WHERE Articulo = @ArticuloSEP
          EXEC xpCantidadInventario @ArticuloSEP, NULL, @Unidad, @CfgMultiUnidades, @CfgMultiUnidadesNivel, 1, @CantidadInventario OUTPUT

          INSERT INTO VentaD
                 (ID,       Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad, Unidad,  CantidadInventario,  Almacen,    Articulo, 	   Precio, 	             Impuesto1, Sucursal)--, PrecioMoneda, PrecioTipoCambio)
          SELECT @VentaID, @Renglon, 0, 	     1, 	    'N', 		 1, 	  @Unidad, @CantidadInventario, @AlmDefSuc, @ArticuloSEP, @SEP*@Porcentaje/100,  0,         @Sucursal
        END

        IF @OK is null
          EXEC xpCEGenerarVenta @ID, @Accion, @Empresa, @Modulo, @Mov, @MovID, @MovTipo, @Estatus, @EstatusNuevo, @VentaID, @Ok OUTPUT, @OKRef OUTPUT

        IF @VentaMovEstatus = 'CONCLUIDO'
          EXEC spAfectar 'VTAS', @VentaID, 'AFECTAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT, @EnSilencio = 1, @Conexion = 1
        ELSE
        BEGIN
          IF @VentaMovEstatus <> 'SINAFECTAR' 
            UPDATE Venta SET Estatus = @VentaMovEstatus WHERE ID = @VentaID
          -- EXEC spAfectar 'VTAS', @VentaID, 'CONSECUTIVO', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT, @EnSilencio = 1, @Conexion = 1
        END

        IF @OK is null
        BEGIN
          SELECT @VentaMovID = MovID FROM Venta WHERE ID = @VentaID
          EXEC spMovFlujo @Sucursal, @Accion, @Empresa, @Modulo, @ID, @Mov, @MovID, 'VTAS', @VentaID, @VentaMov, @VentaMovID, @Ok = @Ok OUTPUT
        END

        SELECT @MovTipoVenta = mt.Clave FROM MovTipo mt WHERE mt.Modulo = 'VTAS' AND mt.Mov = @VentaMov
        
        -- Si se genera Factura Concluida con Importe, genera Cobro
        IF @OK IS NULL AND @MovTipoVenta = 'VTAS.F' AND @VentaMovEstatus = 'CONCLUIDO' AND 
           @Vencimiento IS NOT NULL AND @Vencimiento <= @FechaEmision AND @ImporteTotal > 0
        BEGIN
          
          SELECT @FormaCobro1 = NULLIF(RTRIM(FormaCobro1), ''), @FormaCobro2 = NULLIF(RTRIM(FormaCobro2), ''), @FormaCobro3 = NULLIF(RTRIM(FormaCobro3), ''), @FormaCobro4 = NULLIF(RTRIM(FormaCobro4), ''), @FormaCobro5 = NULLIF(RTRIM(FormaCobro5), ''),
                 @Importe1 = NULLIF(Importe1, 0), @Importe2 = NULLIF(Importe2, 0), @Importe3 = NULLIF(Importe3, 0), @Importe4 = NULLIF(Importe4, 0), @Importe5 = NULLIF(Importe5, 0), 
                 @Referencia1 = NULLIF(RTRIM(Referencia1), ''), @Referencia2 = NULLIF(RTRIM(Referencia2), ''), @Referencia3 = NULLIF(RTRIM(Referencia3), ''), @Referencia4 = NULLIF(RTRIM(Referencia4), ''), @Referencia5 = NULLIF(RTRIM(Referencia5), ''),
                 @CtaDinero = hc.CtaDinero, @Cajero = hc.Cajero
            FROM HHCEVentaCobro hc
           WHERE ID = @ID

          SELECT @Cobrado = ISNULL(@Importe1, 0) + ISNULL(@Importe2, 0) + ISNULL(@Importe3, 0) + ISNULL(@Importe4, 0) + ISNULL(@Importe5, 0)
          SELECT @Cobrado = ROUND(@Cobrado, 2)
          IF @Cobrado > 0
          BEGIN
            IF @Cobrado > @ImporteTotal
              SELECT @Cambio = ROUND(@Cobrado - @ImporteTotal, 2)

            SELECT @CobroMov = ecm.CxcCobro FROM EmpresaCfgMov ecm WHERE ecm.Empresa = @Empresa
            
            INSERT INTO Cxc
                  (Empresa, Mov, FechaEmision, Proyecto, UEN, Moneda, TipoCambio, Usuario, Estatus, Cliente,
                   ClienteMoneda, ClienteTipoCambio, CtaDinero, Importe, AplicaManual, ConDesglose, FormaCobro1, FormaCobro2, FormaCobro3, FormaCobro4, FormaCobro5,
                   Importe1, Importe2, Importe3, Importe4, Importe5, Referencia1, Referencia2, Referencia3, Referencia4, Referencia5,
                   Cambio, OrigenTipo, Origen, OrigenID, Sucursal, Cajero, SucursalOrigen, SucursalDestino, HHCobroIntegrado)
            SELECT @Empresa, @CobroMov, @FechaEmision, @Proyecto, @UEN, @MovMoneda, @MovTipoCambio, @Usuario, 'SINAFECTAR', @Cliente, 
                   @MovMoneda, @MovTipoCambio, @CtaDinero, @Cobrado-ISNULL(@Cambio, 0), 1, 1, @FormaCobro1, @FormaCobro2, @FormaCobro3, @FormaCobro4, @FormaCobro5,
                   @Importe1, @Importe2, @Importe3, @Importe4, @Importe5, @Referencia1, @Referencia2, @Referencia3, @Referencia4, @Referencia5, 
                   @Cambio, 'CXC', @VentaMov, @VentaMovID, @Sucursal, @Cajero, @Sucursal, @Sucursal, 1
                   
            SELECT @IDCxc = @@IDENTITY
            
            IF @IDCxc IS NOT NULL
            BEGIN
              INSERT INTO CxcD(ID, Renglon, RenglonSub, Importe, Aplica, AplicaID, Sucursal)
              SELECT @IDCxc, 2048, 0, @Cobrado-ISNULL(@Cambio, 0), @VentaMov, @VentaMovID, @Sucursal
              
              EXEC spAfectar 'CXC', @IDCxc, 'AFECTAR', 'TODO', NULL, @Usuario, 0, 1, @Ok = @OK OUTPUT, @OkRef = @OkRef OUTPUT, @Conexion = 1
              IF @Ok = 80030
                SELECT @Ok = NULL
            END
          END
        END
      END

      IF @Porcentaje2 > 0 AND @Ok IS NULL
      BEGIN
        INSERT INTO Venta(Empresa, Mov, FechaEmision, Concepto, Proyecto, UEN, Moneda, TipoCambio, Usuario, Referencia, Observaciones, Estatus, Directo, Cliente, Almacen, Condicion, Descuento, DescuentoGlobal, OrigenTipo, Origen, OrigenID, Sucursal)
        SELECT @Empresa, @VentaMov, @FechaEmision, @Concepto, @Proyecto, @UEN, @MovMoneda, @MovTipoCambio, @Usuario, @Referencia, @Observaciones, 'SINAFECTAR', 1, @Cliente2, @AlmDefSuc, @Condicion, @Descuento, @DescuentoGlobal, 'CE', @Mov, @MovID, @Sucursal

        SELECT @VentaID = @@IDENTITY

        DECLARE crCEFactura2 CURSOR FOR
        SELECT Renglon, ISNULL(Materia,''), Grupo, Precio, DescuentoLineal
          FROM CED
         WHERE ID = @ID

        OPEN crCEFactura2
        FETCH NEXT FROM crCEFactura2 INTO @Renglon, @Materia, @Grupo, @Precio, @DescuentoLineal
        WHILE @@FETCH_STATUS = 0
        BEGIN
        	IF @MovTipo = 'CE.B'
        	BEGIN
        		SELECT @IDInscripcion = NULL
        		SELECT @IDInscripcion = ch.ModuloID
        		  FROM CEAlumnoHist ch
        		 WHERE ch.Empresa = @Empresa AND ch.Sucursal = @Sucursal AND ch.Alumno = @Cliente 
        		   AND ch.Programa = @Programa AND ch.CEPlan = @Plan AND ch.Materia = @Materia AND ch.Grupo = @Grupo AND ch.Modulo = 'CE'
        		IF @IDInscripcion IS NOT NULL
        		  SELECT @Precio = c.Precio, @DescuentoLineal = c.DescuentoLineal
        		    FROM CED c
        		   WHERE c.ID = @IDInscripcion AND c.Materia = @Materia AND c.Grupo = @Grupo
        	END

          SELECT @Unidad = Unidad FROM Art WHERE Articulo = @ArticuloMateria
          EXEC xpCantidadInventario @ArticuloMateria, NULL, @Unidad, @CfgMultiUnidades, @CfgMultiUnidadesNivel, 1, @CantidadInventario OUTPUT

          INSERT INTO VentaD(ID, Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad, Unidad, CantidadInventario, Almacen, Articulo, Precio, DescuentoTipo, DescuentoLinea, Impuesto1, Sucursal)--, PrecioMoneda, PrecioTipoCambio)
          SELECT @VentaID, @Renglon, 0, 	1, 	'N', 	1, 	@Unidad, @CantidadInventario, @AlmDefSuc, @ArticuloMateria, @Precio*@Porcentaje2/100, '%', @DescuentoLineal, @Impuesto1, @Sucursal

          FETCH NEXT FROM crCEFactura2 INTO @Renglon, @Materia, @Grupo, @Precio, @DescuentoLineal
        END
        CLOSE crCEFactura2
        DEALLOCATE crCEFactura2
        
        -- Inserta Materiales
        DECLARE crCEFactura2 CURSOR FOR
        SELECT h.Articulo, h.Cantidad, h.Precio, h.Descuento, a.Impuesto1
          FROM HHCEArt h
          JOIN Art a ON a.Articulo = h.Articulo
         WHERE ID = @ID

        OPEN crCEFactura2
        FETCH NEXT FROM crCEFactura2 INTO @Material, @Cantidad, @Precio, @DescuentoLineal, @Impuesto1
        WHILE @@FETCH_STATUS = 0
        BEGIN
          SELECT @Renglon = ISNULL(@Renglon, 0) + 2048
          SELECT @Unidad = Unidad FROM Art WHERE Articulo = @Material
          EXEC xpCantidadInventario @Material, NULL, @Unidad, @CfgMultiUnidades, @CfgMultiUnidadesNivel, 1, @CantidadInventario OUTPUT

          INSERT INTO VentaD
                 (ID,       Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad,   Unidad,  CantidadInventario,  Almacen,    Articulo,  Precio,                 DescuentoTipo, DescuentoLinea,   Impuesto1, Sucursal)--, PrecioMoneda, PrecioTipoCambio)
          SELECT @VentaID, @Renglon, 0, 	     1, 	    'N', 	     @Cantidad, @Unidad, @CantidadInventario, @AlmDefSuc, @MateriaL, @Precio*@Porcentaje2/100, '%',          @DescuentoLineal, @Impuesto1, @Sucursal

          FETCH NEXT FROM crCEFactura2 INTO @Material, @Cantidad, @Precio, @DescuentoLineal, @Impuesto1
        END
        CLOSE crCEFactura2
        DEALLOCATE crCEFactura2

        IF @Inscripcion > 0
        BEGIN
          SELECT @Unidad = Unidad FROM Art WHERE Articulo = @ArticuloInscripcion
          EXEC xpCantidadInventario @ArticuloInscripcion, NULL, @Unidad, @CfgMultiUnidades, @CfgMultiUnidadesNivel, 1, @CantidadInventario OUTPUT

          SELECT @Renglon = @Renglon + 2048
          INSERT INTO VentaD(ID, Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad, Unidad, CantidadInventario, Almacen, Articulo, 		Precio, 	Impuesto1, Sucursal)--, PrecioMoneda, PrecioTipoCambio)
          SELECT @VentaID, @Renglon, 0, 	1, 	'N', 	1, 	@Unidad, @CantidadInventario, @AlmDefSuc, @ArticuloInscripcion, @Inscripcion*@Porcentaje2/100, @Impuesto1, @Sucursal
        END

        IF @Sep > 0
        BEGIN
          SELECT @Renglon = @Renglon + 2048
          SELECT @Unidad = Unidad FROM Art WHERE Articulo = @ArticuloSEP
          EXEC xpCantidadInventario @ArticuloSEP, NULL, @Unidad, @CfgMultiUnidades, @CfgMultiUnidadesNivel, 1, @CantidadInventario OUTPUT

          INSERT INTO VentaD
                 (ID,       Renglon, RenglonSub, RenglonID, RenglonTipo, Cantidad, Unidad,  CantidadInventario,  Almacen,    Articulo, 	   Precio, 	            Impuesto1, Sucursal)--, PrecioMoneda, PrecioTipoCambio)
          SELECT @VentaID, @Renglon, 0, 	     1, 	    'N', 		 1, 	  @Unidad, @CantidadInventario, @AlmDefSuc, @ArticuloSEP, @SEP*@Porcentaje2/100, 0,         @Sucursal
        END

        IF @OK is null
          EXEC xpCEGenerarVenta @ID, @Accion, @Empresa, @Modulo, @Mov, @MovID, @MovTipo, @Estatus, @EstatusNuevo, @VentaID, @Ok OUTPUT, @OKRef OUTPUT

        IF @VentaMovEstatus = 'CONCLUIDO'
          EXEC spAfectar 'VTAS', @VentaID, 'AFECTAR', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT, @EnSilencio = 1, @Conexion = 1
        ELSE
        BEGIN
          IF @VentaMovEstatus <> 'SINAFECTAR' 
            UPDATE Venta SET Estatus = @VentaMovEstatus WHERE ID = @VentaID
           -- EXEC spAfectar 'VTAS', @VentaID, 'CONSECUTIVO', 'Todo', NULL, @Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT, @EnSilencio = 1, @Conexion = 1
        END

        IF @OK is null
        BEGIN
          SELECT @VentaMovID = MovID FROM Venta WHERE ID = @VentaID
          EXEC spMovFlujo @Sucursal, @Accion, @Empresa, @Modulo, @ID, @Mov, @MovID, 'VTAS', @VentaID, @VentaMov, @VentaMovID, @Ok = @Ok OUTPUT
        END
      END -- @Porcentaje2>0
    END -- @Estatus =SinAfectar
  END
  RETURN
END
GO

/**************** spCEAfectar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEAfectar') and type = 'P') drop procedure dbo.spCEAfectar
GO
CREATE PROCEDURE spCEAfectar
		@ID			              int,
		@Accion			          char(20),
		@Empresa		          char(5),
		@Modulo			          char(5),
		@Mov			            varchar(20),
		@MovID 			          varchar(20)	OUTPUT,
		@MovTipo		          char(20),
		@MovMoneda		        char(10),
		@MovTipoCambio		    float,
     @FechaEmision		    datetime,
		@FechaAfectacion	    datetime,
		@FechaConclusion	    datetime,
		@Proyecto		          varchar(50),
		@Usuario		          char(10),
		@Autorizacion		      char(10),
		@Observaciones		    varchar(100),
		@Estatus		          char(15),
		@EstatusNuevo		      char(15),
		@FechaRegistro		    datetime,
		@Ejercicio		        int,
		@Periodo		          int,
		@FechaInicio		      datetime,
		@FechaFin		          datetime,
		@Cliente		          char(10),
		@Cliente2		          char(10),
		@Personal		          char(10),
		@Condicion		        varchar(50),
		@Descuento		        varchar(30),
		@Concepto		          varchar(50),
		@Referencia		        varchar(50),
		@Porcentaje		        float,
		@Porcentaje2		      float,
		@Plan			            char(10),
		@CreditoDirecto		    bit,
		@Programa		          char(10),
		@SincroFinal		      bit,
		@Sucursal		          int,
		@Conexion		          bit = 0,
	  @GenerarMov 		      char(20)	    OUTPUT,
		@IDGenerar 		        int		        OUTPUT,
		@GenerarMovID 		    varchar(20)	  OUTPUT,
		@Ok 			            int		        OUTPUT,
		@OkRef 			          varchar(255)	OUTPUT

AS
BEGIN

  DECLARE
	@Importe		          money, 
	@ImporteCliente		    money,
	@ImporteCliente2	    money,
	@Impuestos		        float,
	@Impuesto1		        float,
	@Inscripcion		      money,
	
	@FechaCancelacion	    datetime,
	@RedondeoMonetarios	  int,
	@CfgImpInc		        bit,
	
	@VentaMov		          varchar(20),
	
	@Renglon		          float,
	@PlanD			          char(10),
	@CreditoDirectoD	    bit,
	@Materia		          char(10),	
	@Grupo			          char(10),
	@Espacio		          char(10),
	@Profesor		          char(10),
	@Cupo			            int,
	@CupoN			          int,
	@Horario		          char(30),

	@EspacioN					    char(10),
	@ProfesorN					  char(10),
	@HorarioN					    char(30),
	@HorarioVariablePlan	bit,

	@Reservado					  int,
	@ContactoTipo				  char(15),
	@EstatusAlumno				char(15),
	@Calificacion				  varchar(50),
	@Asistencia					  int,
	@EstatusMateria				char(15),
	@Contacto					    char(10),
	@ClienteD             varchar(10),
	@BecaAplicada         bit,
	@ProgramaD            varchar(10),
	@CEPlanD              varchar(10),
	@Precio               money,
	@CDIBeca              money,
	@ImporteBeca          money,
	@ReservadoBeca        money,
	@EjercidoBeca         money,
	@DisponibleBeca       money,
	@Factor               int,
	@Factor2              int,
	@ImporteNuevo         money,
	@ReservadoNuevo       money,
	@EjercidoNuevo        money,	
    --- E M M 
    @IDH	        int,
    @ModuloH		varchar(15),
	@HorarioH		varchar(30)	 
    --- E M M

  IF @Cliente IS NULL AND @Personal IS NOT NULL
   SELECT @Contacto = @Personal, @ContactoTipo = 'Personal'
  ELSE
    SELECT @Contacto = @Cliente, @ContactoTipo = 'Cliente'

  SELECT @RedondeoMonetarios = RedondeoMonetarios FROM Version 

  -- Asignar el Consecutivo al Movimiento
--  EXEC spMovConsecutivo @Sucursal, @SucursalOrigen, @SucursalDestino, @Empresa, @Usuario, @Modulo, @Ejercicio, @Periodo, @ID, @Mov, NULL, @Estatus, @Concepto, @Accion, @Conexion, @SincroFinal, @MovID OUTPUT, @Ok OUTPUT, @OkRef OUTPUT
  IF @Ok IS NULL
    EXEC spCEMovConsecutivo @Sucursal, @Empresa, @Usuario, @Modulo, @Ejercicio, @Periodo, @ID, @Mov, @Estatus, @Concepto, @Accion, @Conexion, @SincroFinal, @MovID OUTPUT, @Ok OUTPUT, @OkRef OUTPUT

  IF @Estatus IN ('SINAFECTAR', 'BORRADOR', 'CONFIRMAR') AND @Accion <> 'CANCELAR' AND @Ok IS NULL
    EXEC spCEMovChecarConsecutivo	@Empresa, @Modulo, @Mov, @MovID, @Ejercicio, @Periodo, @Ok OUTPUT, @OkRef OUTPUT

/*  IF @Accion IN ('CONSECUTIVO', 'SINCRO') AND @Ok IS NULL
  BEGIN
    IF @Accion = 'SINCRO' EXEC spAsignarSucursalEstatus @ID, @Modulo, @SucursalDestino, @Accion
    SELECT @Ok = 80060, @OkRef = @MovID
    RETURN
  END
*/

  IF @OK IS NOT NULL RETURN 

  IF @Conexion = 0 
    BEGIN TRANSACTION

    -- Poner el Estatus del Movimiento en "AFECTANDO"
--    EXEC spMovEstatus @Modulo, 'AFECTANDO', @ID, @Generar, @IDGenerar, @GenerarAfectado, @Ok OUTPUT
    -- Reemplaza spMovEstatus
    IF @Modulo = 'CE'  UPDATE CE       SET Estatus = 'AFECTANDO' WHERE ID = @ID 
    IF NULLIF(RTRIM(@Plan), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM CEPlan WHERE CEPlan = @Plan) = 0
        UPDATE CEPlan SET TieneMovimientos = 1 WHERE CEPlan = @Plan

    IF NULLIF(RTRIM(@Programa), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM CEPrograma c WHERE c.Programa = @Programa) = 0
        UPDATE CEPrograma SET TieneMovimientos = 1 WHERE Programa = @Programa
        
    IF NULLIF(RTRIM(@Cliente), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM Cte c WHERE c.Cliente = @Cliente) = 0
        UPDATE Cte SET TieneMovimientos = 1 WHERE Cliente = @Cliente

    IF NULLIF(RTRIM(@Cliente2), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM Cte c WHERE c.Cliente = @Cliente2) = 0
        UPDATE Cte SET TieneMovimientos = 1 WHERE Cliente = @Cliente2

    IF NULLIF(RTRIM(@Personal), '') IS NOT NULL
      IF (SELECT TieneMovimientos FROM Personal p WHERE p.Personal = @Personal) = 0
        UPDATE Personal SET TieneMovimientos = 1 WHERE Personal = @Personal

    -- Actualizar Sucursal Detalle
/*    IF @Accion = 'AFECTAR' AND @Estatus = 'SINAFECTAR'
      IF (SELECT Sincro FROM Version) = 1
        UPDATE CED SET Sucursal = @Sucursal, SincroC = 1 WHERE ID = @ID AND (Sucursal <> @Sucursal OR SincroC <> 1)
*/
    IF @Accion = 'AFECTAR' AND @EstatusNuevo in ('PENDIENTE', 'CONCLUIDO')
      -- Registrar el Movimiento en "Mov"
      EXEC spRegistrarMovimiento @Sucursal, @Empresa, @Modulo, @Mov, @MovID, @ID, @Ejercicio, @Periodo, @FechaRegistro, @FechaEmision,
                       	         NULL, @Proyecto, @MovMoneda, @MovTipoCambio,
                       	         @Usuario, @Autorizacion, NULL, NULL, /*@DocFuente, */@Observaciones,
			         -- @Generar, @GenerarMov, @GenerarMovID, @IDGenerar,
				 NULL, NULL, NULL, NULL,
				 @Ok OUTPUT

    IF @Modulo = 'CE' AND @Accion in ('CANCELAR', 'AFECTAR') AND @MovTipo NOT IN ('CE.BEA', 'CE.BEAU', 'CE.BED', 'CE.BES')
    BEGIN
      DECLARE crCEAfectar CURSOR FOR
       SELECT Renglon, CEPlan, ISNULL(Materia,''), NULLIF(Grupo,''), NULLIF(Espacio,''), ISNULL(Profesor,''), ISNULL(Cupo,0), NULLIF(Horario,'')
         FROM CED
        WHERE ID = @ID
        
      IF @MovTipo = 'CE.AP'
      BEGIN
      OPEN crCEAfectar
      FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
      WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
      BEGIN
        IF @Accion = 'CANCELAR'
        BEGIN
          IF NOT EXISTS(SELECT * FROM CEProgramaD WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo)
            SELECT @OK = 10060, @OkRef = 'No existe el Curso con el Grupo en el Plan y Programa indicados. Curso:' + RTRIM(@Materia) + ' Grupo ' + RTRIM(@Grupo) -- SELECT @OK = 10060, @OkRef = 'No existe la Materia con el Grupo en el Plan y Programa indicados. Materia:' + RTRIM(@Materia) + ' Grupo ' + RTRIM(@Grupo)
          ELSE
          BEGIN
            DELETE CEProgramaD WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa
                   AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo
	          DELETE CECalendario WHERE Empresa = @Empresa AND Modulo = @Modulo AND ModuloID = @ID AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ACTIVO'
	          DELETE CECalendarioGeneral WHERE Empresa = @Empresa AND Modulo = @Modulo AND ModuloID = @ID AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ACTIVO'
	        END
	      END
	      ELSE
	      BEGIN
	        IF EXISTS(SELECT * FROM CEProgramaD WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo)
	          SELECT @OK = 10060, @OkRef = 'Ya existe el Curso con el Grupo en el Plan y Programa indicados. Curso:' + RTRIM(@Materia) + ' Grupo ' + RTRIM(@Grupo) --SELECT @OK = 10060, @OkRef = 'Ya existe la Materia con el Grupo en el Plan y Programa indicados. Materia:' + RTRIM(@Materia) + ' Grupo ' + RTRIM(@Grupo) 
	        ELSE
	        BEGIN
	          SELECT @HorarioVariablePlan = ISNULL(HorarioVariable,1), @CreditoDirectoD = CreditoDirecto FROM CEPlan WHERE CEPlan = @PlanD
	          IF @HorarioVariablePlan = 0 AND @Horario is null
	            SELECT @OK = 10060, @OkRef = 'El Grupo ' + RTRIM(@Grupo) + ' del Plan ' + RTRIM(@PlanD) + ' no tiene un Horario especificado'
            IF @CreditoDirectoD = 1 AND NULLIF(@Materia,'') is not null
	            SELECT @OK = 10060, @OkRef = 'El Plan ' + RTRIM(@PlanD) + ' no contiene Cursos.' --SELECT @OK = 10060, @OkRef = 'El Plan ' + RTRIM(@PlanD) + ' no contiene Materias.' 
	        END
	        IF @OK is null
	          INSERT INTO CEProgramaD(Empresa, Sucursal, Programa, CEPlan, Materia, Grupo, Espacio, Profesor, Horario, Cupo, Disponible)
		            VALUES(@Empresa, @Sucursal, @Programa, @PlanD, ISNULL(@Materia,''), @Grupo, @Espacio, @Profesor, @Horario, @Cupo, @Cupo)
	      END

	      FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
      END
    	  CLOSE crCEAfectar
    	  DEALLOCATE crCEAfectar

	      IF @OK is null AND @Accion <> 'CANCELAR'
        EXEC spCEGenerarCalendario @ID, @Accion, @Modulo, 1, @OK OUTPUT, @OKRef OUTPUT, @EnSilencio = 1
      END -- IF @MovTipo = 'CE.AP'
      ELSE
      IF @MovTipo = 'CE.BP'
      BEGIN
      	OPEN crCEAfectar
    	  FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
       	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
        BEGIN
	        IF @Accion = 'CANCELAR'
       	  BEGIN
       	    IF EXISTS(SELECT * FROM CEProgramaD WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo)
	            SELECT @OK = 10100, @OkRef = 'Ya existe el Curso con el Grupo en el Plan y Programa indicados. Curso:' + RTRIM(@Materia) + ' Grupo ' + RTRIM(@Grupo) --SELECT @OK = 10100, @OkRef = 'Ya existe la Materia con el Grupo en el Plan y Programa indicados. Materia:' + RTRIM(@Materia) + ' Grupo ' + RTRIM(@Grupo) 
	          ELSE
	            INSERT INTO CEProgramaD(Empresa, Sucursal, Programa, CEPlan, Materia, Grupo, Espacio, Profesor, Horario, Cupo, Disponible)
		            VALUES(@Empresa, @Sucursal, @Programa, @PlanD, ISNULL(@Materia,''), @Grupo, @Espacio, @Profesor, @Horario, @Cupo, @Cupo)
	        END
	        ELSE
	        BEGIN
      	    IF NOT EXISTS(SELECT * FROM CEProgramaD WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo)
	            SELECT @OK = 10060, @OkRef = 'No existe el Curso:' + RTRIM(@Materia) + ' con el Grupo ' + RTRIM(@Grupo) + ' en el Programa y Plan indicado' -- SELECT @OK = 10060, @OkRef = 'No existe la Materia:' + RTRIM(@Materia) + ' con el Grupo ' + RTRIM(@Grupo) + ' en el Programa y Plan indicado'
	          ELSE
	          BEGIN
	            SELECT @Espacio = Espacio, @Profesor = Profesor, @Cupo = Cupo, @Horario = Horario
		            FROM CEProgramaD 
               WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

	            UPDATE CED SET Espacio = @Espacio, Profesor = @Profesor, Cupo = @Cupo, Horario = @Horario
	             WHERE ID = @ID AND Renglon = @Renglon

	            DELETE CEProgramaD 
	             WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

	            DELETE CECalendario WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ACTIVO'
	            DELETE CECalendarioGeneral WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ACTIVO'
	          END
	       END
	       FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
       END
	     CLOSE crCEAfectar
	     DEALLOCATE crCEAfectar
	     
     	IF @OK is null AND @Accion = 'CANCELAR'
	      EXEC spCEGenerarCalendario @ID, @Accion, @Modulo, 1, @OK OUTPUT, @OKRef OUTPUT, @EnSilencio = 1
      END
      ELSE
      IF @MovTipo = 'CE.CP'
      BEGIN
        OPEN crCEAfectar
        FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
        WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
        BEGIN
          SELECT @EspacioN = NULLIF(RTRIM(EspacioN),''), @ProfesorN = NULLIF(RTRIM(ProfesorN),''), @HorarioN = NULLIF(RTRIM(HorarioN),''), @CupoN = NULLIF(RTRIM(Cupo),0)
            FROM CED WHERE ID = @ID AND Renglon = @Renglon

          IF @Accion = 'CANCELAR'
          BEGIN
            UPDATE CEProgramaD SET Espacio = @Espacio, Profesor = @Profesor, Horario = @Horario, Cupo = ISNULL(Cupo,0) - @Cupo, Disponible = ISNULL(Disponible,0) - @Cupo
             WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

          END
          ELSE
          BEGIN
            SELECT @Cupo = Cupo FROM CEProgramaD WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo
            IF NOT EXISTS(SELECT * FROM CEProgramaD WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo)
              SELECT @OK = 10060, @OkRef = 'No existe el Curso: ' + RTRIM(@Materia) + ' con el Grupo ' + RTRIM(@Grupo) + ' en el Programa y Plan indicado' --SELECT @OK = 10060, @OkRef = 'No existe la Materia:' + RTRIM(@Materia) + ' con el Grupo ' + RTRIM(@Grupo) + ' en el Programa y Plan indicado'
            ELSE
            IF ISNULL(@EspacioN, @Espacio) = @Espacio AND ISNULL(@ProfesorN, @Profesor) = @Profesor
            AND ISNULL(@HorarioN, @Horario) = @Horario AND ISNULL(@CupoN, @Cupo) = @Cupo
              SELECT @OK = 10060, @OkRef = 'No se registró algún Cambio en el Curso ' + RTRIM(@Materia) + ' con el Grupo ' + RTRIM(@Grupo) --SELECT @OK = 10060, @OkRef = 'No se registró algún Cambio en la Materia ' + RTRIM(@Materia) + ' con el Grupo ' + RTRIM(@Grupo)
            ELSE
            BEGIN
              UPDATE CEProgramaD SET Espacio = ISNULL(@EspacioN, Espacio), Profesor = ISNULL(@ProfesorN, Profesor), Horario = ISNULL(@HorarioN, Horario), Cupo = ISNULL(Cupo,0) + ISNULL(@CupoN,0), Disponible = ISNULL(Disponible,0) + ISNULL(@CupoN,0)
               WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo
              ---  Aqui  Jala la diferencia del horarioX
              IF @EspacioN <> @Espacio OR @ProfesorN <> @Profesor OR @HorarioN <> @Horario
              BEGIN
                --SELECT @Espacio = ISNULL(NULLIF(RTRIM(@EspacioN),''), @Espacio)
                --SELECT @Profesor = ISNULL(NULLIF(RTRIM(@ProfesorN),''), @Profesor)
                DELETE CECalendario WHERE Empresa = @Empresa AND Modulo = @Modulo AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ACTIVO'
                DELETE CECalendarioGeneral WHERE Empresa = @Empresa AND Modulo = @Modulo AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ACTIVO' 
                --EXEC spCEGenerarCalendario @ID, @Modulo, 1, @OK OUTPUT, @OKRef OUTPUT, @EnSilencio = 1
              END
              ----- Termina la secuencia Horariox
            END
          END
          FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
        END
        CLOSE crCEAfectar
        DEALLOCATE crCEAfectar

        IF @Accion = 'CANCELAR'
        BEGIN
          DELETE CECalendario WHERE Modulo = @Modulo AND ModuloID = @ID --AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ACTIVO'
          DELETE CECalendarioGeneral WHERE Modulo = @Modulo AND ModuloID = @ID --AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ACTIVO'
        END
        
        IF @OK is null
          EXEC spCEGenerarCalendario @ID, @Accion, @Modulo, 1, @OK OUTPUT, @OKRef OUTPUT, @EnSilencio = 1

        END
      ELSE
      IF @MovTipo IN ('CE.I', 'CE.P')
      BEGIN
        IF @MovTipo = 'CE.I' SELECT @EstatusAlumno = 'ALTA' ELSE SELECT @EstatusAlumno = 'REVISION'
        SELECT @CfgImpInc = VentaPreciosImpuestoIncluido FROM EmpresaCfg WHERE Empresa = @Empresa
       	IF @Accion <> 'CANCELAR' EXEC spCEReCalcEncabezado @ID, @Modulo, @CfgImpInc
        SELECT @VentaMov = NULLIF(RTRIM(MovVenta),'') FROM EmpresaCfgCE WHERE Empresa = @Empresa
        IF @VentaMov is null
          SELECT @OK = 60020, @OKRef = 'Debe indicarse el Movimiento de Venta a Generar en la Configuración de Control Escolar'

	      OPEN crCEAfectar
	      FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
	      WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	      BEGIN
            IF @Accion = 'CANCELAR'
            BEGIN
              SELECT @EstatusMateria = Estatus, @Calificacion = NULLIF(Calificacion,''), @Asistencia = NULLIF(Asistencia,0) FROM CEAlumnoHist
               WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
                 AND Programa = @Programa AND CEPlan = @PlanD AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')
      --	    IF @EstatusMateria = 'APROBADA'
              IF @Calificacion is not null OR @Asistencia is not null
                SELECT @OK = 10045, @OkRef = 'El Curso ' + RTRIM(@Materia) + ' ya fue Calificada o el Alumno tiene Asistencias.'  --SELECT @OK = 10045, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya fue Calificada o el Alumno tiene Asistencias.' 
              ELSE
              BEGIN
                DELETE CEAlumnoHist WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
                                      AND Programa = @Programa AND CEPlan = @PlanD AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')
                UPDATE CEProgramaD SET Disponible = ISNULL(Disponible,0) + 1--, Reservado = ISNULL(Reservado,0) - 1 -- Correccion Etoral
                 WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa 
                   AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo
              END
           END	
        ELSE
        BEGIN
          IF @Estatus = 'SINAFECTAR'
          BEGIN
            IF Exists(SELECT * FROM CEAlumnoHist
                       WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
                         AND Programa = @Programa AND CEPlan = @PlanD AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,''))
              SELECT @OK = 10060, @OkRef = 'El Curso ' + RTRIM(@Materia) + ' ya fue Asignada al Alumno' --SELECT @OK = 10060, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya fue Asignada al Alumno' 
            ELSE
            IF Exists(SELECT * FROM CEAlumnoHist								WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @PlanD AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus NOT IN ('BAJA', 'REPROBADO', 'APROBADO') AND Grupo =@Grupo AND Programa=@Programa   /*<> 'BAJA' Correccion Etoral 6/Oct/2009*/)
            BEGIN
              --- E M M
              IF EXISTS (SELECT * FROM CEAlumnoHist								WHERE Empresa = @Empresa AND Alumno  = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION') AND Grupo =@Grupo AND Programa=@Programa AND Modulo = 'CE') 
              BEGIN --- C E
                SELECT @IDH = ModuloID,  @ModuloH = Modulo FROM CEAlumnoHist	WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION') AND Grupo = @Grupo AND Programa=@Programa
                SELECT @HorarioH = Horario FROM CED WHERE ID = @IDH
                IF @HorarioH = @Horario SELECT @OK = 10060, @OkRef = 'El Curso ' + RTRIM(@Materia) + ' ya fue Asignado' --SELECT @OK = 10060, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya fue Aprobada'
                ELSE INSERT INTO CEAlumnoHist(Empresa, Sucursal, Alumno, AlumnoTipo, Programa, CEPlan, Grupo, Materia, Estatus, Modulo, ModuloID)
                     VALUES                  (@Empresa, @Sucursal, @Contacto, @ContactoTipo, @Programa, @PlanD, @Grupo, ISNULL(@Materia,''), @EstatusAlumno, @Modulo, @ID)
                     UPDATE CED SET Reservado = 0 WHERE ID = @ID AND Renglon = @Renglon

                     UPDATE CEProgramaD SET Reservado = ISNULL(Reservado,0) - 1 
                      WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @PlanD AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')                  
              END   --- C E
              --- E M M 
              ELSE         
                SELECT @OK = 10060, @OkRef = 'El Curso ' + RTRIM(@Materia) + ' ya fue Asignado' --SELECT @OK = 10060, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya fue Aprobada'
            END
            ELSE
            BEGIN
              INSERT INTO CEAlumnoHist(Empresa, Sucursal, Alumno, AlumnoTipo, Programa, CEPlan, Grupo, Materia, Estatus, Modulo, ModuloID)
              VALUES(@Empresa, @Sucursal, @Contacto, @ContactoTipo, @Programa, @PlanD, @Grupo, ISNULL(@Materia,''), @EstatusAlumno, @Modulo, @ID)
              UPDATE CED SET Reservado = 0 WHERE ID = @ID AND Renglon = @Renglon

--            IF @EstatusNuevo <> 'CANCELADO'
              UPDATE CEProgramaD SET Reservado = ISNULL(Reservado,0) - 1 WHERE Empresa = @Empresa AND Sucursal = @Sucursal
                 AND Programa = @Programa AND CEPlan = @PlanD AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')
            END
          END
          ELSE
          IF @Estatus = 'PENDIENTE'
          BEGIN
            UPDATE CEAlumnoHist SET Estatus = 'ALTA' WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')
          END
        END
	      FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
	    END

	      CLOSE crCEAfectar
	      DEALLOCATE crCEAfectar
      END -- IF @MovTipo IN ('CE.I', 'CE.P')
      ELSE
      IF @MovTipo = 'CE.B'
      BEGIN
  	    IF @Accion <> 'CANCELAR' EXEC spCEReCalcEncabezado @ID, @Modulo, @CfgImpInc

    	  OPEN crCEAfectar
  	    FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
	      WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	      BEGIN
          IF @Accion <> 'CANCELAR'
          BEGIN
  	        SELECT @EstatusMateria = Estatus, @Calificacion = NULLIF(Calificacion,''), @Asistencia = NULLIF(Asistencia,0) FROM CEAlumnoHist
	           WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
	             AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')
	        IF @Calificacion is not NULL
	          SELECT @OK = 10045, @OkRef = 'El Curso ' + RTRIM(@Materia) + ' ya fue Calificada.' --SELECT @OK = 10045, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya fue Calificada.' 
	        ELSE
   	      IF NOT EXISTS(SELECT * FROM CEAlumnoHist
	                       WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
	                         AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,''))
   	        SELECT @OK = 10060, @OkRef = 'El Curso ' + RTRIM(@Materia) + ' no fue Asignada al Alumno con ese Grupo. No se puede dar de Baja' --SELECT @OK = 10060, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' no fue Asignada al Alumno con ese Grupo. No se puede dar de Baja'
          BEGIN
            SELECT @Espacio = Espacio, @Profesor = Profesor, @Horario = Horario
	            FROM CEProgramaD 
             WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

            UPDATE CED SET Espacio = @Espacio, Profesor = @Profesor, Horario = @Horario
             WHERE ID = @ID AND Renglon = @Renglon
/*
        DELETE CEAlumnoHist WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')*/
            UPDATE CEAlumnoHist SET Estatus = 'BAJA'
             WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
               AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')
  	         
            UPDATE CEProgramaD SET Disponible = ISNULL(Disponible,0) + 1
             WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa 
	           AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

          END
   	    END	
        ELSE
        BEGIN
     	    IF Exists(SELECT * FROM CEAlumnoHist
	                   WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
	                     AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus <> 'BAJA')
	          SELECT @OK = 10060, @OkRef = 'El Curso ' + RTRIM(@Materia) + ' ya fue Asignada al Alumno' --SELECT @OK = 10060, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya fue Asignada al Alumno' 
	        ELSE
	        IF Exists(SELECT * FROM CEAlumnoHist WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus in ('APROBADO','REPROBADO'))
	          SELECT @OK = 10060, @OkRef = 'El Curso ' + RTRIM(@Materia) + ' ya fue Calificada' --SELECT @OK = 10060, @OkRef = 'La Materia ' + RTRIM(@Materia) + ' ya fue Calificada' 
	        ELSE
	        BEGIN
/*	        INSERT INTO CEAlumnoHist(Empresa, Sucursal, Alumno, AlumnoTipo, Programa, CEPlan, Grupo, Materia, Estatus, Modulo, ModuloID)
				VALUES(@Empresa, @Sucursal, @Contacto, @ContactoTipo, @Programa, @Plan, @Grupo, ISNULL(@Materia,''), 'ALTA', @Modulo, @ID)*/
            UPDATE CEAlumnoHist SET Estatus = 'ALTA'
	           WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo
	             AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'')

	          UPDATE CEProgramaD SET Disponible = ISNULL(Disponible,0) - 1
  	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa 
	  	         AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo
	        END
	      END
	      FETCH NEXT FROM crCEAfectar INTO @Renglon, @PlanD, @Materia, @Grupo, @Espacio, @Profesor, @Cupo, @Horario
	    END

      CLOSE crCEAfectar
	    DEALLOCATE crCEAfectar
      END
    END -- IF @Modulo = 'CE' AND @Accion in ('CANCELAR', 'AFECTAR') AND @MovTipo NOT IN ('CE.BEA', 'CE.BEAU', 'CE.BED', 'CE.BES')
    
    IF @Accion IN ('CANCELAR', 'RECHAZAR')
      SELECT @Factor = -1
    ELSE
    	SELECT @Factor = 1
    	
    IF @MovTipo IN ('CE.BED', 'CE.BES')
      SELECT @Factor2 = -1
    ELSE
    	SELECT @Factor2 = 1
    
    IF @Modulo = 'CE' AND @MovTipo IN ('CE.BEA', 'CE.BEAU', 'CE.BED', 'CE.BES') AND ((@Estatus IN ('SINAFECTAR', 'PENDIENTE') AND @EstatusNuevo <> 'CANCELADO') OR (@Estatus <> 'SINAFECTAR' AND @EstatusNuevo = 'CANCELADO'))
    BEGIN
  	  DECLARE crCEActualizaBeca CURSOR FOR
       SELECT c.Cliente, ISNULL(d.CDIBecaAplicada, 0), c.Programa, d.CEPlan, ISNULL(d.Materia, ''), ISNULL(d.Precio, 0), ISNULL(d.CDIBeca, 0), ISNULL(b.Importe, 0), ISNULL(b.Reservado, 0), ISNULL(b.Ejercido, 0), ISNULL(b.ImporteOriginal, 0) - ISNULL(b.Reservado, 0) - ISNULL(b.Ejercido, 0)
  	     FROM CE c
  	     JOIN CED d ON c.ID = d.ID
         LEFT OUTER JOIN CDICEBeca b ON c.Empresa = b.Empresa AND c.Programa = b.Programa AND d.CEPlan = b.CEPlan AND ISNULL(d.Materia, '') = b.Materia
  	    WHERE c.ID = @ID
      
      OPEN crCEActualizaBeca
      FETCH next FROM crCEActualizaBeca INTO @ClienteD, @BecaAplicada, @ProgramaD, @CEPlanD, @Materia, @Precio, @CDIBeca, @ImporteBeca, @ReservadoBeca, @EjercidoBeca, @DisponibleBeca
      WHILE @@FETCH_STATUS = 0 AND @Ok IS NULL
      BEGIN
-- SELECT 5, * FROM CDICEBeca c 
-- SELECT 10, @CDIBeca, @ImporteBeca, @ReservadoBeca, @EjercidoBeca, @DisponibleBeca
   	  	SELECT @ImporteNuevo = 0, @ReservadoNuevo = 0, @EjercidoNuevo = 0

   	  	IF @MovTipo = 'CE.BES'
   	  	BEGIN
   	  	  IF @Accion = 'AFECTAR' OR @Accion = 'RECHAZAR' OR (@Accion = 'CANCELAR' AND @Estatus = 'PENDIENTE')
   	  	    SELECT @ImporteNuevo   = /*@ImporteBeca   */(@CDIBeca*@Factor*@Factor2),
   	  	           @ReservadoNuevo = /*@ReservadoBeca */-(@CDIBeca*@Factor*@Factor2)
          ELSE
   	  	  IF @Accion = 'AUTORIZAR'
   	  	    SELECT @ReservadoNuevo = /*@ReservadoBeca + */(@CDIBeca*@Factor*@Factor2),
   	  	           @EjercidoNuevo  = /*@EjercidoBeca  */- (@CDIBeca*@Factor*@Factor2)/*,
   	  	           @ImporteNuevo = @ImporteBeca*/
   	  	  ELSE
   	  	  IF @Accion = 'CANCELAR' AND @Estatus = 'AUTORIZADO'
   	  	    SELECT @EjercidoNuevo  = /*@EjercidoBeca */ - (@CDIBeca*@Factor*@Factor2),
   	  	           @ImporteNuevo   = /*@ImporteBeca   +*/ (@CDIBeca*@Factor*@Factor2)
   	  	END
   	  	ELSE
   	  		SELECT @ImporteNuevo = /*@ImporteBeca + */(@CDIBeca*@Factor*@Factor2)
-- SELECT 20, @ImporteNuevo, @Factor, @Factor2, @CDIBeca*@Factor*@Factor2

 	  	  UPDATE CDICEBeca SET ImporteOriginal = CASE WHEN @MovTipo IN ('CE.BEA', 'CE.BEAU', 'CE.BED') THEN ImporteOriginal + @ImporteNuevo ELSE ImporteOriginal END, 
 	  	                       Importe = ISNULL(Importe, 0) + @ImporteNuevo, 
 	  	                       Reservado = ISNULL(Reservado, 0) + @ReservadoNuevo, 
 	  	                       Ejercido = ISNULL(Ejercido, 0) + @EjercidoNuevo
 	  	  WHERE Empresa = @Empresa AND Programa = @ProgramaD AND CEPlan = @CEPlanD AND Materia = @Materia
   	  	 
   	  	IF @@ROWCOUNT = 0
   	  	  INSERT INTO CDICEBeca(Empresa,  Programa,   CEPlan,   Materia,  Importe,       Reservado,       Ejercido, ImporteOriginal)
   	  	                VALUES(@Empresa, @ProgramaD, @CEPlanD, @Materia, @ImporteNuevo, @ReservadoNuevo, @EjercidoNuevo, @ImporteNuevo)

-- SELECT 100, * FROM CDICEBeca c 
    	  FETCH next FROM crCEActualizaBeca INTO @ClienteD, @BecaAplicada, @ProgramaD, @CEPlanD, @Materia, @Precio, @CDIBeca, @ImporteBeca, @ReservadoBeca, @EjercidoBeca, @DisponibleBeca
      END
      
      CLOSE crCEActualizaBeca
      DEALLOCATE crCEActualizaBeca
    END

-- SELECT @OK = 1
    IF @Ok IS NULL
      EXEC spCEGenerarVenta @ID, @Accion, @Empresa, @Modulo, @Mov, @MovID, @MovTipo, @MovMoneda, @MovTipoCambio, 
                            @FechaEmision, @FechaAfectacion, @FechaConclusion,
			                @Proyecto, @Usuario, @Autorizacion, @Observaciones, 
			                @Estatus, @EstatusNuevo, @FechaRegistro, @Ejercicio, @Periodo, 
			                @FechaInicio, @FechaFin,
			                @Cliente, @Cliente2, @Personal, @Condicion, @Descuento, @Concepto, @Referencia, @Porcentaje, @Porcentaje2,
			                @Plan, @CreditoDirecto, @Programa,
			                @SincroFinal, @Sucursal, @Conexion,
			              -- @GenerarMov OUTPUT, @IDGenerar OUTPUT, @GenerarMovID OUTPUT,
			                @Ok OUTPUT, @OkRef OUTPUT

    -- Actualizar Movimiento
    IF @Ok IN (NULL, 80030)
    BEGIN
      IF @EstatusNuevo = 'CANCELADO' SELECT @FechaCancelacion = @FechaRegistro ELSE SELECT @FechaCancelacion = NULL
      IF @EstatusNuevo = 'CONCLUIDO' SELECT @FechaConclusion  = @FechaEmision  ELSE IF @EstatusNuevo <> 'CANCELADO' SELECT @FechaConclusion  = NULL
/*      IF @CfgContX = 1 AND @CfgContXGenerar <> 'NO'
      BEGIN
	IF @Estatus =  'SINAFECTAR' AND @EstatusNuevo <> 'CANCELADO' SELECT @GenerarPoliza = 1 ELSE
        IF @Estatus <> 'SINAFECTAR' AND @EstatusNuevo =  'CANCELADO' IF @GenerarPoliza = 1 SELECT @GenerarPoliza = 0 ELSE SELECT @GenerarPoliza = 1
      END  

      EXEC spValidarTareas @Empresa, @Modulo, @ID, @EstatusNuevo, @Ok OUTPUT, @OkRef OUTPUT*/
      UPDATE CE
         SET FechaConclusion  = @FechaConclusion, 
             FechaCancelacion = @FechaCancelacion,
             FechaRegistro    = CASE @EstatusNuevo WHEN 'CONCLUIDO' THEN @FechaRegistro WHEN 'PENDIENTE' THEN @FechaRegistro ELSE FechaRegistro END,
             UltimoCambio     = /*CASE WHEN UltimoCambio IS NULL THEN */@FechaRegistro /*ELSE UltimoCambio END*/,
             Estatus          = @EstatusNuevo,
             Situacion 	      = CASE WHEN @Estatus <> @EstatusNuevo THEN NULL ELSE Situacion END/*,
             GenerarPoliza    = @GenerarPoliza*/
       WHERE ID = @ID 
      IF @@ERROR <> 0 SELECT @Ok = 1
    END
 
  -- Agregar a Estatus Log
  IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
    EXEC spMovFinal @Empresa, @Sucursal, @Modulo, @ID, @Estatus, @EstatusNuevo, @Usuario, @FechaEmision, @FechaRegistro, @Mov, @MovID, @MovTipo, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT

  -- Cancelar el Flujo
  IF @Accion = 'CANCELAR' AND @EstatusNuevo = 'CANCELADO' AND @Ok IS NULL
    EXEC spCancelarFlujo @Empresa, @Modulo, @ID, @Ok OUTPUT 

  IF @Conexion = 0
    IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
      COMMIT TRANSACTION
    ELSE
      ROLLBACK TRANSACTION

RETURN
END
GO

/**************** xpCEVerificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.xpCEVerificar') and type = 'P') drop procedure dbo.xpCEVerificar
GO
CREATE PROCEDURE xpCEVerificar
		@ID			int,
		@Accion			char(20),
		@Empresa		char(5),
		@Usuario		char(10),
		@Modulo			char(5),
		@Mov			varchar(20),
		@MovID			varchar(20),
		@MovTipo		char(20),
		@MovMoneda		char(10),
		@MovTipoCambio		float,
		@FechaEmision		datetime,
		@Estatus		char(15),
		@FechaInicio		datetime,
		@FechaFin		datetime,
		@Cliente		char(10),
		@Cliente2		char(10),
		@Personal		char(10),
		@Condicion		varchar(50),
		@Descuento		varchar(50),
		@Porcentaje		float,
		@Porcentaje2		float,
		@Plan			char(10),
		@CreditoDirecto		bit,
		@Programa		char(10),
		@Conexion		bit,
		@SincroFinal		bit,
		@Sucursal		int,
		@Ok 			int 		OUTPUT, 
		@OkRef 			varchar(255)	OUTPUT

AS
BEGIN


RETURN
END
GO

/**************** spCEMovConsecutivo ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEMovConsecutivo') and type = 'P') drop procedure dbo.spCEMovConsecutivo
GO             
CREATE PROCEDURE spCEMovConsecutivo
			@Sucursal		int,
--			@SucursalOrigen		int,
--			@SucursalDestino	int,
		    	@Empresa		char(5), 
			@Usuario		char(10),
			@Modulo			char(5), 
			@Ejercicio		int, 
			@Periodo		int,
			@ID			int,
			@Mov			char(20), 
--			@Serie			char(20),
			@Estatus		char(15),
			@Concepto		varchar(50),

	      	        @Accion			char(20),
			@Conexion		bit,
			@SincroFinal		bit,

			@MovID 			varchar(20)	OUTPUT, 

			@Ok			int		OUTPUT,
		        @OkRef			varchar(255)	OUTPUT
-- WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Prefijo			char(10),
--    @PuedeEditar		bit,
--    @SucursalConsecutivo	int,
--    @SucursalPrincipal		int,
--    @EnLinea			bit,
    @MovTipo			varchar(20)

  IF @Accion <> 'CANCELAR' AND NULLIF(RTRIM(@Concepto), '') IS NOT NULL AND @Ok IS NULL
    IF EXISTS(SELECT * FROM EmpresaConcepto c, EmpresaConceptoValidar v WHERE v.Empresa = c.Empresa AND v.Modulo = c.Modulo AND v.Mov = c.Mov AND c.Empresa = @Empresa AND c.Modulo = @Modulo AND c.Mov = @Mov)
      IF NOT EXISTS(SELECT * FROM EmpresaConceptoValidar WHERE Empresa = @Empresa AND Modulo = @Modulo AND Mov = @Mov AND Concepto = @Concepto)
        SELECT @Ok = 20485, @OkRef = RTRIM(@Mov) + ' ('+RTRIM(@Concepto)+')'

  IF @Ok IS NOT NULL RETURN
  BEGIN TRANSACTION
    SELECT @MovID = NULLIF(RTRIM(@MovID), '')


    IF @MovID IS NULL AND @OK IS NULL
    BEGIN
        EXEC spCEConsecutivoAuto @Sucursal, @Empresa, @Modulo, @Mov, @Ejercicio, @Periodo, @MovID OUTPUT, @OK OUTPUT

      IF @MovID IS NOT NULL AND @Ok IS NULL 
      BEGIN
        SELECT @Prefijo = NULL
        SELECT @Prefijo = NULLIF(RTRIM(Prefijo), '') FROM Sucursal WHERE Sucursal = @Sucursal
--        EXEC xpConsecutivoPrefijo @Empresa, @Modulo, @ID, @Mov, @Prefijo OUTPUT, @Ok OUTPUT, @OkRef OUTPUT
        IF @Prefijo IS NOT NULL
        BEGIN
          IF ISNUMERIC(@Prefijo) = 1 SELECT @Ok = 70110, @OkRef = @Prefijo
          SELECT @MovID = RTRIM(@Prefijo) + RTRIM(@MovID)
--          IF @Serie IS NULL SELECT @Serie = @Prefijo
--        END ELSE
--        BEGIN
--          IF @SucursalPrincipal IS NULL SELECT @SucursalPrincipal = Sucursal FROM Version
--          IF @SucursalConsecutivo <> @SucursalPrincipal
--          BEGIN
--            SELECT @MovID = NULL, @SucursalConsecutivo = @SucursalPrincipal
--            EXEC spConsecutivoAuto @SucursalConsecutivo, @Empresa, @Modulo, @Mov, @Ejercicio, @Periodo, @Serie, @MovID OUTPUT, @OK OUTPUT
--          END
        END
      END

      IF @Ok IS NULL  
      BEGIN
        IF @Modulo = 'CE' 	UPDATE CE SET MovID = @MovID WHERE ID = @ID ELSE
        IF @Modulo = 'CA' 	UPDATE CA SET MovID = @MovID WHERE ID = @ID
        IF @@ERROR <> 0 SELECT @Ok = 1
      END
    END

  IF @Ok IS NULL
    COMMIT TRANSACTION
  ELSE
  BEGIN
    IF @Ok IS NULL
      SELECT @Ok = 30010, @OkRef = LTRIM(Convert(char, @MovID))
    ROLLBACK TRANSACTION
  END

  RETURN
END
GO

/************** spCEConsecutivoAuto *************/
if exists (select * from sysobjects where id = object_id('dbo.spCEConsecutivoAuto') and type = 'P') drop procedure dbo.spCEConsecutivoAuto
GO
CREATE PROCEDURE spCEConsecutivoAuto
		   @Sucursal		int,
                   @Empresa     	char(5),
                   @Modulo		char(5),
                   @Mov      		char(20),
                   @Ejercicio	        int,
                   @Periodo	        int,
--		   @Serie		char(20),
                   @MovID		varchar(20)	OUTPUT,
		   @Ok			int		OUTPUT
-- WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
    @Consecutivo		int,
    @ConsecutivoPorPeriodo	bit,
    @ConsecutivoPorEjercicio	bit,
    @ConsecutivoPorEmpresa	char(20),
    @ConsecutivoSerial		bit,
    @ConsecutivoDigitos		int,
    @ConsecutivoSucursalEsp	bit,
    @SucursalEsp		int,
    @ModuloAfectacion		char(5),
    @MovIDSt			char(20),
    @Serie			char(20)

  SELECT @Serie = NULL

  IF @MovID IS NULL 
  BEGIN
    SELECT @ModuloAfectacion 	    = @Modulo
    SELECT @Modulo 		    = ConsecutivoModulo,
           @Mov    		    = ConsecutivoMov,
           @ConsecutivoPorPeriodo   = ConsecutivoPorPeriodo,
           @ConsecutivoPorEjercicio = ConsecutivoPorEjercicio,
           @ConsecutivoPorEmpresa   = ISNULL(UPPER(ConsecutivoPorEmpresa), 'SI'),
           @ConsecutivoSucursalEsp  = ISNULL(ConsecutivoSucursalEsp, 0),
           @SucursalEsp             = SucursalEsp
      FROM MovTipo
     WHERE Modulo = @Modulo
       AND Mov    = @Mov

    IF @@ERROR <> 0 SELECT @Ok = 1

    SELECT @ConsecutivoSerial  = ConsecutivoSerial, 
           @ConsecutivoDigitos = ConsecutivoDigitos 
      FROM EmpresaGral 
     WHERE Empresa = @Empresa

    IF @ConsecutivoPorPeriodo   = 0 SELECT @Periodo = NULL
    IF @ConsecutivoPorEjercicio = 0 SELECT @Ejercicio = NULL
    IF @ConsecutivoPorEmpresa   = 'NO'    SELECT @Empresa = NULL ELSE
    IF @ConsecutivoPorEmpresa   = 'GRUPO' SELECT @Empresa = Clave FROM EmpresaGrupo, Empresa WHERE EmpresaGrupo.Grupo = Empresa.Grupo AND Empresa.Empresa = @Empresa
    IF @ConsecutivoSucursalEsp = 1 AND @SucursalEsp IS NOT NULL SELECT @Sucursal = @SucursalEsp

    IF @Modulo = 'CE'  UPDATE CEC       SET Consecutivo = Consecutivo + 1 WHERE Sucursal = @Sucursal AND Empresa = @Empresa AND Mov = @Mov AND Serie = @Serie AND Ejercicio = @Ejercicio AND Periodo = @Periodo ELSE
    IF @Modulo = 'CA'  UPDATE CAC       SET Consecutivo = Consecutivo + 1 WHERE Sucursal = @Sucursal AND Empresa = @Empresa AND Mov = @Mov AND Serie = @Serie AND Ejercicio = @Ejercicio AND Periodo = @Periodo

    IF @@ERROR <> 0 SELECT @Ok = 1
--    EXEC spConsecutivoUltimo @Sucursal, @Empresa, @Modulo, @Mov, @Ejercicio, @Periodo, @Serie, @Consecutivo OUTPUT, @Ok OUTPUT

    IF @Modulo = 'CE'
    BEGIN
      SELECT @Consecutivo = MAX(Consecutivo) FROM CEC WHERE Sucursal = @Sucursal AND Empresa = @Empresa AND Mov = @Mov AND Serie = @Serie AND Ejercicio = @Ejercicio AND Periodo = @Periodo
      IF NULLIF(@Consecutivo, 0) = NULL AND @Ok IS NULL
        BEGIN
          INSERT INTO CEC       (Sucursal, Empresa, Mov, Serie, Ejercicio, Periodo, Consecutivo) VALUES (@Sucursal, @Empresa, @Mov, @Serie, @Ejercicio, @Periodo, 1)
        IF @@ERROR <> 0 SELECT @Ok = 1
          SELECT @Consecutivo = 1
        END 
    END
    ELSE
    IF @Modulo = 'CA'
    BEGIN
      SELECT @Consecutivo = MAX(Consecutivo) FROM CAC WHERE Sucursal = @Sucursal AND Empresa = @Empresa AND Mov = @Mov AND Serie = @Serie AND Ejercicio = @Ejercicio AND Periodo = @Periodo
      IF NULLIF(@Consecutivo, 0) = NULL AND @Ok IS NULL
        BEGIN
          INSERT INTO CAC       (Sucursal, Empresa, Mov, Serie, Ejercicio, Periodo, Consecutivo) VALUES (@Sucursal, @Empresa, @Mov, @Serie, @Ejercicio, @Periodo, 1)
        IF @@ERROR <> 0 SELECT @Ok = 1
          SELECT @Consecutivo = 1
        END 
    END

    SELECT @MovID = CONVERT(varchar, @Consecutivo)

/*    IF @ConsecutivoSerial = 1 
    BEGIN
      SELECT @Serie = LTRIM(RTRIM(@Serie))
      IF @Serie IS NOT NULL AND ISNUMERIC(@Serie) = 1
      BEGIN
        EXEC spLlenarCeros @MovID, @ConsecutivoDigitos, @MovIDSt OUTPUT
        SELECT @MovID = CONVERT(int, LTRIM(RTRIM(@Serie)) + RTRIM(LTRIM(@MovIDSt)))
      END
    END
*/
  END
  RETURN 
END
GO

/**************** spCEMovChecarConsecutivo ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEMovChecarConsecutivo') and type = 'P') drop procedure dbo.spCEMovChecarConsecutivo
GO             
CREATE PROCEDURE spCEMovChecarConsecutivo
		    	@Empresa	char(5), 
			@Modulo		char(5), 
			@Mov		char(20),
			@MovID		varchar(20),
--			@Serie		char(20),
			@Ejercicio	int,
			@Periodo	int,
			@Ok		int		OUTPUT,
		        @OkRef		varchar(255)	OUTPUT
-- WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
    @YaExiste int,
    @ConsecutivoPorPeriodo	bit,
    @ConsecutivoPorEjercicio	bit,
    @Serie			char(20)

  SELECT @Serie = NULL

  SELECT @ConsecutivoPorPeriodo	  = ConsecutivoPorPeriodo,
	 @ConsecutivoPorEjercicio = ConsecutivoPorEjercicio
    FROM MovTipo
   WHERE Modulo = @Modulo 
     AND Mov    = @Mov

  SELECT @YaExiste = NULL
  IF @ConsecutivoPorPeriodo = 1
  BEGIN
    IF @Modulo = 'CE'    SELECT @YaExiste = COUNT(*) FROM CE         WHERE Empresa = @Empresa AND Mov = @Mov AND MovID = @MovID AND Estatus NOT IN (SELECT Estatus FROM CfgEstatusConsecutivoDuplicado) AND Ejercicio = @Ejercicio AND Periodo = @Periodo ELSE
    IF @Modulo = 'CA'    SELECT @YaExiste = COUNT(*) FROM CA         WHERE Empresa = @Empresa AND Mov = @Mov AND MovID = @MovID AND Estatus NOT IN (SELECT Estatus FROM CfgEstatusConsecutivoDuplicado) AND Ejercicio = @Ejercicio AND Periodo = @Periodo
  END ELSE
  IF @ConsecutivoPorEjercicio = 1
  BEGIN
    IF @Modulo = 'CE'    SELECT @YaExiste = COUNT(*) FROM CE         WHERE Empresa = @Empresa AND Mov = @Mov AND MovID = @MovID AND Estatus NOT IN (SELECT Estatus FROM CfgEstatusConsecutivoDuplicado) AND Ejercicio = @Ejercicio ELSE
    IF @Modulo = 'CA'    SELECT @YaExiste = COUNT(*) FROM CA         WHERE Empresa = @Empresa AND Mov = @Mov AND MovID = @MovID AND Estatus NOT IN (SELECT Estatus FROM CfgEstatusConsecutivoDuplicado) AND Ejercicio = @Ejercicio 
  END ELSE
  BEGIN
    IF @Modulo = 'CE'    SELECT @YaExiste = COUNT(*) FROM CE         WHERE Empresa = @Empresa AND Mov = @Mov AND MovID = @MovID AND Estatus NOT IN (SELECT Estatus FROM CfgEstatusConsecutivoDuplicado) ELSE
    IF @Modulo = 'CA'    SELECT @YaExiste = COUNT(*) FROM CA         WHERE Empresa = @Empresa AND Mov = @Mov AND MovID = @MovID AND Estatus NOT IN (SELECT Estatus FROM CfgEstatusConsecutivoDuplicado)
  END
  IF @@ERROR <> 0 SELECT @Ok = 1
  IF ISNULL(@YaExiste, 0) > 0 SELECT @Ok = 30010, @OkRef = RTRIM(@Mov)+' '+RTRIM(@MovID)+' ('+RTRIM(@Modulo)+')'
  RETURN
END
GO

/**************** spCEReCalcEncabezado ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEReCalcEncabezado') and type = 'P') drop procedure dbo.spCEReCalcEncabezado
GO             
CREATE PROCEDURE spCEReCalcEncabezado
    		   @ID          	int,
		   @Modulo		char(5),
		   @CfgImpInc		bit

--WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Empresa		    char(5), 
    @Usuario		    char(10), 
    @Sucursal		    int,
    @Mov		    char(20), 
    @MovID		    varchar(20), 
    @MovTipo		    char(20),
    @MovMoneda		    char(10), 
    @MovTipoCambio	    float,
    @FechaEmision           datetime,
    @FechaRegistro          datetime,
    @Renglon		    float,
    @Precio		    float,
    @Costo		    money,
    @DescuentoGlobal 	    float,
    @DescuentoTipo	    char(1),
    @DescuentoLinea	    float,
    @Impuesto1		    float,
    @Importe 		    money, 
    @ImporteNeto	    money, 
    @Impuestos 		    money,

    @Inscripcion	    float,
    @InscripcionNeto	    float,
    @InscripcionDesc	    float,
    @InscripcionImporte	    float,
    @InscripcionImpuesto    float,
    @Plan		    char(10),

    @DescuentoLineaImporte  money, 
    @DescuentoGlobalImporte money,
    @SumaImporte	    money,
    @SumaImporteNeto	    money,
    @SumaImpuestos	    money,
    @SumaDescuentoLinea	    money,
    @SumaPrecioLinea	    money,
    @Ok			    int,
    @OkRef		    varchar(255),	
    @RedondeoMonetarios	    int

  SELECT @RedondeoMonetarios = RedondeoMonetarios FROM Version 
  SELECT @Ok			= NULL,
         @OkRef			= NULL,
         @FechaRegistro		= GETDATE(),

	 @InscripcionNeto	= 0.0,
	 @InscripcionDesc	= 0.0,
	 @InscripcionImporte	= 0.0,
	 @InscripcionImpuesto   = 0.0,

	 @SumaImporte    	= 0.0,
         @SumaImporteNeto    	= 0.0,
         @SumaImpuestos	    	= 0.0,
	 @SumaDescuentoLinea	= 0.0,
         @SumaPrecioLinea	= 0.0

  IF @Modulo = 'CE'
  BEGIN
    SELECT @Empresa = e.Empresa, @Usuario = e.Usuario, @Sucursal = e.Sucursal, @Mov = e.Mov, @MovID = e.MovID, @MovTipo = mt.Clave, @MovMoneda = e.Moneda, @MovTipoCambio = e.TipoCambio, @FechaEmision = e.FechaEmision, @Inscripcion = ISNULL(Inscripcion,0), @Plan = ISNULL(CEPlan,''), @DescuentoGlobal = ISNULL(DescuentoGlobal,0)
      FROM CE e, MovTipo mt
     WHERE e.ID = @ID AND mt.Modulo = @Modulo AND mt.Mov = e.Mov

    SELECT @Impuesto1 = Impuesto1 FROM CEPlan WHERE CEPlan = @Plan

    DECLARE crCEDetalleRecalc CURSOR LOCAL
       FOR SELECT d.Renglon, ISNULL(d.Precio, 0.0), ISNULL(d.DescuentoLineal, 0.0) 
             FROM CED d
            WHERE d.ID = @ID
  END

  OPEN crCEDetalleRecalc
  FETCH NEXT FROM crCEDetalleRecalc INTO @Renglon, @Precio, @DescuentoLinea

  WHILE @@FETCH_STATUS <> -1 
  BEGIN
    IF @@FETCH_STATUS <> -2
    BEGIN
      EXEC spCECalculaImporte NULL, @Modulo, @CfgImpInc, @Precio, '%', @DescuentoLinea, @DescuentoGlobal, @Impuesto1, 
                            @Importe OUTPUT, @ImporteNeto OUTPUT, @DescuentoLineaImporte OUTPUT, @DescuentoGlobalImporte OUTPUT, 
                            @Impuestos OUTPUT

      SELECT @SumaImporte         = @SumaImporte         + @Importe,
             @SumaImporteNeto     = @SumaImporteNeto     + @ImporteNeto,
             @SumaImpuestos       = @SumaImpuestos 	 + @Impuestos,
             @SumaDescuentoLinea  = @SumaDescuentoLinea  + @DescuentoLineaImporte
    END
    IF @Modulo = 'CE'   FETCH NEXT FROM crCEDetalleRecalc INTO @Renglon, @Precio, @DescuentoLinea
  END

  IF @Modulo = 'CE'
  BEGIN 

    IF @CfgImpInc = 1
      SELECT @InscripcionNeto = @Inscripcion/(1+(@Impuesto1/100))
    ELSE
      SELECT @InscripcionNeto = @Inscripcion

    SELECT @InscripcionDesc = @InscripcionNeto * (ISNULL(@DescuentoGlobal,0)/100),
	   @InscripcionImporte = @InscripcionNeto - @InscripcionDesc,
	   @InscripcionImpuesto = @InscripcionImporte * (@Impuesto1/100)

    SELECT @SumaImporte = @SumaImporte + @InscripcionNeto,
	   @SumaImpuestos = @SumaImpuestos + @InscripcionImpuesto

    UPDATE CE SET Importe = @SumaImporte, Impuestos = @SumaImpuestos, DescuentoLineal = @SumaDescuentoLinea WHERE ID = @ID 
    IF @@ERROR <> 0 SELECT @Ok = 1
    CLOSE crCEDetalleRecalc
    DEALLOCATE crCEDetalleRecalc
  END

END
GO

/**************** spCECalculaImporte ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCECalculaImporte') and type = 'P') drop procedure dbo.spCECalculaImporte
GO             
CREATE PROCEDURE spCECalculaImporte
                   @Accion			char(20),
		   @Modulo			char(5),
		   @CfgImpInc			bit,
		   @Precio	  		float,
	           @DescuentoTipo		char(1),
		   @DescuentoLinea 		float,
		   @DescuentoGlobal		float,
		   @Impuesto1			float,
		   @Importe			float	OUTPUT,
		   @ImporteNeto			float	OUTPUT,
		   @DescuentoLineaImporte	float	OUTPUT,
		   @DescuentoGlobalImporte	float   OUTPUT,
		   @Impuestos			float   OUTPUT

-- WITH ENCRYPTION
AS BEGIN
  DECLARE
    @PorDescLinea	float,
    @PorDescGlobal	float,
    @SubImpuesto1	float,
    @SubImpuestoNeto1	float,
    @RedondeoMonetarios int

  SELECT @RedondeoMonetarios = RedondeoMonetarios FROM Version

  SELECT @Precio   	  = ISNULL(@Precio, 0.0),
	 @DescuentoTipo   = ISNULL(@DescuentoTipo, '%'),
	 @DescuentoLinea  = ISNULL(@DescuentoLinea, 0.0),
       	 @DescuentoGlobal = ISNULL(@DescuentoGlobal, 0.0),
	 @Impuesto1	  = ISNULL(@Impuesto1, 0.0)

  SELECT @PorDescLinea    = CONVERT(float, @DescuentoLinea/100.0),
	 @PorDescGlobal   = CONVERT(float, @DescuentoGlobal/100.0)

  IF @CfgImpInc = 1 
    SELECT @Precio = @Precio/(1+(@Impuesto1/100.0))		

  SELECT @Importe                = @Precio,
         @DescuentoGlobalImporte = 0.0, 
         @Impuestos              = 0.0

  SELECT @DescuentoLineaImporte = @DescuentoLinea

  IF @DescuentoLinea <> 0.0 
  BEGIN
    IF @DescuentoTipo <> '$' 
      SELECT @DescuentoLineaImporte = @Importe * @PorDescLinea
    SELECT @Importe = @Importe - @DescuentoLineaImporte
  END

  IF @DescuentoGlobal <> 0.0 
    SELECT @DescuentoGlobalImporte = ROUND(@Importe * @PorDescGlobal, @RedondeoMonetarios)

  SELECT @ImporteNeto      = @Importe - @DescuentoGlobalImporte

  SELECT @Impuestos    = @ImporteNeto * (@Impuesto1/100.0)

  RETURN
END
GO

/**************** spCAGenerarListaAsistencia ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCAGenerarListaAsistencia') and type = 'P') drop procedure dbo.spCAGenerarListaAsistencia
GO             
CREATE PROCEDURE spCAGenerarListaAsistencia
		@ID		int,
		@Empresa	char(5),
		@Sucursal	int

AS
BEGIN
	DECLARE
		@Estatus	char(15),
		@Mov		char(20),
		@Plan		char(10),
		@Programa	char(10),
		@Materia	char(10),
		@Grupo		char(10),
		@MovTipo	char(10),
		@Renglon	float,
		@Alumno		char(10),
		@Profesor	char(10),
		@Personal	char(10)

  SELECT @Renglon = 2048

  SELECT @Estatus = Estatus, @Mov = Mov, @Plan = NULLIF(CEPlan,''), @Programa = NULLIF(Programa,''), @Materia = ISNULL(Materia,''), @Grupo = NULLIF(Grupo,'')
    FROM CA
   WHERE ID = @ID

  IF @Estatus <> 'SINAFECTAR'
    RETURN

  DELETE CAD WHERE ID = @ID

  SELECT @MovTipo = Clave FROM MovTipo WHERE Modulo = 'CA' AND Mov = @Mov

  IF @MovTipo IN ('CA.AC', 'CA.CC')
  BEGIN
    DECLARE crCAGLA CURSOR FOR
    SELECT Alumno
      FROM CEAlumnoHist
     WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND AlumnoTipo = 'Cliente' AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ALTA'

    OPEN crCAGLA
    FETCH NEXT FROM crCAGLA INTO @Alumno
    WHILE @@FETCH_STATUS = 0
    BEGIN
      INSERT INTO CAD(ID, Renglon, Cliente)
	VALUES(@ID, @Renglon, @Alumno)
      SELECT @Renglon = @Renglon + 2048
      FETCH NEXT FROM crCAGLA INTO @Alumno
    END
    CLOSE crCAGLA
    DEALLOCATE crCAGLA
  END  
  ELSE
  IF @MovTipo = 'CA.APE'
  BEGIN
    DECLARE crCAGLA CURSOR FOR
    SELECT Alumno
      FROM CEAlumnoHist
     WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND AlumnoTipo = 'Personal' AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo AND Estatus = 'ALTA'

    OPEN crCAGLA
    FETCH NEXT FROM crCAGLA INTO @Personal
    WHILE @@FETCH_STATUS = 0
    BEGIN
      INSERT INTO CAD(ID, Renglon, Personal)
	VALUES(@ID, @Renglon, @Personal)
      SELECT @Renglon = @Renglon + 2048
      FETCH NEXT FROM crCAGLA INTO @Personal
    END
    CLOSE crCAGLA
    DEALLOCATE crCAGLA
  END  
  ELSE
  IF @MovTipo = 'CA.APR'
  BEGIN
    SELECT @Profesor = NULLIF(Profesor,'')
      FROM CEProgramaD
     WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Grupo = @Grupo

    IF @Profesor is not null
    BEGIN
      INSERT INTO CAD(ID, Renglon, Profesor)
	VALUES(@ID, @Renglon, @Profesor)
      SELECT @Renglon = @Renglon + 2048
    END

    DECLARE crCAGLA CURSOR FOR
    SELECT p.Profesor
      FROM CEProgramaD c, CEProgramaDProfesor p
     WHERE c.ID = p.ID
       AND c.Empresa = @Empresa AND c.Sucursal = @Sucursal AND c.Programa = @Programa AND c.CEPlan = @Plan AND ISNULL(c.Materia,'') = ISNULL(@Materia,'') AND c.Grupo = @Grupo
       AND p.Profesor <> @Profesor

    OPEN crCAGLA
    FETCH NEXT FROM crCAGLA INTO @Profesor
    WHILE @@FETCH_STATUS = 0
    BEGIN
      INSERT INTO CAD(ID, Renglon, Profesor)
	VALUES(@ID, @Renglon, @Profesor)
      SELECT @Renglon = @Renglon + 2048
      FETCH NEXT FROM crCAGLA INTO @Profesor
    END
    CLOSE crCAGLA
    DEALLOCATE crCAGLA

  END  
RETURN
END
GO

/**************** spCA ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCA') and type = 'P') drop procedure dbo.spCA
GO
CREATE PROCEDURE spCA
                   @ID                  	int,
    		   @Modulo	      		char(5),
		   @Accion			char(20),
		   @Base			char(20),
		   @FechaRegistro		datetime,
		   @GenerarMov			char(20),
		   @Usuario			char(10),
    		   @Conexion			bit,
		   @SincroFinal			bit,
    		   @Mov	      			char(20)	OUTPUT,
    		   @MovID            		varchar(20)	OUTPUT,
		   @IDGenerar			int		OUTPUT,

		   @Ok				int		OUTPUT,
		   @OkRef			varchar(255)	OUTPUT
-- WITH ENCRYPTION
AS BEGIN
  -- SET nocount ON
  DECLARE
    @Sucursal		int,
    @SucursalDestino	int,
    @SucursalOrigen	int,
--    @EnLinea		bit,
--    @PuedeEditar	bit,
    @Empresa	      	char(5),
    @MovTipo   		char(20),
    @FechaEmision     	datetime,
    @FechaAfectacion	datetime,
    @FechaConclusion	datetime,
    @Proyecto	      	varchar(50),
    @MovUsuario	      	char(10),
    @Observaciones    	varchar(255),
    @Estatus          	char(15),
    @EstatusNuevo	char(15),
    @Ejercicio	      	int,
    @Periodo	      	int,
    @Concepto		varchar(50),
    @Referencia  	varchar(50),
    @Importe		money,
    @Impuestos		money,
    @FechaInicio	datetime,
    @FechaFin		datetime,

    @Cliente		char(10),
    @Personal		char(10),
    @Profesor		char(10),
    @Plan		char(10),
    @CreditoDirecto	bit,
    @Programa		char(10),
    @Materia		char(10),
    @Grupo		char(10),
    @GenerarMovID	varchar(20)
--    @GenerarPoliza	bit,
--    @CfgContX		bit,
--    @CfgContXGenerar	char(20)/*,
--    @Verificar		bit*/

  -- Leer Datos Generales del Movimiento
  SELECT @Sucursal = Sucursal, --@SucursalDestino = SucursalDestino, @SucursalOrigen = SucursalOrigen, 
         @Empresa = Empresa, @MovID = MovID, @Mov = Mov, @FechaEmision = FechaEmision, @Proyecto = Proyecto,
         @MovUsuario = Usuario, 
         @Observaciones = Observaciones, @Estatus = UPPER(Estatus), 
	 @Plan = NULLIF(RTRIM(CEPlan), ''), @Programa = NULLIF(RTRIM(Programa), ''), @Materia = ISNULL(RTRIM(Materia), ''), @Grupo = NULLIF(RTRIM(Grupo), ''),
         @Cliente = NULLIF(RTRIM(Cliente), ''), 
         @Concepto = Concepto, @Referencia = Referencia, 
         @FechaConclusion = FechaConclusion
    FROM CA
   WHERE ID = @ID
  IF @@ERROR <> 0 SELECT @Ok = 1

  SELECT @CreditoDirecto = CreditoDirecto FROM CEPlan WHERE CEPlan = @Plan

  IF NULLIF(RTRIM(@Usuario), '') IS NULL SELECT @Usuario = @MovUsuario
  -- Leer MovTipo, Periodo y Ejercicio	
  IF @Accion = 'AFECTAR' SELECT @FechaAfectacion = @FechaEmision ELSE SELECT @FechaAfectacion = @FechaRegistro
--  EXEC spFechaAfectacion @Empresa, @Modulo, @ID, @Accion, @FechaEmision OUTPUT, @FechaRegistro, @FechaAfectacion OUTPUT
  EXEC spExtraerFecha @FechaAfectacion OUTPUT
  EXEC spExtraerFecha @FechaInicio OUTPUT
  EXEC spExtraerFecha @FechaFin OUTPUT

  EXEC spMovTipo @Modulo, @Mov, @FechaAfectacion, NULL, NULL, NULL, @MovTipo OUTPUT, @Periodo OUTPUT, @Ejercicio OUTPUT, @Ok OUTPUT
-- Valida Fechas
  EXEC spMovOk @SincroFinal, @ID, @Estatus, @Sucursal, @Accion, @Empresa, @Usuario, @Modulo, @Mov, @FechaAfectacion, @FechaRegistro, @Ejercicio, @Periodo, @Proyecto, @Ok OUTPUT, @OkRef OUTPUT

/*
  IF @Ok IS NULL
  BEGIN
    IF @SucursalDestino IS NOT NULL AND @SucursalDestino <> @Sucursal AND @Accion = 'AFECTAR'
    BEGIN
      EXEC spSucursalEnLinea @SucursalDestino, @EnLinea OUTPUT
      IF @EnLinea = 1 
      BEGIN
        EXEC spMovConsecutivo @Sucursal, @SucursalOrigen, @SucursalDestino, @Empresa, @Usuario, @Modulo, @Ejercicio, @Periodo, @ID, @Mov, NULL, @Estatus, @Concepto, @Accion, @Conexion, @SincroFinal, @MovID OUTPUT, @Ok OUTPUT, @OkRef OUTPUT
        EXEC spAsignarSucursalEstatus @ID, @Modulo, @SucursalDestino, NULL
        SELECT @Sucursal = @SucursalDestino
      END ELSE
        SELECT @Accion = 'SINCRO'
    END

    IF @Estatus = 'SINCRO' AND @Accion = 'CANCELAR'
    BEGIN
      EXEC spPuedeEditarMovMatrizSucursal @Sucursal, @SucursalOrigen, @ID, @Modulo, @Empresa, @Usuario, @Mov, @Estatus, 1, @PuedeEditar OUTPUT
      IF @PuedeEditar = 0 
        SELECT @Ok = 60300 
      ELSE BEGIN
--        SELECT @Estatus = 'SINAFECTAR'--, @Verificar = 0
        EXEC spAsignarSucursalEstatus @ID, @Modulo, @Sucursal, @Estatus
      END
    END
  END
*/

  IF (@Accion <> 'CANCELAR' AND @Estatus IN ('SINAFECTAR')) OR 
     (@Accion = 'CANCELAR'  AND @Estatus IN ('CONCLUIDO'))
  BEGIN
/*
    SELECT @CfgContX = ContX
      FROM EmpresaGral
     WHERE Empresa = @Empresa
    IF @@ERROR <> 0 SELECT @Ok = 1

    IF @CfgContX = 1 
      SELECT @CfgContXGenerar = ContXGenerar
        FROM EmpresaCfgModulo
       WHERE Empresa = @Empresa
         AND Modulo  = @Modulo
    IF @@ERROR <> 0 SELECT @Ok = 1
*/
    IF @Accion = 'CANCELAR'
      SELECT @EstatusNuevo = 'CANCELADO'
    ELSE
      SELECT @EstatusNuevo = 'CONCLUIDO'

    -- Verificar antes de Afectar
    EXEC spCAVerificar @ID, @Accion, @Empresa, @Usuario, @Modulo, @Mov, @MovID, @MovTipo, 
                         @FechaEmision, @Estatus, 
			 @Programa, @Plan, @CreditoDirecto, @Materia, @Grupo, @Cliente, 
   		         @Conexion, @SincroFinal, @Sucursal, 
		         @Ok OUTPUT, @OkRef OUTPUT

      -- Quitar los mensajes cuando la afectacion es normal 
    IF @Ok BETWEEN 80000 AND 89999 AND @Accion IN ('AFECTAR', 'CANCELAR') SELECT @Ok = NULL ELSE

      -- Si Verifico y todo estuvo bien
    IF @Accion = 'VERIFICAR' AND @Ok IS NULL SELECT @Ok = 80000
    
    IF @Accion IN ('AFECTAR', 'CANCELAR', 'CONSECUTIVO') AND @Ok IS NULL
      EXEC spCAAfectar  @ID, @Accion, @Empresa, @Modulo, @Mov, @MovID OUTPUT, @MovTipo, 
                        @FechaEmision, @FechaAfectacion, @FechaConclusion,
		        @Proyecto, @Usuario, @Observaciones, 
                        @Estatus, @EstatusNuevo, @FechaRegistro, @Ejercicio, @Periodo, 
                        @Programa, @Plan, @CreditoDirecto, @Materia, @Grupo, @Cliente, @Concepto, @Referencia, 
			@SincroFinal, @Sucursal, @Conexion, 
		        @GenerarMov OUTPUT, @IDGenerar OUTPUT, @GenerarMovID OUTPUT,
                        @Ok OUTPUT, @OkRef OUTPUT
 
  END ELSE 
  BEGIN
    IF @Estatus = 'SINAFECTAR' AND @Accion = 'CANCELAR' /*EXEC spMovCancelarSinAfectar @Modulo, @ID, @Ok OUTPUT ELSE*/ AND @OK is NULL
-- Sustituye spMovCancelarSinAfectar
      BEGIN
	BEGIN TRANSACTION
	  UPDATE CA SET Estatus = 'CANCELADO' WHERE ID = @ID
	  IF @@ERROR <> 0 SELECT @Ok = 1

	  IF @Ok IS NULL
	    COMMIT TRANSACTION
	  ELSE 
	    ROLLBACK TRANSACTION
      END
    ELSE
    IF @Estatus = 'AFECTANDO' SELECT @Ok = 80020 ELSE
    IF @Estatus = 'CONCLUIDO' SELECT @Ok = 80010
    ELSE SELECT @Ok = 60040, @OkRef = 'Estatus: '+@Estatus
  END

/*
  IF @Accion = 'SINCRO' AND @Ok = 80060 
  BEGIN
    SELECT @Ok = NULL, @OkRef = NULL
    EXEC spSucursalEnLinea @SucursalDestino, @EnLinea OUTPUT
    IF @EnLinea = 1 EXEC spSincroFinalModulo @Modulo, @ID, @Ok OUTPUT, @OkRef OUTPUT
  END
*/
  -- Si hay Mensaje pero no tiene referencia
  IF @Ok IS NOT NULL AND @OkRef IS NULL 

    -- Si se Genero un Movimiento, Desplegarlo
    IF @Ok = 80030
      SELECT @OkRef = 'Movimiento: '+RTRIM(@GenerarMov)+' '+LTRIM(Convert(Char, @GenerarMovID))

    -- Si hubo un error poner como referencia el Movimiento
    ELSE
      SELECT @OkRef = 'Movimiento: '+RTRIM(@Mov)+' '+LTRIM(Convert(Char, @MovID)), @IDGenerar = NULL

  RETURN
END
GO

/**************** spCAVerificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCAVerificar') and type = 'P') drop procedure dbo.spCAVerificar
GO
CREATE PROCEDURE spCAVerificar
		@ID			int,
		@Accion			char(20),
		@Empresa		char(5),
		@Usuario		char(10),
		@Modulo			char(5),
		@Mov			varchar(20),
		@MovID			varchar(20),
		@MovTipo		char(20),
		@FechaEmision		datetime,
		@Estatus		char(15),
		@Programa		char(10),
		@Plan			char(10),
		@CreditoDirecto		bit,
		@Materia		char(10),
		@Grupo			char(10),
		@Cliente		char(10),
		@Conexion		bit,
		@SincroFinal		bit,
		@Sucursal		int,
		@Ok 			int 		OUTPUT, 
		@OkRef 			varchar(255)	OUTPUT

AS
BEGIN
	DECLARE
		@EstatusPrograma	char(15),
		@PlanAlumno		char(10),
		@CteEstatus		char(15)

  SELECT @EstatusPrograma = Estatus FROM CEPrograma WHERE Programa = @Programa

  IF @Accion = 'CANCELAR'
    BEGIN
      IF @EstatusPrograma <> 'VIGENTE'
        SELECT @OK = 10100, @OkRef = 'El Programa indicado no se encuentra VIGENTE'
    END
  ELSE
    BEGIN
      IF @Programa IS NULL
        SELECT @OK = 10060, @OkRef = 'Falta indicar el Programa'
      ELSE
      IF @Plan IS NULL
        SELECT @OK = 10060, @OkRef = 'Falta indicar el Plan de Estudios'
      ELSE
      IF @MovTipo <> 'CA.R' AND @CreditoDirecto = 0 AND NULLIF(RTRIM(@Materia),'') IS NULL
        SELECT @OK = 10060, @OkRef = 'Falta indicar el Curso' --SELECT @OK = 10060, @OkRef = 'Falta indicar la Materia'
      ELSE
      IF @Plan IS NULL
        SELECT @OK = 10060, @OkRef = 'Falta indicar el Plan de Estudios'
      ELSE
      IF @EstatusPrograma <> 'VIGENTE'
	SELECT @OK = 10045, @OkRef = 'El Programa indicado no se encuentra VIGENTE'
      ELSE
      IF @MovTipo <> 'CA.R' AND Not Exists(SELECT * FROM CEProgramaD WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(@Materia,'') = ISNULL(Materia,'') AND Grupo = @Grupo)
        SELECT @OK = 10060, @OkRef = 'No existe el Grupo con el Curso y Plan de Estudios en el Programa indicado' --SELECT @OK = 10060, @OkRef = 'No existe el Grupo con la Materia y Plan de Estudios en el Programa indicado'
      ELSE
      IF @MovTipo = 'CA.AC'
      BEGIN
        IF EXISTS(SELECT * FROM CAD WHERE ID = @ID AND ISNULL(Cliente,'') = '')
          SELECT @OK = 10060, @OkRef = 'Existen partidas que no tienen asignado el Alumno'
      END
      ELSE
      IF @MovTipo = 'CA.APE'
      BEGIN
        IF EXISTS(SELECT * FROM CAD WHERE ID = @ID AND ISNULL(Personal,'') = '')
          SELECT @OK = 10060, @OkRef = 'Existen partidas que no tienen asignado el Personal'
      END
      ELSE
      IF @MovTipo = 'CA.APR'
      BEGIN
        IF EXISTS(SELECT * FROM CAD WHERE ID = @ID AND ISNULL(Profesor,'') = '')
          SELECT @OK = 10060, @OkRef = 'Existen partidas que no tienen asignado el Profesor'
      END
      ELSE
      IF @MovTipo in ('CA.CC', 'CA.CPE', 'CA.CPR', 'CA.R') AND Exists(SELECT * FROM CAD WHERE ID = @ID AND ISNULL(Calificacion, '') = '')
        SELECT @OK = 10060, @OkRef = 'Existen partidas que no tienen asignada la Calificación'
      ELSE
      IF @MovTipo = 'CA.R' AND Exists(SELECT * FROM CAD WHERE ID = @ID AND ISNULL(Materia, '') = '')
        SELECT @OK = 10060, @OkRef = 'Existen partidas que no tienen asignada el Curso' --SELECT @OK = 10060, @OkRef = 'Existen partidas que no tienen asignada la Materia'
    END

RETURN
END
GO

/**************** xpCAVerificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.xpCAVerificar') and type = 'P') drop procedure dbo.xpCAVerificar
GO
CREATE PROCEDURE xpCAVerificar
		@ID			int,
		@Accion			char(20),
		@Empresa		char(5),
		@Usuario		char(10),
		@Modulo			char(5),
		@Mov			varchar(20),
		@MovID			varchar(20),
		@MovTipo		char(20),
		@FechaEmision		datetime,
		@Estatus		char(15),
		@Programa		char(10),
		@Plan			char(10),
		@CreditoDirecto		bit,
		@Materia		char(10),
		@Grupo			char(10),
		@Cliente		char(10),
		@Conexion		bit,
		@SincroFinal		bit,
		@Sucursal		int,
		@Ok 			int 		OUTPUT, 
		@OkRef 			varchar(255)	OUTPUT

AS
BEGIN

RETURN
END
GO

/**************** spCAAfectar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCAAfectar') and type = 'P') drop procedure dbo.spCAAfectar
GO
CREATE PROCEDURE spCAAfectar
		@ID			int,
		@Accion			char(20),
		@Empresa		char(5),
		@Modulo			char(5),
		@Mov			varchar(20),
		@MovID 			varchar(20)	OUTPUT,
		@MovTipo		char(20),
                @FechaEmision		datetime,
		@FechaAfectacion	datetime,
		@FechaConclusion	datetime,
		@Proyecto		varchar(50),
		@Usuario		char(10),
		@Observaciones		varchar(100),
		@Estatus		char(15),
		@EstatusNuevo		char(15),
		@FechaRegistro		datetime,
		@Ejercicio		int,
		@Periodo		int,
		@Programa		char(10),
		@Plan			char(10),
		@CreditoDirecto		bit,
		@Materia		char(10),
		@Grupo			char(10),
		@Cliente		char(10),
		@Concepto		varchar(50),
		@Referencia		varchar(50),

		@SincroFinal		bit,
		@Sucursal		int,
		@Conexion		bit = 0,
	        @GenerarMov 		char(20)	OUTPUT,
		@IDGenerar 		int		OUTPUT,
		@GenerarMovID 		varchar(20)	OUTPUT,
		@Ok 			int		OUTPUT,
		@OkRef 			varchar(255)	OUTPUT

AS
BEGIN

  DECLARE
	@UEN			int,
	@FechaCancelacion	datetime,
	@Renglon		float,
	@ClienteD		char(10),
	@Personal		char(10),
	@MateriaD		char(10),	
	@Profesor		char(10),
	@EstatusAlumno		char(15),
	@CalificacionHist	float,
	@Dias			float,
	@HorarioVariablePlan	bit,
	@EstatusMateria		char(15),
	@Calificacion		varchar(50),
	@Asistencia		bit,
	@Asiste			int,
	@Contacto		char(10),
	@ContactoTipo		char(15),
	@EvaluacionPlan		varchar(20),
	@AprobacionPlan		varchar(50),
	@ValorCalificacion	float,
	@ValorAprobacion	float,
	@EstatusCalificacion	char(15),
	@AsistenciaAjuste	bit

  -- Asignar el Consecutivo al Movimiento
--  EXEC spMovConsecutivo @Sucursal, @SucursalOrigen, @SucursalDestino, @Empresa, @Usuario, @Modulo, @Ejercicio, @Periodo, @ID, @Mov, NULL, @Estatus, @Concepto, @Accion, @Conexion, @SincroFinal, @MovID OUTPUT, @Ok OUTPUT, @OkRef OUTPUT
  IF @Ok IS NULL
    EXEC spCEMovConsecutivo @Sucursal, @Empresa, @Usuario, @Modulo, @Ejercicio, @Periodo, @ID, @Mov, @Estatus, @Concepto, @Accion, @Conexion, @SincroFinal, @MovID OUTPUT, @Ok OUTPUT, @OkRef OUTPUT

  IF @Estatus IN ('SINAFECTAR', 'BORRADOR', 'CONFIRMAR') AND @Accion <> 'CANCELAR' AND @Ok IS NULL
    EXEC spCEMovChecarConsecutivo	@Empresa, @Modulo, @Mov, @MovID, @Ejercicio, @Periodo, @Ok OUTPUT, @OkRef OUTPUT

/*  IF @Accion IN ('CONSECUTIVO', 'SINCRO') AND @Ok IS NULL
  BEGIN
    IF @Accion = 'SINCRO' EXEC spAsignarSucursalEstatus @ID, @Modulo, @SucursalDestino, @Accion
    SELECT @Ok = 80060, @OkRef = @MovID
    RETURN
  END
*/

  IF @OK IS NOT NULL RETURN 

  IF @Conexion = 0 
    BEGIN TRANSACTION

    -- Poner el Estatus del Movimiento en "AFECTANDO"
--    EXEC spMovEstatus @Modulo, 'AFECTANDO', @ID, @Generar, @IDGenerar, @GenerarAfectado, @Ok OUTPUT
    -- Reemplaza spMovEstatus
    IF @Modulo = 'CA'  UPDATE CA       SET Estatus = 'AFECTANDO' WHERE ID = @ID 

    -- Actualizar Sucursal Detalle
/*    IF @Accion = 'AFECTAR' AND @Estatus = 'SINAFECTAR'
      IF (SELECT Sincro FROM Version) = 1
        UPDATE CED SET Sucursal = @Sucursal, SincroC = 1 WHERE ID = @ID AND (Sucursal <> @Sucursal OR SincroC <> 1)

    IF @Accion = 'AFECTAR' AND @EstatusNuevo in ('PENDIENTE', 'CONCLUIDO')
      -- Registrar el Movimiento en "Mov"
      EXEC spRegistrarMovimiento @Sucursal, @Empresa, @Modulo, @Mov, @MovID, @ID, @Ejercicio, @Periodo, @FechaRegistro, @FechaEmision,
                       	         NULL, @Proyecto, NULL, NULL,
                       	         @Usuario, NULL, NULL, NULL, @DocFuente, @Observaciones,
			         -- @Generar, @GenerarMov, @GenerarMovID, @IDGenerar,
				 NULL, NULL, NULL, NULL,
				 @Ok OUTPUT*/
-- Sustituye a spRegistrarMovimiento
  IF @MovID IS NOT NULL
    EXEC spCEMovInsertar @Sucursal, @Empresa, @Modulo, @Mov, @MovID, @ID, @Ejercicio, @Periodo, @FechaRegistro, @FechaEmision,
                       @Concepto, @Proyecto, NULL, NULL, --@MovMoneda, @MovTipoCambio,
                       @Usuario, NULL, /*@Autorizacion, */@Referencia, NULL, /*@DocFuente, */@Observaciones, @Ok OUTPUT

    IF @Modulo = 'CA' AND @Accion in ('CANCELAR', 'AFECTAR')
    BEGIN
      DECLARE crCAAfectar CURSOR FOR
       SELECT Renglon, Materia, Cliente, Personal, Profesor, ISNULL(Asistencia, 0), Observaciones, Calificacion
         FROM CAD
        WHERE ID = @ID

      IF @MovTipo = 'CA.AC' -- Asistencia Alumno
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'CANCELAR'
	  BEGIN
	    IF @Asistencia = 1 SELECT @Asiste = -1 ELSE SELECT @Asiste = 0
	    IF @Asiste <> 0
	    BEGIN
	      SELECT @Dias = Count(Inicio)
	        FROM CECalendario
	       WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus = 'ACTIVO'

	      UPDATE CEAlumnoHist SET Asistencia = ISNULL(Asistencia,0) + @Asiste, PorcentajeAsistencia = ((ISNULL(Asistencia,0) + @Asiste)/@Dias)*100
	       WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente'
	         AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	    END
	  END
	  ELSE
	  BEGIN
	    IF NOT EXISTS(SELECT * 
			    FROM CEAlumnoHist 
			   WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
			     AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente' 
			     AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo) -- AND Estatus = 'ALTA'
	      SELECT @OK = 10060, @OkRef = 'El Alumno ' + RTRIM(@ClienteD) + ' no esta Asignado al Grupo indicado'
	    ELSE
	    IF EXISTS(SELECT * FROM CA c,CAD d, MovTipo m
		       WHERE c.ID = d.ID AND c.Mov = m.Mov AND m.Modulo = 'CA' AND m.Clave = @MovTipo
			 AND c.Empresa = @Empresa AND c.Sucursal = @Sucursal
			 AND c.Programa = @Programa AND c.CEPlan = @Plan AND ISNULL(c.Materia,'') = ISNULL(@Materia,'') AND c.Grupo = @Grupo 
			 AND d.Cliente = @ClienteD AND c.Estatus = 'CONCLUIDO' AND c.FechaEmision = @FechaEmision)
	      SELECT @OK = 10060, @OkRef = 'Ya se registró la Asistencia del Alumno en esa Fecha' + RTRIM(@ClienteD)
	    ELSE
	      BEGIN
	        SELECT @HorarioVariablePlan = ISNULL(HorarioVariable,1) FROM CEPlan WHERE CEPlan = @Plan
	        IF @HorarioVariablePlan = 0
	          IF NOT EXISTS(SELECT * FROM CECalendario WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Convert(Datetime, Convert(varchar(11), Inicio, 103),103) = @FechaEmision)
	            SELECT @OK = 10060, @OkRef = 'El Grupo indicado no se encuentra en el calendario'
	      END

	    IF @OK IS NULL
	    BEGIN
	      IF @Asistencia = 1 SELECT @Asiste = 1 ELSE SELECT @Asiste = 0
	      IF @Asiste <> 0
	      BEGIN
	        SELECT @Dias = Count(Inicio)
	          FROM CECalendario
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus = 'ACTIVO'

	        UPDATE CEAlumnoHist SET Asistencia = ISNULL(Asistencia,0) + @Asiste, PorcentajeAsistencia = ((ISNULL(Asistencia,0) + @Asiste)/@Dias)*100
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	      END
	    END -- Accion <> 'Cancelar'
	  END 

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
      END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.APE' -- Asistencia Personal
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'CANCELAR'
	  BEGIN
	    IF @Asistencia = 1 SELECT @Asiste = -1 ELSE SELECT @Asiste = 0
	    IF @Asiste <> 0
	    BEGIN
	      SELECT @Dias = Count(Inicio)
	        FROM CECalendario
	       WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus = 'ACTIVO'

	      UPDATE CEAlumnoHist SET Asistencia = ISNULL(Asistencia,0) + @Asiste, PorcentajeAsistencia = ((ISNULL(Asistencia,0) + @Asiste)/@Dias)*100
	       WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Personal AND AlumnoTipo = 'Personal'
	         AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	    END
	  END
	  ELSE
	  BEGIN
	    IF NOT EXISTS(SELECT * 
			    FROM CEAlumnoHist 
			   WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
			     AND Alumno = @Personal AND AlumnoTipo = 'Personal' 
			     AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo) --AND Estatus = 'ALTA')
	      SELECT @OK = 10060, @OkRef = 'El Personal ' + RTRIM(@Personal) + ' no esta Asignado al Grupo indicado'
	    ELSE
	    IF EXISTS(SELECT * FROM CA c,CAD d, MovTipo m
		       WHERE c.ID = d.ID AND c.Mov = m.Mov AND m.Modulo = 'CA' AND m.Clave = @MovTipo
			 AND c.Empresa = @Empresa AND c.Sucursal = @Sucursal
			 AND c.Programa = @Programa AND c.CEPlan = @Plan AND ISNULL(c.Materia,'') = ISNULL(@Materia,'') AND c.Grupo = @Grupo 
			 AND d.Personal = @Personal AND c.Estatus = 'CONCLUIDO' AND c.FechaEmision = @FechaEmision)
	      SELECT @OK = 10060, @OkRef = 'Ya se registró la Asistencia del Personal en esa Fecha' + RTRIM(@Personal)
	    ELSE
	      BEGIN
	        SELECT @HorarioVariablePlan = ISNULL(HorarioVariable,1) FROM CEPlan WHERE CEPlan = @Plan
	        IF @HorarioVariablePlan = 0
	          IF NOT EXISTS(SELECT * FROM CECalendario WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Convert(Datetime, Convert(varchar(11), Inicio, 103),103) = @FechaEmision)
	            SELECT @OK = 10060, @OkRef = 'El Grupo indicado no se encuentra en el calendario'
	      END

	    IF @OK IS NULL
	    BEGIN
	      IF @Asistencia = 1 SELECT @Asiste = 1 ELSE SELECT @Asiste = 0
	      IF @Asiste <> 0
	      BEGIN
	        SELECT @Dias = Count(Inicio)
	          FROM CECalendario
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus = 'ACTIVO'

	        UPDATE CEAlumnoHist SET Asistencia = ISNULL(Asistencia,0) + @Asiste, PorcentajeAsistencia = ((ISNULL(Asistencia,0) + @Asiste)/@Dias)*100
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Personal AND AlumnoTipo = 'Personal'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	      END
	    END
	  END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.APR' -- Asistencia Profesor
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL AND @Accion = 'AFECTAR'
	BEGIN
	    IF NOT EXISTS(SELECT Profesor
			    FROM CEProgramaD
			   WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
			     AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo
			     AND (Profesor = @Profesor)
			   UNION
	    		  SELECT p.Profesor
			    FROM CEProgramaD c, CEProgramaDProfesor p
			   WHERE c.ID = p.ID
			     AND c.Empresa = @Empresa AND c.Sucursal = @Sucursal 
			     AND c.Programa = @Programa AND c.CEPlan = @Plan AND ISNULL(c.Materia,'') = @Materia AND c.Grupo = @Grupo
			     AND (p.Profesor = @Profesor))
	      SELECT @OK = 10060, @OkRef = 'El Profesor ' + RTRIM(@Profesor) + ' no esta Asignado al Grupo indicado'
	    ELSE
	    IF EXISTS(SELECT * FROM CA c,CAD d, MovTipo m
		       WHERE c.ID = d.ID AND c.Mov = m.Mov AND m.Modulo = 'CA' AND m.Clave = @MovTipo
			 AND c.Empresa = @Empresa AND c.Sucursal = @Sucursal
			 AND c.Programa = @Programa AND c.CEPlan = @Plan AND ISNULL(c.Materia,'') = ISNULL(@Materia,'') AND c.Grupo = @Grupo 
			 AND d.Profesor = @Profesor AND c.Estatus = 'CONCLUIDO' AND c.FechaEmision = @FechaEmision)
	      SELECT @OK = 10060, @OkRef = 'Ya se registró la Asistencia del Profesor en esa Fecha' + RTRIM(@Profesor)
	    ELSE
	    BEGIN
	      SELECT @HorarioVariablePlan = ISNULL(HorarioVariable,1) FROM CEPlan WHERE CEPlan = @Plan
	      IF @HorarioVariablePlan = 0
	        IF NOT EXISTS(SELECT * FROM CECalendario WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Convert(Datetime, Convert(varchar(11), Inicio, 103),103) = @FechaEmision)
	          SELECT @OK = 10060, @OkRef = 'El Grupo indicado no se encuentra en el calendario'
	    END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.CC'-- Evaluacion Alumno
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'CANCELAR'
	  BEGIN
	        UPDATE CEAlumnoHist SET Calificacion = NULL, Valor = NULL, Estatus = 'ALTA', Tipo = NULL
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	  END
	  ELSE
	  BEGIN
	    IF NOT EXISTS(SELECT * 
			    FROM CEAlumnoHist 
			   WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
			     AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente' 
			     AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo /*AND Estatus = 'ALTA'*/)
	      SELECT @OK = 10060, @OkRef = 'El Alumno ' + RTRIM(@ClienteD) + ' no esta Asignado al Grupo indicado'
	    ELSE
	    BEGIN
	      SELECT @EstatusAlumno = Estatus
	        FROM CEAlumnoHist
	       WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
	         AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente' 
	         AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo /*AND Estatus = 'ALTA'*/
	      IF @EstatusAlumno <> 'ALTA'
	        SELECT @OK = 10060, @OkRef = 'El Alumno ' + RTRIM(@ClienteD) + ' esta en Estatus ' + RTRIM(@EstatusAlumno) + ' en el Grupo indicado'
	    END

	    IF @OK is null
	      BEGIN
		SELECT @EvaluacionPlan = Evaluacion, @AprobacionPlan = ISNULL(Aprobacion,0) FROM CEPlan WHERE CEPlan = @Plan
		SELECT @ValorCalificacion = Valor FROM TablaEvaluacionD WHERE TablaEvaluacion = @EvaluacionPlan AND Nombre = RTRIM(@Calificacion)
		SELECT @ValorAprobacion = Valor FROM TablaEvaluacionD WHERE TablaEvaluacion = @EvaluacionPlan AND Nombre = RTRIM(@AprobacionPlan)
		IF @ValorCalificacion >= @ValorAprobacion
		  SELECT @EstatusCalificacion = 'APROBADO'
		ELSE
		  SELECT @EstatusCalificacion = 'REPROBADO'

	        UPDATE CEAlumnoHist SET Calificacion = @Calificacion, Valor = @ValorCalificacion, Estatus = @EstatusCalificacion, Tipo = 'Normal'
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	      END

	  END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.CPE' -- Evaluacion Personal
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'CANCELAR'
	  BEGIN
	        UPDATE CEAlumnoHist SET Calificacion = NULL, Valor = NULL, Estatus = 'ALTA', Tipo = NULL
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Personal AND AlumnoTipo = 'Personal'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	  END
	  ELSE
	  BEGIN
	    IF NOT EXISTS(SELECT * 
			    FROM CEAlumnoHist 
			   WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
			     AND Alumno = @Personal AND AlumnoTipo = 'Personal' 
			     AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo /*AND Estatus = 'ALTA'*/)
	      SELECT @OK = 10060, @OkRef = 'El Personal ' + RTRIM(@ClienteD) + ' no esta Asignado al Grupo indicado'
	    ELSE
	    BEGIN
	      SELECT @EstatusAlumno = Estatus
	        FROM CEAlumnoHist
	       WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
	         AND Alumno = @Personal AND AlumnoTipo = 'Personal' 
	         AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo /*AND Estatus = 'ALTA'*/
	      IF @EstatusAlumno <> 'ALTA'
	        SELECT @OK = 10060, @OkRef = 'El Personal ' + RTRIM(@Personal) + ' esta en Estatus ' + RTRIM(@EstatusAlumno) + ' en el Grupo indicado'
	    END

	    IF @OK is null
	      BEGIN
		SELECT @EvaluacionPlan = Evaluacion, @AprobacionPlan = ISNULL(Aprobacion,0) FROM CEPlan WHERE CEPlan = @Plan
		SELECT @ValorCalificacion = Valor FROM TablaEvaluacionD WHERE TablaEvaluacion = @EvaluacionPlan AND Nombre = RTRIM(@Calificacion)
		SELECT @ValorAprobacion = Valor FROM TablaEvaluacionD WHERE TablaEvaluacion = @EvaluacionPlan AND Nombre = RTRIM(@AprobacionPlan)
		IF @ValorCalificacion >= @ValorAprobacion
		  SELECT @EstatusCalificacion = 'APROBADO'
		ELSE
		  SELECT @EstatusCalificacion = 'REPROBADO'

	        UPDATE CEAlumnoHist SET Calificacion = @Calificacion, Valor = @ValorCalificacion, Estatus = @EstatusCalificacion, Tipo = 'Normal'
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Personal AND AlumnoTipo = 'Personal'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	      END

	  END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.R' -- Revalidacion
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'CANCELAR'
	  BEGIN
	        DELETE CEAlumnoHist 
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Cliente AND AlumnoTipo = 'Cliente'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = 'REVALIDA' AND ISNULL(Materia,'') = @MateriaD
	  END
	  ELSE
	  BEGIN
	    IF @CreditoDirecto = 0
	    BEGIN
	      IF NOT Exists(SELECT * FROM CEPlanD WHERE CEPlan = @Plan AND ISNULL(Materia,'') = @MateriaD)
	        SELECT @OK = 10060, @OkRef = 'El Curso ' + RTRIM(@MateriaD) + ' no corresponde al Plan de Estudios indicado' --SELECT @OK = 10060, @OkRef = 'La Materia ' + RTRIM(@MateriaD) + ' no corresponde al Plan de Estudios indicado'
	    END

	    IF Exists(SELECT *
		        FROM CEAlumnoHist
		       WHERE Empresa = @Empresa /*AND Sucursal = @Sucursal */
	        	 AND Alumno = @Cliente AND AlumnoTipo = 'Cliente' 
		         /*AND Programa = @Programa */ AND CEPlan = @Plan AND ISNULL(Materia,'') = @MateriaD /*AND Grupo = @Grupo */ AND Estatus in ('APROBADO', 'ALTA', 'REVISION'))
	        SELECT @OK = 10060, @OkRef = 'El Alumno ' + RTRIM(@Cliente) + ' tiene Aprobada o Cursa ' + RTRIM(@Materia) --SELECT @OK = 10060, @OkRef = 'El Alumno ' + RTRIM(@Cliente) + ' tiene Aprobada o Cursa la Materia ' + RTRIM(@Materia)

	    SELECT @EvaluacionPlan = Evaluacion, @AprobacionPlan = ISNULL(Aprobacion,0) FROM CEPlan WHERE CEPlan = @Plan
	    SELECT @ValorCalificacion = Valor FROM TablaEvaluacionD WHERE TablaEvaluacion = @EvaluacionPlan AND Nombre = RTRIM(@Calificacion)
	    SELECT @ValorAprobacion = Valor FROM TablaEvaluacionD WHERE TablaEvaluacion = @EvaluacionPlan AND Nombre = RTRIM(@AprobacionPlan)
	    IF @ValorCalificacion >= @ValorAprobacion
	      SELECT @EstatusCalificacion = 'APROBADO'
	    ELSE
	      SELECT @EstatusCalificacion = 'REPROBADO'

	    IF @EstatusCalificacion = 'REPROBADO'
	      SELECT @OK = 10060, @OkRef = 'El Curso ' + RTRIM(@MateriaD) + ' no tiene una Calificación Aprobatoria'--SELECT @OK = 10060, @OkRef = 'La Materia ' + RTRIM(@MateriaD) + ' no tiene una Calificación Aprobatoria'

	    IF @OK is null
	      BEGIN
		    INSERT INTO CEAlumnoHist(Empresa, Sucursal, Alumno, AlumnoTipo, Programa, CEPlan, Materia, Grupo, Estatus, Tipo, Calificacion, Valor, Observaciones, Modulo, ModuloID)
			VALUES(@Empresa, @Sucursal, @Cliente, 'Cliente', @Programa, @Plan, @MateriaD, 'REVALIDA', 'APROBADO', 'Especial', @Calificacion, @ValorCalificacion, @Observaciones, @Modulo, @ID)
	      END
	  END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.JC' -- Ajuste Calificacion
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'CANCELAR'
	  BEGIN
	    SELECT @OK = 10100
	  END
	  ELSE
	  BEGIN
	    IF NOT Exists(SELECT *
		        FROM CEAlumnoHist
		       WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
	        	 AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente' 
		         AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo)
	        SELECT @OK = 10060, @OkRef = 'El Alumno ' + RTRIM(@ClienteD) + ' no esta Asignado al Grupo indicado'
	    ELSE
	    BEGIN
	      SELECT @EstatusAlumno = Estatus
	        FROM CEAlumnoHist
	       WHERE Empresa = @Empresa AND Sucursal = @Sucursal 
	         AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente' 
	         AND Programa = @Programa AND CEPlan = @Plan AND ISNULL(Materia,'') = @Materia AND Grupo = @Grupo /*AND Estatus = 'ALTA'*/
	      IF @EstatusAlumno not in ('APROBADO', 'REPROBADO')
	        SELECT @OK = 10060, @OkRef = 'El Alumno ' + RTRIM(@ClienteD) + ' esta en Estatus ' + RTRIM(@EstatusAlumno) + ' en el Grupo indicado'
	    END

	    SELECT @EvaluacionPlan = Evaluacion, @AprobacionPlan = ISNULL(Aprobacion,0) FROM CEPlan WHERE CEPlan = @Plan
	    SELECT @ValorCalificacion = Valor FROM TablaEvaluacionD WHERE TablaEvaluacion = @EvaluacionPlan AND Nombre = RTRIM(@Calificacion)
	    SELECT @ValorAprobacion = Valor FROM TablaEvaluacionD WHERE TablaEvaluacion = @EvaluacionPlan AND Nombre = RTRIM(@AprobacionPlan)
	    IF @ValorCalificacion >= @ValorAprobacion
	      SELECT @EstatusCalificacion = 'APROBADO'
	    ELSE
	      SELECT @EstatusCalificacion = 'REPROBADO'

	    IF @OK is null
	      BEGIN
	        UPDATE CEAlumnoHist SET Calificacion = @Calificacion, Valor = @ValorCalificacion, Estatus = @EstatusCalificacion
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	      END
	  END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.JAC' -- Ajuste Asist. Alumno
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'CANCELAR'
	  BEGIN
		IF @Asistencia = 1 SELECT @Asiste = -1 ELSE SELECT @Asiste = 1
	        SELECT @Dias = Count(Inicio)
	          FROM CECalendario
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus = 'ACTIVO'

	        UPDATE CEAlumnoHist SET Asistencia = ISNULL(Asistencia,0) + @Asiste, PorcentajeAsistencia = ((ISNULL(Asistencia,0) + @Asiste)/@Dias)*100
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	  END
	  ELSE
	  BEGIN
	    SELECT @AsistenciaAjuste = Asistencia
	      FROM CA c, CAD d, MovTipo m
	     WHERE c.ID = d.ID AND c.Mov = m.Mov AND m.Modulo = 'CA' AND m.Clave = 'CA.AC'
	       AND c.Empresa = @Empresa AND c.Sucursal = @Sucursal AND c.Programa = @Programa AND c.CEPlan = @Plan
	       AND ISNULL(c.Materia,'') = @Materia AND c.Grupo = @Grupo AND c.FechaEmision = @Fechaemision AND c.Estatus = 'CONCLUIDO'
	       AND d.Cliente = @ClienteD

	    IF @AsistenciaAjuste is null
	      SELECT @OK = 10060, @OkRef = 'No hay registro de Asistencia del Alumno ' + RTRIM(@ClienteD) + ' en la fecha indicada'
	    ELSE
	      IF @AsistenciaAjuste = @Asistencia
		SELECT @OK = 10060, @OkRef = 'No hay cambio entre Asistencia registrada y capturada del Alumno ' + RTRIM(@ClienteD) + ' en la fecha indicada'

	    IF @OK is null
	      BEGIN
		IF @Asistencia = 1 SELECT @Asiste = 1 ELSE SELECT @Asiste = -1
	        SELECT @Dias = Count(Inicio)
	          FROM CECalendario
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus = 'ACTIVO'

	        UPDATE CEAlumnoHist SET Asistencia = ISNULL(Asistencia,0) + @Asiste, PorcentajeAsistencia = ((ISNULL(Asistencia,0) + @Asiste)/@Dias)*100
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @ClienteD AND AlumnoTipo = 'Cliente'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	      END
	  END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.JAPE' -- Ajuste Asist. Personal
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'CANCELAR'
	  BEGIN
		IF @Asistencia = 1 SELECT @Asiste = -1 ELSE SELECT @Asiste = 1
	        SELECT @Dias = Count(Inicio)
	          FROM CECalendario
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus = 'ACTIVO'

	        UPDATE CEAlumnoHist SET Asistencia = ISNULL(Asistencia,0) + @Asiste, PorcentajeAsistencia = ((ISNULL(Asistencia,0) + @Asiste)/@Dias)*100
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Personal AND AlumnoTipo = 'Personal'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	  END
	  ELSE
	  BEGIN
	    SELECT @AsistenciaAjuste = Asistencia
	      FROM CA c, CAD d, MovTipo m
	     WHERE c.ID = d.ID AND c.Mov = m.Mov AND m.Modulo = 'CA' AND m.Clave = 'CA.APE'
	       AND c.Empresa = @Empresa AND c.Sucursal = @Sucursal AND c.Programa = @Programa AND c.CEPlan = @Plan
	       AND ISNULL(c.Materia,'') = @Materia AND c.Grupo = @Grupo AND c.FechaEmision = @Fechaemision AND c.Estatus = 'CONCLUIDO'
	       AND d.Personal = @Personal

	    IF @AsistenciaAjuste is null
	      SELECT @OK = 10060, @OkRef = 'No hay registro de Asistencia del Personal ' + RTRIM(@Personal) + ' en la fecha indicada'
	    ELSE
	      IF @AsistenciaAjuste = @Asistencia
		SELECT @OK = 10060, @OkRef = 'No hay cambio entre Asistencia registrada y capturada del Personal ' + RTRIM(@Personal) + ' en la fecha indicada'

	    IF @OK is null
	      BEGIN
		IF @Asistencia = 1 SELECT @Asiste = 1 ELSE SELECT @Asiste = -1
	        SELECT @Dias = Count(Inicio)
	          FROM CECalendario
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = ISNULL(@Materia,'') AND Estatus = 'ACTIVO'

	        UPDATE CEAlumnoHist SET Asistencia = ISNULL(Asistencia,0) + @Asiste, PorcentajeAsistencia = ((ISNULL(Asistencia,0) + @Asiste)/@Dias)*100
	         WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Alumno = @Personal AND AlumnoTipo = 'Personal'
	           AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND ISNULL(Materia,'') = @Materia
	      END
	  END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END
      ELSE
      IF @MovTipo = 'CA.JAPR' -- Ajuste Asist. Profesor
      BEGIN
	OPEN crCAAfectar
	FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	WHILE @@FETCH_STATUS = 0 AND @OK IS NULL
	BEGIN
	  IF @Accion = 'AFECTAR'
	  BEGIN
	    SELECT @AsistenciaAjuste = Asistencia
	      FROM CA c, CAD d, MovTipo m
	     WHERE c.ID = d.ID AND c.Mov = m.Mov AND m.Modulo = 'CA' AND m.Clave = 'CA.APR'
	       AND c.Empresa = @Empresa AND c.Sucursal = @Sucursal AND c.Programa = @Programa AND c.CEPlan = @Plan
	       AND ISNULL(c.Materia,'') = @Materia AND c.Grupo = @Grupo AND c.FechaEmision = @Fechaemision AND c.Estatus = 'CONCLUIDO'
	       AND d.Profesor = @Profesor

	    IF @AsistenciaAjuste is null
	      SELECT @OK = 10060, @OkRef = 'No hay registro de Asistencia del Profesor ' + RTRIM(@Profesor) + ' en la fecha indicada'
	    ELSE
	      IF @AsistenciaAjuste = @Asistencia
		SELECT @OK = 10060, @OkRef = 'No hay cambio entre Asistencia registrada y capturada del Profesor ' + RTRIM(@Profesor) + ' en la fecha indicada'
	  END

	  FETCH NEXT FROM crCAAfectar INTO @Renglon, @MateriaD, @ClienteD, @Personal, @Profesor, @Asistencia, @Observaciones, @Calificacion
	END

	CLOSE crCAAfectar
	DEALLOCATE crCAAfectar
      END

    END

    IF @OK is null
    EXEC xpCAVerificar @ID, @Accion, @Empresa, @Usuario, @Modulo, @Mov, @MovID, @MovTipo, 
                         @FechaEmision, @Estatus, 
			 @Programa, @Plan, @CreditoDirecto, @Materia, @Grupo, @Cliente, 
   		         @Conexion, @SincroFinal, @Sucursal, 
		         @Ok OUTPUT, @OkRef OUTPUT

    -- Actualizar Movimiento
    IF @Ok IN (NULL, 80030)
    BEGIN
      IF @EstatusNuevo = 'CANCELADO' SELECT @FechaCancelacion = @FechaRegistro ELSE SELECT @FechaCancelacion = NULL
      IF @EstatusNuevo = 'CONCLUIDO' SELECT @FechaConclusion  = @FechaEmision  ELSE IF @EstatusNuevo <> 'CANCELADO' SELECT @FechaConclusion  = NULL
/*      IF @CfgContX = 1 AND @CfgContXGenerar <> 'NO'
      BEGIN
	IF @Estatus =  'SINAFECTAR' AND @EstatusNuevo <> 'CANCELADO' SELECT @GenerarPoliza = 1 ELSE
        IF @Estatus <> 'SINAFECTAR' AND @EstatusNuevo =  'CANCELADO' IF @GenerarPoliza = 1 SELECT @GenerarPoliza = 0 ELSE SELECT @GenerarPoliza = 1
      END  

      EXEC spValidarTareas @Empresa, @Modulo, @ID, @EstatusNuevo, @Ok OUTPUT, @OkRef OUTPUT*/
      UPDATE CA
         SET FechaConclusion  = @FechaConclusion, 
             FechaCancelacion = @FechaCancelacion,
             UltimoCambio     = /*CASE WHEN UltimoCambio IS NULL THEN */@FechaRegistro /*ELSE UltimoCambio END*/,
             Estatus          = @EstatusNuevo,
             Situacion 	      = CASE WHEN @Estatus <> @EstatusNuevo THEN NULL ELSE Situacion END/*,
             GenerarPoliza    = @GenerarPoliza*/
       WHERE ID = @ID 
      IF @@ERROR <> 0 SELECT @Ok = 1
    END
 
  -- Agregar a Estatus Log
  IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
    EXEC spMovFinal @Empresa, @Sucursal, @Modulo, @ID, @Estatus, @EstatusNuevo, @Usuario, @FechaEmision, @FechaRegistro, @Mov, @MovID, @MovTipo, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT

  -- Cancelar el Flujo
  IF @Accion = 'CANCELAR' AND @EstatusNuevo = 'CANCELADO' AND @Ok IS NULL
    EXEC spCancelarFlujo @Empresa, @Modulo, @ID, @Ok OUTPUT 

  IF @Conexion = 0
    IF @Ok IS NULL OR @Ok BETWEEN 80030 AND 81000
      COMMIT TRANSACTION
    ELSE
      ROLLBACK TRANSACTION

RETURN
END
GO

/**************** spCEMovInsertar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEMovInsertar') and type = 'P') drop procedure dbo.spCEMovInsertar
GO             
CREATE PROCEDURE spCEMovInsertar
			@Sucursal	int,
			@Empresa	char(5), 
			@Modulo		char(5), 
			@Mov		char(20), 
			@MovID		varchar(20), 
			@ID		int,
			@Ejercicio	int, 
			@Periodo	int, 
			@FechaRegistro	datetime, 
			@FechaEmision	datetime,
                        @Concepto	varchar(50), 
			@Proyecto	varchar(50), 
			@Moneda		char(10), 
			@TipoCambio	float,
                        @Usuario	char(10), 
			@Autorizacion	char(10), 
			@Referencia	varchar(50), 
			@DocFuente	int, 
			@Observaciones	varchar(255),

			@Ok		int	OUTPUT
AS BEGIN
  DECLARE
    @Turno	int
  -- SET nocount ON

  IF @Ok IS NOT NULL RETURN
  EXEC spExtraerFecha @FechaEmision OUTPUT

  IF @MovID IS NOT NULL
    SELECT @Turno = MIN(Turno) FROM MovTurno WHERE CONVERT(char, getdate(), 14) > HoraD AND CONVERT(char, getdate(), 14) < HoraA
  ELSE
    SELECT @Turno = NULL

  UPDATE Mov
     SET Sucursal	= @Sucursal,
	 Empresa 	= @Empresa,
	 Modulo	 	= @Modulo, 
	 Mov		= @Mov, 
	 MovID		= @MovID, 
         ID		= @ID,
	 Ejercicio	= @Ejercicio, 
	 Periodo	= @Periodo, 
	 FechaRegistro	= @FechaRegistro,
	 FechaEmision	= @FechaEmision,
         Concepto	= @Concepto, 
	 Proyecto	= @Proyecto, 
	 Moneda		= @Moneda,
	 TipoCambio	= @TipoCambio,
         Usuario	= @Usuario,
	 Autorizacion	= @Autorizacion, 
	 Referencia	= @Referencia,
	 DocFuente	= @DocFuente, 
	 Observaciones	= @Observaciones,
         Turno          = @Turno
   WHERE Empresa = @Empresa
     AND Modulo  = @Modulo
     AND ID	 = @ID

  IF @@ROWCOUNT = 0
  BEGIN
    INSERT INTO Mov (Sucursal, Empresa, Modulo, Mov, MovID, ID, Ejercicio, Periodo, FechaRegistro, FechaEmision,
                     Concepto, Proyecto, Moneda, TipoCambio,
                     Usuario, Autorizacion, Referencia, DocFuente, Observaciones, Turno)
             VALUES (@Sucursal, @Empresa, @Modulo, @Mov, @MovID, @ID, @Ejercicio, @Periodo, @FechaRegistro, @FechaEmision,
                     @Concepto, @Proyecto, @Moneda, @TipoCambio,
                     @Usuario, @Autorizacion, @Referencia, @DocFuente, @Observaciones, @Turno)

    IF (SELECT TieneMovimientos FROM Usuario WHERE Usuario = @Usuario) = 0
      UPDATE Usuario SET TieneMovimientos = 1 WHERE Usuario = @Usuario 
    IF (SELECT TieneMovimientos FROM Empresa WHERE Empresa = @Empresa) = 0
      UPDATE Empresa SET TieneMovimientos = 1 WHERE Empresa = @Empresa
  END
  IF @@ERROR <> 0 SELECT @Ok = 1

  IF @Ok IS NULL
  BEGIN
    IF @Modulo = 'CE'  UPDATE CE       SET FechaRegistro = @FechaRegistro, Periodo = @Periodo, Ejercicio = @Ejercicio WHERE ID = @ID ELSE
    IF @Modulo = 'CA'  UPDATE CA       SET FechaRegistro = @FechaRegistro, Periodo = @Periodo, Ejercicio = @Ejercicio WHERE ID = @ID
  END

  RETURN
END
GO

/**************** spCECalendarioVerificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCECalendarioVerificar') and type = 'P') drop procedure dbo.spCECalendarioVerificar
GO
CREATE PROCEDURE spCECalendarioVerificar
		@ID		int, 
		@Modulo		char(10),
		@Empresa	char(5),
		@Sucursal	int,
		@Programa	char(10)
AS
BEGIN
	DECLARE
		@IDInt		int,
		@Estatus	char(15),
		@Espacio	char(10),
		@Profesor	char(10),
		@Plan		char(10),
		@Grupo		char(10),
		@Materia	char(10),
		@Inicio		datetime,
		@Fin		datetime

  CREATE TABLE #CalendarioVerificar(
  Tipo			char(20),
  Dimension		char(10),
  CEPlan		char(10),
  Materia		char(10),
  Grupo			char(10),
  Inicio1		datetime,
  Fin1			datetime,
  Dimension2		char(10),
  CEPlan2		char(10),
  Materia2		char(10),
  Grupo2		char(10),
  Inicio2		datetime,
  Fin2			datetime)

  SELECT @Estatus = Estatus FROM CE WHERE ID = @ID

  DELETE FROM CECalendario WHERE Estatus = 'BORRADOR'
  
  IF @Estatus = 'SINAFECTAR'
    EXEC spCEGenerarCalendario @ID, 'AFECTAR', 'CE', 0, NULL, NULL, 1

  DECLARE CECalendarioVerificar CURSOR FOR
  SELECT ID, Espacio, CEPlan, ISNULL(Materia,''), Grupo, Inicio, Fin
    FROM CECalendario l
   WHERE l.Empresa = @Empresa AND l.Sucursal = @Sucursal AND l.Programa = @Programa
     AND l.ModuloID = @ID AND l.Modulo = @Modulo

  OPEN CECalendarioVerificar
  FETCH NEXT FROM CECalendarioVerificar INTO @IDInt, @Espacio, @Plan, @Materia, @Grupo, @Inicio, @Fin
  WHILE @@FETCH_STATUS = 0
  BEGIN
      INSERT INTO #CalendarioVerificar(Tipo, Dimension, CEPlan, Materia, Grupo, Inicio1, Fin1, Dimension2, CEPlan2, Materia2, Grupo2, Inicio2, Fin2)
			SELECT 'Espacio', @Espacio, @Plan, @Materia, @Grupo, @Inicio, @Fin, Espacio, CEPlan, Materia, Grupo, Inicio, Fin
			  FROM CECalendario
			 WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa
			   AND Espacio = @Espacio AND (Inicio BETWEEN @Inicio AND @Fin OR Fin BETWEEN @Inicio AND @Fin)
			   AND ID <> @IDInt
      FETCH NEXT FROM CECalendarioVerificar INTO @IDInt, @Espacio, @Plan, @Materia, @Grupo, @Inicio, @Fin
  END 
  CLOSE CECalendarioVerificar
  DEALLOCATE CECalendarioVerificar

  DECLARE CECalendarioVerificar2 CURSOR FOR
  SELECT ID, Profesor, CEPlan, ISNULL(Materia,''), Grupo, Inicio, Fin
    FROM CECalendario l
   WHERE l.Empresa = @Empresa AND l.Sucursal = @Sucursal AND l.Programa = @Programa
     AND l.ModuloID = @ID AND l.Modulo = @Modulo

  OPEN CECalendarioVerificar2
  FETCH NEXT FROM CECalendarioVerificar2 INTO @IDInt, @Profesor, @Plan, @Materia, @Grupo, @Inicio, @Fin
  WHILE @@FETCH_STATUS = 0
  BEGIN
      INSERT INTO #CalendarioVerificar(Tipo, Dimension, CEPlan, Materia, Grupo, Inicio1, Fin1, Dimension2, CEPlan2, Materia2, Grupo2, Inicio2, Fin2)
			SELECT 'Profesor', @Profesor, @Plan, @Materia, @Grupo, @Inicio, @Fin, Profesor, CEPlan, Materia, Grupo, Inicio, Fin
			  FROM CECalendario
			 WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa
			   AND Profesor = @Profesor AND (Inicio BETWEEN @Inicio AND @Fin OR Fin BETWEEN @Inicio AND @Fin)
			   AND ID <> @IDInt
      FETCH NEXT FROM CECalendarioVerificar2 INTO @IDInt, @Profesor, @Plan, @Materia, @Grupo, @Inicio, @Fin
  END 
  CLOSE CECalendarioVerificar2
  DEALLOCATE CECalendarioVerificar2

  SELECT c.*, e.Nombre, 'DescipcionPlan' = p.Descripcion, 'DescripcionMateria' = m.Descripcion, 'DescipcionPlan2' = pp.Descripcion, 'DescripcionMateria2' = m2.Descripcion
    FROM #CalendarioVerificar c
    JOIN Espacio e ON c.Dimension = e.Espacio
    JOIN CEPlan p ON c.CEPlan = p.CEPlan 
    LEFT OUTER JOIN CEMateria m ON c.Materia = m.Materia
    JOIN CEPlan pp ON c.CEPlan2 = pp.CEPlan
    LEFT OUTER JOIN CEMateria m2 ON c.Materia2 = m2.Materia
   WHERE c.Tipo = 'Espacio'
UNION
  SELECT c.*, e.Nombre, 'DescipcionPlan' = p.Descripcion, 'DescripcionMateria' = m.Descripcion, 'DescipcionPlan2' = pp.Descripcion, 'DescripcionMateria2' = m2.Descripcion
    FROM #CalendarioVerificar c
    JOIN Profesor e ON c.Dimension = e.Profesor
    JOIN CEPlan p ON c.CEPlan = p.CEPlan 
    LEFT OUTER JOIN CEMateria m ON c.Materia = m.Materia
    JOIN CEPlan pp ON c.CEPlan2 = pp.CEPlan
    LEFT OUTER JOIN CEMateria m2 ON c.Materia2 = m2.Materia
   WHERE c.Tipo = 'Profesor'
   ORDER BY c.Tipo, c.Dimension, c.CEPlan

RETURN
END
GO

-- spCECalendarioCruce 'DEMO', 0, '7/27/2009', '8/10/2009'
/**************** spCECalendarioCruce ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCECalendarioCruce') and type = 'P') drop procedure dbo.spCECalendarioCruce
GO
CREATE PROCEDURE spCECalendarioCruce
		@Empresa		char(5),
		@Sucursal		int,
		@FechaD			datetime,
		@FechaA			datetime
AS
BEGIN
	DECLARE
		@IDInt		int,
		@Estatus	char(15),
		@Programa	char(10),
		@Plan		char(10),
		@Espacio	char(10),
		@Profesor	char(10),
		@Grupo		char(10),
		@Materia	char(10),
		@Inicio		datetime,
		@Fin		datetime

  CREATE TABLE #CalendarioVerificar(
  Tipo			char(20),
  Dimension		char(10),
  Programa		char(10),
  CEPlan		char(10),
  Materia		char(10),
  Grupo			char(10),
  Inicio1		datetime,
  Fin1			datetime,
  Dimension2		char(10),
  CEPlan2		char(10),
  Materia2		char(10),
  Grupo2		char(10),
  Inicio2		datetime,
  Fin2			datetime)
  
  SELECT @FechaA = dbo.fnFechaConHora(@FechaA, '23:59')

  DECLARE CECalendarioCruce CURSOR FOR
  SELECT ID, Espacio, l.Programa, CEPlan, ISNULL(Materia,''), Grupo, Inicio, Fin
    FROM CECalendario l
   WHERE l.Empresa = @Empresa AND l.Sucursal = @Sucursal
     AND l.Estatus = 'ACTIVO'
     AND l.Inicio >= @FechaD AND l.Fin <= @FechaA

  OPEN CECalendarioCruce
  FETCH NEXT FROM CECalendarioCruce INTO @IDInt, @Espacio, @Programa, @Plan, @Materia, @Grupo, @Inicio, @Fin
  WHILE @@FETCH_STATUS = 0
  BEGIN
      INSERT INTO #CalendarioVerificar
                   (Tipo,    Dimension, Programa,  CEPlan, Materia,  Grupo,  Inicio1, Fin1, Dimension2, CEPlan2, Materia2, Grupo2, Inicio2, Fin2)
			SELECT 'Espacio', @Espacio,   Programa, @Plan,  @Materia, @Grupo, @Inicio, @Fin,  Espacio,    CEPlan,  Materia,  Grupo,  Inicio,  Fin
			  FROM CECalendario
			 WHERE Empresa = @Empresa AND Sucursal = @Sucursal --AND Programa = @Programa
			   AND Espacio = @Espacio AND (Inicio BETWEEN @Inicio AND @Fin OR Fin BETWEEN @Inicio AND @Fin)
			   AND ID <> @IDInt
      FETCH NEXT FROM CECalendarioCruce INTO @IDInt, @Espacio, @Programa, @Plan, @Materia, @Grupo, @Inicio, @Fin
  END 
  CLOSE CECalendarioCruce
  DEALLOCATE CECalendarioCruce

  SELECT c.*, e.Nombre, 'DescipcionPlan' = p.Descripcion, 'DescripcionMateria' = m.Descripcion, 'DescipcionPlan2' = pp.Descripcion, 'DescripcionMateria2' = m2.Descripcion
    FROM #CalendarioVerificar c
    JOIN Espacio e ON c.Dimension = e.Espacio
    JOIN CEPlan p ON c.CEPlan = p.CEPlan 
    LEFT OUTER JOIN CEMateria m ON c.Materia = m.Materia
    JOIN CEPlan pp ON c.CEPlan2 = pp.CEPlan
    LEFT OUTER JOIN CEMateria m2 ON c.Materia2 = m2.Materia
   WHERE c.Tipo = 'Espacio'

RETURN
END
GO

/**************** spCEVerAgenda ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEVerAgenda') and type = 'P') drop procedure dbo.spCEVerAgenda
GO
CREATE PROCEDURE spCEVerAgenda
		@Sucursal		int,
		@Espacio		char(10),
		@FechaD			datetime,
		@FechaA			datetime

AS
BEGIN
  DECLARE
	@ID			int,
	@Modulo			char(10),
	@ModuloID		int,
	@Programa		varchar(10),
	@Ciclo			varchar(50),
	@EspacioDesc		varchar(50),
	@Profesor		varchar(10),
	@ProfesorNombre 	varchar(50),
	@CEPlan			varchar(10),
	@CEPlanDesc		varchar(100),
	@Grupo			varchar(10),
	@Materia		varchar(10),
	@MateriaDesc		varchar(50),
	@Estatus		char(15),
	@Inicio			datetime,
	@Fin			datetime,
	@Mensaje		varchar(1000),
	@Asunto			varchar(255),
	@Linea			char(1)

  SELECT @Linea = char(13)

  CREATE TABLE #CEVerAgenda(
  	ID			int,
	Espacio			char(10)	NULL, -- Equivale a "De"
	DiaCompleto		bit 		NULL	Default 0, -- Siempre cero
	Mensaje			text		NULL, -- Materia Desc + Plan de Estudios + Descripción Salon + Nombre Profesor + Ciclo
	Asunto			varchar(255)	NULL, -- Materia, Grupo, Estatus
	FechaD			datetime	NULL,
	FechaA			datetime	NULL,
  CONSTRAINT priCEVerAgenda PRIMARY KEY(ID)) -- Titulo

  DECLARE crCEVerAgenda CURSOR LOCAL FOR
  SELECT c.ID, c.Modulo, c.ModuloID, c.Programa, p.Ciclo, c.Espacio, e.Nombre, c.Profesor, r.Nombre, c.CEPlan, l.Descripcion, c.Grupo, c.Materia, m.Descripcion, c.Estatus, c.Inicio, c.Fin
    FROM CECalendario c
    LEFT OUTER JOIN CEPrograma p ON c.Programa = p.Programa
    LEFT OUTER JOIN Espacio e ON c.Espacio = e.Espacio
    LEFT OUTER JOIN Profesor r ON c.Profesor = r.Profesor
    LEFT OUTER JOIN CEPlan l ON c.CEPlan = l.CEPlan
    LEFT OUTER JOIN CEMateria m ON c.Materia = m.Materia
   WHERE c.Sucursal = @Sucursal
--     AND c.Espacio in ('SELECT Espacio FROM Espacio WHERE Espacio in '+(@Espacio)+')'
--     AND c.Espacio in (@Espacio)
     AND c.Espacio = @Espacio
     AND c.Inicio >= @FechaD AND c.Fin <= @FechaA
     AND c.Estatus = 'ACTIVO'

  OPEN crCEVerAgenda
  FETCH NEXT FROM crCEVerAgenda INTO @ID, @Modulo, @ModuloID, @Programa, @Ciclo, @Espacio, @EspacioDesc, @Profesor, @ProfesorNombre, @CEPlan, @CePlanDesc, @Grupo, @Materia, @MateriaDesc, @Estatus, @Inicio, @Fin
  WHILE @@FETCH_STATUS = 0
  BEGIN
    IF @Modulo = 'CE'
    BEGIN
      IF NULLIF(@Materia,'') is null
      BEGIN
        SELECT @Asunto = 'Grupo: ' + RTRIM(@Grupo) + ' Estado ' + RTRIM(@Estatus)
        SELECT @Mensaje = 'Plan de Estudios: ' + RTRIM(@CEPlanDesc) + @Linea + 'Ciclo: ' + RTRIM(@Ciclo) + @Linea + 'Lugar: ' + RTRIM(@EspacioDesc) + @Linea + 'Profesor: ' + RTRIM(@ProfesorNombre)
      END
      ELSE
      BEGIN
        SELECT @Asunto = 'Curso: ' + RTRIM(@Materia) + ' Grupo: ' + RTRIM(@Grupo) + ' Estado ' + RTRIM(@Estatus)
        SELECT @Mensaje = 'Curso: ' + RTRIM(@MateriaDesc) + @Linea + 'Plan de Estudios: ' + RTRIM(@CEPlanDesc) + @Linea + 'Ciclo: ' + RTRIM(@Ciclo) + @Linea + 'Lugar: ' + RTRIM(@EspacioDesc) + @Linea + 'Profesor: ' + RTRIM(@ProfesorNombre)

--        SELECT @Asunto = 'Materia: ' + RTRIM(@Materia) + ' Grupo: ' + RTRIM(@Grupo) + ' Estado ' + RTRIM(@Estatus)
--        SELECT @Mensaje = 'Materia: ' + RTRIM(@MateriaDesc) + @Linea + 'Plan de Estudios: ' + RTRIM(@CEPlanDesc) + @Linea + 'Ciclo: ' + RTRIM(@Ciclo) + @Linea + 'Lugar: ' + RTRIM(@EspacioDesc) + @Linea + 'Profesor: ' + RTRIM(@ProfesorNombre)
      END
    END

    INSERT INTO #CEVerAgenda(ID, Espacio, Mensaje, Asunto, FechaD, FechaA)
		    VALUES(@ID, @Espacio, @Mensaje, @Asunto, @Inicio, @Fin)

    FETCH NEXT FROM crCEVerAgenda INTO @ID, @Modulo, @ModuloID, @Programa, @Ciclo, @Espacio, @EspacioDesc, @Profesor, @ProfesorNombre, @CEPlan, @CePlanDesc, @Grupo, @Materia, @MateriaDesc, @Estatus, @Inicio, @Fin
  END

  CLOSE crCEVerAgenda
  DEALLOCATE crCEVerAgenda

  SELECT * FROM #CEVerAgenda

RETURN
END
GO

/**************** spCEAgendaListaEspacios ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCEAgendaListaEspacios') and type = 'P') drop procedure dbo.spCEAgendaListaEspacios
GO
CREATE PROCEDURE spCEAgendaListaEspacios
		@Empresa		char(10),
		@Sucursal		int,
		@Usuario		char(10)

AS
BEGIN
  SELECT Espacio FROM Espacio WHERE Estatus = 'ALTA' ORDER BY Espacio

  RETURN
END
GO

/**************** fnHHCEArtImporte ****************/
if exists (select * from sysobjects where id = object_id('dbo.fnHHCEArtImporte') and type = 'FN') drop function dbo.fnHHCEArtImporte
GO
CREATE FUNCTION dbo.fnHHCEArtImporte(@ID int, @Empresa char(5), @Tipo int) -- Importe, Impuestos, Total
RETURNS money

AS
BEGIN
  DECLARE
  @Importe							money,
  @CfgVentaPreciosImpuestoIncluido	bit
  
  SELECT @CfgVentaPreciosImpuestoIncluido = ISNULL(ec.VentaPreciosImpuestoIncluido, 0)
    FROM EmpresaCfg ec
   WHERE ec.Empresa = @Empresa

  IF @Tipo = 1   
  SELECT @Importe = SUM(((h.Precio*h.Cantidad)*(1-(ISNULL(h.Descuento,0.0) )/100))/(1.0+((CASE @CfgVentaPreciosImpuestoIncluido WHEN 1 THEN a.Impuesto1 ELSE 0 END)/100.0)))
     FROM HHCEArt h
      JOIN Art a ON a.Articulo = h.Articulo
     WHERE h.ID = @ID
 
  RETURN @Importe
END
GO

/**************** fnHHCEImporte ****************/
if exists (select * from sysobjects where id = object_id('dbo.fnHHCEImporte') and type = 'FN') drop function dbo.fnHHCEImporte
GO
CREATE FUNCTION dbo.fnHHCEImporte(@ID int, @Empresa char(5))
RETURNS money
AS
BEGIN
  DECLARE
  @Importe							money,
  @ImporteTotal						money,
  @Inscripcion						money,
  @SEP								money,
  @Art								money,
  @CfgVentaPreciosImpuestoIncluido	bit
  
  SELECT @CfgVentaPreciosImpuestoIncluido = ISNULL(ec.VentaPreciosImpuestoIncluido, 0)
    FROM EmpresaCfg ec
   WHERE ec.Empresa = @Empresa

  SELECT @Importe = SUM((1-(ISNULL(c.DescuentoGlobal,0)/100))*((h.Precio)*(1-(ISNULL(h.DescuentoLineal,0.0) )/100))/(1.0+((CASE @CfgVentaPreciosImpuestoIncluido WHEN 1 THEN ISNULL(c2.Impuesto1, 0) ELSE 0 END)/100.0))),
         @Inscripcion = ISNULL(c.Inscripcion, 0),
         @SEP = ISNULL(c.HHCuotaSEPImporte, 0)
    FROM CE c
    JOIN CEPlan c2 ON c.CEPlan = c2.CEPlan
    JOIN CED h ON h.ID = c.ID
   WHERE h.ID = @ID
   GROUP BY ISNULL(c.Inscripcion, 0), ISNULL(c.HHCuotaSEPImporte, 0)
    
  SELECT @Art = dbo.fnHHCEArtImporte(@ID, @Empresa, 1)
  
  SELECT @ImporteTotal = ROUND(ISNULL(@Importe, 0), 2) + ISNULL(@Inscripcion, 0) + ISNULL(@SEP, 0) + ISNULL(@Art, 0)

  RETURN @ImporteTotal
END
GO

