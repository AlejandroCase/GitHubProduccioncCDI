/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

GO
----------------------------------------------------------
---------------    Tabla de DIM            ---------------
----------------------------------------------------------
EXEC spALTER_TABLE 'IncidenciaH', 'Proyecto', 'varchar(50) null'
GO
EXEC spALTER_TABLE 'movbitacora', 'CDIConcepto', 'Varchar(30)'
GO
EXEC spALTER_TABLE 'NominaD', 'CDIDiasDescanso', 'int null Default 0 WITH VALUES'
GO 
EXEC spALTER_TABLE 'NominaD', 'CDIDiasFestivo', 'int null Default 0 WITH VALUES'
GO
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='CDIUsuarioCFG') 
CREATE TABLE CDIUsuarioCFG--drop table CDIUsuarioCFG
(
Usuario varchar(10),
CDIPersonalInfo         bit,
CDIRenovacionMembresia	bit		NOT NULL 	DEFAULT 0,
CONSTRAINT PkCDIUsuarioCFG PRIMARY KEY  CLUSTERED (Usuario)   
)
GO
---------------------			R E N O V A C I O N   M E M B R E S I A
--- U S U A R I O ---			D S G
---------------------
EXEC spALTER_TABLE 'CDIUsuarioCFG',	'CDIRenovacionMembresia',   'bit NULL DEFAULT 0 WITH VALUES'	--- VISUALIZAR ACCION RENOVACION DE MEMBRESIA EN MODULO DE SOCIOS
GO
