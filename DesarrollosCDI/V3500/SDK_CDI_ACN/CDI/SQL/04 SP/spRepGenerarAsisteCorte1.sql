SET DATEFIRST 7
SET ANSI_NULLS off
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

/**************** spRepGenerarAsisteCorte1 ****************/
if exists (select * from sysobjects where id = object_id('dbo.spRepGenerarAsisteCorte1') and type = 'P') drop procedure dbo.spRepGenerarAsisteCorte1
GO

CREATE PROC spRepGenerarAsisteCorte1    
    
   @Personal  varchar(20),    
   @PeriodoTipo varchar(20),     
   @proyecto varchar(50),    
   @Sucursal int,    
   @FechaInicial datetime,     
   @FechaFinal  datetime,    
   @Area varchar(50),      
   @Sindicato  varchar(50)                      
    
  
AS BEGIN    
  
IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE Sucursal=@Sucursal)    
SET @Sucursal=NULL    
  
    
SELECT B.PERSONAL,d.Nombre,d.ApellidoPaterno,d.ApellidoMaterno,A.FechaEmision,B.Registro,B.HoraRegistro,MOV,MOVID,    
B.FECHAD,B.FechaA,d.PeriodoTipo,d.Proyecto,d.SucursalTrabajo,d.Area,d.Tipo     
from Asiste A left outer join AsisteD B  ON A.ID=B.ID      
              left outer join Personal d on b.Personal=d.Personal    
     
where Mov='Registro' and a.Estatus in('PROCESAR','CONCLUIDO') 
AND b.Personal=CASE isnull(@Personal,b.Personal)  WHEN 'NULL' THEN B.Personal ELSE @PERSONAL END    
AND d.PeriodoTipo= CASE isnull(@PeriodoTipo,d.PeriodoTipo)  WHEN 'NULL' THEN d.PeriodoTipo ELSE @PeriodoTipo END    
AND d.proyecto=CASE isnull (@Proyecto,d.Proyecto)  WHEN 'NULL' THEN d.Proyecto ELSE @Proyecto END    
AND d.SucursalTRabajo= isnull(@Sucursal,d.SucursalTRabajo)  
AND a.FechaEmision BETWEEN @FechaInicial AND @FechaFinal    
AND d.Area=CASE isnull(@Area,d.Area)  WHEN 'Area' THEN d.Area ELSE @Area END    
AND d.Tipo=CASE isnull(@Sindicato,d.Tipo)  WHEN 'Tipo' THEN d.Tipo ELSE @Sindicato END    
group by B.Personal,d.Nombre,d.ApellidoPaterno,d.ApellidoMaterno,a.FechaEmision,B.Registro,B.HoraRegistro,Mov,MovID,b.fechad,B.FechaA,d.PeriodoTipo,    
d.proyecto,d.SucursalTrabajo,d.Area,d.Tipo    
    
order by B.Personal,FechaEmision,B.HoraRegistro 
    
end    
  
GO
/*  
EXEC spRepGenerarAsisteCorte1 'NULL','NULL','NULL',null,'08/03/2011','14/03/2011','Area','Tipo'  
*/  