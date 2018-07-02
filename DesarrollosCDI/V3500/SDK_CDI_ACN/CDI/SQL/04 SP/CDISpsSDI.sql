/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
--************************************* Sp_ExtraeAcumuladoVariables ***********************************
if exists (select * from sysobjects where id = object_id('dbo.Sp_ExtraeAcumuladoVariables') and type = 'P') drop procedure dbo.Sp_ExtraeAcumuladoVariables
GO 

CREATE PROCEDURE Sp_ExtraeAcumuladoVariables  
@FechaD DateTime,
 @FechaA DateTime,
   @Empresa varchar(5),  
   @Personal char(10),  
   @Concepto varchar(50),  
   @Movimiento varchar(50),  
   @Importe money OUTPUT,  
    @Cantidad float OUTPUT,  
    @NoEnMov   char(20) = NULL,      
   @Estatus  varchar(15) = NULL    
AS  
BEGIN   
   EXEC spPSNominaUltimoMovimiento @FechaD,@FechaA, @Empresa, @Personal,@Concepto,@Movimiento,@Importe OUTPUT,@Cantidad OUTPUT, @NoEnMov, @Estatus   
   
END  
go
--************************************* spPSNominaUltimoMovimiento ***********************************
if exists (select * from sysobjects where id = object_id('dbo.spPSNominaUltimoMovimiento') and type = 'P') drop procedure dbo.spPSNominaUltimoMovimiento
GO 

CREATE PROCEDURE spPSNominaUltimoMovimiento
			@FechaD DateTime,
			 @FechaA DateTime,
			@Empresa	char(5),
			@Personal	char(10),
			@Concepto	varchar(50),
			@Movimiento	varchar(50),
			@Importe	money	OUTPUT,
 			@Cantidad	float	OUTPUT,
			@NoEnMov  	char(20)	= NULL,    
			@Estatus 	varchar(15)	= NULL  
WITH ENCRYPTION
AS BEGIN
  IF NOT EXISTS(SELECT * FROM EmpresaCfgNominaAcum WHERE Empresa = @Empresa)
    INSERT EmpresaCfgNominaAcum (Empresa, EmpresaAcum) VALUES (@Empresa, @Empresa)
    
  SELECT @Personal   = NULLIF(RTRIM(@Personal), ''),
         @Concepto   = NULLIF(RTRIM(@Concepto), ''),
         @Movimiento = NULLIF(RTRIM(@Movimiento), '')

  SELECT @Importe = 0.0, @Cantidad = 0.0

  SELECT TOP 1 @Importe = d.Importe, @Cantidad = d.Cantidad
    FROM Nomina n, NominaD d, MovTipo mt
   WHERE n.ID = d.ID
     AND n.Estatus in('CONCLUIDO')--,Case WHEN @Estatus = 'BORRADOR' then 'BORRADOR' else 'CONCLUIDO' END)
     AND n.Empresa =@Empresa --IN (SELECT EmpresaAcum FROM EmpresaCfgNominaAcum WHERE Empresa = @Empresa) 
     AND mt.Clave IN ('NOM.NE','NOM.N') 
     AND n.Mov = mt.Mov
     AND mt.Modulo = 'NOM'
     AND d.Personal = @Personal
     AND d.Concepto = @Concepto
     AND d.Movimiento = ISNULL(@Movimiento, d.Movimiento)
     And n.FechaA between @FechaD and  @FechaA 

     --AND n.Mov not in(@NoEnMov)
   ORDER BY d.ID DESC 
  
   
  RETURN
END

go
--EXEC Sp_ExtraeAcumuladoVariables @Empresa,@Personal,@Concepto,@Movimiento,@Importe OUTPUT,@Cantidad OUTPUT,@NoEnMov,@Estatus
--EXEC Sp_ExtraeAcumuladoVariables 'demo','01','Variable Diaria del Bimestre','ESTADISTICA',NULL OUTPUT,@Cantidad OUTPUT,@NoEnMov,@Estatus


--************************************* spNominaFactorIntegracion ***********************************
if exists (select * from sysobjects where id = object_id('dbo.spNominaFactorIntegracionCDI') and type = 'P') drop procedure dbo.spNominaFactorIntegracionCDI
GO             
CREATE PROCEDURE spNominaFactorIntegracionCDI
			@Empresa	char(5),
			@Sucursal	int,
			@Categoria	varchar(50),
			@Puesto		varchar(50),
			@Personal	char(10),
			@AnosCumplidos	int,
			@Factor		float OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Numero		int,
    @TablaVacaciones	varchar(50),
	@TablaPrimaVacaciones   varchar(50),
	@TablaAguinaldo  varchar(50),
	@TablaPrimaDominical varchar(50),
    @Valor		varchar(50),
    @DiasVacacionesIMSS	Float,
	@DiasPrimaVacacionesIMSS Float,
	@DiasPrimaDominicalIMSS Float,
	@Fechaantiguedad DateTime,
	@FechaEmision    DateTime,
    @PrimaVacacional	float,
    @DiasAguinaldo	float,
    @DiasAno		float  



	
	SELECT @PrimaVacacional = NULL, @DiasAguinaldo = NULL, @DiasAno = NULL, @Factor = NULL--, @Categoria= NULL
  
	

--*********************** EMPIEZA CALCULO DE FACTOR INTEGRACION CDI POR CATEGORIAS ***********************
	

	--Select @Categoria = Categoria, @FechaAntiguedad=FechaAntiguedad From Personal where personal=@Personal

	IF @Categoria IN ('Confianza A','Confianza B','Profesores A','Profesores B','Tepozotlan A','Tepozotlan B','Campamentos A')
	BEGIN
		SELECT @TablaVacaciones			= 'Vacaciones 1' 
		SELECT @TablaPrimaVacaciones	= 'Prima Vacacional 1' 
		SELECT @TablaAguinaldo			= 'Aguinaldo 1' 
		SELECT @TablaPrimaDominical		= 'Prima Dominical 1' 
	END

	IF @Categoria IN ('Confianza C','Confianza D')
	BEGIN
		SELECT @TablaVacaciones			= 'Vacaciones 2' 
		SELECT @TablaPrimaVacaciones	= 'Prima Vacacional 2' 
		SELECT @TablaAguinaldo			= 'Aguinaldo 2' 
		SELECT @TablaPrimaDominical		= 'Prima Dominical 2' 
	END
	
	IF @Categoria IN ('Sindicalizados A','Sindicalizados B')
	BEGIN
		SELECT @TablaVacaciones			= 'Vacaciones 3' 
		SELECT @TablaPrimaVacaciones	= 'Prima Vacacional 3' 
		SELECT @TablaAguinaldo			= 'Aguinaldo 3' 
		SELECT @TablaPrimaDominical		= 'Prima Dominical 3' 
	END
	
	IF @Categoria IN ('Sindicalizados C','Sindicalizados D')
		BEGIN
			SELECT @TablaVacaciones			= 'Vacaciones 4' 
			SELECT @TablaPrimaVacaciones	= 'Prima Vacacional 4' 
			SELECT @TablaAguinaldo			= 'Aguinaldo 4' 
			SELECT @TablaPrimaDominical		= 'Prima Dominical 4' 
		END
--***************************   VACACIONES   ************************************************************* 
--SELECT @Categoria'@Categoria'
	
	--SELECT @AnosCumplidos = DATEDIFF (Year,@FechaAntiguedad,getDate())
	SELECT @Numero = @AnosCumplidos +1
		IF NOT EXISTS(SELECT * FROM TablaNumD WHERE TablaNum = @TablaVacaciones AND Numero = @Numero)
			SELECT @Numero = MAX(Numero) FROM TablaNumD WHERE TablaNum = @TablaVacaciones
	
				SELECT @DiasVacacionesIMSS = ISNULL(Valor,0)
				  FROM TablaNumD
				 WHERE TablaNum = @TablaVacaciones AND Numero = @Numero
	--select @DiasVacacionesIMSS '@DiasVacacionesIMSS'
	

--*****************************  PRIMA VACACIONAL  **********************************************

	

	--SELECT @AnosCumplidos = DATEDIFF (Year,@FechaAntiguedad,getDate())
	SELECT @Numero = @AnosCumplidos +1
		IF NOT EXISTS(SELECT * FROM TablaNumD WHERE TablaNum = @TablaPrimaVacaciones AND Numero = @Numero)
			SELECT @Numero = MAX(Numero) FROM TablaNumD WHERE TablaNum = @TablaPrimaVacaciones
	
			SELECT @DiasPrimaVacacionesIMSS = (ISNULL(Valor,0)/100)
			FROM TablaNumD
			WHERE TablaNum = @TablaPrimaVacaciones AND Numero = @Numero

		--SELECT @DiasPrimaVacacionesIMSS '@DiasPrimaVacacionesIMSS'



--*****************************  AGUINALDO  **********************************************

	
	
	--SELECT @AnosCumplidos = DATEDIFF (Year,@FechaAntiguedad,getDate())
	SELECT @Numero = @AnosCumplidos +1
		IF NOT EXISTS(SELECT * FROM TablaNumD WHERE TablaNum = @TablaAguinaldo AND Numero = @Numero)
			SELECT @Numero = MAX(Numero) FROM TablaNumD WHERE TablaNum = @TablaAguinaldo
	
			SELECT @DiasAguinaldo = ISNULL(Valor,0)
			FROM TablaNumD
			WHERE TablaNum = @TablaAguinaldo AND Numero = @Numero

		--SELECT @DiasAguinaldo '@DiasAguinaldo'



--*****************************  PRIMA DOMINICAL  **********************************************

	
	 SELECT @Valor=Valor FROM PersonalPropValor WHERE Propiedad='Prima Dominical Fija'  and Rama='Cat' and cuenta=@Categoria

--select @Valor	

	If @Valor=1
		BEGIN

	--		SELECT @AnosCumplidos = DATEDIFF (Year,@FechaAntiguedad,getDate())
			SELECT @Numero = @AnosCumplidos +1
			IF NOT EXISTS(
			SELECT * FROM TablaNumD WHERE TablaNum = @TablaPrimaDominical AND Numero = @Numero
						)
				SELECT @Numero = MAX(Numero) FROM TablaNumD WHERE TablaNum = @TablaPrimaDominical
	
			SELECT @DiasPrimaDominicalIMSS = ((ISNULL(Valor,0)/100))*52
			FROM TablaNumD
			WHERE TablaNum = @TablaPrimaDominical AND Numero = @Numero
		END
		Else 
			select @DiasPrimaDominicalIMSS=0
--select @DiasPrimaDominicalIMSS

	SELECT @Factor= 1+(((@DiasVacacionesIMSS*@DiasPrimaVacacionesIMSS)/365) + (@DiasPrimaDominicalIMSS/365)+ (@DiasAguinaldo/365))

--select @DiasVacacionesIMSS*@DiasPrimaVacacionesIMSS '@DiasVacacionesIMSS*@DiasPrimaVacacionesIMSS', @DiasAguinaldo '@DiasAguinaldo'
		

--SELECT @Factor '@Factor'

	

	
 
  RETURN
END
GO
--********************************************* spVerSDI ***************************************
if exists (SELECT * FROM sysobjects where id = object_id('dbo.spVerSDI') and type = 'P') drop procedure dbo.spVerSDI
GO             
CREATE PROCEDURE spVerSDI
			@Empresa       	char(5),
			@Sucursal      	int,
			@Categoria     	varchar(50),
			@Puesto     	varchar(50),
			@Personal      	char(10),
			@AnosCumplidos 	int,
			@SueldoDiario  	money,
			@TipoSueldo 	varchar(10),
			@EnSilencio	int 		= 0,
		    	@SDI     	money		= NULL	OUTPUT,
			@ZonaEconomica	varchar(50) 	= NULL

--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Factor  		float,
    @Dias    		int,
    @GravableIMSS 	money,
    @FechaD   		datetime,
    @FechaA   		datetime,
    @Fecha    		datetime,
    @Autotransportes	bit,
    @CANAPAT		bit, 
    @FactorCANAPAT	float,
    @SDIMaximo          money,
    @Jornada		varchar(20)

  SELECT @Dias		= 0,
         @GravableIMSS  = 0,
         @CANAPAT       = 0,
         @FactorCANAPAT = NULL,
         @SDI		= NULL

  EXEC xpVerSDI @Empresa, @Sucursal, @Categoria, @Personal, @AnosCumplidos, @SueldoDiario, @TipoSueldo, @EnSilencio, @SDI OUTPUT, @ZonaEconomica
  IF @SDI IS NOT NULL
  BEGIN
    IF @EnSilencio = 0
      SELECT "SDI" = @SDI
    RETURN
  END

  SELECT @Jornada = Jornada, @ZonaEconomica = ISNULL(@ZonaEconomica, ZonaEconomica) FROM Personal WHERE Personal = @Personal

  SELECT @Autotransportes = ISNULL(Autotransportes, 0) FROM EmpresaGral WHERE Empresa = @Empresa
  IF @Autotransportes = 1
    SELECT @CANAPAT = AutoCANAPAT FROM EmpresaCfg2 WHERE Empresa = @Empresa

  IF @CANAPAT = 1
  BEGIN
    SELECT @FactorCANAPAT = NULLIF(FactorCANAPAT, 0) FROM PersonalCat WHERE Categoria = @Categoria
    SELECT @SDI = @FactorCANAPAT * SueldoMinimo FROM ZonaEconomica WHERE Zona = @ZonaEconomica
  END
  
  IF @SDI IS NULL
  BEGIN
    SELECT @Fecha= GETDATE()
 
   EXEC spNominaDiasBimestre  @Fecha, @FechaD  OUTPUT,  @FechaA  OUTPUT
    IF UPPER(@TipoSueldo) <> 'FIJO'
    BEGIN 
      EXEC spNominaAcumuladoFechas @Empresa, @Personal,'Sueldo', @FechaD, @FechaA, NULL, NULL, @Dias OUTPUT    
--************************************************************************************************************************************

-- ***************    Aqui se Trae el Importer Variable del SDI del Bimestre Anterior ***************************
--****************    (SE BUSCA EL ULTIMO MOVIMIENTO DE SDI QUE HAY EN EL BIMESTRE ANTERIOR, SI NO TIENE EL CONCEPTO ENTONCES =0)      

	  --EXEC spNominaAcumuladoFechas @Empresa, @Personal,'Variable Diaria del Bimestre', @FechaD, @FechaA, NULL, @GravableIMSS OUTPUT, NULL
DECLARE @iMPORTE MONEY

EXEC Sp_ExtraeAcumuladoVariables @FechaD, @FechaA ,@Empresa,@Personal,'Variable Diaria del Bimestre','ESTADISTICA',@Importe OUTPUT,NULL ,NULL,'CONCLUIDO'


--************************************************************************************************************************************
    END

--    EXEC spNominaFactorIntegracion @Empresa, @Sucursal, @Categoria, @Puesto, @Personal, @AnosCumplidos, @Factor OUTPUT
		EXEC spNominaFactorIntegracionCDI @Empresa, @Sucursal, @Categoria, @Puesto, @Personal, @AnosCumplidos, @Factor OUTPUT

SELECT @GravableIMSS=ISNULL(@Importe, 0)

--SELECT @GravableIMSS'@GravableIMSS',@Importe '@Importe'


    IF ISNULL(@Dias, 0) > 0
      SELECT @SDI = (@Factor * @SueldoDiario)+(ISNULL(@GravableIMSS, 0)/*/@Dias*/)
    ELSE
      SELECT @SDI = (@Factor * @SueldoDiario)

--SELECT  @Factor '@Factor ' , @SueldoDiario '@SueldoDiario'
      
      --SELECT @SDI'@SDI',@Factor '@Factor ', @SueldoDiario'@SueldoDiario'
	
-- Suma al SDI los pagos fijos (Artículo 30 fracción I de la Ley del Seguro Social)
	EXEC xpSDIFijo @Empresa, @Sucursal, @Categoria, @Puesto, @Personal, @SueldoDiario, @SDI OUTPUT
    
  END
--Inicia  condicion para que el sdi no Exceda a 25 veces el salario minimo del DF segun dice la ley*/
    SELECT @SDIMaximo     = 25.0 * ISNULL( SueldoMinimo, 0 ) FROM ZonaEconomica WHERE Zona='A'
    IF @SDI > @SDIMaximo 
      SELECT @SDI = @SDIMaximo

    -- esto sirve para checar que el SDI no quede por debajo del minimo de la ZonaEconomica y Que no Sea jornada Reducida
    IF ISNULL((SELECT JornadaReducida FROM Jornada WHERE Jornada = @Jornada), 0) = 0
      IF EXISTS(SELECT SueldoMinimo FROM ZonaEconomica WHERE Zona = @ZonaEconomica AND SueldoMinimo>@SDI)
       SELECT @SDI = SueldoMinimo FROM ZonaEconomica WHERE Zona = @ZonaEconomica

--Termina  condicion para que el sdi no Exceda a 25 veces el salario minimo del DF segun dice la ley*/
  IF @EnSilencio = 0
    SELECT "SDI" = @SDI
--    SELECT @SDI
  RETURN
END
GO
--spReporteVerSDI
IF EXISTS (select * from sysobjects where id = object_id('dbo.spReporteVerSDI') and type = 'P') DROP PROCEDURE dbo.spReporteVerSDI
GO
Create PROCEDURE spReporteVerSDI  
@Empresa        varchar(5),  
@Personal       varchar(10),  
@Proyecto       varchar(50),  
@Fecha     datetime  
AS BEGIN  
DECLARE  
@Sucursal        int,  
@Categoria       varchar(50),  
@Puesto       varchar(50),  
@FechaD    datetime,  
@FechaA    datetime,  
@VariableBimAnt  Money,  
@SDIEstimado  Money,  
@SDILeyAnt Money,  
@AcumVarBimIMSS  Money  
EXEC spNominaDiasBimestre  @Fecha, @FechaD  OUTPUT,  @FechaA  OUTPUT  

if not exists(select 1 from Personal where Personal=@Personal and Empresa=@Empresa)
	set @Personal=null
if not exists(select 1 from Proy where Proyecto=@Proyecto)
	set @Proyecto=null	
	

Create Table #RepSDI (Personal char(10),  
Nombre varchar(50) ,  
Categoria varchar(50) ,  
Registro3 varchar(50) ,  
FechaAntiguedad DateTime,  
fechaa DateTime,  
SDILeyAnt money ,  
VariableBimAnt Money,  
SDIEstimadoAnt Money,  
AcumVarBimIMSS money ,  
VariableDiariadelBimestre Money,  
NodeDiasAusentismodelBimestre Money,  
NoDiasIncapacidaddelBimestre Money,  
NodeDiasdelBimestre Money,  
SalarioIntegradodeLey Money,  
SDIEstimado Money)  
-- principal
Insert into #RepSDI (Personal ,Nombre ,Categoria ,Registro3 ,FechaAntiguedad , fechaa ,SDILeyAnt,VariableBimAnt ,SDIEstimadoAnt ,AcumVarBimIMSS  ,  
VariableDiariadelBimestre ,NodeDiasAusentismodelBimestre, NoDiasIncapacidaddelBimestre ,NodeDiasdelBimestre ,SalarioIntegradodeLey ,SDIEstimado )  
select p.personal,"Nombre"=(p.ApellidoPaterno+' '+p.ApellidoMaterno+' '+p.Nombre),p.Categoria,p.Registro3, p.FechaAntiguedad , N.fechaa,  
0 as 'SDILeyAnt',0 as 'VariableBimAnt', 0 as 'SDIEstimadoAnt',
'AcumVarBimIMSS'= (SUM(CASE WHEN ND.CONCEPTO ='Acum Importe Bimestral Variable IMSS'   THEN ND.IMPORTE ELSE 0 END)),  
'VariableDiariadelBimestre'= (SUM(CASE WHEN ND.CONCEPTO ='Variable Diaria del Bimestre'   THEN ND.IMPORTE ELSE 0 END)),  
'NodeDiasAusentismodelBimestre'=(SUM(CASE WHEN ND.CONCEPTO ='No Dias Ausentismo del Bimestre' THEN ND.IMPORTE ELSE 0 END)),  
'NodeDiasIncapacidaddelBimestre'=(SUM(CASE WHEN ND.CONCEPTO ='No Dias Incapacidades del Bimestre' THEN ND.IMPORTE ELSE 0 END)),  
'NodeDiasdelBimestre'=   (SUM(CASE WHEN ND.CONCEPTO ='No Dias del Bimestre'    THEN ND.IMPORTE ELSE 0 END)),  
'SalarioIntegradodeLey'=  (SUM(CASE WHEN ND.CONCEPTO ='Salario Integrado de Ley'    THEN ND.IMPORTE ELSE 0 END)),  
'SDIestimado'=     (SUM(CASE WHEN ND.CONCEPTO ='SDI'       THEN ND.IMPORTE ELSE 0 END))  
from personal P join NominaD Nd on P.personal=ND.personal  
Join Nomina N on N.id=ND.id  
where ND.Personal=P.personal  
and N.Estatus='Concluido'  
And N.FechaA= @Fecha  
And N.Mov='Nomina'  
And P.Personal=isnull(@Personal,p.Personal)
And P.Empresa=@Empresa  
And P.Proyecto=isnull(@Proyecto,P.Proyecto)
And ND.concepto in ('Variable Diaria del Bimestre','No Dias Ausentismo del Bimestre','No Dias Incapacidades del Bimestre','Acum Importe Bimestral Variable IMSS','No Dias del Bimestre','Salario Integrado de Ley','SDI')  
And ND.Movimiento ='Estadistica'  
Group by  p.personal,p.ApellidoPaterno, p.ApellidoMaterno, p.Nombre,p.Categoria,p.Registro3, p.FechaAntiguedad , N.fechaa  

DECLARE ReporteSDI CURSOR FOR  
SELECT Personal from #RepSDI  
OPEN ReporteSDI  
FETCH NEXT FROM ReporteSDI INTO @Personal  
WHILE @@FETCH_STATUS <> -1  
BEGIN  
EXEC spNominaAcumuladoFechas @Empresa,@Personal,'Salario Integrado de Ley',   @FechaD, @FechaA, NULL, @SDILeyAnt OUTPUT, Null  
EXEC spNominaAcumuladoFechas @Empresa,@Personal,'Variable Diaria del Bimestre',   @FechaD, @FechaA, NULL, @VariableBimAnt OUTPUT, Null  
EXEC spNominaAcumuladoFechas @Empresa,@Personal,'SDI',       @FechaD, @FechaA, NULL,@SDIEstimado OUTPUT,NULL  
update #RepSDI set SDILeyAnt=@SDILeyAnt, VariableBimAnt=@VariableBimAnt,SDIEstimadoAnt=@SDIEstimado    where personal = @Personal  
FETCH NEXT FROM ReporteSDI INTO @Personal  
END  
CLOSE ReporteSDI  
DEALLOCATE ReporteSDI  
SELECT * FROM #REPSDI  
End 
GO
--------------------------------- spListadodeNominaConceptoCDI  
IF EXISTS (select * from sysobjects where id = object_id('dbo.spListadodeNominaConceptoCDI') and type = 'P') DROP PROCEDURE dbo.spListadodeNominaConceptoCDI
GO

CREATE PROCEDURE spListadodeNominaConceptoCDI    
@Proyecto varchar (50),    
@Empresa  varchar (5),
@Concepto varchar (50),       
@FechaD DateTime,    
@FechaA DateTime   
AS  BEGIN   
select @Proyecto=LTRIM(rtrim(@Proyecto))    
If not exists (select 1 from Proy where Proyecto=@Proyecto )    
set @Proyecto=Null 
If not exists (select 1 from CDIConceptosespeciales where Concepto=@Concepto )    
set @Concepto=Null 
SELECT ND.Personal,p.Proyecto,p.SucursalTrabajo,(P.ApellidoPaterno+' '+P.ApellidoPaterno+' '+P.ApellidoMaterno+' '+P.Nombre)as Nombre, ND.Concepto, sum(isnull(ND.Importe,0)), sum(isnull(ND.Cantidad,0))--,N.FechaA As FechaA, N.FechaD as FechaD
FROM Nomina N Join    
NominaD ND On N.id=ND.id  Join    
Personal P on Nd.personal=P.personal    
WHERE N.Estatus='CONCLUIDO'    
AND N.FechaA BETWEEN @FechaD AND  @FechaA

AND P.Proyecto= ISNULL (@Proyecto ,P.Proyecto)    
AND ND.Concepto in (select Concepto    
FROM CDIConceptosespeciales    
WHERE empresa=@Empresa
AND Concepto=ISNULL (@Concepto,concepto)
)    
Group By ND.Personal,p.Proyecto,p.SucursalTrabajo,p.SucursalTrabajo,P.ApellidoPaterno,P.ApellidoPaterno,P.ApellidoMaterno,P.Nombre, ND.Concepto, ND.movimiento,ND.Importe, ND.Cantidad--, N.FechaA , N.FechaD 
Order by p.Proyecto,ND.personal,ND.Movimiento Desc    
END
go
--EXEC spListadodeNominaConceptoCDI '','cdi','Sueldo','01/01/2010','31/01/2010'

