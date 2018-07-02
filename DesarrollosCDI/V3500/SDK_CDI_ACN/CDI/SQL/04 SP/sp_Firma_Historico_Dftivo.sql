SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spGenerarAsiste_H ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsiste_H') and type = 'P') drop procedure dbo.spGenerarAsiste_H
GO

CREATE PROCEDURE spGenerarAsiste_H  
      @Empresa  char(5),  
      @Personal  char(10),  
      @FechaInicial datetime,  
      @FechaFinal  datetime,    
      @Ok   int  OUTPUT,  
      @OkRef  varchar(255) OUTPUT  
--WITH ENCRYPTION  
AS BEGIN  
  DECLARE  
    @Mov  char(20),  
    @MovID  varchar(20),  
    @MovTipo  char(20),  
    @FechaEmision datetime,  
    @Concepto  varchar(50),  
    @Localidad  varchar(50),  
    @UltEntrada  datetime,  
    @UltSalida  datetime,  
    @UltLocalidad varchar(50),  
    @Registro  char(10),   -- Entrada / Salida  
    @UltimoRegistro char(10),  
    @HoraRegistro char(5),  
    @HoraD  char(5),  
    @HoraA  char(5),  
    @FechaD  datetime,  
    @FechaA  datetime,  
    @Entrada  datetime,  
    @Salida  datetime,  
    @FechaRegistro datetime,  
    @Fecha  datetime,  
     @EsNocturna  bit,  
     @PrimerRegistro varchar(50),  
     @Count int,  
     @FechaEmisionAnt datetime,  
     @IdPersonalAsiste int,  
     @RegistroAnt varchar(50),  
     @MaximoMovID varchar(20),  
     @Cont2 int  ,
      @FechaCompara	datetime
   
  
  
  
 Select @EsNocturna=j.Esnocturna   
 from personal p join   
 jornada j on p.jornada=j.jornada  
 where j.Esnocturna=1  
 and p.personal=isnull(@Personal,p.personal)  
   
   
 set @Count=1  
 set @EsNocturna =isnull(@EsNocturna,0)  
   
 --select @EsNocturna  
   
   
  SELECT @UltEntrada = NULL, @UltSalida = NULL, @UltLocalidad = NULL  
   
   
  --select *   FROM PersonalAsiste  
  SELECT @UltEntrada = MAX(Entrada)   
    FROM PersonalAsiste   
   WHERE Empresa = @Empresa AND Personal = @Personal AND Fecha < @FechaInicial  
 set   @Cont2=1  
  IF @UltEntrada IS NOT NULL  
    SELECT @UltSalida = Salida, @UltLocalidad = Localidad   
      FROM PersonalAsiste   
     WHERE Empresa = @Empresa AND Personal = isnull(@Personal,Personal) AND Fecha < @FechaInicial AND Entrada = @UltEntrada      
       
 --   if @personal='02869'  
 --   SELECT NULLIF(RTRIM(a.Mov), ''), a.MovID, mt.Clave, a.FechaEmision, NULLIF(RTRIM(d.Concepto), ''), NULLIF(RTRIM(a.Localidad), ''),   
 --NULLIF(UPPER(RTRIM(d.Registro)), ''), NULLIF(RTRIM(d.HoraRegistro), ''), NULLIF(RTRIM(d.HoraD), ''), NULLIF(RTRIM(d.HoraA), ''), d.FechaD, d.FechaA,  
 --j.EsNocturna  
 --FROM Asiste a join   
 --AsisteD d on  a.ID = d.ID join   
 --MovTipo mt on mt.mov=a.MOv and mt.Modulo = 'ASIS' join  
 --#PasoPersonalJornada z on z.Personal=d.Personal and  z.FEcha=a.FechaEmision join  
 --Jornada j on z.Jornada=j.Jornada    
 --WHERE   
 --mt.Clave IN ('ASIS.A', 'ASIS.R')              
 --AND a.Estatus IN ('PROCESAR','CONCLUIDO')  
 --AND a.Empresa = @Empresa  
 --AND ISNULL(a.FechaAplicacion, a.FechaEmision) >= @FechaInicial   
 --AND ISNULL(a.FechaAplicacion, a.FechaEmision) < case when j.EsNocturna=0 then DATEADD(day,1,@FechaFinal) else DATEADD(day,2,@FechaFinal) end  
 --AND d.Personal = @Personal  
 --ORDER BY a.FechaEmision, d.HoraRegistro, d.HoraD, d.FechaD  
  
  DECLARE crProcesar SCROLL  CURSOR FOR	
  
SELECT Mov, MovID, MovTipo, FechaEmision, Concepto, Localidad, Registro, HoraRegistro, HoraD, HoraA, FechaD, FechaA,EsNOcturna
 FROM #PasoRegistros
WHERE Personal = isnull(@Personal,personal)
         
 --DECLARE crProcesar SCROLL  CURSOR   
 --FOR   
 --SELECT NULLIF(RTRIM(a.Mov), ''), a.MovID, mt.Clave, a.FechaEmision, NULLIF(RTRIM(d.Concepto), ''), NULLIF(RTRIM(a.Localidad), ''),   
 --NULLIF(UPPER(RTRIM(d.Registro)), ''), NULLIF(RTRIM(d.HoraRegistro), ''), NULLIF(RTRIM(d.HoraD), ''), NULLIF(RTRIM(d.HoraA), ''), d.FechaD, d.FechaA,  
 --j.EsNocturna  
 --FROM Asiste a join   
 --AsisteD d on  a.ID = d.ID join   
 --MovTipo mt on mt.mov=a.MOv and mt.Modulo = 'ASIS' join  
 --#PasoPersonalJornada z on z.Personal=d.Personal and  z.FEcha=a.FechaEmision join  
 --Jornada j on z.Jornada=j.Jornada    
 --WHERE   
 --mt.Clave IN ('ASIS.A', 'ASIS.R')              
 --AND a.Estatus IN ('PROCESAR','CONCLUIDO')  
 --AND a.Empresa = @Empresa  
 --AND ISNULL(a.FechaAplicacion, a.FechaEmision) >= @FechaInicial   
 --AND ISNULL(a.FechaAplicacion, a.FechaEmision) < case when j.EsNocturna=0 then DATEADD(day,1,@FechaFinal) else DATEADD(day,2,@FechaFinal) end  
 --AND d.Personal = isnull(@Personal,d.personal)  
 --ORDER BY a.FechaEmision, d.HoraRegistro, d.HoraD, d.FechaD  
            
 set @FechaEmisionAnt=null  
 set @RegistroAnt =null  
  OPEN crProcesar  
  FETCH NEXT FROM crProcesar INTO @Mov, @MovID, @MovTipo, @FechaEmision, @Concepto, @Localidad, @Registro, @HoraRegistro, @HoraD, @HoraA, @FechaD, @FechaA,@EsNOcturna  
  WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL  
  BEGIN  
    IF @@FETCH_STATUS <> -2 AND @Ok IS NULL  
    BEGIN  
      
      
 if @Cont2=1  
    BEGIN  
  FETCH LAST FROM crProcesar INTO @Mov, @MovID, @MovTipo, @FechaEmision, @Concepto, @Localidad, @Registro, @HoraRegistro, @HoraD, @HoraA, @FechaD, @FechaA,@EsNOcturna  
  set @UltimoRegistro=@Registro  
  If @UltimoRegistro='ENTRADA' and @EsNocturna=0  
   SELECT @Ok = NULL --DBR1   
   ELSE     
   FETCH first FROM crProcesar INTO @Mov, @MovID, @MovTipo, @FechaEmision, @Concepto, @Localidad, @Registro, @HoraRegistro, @HoraD, @HoraA, @FechaD, @FechaA,@EsNOcturna  
 END        
  if  @FechaEmisionAnt<>@FechaEmision  
   set @Count=1  
  if  @Count=1  
   set @PrimerRegistro=@Registro  
  
      EXEC spExtraerFecha @FechaEmision OUTPUT  
      IF @MovTipo = 'ASIS.R'  
      BEGIN      
        SELECT @FechaRegistro = @FechaEmision  
        EXEC spAgregarHora @HoraRegistro, @FechaRegistro OUTPUT  
  
          
  IF @Registro = 'ENTRADA'   
   BEGIN   
              Set @RegistroAnt=isnull(@RegistroAnt,'*')  
     IF ((@UltEntrada IS NULL) OR (@MaximoMovID=@MovID) OR (@UltSalida IS NOT NULL AND @UltSalida < @FechaRegistro)) and (@RegistroAnt <> @Registro)  
     BEGIN  
    INSERT PersonalAsiste (Empresa, Personal, Entrada,         Localidad, Fecha)   
          VALUES (@Empresa,@Personal, @FechaRegistro,@Localidad, @FechaEmision)  
    SELECT @UltEntrada = @FechaRegistro, @UltLocalidad = @Localidad      
     END ELSE   
     if @EsNocturna=0   
      SELECT @Ok = NULL  --DBR2
  
   END ELSE  
  IF @Registro = 'SALIDA'   
   BEGIN  
     select @Localidad=isnull(@Localidad,'*') ,@UltLocalidad=isnull(@UltLocalidad,'*')    
     IF @UltEntrada IS NOT NULL AND @Localidad = @UltLocalidad  and @RegistroAnt <> @Registro  
     BEGIN  
    UPDATE PersonalAsiste SET Salida = @FechaRegistro WHERE Empresa = @Empresa AND Personal = @Personal AND Entrada = @UltEntrada  
    SELECT @UltSalida = @FechaRegistro, @UltLocalidad = @Localidad  
     END ELSE   
     if @EsNocturna=0   
      SELECT @Ok = NULL   --DBR3   
   END     
      END ELSE --aqi  
      IF @MovTipo = 'ASIS.A'  
      BEGIN  
        
   
        SELECT @FechaD = @FechaEmision, @FechaA = @FechaEmision  
        EXEC spAgregarHora @HoraD, @FechaD OUTPUT  
        EXEC spAgregarHora @HoraA, @FechaA OUTPUT         
          
          
        IF @FechaA >= @FechaD AND @FechaD IS NOT NULL AND (@FechaD > @UltEntrada OR @UltEntrada IS NULL)  
   BEGIN  
     IF @FechaA IS NOT NULL AND (@FechaA > @UltSalida OR @UltSalida IS NULL)  
     BEGIN  
    SELECT @Fecha = @FechaD  
    EXEC spExtraerFecha @Fecha OUTPUT  
    INSERT PersonalAsiste (Empresa,  Personal,  Entrada, Salida,  Localidad,  Fecha)   
          VALUES (@Empresa, @Personal, @FechaD, @FechaA, @Localidad, @Fecha)  
    SELECT @UltEntrada = @FechaD, @UltSalida = @FechaA, @UltLocalidad = @Localidad  
     END   
    ELSE      
     SELECT @Ok = NULL    --DBR 4
      
   END   
   ELSE       
    SELECT @Ok = NULL    --DBR 5  
      
      END       
       
       set @RegistroAnt=@Registro  
  set @FechaEmisionAnt=@FechaEmision  
  set   @Count=@Count+1  
  set   @Cont2=@Cont2+1  
        
        
      IF @Ok IS NOT NULL AND @OkRef IS NULL  
        SELECT @OkRef = 'Persona: '+RTRIM(@Personal)+'<BR>'+'Movimiento: '+RTRIM(@Mov)+' '+@MovID  
    END  
FETCH NEXT FROM crProcesar INTO @Mov, @MovID, @MovTipo, @FechaEmision, @Concepto, @Localidad, @Registro, @HoraRegistro, @HoraD, @HoraA, @FechaD, @FechaA,@EsNOcturna  END  -- While  
  CLOSE crProcesar  
  DEALLOCATE crProcesar  
  
  RETURN  
END  

GO

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spGenerarAsisteCorte_H ****************/
if exists (select * from sysobjects where id = object_id('dbo.spGenerarAsisteCorte_H') and type = 'P') drop procedure dbo.spGenerarAsisteCorte_H
GO


CREATE PROCEDURE spGenerarAsisteCorte_H
@Sucursal  int,    
@Empresa  char(5),    
@Usuario  char(10),    
@FechaInicial datetime,    
@FechaFinal  datetime,  
@Personal varchar(10)=null   
--//WITH ENCRYPTION    
AS BEGIN    
  
--select 'spGenerarAsisteCorte',@Personal  
  DECLARE  
    --@Personal  char(10),  
    @FechaAlta  datetime,  
    @Jornada  varchar(20),  
    @CfgToleraEntrada  int,  
    @CfgToleraSalida int,  
    @Ok   int,  
    @OkRef  varchar(255),  
    @FechaFinalVar datetime   
      
  
  SELECT @Ok = NULL, @OkRef = NULL  
  EXEC spExtraerFecha @FechaInicial OUTPUT  
  EXEC spExtraerFecha @FechaFinal OUTPUT  
  
  SELECT @CfgToleraEntrada = ISNULL(AsisteToleraEntrada, 0),  
         @CfgToleraSalida  = ISNULL(AsisteToleraSalida, 0)  
    FROM EmpresaCfg  
   WHERE Empresa = @Empresa  
  
 -- BEGIN TRANSACTION  
/*  
    DELETE PersonalAsisteDifDia WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal)  
    DELETE PersonalAsisteDifMin WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal)  
    DELETE PersonalAsisteDif    WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal)  
    DELETE PersonalAsiste       WHERE Empresa = @Empresa AND Fecha >= @FechaInicial AND Fecha < DATEADD(day, 1, @FechaFinal)  
      
      
   Select * from PersonalAsisteDifDia   
    Select * from  PersonalAsisteDifMin --where personal='02869'  
    Select * from  PersonalAsisteDif      
    Select * from  PersonalAsiste     
      
*/  
  
    TRUNCATE TABLE PersonalAsisteDifDia   
    TRUNCATE TABLE PersonalAsisteDifMin   
    TRUNCATE TABLE PersonalAsisteDif      
    TRUNCATE TABLE PersonalAsiste         
  
  
  
 DECLARE   
 @CCjFechaA datetime,  
 @CCjFecha datetime,  
 @CCJPErsonal varchar(10),  
 @CCJJornada varchar(20),  
 @CCjFechaAnt datetime,  
 @CCJPErsonalAnt varchar(10),  
 @CCJJornadaAnt varchar(20)  
  
create Table #PasoPersonalJornada   ( Id int identity, Personal varchar(10) null,Fecha DateTime null, Jornada varchar(20) null, Ano int NULL, Mes INT NULL, Dia INT NULL) 
CREATE INDEX Consulta ON #PasoPersonalJornada (Personal, Jornada)
CREATE INDEX Fecha ON #PasoPersonalJornada (Personal, Fecha)
create table #PasoCamJornadaRH		(id int identity,Mov varchar(20) null,Concepto varchar(20) null,Personal varchar(10) null,Fecha datetime null,Jornada varchar(20) null)
create table #PasoSoloPersonal		(id int identity,Personal varchar(10) null)

create table #PasoRegistros		(Mov varchar(20) NULL, MovID varchar(20) NULL, MovTipo varchar(20) NULL, FechaEmision datetime NULL, Concepto varchar(50) NULL, Localidad varchar(50) NULL, Registro varchar(10) NULL, HoraRegistro varchar(5) NULL, HoraD varchar(5) NULL, HoraA varchar(5) NULL, FechaD DATETIME NULL, FechaA DATETIME NULL, EsNOcturna BIT NULL, Personal varchar(20) NULL)


  
 --create Table #PasoPersonalJornada   ( Id int identity, Personal varchar(10) null,Fecha DateTime null, Jornada varchar(20) null)  
 --create table #PasoCamJornadaRH  (id int identity,Mov varchar(20) null,Concepto varchar(20) null,Personal varchar(10) null,Fecha datetime null,Jornada varchar(20) null)  
 --create table #PasoSoloPersonal  (id int identity,Personal varchar(10) null)  
  
 insert into #PasoSoloPersonal  
 SELECT NULLIF(RTRIM(p.Personal), '')  
 FROM Personal p, Jornada j  
 WHERE p.Jornada = j.Jornada  
 --AND p.Estatus in('ALTA')  
 AND UPPER(j.Tipo) = 'CONTROL ASISTENCIA'  
 and p.Personal=isnull(@Personal,p.Personal)  
   
insert into #PasoPersonalJornada (Personal,Fecha, Ano, Mes, dia)
select Personal,Fecha, t.Anio, t.Mes, t.Dia
from Tiempo t join #PasoSoloPersonal s  on 1=1
where fecha between @FechaInicial and @FechaFinal
group by Personal,Fecha, t.Anio, t.Mes, t.Dia 
Order by PErsonal,Fecha, t.Anio, t.Mes, t.Dia
 
  
  
 --insert into #PasoPersonalJornada (Personal,Fecha)
 --select Personal,Fecha   
 --from Tiempo t join #PasoSoloPersonal s  on 1=1  
 --where fecha between @FechaInicial and @FechaFinal  
 --group by Personal,Fecha     
 --Order by PErsonal,Fecha  
   
   
   
  
  
 insert into #PasoCamJornadaRH (Mov,Concepto,Personal,Fecha,Jornada)  
 select a.Mov,a.Concepto,b.Personal,a.FEchaEmision,b.Jornada   
 from Rh a join Rhd b on a.ID=b.id   
 where b.personal =isnull(@PErsonal,b.personal)  
 and a.Estatus='CONCLUIDO'  
 and  ((a.MOv = 'Altas') OR (a.MOV='Modificaciones'and a.Concepto='Cambio Jornada')OR (a.MOV='Cambio Jornada'and a.Concepto='Cambio Jornada'))   
 Order by b.Personal,a.FEchaEmision   
  
  
 DECLARE CurUpdateJornadaRH CURSOR FOR   
 select a.Personal,a.Fecha,a.Jornada,DateAdd(day,-1,b.Fecha)   
 from #PasoCamJornadaRH a left join   
 #PasoCamJornadaRH b on a.personal=b.personal and a.id+1=b.id  
  
 OPEN CurUpdateJornadaRH  
 FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada ,@CCjFechaA  
 WHILE @@FETCH_STATUS <> -1   
 BEGIN   
      
  select @FechaAlta=isnull(FechaAntiguedad,FechaALta) from personal where personal=ISNULL(@Personal, @CCJPErsonal)  
    
  if @CCJPErsonalAnt<>@CCJPErsonal  
  begin  
   Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha>= @FechaAlta and  Fecha < @CCjFecha  and  Personal=@CCJPErsonal  
   delete #PasoPersonalJornada where Fecha< @FechaAlta and Personal=@CCJPErsonal  
  end   
  
  if @CCjFechaA is not null  
  Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha >= @CCjFecha and Fecha <= @CCjFechaA and  Personal=@CCJPErsonal  
  else  
  Update #PasoPersonalJornada set jornada=@CCJJornada where Fecha >= @CCjFecha and Personal=@CCJPErsonal  
  
  
  select @CCjFechaAnt=@CCjFecha, @CCJPErsonalAnt=@CCJPErsonal,@CCJJornadaAnt =@CCJJornada  
 FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada,@CCjFechaA   
 END   
 CLOSE CurUpdateJornadaRH  
 DEALLOCATE CurUpdateJornadaRH  
  
 --Delete #PasoPersonalJornada where Jornada is null  
  
 Update #PasoPersonalJornada set Jornada=a.Jornada  
 from #PasoPersonalJornada z join   
 CDIJornadaTemp a on z.Personal=a.Personal and z.FEcha=a.FEchaD join  
 Jornada j on a.Jornada=j.jornada  
 where a.personal=ISNULL(@Personal, a.Personal)  
   
   
   	INSERT #PasoRegistros
	SELECT NULLIF(RTRIM(a.Mov), ''), a.MovID, mt.Clave, a.FechaEmision, NULLIF(RTRIM(d.Concepto), ''), NULLIF(RTRIM(a.Localidad), ''), 
	NULLIF(UPPER(RTRIM(d.Registro)), ''), NULLIF(RTRIM(d.HoraRegistro), ''), NULLIF(RTRIM(d.HoraD), ''), NULLIF(RTRIM(d.HoraA), ''), d.FechaD, d.FechaA,
	j.EsNocturna, d.Personal
	FROM Asiste a join 
	AsisteD d on  a.ID = d.ID join 
	MovTipo mt on mt.mov=a.MOv and mt.Modulo = 'ASIS' join
	#PasoPersonalJornada z on z.Personal=d.Personal and  z.FEcha=a.FechaEmision join
	Jornada j on z.Jornada=j.Jornada  
	WHERE 
	mt.Clave IN ('ASIS.A', 'ASIS.R')            
	AND a.Estatus IN ('PROCESAR','CONCLUIDO')
	AND a.Empresa = @Empresa
	AND ISNULL(a.FechaAplicacion, a.FechaEmision) >= @FechaInicial 
	AND ISNULL(a.FechaAplicacion, a.FechaEmision) < case when j.EsNocturna=0 then DATEADD(day,1,@FechaFinal) else DATEADD(day,2,@FechaFinal) end
	AND d.Personal = isnull(@Personal,d.personal)
	ORDER BY a.FechaEmision, d.HoraRegistro, d.HoraD, d.FechaD


   
   
--select * from #PasoPersonalJornada  
  
    DECLARE crPersonal CURSOR  
       FOR SELECT NULLIF(RTRIM(p.Personal), ''), NULLIF(RTRIM(p.Jornada), ''), p.FechaAlta  
             FROM Personal p, Jornada j  
            WHERE p.Jornada = j.Jornada  
--              AND p.Estatus = 'ALTA'  
              AND UPPER(j.Tipo) = 'CONTROL ASISTENCIA'  
              and p.Personal=isnull(@Personal,p.Personal)  
--select 'spGenerarAsisteCorte2'  
  
    OPEN crPersonal  
    FETCH NEXT FROM crPersonal INTO @Personal, @Jornada, @FechaAlta  
    WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL  
    BEGIN  
      IF @@FETCH_STATUS <> -2 AND @Ok IS NULL  
      BEGIN  
       --ok  
       --SELECT @Personal  
         
         
    set @FechaFinalVar=@FechaFinal  
         
  if @FechaAlta>@FechaFinalVar  
   set @FechaFinalVar=@FechaAlta  
     
        EXEC spGenerarAsiste_H @Empresa, @Personal, @FechaInicial, @FechaFinalVar, @Ok OUTPUT, @OkRef OUTPUT     --DBR6 
          
          
        IF @Ok IS NULL --ok  
          EXEC spGenerarAsisteAusencia @Empresa, @CfgToleraEntrada, @CfgToleraSalida, @Personal, @Jornada, @FechaAlta, @FechaInicial, @FechaFinalVar, @Ok OUTPUT, @OkRef OUTPUT  
    
        IF @Ok IS NULL --ok  
          EXEC spGenerarAsisteExtra @Empresa, @Personal, @Jornada, @FechaInicial, @FechaFinalVar, @Ok OUTPUT, @OkRef OUTPUT  
  
        IF @Ok IS NOT NULL AND @OkRef IS NULL   
          SELECT @OkRef = 'Persona: '+RTRIM(@Personal)  
            
           
      END  
      FETCH NEXT FROM crPersonal INTO @Personal, @Jornada, @FechaAlta  
    END  -- While  
    CLOSE crPersonal  
    DEALLOCATE crPersonal  
  
--SELECT * FROM PersonalAsisteDif WHERE personal='0007' AND fecha='06/05/2010'  
--SELECT * FROM PersonalAsisteDifMin  
  
    IF @Ok IS NULL  
      EXEC spGenerarAsistePermisos @Empresa, @FechaInicial, @FechaFinal, @Ok OUTPUT, @OkRef OUTPUT  
  
    IF @Ok IS NULL  
      EXEC spGenerarAsisteCorteMov @Sucursal, @Empresa, @Usuario, @FechaInicial, @FechaFinal, @Ok OUTPUT, @OkRef OUTPUT  
  
/*    IF (SELECT AsisteJornadasNocturnas FROM EmpresaCfg WHERE Empresa = @Empresa) = 1 AND @Ok IS NULL  
      EXEC spGenerarAsisteJornadasNocturnas @Empresa, @FechaFinal, @Ok OUTPUT, @OkRef OUTPUT*/  
  
  IF @Ok IS NULL  
  BEGIN  
    --COMMIT TRANSACTION  
    SELECT 'Se Genero con Exito el Corte de Asistencia'  
  END ELSE  
  BEGIN  
   -- ROLLBACK TRANSACTION  
    SELECT RTRIM(Descripcion)+'<BR>'+RTRIM(@OkRef) FROM MensajeLista WHERE Mensaje = @Ok    
  END  
    
  RETURN  
END    
  
  GO

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spRepGenerarAsisteCorte_H ****************/
if exists (select * from sysobjects where id = object_id('dbo.spRepGenerarAsisteCorte_H') and type = 'P') drop procedure dbo.spRepGenerarAsisteCorte_H
GO

  
  
  CREATE PROCEDURE spRepGenerarAsisteCorte_H
@Rep   char(15),        
@Empresa  char(5),        
@Personal  char(10),        
@Proyecto varchar(50),        
@Area varchar(50),        
@Sucursal int,        
@PeriodoTipo varchar(20),        
@Sindicato varchar(20),        
@FechaInicial datetime,        
@FechaFinal  datetime        
        
AS        
BEGIN        
 DECLARE         
          
  @Mensaje varchar(500),        
  @Id int,        
  @VacPersonal varchar(10),        
  @VacFEchad smalldatetime,        
  @VacFEchaA smalldatetime,        
  @Usuario  char(10)        
        
 SET @Usuario='DEMO'        
         
         
   IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)        
    SET @Proyecto=null        
   IF NOT EXISTS (SELECT 1 FROM Area WHERE Area=@Area)        
    SET @Area=NULL        
   IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)        
    SET @Sucursal=NULL        
   IF NOT EXISTS (SELECT 1 FROM PeriodoTipo WHERE PeriodoTipo=@PeriodoTipo)        
    SET @PeriodoTipo=NULL        
   IF NOT EXISTS (SELECT 1 FROM Personaltipo WHERE Tipo=@Sindicato)        
    SET @Sindicato=NULL        
   IF NOT EXISTS (SELECT 1 FROM Personal WHERE Personal=@Personal)        
    SET @Personal=NULL        
    --select @Personal      
         
 --CREATE TABLE #PasoVacaciones ( id int IDENTITY(1,1), Personal varchar(10) null, FechaD smalldatetime NULL, FechaA smalldatetime NULL)        
 CREATE TABLE #ResultadoCorte ( id int IDENTITY(1,1), Mensaje varchar(500) null)        
 CREATE TABLE #RepAusentismo ( idtemp int IDENTITY(1,1),        
  Empresa  varchar(5) null,        
  Mov  varchar(20) null,        
  FechaEmision smalldatetime null,        
  Usuario varchar(10) null,         
  FEchaD smalldatetime null,        
  FEchaA smalldatetime null,        
  Id int null,        
  Renglon float null,        
  Personal varchar(10) null,        
  Tipo varchar (50) null,        
  FEcha smalldatetime NULL,        
 Concepto varchar (100) NULL,        
 Cantidad int NULL,        
 Registro varchar(30) null,      
 Jornada varchar(20) null)        
       
         
         
 INSERT INTO #ResultadoCorte (Mensaje)        
 EXEC spGenerarAsisteCorte_H 0, @Empresa, @Usuario, @FechaInicial, @FechaFinal,@Personal            --DBR7
 SELECT @Mensaje=mensaje FROM #ResultadoCorte        
      
 IF @Mensaje = 'Se Genero con Exito el Corte de Asistencia'        
 BEGIN         
      
        
 SELECT TOP 1 @Id= a.id        
 FROM asiste a JOIN         
 asisteD b ON a.id=b.id        
 WHERE 1=1        
 AND a.Mov IN ('Corte','Registro')        
 AND a.Estatus='BORRADOR'        
 AND a.Usuario=@Usuario        
 AND a.Empresa=@Empresa        
 AND a.FechaD=@FechaInicial        
 --AND a.FEchaA=@FechaFinal        
 ORDER BY a.id DESC        
        
      
      
         
 INSERT INTO #RepAusentismo (Empresa,Mov,FechaEmision,Usuario,FEchaD,FEchaA,Id,Renglon,Personal,Tipo,FEcha,Concepto,Cantidad,Registro)        
 SELECT a.Empresa,a.Mov,a.FechaEmision,a.Usuario, a.FEchaD,a.FEchaA,b.Id,b.Renglon,b.Personal,b.Tipo,b.FEcha,b.Concepto,b.Cantidad,b.REgistro        
 FROM asiste a JOIN         
 asisteD b ON a.id=b.id        
 WHERE a.Id=@Id        
       
       
 --select * from #RepAusentismo      
        
 declare @CCjFechaA datetime,@CCjFecha datetime,@CCJPErsonal varchar(10),@CCJJornada varchar(20),@CCjFechaAnt datetime,@CCJPErsonalAnt varchar(10),@CCJJornadaAnt varchar(20)      
            
      create table #PasoCambiosJornada (id int identity,Personal varchar(10) null,Fecha datetime null,Jornada varchar(20) null)      
      create table #PasoCambiosJornadaD (id int identity,Personal varchar(10) null,Fecha datetime null,Jornada varchar(20) null)      
      create table #PasoRangoFechas (id int identity,Fecha datetime null)      
      create table #PasoPersonal (id int identity,Personal varchar(10) null)      
      
      insert into #PasoRangoFechas (Fecha)      
      select FEcha from tiempo where fecha between @FEchaInicial and @FechaFinal order by Fecha      
      insert into #PasoPersonal (personal)      
      select Personal from #RepAusentismo group by Personal order by Personal      
            
      insert into #PasoCambiosJornada (Personal,FEcha,Jornada)      
      select b.Personal,a.FEchaEmision,b.Jornada       
      from Rh a join Rhd b on a.ID=b.id            
      where b.personal in (select Personal from #PasoPersonal)      
      and a.Estatus='CONCLUIDO'      
  and  ((a.MOv = 'Altas') OR (a.MOV='Modificaciones'and a.Concepto='Cambio Jornada')OR (a.MOV='Cambio Jornada'and a.Concepto='Cambio Jornada'))       
      Order by b.Personal,a.FEchaEmision       
                       
      insert into #PasoCambiosJornadaD (Personal,FEcha)      
      select a.Personal,b.Fecha from #PasoPersonal a join #PasoRangoFechas b on 1=1       
      group by a.Personal,b.Fecha      
      order by a.Personal,b.Fecha      
      
      
      
    DECLARE CurUpdateJornadaRH CURSOR FOR       
     select a.Personal,a.FEcha,a.Jornada,DateAdd(day,-1,b.Fecha)       
      from #PasoCambiosJornada a left join       
      #PasoCambiosJornada b on a.personal=b.personal and a.id+1=b.id      
      where a.personal  in (select personal from #PasoCambiosJornada)      
    OPEN CurUpdateJornadaRH      
 FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada ,@CCjFechaA      
 WHILE @@FETCH_STATUS <> -1       
 BEGIN       
        
  if @CCJPErsonalAnt<>@CCJPErsonal      
   Update #PasoCambiosJornadaD set jornada=@CCJJornada where Fecha < @CCjFecha  and  Personal=@CCJPErsonal      
  if @CCjFechaA is not null      
   Update #PasoCambiosJornadaD set jornada=@CCJJornada where Fecha >= @CCjFecha and Fecha <= @CCjFechaA and  Personal=@CCJPErsonal      
  else      
   Update #PasoCambiosJornadaD set jornada=@CCJJornada where Fecha >= @CCjFecha and Personal=@CCJPErsonal      
       
  SELECT @CCjFechaAnt=@CCjFecha, @CCJPErsonalAnt=@CCJPErsonal,@CCJJornadaAnt =@CCJJornada      
  FETCH NEXT FROM CurUpdateJornadaRH INTO @CCJPErsonal,@CCjFecha ,@CCJJornada,@CCjFechaA       
 END       
 CLOSE CurUpdateJornadaRH      
 DEALLOCATE CurUpdateJornadaRH      
       
       
       
 Update #PasoCambiosJornadaD set Jornada=a.Jornada      
 from #PasoCambiosJornadaD z join       
 CDIJornadaTemp a on z.Personal=a.Personal and z.FEcha=a.FEchaD join      
 Jornada j on a.Jornada=j.jornada      
 where a.personal=isnull(@Personal,a.personal)       
        
  Update  #RepAusentismo set jornada=b.Jornada      
  from      
  #RepAusentismo a join      
  #PasoCambiosJornadaD b on a.personal=b.personal and a.FEcha=b.Fecha      
        
        
 update #RepAusentismo set Tipo=Null      
 from      
  #RepAusentismo a left join      
  jornadatiempo b on a.Fecha=b.Fecha and a.jornada=b.jornada      
  where a.Tipo='Dias Ausencia' and b.Jornada is null      
        
        
 DELETE AsisteD WHERE id=@Id        
 DELETE Asiste WHERE id=@Id         
         
   --select '#RepAusentismo',* from #RepAusentismo      
         
 IF @Rep='Faltas'        
 BEGIN        
        
  SELECT a.FechaD,a.FEchaA,a.Tipo,a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,1 AS Cantidad,a.FEcha,datename(dw,a.FEcha) CDIDia        
  --,Concepto        
  FROM #RepAusentismo a JOIN        
  personal p ON a.personal=p.Personal        
  WHERE a.Tipo='Dias Ausencia' AND concepto IS NULL         
  AND a.Empresa=@Empresa        
  AND a.FechaD BETWEEN @FechaInicial AND @FechaFinal         
  AND p.proyecto=isnull(@Proyecto,p.Proyecto)        
  AND p.Area=isnull(@Area,p.Area)        
  AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)        
  AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)        
  AND p.Tipo=isnull(@Sindicato,p.Tipo)        
  AND p.Personal=isnull(@Personal,p.Personal)          
  ORDER BY a.Personal,a.FEcha       
        
        
        
           
 END         
         
 IF @Rep='Retardos'        
 BEGIN        
  SELECT a.FechaD,a.FEchaA,a.Tipo,a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,p.departamento,1 AS Cantidad,a.FEcha,datename(dw,a.FEcha) CDIDia        
,a.Concepto,a.cantidad AS CantMin,a.Registro, CASE WHEN a.Registro='Entrada' THEN        
  (SELECT Min(b.HoraRegistro) FROM asiste z JOIN asisteD b ON z.id=b.id WHERE b.Registro='Entrada' AND z.Mov IN ('Registro')AND z.Estatus in ('PROCESAR','CONCLUIDO') AND b.Fechad=a.FEcha AND b.Personal=a.Personal)        
  ELSE        
  (SELECT Max(b.HoraRegistro) FROM asiste z JOIN asisteD b ON z.id=b.id WHERE b.Registro='Salida' AND z.Mov IN ('Registro')AND z.Estatus in ('PROCESAR','CONCLUIDO') AND b.Fechad=a.FEcha AND b.Personal=a.Personal)        
  END AS RegistroHora          
  FROM #RepAusentismo a JOIN        
  personal p ON a.personal=p.Personal        
  WHERE  a.Tipo='Minutos Ausencia'         
  AND a.Empresa=@Empresa        
  AND a.FechaD BETWEEN @FechaInicial AND @FechaFinal         
  AND p.proyecto=isnull(@Proyecto,p.Proyecto)        
  AND p.Area=isnull(@Area,p.Area)        
  AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)        
  AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)        
  AND p.Tipo=isnull(@Sindicato,p.Tipo)        
  AND p.Personal=isnull(@Personal,p.Personal)          
  ORDER BY a.Personal,a.FEcha         
  --SELECT * FROM asisteD WHERE Tipo='Minutos Ausencia'         
 END         
         
 IF @Rep IN ('Checadas','Incidencias','ChecadasFirma')        
 BEGIN        
          
  CREATE TABLE #RepChecadas (id int IDENTITY(1,1),        
  Personal varchar(10) null,        
  Fecha smalldatetime null,        
  Checada varchar (50) null,        
  Tipo varchar (50) NULL,        
  Jornada varchar(20)NULL,        
  Concepto varchar (50) NULL,)        
        
        
      
    --select '#RepAusentismo',* from #RepAusentismo  
        
  --TRUNCATE  TABLE #RepChecadas         
  INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo,Concepto)        
  SELECT a.Personal, a.FEcha, '' AS Checada,        
    CASE   WHEN Concepto  in ('Enfermedad General Inicial','Enfermedad Gral','Enfermedad General Subsecuente') THEN 'IEG'         
       WHEN Concepto  in ('Accidente Trabajo Transito','Accidente Trayecto') THEN 'IAT'         
       WHEN Concepto  in ('Accidente Trabajo','Riesgo Trabajo') THEN 'IRT'         
       WHEN Concepto  in ('Maternidad Enlace','Maternidad Posnatal','Maternidad Prenatal','Maternidad') THEN 'IMT'         
       WHEN Concepto ='Vacaciones' THEN 'VAC' end   AS TipoRegistro,Concepto            
  FROM #RepAusentismo a        
  WHERE a.Tipo in ('VAC','INC') ---------ODM 06-abril-2011  agregue 'VAC'          
      
     
  
  INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo,Concepto)        
  SELECT a.Personal, a.FEcha, '' AS Checada,        
  CASE WHEN Concepto IS NULL THEN 'FLT'         
       ELSE 'PER' END  AS TipoRegistro,Concepto        
  FROM #RepAusentismo a        
  wHERE a.Tipo in ('Dias Ausencia') and ((Concepto IS NULL) or Concepto not in ('Festivo','Descanso'))      
          
  
 INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo,Concepto)        
  SELECT a.Personal, a.FEcha, '' AS Checada,        
  CASE WHEN Concepto IS NULL THEN 'FLT'         
       ELSE 'PER' END  AS TipoRegistro,Concepto        
  FROM #RepAusentismo a        
  wHERE Concepto  in ('Festivo','Descanso')              
      
          
  INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo)        
  SELECT b.Personal,b.FEchaD,b.HoraRegistro, b.Registro        
  FROM Asiste a JOIN         
  asisteD b ON a.id=b.id        
  WHERE Mov='Registro'        
  AND a.Estatus IN ('PROCESAR','CONCLUIDO')        
  --AND b.FEchaD BETWEEN @FechaInicial AND @FechaFinal        
    AND b.FEchaD >= CONVERT(DATETIME,@FechaInicial,103)         
    AND b.FechaD < CONVERT(DATETIME,@FechaFinal,103)+1       
   and  b.Personal=isnull(@Personal,b.Personal)       
 ORDER BY b.Personal, b.FechaD, b.Registro            
          
   -- select '#RepChecadas',* from #RepChecadas      
          
  --Actualiza Jornadad de personal        
  UPDATE #RepChecadas SET Jornada=b.Jornada        
  FROM #RepChecadas a JOIN        
  Personal b ON a.personal=b.Personal        
  --Actualiza Jornadad Temporales        
  UPDATE #RepChecadas SET Jornada=b.Jornada         
  FROM #RepChecadas a JOIN        
  CDIJornadaTemp b ON a.personal=b.Personal AND a.FEcha=b.FEchaD  JOIN        
  Jornada c ON b.jornada=c.Jornada        
  --WHERE b.FEchaD BETWEEN @FechaInicial AND @FechaFinal         
  AND a.Fecha >= @FechaInicial AND a.Fecha < CONVERT(DATETIME,@FechaFinal,103)+1                
          
          
  IF @Rep IN ('Checadas','ChecadasFirma')        
  BEGIN       
      
            
   TRUNCATE TABLE PasoRepPersonalFirma        
   IF @Rep='ChecadasFirma'         
   begin        
        
      
  
        
    INSERT INTO   PasoRepPersonalFirma   ( Concepto,personal, Nombre, ApellidoPaterno, ApellidoMaterno, Departamento, CDIDia, Fecha, Checada, Tipo, Jornada, ReportaA)        
    SELECT a.Concepto,a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,p.Departamento, datename(dw,a.FEcha) AS CDIDia,a.Fecha,a.Checada,a.Tipo,g.jornada,p.ReportaA        
    FROM #RepChecadas a JOIN        
    personal p ON a.personal=p.Personal  join      
    #PasoCambiosJornadaD g on a.personal=g.Personal and a.Fecha=g.Fecha      
    ORDER BY a.Personal,a.Fecha      
          
            
   -- select 'aq', * from PasoRepPersonalFirma      
       
 --select * from PasoRepPersonalFirma      
    TRUNCATE TABLE CDIRetardos        
            
    INSERT INTO CDIRetardos (Personal,Fecha,Tipo,Concepto)        
    SELECT Personal,Fecha,Tipo,Concepto         
      FROM #RepAusentismo        
    WHERE tipo IN ('Minutos Ausencia','VAC')        
    GROUP BY Personal,Fecha ,Tipo,Concepto        
        
   END            
   ELSE        
     Begin      
      
       
  SELECT a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,p.Departamento, datename(dw,a.FEcha) AS CDIDia,a.Fecha,a.Checada,a.Tipo, a.Concepto,      
  (select JOrnada from #PasoCambiosJornadaD rd where rd.personal=a.personal and rd.Fecha=dbo.FnFechaSinHora(a.Fecha)) as Jornada,      
  p.ReportaA        
  FROM #RepChecadas a JOIN        
  personal p ON a.personal=p.Personal       
  where 1=1        
  AND p.Empresa=@Empresa        
  AND a.Fecha >= @FechaInicial AND a.Fecha < CONVERT(DATETIME,@FechaFinal,103)+1                
  AND isnull(p.proyecto,'')=isnull(@Proyecto,p.Proyecto)        
  AND isnull(p.Area,'')=isnull(@Area,p.Area)        
  AND isnull(p.SucursalTRabajo,0)=isnull(@Sucursal,p.SucursalTRabajo)        
  AND isnull(p.PeriodoTipo,'')=isnull(@PeriodoTipo,p.PeriodoTipo)        
  AND isnull(p.Tipo,'')=isnull(@Sindicato,p.Tipo)        
  AND isnull(p.Personal,'')=isnull(@Personal,p.Personal)      
  ORDER BY a.Personal ,a.Fecha ,a.Checada       
    end         
  END         
          
            
        
  IF  @Rep IN ('Incidencias')        
  BEGIN        
   CREATE TABLE #ResumenIncidencias (id int IDENTITY(1,1),Personal varchar(10) NULL, Asistencias int NULL DEFAULT 0,Faltas int NULL  DEFAULT 0,CantRetardos int NULL  DEFAULT 0,        
   TiempoRetardo varchar(50) NULL DEFAULT '000:00',TiempoNormal varchar(50) NULL  DEFAULT '000:00',TiempoExtra varchar(50)  DEFAULT '000:00')       --se agrego "0" DBR    
          
   INSERT INTO #ResumenIncidencias (Personal)        
   SELECT Personal         
   FROM #RepChecadas         
   WHERE  Fecha BETWEEN @FechaInicial AND @FechaFinal        
   GROUP BY Personal         
   ORDER BY personal        
           
   --SELECT * FROM #RepAusentismo WHERE Tipo='Minutos Ausencia'        
           
   --SELECT Personal,Count(*) AS Cantidad,LEFT('0'+CONVERT(varchar(2),Sum(isnull(Cantidad,0))/60),2)+':'+LEFT('0'+CONVERT(varchar(2),Sum(isnull(Cantidad,0))%60),2) AS TiempoRetardo        
   --FROM #RepAusentismo        
   --WHERE Tipo='Minutos Ausencia'        
   --GROUP BY Personal        
           
   --  SELECT Personal,Count(*) AS Cantidad,Right('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoRetardo        
   --FROM #RepAusentismo        
   --WHERE Tipo='Minutos Ausencia'        
   --GROUP BY Personal      
           
   UPDATE #ResumenIncidencias SET TiempoRetardo=x.TiempoRetardo,CantREtardos =x.Cantidad        
   FROM #ResumenIncidencias a  JOIN        
   (SELECT Personal,Count(*) AS Cantidad,Right('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoRetardo        
   FROM #RepAusentismo        
   WHERE Tipo='Minutos Ausencia'        
   GROUP BY Personal) x ON a.PErsonal=x.Personal        
         
   --  SELECT Personal,Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),2),Right('0'+CONVERT(varchar(2),Sum(isnull(Cantidad,0))/60),2)+':'+Right('0'+CONVERT(varchar(2),Sum(isnull(Cantidad,0))%60),2) AS TiempoNormal        
   --FROM #RepAusentismo        
   --WHERE Tipo='Minutos Asistencia'        
   --GROUP BY Personal      
         
           
   UPDATE #ResumenIncidencias SET TiempoNormal=x.TiempoNormal         
   FROM #ResumenIncidencias a  JOIN        
   (SELECT Personal,Right('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoNormal        
   FROM #RepAusentismo        
   WHERE Tipo='Minutos Asistencia'        
   GROUP BY Personal) x ON a.PErsonal=x.Personal        
           
   UPDATE #ResumenIncidencias SET TiempoExtra=x.TiempoExtra         
   FROM #ResumenIncidencias a  JOIN        
   (SELECT Personal,LEFT('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+LEFT('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoExtra        
   FROM #RepAusentismo        
   WHERE Tipo='Minutos Extras'        
   GROUP BY Personal) x ON a.PErsonal=x.Personal        
           
           
   /*********/           
   UPDATE #ResumenIncidencias SET TiempoExtra=x.TiempoExtra         
   FROM #ResumenIncidencias a  JOIN         
   (        
   SELECT Personal,right(('000'+Convert(varchar(5),Sum(Extra)/60)),3)+':'+right(('00'+Convert(varchar(5),Sum(Extra)%60)),2) AS TiempoExtra         
   FROM PersonalAsisteDifMin         
   WHERE Extra>0 ---and        
   --Fecha BETWEEN @FechaInicial AND @FechaFinal        
      group by Personal        
   ) x ON a.PErsonal=x.Personal         
           
           
           
   UPDATE #ResumenIncidencias SET AsisTencias=x.Asistencias ,Faltas=x.CAntidad        
   FROM #ResumenIncidencias a  JOIN        
   (SELECT a.Personal,DateDiff(day,@FechaInicial,@FechaFinal)+1-Count(*) Asistencias,Count(*) AS CAntidad            
    FROM #RepChecadas a JOIN        
   personal p ON a.personal=p.Personal        
   WHERE a.Tipo='FLT'          
   GROUP BY  a.Personal) x ON a.PErsonal=x.Personal        
           
   UPDATE #ResumenIncidencias SET AsisTencias=DateDiff(day,@FechaInicial,@FechaFinal)+1         
   WHERE AsisTencias=0 AND Faltas=0        
           
            
   SELECT a.*,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno         
   FROM #ResumenIncidencias a JOIN personal p ON a.personal=p.Personal        
   WHERE  p.Empresa=@Empresa          
   AND p.proyecto=isnull(@Proyecto,p.Proyecto)        
   AND p.Area=isnull(@Area,p.Area)        
   AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)        
   AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)        
   AND p.Tipo=isnull(@Sindicato,p.Tipo)        
   AND p.Personal=isnull(@Personal,p.Personal)          
   ORDER BY a.Personal        
  END         
 END        
 END        
 ELSE        
   SELECT @Mensaje '@Mensaje'        
          
END   

GO


SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spCDINomRepPersonalFirma_H ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDINomRepPersonalFirma_H') and type = 'P') drop procedure dbo.spCDINomRepPersonalFirma_H
GO


CREATE  PROCEDURE spCDINomRepPersonalFirma_H    
@Empresa  char(5),      
@Personal  char(10),      
@Proyecto varchar(50),      
@Area varchar(50),      
@Sucursal int,      
@PeriodoTipo varchar(20),      
@Sindicato varchar(20),      
@FechaInicial datetime,      
@FechaFinal  datetime      
AS      
BEGIN      
       
EXEC spRepGenerarAsisteCorte_H 'ChecadasFirma',@Empresa,@Personal,@Proyecto,@Area,@Sucursal,@PeriodoTipo,@Sindicato,@FechaInicial,@FechaFinal          --DBR8
      
 IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)      
  SET @Proyecto=null      
 IF NOT EXISTS (SELECT 1 FROM Area WHERE Area=@Area)      
  SET @Area=NULL      
   IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)      
  SET @Sucursal=NULL      
   IF NOT EXISTS (SELECT 1 FROM PeriodoTipo WHERE PeriodoTipo=@PeriodoTipo)      
  SET @PeriodoTipo=NULL      
   IF NOT EXISTS (SELECT 1 FROM PersonalTipo WHERE Tipo=@Sindicato)      
  SET @Sindicato=NULL      
    IF NOT EXISTS (SELECT 1 FROM Personal WHERE Personal=@Personal)      
  SET @Personal=NULL      
      
      
  delete  PasoRepPersonalFirma where Concepto in ('Descanso','Festivo')  
      
      
 CREATE TABLE #pasoFestDescFinal (Personal varchar(10) null,FEcha datetime NULL,Tipo varchar(30) NULL,Jornada varchar(50) NULL)      
 CREATE TABLE #pasoFestDesc (Personal varchar(10) null,FEcha datetime NULL,Tipo varchar(30) NULL,Jornada varchar(50) NULL)      
       
 DECLARE @CurPeronal varchar(10)      
       
 DECLARE ImpuestoEstatalCur CURSOR FOR       
    SELECT personal FROM PasoRepPersonalFirma      
    GROUP BY personal      
    OPEN ImpuestoEstatalCur      
 FETCH NEXT FROM ImpuestoEstatalCur INTO @CurPeronal      
 WHILE @@FETCH_STATUS <> -1       
 BEGIN       
        
         
    
      
 INSERT INTO #pasoFestDesc (Personal ,FEcha ,Jornada)      
 SELECT a.Personal,b.Fecha ,p.jornada      
 FROM PasoRepPersonalFirma a JOIN       
 Tiempo b ON 1=1 JOIN      
 Personal p ON a.personal=p.personal      
 WHERE b.Fecha BETWEEN @FechaInicial AND @FechaFinal       
 AND b.Fecha NOT IN (SELECT Fecha FROM PasoRepPersonalFirma WHERE Personal=@CurPeronal)       
 AND a.Personal=@CurPeronal      
 AND b.Fecha >= ISNULL(FechaAntiguedad, FechaAlta) --BEGM 20120118. Solo muestre Descansos despues de su fecha de Ingreso  
 GROUP BY a.Personal,b.Fecha ,p.jornada      
      
--SELECT * FROM #pasoFestDesc      
      
 UPDATE #pasoFestDesc SET Tipo ='FVO'      
 FROM #pasoFestDesc a JOIN       
 diafestivo b ON a.FEcha=b.FEcha      
 WHERE b.Eslaborable=0      
 AND Tipo IS NULL      
      
 UPDATE #pasoFestDesc SET Tipo ='FVO'      
 FROM #pasoFestDesc a JOIN       
 Jornadadiafestivo b ON a.Fecha=b.Fecha AND a.Jornada=b.Jornada      
 WHERE b.Eslaborable=0      
 AND Tipo IS NULL      
       
 --DELETE #pasoFestDesc WHERE fecha NOT IN (SELECT Fecha FROM PasoRepPersonalFirma WHERE Personal=@CurPeronal)       
       
 UPDATE #pasoFestDesc set Tipo ='DES' WHERE Tipo IS null      
       
      
  FETCH NEXT FROM ImpuestoEstatalCur INTO @CurPeronal      
 END       
 CLOSE ImpuestoEstatalCur      
 DEALLOCATE ImpuestoEstatalCur      
      
 --DELETE #pasoFestDesc      
 --SELECT * FROM #pasoFestDesc      
       
      
 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo AS PersonalTipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,      
 p.Personal,a.Fecha,a.Tipo,'' AS REgistro,datename(dw,a.Fecha) AS CDIDia      
 FROM #pasoFestDesc a JOIN       
 personal p ON p.Personal=a.Personal      
 WHERE 1=1       
 --AND a.Fecha BETWEEN @FechaInicial AND @FechaFinal       
 AND a.FEcha >= CONVERT ( DATETIME, @FechaInicial, 103)      
 AND a.FEcha< CONVERT ( DATETIME,@FechaFinal,103)+1      
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)      
 AND p.Area=isnull(@Area,p.Area)      
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)      
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)      
 AND p.Tipo=isnull(@Sindicato,p.Tipo)       
 AND p.Personal=isnull(@Personal,p.Personal)       
 UNION ALL       
 SELECT p.Proyecto,p.Area,p.SucursalTRabajo,p.PeriodoTipo,p.Tipo AS PersonalTipo,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,      
 p.Personal,a.Fecha,a.Tipo,a.Checada AS REgistro,datename(dw,a.Fecha) AS CDIDia      
 FROM PasoRepPersonalFirma a JOIN       
 personal p ON p.Personal=a.Personal      
 WHERE 1=1       
 --AND a.Fecha BETWEEN @FechaInicial AND @FechaFinal       
 AND a.FEcha >= CONVERT ( DATETIME, @FechaInicial, 103)      
 AND a.FEcha< CONVERT ( DATETIME,@FechaFinal,103)+1      
 AND p.proyecto=isnull(@Proyecto,p.Proyecto)      
 AND p.Area=isnull(@Area,p.Area)      
 AND p.SucursalTRabajo=isnull(@Sucursal,p.SucursalTRabajo)      
 AND p.PeriodoTipo=isnull(@PeriodoTipo,p.PeriodoTipo)      
 AND p.Tipo=isnull(@Sindicato,p.Tipo)       
 AND p.Personal=isnull(@Personal,p.Personal)       
 ORDER BY p.Personal, a.Fecha  ,REgistro    
       
       
       
      
      
END      

GO

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spCDINomRepPersonalRelAsist_H ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDINomRepPersonalRelAsist_H') and type = 'P') drop procedure dbo.spCDINomRepPersonalRelAsist_H
GO

 
  
  CREATE PROCEDURE spCDINomRepPersonalRelAsist_H
@Empresa  char(5),    
@Personal  char(10),    
@Proyecto varchar(50),    
@Area varchar(50),    
@Sucursal int,    
@PeriodoTipo varchar(20),    
@Sindicato varchar(20),    
@FechaInicial datetime,    
@FechaFinal  datetime    
AS    
BEGIN    
     
 DECLARE @PersonalNom varchar(20),    
 @FechaMov datetime,    
 @FechaAsis datetime,    
 @Minutos int    
 IF @Personal='Nom'    
  SET @PersonalNom='Nom'    
      
    
 IF NOT EXISTS (SELECT 1 FROM proy WHERE proyecto=@Proyecto)    
  SET @Proyecto=null    
 IF NOT EXISTS (SELECT 1 FROM Area WHERE Area=@Area)    
  SET @Area=NULL    
 IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)    
  SET @Sucursal=NULL    
 IF NOT EXISTS (SELECT 1 FROM PeriodoTipo WHERE PeriodoTipo=@PeriodoTipo)    
  SET @PeriodoTipo=NULL    
 IF NOT EXISTS (SELECT 1 FROM PersonalTipo WHERE Tipo=@Sindicato)    
  SET @Sindicato=NULL    
 IF NOT EXISTS (SELECT * FROM Personal WHERE Personal=@Personal)    
  SET @Personal=NULL    
    
 EXEC spRepGenerarAsisteCorte_H 'ChecadasFirma',@Empresa,@Personal,@Proyecto,@Area,@Sucursal,@PeriodoTipo,@Sindicato, @FechaInicial,@FechaFinal    --DBR9
  
 CREATE TABLE #PasoPerFechas (id int IDENTITY(1,1),  personal varchar(10) NULL,Fecha datetime NULL, Tipo varchar(30) NULL,Observaciones varchar(50) NULL,Jornada varchar(20) null)    
  
--update   
--from   
--PasoRepPersonalFirma a   left join  
--jornadatiempo b on a.Jornada=b.Jornada and a.Fecha=b.Fecha  
--where a.Tipo='FLT'  
--and b.Jornada is null  
  
  
--select *    
--from   
--PasoRepPersonalFirma a   left join  
--jornadatiempo b on a.Jornada=b.Jornada and a.Fecha=b.Fecha  
--where a.Tipo='FLT'  
--and b.Jornada is null  
  
  
  
     
 INSERT INTO #PasoPerFechas (personal,Jornada,Fecha)    
 select a.Personal,a.Jornada,a.FEcha   
 from PasoRepPersonalFirma a   
 group by a.Personal,a.Jornada,a.FEcha  
 order by a.Personal,a.FEcha  
  
    
--select * from PasoRepPersonalFirma  
  
  
     
 UPDATE #PasoPerFechas SET Tipo =b.Tipo,Observaciones=b.Concepto    
 FROM #PasoPerFechas a JOIN     
 PasoRepPersonalFirma b ON ltrim(rtrim(a.personal))=ltrim(rtrim(b.Personal)) AND a.FEcha=b.FEcha    
 WHERE b.Tipo IN ('FLT','IEG','IAT','IRT','IMT','VAC','PER','INC')    
  
  
  
update #PasoPerFechas set Tipo=Null  
from   
#PasoPerFechas  a left join  
Jornadatiempo b on a.jornada=b.jornada and a.fecha=b.fecha  
where b.jornada is null  
 --select 'Tipo IS NULL ',* from  #PasoPerFechas WHERE Tipo IS NULL   
  
 DECLARE @cid int,@cPersonal varchar(10),@cFecha datetime,@cJornada varchar(20)    
 DECLARE Curretardos CURSOR FOR     
    SELECT id,Personal,FEcha,Jornada     
    FROM #PasoPerFechas WHERE Tipo IS NULL     
        
    OPEN Curretardos    
 FETCH NEXT FROM Curretardos INTO @cid,@cPersonal,@cFEcha,@cJornada    
 WHILE @@FETCH_STATUS <> -1     
  BEGIN     
       
   IF NOT EXISTS (SELECT * FROM jornadaTiempo WHERE Fecha=@cFEcha AND jornada=@cJornada )    
   BEGIN    
     
    UPDATE #PasoPerFechas SET Tipo='DES' WHERE id=@cid     
      
    IF EXISTS (SELECT 1    
    FROM AsisteD d, Asiste a       
    WHERE a.ID           = d.ID       
    AND d.FEchaD= @cFEcha     
    AND Personal       = @cPersonal      
    AND UPPER(REGISTRO)= 'ENTRADA'       
    AND UPPER(Mov)     = 'Labora Descanso'     
    AND a.Estatus IN ('borrador','procesar','Concluido'))     
    AND     
    EXISTS (SELECT 1     
    FROM AsisteD d, Asiste a       
    WHERE a.ID           = d.ID       
    AND FechaEmision      = @cFEcha     
    AND Personal       = @cPersonal      
    AND UPPER(REGISTRO)= 'ENTRADA'       
    AND UPPER(Mov)     = 'REGISTRO'     
    AND a.Estatus IN ('procesar','Concluido'))    
    BEGIN    
     UPDATE #PasoPerFechas SET Tipo='LAD' WHERE id=@cid    
    
     SELECT  @FechaMov= NULL,@FechaAsis=NULL        
    
    
     SELECT @FechaMov=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)     
     FROM AsisteD d, Asiste a       
     WHERE a.ID           = d.ID       
     AND d.FEchaD= @cFEcha     
     AND Personal       = @cPersonal      
     AND UPPER(REGISTRO)= 'ENTRADA'       
     AND UPPER(Mov)     = 'Labora Descanso'     
     AND a.Estatus IN ('borrador','procesar','Concluido')    
    
     SELECT  @FechaAsis=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraRegistro + ':00', 126)      
     FROM AsisteD d, Asiste a       
     WHERE a.ID           = d.ID       
     AND FechaEmision      = @cFEcha     
     AND Personal       = @cPersonal      
     AND UPPER(REGISTRO)= 'ENTRADA'       
     AND UPPER(Mov)     = 'REGISTRO'     
     AND a.Estatus IN ('procesar','Concluido')    
    
     --CREATE TABLE CDINomRetardosFestDesc (Id int IDENTITY(1,1),Personal varchar(30) NULL, Fecha datetime NULL,CAntidad int null)    
     --SELECT 'aquinas',datediff(mi, @FechaMov,@FechaAsis), @FechaAsis,@FechaMov    
     SET @Minutos=datediff(mi, @FechaMov,@FechaAsis)    
     IF @Minutos>0    
     BEGIN    
      INSERT INTO CDINomRetardosFestDesc (Personal,Fecha,Cantidad)    
      SELECT @cPersonal,@cFEcha, CASE WHEN @Minutos>0 AND @Minutos<=30 THEN 1     
      WHEN @Minutos>30 AND @Minutos<=60 THEN 2    
      WHEN @Minutos>60 AND @Minutos<=90 THEN 3    
      WHEN @Minutos>90 AND @Minutos<=120 THEN 4    
      WHEN @Minutos>120 AND @Minutos<=150 THEN 5    
      WHEN @Minutos>150  THEN 6 END     
    
     END    
    END     
    
    IF EXISTS (SELECT 1     
    FROM AsisteD d, Asiste a       
    WHERE a.ID           = d.ID       
    AND d.FEchaD   = @cFEcha     
    AND Personal       = @cPersonal      
    AND UPPER(REGISTRO)= 'ENTRADA'       
    AND UPPER(Mov)     = 'Labora Festivo'     
    AND a.Estatus IN ('borrador','procesar','Concluido'))     
    AND     
    Exists (SELECT 1     
    FROM AsisteD d, Asiste a       
    WHERE a.ID           = d.ID       
    AND FechaEmision   = @cFEcha     
    AND Personal       = @cPersonal      
    AND UPPER(REGISTRO)= 'ENTRADA'       
    AND UPPER(Mov)     = 'REGISTRO'     
    AND a.Estatus IN ('procesar','Concluido'))    
    BEGIN     
     UPDATE #PasoPerFechas SET Tipo='LAF' WHERE id=@cid         
    
     SELECT  @FechaMov= NULL,@FechaAsis=NULL    
    
     SELECT @FechaMov=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraD + ':00', 126)     
     FROM AsisteD d, Asiste a       
     WHERE a.ID           = d.ID       
     AND d.FEchaD   = @cFEcha     
     AND Personal       = @cPersonal      
     AND UPPER(REGISTRO)= 'ENTRADA'       
     AND UPPER(Mov)     = 'Labora Festivo'     
     AND a.Estatus IN ('borrador','procesar','Concluido')    
    
     SELECT  @FechaAsis=CONVERT(datetime, LEFT(CONVERT(varchar, FechaEmision, 126), 10) + 'T' + HoraRegistro + ':00', 126)      
     FROM AsisteD d, Asiste a       
     WHERE a.ID           = d.ID       
     AND FechaEmision      = @cFEcha     
     AND Personal       = @cPersonal      
     AND UPPER(REGISTRO)= 'ENTRADA'       
     AND UPPER(Mov)     = 'REGISTRO'     
     AND a.Estatus IN ('procesar','Concluido')    
    
     --CREATE TABLE CDINomRetardosFestDesc (Id int IDENTITY(1,1),Personal varchar(30) NULL, Fecha datetime NULL,CAntidad int null)    
     --SELECT @FechaAsis,@FechaMov    
     SET @Minutos=datediff(mi, @FechaMov,@FechaAsis)    
     IF @Minutos>0    
     BEGIN    
      INSERT INTO CDINomRetardosFestDesc (Personal,Fecha,Cantidad)    
      SELECT @cPersonal,@cFEcha, CASE WHEN @Minutos>0 AND @Minutos<=30 THEN 1     
      WHEN @Minutos>30 AND @Minutos<=60 THEN 2    
      WHEN @Minutos>60 AND @Minutos<=90 THEN 3    
      WHEN @Minutos>90 AND @Minutos<=120 THEN 4    
      WHEN @Minutos>120 AND @Minutos<=150 THEN 5    
      WHEN @Minutos>150  THEN 6 END    
     END    
    END     
   ELSE    
    BEGIN    
     IF EXISTS (SELECT fecha FROM diafestivo WHERE Eslaborable=0 AND FEcha=@cFEcha)    
      UPDATE #PasoPerFechas SET Tipo ='FVO',Observaciones=b.Concepto    
      FROM #PasoPerFechas a JOIN     
      diafestivo b ON a.FEcha=b.FEcha    
      WHERE b.Eslaborable=0    
      AND id=@cid    
    IF EXISTS (SELECT fecha FROM Jornadadiafestivo WHERE Eslaborable=0 AND FEcha=@cFEcha)    
      UPDATE #PasoPerFechas SET Tipo ='FVO',Observaciones=b.Concepto    
      FROM #PasoPerFechas a JOIN     
      Jornadadiafestivo b ON a.Fecha=b.Fecha AND a.Jornada=b.Jornada    
      WHERE b.Eslaborable=0    
      AND id=@cid    
    END    
   END    
  FETCH NEXT FROM Curretardos INTO @cid,@cPersonal,@cFEcha,@cJornada    
 END     
 CLOSE Curretardos    
 DEALLOCATE Curretardos    
    
 UPDATE #PasoPerFechas SET tipo=CASE WHEN b.Tipo='VAC'THEN 'VAC' ELSE 'RET' END ,observaciones=b.concepto    
 FROM #PasoPerFechas a JOIN CDIRetardos b ON a.personal=b.personal AND a.fecha=b.FEcha    
     
 UPDATE #PasoPerFechas SET tipo='Ok', Observaciones =''    
 WHERE Tipo IS null     
     
 --SELECT * FROM PasoRepPersonalFirma     
 --SELECT * FROM PasoRepPersonalFirma    
     
     
     
 UPDATE #PasoPerFechas SET Observaciones=isnull(Observaciones,'')    
     
     
 IF @PersonalNom='Nom'    
 BEGIN    
  TRUNCATE TABLE PasoPerFechas    
  INSERT INTO PasoPerFechas (personal, Fecha, Tipo, Observaciones, Jornada)    
  SELECT  personal, Fecha, Tipo, Observaciones, Jornada FROM #PasoPerFechas     
      
 END    
 ELSE    
  SELECT a.id, a.personal, a.Fecha, a.Tipo, a.Observaciones, a.Jornada,datename(dw,a.Fecha) AS CDIDia,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno      
  FROM #PasoPerFechas a JOIN personal p ON a.personal=p.personal    
  ORDER BY a.Personal,a.FEcha    
    
END    
  GO