SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF 
GO
---------------------------------------------------------------------
-- Desarrollador: Oscar Danell Moran
-- Fecha: 25-Noviembre-2010
-- Descripcion: Cubo de el Modulo de Socios CDI
---------------------------------------------------------------------

EXEC spLimpiarCubo 'ModSocios'
EXEC spInsertarCubo 'ModSocios','Modulo Socios','Modulo Socios','Cubo_ModSocios',0,1
GO
EXEC spInsertarMedida 'ModSocios','EdadSocio','EdadSocio','EdadSocio','aggSum'
GO
EXEC spInsertarDimension 'ModSocios','Mov','Normal','Mov',1
EXEC spInsertarDimensionNivel 'ModSocios','Mov','Mov','Mov','Mov',1
GO
EXEC spInsertarDimension 'ModSocios','MovId','Normal','MovId',1
EXEC spInsertarDimensionNivel 'ModSocios','MovId','MovId','MovId','MovId',1
GO
EXEC spInsertarDimension 'ModSocios','FechaEmision','Tiempo','FechaEmision',1
EXEC spInsertarDimensionNivel 'ModSocios','FechaEmision','FechaEmision','FechaEmision','FechaEmision',1
GO
EXEC spInsertarDimension 'ModSocios','Concepto','Normal','Concepto',1
EXEC spInsertarDimensionNivel 'ModSocios','Concepto','Concepto','Concepto','Concepto',1
GO
EXEC spInsertarDimension 'ModSocios','Observaciones','Normal','Observaciones',1
EXEC spInsertarDimensionNivel 'ModSocios','Observaciones','Observaciones','Observaciones','Observaciones',1
GO
EXEC spInsertarDimension 'ModSocios','EstatusMov','Normal','EstatusMov',1
EXEC spInsertarDimensionNivel 'ModSocios','EstatusMov','EstatusMov','EstatusMov','EstatusMov',1
GO
EXEC spInsertarDimension 'ModSocios','FechaIngreso','Tiempo','FechaIngreso',1
EXEC spInsertarDimensionNivel 'ModSocios','FechaIngreso','FechaIngreso','FechaIngreso','FechaIngreso',1
GO
EXEC spInsertarDimension 'ModSocios','FechaVigencia','Tiempo','FechaVigencia',1
EXEC spInsertarDimensionNivel 'ModSocios','FechaVigencia','FechaVigencia','FechaVigencia','FechaVigencia',1
GO
EXEC spInsertarDimension 'ModSocios','Categoria','Normal','Categoria',1
EXEC spInsertarDimensionNivel 'ModSocios','Categoria','Categoria','Categoria','Categoria',1
GO
EXEC spInsertarDimension 'ModSocios','DemandanteTipo','Normal','DemandanteTipo',1
EXEC spInsertarDimensionNivel 'ModSocios','DemandanteTipo','DemandanteTipo','DemandanteTipo','DemandanteTipo',1
GO
EXEC spInsertarDimension 'ModSocios','ClaveDemandante','Normal','ClaveDemandante',1
EXEC spInsertarDimensionNivel 'ModSocios','ClaveDemandante','ClaveDemandante','ClaveDemandante','ClaveDemandante',1
GO
EXEC spInsertarDimension 'ModSocios','NombreDemandante','Normal','NombreDemandante',1
EXEC spInsertarDimensionNivel 'ModSocios','NombreDemandante','NombreDemandante','NombreDemandante','NombreDemandante',1
GO
EXEC spInsertarDimension 'ModSocios','DemandadoTipo','Normal','DemandadoTipo',1
EXEC spInsertarDimensionNivel 'ModSocios','DemandadoTipo','DemandadoTipo','DemandadoTipo','DemandadoTipo',1
GO
EXEC spInsertarDimension 'ModSocios','ClaveDemandado','Normal','ClaveDemandado',1
EXEC spInsertarDimensionNivel 'ModSocios','ClaveDemandado','ClaveDemandado','ClaveDemandado','ClaveDemandado',1
GO
EXEC spInsertarDimension 'ModSocios','NombreDemandado','Normal','NombreDemandado',1
EXEC spInsertarDimensionNivel 'ModSocios','NombreDemandado','NombreDemandado','NombreDemandado','NombreDemandado',1
GO
EXEC spInsertarDimension 'ModSocios','Estado','Normal','Estado',1
EXEC spInsertarDimensionNivel 'ModSocios','Estado','Estado','Estado','Estado',1
GO
EXEC spInsertarDimension 'ModSocios','NIP','Normal','NIP',1
EXEC spInsertarDimensionNivel 'ModSocios','NIP','NIPCDI','NIPCDI','NIPCDI',1
GO
EXEC spInsertarDimension 'ModSocios','Cliente','Normal','Cliente',1
EXEC spInsertarDimensionNivel 'ModSocios','Cliente','Cliente','Cliente','Cliente',1
GO
EXEC spInsertarDimension 'ModSocios','Membresia','Normal','Membresia',1
EXEC spInsertarDimensionNivel 'ModSocios','Membresia','Membresia','Membresia','Membresia',1
GO
EXEC spInsertarDimension 'ModSocios','Socio','Normal','Socio',1
EXEC spInsertarDimensionNivel 'ModSocios','Socio','Socio','Socio','Socio',1
GO
EXEC spInsertarDimension 'ModSocios','Estatus','Normal','Estatus',1
EXEC spInsertarDimensionNivel 'ModSocios','Estatus','Estatus','Estatus','Estatus',1
GO
EXEC spInsertarDimension 'ModSocios','TipoSangre','Normal','TipoSangre',1
EXEC spInsertarDimensionNivel 'ModSocios','TipoSangre','TipoSangre','TipoSangre','TipoSangre',1
GO
--EXEC spInsertarDimension 'ModSocios','Edad','Normal','Edad',1
--EXEC spInsertarDimensionNivel 'ModSocios','Edad','EdadSocio','EdadSocio','EdadSocio',1
--GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID('dbo.Cubo_ModSocios') AND TYPE = 'V')
DROP VIEW dbo.Cubo_ModSocios
GO
CREATE VIEW Cubo_ModSocios
AS
SELECT c.mov, --
       c.movid, --
       convert(char(10),c.FechaEmision,120) AS FechaEmision, --
       c.Concepto, --
       c.Observaciones, --
       c.Estatus AS 'EstatusMov', --
       convert(char(10),c.FechaIngreso,120) AS FechaIngreso, --
       convert(char(10),c.FechaVigencia,120) AS FechaVigencia, --
       c.Categoria, --
       c.DemandanteTipo, -- 
       c.ClaveDemandante, --
       c.DemandadoTipo, --
       c.ClaveDemandado,-- 
       c.Estado, -- 
       c.NombreDemandante, --
       c.NombreDemandado, --
       cd.NIPCDI, --
       cd.Cliente, --
       cd.Membresia, --
       cd.Socio, --
       cd.Estatus, --
       cd.TipoSangre, --
       cd.Edad AS 'EdadSocio' --
  FROM CDISocio c
  JOIN CDISocioD cd ON c.ID = cd.ID
  GO

--SELECT * FROM CDISocioD cd 
--select * from cubo_ModSocios


