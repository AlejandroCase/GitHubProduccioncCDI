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
--- Explorador CE            												     ---
------------------------------------------------------------------------------------  
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'index_CE_cdi00')
    DROP INDEX index_CE_cdi00 ON CE;
    go
CREATE NONCLUSTERED INDEX [index_CE_cdi00] ON [dbo].[CE] 
(
	[Empresa] ASC,
	[Moneda] ASC,
	[Programa] ASC,
	[CDISocio] ASC,
	[Condicion] ASC,
	[CEPlan] ASC,
	[Descuento] ASC,
	[Cliente2] ASC,
	[Personal] ASC,
	[Cliente] ASC
)
INCLUDE ( [ID],
[Mov],
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
[Observaciones],
[Estatus],
[Situacion],
[SituacionFecha],
[SituacionUsuario],
[SituacionNota],
[FechaInicio],
[FechaFin],
[Poliza],
[PolizaID],
[GenerarPoliza],
[ContID],
[Ejercicio],
[Periodo],
[FechaRegistro],
[FechaConclusion],
[FechaCancelacion],
[Sucursal],
[Importe],
[Impuestos],
[DescuentoGlobal],
[DescuentoLineal],
[Inscripcion],
[Porcentaje],
[Porcentaje2],
[HHCuotaSEP],
[HHCuotaSEPImporte],
[HHInscripcion],
[HHVencimiento],
[CDICentroCostos],
[CDIFlujoAutorizacion]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'index_CE_cdi01')
    DROP INDEX index_CE_cdi01 ON CEPlan;
CREATE NONCLUSTERED INDEX [index_CE_cdi01] ON [dbo].[CEPlan] 
(
	[CEPlan] ASC
)
INCLUDE ( [Descripcion],
[Nivel],
[Area],
[CreditoDirecto],
[Inscripcion],
[Precio],
[Impuesto1],
[Condicion],
[Coordinacion]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi02' AND object_id = OBJECT_ID(N'CE'))
DROP STATISTICS CE.index_CE_cdi02
go
CREATE STATISTICS [index_CE_cdi02] ON [dbo].[CE]([Descuento], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi03' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi03
go   
CREATE STATISTICS [index_CE_cdi03] ON [dbo].[CE]([Personal], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi04' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi04
go
CREATE STATISTICS [index_CE_cdi04] ON [dbo].[CE]([Condicion], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi05' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi05
go
CREATE STATISTICS [index_CE_cdi05] ON [dbo].[CE]([Programa], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi06' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi06
go
CREATE STATISTICS [index_CE_cdi06] ON [dbo].[CE]([CEPlan], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi07' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi07
go
CREATE STATISTICS [index_CE_cdi07] ON [dbo].[CE]([Empresa], [Moneda], [Condicion])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi08' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi08
go
CREATE STATISTICS [index_CE_cdi08] ON [dbo].[CE]([Cliente2], [Empresa], [Moneda])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi09' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi09
go
CREATE STATISTICS [index_CE_cdi09] ON [dbo].[CE]([Moneda], [Empresa], [CDISocio], [Condicion])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi10' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi10
go
CREATE STATISTICS [index_CE_cdi10] ON [dbo].[CE]([CDISocio], [Cliente2], [Cliente], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi11' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi11
go
CREATE STATISTICS [index_CE_cdi11] ON [dbo].[CE]([Empresa], [Moneda], [Descuento], [CDISocio], [Condicion], [CEPlan])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi12' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi12
go
CREATE STATISTICS [index_CE_cdi12] ON [dbo].[CE]([Empresa], [Moneda], [Cliente2], [CDISocio], [Condicion], [CEPlan], [Programa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi13' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi13
go
CREATE STATISTICS [index_CE_cdi13] ON [dbo].[CE]([Empresa], [Moneda], [Personal], [CDISocio], [Condicion], [CEPlan], [Programa], [Descuento])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi14' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi14
go
CREATE STATISTICS [index_CE_cdi14] ON [dbo].[CE]([Moneda], [CDISocio], [Condicion], [CEPlan], [Programa], [Descuento], [Cliente2], [Personal])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi15' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi15
go
CREATE STATISTICS [index_CE_cdi15] ON [dbo].[CE]([CDISocio], [Condicion], [CEPlan], [Programa], [Descuento], [Cliente2], [Personal], [Cliente], [Moneda])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi16' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi16
go
CREATE STATISTICS [index_CE_cdi16] ON [dbo].[CE]([Empresa], [Moneda], [CDISocio], [Cliente2], [Cliente], [Condicion], [CEPlan], [Programa], [Descuento])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi17' AND object_id = OBJECT_ID(N'CE'))
   DROP STATISTICS CE.index_CE_cdi17
go
CREATE STATISTICS [index_CE_cdi17] ON [dbo].[CE]([Empresa], [Moneda], [CEPlan], [CDISocio], [Condicion], [Programa], [Descuento], [Cliente2], [Personal], [Cliente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'index_CE_cdi18' AND object_id = OBJECT_ID(N'cte'))
   DROP STATISTICS cte.index_CE_cdi18
go
CREATE STATISTICS [index_CE_cdi18] ON [dbo].[Cte]([CECliente], [Cliente], [Socio])
go