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
--- Explorador CXC, Cobros, aplica												 ---
------------------------------------------------------------------------------------   
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Cte_CDI08')
    DROP INDEX Index_Cte_CDI08 ON cte;
    go
CREATE NONCLUSTERED INDEX [Index_Cte_CDI08] ON [dbo].[Cte] 
(
	[Cliente] ASC
)
INCLUDE ( [Nombre],
[NombreCorto],
[Direccion],
[EntreCalles],
[Plano],
[Observaciones],
[Colonia],
[Poblacion],
[Estado],
[Pais],
[Zona],
[CodigoPostal],
[RFC],
[Telefonos],
[Fax],
[Categoria],
[Grupo],
[Familia],
[Credito],
[ZonaImpuesto],
[Tipo],
[Agente],
[Agente3],
[Agente4],
[EnviarA],
[Proyecto],
[Condicion],
[DefMoneda],
[Estatus],
[Mensaje],
[Numero],
[Cobrador],
[DescuentoRecargos],
[PersonalNombres],
[PersonalApellidoPaterno],
[PersonalApellidoMaterno],
[Membresia],
[Socio],
[CDIFacturarA])
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Cxc_CDI09')
    DROP INDEX Index_Cxc_CDI09 ON cxc;
    go
CREATE NONCLUSTERED INDEX [Index_Cxc_CDI09] ON [dbo].[Cxc] 
(
	[Empresa] ASC,
	[Estatus] ASC,
	[ID] ASC,
	[Mov] ASC,
	[Cliente] ASC,
	[MovID] ASC,
	[ClienteMoneda] ASC
)
INCLUDE ( [FechaEmision],
[Referencia],
[Vencimiento],
[Saldo]) 
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Cxc_CDI20')
    DROP INDEX Index_Cxc_CDI20 ON cxc;
    go
CREATE NONCLUSTERED INDEX [Index_Cxc_CDI20] ON [dbo].[Cxc] 
(
	[Cliente] ASC,
	[Mov] ASC,
	[Estatus] ASC,
	[Empresa] ASC
)
INCLUDE ( [ID],
[MovID],
[FechaEmision],
[Referencia],
[ClienteMoneda],
[Vencimiento],
[Saldo]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Est_Cxc_CDI10' AND object_id = OBJECT_ID(N'CXC'))
DROP STATISTICS CXC.Est_Cxc_CDI10
go
CREATE STATISTICS [Est_Cxc_CDI10] ON [dbo].[Cxc]([Estatus], [Moneda], [Sucursal], [Empresa], [CDIFacturarA], [CDISocio])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Est_Cxc_CDI11' AND object_id = OBJECT_ID(N'CXC'))
DROP STATISTICS cxc.Est_Cxc_CDI11
go
CREATE STATISTICS [Est_Cxc_CDI11] ON [dbo].[Cxc]([ClienteMoneda], [Cliente], [Estatus], [Moneda], [Sucursal], [Empresa], [Mov], [ID], [MovID])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Est_Cxc_CDI12' AND object_id = OBJECT_ID(N'CXC'))
DROP STATISTICS CXC.Est_Cxc_CDI12
go
CREATE STATISTICS [Est_Cxc_CDI12] ON [dbo].[Cxc]([PersonalCobrador], [Estatus], [Moneda], [Sucursal], [Empresa], [Mov], [ID], [MovID], [MovAplica], [Cliente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Est_Cxc_CDI13' AND object_id = OBJECT_ID(N'CXC'))
DROP STATISTICS CXC.Est_Cxc_CDI13
go
CREATE STATISTICS [Est_Cxc_CDI13] ON [dbo].[Cxc]([LineaCredito], [Estatus], [Moneda], [Sucursal], [Empresa], [Mov], [ID], [MovID], [MovAplica], [Cliente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Est_Cxc_CDI13_1' AND object_id = OBJECT_ID(N'CXC'))
DROP STATISTICS CXC.Est_Cxc_CDI13_1
go
CREATE STATISTICS [Est_Cxc_CDI13_1] ON [dbo].[Cxc]([Mov], [ID], [Cliente], [CDIFacturarA], [CDISocio], [ContUso], [TipoTasa], [TipoAmortizacion], [LineaCredito], [PersonalCobrador], [Agente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Est_Cxc_CDI13_2' AND object_id = OBJECT_ID(N'CXC'))
DROP STATISTICS CXC.Est_Cxc_CDI13_2
go
CREATE STATISTICS [Est_Cxc_CDI13_2] ON [dbo].[Cxc]([Agente], [Cajero], [Estatus], [Moneda], [Sucursal], [Empresa], [Mov], [ID], [MovID], [MovAplica], [Cliente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Est_Cxc_CDI13_3' AND object_id = OBJECT_ID(N'cxc'))
DROP STATISTICS cxc.Est_Cxc_CDI13_3
go
CREATE STATISTICS [Est_Cxc_CDI13_3] ON [dbo].[Cxc]([Estatus], [Moneda], [Sucursal], [Empresa], [Mov], [ID], [MovID], [MovAplica], [Cliente], [MovAplicaID], [CDIFacturarA])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Est_Cxc_CDI13_4' AND object_id = OBJECT_ID(N'CXC'))
DROP STATISTICS CXC.Est_Cxc_CDI13_4
go
CREATE STATISTICS [Est_Cxc_CDI13_4] ON [dbo].[Cxc]([Cliente], [CDISocio], [CDIFacturarA], [Estatus], [Moneda], [Sucursal], [Empresa], [Mov], [ID], [MovID], [MovAplica], [MovAplicaID], [ContUso])
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Saldo_CDI14')
    DROP INDEX Index_Saldo_CDI14 ON SALDO;
    go
CREATE NONCLUSTERED INDEX [Index_Saldo_CDI14] ON [dbo].[Saldo] 
(
	[Empresa] ASC,
	[Rama] ASC,
	[Moneda] ASC,
	[Cuenta] ASC
)
INCLUDE ( [Saldo]) 
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Index_Saldo_CDI18' AND object_id = OBJECT_ID(N'Saldo'))
DROP STATISTICS Saldo.Index_Saldo_CDI18
go
CREATE STATISTICS [Index_Saldo_CDI18] ON [dbo].[Saldo]([Moneda], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Index_Saldo_CDI18_1' AND object_id = OBJECT_ID(N'Saldo'))
DROP STATISTICS Saldo.Index_Saldo_CDI18_1
go
CREATE STATISTICS [Index_Saldo_CDI18_1] ON [dbo].[Saldo]([Cuenta], [Moneda])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Index_Saldo_CDI18_2' AND object_id = OBJECT_ID(N'Saldo'))
DROP STATISTICS Saldo.Index_Saldo_CDI18_2
go
CREATE STATISTICS [Index_Saldo_CDI18_2] ON [dbo].[Saldo]([Rama], [Empresa], [Moneda])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Index_Saldo_CDI18_3' AND object_id = OBJECT_ID(N'Saldo'))
DROP STATISTICS Saldo.Index_Saldo_CDI18_3
go
CREATE STATISTICS [Index_Saldo_CDI18_3] ON [dbo].[Saldo]([Moneda], [Cuenta], [Rama])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'Index_Saldo_CDI18_4' AND object_id = OBJECT_ID(N'Saldo'))
DROP STATISTICS Saldo.Index_Saldo_CDI18_4
go
CREATE STATISTICS [Index_Saldo_CDI18_4] ON [dbo].[Saldo]([Empresa], [Cuenta], [Moneda], [Rama])
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Saldo_CDI15')
    DROP INDEX Index_Saldo_CDI15 ON CentroCostos;
    go
CREATE NONCLUSTERED INDEX [Index_Saldo_CDI15] ON [dbo].[CentroCostos] 
(
	[CentroCostos] ASC
)
INCLUDE ( [Descripcion]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Saldo_CDI16')
    DROP INDEX Index_Saldo_CDI16 ON MovTipo;
    go
CREATE NONCLUSTERED INDEX [Index_Saldo_CDI16] ON [dbo].[MovTipo] 
(
	[Modulo] ASC
)
INCLUDE ( [Mov],
[Factor]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Saldo_CDI17')
    DROP INDEX Index_Saldo_CDI17 ON Personal;
    go
CREATE NONCLUSTERED INDEX [Index_Saldo_CDI17] ON [dbo].[Personal] 
(
	[Personal] ASC
)
INCLUDE ( [ApellidoPaterno],
[ApellidoMaterno],
[Nombre]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Saldo_CDI19')
    DROP INDEX Index_Saldo_CDI19 ON CTE;
    go
CREATE NONCLUSTERED INDEX [Index_Saldo_CDI19] ON [dbo].[Cte] 
(
	[Cliente] ASC
)WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
