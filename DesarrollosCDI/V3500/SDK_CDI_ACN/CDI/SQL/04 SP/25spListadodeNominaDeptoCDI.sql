
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF


-- Exec spListadodeNominaDeptoCDI 'NULL' ,'NULL','CDI','01/08/2011','31/08/2011'
 
   
 
/**************** spListadodeNominaDeptoCDI ****************/
if exists (select * from sysobjects where id = object_id('dbo.spListadodeNominaDeptoCDI') and type = 'P') drop procedure dbo.spListadodeNominaDeptoCDI
GO
CREATE PROCEDURE spListadodeNominaDeptoCDI    
@Proyecto Varchar (50),  
@Departamento VARCHAR (50)  ,
@Empresa  varchar (5),    
@FechaD DateTime,    
@FechaA DateTime    
AS  BEGIN    
	
If Not Exists (select * from proy WHERE Proyecto =@Proyecto)    
set @Proyecto=Null    

If Not Exists (select * from Departamento where Departamento=@Departamento)    
set @Departamento=Null    


SELECT p.Proyecto, p.Departamento,p.SucursalTrabajo, ND.Concepto,@FechaD as FechaD,@FechaA as FechaA,    
CASE WHEN ND.Concepto in (Select Concepto from CDIPercepcion where Empresa=@Empresa) THEN sum(Nd.Importe) ELSE 0 END AS ImportePercepcion ,    
CASE WHEN ND.Concepto in (Select Concepto from CDIPercepcionGravable where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS PercepcionGravadas,    
CASE WHEN ND.Concepto in (Select Concepto from CDIPercepcionExenta where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS PercepcionExcentas,    
CASE WHEN ND.Concepto in (Select Concepto from CDIOtrasPercepciones where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS PercepcionOtras,    
CASE WHEN ND.Concepto in (Select Concepto from CDIDeduccion where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS Importededuccion ,    
CASE WHEN ND.Concepto in (Select Concepto from CDIObligaciones where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS Obligaciones    
FROM Nomina N Join    
NominaD ND On N.id=ND.id left Join    
Personal P on Nd.personal=P.personal    
WHERE N.Estatus='CONCLUIDO'    
AND N.FechaA BETWEEN @FechaD AND  @FechaA    
and P.Proyecto=isnull (@Proyecto,P.Proyecto)
and P.Departamento=isnull (@Departamento,P.Departamento)    
and ND.Concepto in (select Concepto    
from CDIConceptosespeciales    
where empresa=@empresa )    
Group BY P.Proyecto, p.Departamento,p.SucursalTrabajo,p.SucursalTrabajo,ND.Concepto, ND.movimiento    
Order BY P.Proyecto, p.Departamento,ND.Movimiento Desc    
END    
  
 GO