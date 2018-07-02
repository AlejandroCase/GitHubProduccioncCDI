SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

------------------------------------------------------------------------------------
--- Desarrollo. Optimizacion de consultas                                        ---
--- Cliente   . CDI																 ---
--- Folio     . 5194                                                             ---
--- Fecha     . 06 / 07 / 11                                                     ---
--- Autor     . Juan Barrera                                                     ---
--- Explorador Venta            												 ---
------------------------------------------------------------------------------------   
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Venta_Cdi00')
    DROP INDEX Index_Venta_Cdi00 ON Venta;
go
CREATE NONCLUSTERED INDEX [Index_Venta_Cdi00] ON [dbo].[Venta] 
(
	[Mov] ASC,
	[Estatus] ASC,
	[Moneda] ASC,
	[Empresa] ASC,
	[Sucursal] ASC,
	[Descuento] ASC,
	[Cliente] ASC,
	[EnviarA] ASC,
	[Agente] ASC
)
INCLUDE ( [ID],
[MovID],
[FechaEmision],
[UltimoCambio],
[Concepto],
[Proyecto],
[UEN],
[TipoCambio],
[Usuario],
[Autorizacion],
[Referencia],
[DocFuente],
[Observaciones],
[Situacion],
[Directo],
[Prioridad],
[RenglonID],
[Almacen],
[AlmacenDestino],
[FormaEnvio],
[FechaRequerida],
[OrdenCompra],
[Condicion],
[Vencimiento],
[DescuentoGlobal],
[Importe],
[Impuestos],
[Saldo],
[AnticiposFacturados],
[AnticiposImpuestos],
[Retencion],
[ComisionTotal],
[ServicioTipo],
[ServicioArticulo],
[ServicioSerie],
[ServicioContrato],
[ServicioContratoID],
[ServicioContratoTipo],
[ServicioGarantia],
[ServicioDescripcion],
[ServicioFecha],
[ServicioIdentificador],
[ServicioPlacas],
[ServicioKms],
[ServicioTipoOrden],
[ServicioTipoOperacion],
[ServicioSiniestro],
[ServicioExpress],
[ServicioDemerito],
[ServicioDeducible],
[ServicioNumero],
[ServicioNumeroEconomico],
[ServicioAseguradora],
[Poliza],
[PolizaID],
[FechaConclusion],
[FechaEntrega],
[Espacio]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi01' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi01
go
CREATE STATISTICS [IndexEstat_Venta_Cdi01] ON [dbo].[Venta]([Descuento], [Cliente], [EnviarA], [Agente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi02' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi02
go
CREATE STATISTICS [IndexEstat_Venta_Cdi02] ON [dbo].[Venta]([Sucursal], [Moneda], [Empresa], [Estatus])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi03' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi03
go
CREATE STATISTICS [IndexEstat_Venta_Cdi03] ON [dbo].[Venta]([Moneda], [Descuento], [Cliente], [EnviarA], [Agente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi04' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi04
go
CREATE STATISTICS [IndexEstat_Venta_Cdi04] ON [dbo].[Venta]([Cliente], [Mov], [Estatus], [Moneda], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi05' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi05
go
CREATE STATISTICS [IndexEstat_Venta_Cdi05] ON [dbo].[Venta]([Empresa], [Descuento], [Cliente], [EnviarA], [Agente], [Sucursal])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi06' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi06
go
CREATE STATISTICS [IndexEstat_Venta_Cdi06] ON [dbo].[Venta]([Cliente], [EnviarA], [Mov], [Estatus], [Moneda], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi07' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi07
go
CREATE STATISTICS [IndexEstat_Venta_Cdi07] ON [dbo].[Venta]([Mov], [Estatus], [Moneda], [Empresa], [Sucursal], [Cliente], [EnviarA])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi08' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi08
go
CREATE STATISTICS [IndexEstat_Venta_Cdi08] ON [dbo].[Venta]([Sucursal], [Descuento], [Cliente], [EnviarA], [Agente], [Moneda], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi09' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi09
go
CREATE STATISTICS [IndexEstat_Venta_Cdi09] ON [dbo].[Venta]([Estatus], [Descuento], [Cliente], [EnviarA], [Agente], [Sucursal], [Moneda], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi10' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi10
go
CREATE STATISTICS [IndexEstat_Venta_Cdi10] ON [dbo].[Venta]([Agente], [Mov], [Estatus], [Moneda], [Empresa], [Sucursal], [Descuento], [Cliente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEstat_Venta_Cdi11' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEstat_Venta_Cdi11
go
CREATE STATISTICS [IndexEstat_Venta_Cdi11] ON [dbo].[Venta]([Descuento], [Mov], [Estatus], [Moneda], [Empresa], [Sucursal], [Cliente], [EnviarA], [Agente])
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Venta_Cdi12')
    DROP INDEX Index_Venta_Cdi12 ON VentaD;
go
CREATE NONCLUSTERED INDEX [Index_Venta_Cdi12] ON [dbo].[VentaD] 
(
	[ID] ASC,
	[Articulo] ASC
)
INCLUDE ( [Renglon],
[RenglonSub],
[RenglonID],
[RenglonTipo],
[Cantidad],
[Almacen],
[EnviarA],
[Codigo],
[SubCuenta],
[Precio],
[DescuentoTipo],
[DescuentoLinea],
[Impuesto1],
[Impuesto2],
[Impuesto3],
[DescripcionExtra],
[Costo],
[Paquete],
[ContUso],
[Comision],
[Aplica],
[AplicaID],
[CantidadPendiente],
[CantidadReservada],
[CantidadCancelada],
[CantidadOrdenada],
[CantidadA],
[Unidad],
[Factor],
[CantidadInventario],
[SustitutoArticulo],
[FechaRequerida],
[Instruccion],
[Agente],
[Sucursal],
[UEN]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Venta_Cdi13')
    DROP INDEX Index_Venta_Cdi13 ON Art;
go
CREATE NONCLUSTERED INDEX [Index_Venta_Cdi13] ON [dbo].[Art] 
(
	[Articulo] ASC
)
INCLUDE ( [Rama],
[Descripcion1],
[Grupo],
[Categoria],
[Familia],
[Linea],
[Fabricante],
[Impuesto1],
[Impuesto2],
[Impuesto3],
[Unidad],
[Tipo],
[MonedaPrecio],
[PrecioLista],
[Codigo]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEst_Venta_Cdi14' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEst_Venta_Cdi14
go
CREATE STATISTICS [IndexEst_Venta_Cdi14] ON [dbo].[Venta]([Empresa], [ID])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEst_Venta_Cdi15' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEst_Venta_Cdi15
go
CREATE STATISTICS [IndexEst_Venta_Cdi15] ON [dbo].[Venta]([ID], [Moneda], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEst_Venta_Cdi16' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEst_Venta_Cdi16
go
CREATE STATISTICS [IndexEst_Venta_Cdi16] ON [dbo].[Venta]([ID], [Cliente], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexEst_Venta_Cdi17' AND object_id = OBJECT_ID(N'Venta'))
DROP STATISTICS Venta.IndexEst_Venta_Cdi17
go
CREATE STATISTICS [IndexEst_Venta_Cdi17] ON [dbo].[Venta]([Cliente], [Moneda], [Empresa], [ID])
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Venta_Cdi18')
    DROP INDEX Index_Venta_Cdi18 ON Venta;
go
CREATE NONCLUSTERED INDEX [Index_Venta_Cdi18] ON [dbo].[Venta] 
(
	[Moneda] ASC,
	[Empresa] ASC,
	[ID] ASC,
	[Cliente] ASC
)
INCLUDE ( [Mov],
[MovID],
[FechaEmision],
[UltimoCambio],
[Concepto],
[Proyecto],
[TipoCambio],
[Usuario],
[Autorizacion],
[Referencia],
[DocFuente],
[Observaciones],
[Estatus],
[Situacion],
[Directo],
[Prioridad],
[RenglonID],
[EnviarA],
[Almacen],
[AlmacenDestino],
[Agente],
[FormaEnvio],
[FechaRequerida],
[FechaProgramadaEnvio],
[FechaOrdenCompra],
[OrdenCompra],
[Condicion],
[Vencimiento],
[Descuento],
[DescuentoGlobal],
[Importe],
[Impuestos],
[Saldo],
[DescuentoLineal],
[ComisionTotal],
[OrigenTipo],
[Origen],
[OrigenID],
[Poliza],
[PolizaID],
[GenerarPoliza],
[ContID],
[Ejercicio],
[Periodo],
[FechaRegistro],
[FechaConclusion],
[FechaEntrega],
[Sucursal],
[Espacio],
[Clase],
[Subclase],
[SobrePrecio]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
