SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

--Desarrollo: Oscar Danell Moran
--Fecha: 07-DIC-2010
--Reporte de Alumnos Inscritos

IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIRptAlumnosInscritos') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIRptAlumnosInscritos
GO
CREATE PROCEDURE spCDIRptAlumnosInscritos 
  @Comite     varchar(20),
  @Programa   varchar(20),
  @Curso      varchar(20),
  @Materia    varchar(20),
  @Grupo      varchar(20)
  AS BEGIN
  	
  	IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Comite = NULL 
    IF UPPER(@Programa) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Programa = NULL 
    IF UPPER(@Curso) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Curso = NULL
    IF UPPER(@Materia) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Materia = NULL
    IF UPPER(@Grupo) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Grupo = NULL
    
    SELECT ce.Proyecto,
           p2.Descripcion AS 'ProyectoNombre',
           ce.Programa,
           CEPrograma.Ciclo,
           ced.CEPlan,
           c3.Descripcion,
           CDICteSocio.Cliente,
           ced.Materia,
           ced.Grupo,
           ced.Espacio,
           Espacio.Nombre AS 'EspacioNombre',
           ced.Profesor,
           Profesor.Nombre AS 'ProfesorNombre',
           c5.Cupo,
           ced.Horario,
           CDICteSocio.PersonalNombres+' '+CDICteSocio.PersonalApellidoPaterno+' '+CDICteSocio.PersonalApellidoMaterno AS 'NombreSocio',
           CDICteSocio.Socio
      FROM CE
      JOIN CED ON CE.ID=CED.ID
      LEFT OUTER JOIN CEPrograma ON CE.Programa=CEPrograma.Programa
      JOIN CEProgramaD c5 ON ceprograma.Programa = c5.programa AND ced.CEPlan = c5.CEPlan AND ced.Materia = c5.Materia AND ced.grupo = c5.Grupo
      LEFT OUTER JOIN Cte CDICteSocio ON ce.Cliente = CDICteSocio.Cliente
      LEFT OUTER JOIN Espacio ON CED.Espacio=Espacio.Espacio
      LEFT OUTER JOIN Profesor ON CED.Profesor=Profesor.Profesor
      LEFT OUTER JOIN Proy p2 ON ce.Proyecto = p2.Proyecto
      LEFT OUTER JOIN CEPlan c3 ON ced.CEPlan = c3.CEPlan
      LEFT OUTER JOIN CEAlumnoHist ch ON ch.Modulo = 'CE' AND ch.ModuloID = ce.ID
    WHERE ce.Mov = 'PreRegistro' AND ce.estatus = 'Concluido' AND CDICteSocio.CDISocio = 1 AND ch.Estatus = 'ALTA'
          AND ISNULL(ce.Proyecto,'') = ISNULL(ISNULL(@Comite,ce.Proyecto),'')
          AND ISNULL(ce.Programa,'') = ISNULL(ISNULL(@Programa,ce.Programa),'')
          AND ISNULL(ced.CEPlan,'') = ISNULL(ISNULL(@Curso,ced.CEPlan),'')
          AND ISNULL(ced.Materia,'') = ISNULL(ISNULL(@Materia,ced.Materia),'')
          AND ISNULL(ced.Grupo,'') = ISNULL(ISNULL(@Grupo,ced.Grupo),'')
    ORDER BY ce.Proyecto,ce.Programa,ced.CEPlan,ced.materia,ced.grupo
  END  
  GO
  
  --spCDIRptAlumnosInscritos NULL,NULL,NULL,NULL,NULL



