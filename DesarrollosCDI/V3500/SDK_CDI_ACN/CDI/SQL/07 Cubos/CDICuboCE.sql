SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO
IF exists (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[Cubo_CE]'))
DROP VIEW Cubo_CE
GO
CREATE VIEW Cubo_CE 
AS
SELECT c.Mov,	c.MovID, c.FechaEmision, c.Concepto, c.Proyecto, c.Estatus, c.Programa, c.CEPlan, c.FechaInicio, c.FechaFin, c.Importe, c.Cliente, 
       c.Impuestos, c.DescuentoLineal, c.Porcentaje, c.CDIClavePresupuestal, c.CDISocio,
       cd.Grupo, cd.Espacio, cd.Profesor, cd.Precio, cd.Cupo, cd.Horario,
       cp.Descripcion, cp.Nivel, cp.Area, cp.Precio AS PrecioPlan, cp.Coordinacion, cp.CDIConcepto, cp.CDIEdadMinima, cp.CDIEdadMaxima, cp.CDISexo, cp.CDIComite,
       cp.CDICentroCostos, cp.CDIClavePresupuestal AS ClavePresupuestalPlan,
       cep.Ciclo, cep.FechaInicio AS FechaInicioPlan,  cep.FechaFin AS FechaFinPlan, 
       ISNULL(cl.PersonalNombres, '')+' '+ISNULL(cl.PersonalApellidoPaterno, '')+' '+ISNULL(cl.PersonalApellidoMaterno, '') as Nombre, cl.Membresia
  FROM CE c 
       LEFT JOIN CED cd         ON cd.ID        = c.ID
       LEFT JOIN CEPlan cp      ON c.CEPlan     = cp.CEPlan
       LEFT JOIN CEPrograma cep ON cep.Programa = c.Programa
       LEFT JOIN Cte cl         ON cl.Cliente   = c.Cliente
GO
EXEC spLimpiarCubo 'CE'
EXEC spInsertarCubo 'CE','Control Escolar','Control Escolar','Cubo_CE',0,1
GO
EXEC spInsertarMedida 'CE','Importe','Importe','Importe','aggSum'       
EXEC spInsertarMedida 'CE','Precio','Precio','Precio','aggSum'       
EXEC spInsertarMedida 'CE','PrecioPlan','PrecioPlan','PrecioPlan','aggSum' 
EXEC spInsertarMedida 'CE','Impuestos','Impuestos','Impuestos','aggSum'
EXEC spInsertarMedida 'CE','DescuentoLineal','Descuento Lineal','Descuento Lineal','aggSum'      
GO
EXEC spInsertarDimension 'CE','Movimiento','Normal','Movimiento',1
EXEC spInsertarDimensionNivel 'CE','Movimiento','MovID','MovID','MovID',1
EXEC spInsertarDimensionNivel 'CE','Movimiento','Mov','Movimiento','Movimiento',2
GO
EXEC spInsertarDimension 'CE','Fecha Emision','Tiempo','Fecha Emision',1
EXEC spInsertarDimensionNivel 'CE','Fecha Emision','FechaEmision','Fecha Emision','FechaEmision',1
GO
EXEC spInsertarDimension 'CE','Concepto','Normal','Concepto',1
EXEC spInsertarDimensionNivel 'CE','Concepto','Concepto','Concepto','Concepto',1
GO
EXEC spInsertarDimension 'CE','Proyecto','Normal','Proyecto',1
EXEC spInsertarDimensionNivel 'CE','Proyecto','Proyecto','Proyecto','Proyecto',1
GO
EXEC spInsertarDimension 'CE','Estatus','Normal','Estatus',1
EXEC spInsertarDimensionNivel 'CE','Estatus','Estatus','Estatus','Estatus',1
GO
EXEC spInsertarDimension 'CE','Programa','Normal','Programa',1
EXEC spInsertarDimensionNivel 'CE','Programa','Programa','Programa','Programa',1
GO
EXEC spInsertarDimension 'CE','CEPlan','Normal','CEPlan',1
EXEC spInsertarDimensionNivel 'CE','CEPlan','CEPlan','CEPlan','CEPlan',1
GO
EXEC spInsertarDimension 'CE','Fecha Inicio','Tiempo','Fecha Inicio',1
EXEC spInsertarDimensionNivel 'CE','Fecha Inicio','FechaInicio','Fecha Inicio','FechaInicio',1
GO
EXEC spInsertarDimension 'CE','Fecha Fin','Tiempo','Fecha Fin',1
EXEC spInsertarDimensionNivel 'CE','Fecha Fin','FechaFin','Fecha Fin','FechaFin',1
GO
EXEC spInsertarDimension 'CE','Cliente','Normal','Cliente',1
EXEC spInsertarDimensionNivel 'CE','Cliente','Cliente','Cliente','Cliente',1
EXEC spInsertarDimensionNivel 'CE','CDISocio','CDISocio','CDISocio','CDISocio',2
EXEC spInsertarDimensionNivel 'CE','Membresia','Membresia','Membresia','Membresia',3
EXEC spInsertarDimensionNivel 'CE','Nombre','Nombre','Nombre','Nombre',4
GO
EXEC spInsertarDimension 'CE','Porcentaje','Normal','Porcentaje',1
EXEC spInsertarDimensionNivel 'CE','Porcentaje','Porcentaje','Porcentaje','Porcentaje',1
GO
EXEC spInsertarDimension 'CE','CDIClavePresupuestal','Normal','CDIClavePresupuestal',1
EXEC spInsertarDimensionNivel 'CE','CDIClavePresupuestal','CDIClavePresupuestal','CDIClavePresupuestal','CDIClavePresupuestal',1
GO
EXEC spInsertarDimension 'CE','Grupo','Normal','Grupo',1
EXEC spInsertarDimensionNivel 'CE','Grupo','Grupo','Grupo','Grupo',1
GO
EXEC spInsertarDimension 'CE','Espacio','Normal','Espacio',1
EXEC spInsertarDimensionNivel 'CE','Espacio','Espacio','Espacio','Espacio',1
GO
EXEC spInsertarDimension 'CE','Profesor','Normal','Profesor',1
EXEC spInsertarDimensionNivel 'CE','Profesor','Profesor','Profesor','Profesor',1
GO
EXEC spInsertarDimension 'CE','Cupo','Normal','Cupo',1
EXEC spInsertarDimensionNivel 'CE','Cupo','Cupo','Cupo','Cupo',1
GO
EXEC spInsertarDimension 'CE','Horario','Normal','Horario',1
EXEC spInsertarDimensionNivel 'CE','Horario','Horario','Horario','Horario',1
GO
EXEC spInsertarDimension 'CE','Descripcion','Normal','Descripcion',1
EXEC spInsertarDimensionNivel 'CE','Descripcion','Descripcion','Descripcion','Descripcion',1
GO
EXEC spInsertarDimension 'CE','Nivel','Normal','Nivel',1
EXEC spInsertarDimensionNivel 'CE','Nivel','Nivel','Nivel','Nivel',1
GO
EXEC spInsertarDimension 'CE','Area','Normal','Area',1
EXEC spInsertarDimensionNivel 'CE','Area','Area','Area','Area',1
GO
EXEC spInsertarDimension 'CE','Coordinacion','Normal','Coordinacion',1
EXEC spInsertarDimensionNivel 'CE','Coordinacion','Coordinacion','Coordinacion','Coordinacion',1
GO
EXEC spInsertarDimension 'CE','CDIConcepto','Normal','CDIConcepto',1
EXEC spInsertarDimensionNivel 'CE','CDIConcepto','CDIConcepto','CDIConcepto','CDIConcepto',1
GO
EXEC spInsertarDimension 'CE','CDIEdadMinima','Normal','CDIEdadMinima',1
EXEC spInsertarDimensionNivel 'CE','CDIEdadMinima','CDIEdadMinima','CDIEdadMinima','CDIEdadMinima',1
GO
EXEC spInsertarDimension 'CE','CDIEdadMaxima','Normal','CDIEdadMaxima',1
EXEC spInsertarDimensionNivel 'CE','CDIEdadMaxima','CDIEdadMaxima','CDIEdadMaxima','CDIEdadMaxima',1
GO
EXEC spInsertarDimension 'CE','CDISexo','Normal','CDISexo',1
EXEC spInsertarDimensionNivel 'CE','CDISexo','CDISexo','CDISexo','CDISexo',1
GO
EXEC spInsertarDimension 'CE','CDIComite','Normal','CDIComite',1
EXEC spInsertarDimensionNivel 'CE','CDIComite','CDIComite','CDIComite','CDIComite',1
GO
EXEC spInsertarDimension 'CE','CDICentroCostos','Normal','CDICentroCostos',1
EXEC spInsertarDimensionNivel 'CE','CDICentroCostos','CDICentroCostos','CDICentroCostos','CDICentroCostos',1
GO
EXEC spInsertarDimension 'CE','ClavePresupuestalPlan','Normal','ClavePresupuestalPlan',1
EXEC spInsertarDimensionNivel 'CE','ClavePresupuestalPlan','ClavePresupuestalPlan','ClavePresupuestalPlan','ClavePresupuestalPlan',1
GO
EXEC spInsertarDimension 'CE','Ciclo','Normal','Ciclo',1
EXEC spInsertarDimensionNivel 'CE','Ciclo','Ciclo','Ciclo','Ciclo',1
GO
EXEC spInsertarDimension 'CE','FechaInicioPlan','Normal','FechaInicioPlan',1
EXEC spInsertarDimensionNivel 'CE','FechaInicioPlan','FechaInicioPlan','FechaInicioPlan','FechaInicioPlan',1
GO
EXEC spInsertarDimension 'CE','FechaFinPlan','Normal','FechaFinPlan',1
EXEC spInsertarDimensionNivel 'CE','FechaFinPlan','FechaFinPlan','FechaFinPlan','FechaFinPlan',1
GO
