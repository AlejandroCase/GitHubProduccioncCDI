SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

EXEC spALTER_TABLE 'Venta', 'CDICEPlan', 'varchar(10) NULL'
GO
EXEC spALTER_TABLE 'CE', 'CDISocio', 'varchar(10) NULL'
GO
/*********************************** ae agregaron campos *****************************************/
EXEC spALTER_TABLE 	'CEPlan','CDIClavePresupuestal','VARCHAR (50)NULL'
GO
EXEC spALTER_TABLE 	'CE','CDIClavePresupuestal', 'VARCHAR (50)NULL'
GO 



if not exists (select * from sysobjects where id = object_id('dbo.AsistenteCursoCCPM') and type = 'U')  -- drop table AsistenteCursoCCPM
CREATE TABLE dbo.AsistenteCursoCCPM(
	Estacion		      int,
	ID			          int		NOT NULL IDENTITY (1,1),
	Empresa			      char(5)		NULL,
	Sucursal		      int		NULL,
	Cliente			      varchar(10)	NULL,
--	Personal		      varchar(10)	NULL,
	CEPrograma		    varchar(10)	NULL,
	CEPlan			      varchar(10)	NULL,
	Materia           varchar(10)	NULL,
	Grupo			        varchar(10)	NULL
CONSTRAINT priAsistenteCursoCCPM PRIMARY KEY(Estacion, ID))
GO

EXEC spALTER_TABLE 'AsistenteCursoCCPM', 'CDIPrecio', 'money NULL'
EXEC spALTER_TABLE 'AsistenteCursoCCPM', 'CDIBeca', 'money NULL'
EXEC spALTER_TABLE 'AsistenteCursoCCPM', 'CDIBecaAplicaID', 'int NULL'
EXEC spALTER_TABLE 'AsistenteCursoCCPM', 'CDIEvaluacionProfesor', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'AsistenteCursoCCPM', 'CDIEvaluacionPsicologica', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'AsistenteCursoCCPM', 'CDICondicionFisica', 'bit NULL DEFAULT 0 WITH VALUES'
EXEC spALTER_TABLE 'AsistenteCursoCCPM', 'CDISocio', 'varchar(10) NULL'
EXEC spALTER_TABLE 'AsistenteCursoCCPM', 'CDIDescuento2', 'money NULL' -- DSG
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDIBitacora') and type = 'U')  -- drop table CDIBitacora
CREATE TABLE dbo.CDIBitacora(
	ID              int   IDENTITY,
	Fecha           datetime,
	Modulo          varchar(5)    NULL,
	ModuloID        int           NULL,
	Mensaje         varchar(255)  NULL
CONSTRAINT priCDIBitacora PRIMARY KEY(ID))
GO

EXEC spADD_INDEX 'CDIBitacora', 'Fecha', 'Fecha'
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDICEMateriaGrupoSugerido') and type = 'U')  -- drop table CDICEMateriaGrupoSugerido
CREATE TABLE dbo.CDICEMateriaGrupoSugerido(
	Estacion        int,
	ID              int   IDENTITY,
	Cliente         varchar(10),
	Empresa         varchar(5),
	Sucursal        int,
	Programa        varchar(10),
	CEPlan          varchar(10),
	Materia         varchar(10) NULL,
	Grupo           varchar(10),
	Horario         varchar(30) NULL,
	Disponible      int         NULL,
	Precio          money       NULL,
	Seleccion       bit         NULL DEFAULT 0,
CONSTRAINT priCDICEMateriaGrupoSugerido PRIMARY KEY(ID, Estacion))
GO

EXEC spALTER_TABLE 'CDICEMateriaGrupoSugerido', 'CDISocio', 'varchar(10) NULL'
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDICEPlanFormaPagoTipo') and type = 'U')  -- drop table CDICEPlanFormaPagoTipo
CREATE TABLE dbo.CDICEPlanFormaPagoTipo(
    CEPlan            varchar(10),
    FormaPagoTipo     varchar(50),
CONSTRAINT priCDICEPlanFormaPagoTipo PRIMARY KEY(CEPlan, FormaPagoTipo))
GO

if not exists (select * from sysobjects where id = object_id('dbo.CDICEPlanCondicion') and type = 'U')  -- drop table CDICEPlanCondicion
CREATE TABLE dbo.CDICEPlanCondicion(
    CEPlan            varchar(10),
    Condicion         varchar(50),
CONSTRAINT priCDICEPlanCondicion PRIMARY KEY(CEPlan, Condicion))
GO

/**************** xpCDICEVerificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.xpCDICEVerificar') and type = 'P') drop procedure dbo.xpCDICEVerificar
GO
CREATE PROCEDURE xpCDICEVerificar
		@Empresa	      char(5),
		@Sucursal       int,
		@Cliente        varchar(10),
		@CEPrograma     varchar(10),
		@CEPlan         varchar(10),
		@Materia        varchar(10),
		@Grupo          varchar(10),
		@Ok             int             OUTPUT,
		@OkRef          varchar(255)    OUTPUT
		
AS
BEGIN
	DECLARE
	@EdadMinima             int,
	@EdadMaxima             int,
	@EstaturaMinima         money,
	@PesoMinimo             money,
	@Sexo                   varchar(10),
	@CoberturaMedica        bit,
	@DatosMedicos           bit,
	@DatosTransporte        bit,
	@LimiteMesesDatosMedicos  int,
	
  @EstatusCte             varchar(15),
	@EdadCte                int,
	@EstaturaCte            money,
	@PesoCte                money,
	@SexoCte                varchar(10),
	@MedUltimoCambio        datetime,
	
	@CfgArtCoberturaMedica  varchar(20),
	@IDFactura              int,
	@Saldo                  money,
	@Hoy                    datetime,
	@Ejercicio              int
	
	SELECT @CfgArtCoberturaMedica = CEArtCoberturaMedica
	  FROM CDIEmpresaCfg
	 WHERE Empresa = @Empresa
	
	SELECT @Hoy = GETDATE()
	SELECT @Ejercicio = DATEPART(year, @Hoy)
	 
	SELECT @EstatusCte = c.Estatus,
	       @EdadCte = DBO.fnAntiguedad(c.FechaNacimiento, GETDATE()),
	       @EstaturaCte = ISNULL(c.CDIMedEstatura, 0),
	       @PesoCte = ISNULL(c.CDIMEdPeso, 0),
	       @SexoCte = ISNULL(c.Sexo, ''),
	       @MedUltimoCambio = CDIMedUltimoCambio
	  FROM Cte c
	 WHERE c.Cliente = @Cliente
	
	SELECT @EdadMinima = ISNULL(c.CDIEdadMinima, 0), @EdadMaxima = ISNULL(c.CDIEdadMaxima, 0), @EstaturaMinima = ISNULL(c.CDIEstaturaMinima, 0),
	       @PesoMinimo = ISNULL(c.CDIPesoMinimo, 0), @Sexo = ISNULL(c.CDISexo, ''), @CoberturaMedica = ISNULL(c.CDICoberturaMedica, 0), 
	       @DatosMedicos = ISNULL(c.CDIDatosMedicos, 0), @DatosTransporte = ISNULL(c.CDIDatosTransporte, 0), 
	       @LimiteMesesDatosMedicos = ISNULL(c.CDILimiteMesesDatosMedicos, 0)
	  FROM CEPlan c
	 WHERE c.CEPlan = @CEPlan
	
	IF @EstatusCte <> 'ALTA'
	  SELECT @Ok = 10060, @OkRef = 'El Estatus del Cliente ' + RTRIM(@Cliente) + ' debe ser ALTA'
	ELSE
	IF @EdadCte < @EdadMinima OR @EdadCte > @EdadMaxima
	  SELECT @Ok = 10060, @OkRef = 'La Edad del Cliente ' + RTRIM(@Cliente) + ' está fuera del rango Mínimo y Máximo del Plan de Estudios ' + RTRIM(@CEPlan)
	ELSE
	IF @EstaturaCte < @EstaturaMinima
	  SELECT @Ok = 10060, @OkRef = 'La Estatura del Cliente ' + RTRIM(@Cliente) + ' es menor a la Estatura Mínima del Plan de Estudios ' + RTRIM(@CEPlan)
	ELSE
	IF @PesoCte < @PesoMinimo
	  SELECT @Ok = 10060, @OkRef = 'El Peso del Cliente ' + RTRIM(@Cliente) + ' es menor al Peso Mínimo del Plan de Estudios ' + RTRIM(@CEPlan)
	ELSE
	IF @SexoCte <> @Sexo AND @Sexo NOT IN ('Indistinto', '')
	  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ' + RTRIM(@CEPlan) + ' está dirigido para el género ' + RTRIM(@Sexo) + ' Cliente: ' + RTRIM(@Cliente)
	ELSE
	IF @DatosMedicos = 1 AND EXISTS(SELECT Cliente FROM Cte c WHERE c.Cliente = @Cliente AND ISNULL(c.CDIMedEstatura, 0) = 0 AND NULLIF(RTRIM(c.CDIMedTipoSangre), '') IS NULL
	          AND NULLIF(RTRIM(c.CDIMedDonador), '') IS NULL AND NULLIF(RTRIM(c.CDIMedSolicitudes), '') IS NULL AND NULLIF(RTRIM(c.CDIMedEnfermo), '') IS NULL
            AND NULLIF(RTRIM(c.CDIMedEnfermedad), '') IS NULL AND NULLIF(RTRIM(c.CDIMedAlergia), '') IS NULL AND NULLIF(RTRIM(CDIMedAlergias), '') IS NULL 
            AND NULLIF(RTRIM(CDIMedMedicamento), '') IS NULL AND NULLIF(RTRIM(CDIMedMedicamentos), '') IS NULL AND NULLIF(RTRIM(CDIMedSolicitudes), '') IS NULL
            AND NULLIF(RTRIM(CDIMedAvisar), '') IS NULL AND NULLIF(RTRIM(CDIMedTelefono), '') IS NULL AND NULLIF(RTRIM(CDIMedCelular), '') IS NULL
            AND NULLIF(RTRIM(CDIMedNombreMedico), '') IS NULL AND NULLIF(RTRIM(CDIMedTeleMedico), '') IS NULL AND NULLIF(RTRIM(CDIMedCapacidades), '') IS NULL
            AND NULLIF(RTRIM(CDIMedCuidados), '') IS NULL AND NULLIF(RTRIM(CDIMedRecomenda), '') IS NULL AND NULLIF(RTRIM(CDIMedNoTarjeton), '') IS NULL
            AND CDIMedVigencia IS NULL )
	  SELECT @Ok = 10060, @OkRef = 'Falta capturar los Datos Médicos del Cliente ' + RTRIM(@Cliente)
	ELSE
  IF @DatosTransporte = 1 AND EXISTS(SELECT Cliente FROM Cte c WHERE c.Cliente = @Cliente AND ((ISNULL(CDITransServicio, 0) = 0 AND ISNULL(CDITransMismaDir, 0) = 0)
            OR (NULLIF(RTRIM(CDITransHoraAscenso), '') IS NULL
            /*AND NULLIF(RTRIM(CDITransDirOtroSocio), '') IS NULL */AND NULLIF(RTRIM(CDITransDireccion), '') IS NULL 
            AND NULLIF(RTRIM(CDITransNumero), '') IS NULL AND NULLIF(RTRIM(CDITransNumeroInt), '') IS NULL 
            AND NULLIF(RTRIM(CDITransEntreCalles), '') IS NULL AND NULLIF(RTRIM(CDITransPlano), '') IS NULL 
            AND NULLIF(RTRIM(CDITransCodigoPostal), '') IS NULL AND NULLIF(RTRIM(CDITransDelegacion), '') IS NULL 
            AND NULLIF(RTRIM(CDITransColonia), '') IS NULL AND NULLIF(RTRIM(CDITransPoblacion), '') IS NULL AND NULLIF(RTRIM(CDITransEstado), '') IS NULL
            AND NULLIF(RTRIM(CDITransNombreResp), '') IS NULL AND NULLIF(RTRIM(CDITransTelefono), '') IS NULL AND NULLIF(RTRIM(CDITransHoraSalida), '') IS NULL
            AND NULLIF(RTRIM(CDITransDirOtroSocio2), '') IS NULL AND NULLIF(RTRIM(CDITransDireccion2), '') IS NULL AND NULLIF(RTRIM(CDITransNumero2), '') IS NULL
            AND NULLIF(RTRIM(CDITransNumeroInt2), '') IS NULL AND NULLIF(RTRIM(CDITransEntreCalles2), '') IS NULL AND NULLIF(RTRIM(CDITransPlano2), '') IS NULL
            AND NULLIF(RTRIM(CDITransCodigoPostal2), '') IS NULL AND NULLIF(RTRIM(CDITransDelegacion2), '') IS NULL AND NULLIF(RTRIM(CDITransColonia2), '') IS NULL
            AND NULLIF(RTRIM(CDITransPoblacion2), '') IS NULL AND NULLIF(RTRIM(CDITransEstado2), '') IS NULL AND NULLIF(RTRIM(CDITransNombreResp2), '') IS NULL
            AND NULLIF(RTRIM(CDITransTelefono2), '') IS NULL) ) )
	  SELECT @Ok = 10060, @OkRef = 'Falta capturar los Datos de Transporte del Cliente ' + RTRIM(@Cliente)
	ELSE
	IF @LimiteMesesDatosMedicos < DATEDIFF(MONTH, @MedUltimoCambio, @Hoy)
	  SELECT @Ok = 10060, @OkRef = 'Falta actualizar los Datos Médicos del Cliente ' + RTRIM(@Cliente)
  ELSE
  IF @CoberturaMedica = 1
  BEGIN
	  SELECT TOP 1 @IDFactura = ar.ModuloID
	    FROM AuxiliarRU ar
	    JOIN MovTipo mt ON ar.Mov = mt.Mov AND mt.Modulo = 'VTAS' AND mt.Clave = 'VTAS.F'
	   WHERE ar.Empresa = @Empresa AND ar.Rama = 'VTAS' AND ar.Modulo = 'VTAS' AND ar.Grupo = @Cliente AND ar.Cuenta = @CfgArtCoberturaMedica
	     AND ar.Ejercicio = @Ejercicio
	   GROUP BY ar.ModuloID
	  HAVING SUM(ISNULL(ar.Cargo, 0) - ISNULL(ar.Abono, 0)) > 0
	  
	  IF @IDFactura IS NULL
	    SELECT @Ok = 10060, @OkRef = 'Falta Pago de Cobertura Médica del Cliente ' + RTRIM(@Cliente)
	  ELSE
	  BEGIN
	  	SELECT @Saldo = c.Saldo
        FROM MovFlujo mf
        JOIN Cxc c ON mf.DID = c.ID
        WHERE mf.OModulo = 'VTAS' AND mf.OID = @IDFactura
          AND mf.Cancelado = 0
          
      IF @Saldo > 0
        SELECT @Ok = 10060, @OkRef = 'Falta Pago de Cobertura Médica del Cliente ' + RTRIM(@Cliente)
	  END
  END
	RETURN
END
GO

-- spAsistenteCursoCCPMVerificar 'CDI', 0, 1
/**************** spAsistenteCursoCCPMVerificar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spAsistenteCursoCCPMVerificar') and type = 'P') drop procedure dbo.spAsistenteCursoCCPMVerificar
GO
CREATE PROCEDURE spAsistenteCursoCCPMVerificar
		@Empresa	      char(5),
		@Sucursal	      int,
		@Estacion	      int,
		@EnSilencio     bit = 0,
  	@Ok             int = NULL          OUTPUT,
	  @OkRef          varchar(255) = NULL OUTPUT


AS
BEGIN
	DECLARE
	@Cliente                varchar(10),
	@CEPrograma             varchar(10),
	@CEPlan                 varchar(10),
	@Materia                varchar(10),
	@Grupo                  varchar(10),
	
	@EvaluacionProfesor     bit,
	@EvaluacionPsicologica  bit,
	@CondicionFisica        bit,
	@EvaluacionProfesorPlan bit,
	@EvaluacionPsicologicaPlan  bit,
	@CondicionFisicaPlan    bit,
	
	@Mensaje                varchar(255)
	
	SELECT @Mensaje = 'Verificación Correcta'
	
	DECLARE crAsistenteCursoCCPMVerificar CURSOR FOR
	SELECT acc.Cliente, acc.CEPrograma, acc.CEPlan, acc.Materia, acc.Grupo, acc.CDIEvaluacionProfesor, acc.CDIEvaluacionPsicologica, acc.CDICondicionFisica, 
         c.CDIEvaluacionProfesor, c.CDIEvaluacionPsicologica, c.CDICondicionFisica
	  FROM AsistenteCursoCCPM acc
	  JOIN CEPlan c ON acc.CEPlan = c.CEPlan
	 WHERE acc.Estacion = @Estacion
       AND acc.Empresa  = @Empresa
	 
	OPEN crAsistenteCursoCCPMVerificar
	FETCH next FROM crAsistenteCursoCCPMVerificar INTO @Cliente, @CEPrograma, @CEPlan, @Materia, @Grupo, @EvaluacionProfesor, @EvaluacionPsicologica,
	                                                   @CondicionFisica, @EvaluacionProfesorPlan, @EvaluacionPsicologicaPlan, @CondicionFisicaPlan
  WHILE @@FETCH_STATUS = 0 AND @Ok IS NULL
  BEGIN
  	IF ISNULL(@EvaluacionProfesorPlan, 0) = 1 AND ISNULL(@EvaluacionProfesor, 0) = 0
  	  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ' + RTRIM(@CEPlan) + ' requiere Evaluación del Profesor'
  	ELSE
  	IF ISNULL(@EvaluacionPsicologicaPlan, 0) = 1 AND ISNULL(@EvaluacionPsicologica, 0) = 0
  	  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ' + RTRIM(@CEPlan) + ' requiere Evaluación Psicológica'
  	ELSE
  	IF ISNULL(@CondicionFisicaPlan, 0) = 1 AND ISNULL(@CondicionFisica, 0) = 0
  	  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ' + RTRIM(@CEPlan) + ' requiere Evaluación de Condición Física'
  	ELSE
  	  EXEC xpCDICEVerificar @Empresa, @Sucursal, @Cliente, @CEPrograma, @CEPlan, @Materia, @Grupo, @Ok OUTPUT, @OkRef OUTPUT
  	
  	FETCH next FROM crAsistenteCursoCCPMVerificar INTO @Cliente, @CEPrograma, @CEPlan, @Materia, @Grupo, @EvaluacionProfesor, @EvaluacionPsicologica,
	                                                     @CondicionFisica, @EvaluacionProfesorPlan, @EvaluacionPsicologicaPlan, @CondicionFisicaPlan
  END
  
  CLOSE crAsistenteCursoCCPMVerificar
  DEALLOCATE crAsistenteCursoCCPMVerificar
  
  IF @Ok IS NOT NULL
  BEGIN
    SELECT @Mensaje = ml.Descripcion FROM MensajeLista ml WHERE ml.Mensaje = @Ok
    SELECT @Mensaje = RTRIM(ISNULL(@Mensaje, '')) + ' ' + RTRIM(ISNULL(@OkRef, ''))
  END
  
   IF @EnSilencio = 0
     SELECT @Mensaje
 
	RETURN
END
GO

-- spCDICEGetPrecio 'PINTURA'
-- spCDICEGetPrecio 'TENIS', 'TENIS1'
/**************** spCDICEGetPrecio ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEGetPrecio') and type = 'P') drop procedure dbo.spCDICEGetPrecio
GO
CREATE PROCEDURE spCDICEGetPrecio
          @CEPlan       varchar(10),
          @Materia      varchar(10) = NULL,
          @Precio       money       = NULL OUTPUT,
          @EnSilencio   bit         = 0
AS
BEGIN
	DECLARE
	@Directo      bit
	
	SELECT @Directo = ISNULL(c.CreditoDirecto, 0), @Precio = c.Precio  FROM CEPlan c WHERE c.CEPlan = @CEPlan
	IF @Directo = 0
	  SELECT @Precio = cd.Precio FROM CEPlanD cd WHERE cd.CEPlan = @CEPlan AND cd.Materia = @Materia
	
	IF @EnSilencio = 0
	  SELECT @Precio
	
	RETURN
END
GO

/**************** spCDICEGetBeca ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEGetBeca') and type = 'P') drop procedure dbo.spCDICEGetBeca
GO
CREATE PROCEDURE spCDICEGetBeca
          @Estacion     int
AS
BEGIN
	DECLARE
	@ID             int,
	@Empresa        varchar(5),
	@Cliente        varchar(10),
	@CEPrograma     varchar(10),
	@CEPlan         varchar(10),
	@Materia        varchar(10),
	@IDSolBeca      int,
	@ImporteBeca    money,
	@Descuento      MONEY,
	@Descuento2     MONEY


	DECLARE crCDICEGetBeca CURSOR FOR
	SELECT acc.ID, acc.Empresa, acc.Cliente, acc.CEPrograma, acc.CEPlan, acc.Materia
	  FROM AsistenteCursoCCPM acc
	 WHERE acc.Estacion = @Estacion
	   AND NULLIF(acc.CDIBeca, 0) IS NULL
	   AND acc.CDIBecaAplicaID IS NULL
	   
	OPEN crCDICEGetBeca
	FETCH next FROM crCDICEGetBeca INTO @ID, @Empresa, @Cliente, @CEPrograma, @CEPlan, @Materia
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @IDSolBeca = NULL, @ImporteBeca = NULL, @Descuento = NULL, @Descuento2 = NULL 
		
		SELECT TOP 1 @IDSolBeca = c.ID, @ImporteBeca = c2.CDIBeca, @Descuento = c2.DescuentoLineal
		  FROM CE c
		  JOIN CED c2 ON c.ID = c2.ID
		  JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'CE' AND mt.Clave = 'CE.BES' AND isnull(mt.SubClave,'') = ''
		 WHERE c.Empresa = @Empresa
		   AND c.Estatus = 'Autorizado'
		   AND c.Cliente = @Cliente
		   AND c.Programa = @CEPrograma
		   AND c2.CEPlan = @CEPlan
		   AND c2.Materia = @Materia
		   AND c2.CDIBeca > 0
		   AND ISNULL(c2.CDIBecaAplicada, 0) = 0

		SELECT TOP 1 @Descuento2 = c2.CDIBeca
		  FROM CE c
		  JOIN CED c2 ON c.ID = c2.ID
		  JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'CE' AND mt.Clave = 'CE.BES' AND isnull(mt.SubClave,'') = 'CE.DESC'
		 WHERE c.Empresa = @Empresa
		   AND c.Estatus = 'Autorizado'
		   AND c.Cliente = @Cliente
		   AND c.Programa = @CEPrograma
		   AND c2.CEPlan = @CEPlan
		   AND c2.Materia = @Materia
		   AND c2.CDIBeca > 0
		   AND ISNULL(c2.CDIBecaAplicada, 0) = 0

        IF @IDSolBeca = NULL 
		  SELECT TOP 1 @IDSolBeca = c.ID, @Descuento = c2.DescuentoLineal
		    FROM CE c
		    JOIN CED c2 ON c.ID = c2.ID
		    JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'CE' AND mt.Clave = 'CE.BES' AND isnull(mt.SubClave,'') = 'CE.DESC'
		   WHERE c.Empresa = @Empresa
		     AND c.Estatus = 'Autorizado'
		     AND c.Cliente = @Cliente
		     AND c.Programa = @CEPrograma
		     AND c2.CEPlan = @CEPlan
		     AND c2.Materia = @Materia
		     AND c2.CDIBeca > 0
		     AND ISNULL(c2.CDIBecaAplicada, 0) = 0



		   
	  IF @IDSolBeca IS NOT NULL
	    UPDATE AsistenteCursoCCPM SET CDIBeca = @ImporteBeca, CDIBecaAplicaID = @IDSolBeca, CDIDescuento2 = @Descuento2 WHERE Estacion = @Estacion AND ID = @ID
		 
		FETCH next FROM crCDICEGetBeca INTO @ID, @Empresa, @Cliente, @CEPrograma, @CEPlan, @Materia
	END
	
	CLOSE crCDICEGetBeca
	DEALLOCATE crCDICEGetBeca
	
	RETURN
END
GO

/**************** xpAsistenteCursoCCPM ****************/
if exists (select * from sysobjects where id = object_id('dbo.xpAsistenteCursoCCPM') and type = 'P') drop procedure dbo.xpAsistenteCursoCCPM
GO
CREATE PROCEDURE xpAsistenteCursoCCPM
		@Empresa	      char(5),
		@Sucursal	      int,
		@Usuario	      char(10),
		@Estacion	      int

AS
BEGIN
  DECLARE
	@FechaEmision		        datetime,
	@Cliente		            char(10),
	@CDISocio               char(10),
--	@Personal		        char(10),
	@CEPrograma		          varchar(10),
	@CEPlan			            varchar(10),
	@Materia                varchar(10),
	@Grupo			            varchar(10),
	@Condicion		          varchar(50),
	@Descuento		          varchar(30),
	@DescuentoGlobal	      float,
	@Inscripcion		        money,
	@Cliente2		            char(10),
	@Porc			              float,
	@Porc2			            float,
	@ID			                int,
	@Conteo			            int,
	@Proyecto		            varchar(50),
	@IDInt                  int,
	@CentroCostos           varchar(20),
	@EvaluacionProfesor     bit,
	@EvaluacionPsicologica  bit,
	@CondicionFisica        bit,
	@EvaluacionProfesorPlan bit,
	@EvaluacionPsicologicaPlan  bit,
	@CondicionFisicaPlan    bit,
	
	/*******************se agrego variable*********************/
	@CDIClavePresupuestal   VARCHAR(50),
	
	/*******************se agrego variable*********************/
	
  @CreditoDirecto           bit,
	@CDIBeca                money,
	@CDIBecaAplicaID        int,
	@CDIPrecio              money,
	@DescuentoLineal        money,
	@Concepto               varchar(50),
	@Ok                     int,
	@OkRef                  varchar(255),
	@CDIDescuento2          money

  IF Exists(SELECT * 
              FROM AsistenteCursoCCPM 
             WHERE Estacion = @Estacion 
	             AND Empresa = @Empresa
	             AND Sucursal = @Sucursal
               AND NULLIF(RTRIM(Cliente), '') is NULL-- AND NULLIF(RTRIM(Personal), '') is null
            )
  BEGIN
    SELECT 'Existen registros capturados sin Cliente'-- o Personal'
    RETURN
  END
  ELSE
  IF Exists(SELECT * 
              FROM AsistenteCursoCCPM 
             WHERE Estacion = @Estacion 
	             AND Empresa = @Empresa
	             AND Sucursal = @Sucursal
               AND NULLIF(RTRIM(CEPrograma), '') is null
            )
  BEGIN
    SELECT 'Existen registros capturados sin Programa'
    RETURN
  END
  ELSE
  IF Exists(SELECT * 
              FROM AsistenteCursoCCPM 
             WHERE Estacion = @Estacion 
	             AND Empresa = @Empresa
	             AND Sucursal = @Sucursal
               AND NULLIF(RTRIM(CEPlan), '') is null
            )
  BEGIN
    SELECT 'Existen registros capturados sin Plan de Estudios'
    RETURN
  END
  ELSE
  IF Exists(SELECT * 
              FROM AsistenteCursoCCPM a
              JOIN CEPlan c ON a.CEPlan = c.CEPlan
             WHERE Estacion = @Estacion
	             AND Empresa = @Empresa
	             AND Sucursal = @Sucursal
	             AND ISNULL(c.CreditoDirecto, 0) = 0
               AND NULLIF(RTRIM(Materia), '') is null
            )
  BEGIN
    SELECT 'Existen registros capturados sin Materia'
    RETURN
  END
  ELSE
  IF Exists(SELECT * 
              FROM AsistenteCursoCCPM 
             WHERE Estacion = @Estacion 
	       AND Empresa = @Empresa
	       AND Sucursal = @Sucursal
               AND NULLIF(RTRIM(Grupo), '') is null
            )
  BEGIN
    SELECT 'Existen registros capturados sin Grupo'
    RETURN
  END

  SELECT @FechaEmision = Convert(datetime, Convert(char(20), GETDATE(), 103), 103)
  SELECT @Conteo = 0
  DELETE ListaIDOK WHERE Estacion = @Estacion

--  BEGIN TRAN

  DECLARE crAsistenteCursoCCPM CURSOR FOR
  SELECT a.ID, NULLIF(RTRIM(Cliente), ''), a.CDISocio, /*NULLIF(RTRIM(Personal), ''), */NULLIF(RTRIM(CEPrograma), ''), NULLIF(RTRIM(a.CEPlan), ''), NULLIF(RTRIM(Materia), ''), NULLIF(RTRIM(Grupo), ''), ISNULL(c.CreditoDirecto, 0), CDIBeca, CDIBecaAplicaID, CDIPrecio, c.CDIConcepto, c.CDIComite, c.CDICentroCostos, a.CDIEvaluacionProfesor, a.CDIEvaluacionPsicologica, a.CDICondicionFisica, c.CDIEvaluacionProfesor, c.CDIEvaluacionPsicologica, c.CDICondicionFisica, c.CDIClavePresupuestal, a.CDIDescuento2
    FROM AsistenteCursoCCPM a
    JOIN CEPlan c ON a.CEPlan = c.CEPlan
   WHERE Estacion = @Estacion
     AND Empresa = @Empresa
     AND Sucursal = @Sucursal

  OPEN crAsistenteCursoCCPM
  FETCH NEXT FROM crAsistenteCursoCCPM INTO @IDInt, @Cliente, @CDISocio, /*@Personal, */@CEPrograma, @CEPlan, @Materia, @Grupo, @CreditoDirecto, @CDIBeca, @CDIBecaAplicaID, @CDIPrecio, @Concepto, @Proyecto, @CentroCostos, @EvaluacionProfesor, @EvaluacionPsicologica, @CondicionFisica, @EvaluacionProfesorPlan, @EvaluacionPsicologicaPlan, @CondicionFisicaPlan,@CDIClavePresupuestal, @CDIDescuento2
  WHILE @@FETCH_STATUS = 0
  BEGIN
    SELECT @ID = NULL, @Ok = NULL, @OkRef = NULL
    IF @Cliente is not null
    BEGIN
      SELECT @Condicion = Condicion, --@Descuento = NULLIF(RTRIM(Descuento),''), 
	     @Cliente2 = NULLIF(RTRIM(CECliente),''), @Porc2 = ISNULL(CEClientePorcentaje, 0) 
        FROM Cte WHERE Cliente = @Cliente
/*
      IF @Descuento is not null
        SELECT @DescuentoGlobal = Porcentaje FROM Descuento WHERE Descuento = @Descuento
*/
      SELECT @Inscripcion = NULLIF(Inscripcion,0) FROM CEPlan WHERE CEPlan = @CEPlan

      SELECT @Porc = 100-@Porc2

    END
    ELSE
      SELECT @Condicion = NULL, @Descuento = NULL, @DescuentoGlobal = NULL, @Inscripcion = NULL, @Porc = NULL, @Porc2 = NULL

  	IF ISNULL(@EvaluacionProfesorPlan, 0) = 1 AND ISNULL(@EvaluacionProfesor, 0) = 0
  	  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ' + RTRIM(@CEPlan) + ' requiere Evaluación del Profesor'
  	ELSE
  	IF ISNULL(@EvaluacionPsicologicaPlan, 0) = 1 AND ISNULL(@EvaluacionPsicologica, 0) = 0
  	  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ' + RTRIM(@CEPlan) + ' requiere Evaluación Psicológica'
  	ELSE
  	IF ISNULL(@CondicionFisicaPlan, 0) = 1 AND ISNULL(@CondicionFisica, 0) = 0
  	  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ' + RTRIM(@CEPlan) + ' requiere Evaluación de Condición Física'
    ELSE
  	  EXEC xpCDICEVerificar @Empresa, @Sucursal, @Cliente, @CEPrograma, @CEPlan, @Materia, @Grupo, @Ok OUTPUT, @OkRef OUTPUT


--    SELECT @Proyecto = @CEPlan
    --IF NOT Exists(SELECT * FROM Proy WHERE Proyecto = @Proyecto)
    --  SELECT @Proyecto = NULL

    IF @Ok IS NULL
    BEGIN
      INSERT INTO CE(Empresa, Mov,          	FechaEmision, Moneda, TipoCambio, Usuario, Estatus,       Programa,    CEPlan,  Condicion,  Descuento,  DescuentoGlobal,  Inscripcion,  Cliente,  Cliente2,  CDISocio,  Porcentaje, Porcentaje2, /*Personal, */ Proyecto, Concepto, CDICentroCostos,CDIClavePresupuestal) --se agrego campo clavepresupuestal
             VALUES(@Empresa, 'PreRegistro', @FechaEmision, 'Pesos', 1, 	     @Usuario, 'SINAFECTAR', @CEPrograma, @CEPlan, @Condicion, @Descuento, @DescuentoGlobal, @Inscripcion, @Cliente, @Cliente2, @CDISocio, @Porc,      @Porc2,      /*@Personal,*/ @Proyecto, @Concepto, @CentroCostos, @CDIClavePresupuestal)--se agrego variable clavepresupuestal

      SELECT @ID = @@IDENTITY

      IF @CreditoDirecto = 1
      BEGIN
        DELETE CEPlanAsigna2 WHERE Estacion = @Estacion

        INSERT INTO CEPlanAsigna2 (Estacion,  Empresa,  Sucursal,  Programa,    CEPlan,  Grupo)
                          VALUES (@Estacion, @Empresa, @Sucursal, @CEPrograma, @CEPlan, @Grupo)
      END
      ELSE
      BEGIN
        DELETE CEPlanAsigna WHERE Estacion = @Estacion

        INSERT INTO CEPlanAsigna(Estacion,  Empresa,  Sucursal,  Programa,    CEPlan,  Materia, Grupo)
                        VALUES (@Estacion, @Empresa, @Sucursal, @CEPrograma, @CEPlan, @Materia, @Grupo)
      END

      EXEC spCEAsignaMateria @Estacion, @Empresa, @Sucursal, @ID, @CEPrograma, @CEPlan, @EnSilencio = 1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
      
      IF @Ok IS NULL AND EXISTS(SELECT * FROM CED c WHERE c.ID = @ID) AND (isnull(@CDIBeca, 0.00) > 0 OR isnull(@CDIDescuento2, 0.00) > 0) AND @CDIBecaAplicaID IS NOT NULL
      BEGIN
    	  SELECT @DescuentoLineal = NULL
    	  SELECT @DescuentoLineal = ((isnull(@CDIBeca, 0.00) + isnull(@CDIDescuento2, 0.00))/@CDIPrecio)*100
          UPDATE CED SET CDIBeca = (isnull(@CDIBeca, 0.00) + isnull(@CDIDescuento2, 0.00)), CDIBecaAplicada = @CDIBecaAplicaID, DescuentoLineal = @DescuentoLineal WHERE ID = @ID
      END

      IF @Ok IS NULL
      BEGIN
        EXEC spAfectar 'CE', @ID, 'AFECTAR', 'Todo', @EnSilencio = 1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT --, @Conexion = 1
        -- Se Afecta 2 veces para que el preregistro si tiene Descuento en linea del 100 quede concluido
        --IF @DescuentoLineal = 100
--          EXEC spAfectar 'CE', @ID, 'AFECTAR', 'Todo', @EnSilencio = 1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT --, @Conexion = 1	
        
      
        IF @Ok IS NULL
        BEGIN
    	    SELECT @Conteo = @Conteo + 1
    	    IF @CDIBeca > 0 AND @CDIBecaAplicaID IS NOT NULL
    	    BEGIN
    	      UPDATE CED SET CDIBecaAplicada = @ID WHERE ID = @CDIBecaAplicaID AND CEPlan = @CEPlan AND Materia = @Materia AND CDIBecaAplicada IS NULL
    	    END
    	    DELETE AsistenteCursoCCPM WHERE Estacion = @Estacion AND ID = @IDInt
        END
      END
      
      IF @Ok IS NOT NULL
      BEGIN
    	  DELETE CED WHERE ID = @ID
        DELETE CE WHERE ID = @ID
      END
    END -- Primer IF @Ok IS NULL
    
    INSERT INTO ListaIDOK(Estacion, ID, Empresa, Modulo, Ok, OkRef) VALUES(@Estacion, ISNULL(@ID, 0), @Empresa, 'CE', @Ok, @OkRef)

    FETCH NEXT FROM crAsistenteCursoCCPM INTO @IDInt, @Cliente, @CDISocio, /*@Personal, */@CEPrograma, @CEPlan, @Materia, @Grupo, @CreditoDirecto, @CDIBeca, @CDIBecaAplicaID, @CDIPrecio, @Concepto, @Proyecto, @CentroCostos, @EvaluacionProfesor, @EvaluacionPsicologica, @CondicionFisica, @EvaluacionProfesorPlan, @EvaluacionPsicologicaPlan, @CondicionFisicaPlan,@CDIClavePresupuestal, @CDIDescuento2
  END

  CLOSE crAsistenteCursoCCPM
  DEALLOCATE crAsistenteCursoCCPM

  SELECT 'Proceso Concluido. ' + RTRIM(Convert(char(4), @Conteo)) + ' PreRegistros Generados'

--  COMMIT TRAN

  RETURN
END
GO

/**************** xpCEGenerarVenta ****************/
if exists (select * from sysobjects where id = object_id('dbo.xpCEGenerarVenta') and type = 'P') drop procedure dbo.xpCEGenerarVenta
GO
CREATE PROCEDURE xpCEGenerarVenta
		@ID			      int,
		@Accion			  char(20),
		@Empresa		  char(5),
		@Modulo			  char(5),
		@Mov			    varchar(20),
		@MovID 			  varchar(20),
		@MovTipo		  char(20),
		@Estatus		  char(15),
		@EstatusNuevo	char(15),
		@VentaID		  int, 
		@Ok 			    int		        OUTPUT,
		@OkRef 			  varchar(255)	OUTPUT
AS
BEGIN
  DECLARE
  @CentroCostos     varchar(20),
  @CEPlan           varchar(10),
  @Socio            varchar(10),
  /*******se agrego varible******************/
  @CDIClavepresupuestal	VARCHAR (50)
  /*******se agrego varible******************/
  
  
  SELECT @CentroCostos = c.CDICentroCostos, @CEPlan = c.CEPlan, @Socio = c.CDISocio,@CDIClavepresupuestal=c.CDIClavePresupuestal
    FROM CE c WHERE c.ID = @ID
  UPDATE VentaD SET ContUso = @CentroCostos,CDIClavePresupuestal = @CDIClavepresupuestal WHERE ID = @VentaID
  UPDATE Venta SET CDICEPlan = @CEPlan, CDISocio = @Socio WHERE ID = @VentaID
  
  RETURN
END
GO

-- Rutina que cancela PreRegistros Pendientes en los que su plan de Estudios excede el límite de días.
/**************** spCDICEPreRegistroCancelar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEPreRegistroCancelar') and type = 'P') drop procedure dbo.spCDICEPreRegistroCancelar
GO
CREATE PROCEDURE spCDICEPreRegistroCancelar (@NombreTrabajo VARCHAR(100))
AS
BEGIN
	DECLARE
	@IDPreRegistro      int,
	@DiasVigencia       int,
	@Ok                 int,
	@OkRef              varchar(255),
	@Mensaje            varchar(255),
	@Ahora              datetime,
	@IDSolicBeca        int,
	@Mov                varchar(20),
	@MovID              varchar(20),
	@Empresa            varchar(5),
	@Fecha              datetime,
	@Usuario            varchar(10)
	
	SELECT @Ahora = GETDATE(), @IDSolicBeca = 0
	
	DECLARE crCDICEPreRegistroCancelar CURSOR FOR
	SELECT c.ID, c.Mov, c.MovID, c.Empresa, c.FechaEmision, c.Usuario
	  FROM CE c
	  JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = 'CE' AND mt.Clave = 'CE.P'
	  JOIN CEPlan c2 ON c.CEPlan = c2.CEPlan
	 WHERE c.Estatus = 'PENDIENTE'
	   AND ISNULL(c2.CDIDiasVigenciaPreRegistro, 0) > 0
	   AND ISNULL(c2.CDIDiasVigenciaPreRegistro, 0) < DATEDIFF(DAY, c.FechaEmision, getdate())
	
	OPEN crCDICEPreRegistroCancelar
	FETCH next FROM crCDICEPreRegistroCancelar INTO @IDPreRegistro, @Mov, @MovID, @Empresa, @Fecha, @Usuario
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @Ok = NULL, @OkRef = NULL, @Mensaje = NULL
		EXEC spAfectar 'CE', @IDPreRegistro, 'CANCELAR', @EnSilencio = 1, @Ok = @Ok OUTPUT, @OKRef = @OkRef OUTPUT
		
		--DSG            
      IF @Ok IS NOT NULL 
      BEGIN
        EXEC spCDIVisorMovJob @NombreTrabajo, 102, @Empresa, @Mov, @MovID, '', '', @IDPreRegistro, '', '', @Fecha, 'CE', @Usuario, @OK, @OkRef
      END   
		
		--- Revisa las solicitudes de Beca y mandar a cancelar
		SELECT @IDSolicBeca = isnull(CDIBecaAplicada,0) FROM CED  WHERE ID = @IDPreRegistro		
		IF @IDSolicBeca > 0
		   EXEC spAfectar 'CE', @IDSolicBeca, 'CANCELAR', @EnSilencio = 1, @Ok = @Ok OUTPUT, @OKRef = @OkRef OUTPUT
		------------------------------------------------------
		
		IF @Ok IS NOT NULL
		BEGIN
		  SELECT @Mensaje = ml.Descripcion FROM MensajeLista ml WHERE ml.Mensaje = @Ok
		  SELECT @Mensaje = RTRIM(@Mensaje) + '. ' + RTRIM(@OkRef)
		END 
		INSERT INTO CDIBitacora(Fecha, Modulo, ModuloID, Mensaje) VALUES(@Ahora, 'CE', @IDPreRegistro, @Mensaje)
		
		FETCH next FROM crCDICEPreRegistroCancelar INTO @IDPreRegistro, @Mov, @MovID, @Empresa, @Fecha, @Usuario
	END
	
	CLOSE crCDICEPreRegistroCancelar
	DEALLOCATE crCDICEPreRegistroCancelar
--DSG
EXEC spCDIVisorMovJobMail 102, @NombreTrabajo

	RETURN
END
GO
-- select * FROM dbo.fnCDICEPlanLista('UNO')
if exists (select * from sysobjects where id = object_id('dbo.fnCDICEPlanLista') and type = 'TF') drop FUNCTION dbo.fnCDICEPlanLista
GO
CREATE FUNCTION dbo.fnCDICEPlanLista(@Cliente char(10))
RETURNS @PlanLista  TABLE(
  CEPlan        varchar(10),
  Descripcion   varchar(100))
AS
BEGIN
	DECLARE
	@CteEdad            int,
	@CteEstatura        money,
	@CtePeso            money,
	@CteSexo            varchar(10),
	
	@Plan               varchar(10),
	@Descripcion        varchar(100),
	@EdadMinima         int,
	@EdadMaxima         int,
	@EstaturaMinima     money,
	@PesoMinimo         money,
	@Sexo               varchar(100)
	
	SELECT @CteEdad = DBO.fnAntiguedad(c.FechaNacimiento, GETDATE()),
	       @CteEstatura = ISNULL(c.CDIMedEstatura, 0),
	       @CtePeso = ISNULL(c.CDIMEdPeso, 0),
	       @CteSexo = c.Sexo
	  FROM Cte c
	 WHERE c.Cliente = @Cliente
	 
	DECLARE crCDICEPlanLista CURSOR FOR
	SELECT c.CEPlan, c.Descripcion, ISNULL(c.CDIEdadMinima, 0), ISNULL(c.CDIEdadMaxima, 0), ISNULL(c.CDIEstaturaMinima, 0), ISNULL(c.CDIPesoMinimo, 0), ISNULL(c.CDISexo, '')
	  FROM CEPlan c
	  
	OPEN crCDICEPlanLista
	FETCH next FROM crCDICEPlanLista INTO @Plan, @Descripcion, @EdadMinima, @EdadMaxima, @EstaturaMinima, @PesoMinimo, @Sexo
	WHILE @@FETCH_STATUS = 0
	BEGIN
  	IF @CteEdad >= @EdadMinima AND @CteEdad <= @EdadMaxima
	  AND @CteEstatura >= @EstaturaMinima
    AND @CtePeso >= @PesoMinimo
    AND (@CteSexo = @Sexo OR @Sexo IN ('Indistinto', ''))
  	  INSERT INTO @PlanLista(CEPlan, Descripcion) VALUES(@Plan, @Descripcion)

		FETCH next FROM crCDICEPlanLista INTO @Plan, @Descripcion, @EdadMinima, @EdadMaxima, @EstaturaMinima, @PesoMinimo, @Sexo
	END
	
	CLOSE crCDICEPlanLista
	DEALLOCATE crCDICEPlanLista
	
	RETURN
END
GO

-- Rutina que Sugiere en el Asistente de Registro a los clientes de la membresía, las materis y grupos disponibles.
/**************** spCDICEMateriaGrupoSugerir ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEMateriaGrupoSugerir') and type = 'P') drop procedure dbo.spCDICEMateriaGrupoSugerir
GO
CREATE PROCEDURE spCDICEMateriaGrupoSugerir
      @Estacion         int,
      @Empresa          varchar(5),
      @Sucursal         int
      
AS
BEGIN
	DECLARE
	@Membresia        int,
	@Programa         varchar(10),
	@Horario          varchar(30),
  @Cliente          varchar(10),
  @Socio            varchar(10),
  
  @CEPlan           varchar(10),
  @Materia          varchar(10),
  @Grupo            varchar(10),
  @Disponible       int,
  @Precio           money
	
  DELETE CDICEMateriaGrupoSugerido WHERE Estacion = @Estacion

	DECLARE crCDICEMateriaGrupoSugerir CURSOR FOR
	SELECT c.Membresia, acc.CEPrograma, cd.Horario
	  FROM AsistenteCursoCCPM acc
	  JOIN Cte c ON acc.Cliente = c.Cliente
	  JOIN CEProgramaD cd ON acc.Empresa = cd.Empresa AND acc.Sucursal = cd.Sucursal AND acc.CEPrograma = cd.Programa AND acc.CEPlan = cd.CEPlan AND ISNULL(acc.Materia, '') = cd.Materia AND acc.Grupo = cd.Grupo
	 WHERE acc.Estacion = @Estacion
	   AND c.Estatus = 'ALTA'
	 GROUP BY c.Membresia, acc.CEPrograma, cd.Horario
	 
	OPEN crCDICEMateriaGrupoSugerir
	FETCH next FROM crCDICEMateriaGrupoSugerir INTO @Membresia, @Programa, @Horario
	WHILE @@FETCH_STATUS = 0
	BEGIN
	  DECLARE crCDICEMateriaGrupoSugerirD CURSOR FOR
     SELECT c.Cliente, CteSocio.Socio
	     FROM Cte c
	     LEFT OUTER JOIN Cte CteSocio ON c.Socio = CteSocio.Socio
      WHERE c.Membresia = @Membresia
        AND c.Estatus = 'ALTA'
        AND c.Cliente NOT IN (SELECT Cliente FROM AsistenteCursoCCPM acc WHERE acc.Estacion = @Estacion)
        
    OPEN crCDICEMateriaGrupoSugerirD
    FETCH next FROM crCDICEMateriaGrupoSugerirD INTO @Cliente, @Socio
    WHILE @@FETCH_STATUS = 0
    BEGIN
      DECLARE crCDICEMateriaGrupoSugerirDCte CURSOR FOR
 		  SELECT cd.CEPlan, cd.Materia, cd.Grupo, cd.Horario, cd.Disponible
 		    FROM CEProgramaD cd
	      JOIN dbo.fnCDICEPlanLista(@Cliente) pl ON cd.CEPlan = pl.CEPlan
 		   WHERE cd.Empresa = @Empresa AND cd.Sucursal = @Sucursal AND cd.Programa = @Programa AND cd.Horario = @Horario
 		     AND cd.Disponible > 0
 		  
 		  OPEN crCDICEMateriaGrupoSugerirDCte
 		  FETCH next FROM crCDICEMateriaGrupoSugerirDCte INTO @CEPlan, @Materia, @Grupo, @Horario, @Disponible
 		  WHILE @@FETCH_STATUS = 0
 		  BEGIN
        IF NOT EXISTS(SELECT ch.Alumno 
                        FROM CEAlumnoHist ch 
                       WHERE ch.Empresa = @Empresa AND ch.Alumno = @Cliente AND ch.Programa = @Programa AND ch.CEPlan = @CEPlan AND ch.Materia = @Materia AND ch.Estatus <> 'BAJA')
          IF NOT EXISTS(SELECT c.Dependencia, a.Materia
 		                  FROM CEPlanD d
	  	                JOIN CEMateriaDependencia c ON d.CEPlan = c.CEPlan AND d.Materia = c.Materia AND d.CEPlan = @CEPlan AND d.Materia = @Materia
		                  LEFT OUTER JOIN CEAlumnoHist a ON d.CEPlan = a.CEPlan AND c.Dependencia = a.Materia AND a.Empresa = @Empresa AND a.Alumno = @Cliente AND a.Estatus = 'APROBADO'
	 	                 GROUP BY c.Dependencia, a.Materia
		                HAVING a.Materia is null)
		      BEGIN
		      	EXEC spCDICEGetPrecio @CEPlan, @Materia, @Precio OUTPUT, 1
    	    	INSERT INTO CDICEMateriaGrupoSugerido
   	  	           (Estacion,  Cliente,  Empresa,  Sucursal,  Programa,  CEPlan,  Materia,  Grupo,  Horario,  Disponible,  Precio, CDISocio)
   	  	    VALUES(@Estacion, @Cliente, @Empresa, @Sucursal, @Programa, @CEPlan, @Materia, @Grupo, @Horario, @Disponible, @Precio, @Socio)
   	  	  END
        FETCH next FROM crCDICEMateriaGrupoSugerirDCte INTO @CEPlan, @Materia, @Grupo, @Horario, @Disponible
 		  END
 		  
 		  CLOSE crCDICEMateriaGrupoSugerirDCte
 		  DEALLOCATE crCDICEMateriaGrupoSugerirDCte

    	FETCH next FROM crCDICEMateriaGrupoSugerirD INTO @Cliente, @Socio
    END
    
    CLOSE crCDICEMateriaGrupoSugerirD
    DEALLOCATE crCDICEMateriaGrupoSugerirD
		
		FETCH next FROM crCDICEMateriaGrupoSugerir INTO @Membresia, @Programa, @Horario
	END
	
	CLOSE crCDICEMateriaGrupoSugerir
	DEALLOCATE crCDICEMateriaGrupoSugerir
	 
	RETURN
END
GO

/**************** spCDICEMateriaGrupoSugeridoSeleccion ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEMateriaGrupoSugeridoSeleccion') and type = 'P') drop procedure dbo.spCDICEMateriaGrupoSugeridoSeleccion
GO
CREATE PROCEDURE spCDICEMateriaGrupoSugeridoSeleccion
      @Estacion         int,
      @ID               int,
      @Cliente          varchar(10),
      @Eliminar         bit = 0
AS
BEGIN

  UPDATE CDICEMateriaGrupoSugerido SET Seleccion = 0 WHERE Estacion = @Estacion AND Cliente = @Cliente

	IF @Eliminar = 0
	BEGIN
		UPDATE CDICEMateriaGrupoSugerido SET Seleccion = 1 WHERE Estacion = @Estacion AND ID = @ID AND Cliente = @Cliente
	END
	RETURN
END
GO

/**************** spCDICEMateriaGrupoSugeridoProcesar ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDICEMateriaGrupoSugeridoProcesar') and type = 'P') drop procedure dbo.spCDICEMateriaGrupoSugeridoProcesar
GO
CREATE PROCEDURE spCDICEMateriaGrupoSugeridoProcesar
      @Estacion         int
AS
BEGIN
	
  INSERT INTO AsistenteCursoCCPM
         (Estacion, Empresa, Sucursal, Cliente, CEPrograma, CEPlan, Materia, Grupo, CDIPrecio, CDISocio)
  SELECT @Estacion, Empresa, Sucursal, Cliente, Programa,   CEPlan, Materia, Grupo, Precio, CDISocio
    FROM CDICEMateriaGrupoSugerido
   WHERE Estacion = @Estacion
     AND Seleccion = 1
     
  RETURN
END
GO