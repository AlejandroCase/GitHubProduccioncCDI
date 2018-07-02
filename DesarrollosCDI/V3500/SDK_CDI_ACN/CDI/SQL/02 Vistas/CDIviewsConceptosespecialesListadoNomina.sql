--				view CDIConceptosespecialesListadoNomina
----------------------------------------------------------
IF  EXISTS (SELECT * FROM Sys.Views WHERE name='CDIConceptosespeciales') DROP VIEW CDIConceptosespeciales
GO
CREATE VIEW CDIConceptosespeciales 
AS

select Concepto,Empresa from CDIPercepcion 
union all
select Concepto,Empresa from CDIPercepcionGravable 
union all
select Concepto,Empresa from CDIPercepcionExenta 
union all
select Concepto,Empresa from CDIOtrasPercepciones 
union all
select Concepto,Empresa from CDIOtrasPercepciones 
union all
select Concepto,Empresa from CDIDeduccion
union all
select Concepto,Empresa from CDIObligaciones
GO

