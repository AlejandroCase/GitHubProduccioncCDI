/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_CtrlAccesoCopiaJornada') and type = 'P') 
DROP PROCEDURE dbo.Sp_CtrlAccesoCopiaJornada
GO
CREATE Procedure dbo.Sp_CtrlAccesoCopiaJornada  
 @FechaDCopiar Datetime,  
 @FechaDPegar Datetime,  
 @PeriodoTipo varchar (20),  
 @Area varchar(50),  
 @Usuario varchar(10),  
 @Empresa varchar(3),   
 @Sucursal int   
   
 AS  
 BEGIN  
    
  DECLARE   
  @Personal varchar (10),  
  @PersonalAnterior varchar(10),  
  @FechaVariable datetime,  
  @Jornada varchar(20),  
  @Cont int,  
  @ContPersonal int,  
  @SQL varchar (500)  

  CREATE TABLE #pasoPersonal(Id int IDENTITY(1,1),Personal varchar(20) collate DataBase_Default  NULL  )  
   
  INSERT INTO #pasoPersonal(personal)  
  SELECT Personal FROM  PersonalJornadaMes    
  WHERE    
  PeriodoTipo=@PeriodoTipo AND   
  Area= @Area AND   
  FechaD=@FechaDPegar AND   
  Empresa=@Empresa AND  
  Sucursal=@Sucursal  
  
  SET @PersonalAnterior=''  
  SET @ContPersonal=0  
  WHILE 1=1  
  BEGIN  
   SELECT @Personal=Min(Personal) FROM #pasoPersonal WHERE Personal >@PersonalAnterior  
   IF @Personal IS NULL   
    BREAK     
  
   --SELECT @Personal  
   SET @FechaVariable=@FechaDCopiar  
   SET @Cont=1  
   WHILE @FechaVariable<=dateadd(day,6,@FechaDCopiar)  
   BEGIN  
      
 -- SELECT * FROM PersonalJornadaTiempos
    SELECT @Jornada=Jornada 
    FROM PersonalJornadaTiempos    
    WHERE personal=@Personal AND Fecha =@FechaVariable  
    --SELECT @Cont,@Personal,@Jornada,@FechaVariable  
      
    IF @Jornada IS NOT NULL  
    BEGIN  
     SET @SQL=''  
       SET @SQL='UPDATE PersonalJornadaMes  SET '+CASE WHEN len(@Cont)>1 then'D' ELSE 'D0' END +CONVERT(varchar(2),@Cont)+' = '+Char(39)+@Jornada+Char(39)+'   
       where PeriodoTipo='+Char(39)+@PeriodoTipo+Char(39)+' AND   
     Area='+Char(39)+@Area+Char(39)+' AND   
     FechaD='+Char(39)+CONVERT(varchar(10),@FechaDPegar,101)+Char(39)+' AND   
     Personal='+Char(39)+@Personal+Char(39)+' AND   
     Empresa='+Char(39)+@Empresa+Char(39)+' AND  
     Sucursal='+CONVERT(varchar(3),@Sucursal)  
    -- SELECT @SQL  
     EXEC (@SQL)  
    END  
                                                
    SET @FechaVariable=dateadd(day,1,@FechaVariable)  
    SET @Cont=@Cont+1  
  
   END  
     
                                               
   SET @PersonalAnterior=@Personal  
   SET  @ContPersonal=@ContPersonal+1  
  
  
  END  
    
  SELECT 'Proceso Exitoso: '+CONVERT(varchar(5),@ContPersonal)+' Jornadas Copiadas'  
    
 END  
 GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_AreaJornadaRotativa') and type = 'P') 
DROP PROCEDURE dbo.Sp_AreaJornadaRotativa
GO
CREATE Procedure dbo.Sp_AreaJornadaRotativa
	@Usuario varchar(10)
	AS
	BEGIN
			--SELECT DISTINCT Area FROM UsuarioJornadasAdmin WHERE UsuarioInt=@Usuario
			SELECT DISTINCT  Area FROM Area

	END
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_AfectarJornadasRotativas') and type = 'P') 
DROP PROCEDURE dbo.Sp_AfectarJornadasRotativas
GO
CREATE Procedure dbo.Sp_AfectarJornadasRotativas  
 @Usuario varchar(10),  
 @Area varchar(50)  
 AS  
 BEGIN  
  DECLARE @Afectar char(2)  
  SET @Afectar='NO'  
  IF EXISTS(SELECT * FROM UsuarioJornadasAdmin WHERE UsuarioInt=@Usuario AND Area=@Area AND Admin=1)  
   SET  @Afectar='SI'  
    
   SELECT @Afectar Afectar    
 END  
 GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.fnPersonalJornadaMesHistEx') and type = 'P') 
DROP PROCEDURE dbo.fnPersonalJornadaMesHistEx
GO
CREATE PROCEDURE fnPersonalJornadaMesHistEx     
@Area           varchar(50),     
@PeriodoTipo varchar(20),     
@FechaD         datetime,    
@Empresa        varchar(5),    
@Sucursal       int    
AS     
BEGIN    
Declare    
 @Dia  varchar(2),     
 @Dato  varchar(20),    
 @Resultado int,    
 @SQL  nvarchar(255),    
 @Parametros nvarchar(255)    
     
 SELECT @Dia = day (@FechaD)     
 SELECT @Parametros = '@Dato varchar(20) OUTPUT'    
 Select @SQL = 'SELECT top 1 @Dato = D'  + @Dia + ' FROM PersonalJornadaMesHist' + ' WHERE PeriodoTipo = '+ char(39)+@PeriodoTipo +char(39)+' AND Periodo = '+ convert(varchar(2), month(@FechaD))+ ' AND Area = ' +char(39)+ @Area+char(39)+ ' AND Empresa = '
+char(39)+@Empresa+char(39)+ ' AND Sucursal = '+ CONVERT(varchar(5),@Sucursal)    
    
 EXEC sp_executesql @SQL, @Parametros, @Dato OUTPUT    
    
 IF (@Dato is null)    
  Select @Resultado = 0    
 else    
  Select @Resultado = 1    
    
  Select @Resultado    
END    
  
go
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_UpPersonalJornada') and type = 'P') 
DROP PROCEDURE dbo.Sp_UpPersonalJornada
GO
CREATE Procedure [dbo].[Sp_UpPersonalJornada]
	@FechaD datetime,
	@FechaA datetime, 
	@PeriodoTipo varchar (20),
	@Area varchar(50),
	@Usuario varchar(10),
	@Empresa varchar(5),		--Icaselin Se agrego parametro para filtro 
	@Sucursaltrabajo int		--Icaselin Se agrego parametro para filtro 
	
	AS
	BEGIN
		
		--SELECT @FechaD ,@FechaA
		
		DECLARE  @FechaD1 datetime,@FechaA1 datetime, @Personal varchar(10), @PersonalAnterior varchar(10)
		
		IF len(@Area)=0 OR  @Area IS NULL
			BEGIN
				SELECT 'El Area es un dato obligatorio'
				RETURN
			END
			
		SET @Area=isnull(@Area,'')
		SELECT @FechaD1=@FechaD,@FechaA1=@FechaA
		--SELECT 
		--@FechaD1= 
		--substring(replace(CONVERT (char(10),@FechaD),'/',''),5,4)+		
		--substring(replace(CONVERT (char(10),@FechaD),'/',''),1,2)+
		--substring(replace(CONVERT (char(10),@FechaD),'/',''),3,2),
		--@FechaA1= 
		--substring(replace(CONVERT (char(10),@FechaA),'/',''),5,4)+		
		--substring(replace(CONVERT (char(10),@FechaA),'/',''),1,2)+
		--substring(replace(CONVERT (char(10),@FechaA),'/',''),3,2)
		-- delete PersonalJornadaMes

		CREATE TABLE #pasoPersonal(Id int IDENTITY(1,1),Personal varchar(20) collate DataBase_Default  NULL  )
		
		INSERT INTO #pasoPersonal(personal)
		SELECT P.Personal
		FROM Personal P JOIN 
		Jornada j ON P.Jornada=j.Jornada 
		WHERE 
		p.Estatus   IN ('ALTA') 
		AND p.PeriodoTipo=@PeriodoTipo
		AND p.Area =@Area
		AND p.Empresa = @Empresa						--Icaselin Se agrego parametro para filtro 
		AND p.Sucursaltrabajo = @Sucursaltrabajo		--Icaselin Se agrego parametro para filtro 
		AND isnull(j.EsRotativa,0) = 1					--DSoria Se agrego la restriccion para que solo fueran los Personales con Jornadas Rotativas
		ORDER BY personal
		
	
		
		SET @PersonalAnterior=''
		
		
  WHILE 1=1
  BEGIN
  		SELECT @Personal=Min(Personal) FROM #pasoPersonal WHERE Personal >@PersonalAnterior
  		IF @Personal IS NULL 
  			break  	
  		
  		IF NOT EXISTS (	SELECT Personal FROM  PersonalJornadaMes  
  						WHERE Personal=@Personal AND 
  						PeriodoTipo=@PeriodoTipo AND 
  						Area= @Area AND 
  						FechaD=@FechaD1 AND 
  						FechaA=@FechaA1 AND
  						Empresa=@Empresa AND
  						Sucursal=@SucursalTrabajo
  						)	
  		INSERT INTO PersonalJornadaMes (Personal,PeriodoTipo,Area,FechaD,FechaA,Usuario,Empresa,Sucursal)
		SELECT @Personal,@PeriodoTipo,@Area,@FechaD1,@FechaA1, @Usuario,@Empresa,@Sucursaltrabajo	
				                                                  
		SET @PersonalAnterior=@Personal
		

  END
 
  -- Bloque para las incapacidades y las vacaciones
  DECLARE 
  @Cont int,
  @Total int, 
  @FechaBuscar datetime, 
  @SQL varchar(1000)
  
  SELECT  @Cont=1, @Total=datediff(day,@FechaD1,@FechaA1)+1,@FechaBuscar=@FechaD1
  IF @Total>7
	SELECT  @Total=7
  WHILE @Cont<=@Total 
  BEGIN
  	DELETE   #pasoPersonal	
  	INSERT INTO #pasoPersonal (Personal)
  	SELECT  	
  	i.personal 
  	FROM incidenciaD id JOIN 
  	Incidencia i ON i.ID = id.ID JOIN
  	PersonalJornadaMes pjm ON pjm.Personal=i.personal   	
  	WHERE 
  	id.FechaAplicacion= @FechaBuscar
  	AND i.Estatus IN ('PENDIENTE', 'CONCLUIDO')
  	AND i.NominaConcepto IN ('255','256','257','257T') 
  	AND pjm.PeriodoTipo=@PeriodoTipo
  	AND pjm.Area=@Area
  	AND pjm.FechaD=@FechaD
  	AND pjm.FechaA=@FechaA 
	AND i.Empresa = @Empresa															--Icaselin Se agrego parametro para filtro 
  	

  	
  	IF @@ROWCOUNT>0
  	BEGIN
  		SET @SQL=''
  		SET @SQL='UPDATE PersonalJornadaMes  	SET '+CASE WHEN len(@Cont)>1 then'D' ELSE 'D0' END +CONVERT(varchar(2),@Cont)+' = '+Char(39)+'I'+Char(39)+' 
  		          FROM PersonalJornadaMes pjm JOIN #pasoPersonal pp	ON pp.Personal = pjm.Personal
				where pjm.PeriodoTipo='+Char(39)+@PeriodoTipo+Char(39)+' AND 
				pjm.Area='+Char(39)+@Area+Char(39)+' AND 
				pjm.FechaD='+Char(39)+CONVERT(varchar(10),@FEchaD1,103)+Char(39)+' AND 
				pjm.FechaA='+Char(39)+CONVERT(varchar(10),@FEchaA1,103)+Char(39)
		
				
		EXECUTE  (@SQL)  		
  	END
  	
  	DELETE   #pasoPersonal
  	INSERT INTO #pasoPersonal (Personal)
  	SELECT i.personal 
  	FROM incidenciaD id JOIN 
  	Incidencia i ON i.ID = id.ID JOIN
  	PersonalJornadaMes pjm ON pjm.Personal=i.personal  
  	WHERE id.FechaAplicacion=@FechaBuscar
  	AND i.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
  	AND i.NominaConcepto IN ('101') 
  	AND pjm.PeriodoTipo=@PeriodoTipo
  	AND pjm.Area=@Area
  	AND pjm.FechaD=@FechaD
  	AND pjm.FechaA=@FechaA 
  	AND i.Empresa = @Empresa															--Icaselin Se agrego parametro para filtro 


  	IF @@ROWCOUNT>0
  	BEGIN
  		SET @SQL=''
  		SET @SQL='UPDATE PersonalJornadaMes  	SET '+CASE WHEN len(@Cont)>1 then'D' ELSE 'D0' END +CONVERT(varchar(2),@Cont)+' = '+Char(39)+'V'+Char(39)+' FROM PersonalJornadaMes pjm JOIN #pasoPersonal pp	ON pp.Personal = pjm.Personal
				where pjm.PeriodoTipo='+Char(39)+@PeriodoTipo+Char(39)+' AND 
				pjm.Area='+Char(39)+@Area+Char(39)+' AND 
				pjm.FechaD='+Char(39)+CONVERT(varchar(10),@FEchaD1,103)+Char(39)+' AND 
				pjm.FechaA='+Char(39)+CONVERT(varchar(10),@FEchaA1,103)+Char(39)
				--SELECT @SQL
		EXECUTE  (@SQL)   		
  	END
  	  	
  	SET @Cont=@Cont+1
  	SET @FechaBuscar=dateadd(day,1,@FechaBuscar)
  	--SELECT @FechaBuscar 	
  	
  END
		SELECT ''
	END

--exec Sp_UpPersonalJornada '04/01/2010 00:00:00','10/01/2010 00:00:00', 'Semanal', 'BEBES', 'NOM10','01','16'

GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.SPCopiarDiasJornadaMes') and type = 'P') 
DROP PROCEDURE dbo.SPCopiarDiasJornadaMes
GO
CREATE PROCEDURE dbo.SPCopiarDiasJornadaMes (@ID int, @estacion int)
AS BEGIN
  DELETE CopiarDiasJornadaMes WHERE Estacion = @Estacion
  INSERT CopiarDiasJornadaMes (ID, Estacion) VALUES(@id, @Estacion)
END
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.SPPegarDiasJornadaMes') and type = 'P') 
DROP PROCEDURE dbo.SPPegarDiasJornadaMes
GO 
CREATE PROCEDURE dbo.SPPegarDiasJornadaMes (@ID int, @Estacion int)
AS BEGIN

 DECLARE @Oid int
-- delete HoraExtraDiaPanama 
 SELECT @Oid= MAX(ID) FROM CopiarDiasJornadaMes WHERE Estacion =@Estacion
 SELECT @Oid=isnull(@oid,0)
  if @OID >0
  UPDATE PersonalJornadaMes 
     SET 
         PersonalJornadaMes.D01=o.d01,
         PersonalJornadaMes.D02=o.d02,
         PersonalJornadaMes.D03=o.d03,
         PersonalJornadaMes.D04=o.d04,
         PersonalJornadaMes.D05=o.d05,
         PersonalJornadaMes.D06=o.d06,
         PersonalJornadaMes.D07=o.d07
   FROM  PersonalJornadaMes, 
         PersonalJornadaMes o 
   WHERE PersonalJornadaMes.id= @ID 
     AND o.id=@OID

END
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.spFechaAPeriodoTipo') and type = 'P') 
DROP PROCEDURE dbo.spFechaAPeriodoTipo
GO 
CREATE PROCEDURE dbo.spFechaAPeriodoTipo 
@Tipo int, --1FechaD 2FechaA
@PeriodoTipo varchar(20),
@FechaD1 varchar (30)
AS
BEGIN

	DECLARE @Dias int,@FechaD datetime,@FechaA datetime,@Anio int,@Mes int,@Fecha datetime
	SELECT @FechaD= 
		substring(replace(CONVERT (char(10),@FechaD1),'/',''),5,4)+'/'+
		substring(replace(CONVERT (char(10),@FechaD1),'/',''),3,2)+'/'+
		substring(replace(CONVERT (char(10),@FechaD1),'/',''),1,2)
	IF @Tipo=1
	BEGIN
		IF @PeriodoTipo='Semanal'
		begin
			SELECT @Fecha=@Fechad 

		END
		IF @PeriodoTipo='Quincenal'
		begin
			IF datepart(d,@FechaD)>=1 AND datepart(d,@FechaD) <=14
			begin
				SELECT @FechaD=substring(replace(CONVERT (char(10),@FechaD1),'/',''),5,4)+'/'+
				substring(replace(CONVERT (char(10),@FechaD1),'/',''),3,2)+'/01'
				SELECT @Fecha=@Fechad 

			END
			IF datepart(d,@FechaD)>=16 AND  datepart(d,@FechaD)<=31
			BEGIN
				SELECT @FechaD=substring(replace(CONVERT (char(10),@FechaD1),'/',''),5,4)+'/'+
				substring(replace(CONVERT (char(10),@FechaD1),'/',''),3,2)+'/16'
				SELECT @Fecha=@Fechad 

			end
			
		END		
	END
	IF @Tipo=2
	BEGIN
		IF @PeriodoTipo='Semanal'
		begin
			SELECT @Dias=Diasperiodo FROM periodotipo WHERE periodotipo='Semanal'
			SELECT @FechaA=dateadd(day,@Dias,@FechaD)
				SELECT @Fecha=@FechaA 
		END
		IF @PeriodoTipo='Quincenal'
		begin
			IF datepart(d,@FechaD)>=1 AND datepart(d,@FechaD) <=14
			begin
				SELECT @FechaA=substring(replace(CONVERT (char(10),@FechaD1),'/',''),5,4)+'/'+
				substring(replace(CONVERT (char(10),@FechaD1),'/',''),3,2)+'/15'
				SELECT @Fecha=@FechaA 
			END
			IF datepart(d,@FechaD)>=16 AND  datepart(d,@FechaD)<=31
			BEGIN
				SELECT @Anio=substring(replace(CONVERT (char(10),@FechaD1),'/',''),5,4),
				       @Mes =substring(replace(CONVERT (char(10),@FechaD1),'/',''),3,2)
				IF @Mes=12
					SELECT @Anio=@Anio+1,@Mes=1 ELSE
						SELECT @Mes=@Mes+1
				SELECT @FechaA= CONVERT(char(4),@Anio)+'/'+RIGHT('0'+CONVERT(varchar(2),@Mes),2)+'/01'
				SELECT @FechaA= dateadd(d,-1,@FechaA)
				SELECT @Fecha=@FechaA 				
			end			
		END		
	END
SELECT CONVERT(varchar(10),@Fecha,103)

END
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.spGeneraPersonalJornadaMesHist') and type = 'P') 
DROP PROCEDURE dbo.spGeneraPersonalJornadaMesHist
GO 
CREATE PROCEDURE dbo.spGeneraPersonalJornadaMesHist   
@Area varchar(50),   
@TipoPeriodo varchar(20),   
@FechaD datetime,  
@FechaA datetime,  
@Personal varchar(10),  
@D01      varchar(20),   
@D02      varchar(20),   
@D03      varchar(20),   
@D04      varchar(20),   
@D05      varchar(20),   
@D06      varchar(20),   
@D07      varchar(20),   
@Usuario  Varchar(10),  
@Ok    int OUTPUT,   
@OkRef   varchar(255) OUTPUT  
AS BEGIN  
	DECLARE  
	@Sucursal  int,  
	@Empresa  varchar(5),  
	@Grupo   varchar(50),  
	@Departamento varchar(50),  
	@CentroCostos varchar(20),  
	@Puesto         varchar(50),  
	@Periodo  int,  
	@Periodo2  int,  
	@DiaPeriodo  int,  
	@UltimoDia  int,  
	@SQL   varchar(max),  
	@SQL2   varchar(max),  
	@SQL3   varchar(max),  
	@Dias   varchar(255),  
	@Dias2   varchar(255),  
	@DiasU   varchar(255),  
	@Cont   int,  
	@Valores  varchar(255),  
	@UltimoValor varchar(1),
	@Mes int,
	@Anio int ,
	@Contador int,
	@Jornada varchar(20),
	@FechaVariable datetime 
	-- EXEC spALTER_TABLE 'PersonalJornadaMesHist', 'Mes', 'int NULL'
	-- EXEC spALTER_TABLE 'PersonalJornadaMesHist', 'Anio', 'int NULL'
  
	Select @Sucursal  = NULL,  
	@Empresa  = NULL,  
	@Grupo   = NULL,  
	@Departamento = NULL,  
	@CentroCostos = NULL,  
	@Puesto   = NULL,  
	@Periodo  = 0,  
	@Periodo2  = 0,  
	@DiaPeriodo  = 0,  
	@UltimoDia  = 0,  
	@SQL   = NULL,  
	@SQL2   = NULL,  
	@SQL3   = NULL,  
	@Dias   = NULL,  
	@Dias2   = NULL,  
	@Cont   = 0,  
	@Valores  = NULL,  
	@DiasU   = NULL 
  
  
	-- Se sacan las Variables de Personal  
	Select @Sucursal = SucursalTrabajo, @Empresa = Empresa, @Grupo = Grupo, @Departamento = Departamento,   
	@CentroCostos = CentroCostos, @Puesto = Puesto   
	FROM Personal   
	WHERE Personal = @Personal 
	SET @Contador=1
	SET @FechaVariable=@FechaD
	WHILE @FechaVariable <= @FechaA
	BEGIN
		--SELECT @Contador
		SELECT @Jornada=
		CASE WHEN @Contador=1 THEN @D01
		WHEN @Contador=2 THEN @D02
		WHEN @Contador=3 THEN @D03
		WHEN @Contador=4 THEN @D04
		WHEN @Contador=5 THEN @D05
		WHEN @Contador=6 THEN @D06
		WHEN @Contador=7 THEN @D07 	END 
		--Si no existe el Registro
		SELECT @Periodo=month(@FechaVariable), @Mes=month(@FechaVariable),@Anio=Year(@FechaVariable)
		SET @Dias=CONVERT(varchar(2),datepart(day,@FechaVariable))
		
		IF NOT EXISTS (select 1 from PersonalJornadaMesHist where Personal = @Personal AND Mes = @Mes AND Anio=@Anio )
		BEGIN  		
			SET @Dias='D'+@Dias+')'  
			SET @Jornada=@Jornada+char(39)+')'		
			Select @SQL = 'INSERT INTO PersonalJornadaMesHist ( fechaD, Personal,   Sucursal,  Empresa,  Grupo,   Departamento,  CentroCostos,  Puesto,   PeriodoTipo,  Periodo,  Area,  Usuario,Mes,Anio,'+ @Dias   
			+ ' VALUES( '+char(39)+convert(varchar(10),@FechaD,103)+char(39)+', '+char(39)+@Personal+ char(39)+', '+ convert(varchar(50),@Sucursal)+', '+char(39)+@Empresa+char(39)+ ', '  +char(39)+@Grupo+ char(39)+', '+ char(39)+@Departamento+ char(39)+', 
			'+char(39)+@CentroCostos+ char(39)+', '+char(39)+@Puesto+char(39)+ ', '+char(39)+@TipoPeriodo+char(39)+ ', '+convert(varchar(2), @Periodo)+ ', '+ char(39)+@Area+ char(39)+', '+char(39)+@Usuario+char(39)+ ', ' +char(39)+CONVERT(varchar(2),@Mes)+char(39)+','+char(39)+CONVERT(varchar(4),@Anio)+char(39)+','+ char(39)+@Jornada 
		END
		ELSE---Si existe el Registro
		BEGIN
			SET @Dias='D'+@Dias
			--SET @Jornada=@Jornada
			Select @SQL = 'UPDATE PersonalJornadaMesHist SET '+ @Dias +'='+char(39)+@Jornada+char(39)+' WHERE Mes = '+ convert(varchar(2), @Mes)+ ' and ' + 'Personal = ' + char(39)+ @Personal + char(39) + ' AND Anio = '+ convert(varchar(4), @Anio)

		END
		
		
		
		--Select @SQL
		execute (@SQL)
		 
		SET @FechaVariable=dateadd(day,1,@FechaVariable)
		SET @Contador=@Contador+1

	END
 
END   
  
  GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.spPersonalJornadaMesHist') and type = 'P') 
DROP PROCEDURE dbo.spPersonalJornadaMesHist
GO 
CREATE PROCEDURE dbo.spPersonalJornadaMesHist    
@Area    varchar(50),   
@PeriodoTipo  varchar(20),  
@FechaD1   datetime,  
@FechaA1   datetime,  
@Usuario   varchar(10),  
@Empresa   varchar(10),  
@Sucursal   int  
AS BEGIN  
 DECLARE     
 @Personal     varchar(10),   
    @D01            varchar(20),   
    @D02            varchar(20),   
    @D03            varchar(20),   
    @D04            varchar(20),   
    @D05            varchar(20),   
    @D06            varchar(20),   
    @D07            varchar(20),   
 @Ok    int,   
 @OkRef   varchar(255),  
 @FechaA   datetime,  
 @FechaD   datetime  
 --@DiasJornada int  
  
 SELECT   
 @FechaD= @FechaD1,  
-- substring(replace(CONVERT (char(10),@FechaD1),'/',''),5,4)+  
-- substring(replace(CONVERT (char(10),@FechaD1),'/',''),3,2)+  
-- substring(replace(CONVERT (char(10),@FechaD1),'/',''),1,2),  
 @FechaA= @FechaA1  
-- substring(replace(CONVERT (char(10),@FechaA1),'/',''),5,4)+  
-- substring(replace(CONVERT (char(10),@FechaA1),'/',''),3,2)+  
-- substring(replace(CONVERT (char(10),@FechaA1),'/',''),1,2)  
   
 --SELECT @DiasJornada=datediff(d,@FechaD,@FechaA)  
  
 SELECT @OK=NULL, @OKRef =NULL   
  
 DECLARE crPersonalEjercicioPeriodo CURSOR LOCAL STATIC FOR   
 SELECT PersonalJornadaMes.Personal, D01, D02, D03, D04, D05, D06, D07   
 FROM PersonalJornadaMes   
 WHERE   
 PeriodoTipo=@PeriodoTipo AND   
 FechaD=@FechaD AND   
 FechaA=@FechaA AND   
 Area=@Area   
 AND D01 IS NOT NULL  
 AND D02 IS NOT NULL  
 AND D03 IS NOT NULL  
 AND D04 IS NOT NULL  
 AND D05 IS NOT NULL  
 AND D06 IS NOT NULL  
 AND D07 IS NOT NULL  
 AND Sucursal = @Sucursal  
 AND Empresa  = @Empresa  
     
  BEGIN TRANSACTION  
  OPEN crPersonalEjercicioPeriodo  
  FETCH NEXT FROM crPersonalEjercicioPeriodo INTO @Personal, @D01, @D02, @D03, @D04, @D05, @D06, @D07  
  WHILE @@FETCH_STATUS =0 AND @OK IS NULL   
  BEGIN  
 EXEC spGeneraPersonalJornadaMesHist  @Area ,@PeriodoTipo ,@FechaD, @FechaA,  @Personal, @D01, @D02, @D03, @D04, @D05, @D06, @D07, @Usuario, @Ok OUTPUT, @OkRef OUTPUT  
    FETCH NEXT FROM crPersonalEjercicioPeriodo INTO @Personal, @D01, @D02, @D03, @D04, @D05, @D06, @D07  
    END  
  END  
  CLOSE crPersonalEjercicioPeriodo  
  DEALLOCATE crPersonalEjercicioPeriodo  
  IF @Ok IS NULL   
  BEGIN  
   COMMIT  
--    SELECT 'Proceso Terminado'  
--      
  END ELSE   
  BEGIN  
    ROLLBACK  
--    SELECT @OkRef +' Eror en el dia  ' + Convert (varchar,@OK ) +  ', del personal '+@Personal  
  END  
  GO

----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.spGeneraPersonalJornada') and type = 'P') 
DROP PROCEDURE dbo.spGeneraPersonalJornada
GO     
CREATE PROCEDURE dbo.spGeneraPersonalJornada 
@Area varchar(50), 
@TipoPeriodo varchar(20), 
@FechaD datetime,
@FechaA datetime,
@Personal varchar(10), 
@DiasJornada int,
@Usuario varchar(10),
@Empresa varchar(5),
@Sucursal int,
@Ok int OUTPUT, 
@OkRef varchar(255) OUTPUT
AS BEGIN

  DECLARE 
    @Jornada varchar(20), 
    @JornadaCap varchar(20), 
    
    @Entrada datetime, 
    @Salida datetime, 
    @Dias int,
    @SQL varchar (1500),
    @FechaVariable datetime
    
    CREATE TABLE #PasoJornada (Jornada varchar (20) null)

  --SELECT @Ok = NULL
  SET @FechaVariable=@FechaD
  SELECT @Jornada=jornada FROM Personal WHERE Personal = @Personal

 IF @JORNADA=@JORNADA
  BEGIN
   
    SELECT @Dias=1
    WHILE @Dias<=@DiasJornada+1
    BEGIN  
    	
    	
    	--SELECT 'aqui'
    	DELETE #PasoJornada	
    	SELECT  @SQL='INSERT INTO #PasoJornada (Jornada)
		SELECT  d'+CASE WHEN len(@Dias)=1 THEN '0'+CONVERT(varchar(1),@Dias) 
		ELSE CONVERT(varchar(2),@Dias) END +' FROM PersonalJornadaMes 
		WHERE Personal ='+ char(39)+@Personal + char(39)+'and FechaD='+char(39)+
		CONVERT(varchar(10),@FechaD,101)+char(39)+' AND FEchaA='+char(39)+
		cONVERT(varchar(10),@FechaA,101)+char(39)+' And Area='+ char(39)+@Area + char(39)+'
		and PeriodoTipo='+ char(39)+@TipoPeriodo + char(39)+'
		and Usuario='+ char(39)+@Usuario + char(39)+'
		and Empresa='+ char(39)+@Empresa + char(39)+'
		and Sucursal='+ char(39)+CONVERT(varchar(2),@Sucursal) + char(39)
		
		--SELECT @SQL
		EXEC (@SQL)
		--SELECT * FROM  #PasoJornada	
		SELECT @jornada=jornada FROM #PasoJornada pj
		
		--SELECT @jornada '@jornada'
		IF @jornada IS NOT NULL		
		BEGIN
			
			
			IF EXISTS (SELECT * FROM PersonalJornadaTiempos WHERE Personal=@Personal AND Fecha=@FechaD)
			DELETE PersonalJornadaTiempos WHERE Personal=@Personal AND Fecha=@FechaVariable				
			INSERT PersonalJornadaTiempos(Personal,Entrada,Salida,EntradaTolerancia,SalidaTolerancia,Fecha,Jornada)
			SELECT @Personal personal, 
			CONVERT (datetime,CONVERT(varchar(10),@FechaVariable,111)+' '+jd.Entrada+':00',111), 
			CONVERT (datetime,CONVERT(varchar(10),@FechaVariable,111)+' '+jd.SAlida+':00',111),
			dateadd(n,ToleranciaEntrada,CONVERT (datetime,CONVERT(varchar(10),@FechaVariable,111)+' '+jd.Entrada+':00',111)),
			dateadd(n,-ToleranciaSalida,CONVERT (datetime,CONVERT(varchar(10),@FechaVariable,111)+' '+jd.SAlida+':00',111)),
			@FechaVariable,j.Jornada
			FROM Jornada j JOIN JornadaD jd ON jd.Jornada = j.Jornada AND jd.Dia=1
			WHERE j.EsRotativa=1 AND j.Jornada=@Jornada
			
			
					
		END
			
		SELECT @Dias=@Dias+1,@FechaVariable=dateadd(day,1,@FechaVariable)
    	
    END
  END
END
go
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.spGeneraTodaJornada') and type = 'P') 
DROP PROCEDURE dbo.spGeneraTodaJornada
GO   
CREATE PROCEDURE dbo.spGeneraTodaJornada  
@Area		Varchar(50), 
@PeriodoTipo		varchar(20),
@FechaD1			datetime,
@FechaA1			datetime,
@Usuario		varchar(10),
@Empresa		varchar(5),
@SucursalTRabajo int
AS BEGIN
	DECLARE   
	@Personal  varchar(10), 
	@Ok        int, 
	@OkRef     varchar(255),
	@FechaA  datetime,
	@FechaD datetime,
	@DiasJornada int,
	@Area2		varchar(50)
	
	--SELECT @FechaD1,@FechaA1
	
	SELECT @FechaD=@FechaD1,@FechaA=@FechaA1
	--SELECT 
	--@FechaD= --@FechaD1,
	--substring(replace(CONVERT (char(10),@FechaD1),'/',''),5,4)+
	----substring(replace(CONVERT (char(10),@FechaD1),'/',''),3,2)+
	--substring(replace(CONVERT (char(10),@FechaD1),'/',''),1,2)+
	--substring(replace(CONVERT (char(10),@FechaD1),'/',''),3,2),
	--@FechaA= --@FechaA1
	--substring(replace(CONVERT (char(10),@FechaA1),'/',''),5,4)+
	--substring(replace(CONVERT (char(10),@FechaA1),'/',''),1,2)+
	--substring(replace(CONVERT (char(10),@FechaA1),'/',''),3,2)
	----substring(replace(CONVERT (char(10),@FechaA1),'/',''),1,2)
	
--Select CONVERT (varchar,@FechaD) '@FechaD', CONVERT (varchar,@FechaA) '@FechaA' 
	SELECT @DiasJornada=datediff(d,@FechaD,@FechaA)

	
	
	SELECT @OK=NULL, @OKRef =NULL 
	
	IF @PeriodoTipo='Semanal'
	DECLARE crPersonalEjercicioPeriodo CURSOR LOCAL STATIC FOR 
	SELECT PersonalJornadaMes.Personal
	FROM PersonalJornadaMes 
	WHERE 
	PeriodoTipo=@PeriodoTipo AND 
	FechaD=@FechaD AND 
	FechaA=@FechaA AND 
	Area=@Area AND 
	Usuario=@Usuario AND 	
	Empresa=@Empresa	AND 		
	Sucursal=@SucursalTRabajo

	
	
	--Select @FechaD '@FechaD', @FechaA '@FechaA' ,@Usuario,@Area,@Empresa,@SucursalTRabajo
	
	IF @PeriodoTipo='Quincenal'
	DECLARE crPersonalEjercicioPeriodo CURSOR LOCAL STATIC FOR 
	SELECT PersonalJornadaMes.Personal
	FROM PersonalJornadaMes 
	WHERE 
	PeriodoTipo=@PeriodoTipo AND 
	FechaD=@FechaD AND 
	FechaA=@FechaA AND 
	Area=@Area AND 
	Usuario=@Usuario AND 	
	Empresa=@Empresa	AND 		
	Sucursal=@SucursalTRabajo

		
   
  BEGIN TRANSACTION
  OPEN crPersonalEjercicioPeriodo
  FETCH NEXT FROM crPersonalEjercicioPeriodo INTO @Personal
  WHILE @@FETCH_STATUS =0 AND @OK IS NULL 
  BEGIN
  	
  	--DSG
  	DECLARE 
  		@PeriodoTipoP varchar(20), 
  		@EstatusP varchar(15),
  	@EmpresaP varchar(20), 
  	@SucursalP varchar(15), 
  	@JornadaP varchar(15)
  	
  	Select @Area2=Area,
  	@PeriodoTipoP=PeriodoTipo,
  	@EstatusP=Estatus,
  	@EmpresaP =Empresa, 
  	@SucursalP =SucursalTrabajo, 
  	@JornadaP=Jornada  	
	from Personal where Personal = @Personal
	
	if (@JornadaP = 'Horario Completo') 
		Select @Ok = 6
	
	if (@EmpresaP <> @Empresa) 
		Select @Ok = 5
	
	if (@EstatusP <> 'Alta') 
		Select @Ok = 4
	
	if (@PeriodoTipoP <> @PeriodoTipo) 
		Select @Ok = 3
	
	
	if (@Area <> @Area2) 
		Select @Ok = 2
	--else
	--if 	(SELECT Count(*) FROM PersonalJornadaMes  
	--   	 WHERE PeriodoTipo=@PeriodoTipo AND FechaD=@FechaD AND FechaA=@FechaA AND Area=@Area AND Usuario=@Usuario   	
	--   	 AND (isnull (D01,'') ='' OR isnull(D02,'')='' OR isnull(D03,'')='' OR isnull(D04,'')='' OR isnull(D05,'')='' OR isnull(D06,'')='' OR isnull(D07,'')='')  ) <> 0
	--	Select @Ok = NULL
	--else
	--IF @Ok IS NULL 


    IF @Ok IS NULL 
    BEGIN
    EXEC spGeneraPersonalJornada  @Area ,@PeriodoTipo ,@FechaD, @FechaA , @Personal,@DiasJornada,@Usuario,@Empresa,@SucursalTRabajo, @Ok OUTPUT, @OkRef OUTPUT

      UPDATE PersonalJornadaMes SET Estatus ='PROCESADO' WHERE Personal = @Personal
      FETCH NEXT FROM crPersonalEjercicioPeriodo INTO @Personal
      
    END
  END
  CLOSE crPersonalEjercicioPeriodo
  DEALLOCATE crPersonalEjercicioPeriodo
  	
  IF @Ok IS NULL 
  BEGIN
    COMMIT
	--SELECT @Area,  @PeriodoTipo, @FechaD, @FechaA, @Usuario
	Exec spPersonalJornadaMesHist 	@Area,  @PeriodoTipo, @FechaD, @FechaA, @Usuario,@Empresa,@SucursalTRabajo

		Delete PersonalJornadaMes 
		WHERE 
		PeriodoTipo=@PeriodoTipo AND 
		FechaD=@FechaD AND 
		FechaA=@FechaA AND 
		Area=@Area AND 
		Usuario=@Usuario AND 	
		Empresa=@Empresa	AND 		
		Sucursal=@SucursalTRabajo
	

    SELECT 'Proceso Terminadossssss'
    
  END ELSE 
  BEGIN
    ROLLBACK
    IF @OK IN (2,3,4,5,6)
		SELECT @OkRef +' El Personal: ' + @Personal+ CASE WHEN @OK=2 THEN ' Ya No Corresponde al Area Filtrada'
															WHEN @OK=3 THEN ' Ya No Corresponde al Tipo Periodo'
															WHEN @OK=4 THEN ' Ya No Corresponde al Estatus ALTA'
															WHEN @OK=5 THEN ' Ya No Corresponde al Empresa Filtrada'
															WHEN @OK=6 THEN ' Ya No Corresponde al Jornadas Rotativas'END 
														
		ELSE IF @Ok = 1000
				SELECT @OkRef +' Se deben de llenar todos los Dias para poder Afectar '

  END
END
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.spIncidenciaSugerir') and type = 'P') 
DROP PROCEDURE dbo.spIncidenciaSugerir
GO 
create PROCEDURE [dbo].[spIncidenciaSugerir]
	@Estacion		int,
	@Usuario		char(10),
	@Sucursal		int,
	@Empresa		char(5),
	@Mov			varchar(20),
	@FechaEmision	datetime,
	@FechaD		datetime,
	@FechaA		datetime,
	@NominaConcepto varchar (10),
	@PeriodoTipo varchar(20)
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Ok				int,
    @OkRef			varchar(255),
    @Personal			varchar(10),
    @Fecha			datetime,
    @DiaSemanaD			int,
    @HorasPromedio		float,
    @HorasSemana		float,
    @HorasComida		float,
    @Horas			char(5),
    @HoraEntrada		char(5),
    @HoraEntradaReal 		char(5),
    @HorasAsistenciaReal	float,
    @SumaHorasAsistenciaReal	float,
    @FaltaConcepto		varchar(10),
    @FaltaEspecial		varchar(50),
    @PremioAsistencia		bit,
    @PremioPuntalidad		bit,
    @Dif			float,
    @Retardo			float,
    @SumaRetardo		float,
    @SumaRetardoHoras		float,
    @ToleraciaRetardo		float,
    @dFechaCur       datetime ,
    @Contador int,
    @PersonalCur varchar(10),
    @PersonalCurAnterior varchar(10),
    @Eslaboral int
    
DELETE  incidenciah

	CREATE TABLE #PasoDias (Id int IDENTITY (1,1),FechaNatural datetime  null, EsLaboral bit DEFAULT 1 NULL,EsDomingo bit DEFAULT 0 NULL,)
	CREATE TABLE #PersFaltaDia (id int IDENTITY (1,1),Personal varchar(10) null,FechaFalta datetime null)
	CREATE TABLE #PersDiaFestivo (id int IDENTITY (1,1),Personal varchar(10) null,FechaFestiva datetime null)
	--CREATE TABLE #PersRetardo (id int IDENTITY (1,1),Personal varchar(10) null,FechaRetardo datetime null)
	CREATE TABLE #PersPrimaDomini (id int IDENTITY (1,1),Personal varchar(10) null,FechaDomingo datetime null)
	CREATE TABLE #PasoIncidenciasH (Id int IDENTITY (1,1),Personal varchar (10), FechaAplicacion datetime  null, NominaConcepto varchar(10) null,Cantidad float NULL, Referencia varchar(50) null)
   
   
   CREATE TABLE #RepRetardosDetalleFinal2
    (
     ID                 int,
     Personal           varchar(10) NULL,     
     Empresa            varchar(5) NULL,
     Grupo              varchar(50) NULL,
     CentroCostos       varchar(20) NULL,
     FactorAusentismo   float NULL,
     FechaD			    datetime NULL,
     FechaA			    datetime NULL,
     Departamento       varchar(50) NULL,
     Mov                varchar(50) NULL,
     JornadaEntrada     datetime NULL,
     JornadaEntradaTol  datetime NULL,
     JornadaSalida      datetime NULL,
     HoraEntrada        varchar(5) NULL,
     HoraSalida         varchar(5) NULL,
     MinutosRetardo     varchar(20) NULL,
     NominaConcepto     varchar(50) NULL,
     FechaEmision       datetime    NULL,
     Unidad             int NULL,    
     Observaciones      varchar(255) NULL,
     Tipo               varchar(50) NULL,
     GeneroMov          int NULL,
     Area               varchar(80) NULL
    )

   
   --Dias Naturales y Verifica si es domingo
    INSERT INTO #PasoDias (FechaNatural,EsDomingo)
    SELECT Fecha,CASE WHEN charindex('Domingo',DiaNombre ,1)>0 THEN 1 ELSE 0 END FROM tiempo
    WHERE Fecha BETWEEN @FechaD AND @FechaA   
    
    --Actualiza los no Laborables
    UPDATE #PasoDias SET EsLaboral=0
    FROM #PasoDias pd JOIN
    DiaFestivo df ON pd.FechaNatural=df.Fecha
   

    --Cursor de Fechas de los dias laborables 
	DECLARE PrFechas CURSOR LOCAL FOR 
	SELECT  FechaNatural,EsLaboral
	FROM     #PasoDias

	OPEN PrFechas
	FETCH NEXT FROM PrFechas INTO @dFechaCur,@Eslaboral

	WHILE @@FETCH_STATUS <> -1     
		BEGIN  	
            IF @EsLaboral=1      
            --Empleados no registrados   
            insert into #PersFaltaDia (FechaFalta,Personal)  
            Select @dFechaCur, Personal from PersonalJornadaTiempos where Personal not in (
            Select Personal from Asiste join AsisteD on Asiste.ID = AsisteD.ID
            AND (AsisteD.FechaD = @dFechaCur)   
            AND (Asiste.Estatus = 'PROCESAR')     
            ) and PersonalJornadaTiempos.Fecha=@dFechaCur


            IF @EsLaboral=0      
            --Empleados  registrados   
            insert into #PersDiaFestivo (FechaFestiva,Personal)        
            SELECT @dFechaCur, Personal.Personal  r
            FROM   Personal  JOIN   
            AsisteD ON Personal.Personal = AsisteD.Personal JOIN  
            Asiste ON asisted.id=asiste.id  
            WHERE    
            (Personal.Estatus = 'Alta')       
            AND (Personal.Tipo IN ('Empleado', 'Honorarios'))   
            AND (Personal.Empresa=@Empresa)  
            AND (AsisteD.FechaD = @dFechaCur)   
            AND (Personal.FechaAlta <= @dFechaCur)  
            AND (asiste.estatus<>'CANCELADO')       
            GROUP BY Personal.Personal, AsisteD.FechaD   
	
				
			FETCH NEXT FROM PrFechas INTO @dFechaCur,@Eslaboral
		END 
	CLOSE PrFechas
	DEALLOCATE PrFechas	
	
	
	 --Cursor de Fechas de los dias laborables 
	DECLARE PrFechas CURSOR LOCAL FOR 
	SELECT  FechaNatural
	FROM     #PasoDias
	WHERE    Esdomingo=1
	
	OPEN PrFechas
	FETCH NEXT FROM PrFechas INTO @dFechaCur

	WHILE @@FETCH_STATUS <> -1     
		BEGIN  
				--Empleados registrados 
				insert into #PersPrimaDomini (FechaDomingo,Personal)
				SELECT AsisteD.Fecha,AsisteD.Personal
				FROM AsisteD  JOIN Asiste on AsisteD.id=Asiste.id  
				WHERE AsisteD.Fecha=@dFechaCur AND Asiste.Empresa=@Empresa AND Asiste.Estatus IN ('PROCESAR', 'CONCLUIDO')
				GROUP BY AsisteD.Personal,AsisteD.Fecha
				
		       FETCH NEXT FROM PrFechas INTO @dFechaCur
		END 
	CLOSE PrFechas
	DEALLOCATE PrFechas

----------------------------------------------------------
--------------INICIO Elimina Prima Dominical--------------
----------------------------------------------------------
    DELETE #PersPrimaDomini
	FROM 
	asiste JOIN asisted ON asisted.ID = asiste.ID JOIN
	#PersPrimaDomini pfd  ON asisted.Personal=pfd.Personal  
	WHERE 
	asiste.mov IN ('Especial', 'Fallecimiento', 'Casamiento', 'Alumbramiento', 'Permiso sin Goce', 'Permiso con Goce', 'Sancion', 'Viaje')
	AND asiste.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
	AND pfd.FechaDomingo BETWEEN  @FechaD	AND  @FechaA
	AND pfd.FechaDomingo BETWEEN  asisted.FechaD	AND  asisted.FechaA
	
    --SELECT * FROM #PersPrimaDomini
	
-- INICIO Elimina Faltas aunque le hayan capturado Vacaciones o Incapacidades (Nocturnas)--

	DELETE  #PersPrimaDomini 
      FROM  Incidencia i 
            JOIN IncidenciaD id ON i.ID = id.ID
            JOIN #PersPrimaDomini pfd  ON i.Personal=pfd.Personal AND id.FechaAplicacion = pfd.FechaDomingo 
     WHERE id.NominaConcepto IN ('101','255', '256', '257', '257T') AND i.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
           AND id.FechaAplicacion BETWEEN  @FechaD	AND  @FechaA

-- FIN Elimina Faltas aunque le hayan capturado Vacaciones o Incapacidades (Nocturnas)--
	
-------------------------------------------------------
--------------Fin Elimina Prima Dominical--------------
-------------------------------------------------------
	
	-- Percepcion 148 Prima Dominical
	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)    
    SELECT  @Usuario,@Empresa,@Mov,'148','', pfd.FechaDomingo,pfd.personal,1,null,pfd.FechaDomingo,pfd.FechaDomingo,'00:00'	
	FROM #PersPrimaDomini pfd JOIN
	PersonalJornadaTiempos pjt ON pfd.FechaDomingo =pjt.Fecha AND pfd.Personal=pjt.Personal

	-- Percepcion 173 Diafestivo
	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)    
    SELECT  @Usuario,@Empresa,@Mov,'173','', pfd.FechaFestiva,pfd.personal,1,null,pfd.FechaFestiva,pfd.FechaFestiva,'00:00'	
	FROM #PersDiaFestivo pfd JOIN
	PersonalJornadaTiempos pjt ON pfd.FechaFestiva =pjt.Fecha AND pfd.Personal=pjt.Personal
	WHERE datediff(n,pjt.Entrada,pjt.Salida) <> 1379 -- Esta Cantidad son los minutos q suman la jornada descanso
	
-------------------------------------------------------------------------------------------------------------------
------------------------------------INICIO veladas Nocturnas a la tabla de Faltas----------------------------------
-------------------------------------------------------------------------------------------------------------------
    SELECT ad.fecha Fecha,min(Renglon) ID,ad.Personal, min(ad.HoraRegistro) AS HoraRegistro
    INTO #PasoNocturnaEntradaB
    FROM AsisteD ad 
        JOIN Asiste A ON A.ID = ad.ID
        JOIN Personal p ON ad.Personal = p.Personal
        JOIN Jornada j ON p.Jornada = j.Jornada
    WHERE ad.Registro='Entrada' and
    ad.Fecha BETWEEN @FechaD AND @FechaA   AND
    a.Empresa=@Empresa AND a.Mov = 'Registro'
    AND rtrim(a.Estatus) in ('PROCESAR', 'CONCLUIDO','BORRADOR') AND ad.Sucursal = @Sucursal AND isnull(j.EsNocturna, 0 ) = 1
    GROUP BY ad.Personal,ad.fecha--,ad.HoraRegistro
    ORDER BY 1

    SELECT pjt.Entrada, pjt.Fecha, pjt.Personal
    INTO #PersNocturnaB
    FROM #PasoNocturnaEntradaB pre  RIGHT JOIN PersonalJornadaTiempos pjt ON pre.Fecha=pjt.Fecha AND pre.Personal=pjt.Personal
    WHERE pre.Personal IS NULL AND pre.Fecha is NULL AND pjt.Personal IN (SELECT Personal FROM   #PasoNocturnaEntradaB  ) 
    
    DELETE #PersNocturnaB
	FROM 
	asiste JOIN asisted ON asisted.ID = asiste.ID JOIN
	#PersNocturnaB pfd  ON asisted.Personal=pfd.Personal 
	WHERE 
	asiste.mov IN ('Alumbramiento','Casamiento','Especial','Fallecimiento','Permiso con Goce','Viaje','Permiso Dias','Pago de Tiempo')
	AND asiste.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
	AND pfd.Entrada BETWEEN  @FechaD	AND  @FechaA
	AND pfd.Fecha   BETWEEN  asisted.FechaD	AND  asisted.FechaA


------------- INICIO Elimina Faltas aunque le hayan capturado Vacaciones o Incapacidades (Nocturnas)---------------

	DELETE  #PersNocturnaB 
      FROM  Incidencia i 
            JOIN IncidenciaD id ON i.ID = id.ID
            JOIN #PersNocturnaB pfd  ON i.Personal=pfd.Personal AND id.FechaAplicacion = pfd.Fecha 
     WHERE id.NominaConcepto IN ('101','255', '256', '257', '257T') AND i.Estatus IN ('PENDIENTE', 'CONCLUIDO')     
           AND id.FechaAplicacion BETWEEN  @FechaD	AND  @FechaA

------------- FIN Elimina Faltas aunque le hayan capturado Vacaciones o Incapacidades (Nocturnas)---------------


	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)    
    SELECT  @Usuario,@Empresa,@Mov,'254','', prb.Entrada, prb.Personal,1,null, prb.Entrada, prb.Entrada,'00:00'	
      FROM #PersNocturnaB prb
-------------------------------------------------------------------------------------------------------------------
------------------------------------FIN veladas Nocturnas a la tabla de Faltas-------------------------------------
-------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------------
-------------------- Inicio Elimina Faltas aunque le hayan capturado Vacaciones o Incapacidades ------------------- 
-------------------------------------------------------------------------------------------------------------------
	DELETE  #PersFaltaDia 
      FROM  Incidencia i 
            JOIN IncidenciaD id ON i.ID = id.ID
            JOIN #PersFaltaDia pfd  ON i.Personal=pfd.Personal AND id.FechaAplicacion = pfd.FechaFalta 
     WHERE id.NominaConcepto IN ('101','255', '256', '257', '257T') AND i.Estatus IN ('PENDIENTE', 'CONCLUIDO')     
           AND id.FechaAplicacion BETWEEN  @FechaD	AND  @FechaA
-------------------------------------------------------------------------------------------------------------------
-------------------- FIN Elimina Faltas aunque le hayan capturado Vacaciones o Incapacidades ------------------- 
-------------------------------------------------------------------------------------------------------------------
           

	--Borramos la usencia con estos movimientos...
	DELETE #PersFaltaDia 
	FROM 
	asiste JOIN asisted ON asisted.ID = asiste.ID JOIN
	#PersFaltaDia pfd  ON asisted.Personal=pfd.Personal  
	WHERE 
	asiste.mov IN ('Alumbramiento','Casamiento','Especial','Fallecimiento','Permiso con Goce','Viaje','Permiso Dias','Pago de Tiempo')
	AND asiste.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
	AND pfd.FechaFalta BETWEEN  @FechaD	AND  @FechaA
	AND pfd.FechaFalta BETWEEN  asisted.FechaD	AND  asisted.FechaA

	DELETE #PersFaltaDia 
	FROM 
    #PersFaltaDia pfd JOIN #PersNocturnaB pnb ON pfd.Personal = pnb.personal AND pfd.FechaFalta = pnb.Fecha
	  	 
	-- se insertan las faltas
	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)    
    SELECT  @Usuario,@Empresa,@Mov,'254','', pfd.FechaFalta,pfd.personal,1,null,pfd.FechaFalta,pfd.FechaFalta,'00:00'	
	FROM #PersFaltaDia pfd JOIN
	PersonalJornadaTiempos pjt ON pfd.FechaFalta =pjt.Fecha AND pfd.Personal=pjt.Personal
	WHERE datediff(n,pjt.Entrada,pjt.Salida) <> 1379 -- Esta Cantidad son los minutos q suman la jornada descanso
    

 
 
--    -- Retardo Entrada drop table #PasoRetardoEntrada
--    SELECT ad.fecha Fecha,min(Renglon) ID,Personal, ad.HoraRegistro INTO #PasoRetardoEntrada
--    FROM AsisteD ad JOIN 
--    Asiste A ON A.ID = ad.ID
--    WHERE ad.Registro='Entrada' and
--    ad.Fecha BETWEEN @FechaD AND @FechaA   AND
--    a.Empresa=@Empresa 
--    AND rtrim(a.Estatus)='PROCESAR'
--    GROUP BY Personal,ad.fecha,ad.HoraRegistro
--    ORDER BY 1
--    
--    -- Retardo Salida
--    SELECT ad.fecha Fecha,Max(Renglon) ID,Personal, ad.HoraRegistro INTO #PasoRetardoSalida
--    FROM AsisteD ad JOIN 
--    Asiste A ON A.ID = ad.ID
--    WHERE ad.Registro='Salida' and
--    ad.Fecha BETWEEN @FechaD AND @FechaA   AND
--    a.Empresa=@Empresa 
--    AND rtrim(a.Estatus)='PROCESAR'   
--    GROUP BY Personal,ad.fecha,ad.HoraRegistro
--    ORDER BY 1
--
--
--    INSERT INTO #PersRetardo (Personal,FechaRetardo)
--    SELECT  pre.Personal,pre.Fecha
--    FROM #PasoRetardoEntrada pre  JOIN PersonalJornadaTiempos pjt ON pre.Fecha=pjt.Fecha AND pre.Personal=pjt.Personal
--    WHERE CONVERT(datetime,CONVERT(varchar(10),pre.Fecha,111)+' '+pre.HoraRegistro,110)>pjt.EntradaTolerancia
--    
--    INSERT INTO #PersRetardo (Personal,FechaRetardo)        
--    SELECT  prs.Personal,prs.Fecha
--    FROM #PasoRetardoSalida prs JOIN PersonalJornadaTiempos pjt ON prs.Fecha=pjt.Fecha AND prs.Personal=pjt.Personal
--    WHERE CONVERT(datetime,CONVERT(varchar(10),prs.Fecha,111)+' '+prs.HoraRegistro,110)< pjt.SalidaTolerancia   	
--    
--   
--    --Cursor de Fechas de los dias laborables 
--	DECLARE PrFechas CURSOR LOCAL FOR 
--    SELECT t1.FechaRetardo,t1.Personal FROM #PersRetardo t1 JOIN
--    (
--    SELECT Personal FROM #PersRetardo
--    GROUP BY Personal 
--    HAVING Count(*)>=3    
--    --ORDER BY Personal
--    ) t2 ON t1.Personal=t2.Personal
--    ORDER BY t1.Personal,t1.FechaRetardo	
--    
--    SELECT  @Contador=0, @PersonalCurAnterior=''
--    
--	OPEN PrFechas
--	FETCH NEXT FROM PrFechas INTO @dFechaCur,@PersonalCur 
--
--	WHILE @@FETCH_STATUS <> -1     
--		BEGIN  
--				--Cada 3 retardos se aplica un retardo
--				IF @PersonalCurAnterior<>@PersonalCur
--					SELECT  @Contador=1	
--				IF (@Contador%3)=0 
--					BEGIN
--					--SELECT  @Usuario,@Empresa,@Mov,'259','', @dFechaCur,@PersonalCur,0.5,null,@dFechaCur,@dFechaCur,'00:00'
--					INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)    
--				    SELECT  @Usuario,@Empresa,@Mov,'259','', @dFechaCur,@PersonalCur,0.5,null,@dFechaCur,@dFechaCur,'00:00'
--					end
--				SELECT  @Contador=@Contador+1, @PersonalCurAnterior=@PersonalCur				
--		       FETCH NEXT FROM PrFechas INTO @dFechaCur,@PersonalCur
--		END 
--	CLOSE PrFechas
--	DEALLOCATE PrFechas
--	
--
--	--Tienen Entrada, pero no tienen Salida	
--	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)    
--	SELECT  @Usuario,@Empresa,@Mov,'259','', pre.Fecha,pre.Personal,0.5,null,pre.Fecha,pre.Fecha,'00:00'
--	FROM #PasoRetardoEntrada pre LEFT OUTER join #PasoRetardoSAlida prs
--	ON pre.fecha=prs.Fecha AND pre.Personal=prs.Personal
--	WHERE prs.Personal IS NULL
--	ORDER BY pre.Personal ,pre.Fecha
	
	
	
	--EXEC spRepRetardosDetalle 	@Sucursal, @Empresa, NULL, NULL, NULL, NULL, @FechaD,@FechaA
	INSERT INTO   #RepRetardosDetalleFinal2   (ID, Personal, Empresa, Grupo, CentroCostos, FactorAusentismo, FechaD, FechaA, Departamento, Mov, JornadaEntrada, JornadaEntradaTol, 
                      JornadaSalida, HoraEntrada, HoraSalida, MinutosRetardo, NominaConcepto, FechaEmision, Unidad, Observaciones, Tipo, GeneroMov, Area)
	EXEC spRepRetardosDetalle 	@Sucursal, @Empresa, NULL, NULL, NULL, NULL, @FechaD,@FechaA
	
	--EXEC spRepRetardosDetalle 	16, '01', NULL, NULL, NULL, NULL, '01/09/2009', '21/09/2009'
		--Tienen Entrada, pero no tienen Salida	
	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)    
	SELECT  @Usuario,@Empresa,@Mov,'259','', pre.FechaEmision,pre.Personal,0.5,null,pre.FechaEmision,pre.FechaEmision,'00:00'
	FROM #RepRetardosDetalleFinal2 pre
	GROUP BY  Personal, FechaEmision, Tipo
	ORDER BY Personal, FechaEmision, Tipo
	

--	DELETE IncidenciaH 
--	FROM
--	IncidenciaH ih JOIN 
--	(
--	SELECT asisted.Personal,asiste.FechaAplicacion  
--	FROM 	asiste JOIN asisted ON asisted.ID = asiste.ID  
--	WHERE 
--	asiste.mov IN ('Permiso sin Goce','Sancion')
--	AND asiste.Estatus IN ('PROCESAR')
--	AND  asiste.FechaAplicacion BETWEEN  @FechaD AND  @FechaA
--	) Sancion ON ih.personal=Sancion.Personal AND ih.FechaEmision=Sancion.FechaAplicacion
--	
	
	 --Generan Falta...Permiso sin goce 260 
	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)  
	SELECT @Usuario,@Empresa,@Mov,'260','', asiste.FechaAplicacion,asisted.Personal,1,null,asiste.FechaAplicacion,asiste.FechaAplicacion,'00:00'  
	FROM 	asiste JOIN asisted ON asisted.ID = asiste.ID  
	WHERE 
	asiste.mov IN ('Permiso sin Goce')
	AND asiste.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
	AND  asiste.FechaAplicacion BETWEEN  @FechaD	AND  @FechaA
	
	--Generan sancion 258
	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)  
	SELECT @Usuario,@Empresa,@Mov,'258','', asiste.FechaAplicacion,asisted.Personal,1,null,asiste.FechaAplicacion,asiste.FechaAplicacion,'00:00'  
	FROM 	asiste JOIN asisted ON asisted.ID = asiste.ID  
	WHERE 
	asiste.mov IN ('Sancion')
	AND asiste.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
	AND   asiste.FechaAplicacion BETWEEN  @FechaD	AND  @FechaA

	--Genera movimientos de Pago Dinero Velada
	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)  
	SELECT @Usuario,@Empresa,@Mov,'129','', asiste.FechaAplicacion,asisted.Personal,1,null,asiste.FechaAplicacion,asiste.FechaAplicacion,'00:00'  
	FROM 	asiste JOIN asisted ON asisted.ID = asiste.ID  
	WHERE 
	asiste.mov IN ('Pago Dinero Velada')
	AND asiste.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
	AND   asiste.FechaAplicacion BETWEEN  @FechaD	AND  @FechaA

	--Genera movimientos de Pago Dinero Velada Mantenimiento
	INSERT INTO IncidenciaH ( Usuario,Empresa,Mov,NominaConcepto,Referencia,FechaEmision,Personal,Cantidad,Importe,	FechaD,FechaA,Horas)  
	SELECT @Usuario,@Empresa,@Mov,'129A','', asiste.FechaAplicacion,asisted.Personal,1,null,asiste.FechaAplicacion,asiste.FechaAplicacion,'00:00'  
	FROM 	asiste JOIN asisted ON asisted.ID = asiste.ID  
	WHERE 
	asiste.mov IN ('Pago Dinero Velada M')
	AND asiste.Estatus IN ('PROCESAR', 'CONCLUIDO','BORRADOR')
	AND   asiste.FechaAplicacion BETWEEN  @FechaD	AND  @FechaA



	--Solo poner el concepto seleccionado
	IF (@NominaConcepto IS NOT NULL) OR (@NominaConcepto = 'NULL') OR (@NominaConcepto = '')
		delete IncidenciaH 
		where NominaConcepto<>@NominaConcepto
	
	--Solo Dejar los del TipoPeriodo Seleccionado
	IF (@PeriodoTipo IS NOT NULL) OR (@PeriodoTipo = 'NULL') OR (@PeriodoTipo = '')
		delete IncidenciaH 
		FROM IncidenciaH Ih JOIN
		Personal p ON p.Personal = Ih.Personal
		where p.PeriodoTipo<>@PeriodoTipo


	--Solo Dejar los del La SucursalTrabajo seleccionada
	IF  isnull(@Sucursal,-1)>=0 
		delete IncidenciaH 
		FROM IncidenciaH Ih JOIN
		Personal p ON p.Personal = Ih.Personal
		where p.SucursalTrabajo<>@Sucursal
		
	--El movimiento Velada Mata la Falta del Dia Siguiente (254)
	DELETE IncidenciaH 
	FROM IncidenciaH Ih JOIN
	(
	SELECT d.Personal,d.FechaD,dateAdd(day,1,d.FechaD) FechaMovVelada FROM asiste a JOIN
	asisted d ON d.ID = a.ID
	AND a.Mov='Velada'
	AND a.Estatus IN ('PROCESAR')
	AND d.FechaD BETWEEN @FechaD AND @FechaA
	) MovVelada ON MovVelada.Personal = Ih.Personal
	AND MovVelada.FechaMovVelada=Ih.FechaD
	WHERE Ih.NominaConcepto='254'

	--El movimiento Pago Dinero Velada Mata la prima dominical Dia Siguiente (254)
	DELETE IncidenciaH 
	FROM IncidenciaH Ih JOIN
	(
	SELECT d.Personal,d.FechaD,d.FechaD FechaMovVelada FROM asiste a JOIN
	asisted d ON d.ID = a.ID
	AND a.Mov IN ('Pago Dinero Velada','Pago Dinero Velada M')
	AND a.Estatus IN ('PROCESAR')
	AND d.FechaD BETWEEN @FechaD AND @FechaA
	) MovVelada ON MovVelada.Personal = Ih.Personal
	AND MovVelada.FechaMovVelada=Ih.FechaD
	WHERE Ih.NominaConcepto='148'


		
	/*	
	SELECT p.PeriodoTipo,p.SucursalTrabajo,* 
	FROM IncidenciaH Ih JOIN
	Personal p ON p.Personal = Ih.Personal

	SELECT * FROM IncidenciaH
	*/
		
		


END
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpIncidenciaHValidaIncidencias') and type = 'P') 
DROP PROCEDURE dbo.SpIncidenciaHValidaIncidencias
GO 
CREATE PROCEDURE SpIncidenciaHValidaIncidencias
@Mensaje varchar (50) output,
@OK int output
AS
BEGIN
	
	SELECT  @Mensaje=NULL,	@OK=null
	IF (SELECT Count(*) FROM IncidenciaH)>0
	BEGIN		
		
		--SELECT RIGHT('123',2)
	
		SELECT TOP 1 @Mensaje= ',Personal:'+i.personal +' ,Fecha:('+
		 RIGHT('0'+CONVERT(varchar(2),datepart(day,d.FechaAplicacion)),2)+'/'+
		RIGHT('0'+CONVERT(varchar(2),datepart(month,d.FechaAplicacion)),2)+'/'+
		CONVERT(varchar(4),datepart(year,d.FechaAplicacion))+
		') ,Concepto: '+i.NominaConcepto 
		FROM Incidencia i JOIN
		IncidenciaD d ON d.ID = i.ID JOIN
		IncidenciaH ih ON ih.NominaConcepto = d.NominaConcepto 
		AND ih.Personal = i.Personal
		AND ih.FechaD=d.FechaAplicacion
		WHERE i.Estatus IN ('CONCLUIDO','PENDIENTE')
		AND ih.NominaConcepto <> /*Retardo*/'259'
		
		IF  @Mensaje IS NOT  NULL 		
			SET @OK=500				
	END
	
END
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.spIncidenciaH') and type = 'P') 
DROP PROCEDURE dbo.spIncidenciaH
GO
Create PROCEDURE spIncidenciaH
@Estacion	int,
@Sucursal	int,
@Empresa	char(5),
@Usuario	char(10)
WITH ENCRYPTION
AS BEGIN
DECLARE
@ID			int,
@IncidenciaID	int,
@IDGenerar		int,
@Mov		char(20),
@MovID		varchar(20),
@FechaEmision	datetime,
@FechaAplicacion	datetime,
@FechaRegistro	datetime,
@Personal		varchar(10),
@NominaConcepto	varchar(10),
@Referencia		varchar(50),
@Moneda		char(10),
@TipoCambio		float,
@Cantidad		float,
@CantidadBase	float,
@Valor		float,
@Importe		money,
@Porcentaje 	float,
@Acreedor 		varchar(10),
@Vencimiento	datetime,
@FechaD		datetime,
@FechaA		datetime,
@Horas		varchar(5),
@Ok			int,
@OkRef		varchar(255),
@Conteo		int,
@Mensaje		varchar(255),
@Proyecto		varchar(50),
@UEN		int,
@MsgValidacion varchar(50)

--Validacion  en Incidencias 
EXEC SpIncidenciaHValidaIncidencias @MsgValidacion output, @Ok output
IF @Ok IS NOT NULL 
BEGIN
	SELECT 'Incidencia Duplicada' + @MsgValidacion
	RETURN 
END
--



SELECT @FechaRegistro = GETDATE(), @Ok = NULL, @OkRef = NULL, @Conteo = 0
SELECT @Moneda = m.Moneda, @TipoCambio = m.TipoCambio
FROM EmpresaCfg cfg, Mon m
WHERE cfg.Empresa = @Empresa AND m.Moneda = cfg.ContMoneda
SELECT @Proyecto = DefProyecto, @UEN = UEN FROM Usuario WHERE Usuario = @Usuario
BEGIN TRANSACTION
DECLARE crIncidenciaH CURSOR FOR
SELECT ID, Mov, FechaEmision, NULLIF(RTRIM(NominaConcepto), ''), NULLIF(RTRIM(Referencia), ''), NULLIF(RTRIM(Personal), ''), NULLIF(Cantidad, 0.0), NULLIF(Importe, 0.0), FechaD, FechaA, NULLIF(NULLIF(RTRIM(Horas), ''), '00'+CHAR(58)+'00')
FROM IncidenciaH
WHERE Usuario = @Usuario AND Empresa = @Empresa
OPEN crIncidenciaH
FETCH NEXT FROM crIncidenciaH INTO @ID, @Mov, @FechaEmision, @NominaConcepto, @Referencia, @Personal, @Cantidad, @Importe, @FechaD, @FechaA, @Horas
WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL
BEGIN
IF @@FETCH_STATUS <> -2 AND (@Personal IS NOT NULL AND @NominaConcepto IS NOT NULL)
BEGIN
SELECT @FechaAplicacion = ISNULL(@FechaD, @FechaEmision)
EXEC spIncidenciaBase @Empresa, @FechaEmision, @FechaAplicacion, @Personal, @NominaConcepto,
@EnSilencio = 1, @Cantidad = @CantidadBase OUTPUT, @Valor = @Valor OUTPUT, @Porcentaje = @Porcentaje OUTPUT, @Acreedor = @Acreedor OUTPUT, @Vencimiento = @Vencimiento OUTPUT
IF @Horas IS NOT NULL EXEC spHorasToCantidad @Horas, @Cantidad OUTPUT
IF @Cantidad IS NULL SELECT @Cantidad = @CantidadBase
IF @Importe IS NOT NULL SELECT @Valor = (@Importe / @Cantidad) * ISNULL(NULLIF(@Porcentaje, 0.0), 100.0) / 100.0
INSERT Incidencia (
Sucursal,  SucursalOrigen, Empresa,  Mov,  FechaEmision,  FechaAplicacion,   Usuario,  Moneda,  TipoCambio,  Estatus,      Proyecto,  UEN,  NominaConcepto,  Personal,  Referencia,  Cantidad,  Valor,  Porcentaje,  Acreedor,  Vencimiento,  FechaD,  FechaA)
VALUES (@Sucursal, @Sucursal,      @Empresa, @Mov, @FechaEmision, @FechaAplicacion, @Usuario, @Moneda, @TipoCambio, 'SINAFECTAR', @Proyecto, @UEN, @NominaConcepto, @Personal, @Referencia, @Cantidad, @Valor, @Porcentaje, @Acreedor, @Vencimiento, @FechaD, @FechaA)
SELECT @IncidenciaID = @@IDENTITY
EXEC xpIncidenciaH @ID, @IncidenciaID, @Ok OUTPUT, @OkRef OUTPUT
IF @ID IS NOT NULL
EXEC spIncidencia @IncidenciaID, 'INC', 'AFECTAR', 'TODO', @FechaRegistro, NULL, @Usuario, 1, 0, @Mov, @MovID OUTPUT, @IDGenerar, @Ok OUTPUT, @OkRef OUTPUT
IF @Ok IS NULL
BEGIN
DELETE IncidenciaH WHERE CURRENT OF crIncidenciaH
SELECT @Conteo = @Conteo + 1
END
END
FETCH NEXT FROM crIncidenciaH INTO @ID, @Mov, @FechaEmision, @NominaConcepto, @Referencia, @Personal, @Cantidad, @Importe, @FechaD, @FechaA, @Horas
END  
CLOSE crIncidenciaH
DEALLOCATE crIncidenciaH
IF @Ok IS NULL
BEGIN
COMMIT TRANSACTION
SELECT @Mensaje = CONVERT(varchar, @Conteo)+' Movimientos Generados.'
END ELSE
BEGIN
ROLLBACK TRANSACTION
SELECT @Mensaje = RTRIM(Descripcion)+' '+@OkRef FROM MensajeLista WHERE Mensaje = @Ok
END
SELECT @Mensaje
RETURN
END

GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.SPValEliminaJornada') and type = 'P') 
DROP PROCEDURE dbo.SPValEliminaJornada
GO  
CREATE   PROCEDURE [dbo].[SPValEliminaJornada] 
@Jornada	varchar(20)
AS
BEGIN
	DECLARE @Personal varchar(10)
		
	SELECT TOP 1 @Personal=P.Personal FROM PersonaL p JOIN
	jornada j ON j.Jornada=p.jornada
	WHERE j.Jornada=@Jornada
	ORDER BY P.Personal
	
	SELECT ISNULL(@Personal,'SI') Personal
	
END
go
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.SPVerificaPermisosJornada') and type = 'P') 
DROP PROCEDURE dbo.SPVerificaPermisosJornada
GO  
CREATE   PROCEDURE [dbo].[SPVerificaPermisosJornada] 
@PeriodoTipo varchar (20),
@FechaD dateTime,
@fechaA datetime,
@Area varchar(50),
@Usuario varchar(10)  
AS  
BEGIN  
  
	DECLARE 
	@TotReg int, 
	@ContReg int, 
	@Personal varchar(10), 
	@Permisos int, 
	@TotPermisos int, 
	@TotDescan int, 
	@TotDescanB int, 
	@TotDescanC int,  
	@Cadena varchar(1000), 
	@TotalDias int, 
	@ContA int , 
	@ContB int, 
	@Cont7 int,  
	@TotPermisosB int, 
	@TotPermisosC int,  
	@LargoCadena int,
	@ContCadena int,
	@EncontroP int, 
	@EncontroD int ,
	@Jornada char(1),
	@OK int
  
	SELECT Personal, PeriodoTipo, D01, D02, D03, D04, D05, D06, D07
	INTO #PersonalJornadaMes  
	FROM PersonalJornadaMes
	WHERE 
	PeriodoTipo=@PeriodoTipo  
	AND FechaD=@FechaD
	AND FechaA=@FechaA
	AND Area=@Area
	AND Usuario=@Usuario

  
	ALTER TABLE #PersonalJornadaMes ADD ID INT IDENTITY   

	SET @TotDescan = 0  
	SET @TotDescanB = 0  
	SET @TotPermisos = 0  
	SET @TotPermisosB = 0  
	SET @TotPermisosC = 0  
	SET @TotDescanC = 0
	SET @OK=0   
  
	SET @TotReg = (SELECT count(*) FROM #PersonalJornadaMes)  
	SET @ContReg = 1  

	WHILE (@ContReg <= @TotReg) and (@OK=0)  
	BEGIN     
		
		IF @PeriodoTipo='Semanal'
		SELECT @Personal = Personal, 
		  @Cadena =   
			  CASE WHEN D01 IS NULL THEN '+' ELSE CASE WHEN D01 = '' THEN '+' ELSE d01 END END +   
			  CASE WHEN D02 IS NULL THEN '+' ELSE CASE WHEN D02 = '' THEN '+' ELSE d02 END END +
			  CASE WHEN D03 IS NULL THEN '+' ELSE CASE WHEN D03 = '' THEN '+' ELSE d03 END END +
			  CASE WHEN D04 IS NULL THEN '+' ELSE CASE WHEN D04 = '' THEN '+' ELSE d04 END END +
			  CASE WHEN D05 IS NULL THEN '+' ELSE CASE WHEN D05 = '' THEN '+' ELSE d05 END END +
			  CASE WHEN D06 IS NULL THEN '+' ELSE CASE WHEN D06 = '' THEN '+' ELSE d06 END END +
			  CASE WHEN D07 IS NULL THEN '+' ELSE CASE WHEN D07 = '' THEN '+' ELSE d07 END END 
		FROM #PersonalJornadaMes WHERE ID = @ContReg  
		
		IF @PeriodoTipo='Quincenal'
		SELECT @Personal = Personal, 
		  @Cadena =   
			  CASE WHEN D01 IS NULL THEN '+' ELSE CASE WHEN D01 = '' THEN '+' ELSE d01 END END +   
			  CASE WHEN D02 IS NULL THEN '+' ELSE CASE WHEN D02 = '' THEN '+' ELSE d02 END END +
			  CASE WHEN D03 IS NULL THEN '+' ELSE CASE WHEN D03 = '' THEN '+' ELSE d03 END END +
			  CASE WHEN D04 IS NULL THEN '+' ELSE CASE WHEN D04 = '' THEN '+' ELSE d04 END END +
			  CASE WHEN D05 IS NULL THEN '+' ELSE CASE WHEN D05 = '' THEN '+' ELSE d05 END END +
			  CASE WHEN D06 IS NULL THEN '+' ELSE CASE WHEN D06 = '' THEN '+' ELSE d06 END END +
			  CASE WHEN D07 IS NULL THEN '+' ELSE CASE WHEN D07 = '' THEN '+' ELSE d07 END END   
		FROM #PersonalJornadaMes WHERE ID = @ContReg  

--Select @Cadena '@Cadena'
    
		SELECT @LargoCadena=len(@Cadena)
		IF @LargoCadena>1
		BEGIN
			SET @ContCadena=1
			SET @Cont7=0
			SET @EncontroP=0
			SET @EncontroD=0
						
			WHILE (@ContCadena <= @LargoCadena ) AND  (@OK=0)
			BEGIN
				
    			SELECT @Jornada= RIGHT(LEFT(@Cadena,@ContCadena),1)
    			IF @Jornada='P'
    				SELECT @EncontroP=@EncontroP+1
    			IF @Jornada='D'
    				SELECT @EncontroD=@EncontroD+1
    			
    		 	IF (@EncontroP > 1) OR (@EncontroD > 1)
    		 		SET @OK=1
    		 	
    			SET @ContCadena=@ContCadena+1
    			
			END
		END   
	SET @ContReg=@ContReg+1
	END  
	SET @Ok=0
	
	IF @Ok=1
		SELECT @Ok=CONVERT(int,@Personal)		
	SELECT @Ok
END
GO
----------------------------------------------------------
---------------    Sps Jornada                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCambioJornadaAsiste') and type = 'P') 
DROP PROCEDURE dbo.SpCambioJornadaAsiste
GO   
CREATE PROCEDURE SpCambioJornadaAsiste
@Id int
AS
BEGIN
	
	IF 	(SELECT  a.Mov
	FROM Asiste a 
	WHERE  a.id=@id AND a.Estatus IN ('PROCESAR')) = ('Cambio de Jornada')
	
	--SELECT * FROM asiste ORDER BY id desc
	
	BEGIN
		
	
	DECLARE
	@Personal varchar(10),
	@HoraEntrada varchar(5),
	@HoraSalida varchar(5),
	@FechaAplicacionMov datetime,
	@ToleranciaEntradaM int,
	@ToleranciaSalidaM int,
	@Jornada varchar (20)

	DECLARE crDetalleCambioJornada CURSOR FOR 
	SELECT ad.Personal, ad.HoraD, ad.HoraA, a.FechaAplicacion
	FROM Asiste a JOIN 
	AsisteD ad ON ad.ID = a.ID
	WHERE a.id=@Id

	OPEN crDetalleCambioJornada
	FETCH NEXT FROM crDetalleCambioJornada INTO @Personal, @HoraEntrada, @HoraSalida, @FechaAplicacionMov
	WHILE @@FETCH_STATUS <> -1
	BEGIN

	
		-- Vamos por la Jornada 
		SELECT 
		@Jornada=Jornada FROM PersonalJornadaTiempos
		WHERE Personal=@Personal AND Fecha=@FechaAplicacionMov

		-- Determinamos la tolerancia original para entrada y salida
		SELECT 
		@ToleranciaEntradaM=ToleranciaEntrada ,
		@ToleranciaSalidaM=ToleranciaSalida 
		FROM Jornada 
		WHERE Jornada=@Jornada
		
		--SI no existe el dato por defauld sera CERO
		SELECT 
		@ToleranciaEntradaM=isnull(@ToleranciaEntradaM,0),
		@ToleranciaSalidaM=isnull(@ToleranciaSalidaM,0)

		-- Actualizamos la Hora de Entrada y Salida
		UPDATE 
		PersonalJornadaTiempos 
		SET 
		Entrada=dateadd(mi,CONVERT(int,RIGHT(@HoraEntrada,2)),dateadd(hh,CONVERT(int,LEFT (@HoraEntrada,2)),@FechaAplicacionMov)),
		Salida=dateadd(mi,CONVERT(int,RIGHT(@HoraSalida,2)),dateadd(hh,CONVERT(int,LEFT (@HoraSalida,2)),@FechaAplicacionMov))
		WHERE Personal=@Personal AND Fecha=@FechaAplicacionMov


		
		-- Actualizamos la Tolerancia de Entrada y la tolerancia de Salida.
		UPDATE 
		PersonalJornadaTiempos 
		SET 
		EntradaTolerancia=dateadd(mi,@ToleranciaEntradaM,Entrada),
		SalidaTolerancia=dateadd(mi,@ToleranciaSalidaM*-1,Salida)
		WHERE Personal=@Personal AND Fecha=@FechaAplicacionMov


		FETCH NEXT FROM crDetalleCambioJornada INTO @Personal, @HoraEntrada, @HoraSalida, @FechaAplicacionMov
	END
	CLOSE crDetalleCambioJornada
	DEALLOCATE crDetalleCambioJornada
	END
	
END
GO
--							Sp_RegresaChecadaLibre
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_RegresaChecadaLibre') and type = 'P') 
DROP PROCEDURE dbo.Sp_RegresaChecadaLibre
GO
create Procedure dbo.Sp_RegresaChecadaLibre  
AS  
BEGIN  
	DECLARE  
	@Dia datetime,  
	@Personal varchar(10),  
	@Empresa varchar(5),  
	@EmpresaAnt varchar(5),  
	@Usuario varchar(20),  
	@Moneda varchar(20),  
	@IdMov int,  
	@renglon float  
	SET @dia=getdate()  
	SET @dia=dbo.fnFechaSinHora(@dia)  
	SET @Usuario='DEMO'  
	SELECT @EmpresaAnt = ''  
	WHILE(1=1)  
	BEGIN  
		SELECT @Empresa = MIN(Empresa)  FROM Empresa  WHERE Empresa > @EmpresaAnt  
		IF @Empresa IS NULL BREAK  
		IF EXISTS (SELECT 1  FROM personal WHERE ChecadaLibre='SI' AND Estatus='ALTA' AND ChecadaLibreFechaA<=@dia AND Empresa=@Empresa)  
		BEGIN  
			set @IdMov=null
			INSERT INTO RH  
			(Empresa, Mov, FechaEmision, UltimoCambio, Concepto, Moneda, TipoCambio, Usuario, Estatus, GenerarPoliza, Sucursal, SucursalOrigen, Observaciones)  
			VALUES  
			(@Empresa, 'Modificaciones', @dia, @dia, 'Cambio Checada libre' , 'Pesos', 1.0, @Usuario, 'SINAFECTAR', 0, 0, 0, 'Afectado por Job')  
			SET @IdMov = @@IDENTITY  

			if @IdMov is not null
			begin
	
				INSERT INTO RHD        (ID, Renglon, Personal, TipoSueldo, Categoria, SueldoDiario, SueldoDiarioComplemento, SDI, TipoContrato, VencimientoContrato, PeriodoTipo, Jornada, Departamento,  
				Puesto, Grupo, Observaciones,  FechaAlta, FechaAntiguedad, SucursalTrabajo, Sucursal, SucursalOrigen, ReportaA, CentroCostos, Incremento, Plaza,  
				ChecadaLibre, ChecadaLibreFechaD, ChecadaLibreFechaA, ChecarConTeclado)  
				SELECT @IdMov, row_number() over(order by Personal)*1024.0,Personal, TipoSueldo, Categoria, SueldoDiario, SueldoDiarioComplemento, SDI, TipoContrato, VencimientoContrato, PeriodoTipo, Jornada, Departamento,  
				Puesto, Grupo, 'Termino Entrada Libre', FechaAlta, FechaAntiguedad, SucursalTrabajo, SucursalTrabajo, SucursalTrabajo, ReportaA, CentroCostos, Incremento, Plaza,  
				'No', NULL, NULL, ChecarConTeclado  
				FROM Personal  
				WHERE ChecadaLibre='SI' AND Estatus='ALTA' AND ChecadaLibreFechaA<=@dia AND Empresa=@Empresa  
				ORDER BY personal  
 
				EXEC  spAfectar 'RH', @IdMov, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=88,@EnSilencio=1  
			end 
		END  
		SELECT @EmpresaAnt = @Empresa  
	END  
END  
GO
--EXEC Sp_RegresaChecadaLibre
