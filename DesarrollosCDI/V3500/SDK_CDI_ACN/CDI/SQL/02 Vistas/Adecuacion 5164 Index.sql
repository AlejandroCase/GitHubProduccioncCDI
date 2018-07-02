SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO
----------------------------------------
--- Juan B Adecuacion 5164 Tiempos en exploradores
-----------------------------------------
----- ExplorarCxC y AploradorCXCCobro
IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'CXC_CDI01')
    DROP INDEX CXC_CDI01 ON CXC;
GO
CREATE INDEX CXC_CDI01
    ON CXC (ID,MOV,MOVID,FechaEmision, Referencia, Estatus,cliente, clientemoneda,vencimiento, saldo); 
GO
IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'CXC_CDI02')
    DROP INDEX CXC_CDI02 ON Cte;
GO
CREATE INDEX CXC_CDI02
    ON Cte (Cliente, Nombre, Membresia, Socio); 
GO
---- Explorador Aplicacion CXC
IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'CXC_CDI03')
    DROP INDEX CXC_CDI03 ON cxc;
GO
CREATE NONCLUSTERED INDEX CXC_CDI03
    ON cxc (Empresa, Estatus) include (Mov, Movid,fechaEmision,proyecto,uen,moneda,referencia, cliente,movAplica, MovAplicaID,FechaRegistro);
GO

---- Explorador Socio Movimientos
IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'CDI04')
    DROP INDEX CDI04 ON CDISocio;
GO
CREATE  INDEX CDI04
    ON CDISocio (ID, mov, Proyecto,Cliente, ClienteAnt, UEN )
GO

---- Explorador Socio 
IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'CDI05')
    DROP INDEX CDI05 ON Cte;
GO
CREATE NONCLUSTERED INDEX CDI05
    ON Cte (Estatus, CDISocio) include (Cliente, Rama, Categoria, Grupo, familia, Tipo,PersonalNombres,PersonalApellidoPaterno,PersonalApellidoMaterno,FechaNacimiento,Espacio,Titular,Membresia,Socio)
GO

---- Explorador Venta 
IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'CDI06')
    DROP INDEX CDI06 ON Venta;
GO
CREATE NONCLUSTERED INDEX CDI06
    ON Venta (Empresa, Moneda, Sucursal,Mov, Estatus) include (MovID,
FechaEmision,
UltimoCambio,
Concepto,
Proyecto,
TipoCambio,
Usuario,
Autorizacion,
Referencia,
DocFuente,
Observaciones,
Situacion,
Directo,
Prioridad,
RenglonID,
Cliente,
EnviarA,
Almacen,
AlmacenDestino,
Agente,
FormaEnvio,
Descuento,
FechaRequerida,
OrdenCompra,
Condicion,
Vencimiento,
DescuentoGlobal,
Saldo,
Importe,
Impuestos,
ComisionTotal,
AnticiposFacturados,
Retencion,
Poliza,
PolizaID,
ServicioTipo,
ServicioTipoOrden,
ServicioTipoOperacion,
ServicioArticulo,
ServicioSerie,
ServicioContrato,
ServicioContratoID,
ServicioContratoTipo,
ServicioGarantia,
ServicioExpress,
ServicioDescripcion,
ServicioFecha,
ServicioIdentificador,
ServicioPlacas,
ServicioKms,
ServicioSiniestro,
ServicioDemerito,
ServicioDeducible,
ServicioNumero,
ServicioNumeroEconomico,ServicioAseguradora,FechaConclusion,Espacio)
GO
---- Explorador Control Escolar 
IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'CDI07')
    DROP INDEX CDI07 ON CE;
GO
CREATE  INDEX CDI07
    ON CE (id,Mov, Programa, Descuento, Cliente, Cliente2, Personal) 
GO

select * from HHCEArt