/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
-----------------------------------SpCdiEliminaVacacion
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCdiEliminaVacacion') and type = 'P') 
DROP PROCEDURE dbo.SpCdiEliminaVacacion
GO
CREATE PROC SpCdiEliminaVacacion
@id int
AS
BEGIN	
	DELETE IncidenciaH WHERE id=@id	
END
GO
-----------------------------------SpCDICalTerminoVac
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDICalTerminoVac') and type = 'P') 
DROP PROCEDURE dbo.SpCDICalTerminoVac
GO
CREATE PROCEDURE SpCDICalTerminoVac
@Empresa varchar(5)
AS
BEGIN

	SET NOCOUNT ON
	DECLARE 
	@FechaD	smallDatetime,
	@FechaVar	smallDatetime,
	@Cantidad int,
	@Personal varchar(10),
	--@Id int,
	@EsLaborable bit,
	@ContadorDiaLaborable int,
	@DiasDescanso int,
	@DiasFestivos int,
	@DiasNaturales int,
	@Dia varchar(15),
	@Jornada varchar(30),
	@NomConceptoDisminuirVacaciones varchar(30),
	@NominaConcepto  varchar(30),
	@Renglon floaT,
	@id int
			
	DECLARE CurCDICalTerminoVac CURSOR FOR 
	SELECT id,Personal,CONVERT(int,Cantidad),FechaD 
	  FROM IncidenciaH 
	 WHERE isdate(FechaA)=0 AND Cantidad>0 AND isdate(FEchaD)=1 AND Empresa=@Empresa
	 
	OPEN CurCDICalTerminoVac
	FETCH NEXT FROM CurCDICalTerminoVac INTO @Id,@Personal,@Cantidad,@FechaD
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 

			
			SELECT  @EsLaborable=1,@ContadorDiaLaborable=1,@FechaVar=@FechaD,@Jornada=jornada FROM personal WHERE personal=@Personal
			WHILE(1=1)
			BEGIN

				SET @Dia=DATENAME(dw, @FechaVar) 
				set @EsLaborable=0	
				IF @Dia='Lunes' Select @EsLaborable=CASE WHEN Lunes=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Martes' Select @EsLaborable=CASE WHEN Martes=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Miércoles' Select @EsLaborable=CASE WHEN Miercoles=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Jueves' Select @EsLaborable=CASE WHEN Jueves=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Viernes' Select @EsLaborable=CASE WHEN Viernes=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Sábado' Select @EsLaborable=CASE WHEN Sabado=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Domingo' Select @EsLaborable=CASE WHEN Domingo=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF EXISTS (SELECT 8 FROM jornadadiafestivo a JOIN Jornada b ON a.jornada=b.Jornada WHERE a.Jornada=@Jornada AND a.Fecha=@FechaVar AND a.EsLaborable=0 AND b.DescansaFestivos=0)
					SET @EsLaborable=0
				IF EXISTS (SELECT 8 FROM diafestivo WHERE Fecha=@FechaVar AND EsLaborable=0)
					SET @EsLaborable=0
				IF @EsLaborable=1
					SET  @ContadorDiaLaborable=@ContadorDiaLaborable+1		
				IF @ContadorDiaLaborable>@Cantidad+1 and @EsLaborable=1				
					BREAK		
				SET  @FechaVar=@FechaVar+1
			END
		
			SELECT tOP 1 @FechaVar=Fecha FROM JornadaTiempo 
			WHERE Fecha>=@FechaVar AND Jornada=@Jornada order by fecha
			select @DiasNaturales =DATEDIFF(day,@FechaD,@FechaVar)
			SELECT @DiasFestivos=COUNT(*) 	FROM diafestivo where Fecha between @FechaD and  @FechaVar AND EsLaborable=0 
			set @DiasDescanso=@DiasNaturales-(@Cantidad+@DiasFestivos)
			UPDATE IncidenciaH SET FechaA=@FechaVar  WHERE  id=@ID 
	

	FETCH NEXT FROM CurCDICalTerminoVac INTO @Id,@Personal,@Cantidad,@FechaD
	END 
	CLOSE CurCDICalTerminoVac
	DEALLOCATE CurCDICalTerminoVac
END
GO
------------------------------------------------FnCategoriaDiaVac
IF EXISTS (select * from sysobjects where id = object_id('dbo.FnCategoriaDiaVac') and type = 'FN') 
DROP FUNCTION dbo.FnCategoriaDiaVac
GO
CREATE FUNCTION dbo.FnCategoriaDiaVac (
@AnosCumplidos int,
@Categoria varchar(30))
RETURNS int
AS
BEGIN		
	DECLARE 
	@DiasVacaciones int,
	@TablaVacaciones varchar(50)	

	IF @Categoria IN ('Confianza A','Confianza B','Profesores A','Profesores B','Tepozotlan A','Tepozotlan B','Campamentos A')
		SELECT @TablaVacaciones			= 'Vacaciones 1' 
	ELSE IF @Categoria IN ('Confianza C','Confianza D')
		SELECT @TablaVacaciones			= 'Vacaciones 2' 
	ELSE IF @Categoria IN ('Sindicalizados A','Sindicalizados B')
		SELECT @TablaVacaciones			= 'Vacaciones 3' 
	ELSE IF @Categoria IN ('Sindicalizados C','Sindicalizados D')
		SELECT @TablaVacaciones			= 'Vacaciones 4' 
		
	SELECT @AnosCumplidos = @AnosCumplidos +1
		IF NOT EXISTS(SELECT * FROM TablaNumD WHERE TablaNum = @TablaVacaciones AND Numero = @AnosCumplidos)
			SELECT @AnosCumplidos = MAX(Numero) FROM TablaNumD WHERE TablaNum = @TablaVacaciones
	
	SELECT @DiasVacaciones = ISNULL(Valor,0)
	FROM TablaNumD
	WHERE TablaNum = @TablaVacaciones AND Numero = @AnosCumplidos
	
	RETURN @DiasVacaciones
	END
go
-------------------------------------------SpTiempoTrascurrido
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpTiempoTrascurrido') and type = 'P') 
DROP PROCEDURE dbo.SpTiempoTrascurrido
GO
CREATE PROCEDURE SpTiempoTrascurrido
@FechaD datetime,
@FechaA datetime,
@Años int output,	
@Meses Int output,
@Dias int output
AS
BEGIN
	DECLARE @Cont int,
	@FechaVar datetime
	--Años
	SET @Cont=0
	SET @FechaVar=@FechaD
	--SELECT @FechaVar,@FechaA
	WHILE  @FechaVar < = @FechaA
	BEGIN
		SELECT @FechaVar=dateadd(year,1,@FechaVar)
		IF @FechaVar < = @FechaA
			SET @Cont=@Cont+1

	END 
	IF @FechaVar<>@FechaA
		SELECT @FechaVar=dateadd(year,-1,@FechaVar)
	SET @FechaD=@FechaVar
	SET @Años=@Cont
	--Meses
	SET @Cont=0
	SET @FechaVar=@FechaD
	WHILE  @FechaVar < = @FechaA
	BEGIN
		SELECT @FechaVar=dateadd(month,1,@FechaVar)
		IF @FechaVar < = @FechaA
			SET @Cont=@Cont+1

	END 
	IF @FechaVar<>@FechaA
		SELECT @FechaVar=dateadd(month,-1,@FechaVar)
	SET @FechaD=@FechaVar
	SET @Meses=@Cont
	--Dias
	SET @Cont=0
	SET @FechaVar=@FechaD
	WHILE  @FechaVar < = @FechaA
	BEGIN
		SELECT @FechaVar=dateadd(day,1,@FechaVar)
		IF @FechaVar < = @FechaA
			SET @Cont=@Cont+1

	END 
	IF @FechaVar<>@FechaA
		SELECT @FechaVar=dateadd(day,-1,@FechaVar)
	SET @FechaD=@FechaVar
	SET @Dias=@Cont
	
END
go
---------------------------------SpRepSaldoVacaciones
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpRepSaldoVacaciones') and type = 'P') 
DROP PROCEDURE dbo.SpRepSaldoVacaciones
GO
Create PROCEDURE SpRepSaldoVacaciones 
@Empresa varchar(5),  
@FechaA datetime,  
@Proyecto varchar(50)  
AS  
BEGIN  
  
DECLARE @AnosCumplidos int,  
@Personal Varchar(20),  
@FechaAntiguedad datetime,  
@Categoria varchar(30),  
@Años int ,   
@Meses Int ,  
@Dias int ,  
@Ejercicio int,  
@EjercicioSig int,  
@DiasVacTomados float,  
@DiasVacPendientes float,
@diasVacaciones float ,
@DiasVacProxEjer float,
@EjercicioVar int
  
IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)   
 SET @Proyecto=Null  
 -- SELECT @FechaA
  
SET @Ejercicio=year(@FechaA)  
SET @EjercicioSig=@Ejercicio+1  
  
  CREATE TABLE #pasoAcum (   
   GRupo varchar(50) null,  
   Moneda varchar(50)  null,
   Ejercicio int  null,  
   Periodo  int  null,
   Inicio float  null,
   Cargos float  null,
   Abonos float  null,  
   Final float  null,  
   InicioU Float  null,  
   CargosU float  null,  
   AbonosU float null,   
   finalU float  NULL,
  	FEcha datetime null)  
  
SELECT Proyecto,  
Personal,  
Isnull(ApellidoPaterno,'') +' '+Isnull(ApellidoMaterno,'')+' '+Isnull(Nombre,'') AS Nombre,FechaAntiguedad,Categoria,  
0 as DiasVac, 
0 AS DiasVacTomados,  
0 AS DiasVacPendientes, 
0 AS DiasVacProxEjer,  
0 AS Amos,  
0 AS Meses,  
0 AS Dias,   
0 AS DiasVacTomadosProxEjer,  
0 AS DiasVacPendientesProxEjer,  
0 AS DiasVacQueExpiraron  
INTO #PasoPersonal  
FROM personal   
WHERE  1=1  
AND empresa=@empresa  
AND estatus ='ALTA'  
AND Proyecto=isnull(@Proyecto,proyecto)  
  
  
  
 DECLARE CurPasoPer CURSOR FOR   
    SELECT Personal, FechaAntiguedad,Categoria FROM #PasoPersonal  
    OPEN CurPasoPer  
 FETCH NEXT FROM CurPasoPer INTO @Personal,@FechaAntiguedad,@Categoria  
 WHILE @@FETCH_STATUS <> -1   
 BEGIN   
  SELECT  @Años =0,@Meses=0,@Dias =0  
  EXEC SpTiempoTrascurrido @FechaAntiguedad,@FechaA, @Años output,@Meses output,@Dias output  
  UPDATE #PasoPersonal SET Amos=@Años,Meses=@Meses,Dias=@Dias WHERE personal=@Personal  
    
  TRUNCATE TABLE #pasoAcum  
  SELECT @diasVacaciones=0,@DiasVacTomados=0,@DiasVacPendientes=0
     --select @Ejercicio
     INSERT INTO #pasoAcum ( GRupo,Moneda, Ejercicio,Periodo,Inicio,Cargos,Abonos,Final,InicioU,CargosU,AbonosU,finalU)  
     EXEC spVerAcumulados  @empresa,   888,  'VAC',   '',   @Personal,   @Ejercicio,   0,  1,  'Pesos'  
     --select  * from #pasoAcum
      --select 
     SELECT @diasVacaciones=CargosU FROM #pasoAcum WHERE ejercicio =9999   
     SELECT @DiasVacTomados=AbonosU FROM #pasoAcum WHERE ejercicio =9999   
     select @DiasVacPendientes=FinalU FROM #pasoAcum WHERE ejercicio =9999 
     -- SELECT @diasVacaciones '@diasVacaciones', @Personal '@Personal',@Ejercicio '@Ejercicio'
     UPDATE #PasoPersonal SET DiasVac=isnull(@diasVacaciones,0),DiasVacTomados=isnull(@DiasVacTomados,0),DiasVacPendientes=isnull(@DiasVacPendientes,0) WHERE personal=@Personal  
       
     TRUNCATE TABLE #pasoAcum 
     SELECT @diasVacaciones=0,@DiasVacTomados=0,@DiasVacPendientes=0 
     
	INSERT INTO #pasoAcum ( GRupo,Moneda, Ejercicio,Periodo,Inicio,Cargos,Abonos,Final,InicioU,CargosU,AbonosU,finalU)  
     EXEC spVerAcumulados  @empresa,   888,  'VAC',   '',   @Personal,   @EjercicioSig,   0,  1,  'Pesos'  
       
     SELECT @DiasVacTomados=AbonosU FROM #pasoAcum WHERE ejercicio =9999   
     select @DiasVacPendientes=FinalU FROM #pasoAcum WHERE ejercicio =9999 
  
	SELECT @DiasVacProxEjer= ISNULL( SUM(b.importe),0) 
   FROM Nomina a JOIN NominaD b 
   ON a.id=b.id
   WHERE 1=1
   AND a.Empresa=@Empresa
   AND a.Estatus IN ('Concluido')
   AND b.concepto='Aumento Vac Proy'
   AND year(a.Fechad)=year(@FechaA)
   AND b.personal=@Personal

     UPDATE #PasoPersonal SET DiasVacProxEjer=@DiasVacProxEjer WHERE personal=@Personal
       
     UPDATE #PasoPersonal SET DiasVacTomadosProxEjer=isnull(@DiasVacTomados,0),DiasVacPendientesProxEjer= isnull (DiasVacProxEjer,0) - isnull (@DiasVacTomados,0)  WHERE personal=@Personal  
       
       
   DECLARE @a int ,@FEchaPres datetime, @CargosU int,@AbonosU int
   SET @a=1
  -- SELECT @FEchaA
   SET @Ejercicio=year(@FEchaA)
   SELECT @EjercicioVar=@Ejercicio
   SET @FEchaPres = @FEchaA
   TRUNCATE TABLE #pasoAcum
	WHILE @a<=4
	BEGIN
		--SELECT @Ejercicio
		INSERT INTO #pasoAcum ( GRupo,Moneda, Ejercicio,Periodo,Inicio,Cargos,Abonos,Final,InicioU,CargosU,AbonosU,finalU)  
		EXEC spVerAcumulados  @empresa,   888,  'VAC',   '',   @Personal,   @EjercicioVar,   0,  1,  'Pesos' 
		SET @a=@a+1
		SET @EjercicioVar=@EjercicioVar-1
	END
	
	--SELECT dateadd(year,2010,1)
	DELETE #pasoAcum WHERE ejercicio=9999 OR Periodo=0
	SELECT @FEchaPres=dateadd(month,-18,@FEchaPres)
	--SELECT @FechaA	
	UPDATE  #pasoAcum SET FEcha= CONVERT(datetime,'01/'+CONVERT(varchar,Periodo)+'/'+CONVERT(varchar,Ejercicio) )
	FROM #pasoAcum
	SELECT @CargosU=isnull(Sum(AbonosU),0)FROM #pasoAcum --WHERE Ejercicio<=year(@FechaA) AND 
	SELECT @AbonosU=isnull(Sum(CargosU),0)FROM #pasoAcum WHERE FEcha<=@FEchaPres
	
	 UPDATE #PasoPersonal SET DiasVacQueExpiraron=CASE WHEN (@AbonosU-@CargosU)<0 THEN 0 ELSE @AbonosU-@CargosU end  WHERE personal=@Personal
	--SELECT * FROM #pasoAcum
	--SELECT * FROM #PasoPersonal
    
  FETCH NEXT FROM CurPasoPer INTO @Personal,@FechaAntiguedad,@Categoria  
 END   
 CLOSE CurPasoPer  
 DEALLOCATE CurPasoPer  
   
SELECT * FROM #PasoPersonal  
ORDER BY Proyecto,Personal  
   
END   
go
--exec SpRepSaldoVacaciones 'CDI','01/01/2010','Actividades'
--exec SpRepSaldoVacaciones 'cdi','31/12/2009',''
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpRepProgVacaciones') and type = 'P') 
DROP PROCEDURE dbo.SpRepProgVacaciones
GO

create PROCEDURE SpRepProgVacaciones  
@Empresa varchar(5),  
@FechaA datetime,  
@Proyecto varchar(50)  
AS  
BEGIN  
	DECLARE @AnosCumplidos int,  
	@Personal Varchar(20),  
	@FechaAntiguedad datetime,  
	@Categoria varchar(30),  
	@Años int ,  
	@Meses Int ,  
	@Dias int ,  
	@Ejercicio int,  
	@EjercicioSig int,  
	@DiasVacTomados float,  
	@DiasVacPendientes float,  
	@diasVacaciones float ,  
	@DiasVacProxEjer float  
	IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)  
		SET @Proyecto=Null  
	SET @Ejercicio=year(@FechaA)  
	SET @EjercicioSig=@Ejercicio+1  
CREATE TABLE #pasoAcum (  
GRupo varchar(50) null,  
Moneda varchar(50)  null,  
Ejercicio int  null,  
Periodo  int  null,  
Inicio float  null,  
Cargos float  null,  
Abonos float  null,  
Final float  null,  
InicioU Float  null,  
CargosU float  null,  
AbonosU float null,  
finalU float  null)  
SELECT Proyecto,  
Personal,  
Isnull(ApellidoPaterno,'') +' '+Isnull(ApellidoMaterno,'')+' '+Isnull(Nombre,'') AS Nombre,FechaAntiguedad,Categoria,  
0 as DiasVac,  
0 AS DiasVacTomados,  
0 AS DiasVacPendientes,  
0 AS DiasVacProxEjer,  
0 AS Amos,  
0 AS Meses,  
0 AS Dias,  
0 AS DiasVacTomadosProxEjer,  
0 AS DiasVacPendientesProxEjer,  
0 AS DiasVacQueExpiraron  
INTO #PasoPersonal  
FROM personal  
WHERE  1=1  
AND empresa=@empresa  
AND estatus ='ALTA'  
AND Proyecto=isnull(@Proyecto,proyecto)  
ALTER TABLE #PasoPersonal ADD Mes1 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes2 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes3 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes4 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes5 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes6 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes7 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes8 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes9 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes10 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes11 varchar(250)  
ALTER TABLE #PasoPersonal ADD Mes12 varchar(250)  
CREATE TABLE #PasoDiasPeriodo (id int identity(1,1),Dias varchar(100))  
DECLARE CurPasoPer CURSOR FOR  
SELECT Personal, FechaAntiguedad,Categoria FROM #PasoPersonal  
OPEN CurPasoPer  
FETCH NEXT FROM CurPasoPer INTO @Personal,@FechaAntiguedad,@Categoria  
WHILE @@FETCH_STATUS <> -1  
BEGIN  
SELECT  @Años =0,@Meses=0,@Dias =0  
EXEC SpTiempoTrascurrido @FechaAntiguedad,@FechaA, @Años output,@Meses output,@Dias output  
UPDATE #PasoPersonal SET Amos=@Años,Meses=@Meses,Dias=@Dias WHERE personal=@Personal  
TRUNCATE TABLE #pasoAcum  
SELECT @diasVacaciones=0,@DiasVacTomados=0,@DiasVacPendientes=0  
INSERT INTO #pasoAcum ( GRupo,Moneda, Ejercicio,Periodo,Inicio,Cargos,Abonos,Final,InicioU,CargosU,AbonosU,finalU)  
EXEC spVerAcumulados  @empresa,   888,  'VAC',   '',   @Personal,   @Ejercicio,   0,  1,  'Pesos'  
SELECT @diasVacaciones=CargosU FROM #pasoAcum WHERE ejercicio =9999  
SELECT @DiasVacTomados=AbonosU FROM #pasoAcum WHERE ejercicio =9999  
select @DiasVacPendientes=FinalU FROM #pasoAcum WHERE ejercicio =9999  
--SELECT @diasVacaciones '@diasVacaciones', @Personal '@Personal',@Ejercicio '@Ejercicio'
UPDATE #PasoPersonal SET DiasVac=isnull(@diasVacaciones,0),DiasVacTomados=isnull(@DiasVacTomados,0),DiasVacPendientes=isnull(@DiasVacPendientes,0) WHERE personal=@Personal  
TRUNCATE TABLE #pasoAcum  
SELECT @diasVacaciones=0,@DiasVacTomados=0,@DiasVacPendientes=0  
INSERT INTO #pasoAcum ( GRupo,Moneda, Ejercicio,Periodo,Inicio,Cargos,Abonos,Final,InicioU,CargosU,AbonosU,finalU)  
EXEC spVerAcumulados  @empresa,   888,  'VAC',   '',   @Personal,   @EjercicioSig,   0,  1,  'Pesos'  
SELECT @DiasVacTomados=AbonosU FROM #pasoAcum WHERE ejercicio =9999  
select @DiasVacPendientes=FinalU FROM #pasoAcum WHERE ejercicio =9999  
SELECT @DiasVacProxEjer= isnull(SUM(b.importe),0)  
FROM Nomina a JOIN NominaD b  
ON a.id=b.id  
WHERE 1=1  
AND a.Empresa=@Empresa  
AND a.Estatus IN ('Concluido')  
AND b.concepto='Aumento Vac Proy'  
AND year(a.Fechad)=year(@FechaA)  
AND b.personal=@Personal  
UPDATE #PasoPersonal SET DiasVacProxEjer=@DiasVacProxEjer WHERE personal=@Personal  
UPDATE #PasoPersonal SET DiasVacTomadosProxEjer=isnull(@DiasVacTomados,0),DiasVacPendientesProxEjer= isnull (DiasVacProxEjer,0) - isnull (@DiasVacTomados,0)  WHERE personal=@Personal  
DECLARE @NomVacacionesTomadas varchar(20),  
@a int  
SET @a=1  
SELECT @NomVacacionesTomadas=NomVacacionesTomadas FROM EmpresaCFGMov WHERE Empresa=@Empresa  
WHILE @a<=12  
BEGIN  
DECLARE @colors VARCHAR(1024)  
DELETE #PasoDiasPeriodo  
SET @colors=null

truncate Table #PasoDiasPeriodo

INSERT INTO #PasoDiasPeriodo (dias)  
select (left(convert(Varchar(11),FEchaD,113),6)+'-'+left(convert(Varchar(11),FEchaA,113),6)) from incidenciaH
where year(FechaD)=@EjercicioSig
and Personal=@Personal
and Empresa=@Empresa 
and MONTH(FechaD)=@a

--select (convert(Varchar(11),FEchaD,113)+'-'+convert(Varchar(11),FEchaD,113))
--from incidenciaH 
--where Personal='0008'
--and YEAR(FEchaD)=2010

declare @b int,@c int
select @b =1 , @c=MAX(id) from #PasoDiasPeriodo
Update #PasoDiasPeriodo set Dias='/'+Dias where id>1
set @c=ISNULL(@c,0)

While @b<=@c
begin
DECLARE @SQL varchar (250) 
select @colors=dias from #PasoDiasPeriodo where id=@b

SET @SQL='UPDATE #PasoPersonal SET Mes'+CONVERT(char(2),@a)+'=isnull(Mes'+CONVERT(char(2),@a)+','+Char(39)+Char(39)+')+'+Char(39)+@colors+Char(39)+' where personal='+@Personal
EXEC (@SQL) 
--select @SQL
set @b=@b+1
end 

SET @a=@a+1  
END  
FETCH NEXT FROM CurPasoPer INTO @Personal,@FechaAntiguedad,@Categoria  
END  
CLOSE CurPasoPer  
DEALLOCATE CurPasoPer  


SELECT * FROM #PasoPersonal  
ORDER BY Proyecto,Personal  
END  
go
--exec SpRepProgVacaciones 'cdi','31/12/2009',''
--exec SpRepProgVacaciones 'CDI','01/01/2009',''
--exec SpRepProgVacaciones 'DEMO','11/10/2010',''
--Select * from movtipo WHERE modulo='Asis'
--SpAsisValidaVac
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpAsisValidaVac') and type = 'P') 
DROP PROCEDURE dbo.SpAsisValidaVac
GO
CREATE PROCEDURE SpAsisValidaVac  
@ID int  
AS  
BEGIN  
	DECLARE @FechaD datetime,  
	@Clave varchar(20),  
	@Mov varchar(20),  
	@Personal varchar(20),  
	@Estatus varchar(20),  
	@FechaMin datetime,  
	@OkRef varchar(20)  
	SET @FechaMin=getdate()  
	SET @FechaMin=dbo.FnFechasinHora(@FechaMin)  
	SET @FechaMin=dateadd(day,+15,@FechaMin)  
	SET @OkRef='OK'  
	SELECT @Mov=a.Mov,@Estatus=Estatus FROM nomina a WHERE   a.id=@id  
	SELECT @Clave=clave FROM MovTipo WHERE Mov=@Mov AND Modulo='NOM'  
	
	SET @Personal=null  
	IF @Clave IN  ('NOM.VT') AND 
	@Estatus IN ('SINAFECTAR','PROCESAR') AND 
	NOT  EXISTS (SELECT 1 FROM movbitacora WHERE modulo='NOM' AND ID=@ID)   
	BEGIN  
	
		
		SELECT TOP 1 @Personal=b.Personal  
		FROM nomina a JOIN nominad b ON a.id=b.id  
		WHERE 1=1  
		AND  a.id=@id  
		AND b.fechaD<@FechaMin		
		ORDER BY b.personal 
		 
		IF @Personal IS NOT NULL  
			SET @OkRef=@Personal  

	END  
	SELECT @OkREf  
END 
GO
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpVePersonalInfo') and type = 'P') 
DROP PROCEDURE dbo.SpVePersonalInfo
GO
CREATE PROCEDURE SpVePersonalInfo
@Usuario varchar(10)
AS
BEGIN
	
	DECLARE @OkRef varchar(20)

	
	IF EXISTS (SELECT 1 FROM CDIUsuarioCFG WHERE usuario=@Usuario AND CDIPersonalInfo=1)
		SET @OkRef='SI'
	ELSE 
		SET @OkRef='NO'
	
	SELECT @OkREf
	
END
go 
if exists (select * from sysobjects where id = object_id('dbo.spGenerarJornadaTodas') and type = 'P') drop procedure dbo.spGenerarJornadaTodas
GO
CREATE PROCEDURE spGenerarJornadaTodas
		    @Jornada	varchar(20),
		    @FechaD	datetime,
		    @FechaA	datetime	
--//WITH ENCRYPTION
AS BEGIN
	DECLARE @Ok varchar(20)
		--SELECT * FROM JornadaD WHERE Jornada=@Jornada


 	CREATE TABLE #pasoExec (Msj Varchar(500))
 	
 	
 	DECLARE CurGenJornadas CURSOR FOR 
	SELECT Jornada 
	  FROM Jornada 
	 WHERE Tipo='Control Asistencia'	   
    OPEN CurGenJornadas
	FETCH NEXT FROM CurGenJornadas INTO @Jornada
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 
		--SELECT @Jornada
		IF NOT EXISTS (SELECT * FROM JornadaD WHERE Jornada=@Jornada)
			SET @Ok=@Jornada
		
		FETCH NEXT FROM CurGenJornadas INTO @Jornada
	END 
	CLOSE CurGenJornadas
	DEALLOCATE CurGenJornadas
	
 	IF @ok IS NULL
 	begin
		DECLARE CurGenJornadas CURSOR FOR 
		SELECT Jornada 
		  FROM Jornada 
		 WHERE Tipo='Control Asistencia'	   
		OPEN CurGenJornadas
		FETCH NEXT FROM CurGenJornadas INTO @Jornada
		WHILE @@FETCH_STATUS <> -1 OR @ok=0
		BEGIN 
			--SELECT @Jornada
			--SELECT * FROM JornadaD WHERE Jornada=@Jornada
			INSERT INTO #pasoExec (Msj)
			EXEC spGenerarJornada @Jornada,@FechaD,@FechaA 
			
			FETCH NEXT FROM CurGenJornadas INTO @Jornada
		END 
		CLOSE CurGenJornadas
		DEALLOCATE CurGenJornadas
		IF NOT EXISTS (SELECT 1 FROM #pasoExec WHERE msj= 'Error al Generar la Jornada Laboral')
		SELECT 'Se Genero con Exito todas las Jornada Laborales de Periodo Indicado'		
		ELSE 
			SELECT 'Error al Generar la Jornada Laboral'
	END 
	ELSE
		SELECT 'La jornada '+@ok+' No tiene Rutina'
 	
 	
  	
END 
GO
--spGenerarJornadaTodas 'Cinco Dias', '01/01/2010 00:00:00', '31/12/2010 00:00:00'

--EXEC SpVePersonalInfo 'DEMO'
--spGenerarJornada 
if exists (select * from sysobjects where id = object_id('dbo.spGenerarJornada') and type = 'P') drop procedure dbo.spGenerarJornada
GO

CREATE PROCEDURE spGenerarJornada
		    @Jornada	varchar(20),
		    @FechaD	datetime,
		    @FechaA	datetime	
AS BEGIN
  DECLARE
    @Ok			 int,
    @Domingo 		 bit,
    @Lunes   		 bit,
    @Martes  		 bit,
    @Miercoles		 bit,
    @Jueves		 bit,
    @Viernes		 bit,
    @Sabado		 bit,
    @DescansoRompeRutina bit,
    @DescansaFestivos	 bit,
    @FestivoRompeRutina	 bit,
    @Dia		 int,
    @UltDia		 int,
    @HoraEntrada	 char(5),
    @HoraSalida		 char(5),
    @DiaSemana		 int,
    @NoLabora		 bit,
    @EsFestivoGeneral    bit,
    @EsFestivoJornada    bit,
    @Entrada		 datetime,
    @Salida		 datetime,
    @Fecha		 datetime,
    @BrincaDia		 int,
    @RompeRutina	 int

  SET DATEFIRST 7
  EXEC spExtraerFecha @FechaD OUTPUT
  EXEC spExtraerFecha @FechaA OUTPUT
  SELECT @FechaA = DATEADD(day, 1, @FechaA)

  IF NOT EXISTS(SELECT * FROM Jornada WHERE Jornada = @Jornada) RETURN

  SELECT @Ok = NULL
  SELECT @Domingo   		= Domingo, 
         @Lunes     		= Lunes, 
         @Martes    		= Martes, 
         @Miercoles 		= Miercoles, 
         @Jueves    		= Jueves, 
         @Viernes   		= Viernes,		 
         @Sabado    		= Sabado,
         @DescansoRompeRutina	= DescansoRompeRutina,
         @DescansaFestivos	= DescansaFestivos,
         @FestivoRompeRutina	= FestivoRompeRutina
    FROM Jornada 
   WHERE Jornada = @Jornada

  BEGIN TRANSACTION
    -- Eliminar tiempos anteriores
    DELETE JornadaTiempo WHERE Jornada = @Jornada AND Entrada >= @FechaD 
    SELECT @Entrada = @FechaD
    WHILE @Entrada < @FechaA
    BEGIN
      DECLARE crRutina CURSOR
         FOR SELECT Dia, Entrada, Salida
               FROM JornadaD
              WHERE Jornada = @Jornada
  
      OPEN crRutina
      FETCH NEXT FROM crRutina INTO @Dia, @HoraEntrada, @HoraSalida
      SELECT @UltDia = @Dia, @RompeRutina = 0, @BrincaDia = 0
      WHILE @@FETCH_STATUS <> -1 AND @Entrada < @FechaA AND @RompeRutina = 0 AND @Ok IS NULL
      BEGIN
        IF @@FETCH_STATUS <> -2 AND @BrincaDia = 0 AND @Ok IS NULL
        BEGIN
          SELECT @NoLabora = 0, @EsFestivoGeneral = 0, @EsFestivoJornada = 0, @Fecha = @Entrada
          EXEC spExtraerFecha @Fecha OUTPUT

          SELECT @DiaSemana = DATEPART(weekday, @Fecha)
          IF (@DiaSemana = 1 AND @Domingo   = 1) OR (@DiaSemana = 2 AND @Lunes  = 1) OR (@DiaSemana = 3 AND @Martes  = 1) OR
             (@DiaSemana = 4 AND @Miercoles = 1) OR (@DiaSemana = 5 AND @Jueves = 1) OR (@DiaSemana = 6 AND @Viernes = 1) OR
             (@DiaSemana = 7 AND @Sabado    = 1)  
            SELECT @NoLabora = 1
          IF @NoLabora = 0
          BEGIN 
            IF @Fecha IN (SELECT Fecha FROM DiaFestivo WHERE EsLaborable = 0) 
              SELECT @EsFestivoGeneral = 1
            IF @Fecha IN (SELECT Fecha FROM JornadaDiaFestivo WHERE Jornada = @Jornada AND EsLaborable = 0) 
              SELECT @EsFestivoJornada = 1

            IF @EsFestivoJornada = 1 OR (@EsFestivoGeneral = 1 AND @DescansaFestivos = 1)
            BEGIN
              SELECT @BrincaDia = 1
              IF @FestivoRompeRutina = 1 SELECT @RompeRutina = 1
            END ELSE 
            BEGIN
              SELECT @Entrada = @Fecha
              EXEC spAgregarHora @HoraEntrada, @Entrada OUTPUT
              SELECT @Salida = @Fecha
              EXEC spAgregarHora @HoraSalida, @Salida OUTPUT
              IF @Salida < @Entrada SELECT @Salida = DATEADD(day, 1, @Salida)

              INSERT JornadaTiempo (Jornada,  Entrada,  Salida) 
                            VALUES (@Jornada, @Entrada, @Salida)
            END
          END ELSE
          BEGIN
            SELECT @BrincaDia = 1
            IF @DescansoRompeRutina = 1 SELECT @RompeRutina = 1
          END
        END
        FETCH NEXT FROM crRutina INTO @Dia, @HoraEntrada, @HoraSalida
        IF @Dia = @UltDia SELECT @Entrada = @Fecha 
        IF @Dia <> @UltDia OR @RompeRutina = 1 OR @@FETCH_STATUS = -1 SELECT @Entrada = DATEADD(day, 1, @Fecha), @UltDia = @Dia, @BrincaDia = 0
      END  -- While
      CLOSE crRutina
      DEALLOCATE crRutina
    END -- While
  IF @Ok IS NULL
  BEGIN
    COMMIT TRANSACTION
    SELECT 'Se Genero con Exito la Jornada Laboral de Periodo Indicado'
  END ELSE
  BEGIN
    ROLLBACK TRANSACTION
    SELECT 'Error al Generar la Jornada Laboral'
  END
  RETURN
END
GO
-- spDiasNoHabiles 
if exists (select * from sysobjects where id = object_id('dbo.spDiasNoHabiles') and type = 'P') drop procedure dbo.spDiasNoHabiles
GO             
CREATE PROCEDURE spDiasNoHabiles
                    @FechaD		datetime,
                    @FechaA		datetime,
    		    @DiasHabiles 	char(10),
		    @Todos		bit,
		    @Jornada		varchar(20),
		    @Dias		int	      OUTPUT

--//WITH ENCRYPTION
AS BEGIN
  SET DATEFIRST 7  
  DECLARE 
    @Fecha	datetime,
    @DiaSemana	int,
    @Control	bit

  SELECT @Dias = 0, @Fecha = @FechaD, @Control = 0
  IF @Jornada IS NOT NULL AND EXISTS(SELECT * FROM Jornada WHERE Jornada = @Jornada AND UPPER(Tipo) = 'CONTROL ASISTENCIA')
    SELECT @Control = 1

  WHILE @Fecha <= @FechaA
  BEGIN
    SELECT @DiaSemana = DATEPART(weekday, @Fecha)
    IF @Control = 1
    BEGIN
      IF @Fecha NOT IN (SELECT DISTINCT Fecha FROM JornadaTiempo WHERE Jornada = @Jornada)
        SELECT @Dias = @Dias + 1
    END ELSE
    BEGIN
      IF @Todos = 1
      BEGIN
        IF (@DiasHabiles <> 'TODOS' AND @DiaSemana = 1) OR 
           (@DiasHabiles = 'LUN-VIE' AND @DiaSemana = 7) OR 
           (@Fecha IN (SELECT Fecha FROM DiaFestivo))
          SELECT @Dias = @Dias + 1
      END ELSE
      BEGIN
        IF (@DiasHabiles <> 'TODOS' AND @DiaSemana = 1) OR 
           (@DiasHabiles = 'LUN-VIE' AND @DiaSemana = 7) OR 
           (@Fecha IN (SELECT Fecha FROM DiaFestivo WHERE EsLaborable = 0))
          SELECT @Dias = @Dias + 1
      END
    END
    
    SELECT @Fecha = DATEADD(day, 1, @Fecha)
  END

  RETURN
END
GO
-- spCDIPeriodoDA 
if exists (select * from sysobjects where id = object_id('dbo.spCDIPeriodoDA') and type = 'P') drop procedure dbo.spCDIPeriodoDA
GO             
CREATE PROCEDURE spCDIPeriodoDA
			@PeriodoTipo	varchar(50),
			@Fecha		datetime,
			@FechaD		datetime	OUTPUT,
			@FechaA		datetime	OUTPUT,
			@Empresa	varchar(5)	= NULL
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Dia		int,
    @Mes		int,
    @Ano		int,
    @Dias		int,
    @UltimoDiaPagado	datetime,
    @Contador int


  SELECT @FechaD = NULL, 
         @FechaA = NULL,
         @PeriodoTipo = UPPER(NULLIF(RTRIM(@PeriodoTipo), ''))

  IF @Fecha IS NULL OR @PeriodoTipo IS NULL RETURN

	
  IF @PeriodoTipo = 'SEMANAL'  
  BEGIN
  	SET @Contador=1
  	SELECT @Dias=7
  	SET @FechaD=@Fecha

  	IF DateName(dw,@Fecha)='Martes'
  	begin
		SET @FechaA = DATEADD(day, @Dias-1, @Fecha)
		SET @Contador=0		 
    END 
    ELSE
    BEGIN
    	WHILE @Contador<= @Dias 
    	BEGIN 	
    		IF datename(dw,@Fecha) ='Lunes'
    			break
    		SELECT  @Contador=@Contador+1,@Fecha=dateadd(day,1,@Fecha)    		
    	END
    	IF @Contador>0	
    		SET @FechaA = DATEADD(day, @Contador-1, @FechaD)    	    	 
    END 
  END  
  declare @CurFechaAnt datetime
	IF @PeriodoTipo = 'Quincenal'  
	BEGIN
		--SELECT @PeriodoTipo '@PeriodoTipo'
		SET @Contador=1
		SELECT @Dias=18
		SET @FechaD=@Fecha
		
		

		set @CurFechaAnt=@Fecha
		
		WHILE  @Contador<=@Dias
		BEGIN  
			--select @Fecha  '@Fechaww'
			IF (DAtePart(Day,@Fecha) IN (1,16))	--and (datepart(month,@CurFechaAnt)=datepart(month,@Fecha))
			begin
				 if (select datediff(day,@CurFechaAnt,@Fecha))=1
				 set @FEchaA=@CurFechaAnt
				break
				
			end
			SELECT  @Contador=@Contador+1,@Fecha=dateadd(day,1,@Fecha)    		
		END
		IF DatePart(Day,@FechaD)IN (1,16)
		BEGIN
			IF DatePart(Day,@FechaD)IN (1)
				SET @Contador=14
			IF DatePart(Day,@FechaD)IN (16)
			BEGIN    			
				SET @FechaA=dateadd(day,-1,DATEADD(month,DATEDIFF(month,0,@FEchaD)+1,0))
				SET @Contador=0
			END
		END
		ELSE 
		SET @Contador=@Contador-2
		
		IF @Contador>0
			SET @FechaA = DATEADD(day, @Contador, @FechaD)    	    	 
	END 

  Return
  end
GO
--declare
--@fechad datetime,
--@fechaa datetime
--exec spCDIPeriodoDA 'SEMANAL', '05/05/2010', @fechad output, @fechaa output
--exec spCDIPeriodoDA 'Quincenal', '16/05/2010', @fechad output, @fechaa output
--select @fechad, @fechaa
--spNominaDividirCantidad
if exists (select * from sysobjects where id = object_id('dbo.spNominaDividirCantidad') and type = 'P') drop procedure dbo.spNominaDividirCantidad
GO             
CREATE PROCEDURE spNominaDividirCantidad
     @Empresa  char(5),
     @ID   int,
     @FechaEmision datetime,
     @MovTipo  char(20)
--//WITH ENCRYPTION
AS BEGIN
	
  DECLARE
    @DiasHabiles char(20),
    @Renglon  float,
    @Sucursal  int,
    @SucursalOrigen int,
    @Personal  char(10),
    @Cantidad  money,
    @FechaD  datetime,
    @Referencia  varchar(50),
    @PeriodoTipo varchar(50),
    @Jornada  varchar(20),
    @Inicio  datetime,
    @Fin  datetime,
    @Dias  int,
    @DiasNetos  int,
    @DiasNoHabiles int,
    @CDIDiasFestivo int 

  SELECT @DiasHabiles = UPPER(DiasHabiles)
    FROM EmpresaGral
   WHERE Empresa = @Empresa

  CREATE TABLE #NominaD (
   Renglon float NULL, 
   Personal char(10) COLLATE Database_Default NULL, 
   Cantidad float NULL, 
   FechaD datetime NULL,  
   FechaA datetime NULL,
   Referencia varchar(50) COLLATE Database_Default NULL, 
   Sucursal int NULL, 
   SucursalOrigen int NULL,
 CDIDiasDescanso int NULL,
 CDIDiasFestivo int null)
 
  CREATE TABLE #DiasFestivos (Fecha datetime null)

--select 'aqui'

  SELECT @Renglon = 0.0
  DECLARE crNominaD CURSOR
     FOR SELECT d.Sucursal, d.SucursalOrigen, d.Personal, d.Cantidad, ISNULL(d.FechaD, @FechaEmision), d.Referencia, p.PeriodoTipo, p.Jornada
           FROM NominaD d, Personal p
          WHERE ID = @ID 
            AND d.Personal = p.Personal 

  OPEN crNominaD
  FETCH NEXT FROM crNominaD INTO @Sucursal, @SucursalOrigen, @Personal, @Cantidad, @FechaD, @Referencia, @PeriodoTipo, @Jornada
  WHILE @@FETCH_STATUS <> -1 
  BEGIN
    IF @@FETCH_STATUS <> -2 
    BEGIN
     
     --select  @Sucursal, @SucursalOrigen, @Personal, @Cantidad, @FechaD, @Referencia, @PeriodoTipo, @Jornada
     
      WHILE @Cantidad > 0
      BEGIN
			DELETE #DiasFestivos
			SET @CDIDiasFestivo=0
			EXEC spExtraerFecha @FechaD OUTPUT
			
			EXEC spCDIPeriodoDA @PeriodoTipo, @FechaD, @Inicio OUTPUT, @Fin OUTPUT, @Empresa
			--select @FechaD '@FechaD', @Inicio '@Inicio', @Fin '@Fin'
			--SELECT @Inicio '@Inicio', @Fin '@Fin'
			SELECT @Dias = DATEDIFF(day, @FechaD, @Fin)+1
			IF @PeriodoTipo LIKE 'QUINCENAL%' OR @PeriodoTipo LIKE 'DECENAL' 
			SELECT @Dias = @Dias 
			IF @MovTipo IN ('NOM.CDH', 'NOM.VT')
			BEGIN
				--SELECT @DiasNoHabiles
				EXEC spDiasNoHabiles @FechaD, @Fin, @DiasHabiles, 0, @Jornada, @DiasNoHabiles OUTPUT
				SELECT @DiasNetos = @Dias - @DiasNoHabiles

				INSERT INTO #DiasFestivos (Fecha)
				SELECT Fecha FROM JornadaDiaFestivo WHERE Jornada = @Jornada AND EsLaborable = 0 AND Fecha BETWEEN @FechaD AND @Fin

				INSERT INTO #DiasFestivos (Fecha)
				SELECT Fecha FROM DiaFestivo WHERE EsLaborable = 0 AND Fecha BETWEEN @FechaD AND @Fin AND Fecha NOT IN (SELECT Fecha FROM #DiasFestivos)
				SELECT @CDIDiasFestivo=Count(*) FROM #DiasFestivos
				SELECT @CDIDiasFestivo=isnull(@CDIDiasFestivo,0) 
				--SELECT @DiasNetos '@DiasNetos',@Dias '@Dias', @DiasHabiles '@DiasHabiles', @DiasNoHabiles '@DiasNoHabiles'
			END 
			ELSE
				SELECT @DiasNetos = @Dias

			IF @DiasNetos > @Cantidad 
				SELECT @DiasNetos = @Cantidad, @Cantidad = 0
			ELSE 
				SELECT @Cantidad = @Cantidad - @DiasNetos

			SELECT @Renglon = @Renglon + 2048.0
			INSERT #NominaD (Renglon,  Personal,  Cantidad,   FechaD,FechaA , Referencia,  Sucursal,  SucursalOrigen,CDIDiasDescanso,CDIDiasFestivo) 
			VALUES (@Renglon, @Personal, @DiasNetos, @FechaD,@Fin, @Referencia, @Sucursal, @SucursalOrigen,(@DiasNoHabiles-@CDIDiasFestivo),@CDIDiasFestivo)
			
			IF @PeriodoTipo LIKE 'QUINCENAL%' 
				SELECT @FechaD = DATEADD(day, 1, @Fin) 
			ELSE
				SELECT @FechaD = DATEADD(day, @Dias, @FechaD) 

			END
    END
    FETCH NEXT FROM crNominaD INTO @Sucursal, @SucursalOrigen, @Personal, @Cantidad, @FechaD, @Referencia, @PeriodoTipo, @Jornada
  END  -- While
  CLOSE crNominaD
  DEALLOCATE crNominaD

  DELETE NominaD WHERE ID = @ID

  INSERT NominaD (ID, Renglon,  Personal,  Cantidad, FechaD, FechaA, Referencia,  Sucursal,  SucursalOrigen,CDIDiasDescanso,CDIDiasFestivo)
  SELECT @ID, Renglon,  Personal,  Cantidad, FechaD,FechaA,  Referencia,  Sucursal,  SucursalOrigen,CDIDiasDescanso,CDIDiasFestivo
    FROM #NominaD
   WHERE Cantidad > 0
   
   exec SpCDIDivideVacaciones @ID
   
  RETURN
END
GO
--SpCDIDivideVacaciones
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDIDivideVacaciones') and type = 'P') 
DROP PROCEDURE dbo.SpCDIDivideVacaciones
GO

CREATE PROCEDURE SpCDIDivideVacaciones
@id int
AS
BEGIN

	SET NOCOUNT ON
	DECLARE 
	@FechaD	smallDatetime,
	@FechaVar	smallDatetime,
	@Cantidad int,
	@Personal varchar(10),
	--@Id int,
	@EsLaborable bit,
	@ContadorDiaLaborable int,
	@DiasDescanso int,
	@DiasFestivos int,
	@DiasNaturales int,
	@Dia varchar(15),
	@Jornada varchar(30),
	@NomConceptoDisminuirVacaciones varchar(30),
	@NominaConcepto  varchar(30),
	@Renglon floaT
	
			
	DECLARE CurCDICalTerminoVac CURSOR FOR 
	SELECT id,Max(REnglon),Personal
	FROM NominaD 
	WHERE id=@id
	GROUP BY id,Personal
	
	OPEN CurCDICalTerminoVac
	FETCH NEXT FROM CurCDICalTerminoVac INTO @Id,@Renglon,@Personal
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 
		SELECT @Cantidad=Cantidad,@FechaD=FechaD FROM nominaD WHERE id=@id AND renglon=@Renglon
		
		--SELECT @Cantidad,@FechaD, @NominaConcepto
				
		IF @Cantidad>0 AND isdate(@FechaD)=1 AND @FechaD IS NOT NULL --AND @NominaConcepto IN ('Vacacion Empleados','Vacacion Directores')
		BEGIN
			
			--SELECT @Cantidad,@FechaD
			
			SELECT  @EsLaborable=1,@ContadorDiaLaborable=1,@FechaVar=@FechaD,@Jornada=jornada FROM personal WHERE personal=@Personal
			WHILE(1=1)
			BEGIN
				--select @ContadorDiaLaborable,@Cantidad+1	, @EsLaborable

				SET @Dia=DATENAME(dw, @FechaVar) 
				set @EsLaborable=0	
				--SELECT @FechaVar '@FechaVar'			
				IF @Dia='Lunes' Select @EsLaborable=CASE WHEN Lunes=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Martes' Select @EsLaborable=CASE WHEN Martes=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Miércoles' Select @EsLaborable=CASE WHEN Miercoles=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Jueves' Select @EsLaborable=CASE WHEN Jueves=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Viernes' Select @EsLaborable=CASE WHEN Viernes=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Sábado' Select @EsLaborable=CASE WHEN Sabado=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				IF @Dia='Domingo' Select @EsLaborable=CASE WHEN Domingo=0 THEN 1 ELSE 0 END from jornada Where Jornada=@Jornada
				--SELECT @FechaVar '@FechaVar'	,@EsLaborable '@EsLaborable SEMANA', @ContadorDiaLaborable '@ContadorDiaLaborable',@Dia '@Dia'
				IF EXISTS (SELECT 8 FROM jornadadiafestivo a JOIN Jornada b ON a.jornada=b.Jornada WHERE a.Jornada=@Jornada AND a.Fecha=@FechaVar AND a.EsLaborable=0 AND b.DescansaFestivos=0)
					SET @EsLaborable=0
				IF EXISTS (SELECT 8 FROM diafestivo WHERE Fecha=@FechaVar AND EsLaborable=0)
					SET @EsLaborable=0
				IF @EsLaborable=1
					SET  @ContadorDiaLaborable=@ContadorDiaLaborable+1		
				IF @ContadorDiaLaborable>@Cantidad+1 and @EsLaborable=1				
					BREAK		
				SET  @FechaVar=@FechaVar+1
			END
			
			--select @FechaVar '@FechaVar',@EsLaborable '@EsLaborable'
			sELECT tOP 1 @FechaVar=Fecha FROM JornadaTiempo 
			WHERE Fecha>=@FechaVar AND Jornada=@Jornada order by fecha
			select @DiasNaturales =DATEDIFF(day,@FechaD,@FechaVar)
			SELECT @DiasFestivos=COUNT(*) 	FROM diafestivo where Fecha between @FechaD and  @FechaVar AND EsLaborable=0 
			--SELECT COUNT(*)	FROM diafestivo where Fecha between @FechaD and  @FechaVar AND EsLaborable=0 
			--SELECT @DiasFestivos=COUNT(*) 
			--FROM jornadadiafestivo a JOIN Jornada b ON a.jornada=b.Jornada 
			--WHERE a.Jornada=@Jornada AND a.Fecha between @FechaD and  @FechaVar AND a.EsLaborable=0 AND b.DescansaFestivos=0
			
			set @DiasDescanso=@DiasNaturales-(@Cantidad+@DiasFestivos)
			--Select 	@DiasDescanso int,
	-- int,
			--SELECT @FechaVar,@Cantidad,@DiasNaturales '@DiasNaturales',@Cantidad 'DiasHabiles',@DiasDescanso '@DiasDescanso', @DiasFestivos '@DiasFestivos'
			--select * from NominaD where ID=@id
			UPDATE NominaD SET FechaA=@FechaVar, CDIDiasDescanso=@DiasDescanso,CDIDiasFestivo=@DiasFestivos
			 WHERE  id=@ID and Renglon=@Renglon
			 --select * from NominaD where ID=@id
		END 

	FETCH NEXT FROM CurCDICalTerminoVac INTO @Id,@Renglon,@Personal
	END 
	CLOSE CurCDICalTerminoVac
	DEALLOCATE CurCDICalTerminoVac
END
GO
   --exec SpCDIDivideVacaciones 1816

---SELECT * FROM nominad WHERE id=69
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDIExtraeDiasVacMov') and type = 'P') 
DROP PROCEDURE dbo.SpCDIExtraeDiasVacMov
GO
CREATE PROCEDURE SpCDIExtraeDiasVacMov
@Personal varchar(10),
@Tipo varchar(20)
AS
BEGIN
 
 DECLARE @Dias Int,@CDIDiasDescanso int,@CDIDiasFestivo int
 
 SELECT @CDIDiasDescanso=Sum(CDIDiasDescanso),@CDIDiasFestivo=Sum(CDIDiasFestivo)
 FROM Nomina a JOIN nominaD b ON a.id=b.id 
 WHERE b.personal=@Personal
 AND a.Estatus IN ('PROCESAR')
 AND a.Mov IN ('Vacacion Empleados','Vacacion Directores','Vacaciones Empleados','Vacaciones Directores')
 --AND b.FechaD BETWEEN @FechaD AND @FechaA

 IF @Tipo='Festivo'
  SELECT isnull(@CDIDiasFestivo,0)Festivo
 IF @Tipo='Descanso'
  SELECT isnull(@CDIDiasDescanso,0) Descanso

 
 
END
go 
--EXEC SpCDIExtraeDiasVacMov '0008','Festivo'
--go
--EXEC SpCDIExtraeDiasVacMov '0008','DEscanso'
--go

IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDIExtraeDiasVacDetalle') and type = 'P') 
DROP PROCEDURE dbo.SpCDIExtraeDiasVacDetalle
GO
CREATE PROCEDURE SpCDIExtraeDiasVacDetalle
@Personal varchar(10),
@Tipo varchar(20),
@FechaD datetime,
@FechaA datetime
AS
BEGIN
 
 DECLARE @Dias Int,@CDIDiasDescanso int,@CDIDiasFestivo int,@CDIDiasvac int
 
 SELECT @CDIDiasDescanso=Sum(CDIDiasDescanso),@CDIDiasFestivo=Sum(CDIDiasFestivo),@CDIDiasvac=Sum(Cantidad)
 FROM Nomina a JOIN nominaD b ON a.id=b.id 
 WHERE b.personal=@Personal
 AND a.Estatus IN ('PROCESAR')
 AND a.Mov IN ('Vacacion Empleados','Vacacion Directores','Vacaciones Empleados','Vacaciones Directores')
 AND b.FechaD BETWEEN @FechaD AND @FechaA

 IF @Tipo='Festivo'
  SELECT isnull(@CDIDiasFestivo,0)Festivo
 IF @Tipo='Descanso'
  SELECT isnull(@CDIDiasDescanso,0) Descanso
    IF @Tipo='Vacacion'
  SELECT isnull(@CDIDiasvac,0) Vacacion
 
 
END
go 
--EXEC SpCDIExtraeDiasVacDetalle '0008','Festivo','29/12/2009','03/01/2010'
--go
--EXEC SpCDIExtraeDiasVacDetalle '0008','Descanso','29/12/2009','03/01/2010'
--go
--EXEC SpCDIExtraeDiasVacDetalle '0008','Vacacion','29/12/2009','03/01/2010'

--EXEC spCDIMovCopiarVac 
IF EXISTS (select * from sysobjects where id = object_id('dbo.spCDIMovCopiarVac') and type = 'P') 
DROP PROCEDURE dbo.spCDIMovCopiarVac
GO
CREATE PROCEDURE spCDIMovCopiarVac
@ID int,
@Accion varchar(20),
@Fecharegistro datetime ,
@Usuario varchar(10)
AS
BEGIN
	--SELECT 1
	CREATE TABLE #pasoCopiarMov (f1 varchar(30) NULL,f2 varchar(30) NULL,f3 varchar(30) NULL, f4 varchar(30) NULL,f5 varchar(30) NULL)
	CREATE TABLE #pasoDetalle (renglon float null,personal varchar(30) NULL,FechaD datetime NULL,cantidad float NULL)
	
	DECLARE @IdNuevo Int,@OrigenTipo varchar(10),@Origen varchar(20),@OrigenID varchar(20)
	
	IF EXISTS (SELECT b.Personal 
	           FROM nomina a JOIN 
	           nominaD b ON a.id=b.id JOIN
	           personal c ON b.personal=c.personal
	           WHERE c.Sindicato ='Sindicalizado'
				AND a.Id=@id
				AND a.Mov IN ('Vacaciones Empleados','Vacacion Empleados','Vacaciones Directores','Vacacion Directores')) 	
	begin
		IF @Accion='AFECTAR'
		BEGIN
			SELECT @OrigenTipo='NOM',@Origen=mOV,@OrigenID=mOVID FROM nomina WHERE id=@ID
			INSERT INTO #pasoCopiarMov (f1,f2,f3,f4,f5)
			EXEC spMovCopiar 0, 'NOM', @ID, @Usuario, @Fecharegistro
			SELECT @IdNuevo=F5 FROM #pasoCopiarMov
			UPDATE nomina SET Mov='Vacacion Anticipo',OrigenTipo=@OrigenTipo,Origen=@Origen,OrigenID=@OrigenID
			WHERE id=@IdNuevo
			DELETE NominaD WHERE Personal IN (SELECT Personal FROM personal WHERE Sindicato <>'Sindicalizado' and ID=@IdNuevo )
			
			insert into #pasoDetalle (renglon,personal,FechaD,Cantidad)
			select min(renglon),personal,min(FechaD),sum(Cantidad) from  NominaD where ID=@IdNuevo group by personal
			
			delete NominaD where ID=@IdNuevo
			insert into NominaD (ID,Renglon,Personal,Cantidad,FechaD)
			select @IdNuevo,renglon,personal,Cantidad,FechaD from #pasoDetalle 
			
			
			EXEC spAfectar 'NOM', @IdNuevo, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=4,@Ensilencio=1
			
			
		END 
	end
	
	
END
go 
-- spNominaCancelar 
if exists (select * from sysobjects where id = object_id('dbo.spNominaCancelar') and type = 'P') drop procedure dbo.spNominaCancelar
GO             
CREATE PROCEDURE spNominaCancelar
     @ID    int,
         @Mov            char(20),
         @MovID               varchar(20),
         @Usuario         char(10),
     @FechaRegistro  datetime,

            @Ok                  int          OUTPUT,
         @OkRef               varchar(255) OUTPUT
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @DestinoID   int,
    @IDGenerar   int,
    @Empresa   varchar(5),
    @Sucursal   int,
    @Ejercicio   int,
    @Periodo   int,
    @ConsecutivoPorPeriodo bit,
    @ConsecutivoPorEjercicio bit,
    @ConsecutivoPorEmpresa char(20),
    @ConsecutivoSucursalEsp bit

  SELECT @ConsecutivoPorPeriodo   = ConsecutivoPorPeriodo,
         @ConsecutivoPorEjercicio = ConsecutivoPorEjercicio,
         @ConsecutivoPorEmpresa   = ISNULL(UPPER(ConsecutivoPorEmpresa), 'SI'),
         @ConsecutivoSucursalEsp  = ISNULL(ConsecutivoSucursalEsp, 0)
    FROM MovTipo
   WHERE Modulo = 'NOM'
     AND Mov    = @Mov

  SELECT @Empresa = Empresa, @Sucursal = Sucursal, @Ejercicio = Ejercicio, @Periodo = Periodo
    FROM Nomina
   WHERE ID = @ID
  DECLARE crNominaCancelar CURSOR LOCAL FOR
   SELECT ID 
     FROM Nomina 
    WHERE ID <> @ID AND OrigenTipo = 'NOM' AND Origen = @Mov AND OrigenID = @MovID 
      AND Estatus NOT IN ('SINAFECTAR', 'CANCELADO') 
      AND Periodo   = CASE WHEN @ConsecutivoPorPeriodo   = 1    THEN @Periodo   ELSE Periodo   END
      AND Ejercicio = CASE WHEN @ConsecutivoPorEjercicio = 1    THEN @Ejercicio ELSE Ejercicio END
      AND Empresa   = CASE WHEN @ConsecutivoPorEmpresa   = 'SI' THEN @Empresa   ELSE Empresa  END
      AND Sucursal  = CASE WHEN @ConsecutivoSucursalEsp  = 1    THEN @Sucursal  ELSE Sucursal END
  OPEN crNominaCancelar
  FETCH NEXT FROM crNominaCancelar INTO @DestinoID
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
  BEGIN
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
      EXEC spNomina @DestinoID, 'NOM', 'CANCELAR', 'TODO', @FechaRegistro, NULL, @Usuario, 0, 0, @Mov, @MovID, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT

    FETCH NEXT FROM crNominaCancelar INTO @DestinoID
  END  -- While
  CLOSE crNominaCancelar
  DEALLOCATE crNominaCancelar

  DECLARE crRHCancelar CURSOR LOCAL FOR
   SELECT ID 
     FROM RH 
    WHERE OrigenTipo = 'NOM' AND Origen = @Mov AND OrigenID = @MovID 
      AND Estatus NOT IN ('SINAFECTAR', 'CANCELADO')
      AND Periodo   = CASE WHEN @ConsecutivoPorPeriodo   = 1    THEN @Periodo   ELSE Periodo   END
      AND Ejercicio = CASE WHEN @ConsecutivoPorEjercicio = 1    THEN @Ejercicio ELSE Ejercicio END
      AND Empresa   = CASE WHEN @ConsecutivoPorEmpresa   = 'SI' THEN @Empresa   ELSE Empresa   END
      AND Sucursal  = CASE WHEN @ConsecutivoSucursalEsp  = 1    THEN @Sucursal  ELSE Sucursal  END
  OPEN crRHCancelar
  FETCH NEXT FROM crRHCancelar INTO @DestinoID
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
  BEGIN
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL
      EXEC spRH @DestinoID, 'RH', 'CANCELAR', 'TODO', @FechaRegistro, NULL, @Usuario, 1, 0, @Mov, @MovID, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT

    FETCH NEXT FROM crRHCancelar INTO @DestinoID
  END  -- While
  CLOSE crRHCancelar
  DEALLOCATE crRHCancelar

  RETURN
END
GO
-------------------------------  spCDIINOMRegresovac -
IF EXISTS (select * from sysobjects where id = object_id('dbo.spCDIINOMRegresovac') and type = 'P') DROP PROCEDURE dbo.spCDIINOMRegresovac
GO
CREATE PROCEDURE spCDIINOMRegresovac

@Personal varchar(10),
@Ano       int,
@Rango  varchar(50)   OUTPUT

AS BEGIN
--select A.Mov, A.Estatus, B.Personal,B.FechaA, B.FechaD, B.Concepto,A.*
select TOP 1 @Rango  = convert(Varchar (10),min (B.FechaD),103)+'  AL '+ convert(Varchar (10),Max (B.FechaA),103)  
from Nomina A join  
NominaD B on A.ID=B.ID  
where B.Personal=@Personal  
And A.Estatus in('Concluido','Procesar')  
and A.mov='Vacacion Empleados'  
AND a.id  = (SELECT TOP 1 a.ID FROM Nomina A join  
NominaD B on A.ID=B.ID  
where B.Personal=@Personal  
And A.Estatus in('Concluido','Procesar')  
and A.mov='Vacacion Empleados' ORDER BY a.ID DESC )
IF @Rango  is null  
set @Rango  = 'No Encontro'  


END
go
---------------------------------- SPCDIReciboNominaVacaciones 
IF EXISTS (select * from sysobjects where id = object_id('dbo.SPCDIReciboNominaVacaciones') and type = 'P') DROP PROCEDURE dbo.SPCDIReciboNominaVacaciones
GO

CREATE PROCEDURE dbo.SPCDIReciboNominaVacaciones

@Personal Varchar (10),
@AnoCorrecpondevacacion varchar (4),
@ID int

As Begin

SELECT Nomina.ID,Personal.Personal,(Personal.ApellidoPaterno+' '+Personal.ApellidoMaterno+' '+Personal.Nombre)AS Nombre,Personal.Registro2 AS RFC ,Nomina.MovID,
 Personal.Departamento AS Departamento ,LEFT(CONVERT(varchar,Nomina.FechaA),11)as FECHAA,
 LEFT(CONVERT(varchar,Personal.FechaAntiguedad),11) as FechaAntiguedad,
 LEFT (CONVERT(varchar,dateadd(year,(@AnoCorrecpondevacacion-year(Personal.FechaAntiguedad)),Personal.FechaAntiguedad)),11)as FechaAniversario,
  CONVERT(varchar,year(FechaAntiguedad))+'  AL  '+CONVERT(varchar,year( @AnoCorrecpondevacacion)) as VacacionesSaldadas,
'CDIAñoscumplidos'=(DATEDIFF(YEAR,(FechaAntiguedad),(@AnoCorrecpondevacacion))),
--'CDIAñoscumplidos'=(SUM(CASE WHEN NominaD.CONCEPTO ='# Años cumplidos' THEN IMPORTE ELSE 0 END)),
'AnticipoVacaciones'=(SUM(CASE WHEN NominaD.CONCEPTO ='Anticipo Vacaciones' THEN IMPORTE ELSE 0 END)),
'CantAnticipoVacaciones'=(SUM(CASE WHEN NominaD.CONCEPTO ='Anticipo Vacaciones' THEN cantidad ELSE 0 END)),
'TotalAnticipoVacaciones'=(SUM(CASE WHEN NominaD.CONCEPTO ='Total Anticipo De Vacaciones' THEN IMPORTE ELSE 0 END)),
'AnticipoDescansoVacaciones'=(SUM(CASE WHEN NominaD.CONCEPTO ='Anticipo Descanso Vacaciones' THEN IMPORTE ELSE 0 END)),
'CantAnticDescansoVacaciones'=(SUM(CASE WHEN NominaD.CONCEPTO ='Anticipo Descanso Vacaciones' THEN Cantidad ELSE 0 END)),
'AnticipoFestivoVacaciones'=(SUM(CASE WHEN NominaD.CONCEPTO ='Anticipo Festivo Vacaciones' THEN IMPORTE ELSE 0 END)),
'CantAnticFestivoVacaciones'=(SUM(CASE WHEN NominaD.CONCEPTO ='Anticipo Festivo Vacaciones' THEN Cantidad ELSE 0 END)),
'SueldoDiario'=(SUM(CASE WHEN NominaD.CONCEPTO ='Sueldo Diario' THEN IMPORTE ELSE 0 END)),
'PrimaVacacionalExenta'=(SUM(CASE WHEN NominaD.CONCEPTO ='Prima Vacacional Exenta' THEN IMPORTE ELSE 0 END)),
'PrimaVacacionalGravable'=(SUM(CASE WHEN NominaD.CONCEPTO ='Prima Vacacional Gravable' THEN IMPORTE ELSE 0 END)),
--'%PrimaVacacional'=(SUM(CASE WHEN NominaD.CONCEPTO ='% Prima Vacacional' THEN IMPORTE ELSE 0 END)),
'PrimaVacacionall'=(SUM(CASE WHEN NominaD.CONCEPTO ='% Prima Vacacional' THEN IMPORTE ELSE 0 END)),  
'PrimaVacacionalll'=(SUM(CASE WHEN NominaD.CONCEPTO ='% Prima Vacacional' THEN Cantidad ELSE 0 END)),  

'**************************************************************'as Rango ,
'**************************************************************'as RangoRegreso 
into #paso 
FROM Nomina join 
NominaD		on Nomina.ID=NominaD.ID join 
Personal	on Personal.Personal=NominaD.Personal
where Nomina.Mov='Nomina'
and NominaD.Personal=@Personal
And NominaD.Concepto in('Total Gravable Mensual','# Años Cumplidos','Anticipo Vacaciones','Total Anticipo De Vacaciones','Anticipo Descanso Vacaciones','Anticipo Festivo Vacaciones','Sueldo Diario','Prima Vacacional Exenta','Prima Vacacional Gravable','% Prima Vacacional')
and Nomina.id=@ID
Group by Nomina.ID,Personal.Personal,Personal.ApellidoPaterno, Personal.ApellidoMaterno, Personal.Nombre,Personal.Registro2,Nomina.MovID, Personal.Departamento,Nomina.FechaA,Personal.FechaAntiguedad


declare @Rango  varchar (50)
EXEC spCDIINOMRegresovac @personal,@AnoCorrecpondevacacion, @Rango  output
update #paso 
set RangoRegreso= isnull(@Rango,'no encontrado')
--select @Rango 

declare @Rango2  varchar (50)  --SE MODIFICO DBR
EXEC spCDIINOMRegresovac2 @personal,@AnoCorrecpondevacacion, @Rango2  output  --SE MODIFICO DBR
update #paso      
set Rango= isnull(@Rango2,'no encontrado')     --SE MODIFICO DBR


Select * from #paso 



END

GO
--SpCDIVerCambiosJornada
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDIVerCambiosJornada') and type = 'P') DROP PROCEDURE dbo.SpCDIVerCambiosJornada
GO
create  Procedure SpCDIVerCambiosJornada  
@Personal varchar(10),  
@Anio  int  
AS 
BEGIN
	DECLARE 
	@CCjFechaA datetime,
	@CCjFecha datetime,
	@CCJPErsonal varchar(10),
	@CCJJornada varchar(20),
	@CCjFechaAnt datetime,
	@CCJPErsonalAnt varchar(10),
	@CCJJornadaAnt varchar(20),
	@FechaAlta datetime

	create Table #PasoPersonalJornada   ( Id int identity, Personal varchar(10) null,Fecha DateTime null, Jornada varchar(20) null)
	create table #PasoCamJornadaRH		(id int identity,Mov varchar(20) null,Concepto varchar(20) null,Personal varchar(10) null,Fecha datetime null,Jornada varchar(20) null)

	insert into #PasoPersonalJornada (Personal,Fecha)
	select @Personal,Fecha from Tiempo where year(fecha)=@Anio Order by Fecha


	insert into #PasoCamJornadaRH (Mov,Concepto,Personal,Fecha,Jornada)
	select a.Mov,a.Concepto,b.Personal,a.FEchaEmision,b.Jornada 
	from Rh a join Rhd b on a.ID=b.id 
	where b.personal =@PErsonal 
	and a.Estatus='CONCLUIDO'
	and  ((a.MOv = 'Altas') OR (a.MOV='Modificaciones'and a.Concepto='Cambio Jornada')OR (a.MOV='Cambio Jornada'and a.Concepto='Cambio Jornada')) 
	Order by b.Personal,a.FEchaEmision 


	DECLARE CurUpdateJornadaRH CURSOR FOR 
	select a.Personal,a.FEcha,a.Jornada,DateAdd(day,-1,b.Fecha) 
	from #PasoCamJornadaRH a left join 
	#PasoCamJornadaRH b on a.personal=b.personal and a.id+1=b.id

	OPEN CurUpdateJornadaRH
	FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada ,@CCjFechaA
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 
	select @FechaAlta=isnull(FechaAntiguedad,FechaALta) from personal where personal=@Personal		

	if @CCJPErsonalAnt<>@CCJPErsonal
	Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha>= @FechaAlta and  Fecha < @CCjFecha  and  Personal=@CCJPErsonal

	if @CCjFechaA is not null
	Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha >= @CCjFecha and Fecha <= @CCjFechaA and  Personal=@CCJPErsonal
	else
	Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha >= @CCjFecha and Personal=@CCJPErsonal


	select @CCjFechaAnt=@CCjFecha, @CCJPErsonalAnt=@CCJPErsonal,@CCJJornadaAnt =@CCJJornada
	FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada,@CCjFechaA 
	END 
	CLOSE CurUpdateJornadaRH
	DEALLOCATE CurUpdateJornadaRH

	Delete #PasoPersonalJornada where Jornada is null

	Update #PasoPersonalJornada set Jornada=a.Jornada
	from #PasoPersonalJornada z join 
	CDIJornadaTemp a on z.Personal=a.Personal and z.FEcha=a.FEchaD join
	Jornada j on a.Jornada=j.jornada
	where a.personal=@Personal 

	select a.Personal,a.Jornada,jt.Entrada ,jt.Salida ,jt.Ano ,jt.Mes ,jt.Dia ,jt.Semana 
	from #PasoPersonalJornada a join
	VerJornadaTiempo jt on a.jornada=jt.Jornada and  a.Fecha=dbo.fnFechaSinHora(jt.Entrada)
	order by jt.Entrada
  
END  
go








 



 


