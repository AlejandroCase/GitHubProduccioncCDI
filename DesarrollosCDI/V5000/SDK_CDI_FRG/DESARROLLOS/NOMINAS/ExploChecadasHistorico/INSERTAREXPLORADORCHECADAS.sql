select estatus,bajadefuncion,titular,socio,descripcion13,* from cte where membresia =9881
select * from CDIExp.dbo.CDIHistoricoAsiste

update cte set descripcion13 ='No'where cliente='0988100'

select cliente,socio,bajadefuncion, Estatus,descripcion13 from Cte where cliente in (select cliente from cdisocio where mov='Baja defuncion' and estatus ='Concluido') and estatus='Alta'
select cliente,* from cdisocio where estatus ='Concluido' and cliente='0691300'order by fechaemision desc

exec spRepGenerarAsisteCorte_Historico 'Checadas','CDI','NULL','NULL','NULL',NULL,'NULL','NULL','19/09/2017','19/09/2017'






SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
go
    
ALTER PROCEDURE spRepGenerarAsisteCorte_Historico      
@Rep   char(15),      @Empresa  char(5),        
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
EXEC spGenerarAsisteCorte_H 0, @Empresa, @Usuario, @FechaInicial, @FechaFinal,@Personal                    
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
ORDER BY a.id DESC        
INSERT INTO #RepAusentismo (Empresa,Mov,FechaEmision,Usuario,FEchaD,FEchaA,Id,Renglon,Personal,Tipo,FEcha,Concepto,Cantidad,Registro)        
SELECT a.Empresa,a.Mov,a.FechaEmision,a.Usuario, a.FEchaD,a.FEchaA,b.Id,b.Renglon,b.Personal,b.Tipo,b.FEcha,b.Concepto,b.Cantidad,b.REgistro        
FROM asiste a JOIN        
asisteD b ON a.id=b.id        
WHERE a.Id=@Id        
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
IF @Rep='Faltas'        
BEGIN        
SELECT a.FechaD,a.FEchaA,a.Tipo,a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,1 AS Cantidad,a.FEcha,datename(dw,a.FEcha) CDIDia        
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
INSERT INTO #RepChecadas (Personal,FEcha,Checada,Tipo,Concepto)        
SELECT a.Personal, a.FEcha, '' AS Checada,        
CASE   WHEN Concepto  in ('Enfermedad General Inicial','Enfermedad Gral','Enfermedad General Subsecuente') THEN 'IEG'        
WHEN Concepto  in ('Accidente Trabajo Transito','Accidente Trayecto') THEN 'IAT'        
WHEN Concepto  in ('Accidente Trabajo','Riesgo Trabajo') THEN 'IRT'        
WHEN Concepto  in ('Maternidad Enlace','Maternidad Posnatal','Maternidad Prenatal','Maternidad') THEN 'IMT'        
WHEN Concepto ='Vacaciones' THEN 'VAC' end   AS TipoRegistro,Concepto        
FROM #RepAusentismo a        
WHERE a.Tipo in ('VAC','INC')         
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
AND b.FEchaD >= CONVERT(DATETIME,@FechaInicial,103)        
AND b.FechaD < CONVERT(DATETIME,@FechaFinal,103)+1        
and  b.Personal=isnull(@Personal,b.Personal)        
ORDER BY b.Personal, b.FechaD, b.Registro        
UPDATE #RepChecadas SET Jornada=b.Jornada        
FROM #RepChecadas a JOIN        
Personal b ON a.personal=b.Personal        
UPDATE #RepChecadas SET Jornada=b.Jornada        
FROM #RepChecadas a JOIN        
CDIJornadaTemp b ON a.personal=b.Personal AND a.FEcha=b.FEchaD  JOIN        
Jornada c ON b.jornada=c.Jornada        
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
TRUNCATE TABLE CDIRetardos        
INSERT INTO CDIRetardos (Personal,Fecha,Tipo,Concepto)        
SELECT Personal,Fecha,Tipo,Concepto        
FROM #RepAusentismo        
WHERE tipo IN ('Minutos Ausencia','VAC')        
GROUP BY Personal,Fecha ,Tipo,Concepto        
END        
ELSE        
Begin        


INSERT INTO CDIExp.dbo.CDIHistoricoAsiste (Personal,Nombre,ApellidoPaterno,ApellidoMaterno,Departamento,CDIDia,Fecha,Checada,Tipo,Concepto,Jornada,ReportaA 
							,TNomina,CategoriaTipo,Puesto,TipoContrato,PeriodoTipo,Estatus,Sindicato,Proyecto)



SELECT a.Personal,p.Nombre,p.ApellidoPaterno,p.ApellidoMaterno,p.Departamento, datename(dw,a.FEcha) AS CDIDia,a.Fecha,a.Checada,a.Tipo, a.Concepto,        
(select JOrnada from #PasoCambiosJornadaD rd where rd.personal=a.personal and rd.Fecha=dbo.FnFechaSinHora(a.Fecha)) as Jornada,        
p.ReportaA,p.tipo,p.categoria,p.puesto,p.tipocontrato,p.periodotipo,p.estatus,p.Sindicato,p.Proyecto              
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
TiempoRetardo varchar(50) NULL DEFAULT '000:00',TiempoNormal varchar(50) NULL  DEFAULT '000:00',TiempoExtra varchar(50)  DEFAULT '000:00')               
INSERT INTO #ResumenIncidencias (Personal)        
SELECT Personal        
FROM #RepChecadas        
WHERE  Fecha BETWEEN @FechaInicial AND @FechaFinal        
GROUP BY Personal        
ORDER BY personal        
UPDATE #ResumenIncidencias SET TiempoRetardo=x.TiempoRetardo,CantREtardos =x.Cantidad        
FROM #ResumenIncidencias a  JOIN        
(SELECT Personal,Count(*) AS Cantidad,Right('000'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))/60),3)+':'+Right('0'+CONVERT(varchar(5),Sum(isnull(Cantidad,0))%60),2) AS TiempoRetardo        
FROM #RepAusentismo        
WHERE Tipo='Minutos Ausencia'        
GROUP BY Personal) x ON a.PErsonal=x.Personal        
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
WHERE Extra>0         
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




--select * from CDIExp.dbo.CDIHistoricoAsiste