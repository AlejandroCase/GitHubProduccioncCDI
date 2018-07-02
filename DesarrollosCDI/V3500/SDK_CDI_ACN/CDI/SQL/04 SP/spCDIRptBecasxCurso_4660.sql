SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--Desarrollo: Oscar Danell Moran
--Fecha: 05-DIC-2010
--Reporte de Becas otorgadas por curso

IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIRptBecasxCurso') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIRptBecasxCurso
GO
CREATE PROCEDURE spCDIRptBecasxCurso 
  @Comite     varchar(20),
  @Programa   varchar(20),
  @Curso      varchar(20)
  AS BEGIN
  	IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Comite = NULL   --Proyecto
    IF UPPER(@Programa) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Programa = NULL --Prgrama
    IF UPPER(@Curso) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Curso = NULL --CEPlan
  	
SELECT c.Proyecto,
       Cte.Cliente,
       Cte.Socio,
       Cte.PersonalNombres+' '+Cte.PersonalApellidoPaterno+' '+Cte.PersonalApellidoMaterno AS 'Nombre',
       ISNULL(c2.Coordinacion,'SIN COORDINACION') Coordinacion,
       c.Programa,
       c3.FechaInicio,
       c3.FechaFin,
       c2.CEPlan,
       c2.Descripcion,
       ced.precio,
       ced.DescuentoLineal,
       CDIBeca = CASE WHEN Mov='Solicitud Beca'  THEN CDIBeca ELSE 0 END,
       CDIDescuento = CASE WHEN Mov='Solicitud Descuento'  THEN CDIBeca ELSE 0 END,
--       ced.CDIBeca,
       c.Importe AS 'ImporteBeca'
  FROM CE c
  JOIN CED ON c.ID = ced.ID
  LEFT OUTER JOIN Cte ON c.Cliente = Cte.Cliente
  LEFT OUTER JOIN CEPlan c2 ON ced.CEPlan = c2.CEPlan
  LEFT OUTER JOIN CEPrograma c3 ON c.Programa = c3.Programa
WHERE c.Mov IN ('Solicitud Beca','Solicitud Descuento') AND c.Estatus = 'AUTORIZADO'
      AND ISNULL(c.Proyecto,'') = ISNULL(ISNULL(@Comite,c.Proyecto),'')
      AND ISNULL(c.Programa,'') = ISNULL(ISNULL(@Programa,c.Programa),'')
      AND ISNULL(c2.CEPlan,'') = ISNULL(ISNULL(@Curso,c2.CEPlan),'')
ORDER BY c.Proyecto,c2.Coordinacion,c2.CEPlan,c.Programa
END
GO

--EXEC spCDIRptBecasxCurso 'Actividades','PER.2012-1','(TODOS)'






	