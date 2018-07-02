SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--Desarrollo: Oscar Danell Moran
--Fecha: 30-NOv-2010
--Reporte de Calendario de Cursos CDI

IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIRptCalendarioCursos') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIRptCalendarioCursos
GO
CREATE PROCEDURE spCDIRptCalendarioCursos 
  @Comite     varchar(20),
  --@Actividad  int,
  @FechaD     datetime,
  @FechaA     datetime ,
  @CEPlan	 CHAR(10),
  @Coordinacion  VARCHAR(50)
  AS BEGIN 	
    IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Comite = NULL 
    IF UPPER(@CEPlan) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @CEPlan = NULL
    IF UPPER(@Coordinacion) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Coordinacion = NULL
   -- IF UPPER(@Actividad) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Actividad = NULL 
 
    SELECT c.Id,
           --c2.Renglon,
           c.Proyecto,
           p2.Descripcion AS 'ProyectoNombre',
           c.UEN,
           u.Nombre AS 'UENNombre',
           c.FechaInicio,
           c2.CEPlan,
           c3.Descripcion,
           c2.Grupo,
           c2.Profesor,
           p.Nombre AS 'ProfesorNombre',
           c2.Espacio,
           e.Nombre AS 'EspacioNombre',
           c2.Horario,
           c2.Cupo,
           c3.Coordinacion,
           c.Mov,
           c.MovID,
           c2.Materia
           
         
          
      FROM CE c 
      JOIN CED c2 ON c.ID = c2.ID
      LEFT OUTER JOIN Proy p2 ON c.Proyecto = p2.Proyecto
      LEFT OUTER JOIN CEPlan c3 ON c2.CEPlan = c3.CEPlan
      LEFT OUTER JOIN Profesor p ON c2.Profesor = p.Profesor
      LEFT OUTER JOIN Espacio e ON c2.Espacio = e.Espacio
      LEFT OUTER JOIN UEN u ON C.UEN = U.UEN
    WHERE c.Mov = 'Alta Programa' AND c.Estatus = 'CONCLUIDO'
          AND ISNULL(c.Proyecto,'')  = ISNULL(ISNULL(@Comite,c.Proyecto),'')
          AND ISNULL(c2.CEPlan,'') = ISNULL(ISNULL(@CEPlan, c2.CEPlan),'')
          AND ISNULL (c3.Coordinacion,'')=ISNULL( ISNULL  (@Coordinacion, c3.Coordinacion),'') 
          --AND ISNULL(c.UEN,'') = ISNULL(ISNULL(@Actividad,c.UEN),'')
          AND c.FechaInicio BETWEEN @FechaD AND @FechaA
    ORDER BY c.Proyecto, c3.Coordinacion, c3.CEPlan, u.Nombre,c.FechaInicio
  END 
  GO
  
--spCDIRptCalendarioCursos null,'01-12-2011','31-12-2011', 'null', 'null'





