SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO
IF exists (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[Cubo_CP]'))
DROP VIEW Cubo_CP
GO
CREATE VIEW Cubo_CP
AS

SELECT c.Empresa,        
       c.Sucursal,        
       c.Mov,              
       c.MovID,      
       c.FechaEmision,  
       c.UltimoCambio,  
       c.UEN,        
       c.Concepto, 
       c.Proyecto, 
       c.Usuario,   
       c.Autorizacion, 
       c.Observaciones, 
       c.Referencia,      
       c.Estatus,          
       c.Situacion,  
       c.Moneda,       
       c.TipoCambio,   
       c.OrigenTipo, 
       c.Origen,   
       c.OrigenID, 
       c.Ejercicio, 
       c.Periodo, 
       c.FechaRegistro, 
       c.FechaConclusion, 
       c.FechaCancelacion, 
       cd.ClavePresupuestal,  
       cd.Tipo,     
       cd.Importe,              
       cd.Presupuesto, 
       cd.Comprometido, 
       cd.Comprometido2,  
       cd.Devengado, 
       cd.Devengado2, 
       cd.Ejercido, 
       cd.EjercidoPagado, 
       cd.Sobrante, 
       cd.RemanenteDisponible, 
       cd.Anticipos,   
       cd.Aplica,       
       cd.AplicaID,      
       cd.Disponible, 
       cp.Descripcion, 
       cp.Estatus         AS 'EstatusClave', 
       cp.Alta, 
       cp.UltimoCambio    AS 'UltimoCambioClave', 
       cp.UsuarioCambio, 
       cp.ObjetoGasto, 
       cp.Rama, 
       cp.Especificar, 
       cp.Proyecto        AS 'ProyectoClave',
       cp.EsIngresos,        
       cp.ClavesRelacionadas,
       cpc.Tipo           AS 'TipoCalendario', 
       cpc.Ejercicio      AS 'EjercicioCalendario', 
       cpc.Periodo        AS 'PeriodoCalendario', 
       cpc.Importe        AS 'ImporteCalendario', 
       cal.Presupuesto    AS 'PresupuestoDisponible'  
  FROM CP c
       LEFT JOIN CPD cd               ON cd.ID                = c.ID
       LEFT JOIN ClavePresupuestal cp ON cp.ClavePresupuestal = cd.ClavePresupuestal
       LEFT JOIN CPCal cpc            ON cpc.ID = cd.ID AND cpc.ClavePresupuestal = cd.ClavePresupuestal
       LEFT JOIN CPCalDisponible cal  ON cal.ClavePresupuestal = cpc.ClavePresupuestal  AND cal.Proyecto = c.Proyecto AND cal.Ejercicio = cpc.Ejercicio AND cal.Periodo = cpc.Periodo
GO
EXEC spLimpiarCubo    'CP'
EXEC spInsertarCubo   'CP','Control Presupuestal','Control Presupuestal','Cubo_CP',0,1
GO
EXEC spInsertarMedida 'CP', 'Importe',               'Importe',                'Importe Detalle Movimiento',               'aggSum'
EXEC spInsertarMedida 'CP', 'Presupuesto',           'Presupuesto',            'Presupuesto Detalle Movimiento',           'aggSum'
EXEC spInsertarMedida 'CP', 'Comprometido',          'Comprometido',           'Comprometido Detalle Movimiento',          'aggSum'
EXEC spInsertarMedida 'CP', 'Comprometido2',         'Comprometido2',          'Comprometido2 Detalle Movimiento',         'aggSum'
EXEC spInsertarMedida 'CP', 'Devengado',             'Devengado',              'Devengado Detalle Movimiento',             'aggSum'
EXEC spInsertarMedida 'CP', 'Devengado2',            'Devengado2',             'Devengado2 Detalle Movimiento',            'aggSum'
EXEC spInsertarMedida 'CP', 'Ejercido',              'Ejercido',               'Ejercido Detalle Movimiento',              'aggSum'
EXEC spInsertarMedida 'CP', 'EjercidoPagado',        'EjercidoPagado',         'Ejercido Pagado Detalle Movimiento',       'aggSum'
EXEC spInsertarMedida 'CP', 'Sobrante',              'Sobrante',               'Sobrante Detalle Movimiento',              'aggSum'
EXEC spInsertarMedida 'CP', 'RemanenteDisponible',   'Remanente Disponible',   'Remanente Disponible Detalle Movimiento',  'aggSum'
EXEC spInsertarMedida 'CP', 'Anticipos',             'Anticipos',              'Anticipos Detalle Movimiento',             'aggSum'
EXEC spInsertarMedida 'CP', 'Disponible',            'Disponible',             'Disponible Detalle Movimiento',            'aggSum'
EXEC spInsertarMedida 'CP', 'ImporteCalendario',     'Importe Calendario',     'Importe Calendario',                       'aggSum'
EXEC spInsertarMedida 'CP', 'PresupuestoDisponible', 'Presupuesto Disponible', 'Presupuesto Disponible',                   'aggSum'
GO
EXEC spInsertarDimension      'CP','Movimiento', 'Normal',  'Movimiento', 1
EXEC spInsertarDimensionNivel 'CP','Movimiento', 'MovId',   'MovId',      'MovId',      1
EXEC spInsertarDimensionNivel 'CP','Movimiento', 'Mov',     'Movimiento', 'Movimiento', 2
GO
EXEC spInsertarDimension      'CP','ClavePresupuestal', 'Normal',             'Clave Presupuestal', 1
EXEC spInsertarDimensionNivel 'CP','ClavePresupuestal', 'ClavePresupuestal',  'Clave Presupuestal', 'Clave Presupuestal', 1
EXEC spInsertarDimensionNivel 'CP','ClavePresupuestal', 'Descripcion',        'Descripcion',        'Descripcion',        2
EXEC spInsertarDimensionNivel 'CP','ClavePresupuestal', 'ObjetoGasto',        'Objeto Gasto',       'Objeto Gasto',       3
EXEC spInsertarDimensionNivel 'CP','ClavePresupuestal', 'Rama',               'Rama',               'Rama',               4
GO
EXEC spInsertarDimension      'CP', 'Empresa', 'Normal',  'Empresa', 1
EXEC spInsertarDimensionNivel 'CP', 'Empresa', 'Empresa', 'Empresa', 'Empresa', 1
GO
EXEC spInsertarDimension      'CP', 'Sucursal', 'Normal',   'Sucursal', 1
EXEC spInsertarDimensionNivel 'CP', 'Sucursal', 'Sucursal', 'Sucursal', 'Sucursal', 1
GO
EXEC spInsertarDimension      'CP', 'Fecha Emision', 'Tiempo',       'Fecha Emision', 1
EXEC spInsertarDimensionNivel 'CP', 'Fecha Emision', 'FechaEmision', 'Fecha Emision', 'Fecha Emision', 1
GO
EXEC spInsertarDimension      'CP', 'Ultimo Cambio', 'Tiempo',       'Ultimo Cambio', 1
EXEC spInsertarDimensionNivel 'CP', 'Ultimo Cambio', 'UltimoCambio', 'Ultimo Cambio', 'Ultimo Cambio', 1
GO
EXEC spInsertarDimension      'CP', 'UEN', 'Normal',  'UEN', 1
EXEC spInsertarDimensionNivel 'CP', 'UEN', 'UEN',     'UEN', 'UEN', 1
GO
EXEC spInsertarDimension      'CP', 'Concepto', 'Normal',   'Concepto', 1
EXEC spInsertarDimensionNivel 'CP', 'Concepto', 'Concepto', 'Concepto', 'Concepto', 1
GO
EXEC spInsertarDimension      'CP', 'Proyecto', 'Normal',   'Proyecto', 1
EXEC spInsertarDimensionNivel 'CP', 'Proyecto', 'Proyecto', 'Proyecto', 'Proyecto', 1
GO
EXEC spInsertarDimension      'CP', 'Usuario', 'Normal',   'Usuario', 1
EXEC spInsertarDimensionNivel 'CP', 'Usuario', 'Usuario',  'Usuario', 'Usuario', 1
GO
EXEC spInsertarDimension      'CP', 'Autorizacion', 'Normal',       'Autorizacion', 1
EXEC spInsertarDimensionNivel 'CP', 'Autorizacion', 'Autorizacion', 'Autorizacion', 'Autorizacion', 1
GO
EXEC spInsertarDimension      'CP', 'Observaciones', 'Normal',        'Observaciones', 1
EXEC spInsertarDimensionNivel 'CP', 'Observaciones', 'Observaciones', 'Observaciones', 'Observaciones', 1
GO
EXEC spInsertarDimension      'CP', 'Referencia', 'Normal',     'Referencia', 1
EXEC spInsertarDimensionNivel 'CP', 'Referencia', 'Referencia', 'Referencia', 'Referencia', 1
GO
EXEC spInsertarDimension      'CP', 'Estatus', 'Normal',  'Estatus', 1
EXEC spInsertarDimensionNivel 'CP', 'Estatus', 'Estatus', 'Estatus', 'Estatus', 1
GO
EXEC spInsertarDimension      'CP', 'Situacion', 'Normal',    'Situacion', 1
EXEC spInsertarDimensionNivel 'CP', 'Situacion', 'Situacion', 'Situacion', 'Situacion', 1
GO
EXEC spInsertarDimension      'CP', 'Moneda', 'Normal', 'Moneda', 1
EXEC spInsertarDimensionNivel 'CP', 'Moneda', 'Moneda', 'Moneda', 'Moneda', 1
GO
EXEC spInsertarDimension      'CP', 'TipoCambio', 'Normal',     'TipoCambio', 1
EXEC spInsertarDimensionNivel 'CP', 'TipoCambio', 'TipoCambio', 'TipoCambio', 'TipoCambio', 1
GO
EXEC spInsertarDimension      'CP', 'OrigenTipo', 'Normal',     'OrigenTipo', 1
EXEC spInsertarDimensionNivel 'CP', 'OrigenTipo', 'OrigenTipo', 'OrigenTipo', 'OrigenTipo', 1
GO
EXEC spInsertarDimension      'CP', 'Origen', 'Normal', 'Origen', 1
EXEC spInsertarDimensionNivel 'CP', 'Origen', 'Origen', 'Origen', 'Origen', 1
GO
EXEC spInsertarDimension      'CP', 'OrigenID', 'Normal',   'OrigenID', 1
EXEC spInsertarDimensionNivel 'CP', 'OrigenID', 'OrigenID', 'OrigenID', 'OrigenID', 1
GO
EXEC spInsertarDimension      'CP', 'Ejercicio', 'Normal',    'Ejercicio', 1
EXEC spInsertarDimensionNivel 'CP', 'Ejercicio', 'Ejercicio', 'Ejercicio', 'Ejercicio', 1
GO
EXEC spInsertarDimension      'CP', 'Periodo', 'Normal',  'Periodo', 1
EXEC spInsertarDimensionNivel 'CP', 'Periodo', 'Periodo', 'Periodo', 'Periodo', 1
GO
EXEC spInsertarDimension      'CP', 'Fecha Registro', 'Tiempo',        'Fecha Registro', 1
EXEC spInsertarDimensionNivel 'CP', 'Fecha Registro', 'FechaRegistro', 'Fecha Registro', 'Fecha Registro', 1
GO
EXEC spInsertarDimension      'CP', 'Fecha Conclusion', 'Tiempo',          'Fecha Conclusion', 1
EXEC spInsertarDimensionNivel 'CP', 'Fecha Conclusion', 'FechaConclusion', 'Fecha Conclusion', 'Fecha Conclusion', 1
GO
EXEC spInsertarDimension      'CP', 'Fecha Cancelacion', 'Tiempo',           'Fecha Cancelacion', 1
EXEC spInsertarDimensionNivel 'CP', 'Fecha Cancelacion', 'FechaCancelacion', 'Fecha Cancelacion', 'Fecha Cancelacion', 1
GO
EXEC spInsertarDimension      'CP', 'Tipo', 'Normal', 'Tipo', 1
EXEC spInsertarDimensionNivel 'CP', 'Tipo', 'Tipo',   'Tipo', 'Tipo', 1
GO
EXEC spInsertarDimension      'CP', 'Aplica', 'Normal',  'Aplica', 1
EXEC spInsertarDimensionNivel 'CP', 'Aplica', 'Aplica', 'Aplica', 'Aplica', 1
GO
EXEC spInsertarDimension      'CP', 'AplicaID', 'Normal',  'AplicaID', 1
EXEC spInsertarDimensionNivel 'CP', 'AplicaID', 'AplicaID', 'AplicaID', 'AplicaID', 1
GO
EXEC spInsertarDimension      'CP', 'Estatus Clave', 'Normal',       'Estatus Clave', 1
EXEC spInsertarDimensionNivel 'CP', 'Estatus Clave', 'EstatusClave', 'Estatus Clave', 'Estatus Clave', 1
GO
EXEC spInsertarDimension      'CP', 'Alta', 'Normal', 'Alta', 1
EXEC spInsertarDimensionNivel 'CP', 'Alta', 'Alta',   'Alta', 'Alta', 1
GO
EXEC spInsertarDimension      'CP', 'Ultimo Cambio Clave', 'Tiempo',            'Ultimo Cambio Clave', 1
EXEC spInsertarDimensionNivel 'CP', 'Ultimo Cambio Clave', 'UltimoCambioClave', 'Ultimo Cambio Clave', 'Ultimo Cambio Clave', 1
GO
EXEC spInsertarDimension      'CP', 'Usuario Cambio', 'Normal',        'Usuario Cambio', 1
EXEC spInsertarDimensionNivel 'CP', 'Usuario Cambio', 'UsuarioCambio', 'Usuario Cambio', 'Usuario Cambio', 1
GO
EXEC spInsertarDimension      'CP', 'Especificar', 'Normal',      'Especificar', 1
EXEC spInsertarDimensionNivel 'CP', 'Especificar', 'Especificar', 'Especificar', 'Especificar', 1
GO
EXEC spInsertarDimension      'CP', 'Proyecto Clave', 'Normal',        'Proyecto Clave', 1
EXEC spInsertarDimensionNivel 'CP', 'Proyecto Clave', 'ProyectoClave', 'Proyecto Clave', 'Proyecto Clave', 1
GO
EXEC spInsertarDimension      'CP', 'EsIngresos', 'Normal',     'EsIngresos', 1
EXEC spInsertarDimensionNivel 'CP', 'EsIngresos', 'EsIngresos', 'EsIngresos', 'EsIngresos', 1
GO
EXEC spInsertarDimension      'CP', 'Claves Relacionadas', 'Normal',             'Claves Relacionadas', 1
EXEC spInsertarDimensionNivel 'CP', 'Claves Relacionadas', 'ClavesRelacionadas', 'Claves Relacionadas', 'Claves Relacionadas', 1
GO
EXEC spInsertarDimension      'CP', 'Tipo Calendario', 'Normal',         'Tipo Calendario', 1
EXEC spInsertarDimensionNivel 'CP', 'Tipo Calendario', 'TipoCalendario', 'Tipo Calendario', 'Tipo Calendario', 1
GO
EXEC spInsertarDimension      'CP', 'EjercicioCalendario', 'Normal',              'EjercicioCalendario', 1
EXEC spInsertarDimensionNivel 'CP', 'EjercicioCalendario', 'EjercicioCalendario', 'EjercicioCalendario', 'EjercicioCalendario', 1
GO
EXEC spInsertarDimension      'CP', 'PeriodoCalendario', 'Normal',            'PeriodoCalendario', 1
EXEC spInsertarDimensionNivel 'CP', 'PeriodoCalendario', 'PeriodoCalendario', 'PeriodoCalendario', 'PeriodoCalendario', 1
GO