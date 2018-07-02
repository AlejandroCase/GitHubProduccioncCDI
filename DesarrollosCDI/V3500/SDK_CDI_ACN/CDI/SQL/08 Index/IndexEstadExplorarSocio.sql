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
--- Explorador Socio																 ---
------------------------------------------------------------------------------------ 
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Socio_CDI11')
    DROP INDEX Index_Socio_CDI11 ON cte;
go
CREATE NONCLUSTERED INDEX [Index_Socio_CDI11] ON [dbo].[Cte] 
(
	[Cliente] ASC
)
INCLUDE ( [Rama],
[Nombre],
[NombreCorto],
[Direccion],
[DireccionNumero],
[DireccionNumeroInt],
[EntreCalles],
[Plano],
[Observaciones],
[Delegacion],
[Colonia],
[Poblacion],
[Estado],
[Pais],
[Zona],
[CodigoPostal],
[RFC],
[Categoria],
[Grupo],
[Familia],
[PersonalNombres],
[PersonalApellidoPaterno],
[PersonalApellidoMaterno],
[Titular],
[Membresia],
[Socio],
[RutaImagen],
[CDIEcoSocioEmpresa],
[CDIEcoPropietarioEmpresa],
[CDIEcoAccionistaEmpresa],
[CDIEcoEmpleadoEmpresa],
[CDIEcoNombreEmpresa],
[CDIEcoNombreGiro],
[CDIEcoDireccion],
[CDIEcoDireccionNumero],
[CDIEcoDireccionNumeroInt],
[CDIEcoEntreCalles],
[CDIEcoPlano],
[CDIEcoObservaciones],
[CDIEcoDelegacion],
[CDIEcoColonia],
[CDIEcoPoblacion],
[CDIEcoEstado],
[CDIEcoPais],
[CDIEcoMail],
[CDIEcoTelefono],
[CDIEcoFax],
[CDIEcoCodigoPostal],
[CDIEcoIngresos],
[CDIEcoCasa],
[CDIEcoMontoColegiatura],
[CDIEcoColegio],
[CDIAutorizacionCargos],
[NIPCDI],
[CDISubsidio],
[CDICuotaMembresia],
[CDISocio]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT * FROM sys.indexes WHERE name = N'Index_Socio_CDI00')
    DROP INDEX Index_Socio_CDI00 ON MovTipo;
go
CREATE NONCLUSTERED INDEX [Index_Socio_CDI00] ON [dbo].[MovTipo] 
(
	[Modulo] ASC,
	[Mov] ASC
)
INCLUDE ( [Clave],
[SubClave]) WITH (SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI01' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI01
go
CREATE STATISTICS [IndexStati_Socio_CDI01] ON [dbo].[CDISocio]([Sucursal], [Moneda], [Empresa])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI02' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI02
go
CREATE STATISTICS [IndexStati_Socio_CDI02] ON [dbo].[CDISocio]([ClienteAnt], [Cliente], [Moneda], [Empresa], [Estatus])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI03' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI03
go
CREATE STATISTICS [IndexStati_Socio_CDI03] ON [dbo].[CDISocio]([Sucursal], [ClienteAnt], [Mov], [Proyecto], [Cliente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI04' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI04
go
CREATE STATISTICS [IndexStati_Socio_CDI04] ON [dbo].[CDISocio]([Mov], [Moneda], [Empresa], [Estatus], [Sucursal], [ClienteAnt])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI05' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI05
go
CREATE STATISTICS [IndexStati_Socio_CDI05] ON [dbo].[CDISocio]([Moneda], [Empresa], [Estatus], [Sucursal], [ClienteAnt], [Cliente], [Mov])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI10' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI10
go
CREATE STATISTICS [IndexStati_Socio_CDI10] ON [dbo].[CDISocio]([ClienteAnt], [Mov], [Proyecto], [Cliente], [UEN], [Sucursal], [Moneda])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI06' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI06
go
CREATE STATISTICS [IndexStati_Socio_CDI06] ON [dbo].[CDISocio]([Proyecto], [Moneda], [Empresa], [Estatus], [Sucursal], [ClienteAnt], [Mov], [Cliente])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI07' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI07
go
CREATE STATISTICS [IndexStati_Socio_CDI07] ON [dbo].[CDISocio]([UEN], [Moneda], [Empresa], [Estatus], [Sucursal], [ClienteAnt], [Mov], [Proyecto])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI08' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI08
go
CREATE STATISTICS [IndexStati_Socio_CDI08] ON [dbo].[CDISocio]([Estatus], [ClienteAnt], [Mov], [Proyecto], [Cliente], [UEN], [Sucursal], [Moneda])
go
IF EXISTS (SELECT name FROM sys.stats WHERE name = N'IndexStati_Socio_CDI09' AND object_id = OBJECT_ID(N'CDISocio'))
DROP STATISTICS CDISocio.IndexStati_Socio_CDI09
go
CREATE STATISTICS [IndexStati_Socio_CDI09] ON [dbo].[CDISocio]([Empresa], [ClienteAnt], [Mov], [Proyecto], [Cliente], [UEN], [Sucursal], [Moneda], [Estatus])
go