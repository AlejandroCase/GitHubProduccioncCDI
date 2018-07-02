
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

--EXEC spListadodeNominaCDI '','CDI','01/01/2011','31/01/2011'

/**************** spListadodeNominaCDI ****************/
if exists (select * from sysobjects where id = object_id('dbo.spListadodeNominaCDI') and type = 'P') drop procedure dbo.spListadodeNominaCDI
GO

CREATE PROCEDURE spListadodeNominaCDI  
@Proyecto varchar (50),  
@Empresa  varchar (5),  
@FechaD DateTime,  
@FechaA DateTime  
AS  BEGIN  
select @Proyecto=LTRIM(rtrim(@Proyecto))  
If not exists (select 1 from Proy where Proyecto=@Proyecto )  
set @Proyecto=Null  
SELECT ND.Personal,p.Proyecto,p.SucursalTrabajo,(P.ApellidoPaterno+' '+P.ApellidoMaterno+' '+P.Nombre)as Nombre, ND.Concepto,@FechaD as FechaD,@FechaA as FechaA,  --quite un apellido parterno DBR
CASE WHEN ND.Concepto in (Select Concepto from CDIPercepcion where Empresa=@Empresa) THEN sum(Nd.Importe) ELSE 0 END AS ImportePercepcion ,  
CASE WHEN ND.Concepto in (Select Concepto from CDIPercepcionGravable where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS PercepcionGravadas,  
CASE WHEN ND.Concepto in (Select Concepto from CDIPercepcionExenta where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS PercepcionExcentas,  
CASE WHEN ND.Concepto in (Select Concepto from CDIOtrasPercepciones where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS PercepcionOtras,  
CASE WHEN ND.Concepto in (Select Concepto from CDIDeduccion where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS Importededuccion ,  
CASE WHEN ND.Concepto in (Select Concepto from CDIObligaciones where Empresa=@Empresa) THEN sum(Nd .Importe) ELSE 0 END AS Obligaciones  
FROM Nomina N Join  
NominaD ND On N.id=ND.id  Join  
Personal P on Nd.personal=P.personal  
WHERE N.Estatus='CONCLUIDO'  
AND N.FechaA BETWEEN @FechaD AND  @FechaA  
and P.Proyecto=isnull(@Proyecto,P.Proyecto)  
and ND.Concepto in (select Concepto  
from CDIConceptosespeciales  
where empresa=@empresa )  
Group By ND.Personal,p.Proyecto,p.SucursalTrabajo,p.SucursalTrabajo,P.ApellidoPaterno,P.ApellidoPaterno,P.ApellidoMaterno,P.Nombre, ND.Concepto, ND.movimiento  
Order by p.Proyecto,ND.personal,ND.Movimiento Desc  
END  


GO
