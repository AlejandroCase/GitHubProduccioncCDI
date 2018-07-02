SET DATEFIRST 7
SET ANSI_NULLS off
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

/**************** spCDIINOMRegresovac2 ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIINOMRegresovac2') and type = 'P') drop procedure dbo.spCDIINOMRegresovac2
GO


CREATE PROCEDURE spCDIINOMRegresovac2  
@Personal varchar(10),  
@Ano       int,  
@Rango2  varchar(50)   OUTPUT  
AS BEGIN  
select TOP 1 @Rango2  = convert(Varchar (10),min (B.FechaD),103)+'  AL '+ convert(Varchar (10),Max (B.FechaA-1),103)  
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
IF @Rango2  is null  
set @Rango2  = 'No Encontro'  
END  
GO