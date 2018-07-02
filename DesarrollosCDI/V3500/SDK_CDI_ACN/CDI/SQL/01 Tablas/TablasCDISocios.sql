/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM Modulo m WHERE m.Modulo = 'SOC')
  INSERT INTO Modulo (Modulo, Nombre) VALUES ('SOC', 'Socios')
GO
IF NOT EXISTS (SELECT * FROM OtrosModulos m WHERE m.Modulo = 'SOC')  
  INSERT INTO OtrosModulos (Modulo, Nombre) VALUES ('SOC', 'Socios')
GO 


/*********** MovClave ********************/
if not exists(select * from MovClave WHERE Clave = 'SOC.SOL')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.SOL', 'Solicitud Admisión') 
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.VERIFICA')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.VERIFICA', 'Verificación') 
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.ACEPTA')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.ACEPTA', 'Aceptar') 
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.SOLSUBSID')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.SOLSUBSID', 'Solicitud Subsidio') 
GO    
if not exists(select * from MovClave WHERE Clave = 'SOC.SUBSID')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.SUBSID', 'Subsidio') 
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.RECHAZASUB')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.RECHAZASUB', 'Rechazar Subsidio', 'SOC.SUBSID')    
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.ACEPTASUB')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.ACEPTASUB', 'Aceptar Subsidio', 'SOC.SUBSID')    
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.RECHAZO')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.RECHAZO', 'Rechazado') 
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.SUSPENDER')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.SUSPENDER', 'Suspendido') 
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.SUSPENDER')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.SUSPENDER', 'Suspendido') 
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.TEMP')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.TEMP', 'Solicitud Temporal', 'SOC.SOL')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.TEMPORAL')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.TEMPORAL', 'Temporal') 
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.REN')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.REN', 'Renovar', 'SOC.TEMPORAL')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.REIN')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.REIN', 'Reingreso', 'SOC.SOL')    
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.REINGRESO')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.REINGRESO', 'Reingreso', 'SOC.ACEPTA')    
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.SOLBAJA')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.SOLBAJA', 'Solicitud Baja')    
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.BAJA')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.BAJA', 'Baja')    
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.SOLHON')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.SOLHON', 'Solicitud Honorario', 'SOC.SOL')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.SOLCORTE')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.SOLCORTE', 'Solicitud Cortesía', 'SOC.SOL')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.HONOR')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.HONOR', 'Honor y Justicia') 
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.CITASIN')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.CITASIN', 'Nueva Cita (Sin Bloqueo)', 'SOC.HONOR')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.CITACON')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.CITACON', 'Nueva Cita (Con Bloqueo)', 'SOC.HONOR')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.SANCION')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.SANCION', 'Sanción (Sin Bloqueo)') 
GO  
if not exists(SELECT * from MovClave WHERE Clave = 'SOC.DICTAMEN')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.DICTAMEN', 'Dictamen (Con Bloqueo)') 
GO  
if not exists(SELECT * from MovClave WHERE Clave = 'SOC.EQUIPO')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.EQUIPO', 'Equipo') 
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.BLOQUEO')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.BLOQUEO', 'Bloqueo', 'SOC.BAJA')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.DESBLOQUEO')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.DESBLOQUEO', 'Desbloqueo', 'SOC.BAJA')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.DAM')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.DAM', 'DAM')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.MEDICA')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.MEDICA', 'Cobertura Médica')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.INV')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.INV', 'Invitado')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.ALTACOND')
  insert MovClave (Modulo, Clave, NombreOmision) values ('SOC', 'SOC.ALTACOND', 'Alta Condicionada')    
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.EST')
  insert MovClave (Modulo, Grupo, NombreOmision, Factor, Clave) values ('SOC', 'Estadisticas', 'Estadistica', 1, 'SOC.EST') 
GO
if not exists(select * from MovClave WHERE Clave = 'SOC.PASE')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.PASE', 'Pase', 'SOC.EST')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.CAT')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.CAT', 'Cambio Categoria', 'SOC.EST')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.BAJADEF')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.BAJADEF', 'Baja por defuncion', 'SOC.BAJA')    
GO  
if not exists(select * from MovClave WHERE Clave = 'SOC.ALTA')
  insert MovClave (Modulo, Clave, NombreOmision, SubClaveDe) values ('SOC', 'SOC.ALTA', 'ALTA', 'SOC.BAJA')    
GO 

/*********** MovTipo ********************/
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SOL') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 100, 'Solicitud Admisión', 'SOC.SOL', NULL, 'SOC', 'Solicitud Admisión')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.VERIFICA') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 200, 'Verificación', 'SOC.VERIFICA', NULL, 'SOC', 'Verificación')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.ACEPTA') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 200, 'Aceptar', 'SOC.ACEPTA', NULL, 'SOC', 'Aceptar')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SOLSUBSID') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 200, 'Solicitud Subsidio', 'SOC.SOLSUBSID', NULL, 'SOC', 'Solicitud Subsidio')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SUBSID') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 200, 'Subsidio', 'SOC.SUBSID', NULL, 'SOC', 'Subsidio')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SUBSID' AND Mov = 'Escalar a Directivo') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 200, 'Escalar a Directivo', 'SOC.SUBSID', NULL, 'SOC', 'Escalar a Directivo')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SUBSID' AND Mov = 'Rechazar Subsidio') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 200, 'Rechazar Subsidio', 'SOC.SUBSID', 'SOC.RECHAZASUB', 'SOC', 'Rechazar Subsidio')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SUBSID' AND Mov = 'Aceptar Subsidio') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 200, 'Aceptar Subsidio', 'SOC.SUBSID', 'SOC.ACEPTASUB', 'SOC', 'Aceptar Subsidio')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.RECHAZO') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 300, 'Rechazado', 'SOC.RECHAZO', NULL, 'SOC', 'Rechazado')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SUSPENDER') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 300, 'Suspendido', 'SOC.SUSPENDER', NULL, 'SOC', 'Suspendido')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SOL' and SubClave = 'SOC.TEMP') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 810, 'Solicitud Temporal', 'SOC.SOL', 'SOC.TEMP', 'SOC', 'Solicitud Temporal')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.TEMPORAL') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 300, 'Temporal', 'SOC.TEMPORAL', NULL, 'SOC', 'Temporal')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.TEMPORAL' AND Mov = 'Renovacion') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 300, 'Renovacion', 'SOC.TEMPORAL', 'SOC.REN', 'SOC', 'Renovacion')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SOL' AND Mov = 'Solicitud Reingreso') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 400, 'Solicitud Reingreso', 'SOC.SOL', 'SOC.REIN', 'SOC', 'Solicitud Reingreso')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.ACEPTA' AND Mov = 'Reingreso') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 410, 'Reingreso', 'SOC.ACEPTA', 'SOC.REINGRESO', 'SOC', 'Reingreso')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SOLBAJA') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 500, 'Solicitud Baja', 'SOC.SOLBAJA', NULL, 'SOC', 'Solicitud Baja')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.BAJA') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 510, 'Baja', 'SOC.BAJA', NULL, 'SOC', 'Baja')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SOL' and SubClave = 'SOC.SOLHON') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 600, 'Solicitud Honorario', 'SOC.SOL', 'SOC.SOLHON', 'SOC', 'Solicitud Honorario')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.ACEPTA' AND Mov = 'Honorario') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 610, 'Honorario', 'SOC.ACEPTA', NULL, 'SOC', 'Honorario')
GO 
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SOL' and SubClave = 'SOC.SOLCORTE') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 600, 'Solicitud Cortesía', 'SOC.SOL', 'SOC.SOLCORTE', 'SOC', 'Solicitud Cortesía')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.TEMPORAL' AND Mov = 'Cortesía') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 610, 'Cortesía', 'SOC.TEMPORAL', NULL, 'SOC', 'Cortesía')
GO    
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.HONOR') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 100, 'Honor y Justicia', 'SOC.HONOR', NULL, 'SOC', 'Honor y Justicia')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.HONOR' and SubClave = 'SOC.CITASIN') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 200, 'Nueva Cita Sin Bloq', 'SOC.HONOR', 'SOC.CITASIN', 'SOC', 'Nueva Cita (Sin Bloqueo)')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.HONOR' and SubClave = 'SOC.CITACON') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 300, 'Nueva Cita Con Bloq', 'SOC.HONOR', 'SOC.CITACON', 'SOC', 'Nueva Cita (Con Bloqueo)')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SANCION') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 400, 'Sanción Sin Bloqueo', 'SOC.SANCION', NULL, 'SOC', 'Sanción (Sin Bloqueo)')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.DICTAMEN') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 500, 'Dictamen Con Bloqueo', 'SOC.DICTAMEN', NULL, 'SOC', 'Dictamen (Con Bloqueo)')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.EQUIPO') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 500, 'Equipo', 'SOC.EQUIPO', NULL, 'SOC', 'Equipo')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.BAJA' AND Mov = 'Bloqueo') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 500, 'Bloqueo', 'SOC.BAJA', 'SOC.BLOQUEO', 'SOC', 'Bloqueo')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.BAJA' AND Mov = 'Desbloqueo') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 501, 'Desbloqueo', 'SOC.BAJA', 'SOC.DESBLOQUEO', 'SOC', 'Desbloqueo')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.DAM') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 600, 'Comunidad DAM', 'SOC.DAM', NULL, 'SOC', 'Comunidad DAM')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.MEDICA') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 601, 'Cobertura Médica', 'SOC.MEDICA', NULL, 'SOC', 'Cobertura Médica')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.INV') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 601, 'Invitado', 'SOC.INV', NULL, 'SOC', 'Invitado')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.INV' AND Mov = 'Acompañante') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 601, 'Acompañante', 'SOC.INV', NULL, 'SOC', 'Acompañante')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.ALTACOND') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 601, 'Alta Condicionada', 'SOC.ALTACOND', NULL, 'SOC', 'Alta Condicionada')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.EST') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 520, 'Estadistica', 'SOC.EST', NULL, 'SOC', 'Estadistica')
GO
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.EST' and Mov = 'Cambio Categoria') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) values ('SOC', 520, 'Cambio Categoria', 'SOC.EST', 'SOC.CAT', 'SOC', 'Cambio Categoria')
GO
--BEGM 20101220. 4841. Herramienta Cambio de Categoría
if not exists(select * from MovTipo WHERE Modulo = 'SOC' and Clave = 'SOC.SOL' AND Mov = 'Sol Cambio Categoría') 
  insert MovTipo (Modulo, Orden, Mov, Clave, SubClave,  ConsecutivoModulo, ConsecutivoMov) 
  values ('SOC', 900, 'Sol Cambio Categoría', 'SOC.SOL', NULL, 'SOC', 'Sol Cambio Categoría')
GO

/****** Documentacion Socios ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDIDocSocio') and type = 'U') 
BEGIN
  CREATE TABLE dbo.CDIDocSocio (    
	Documento	    varchar(100),
	Nacionalidad 	varchar(20),
	Tipo		    varchar(20),	
	CONSTRAINT priCDIDocSocio PRIMARY KEY  CLUSTERED (Documento, Nacionalidad, Tipo)
  )  
END
GO

/****** Documentacion Socios Cta******/
if not exists (select * from sysobjects where id = object_id('dbo.CDIDocSocioCta') and type = 'U') 
BEGIN
  CREATE TABLE dbo.CDIDocSocioCta (
  	Cliente         varchar(10),    
	Documento	    varchar(100),
	Nacionalidad 	varchar(20),
	Tipo		    varchar(20),
	Entregado       varchar(2)	
	CONSTRAINT priCDIDocSocioCta PRIMARY KEY  CLUSTERED (Documento, Nacionalidad, Tipo, Cliente)
  )  
END
GO

/****** Consecutivos Socios ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDISocioC') and type = 'U') 
BEGIN
  CREATE TABLE dbo.CDISocioC (
    ID			int		    NOT NULL IDENTITY (1,1),
	Empresa		varchar(5)  NULL,
	Mov 		varchar(20) NULL,
	Serie		varchar(20)	NULL,
	Periodo		int		    NULL,
	Ejercicio	int		    NULL,
	Consecutivo int		    NOT NULL DEFAULT 0,
	Sucursal	int		    NOT NULL DEFAULT 0,
	CONSTRAINT priCDISocioC PRIMARY KEY  CLUSTERED (ID)
  )  
END
GO
 
/****** CDISocio (Ficha) ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDISocio') and type = 'U') 
BEGIN
  CREATE TABLE dbo.CDISocio (
	ID 			        int         	NOT NULL IDENTITY(1,1),
	Empresa			    varchar(5)	    NOT NULL,
	Mov  			    varchar(20)     NOT NULL,
	MovID			    varchar(20)    	NULL,	 
	FechaEmision 	    datetime    	NULL,	 
	UltimoCambio 	    datetime    	NULL,
	Concepto		    varchar(50)	    NULL,
	Proyecto  		    varchar(50)   	NULL,
	UEN			        int		        NULL,
	Usuario 		    varchar(10)   	NULL,
	Autorizacion	    varchar(10)	    NULL,
	Referencia 		    varchar(50) 	NULL,
	Observaciones 	    varchar(100) 	NULL,
	Causa               varchar(50)     NULL,
	Estatus 		    varchar(15)   	NULL,
	Situacion		    varchar(50)	    NULL,
	SituacionFecha		datetime	    NULL,
	SituacionUsuario	varchar(10)	    NULL,
	SituacionNota		varchar(100)	NULL,
	OrigenTipo		    varchar(10)	    NULL,
	Origen			    varchar(20)	    NULL,
	OrigenID		    varchar(20)	    NULL,
	Ejercicio		    int		        NULL,
	Periodo			    int		        NULL,
	FechaRegistro		datetime	    NULL,  
	FechaConclusion		datetime    	NULL,
	FechaCancelacion	datetime    	NULL,
	Sucursal		    int		        NOT NULL DEFAULT 0,
	Moneda			    varchar(10)	    NULL,
	TipoCambio		    float		    NULL,
	FechaAplicacion		datetime	    NULL,		
	NIPCDI   		    varchar(30)     NULL,
	Cliente             varchar(10)     NULL,
	Membresia           int             NULL,
	Socio               varchar(100)    NULL,
	FechaIngreso        datetime	    NULL,
	FechaVigencia       datetime	    NULL,
	Categoria           varchar(50)     NULL,
	ListaPreciosCuotaA  varchar(20)     NULL,       --- Lista de Precios Especiales para Cuotas de Admicion
	ListaPreciosCuotaM  varchar(20)     NULL,       --- Lista de Precios Especiales para Cuotas de Mensual
	Cantidad		    float		    NULL,
	NombreEquipo        varchar(100)    NULL,
	ImporteAnualidad    money           NULL,
	ImporteMensualidad  money           NULL,
	ImporteSubsidio     money           NULL, 
	Justificacion       varchar(255)    NULL,   
	ClienteAnt          varchar(10)     NULL,
	DemandanteTipo      varchar(20)     NULL,
	ClaveDemandante     varchar(10)     NULL,
	DemandadoTipo       varchar(20)     NULL,
	ClaveDemandado      varchar(10)     NULL,
	CitaHonorJusticia   datetime        NULL,
	HoraHonorJusticia   varchar(5)      NULL,
	BloquearDemandante  varchar(2)	    NULL,
	NoDiasDemandante    int             NULL, 
	BloquearDemandado   varchar(2)	    NULL,
	NoDiasDemandado     int             NULL,
	Comentarios         text            NULL,
	Estado              varchar(30)     NULL,	
	CONSTRAINT priCDISocio PRIMARY KEY CLUSTERED (ID)
  )  
  END 
GO

EXEC spALTER_TABLE 'CDISocio', 'NombreEquipo',       'varchar(100) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'ImporteAnualidad',   'money NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'ImporteMensualidad', 'money NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'ImporteSubsidio',    'money NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'Justificacion',      'varchar(255) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'ClienteAnt',         'varchar(10) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'BajaTotal',          'bit NULL DEFAULT 0 WITH VALUES'
GO
EXEC spALTER_TABLE 'CDISocio', 'DemandanteTipo',     'varchar(20) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'ClaveDemandante',    'varchar(10) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'DemandadoTipo',      'varchar(20) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'ClaveDemandado',     'varchar(10) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'CitaHonorJusticia',  'datetime NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'HoraHonorJusticia',  'varchar(5) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'BloquearDemandante', 'varchar(2) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'NoDiasDemandante',   'int NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'BloquearDemandado',  'varchar(2) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'NoDiasDemandado',    'int NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'Comentarios',        'text NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'Estado',             'varchar(30) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'FormaPago',          'varchar(30) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'NombreDemandante',   'varchar(100) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'NombreDemandado',    'varchar(100) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'Edad',               'int NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'ComentBloqueo',      'text NULL'  --BEGM 20120516. Comentario de bloqueo/baja
GO
EXEC spALTER_TABLE 'CDISocio', 'CuotaOriginal', 'money NULL'  --BEGM 20120530. Catálogo subsidios
GO
EXEC spALTER_TABLE 'CDISocio', 'TipoSubsidio', 'varchar(30) NULL'
GO
EXEC spALTER_TABLE 'CDISocio', 'Subsidio', 'money NULL'
GO
EXEC spAdd_Index 'CDISocio', 'CDIMov', 'Mov' --BEGM 20101230. Indice por Movimiento
GO

/****** CDISocioD (Detalle) ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDISocioD') and type = 'U') 
  CREATE TABLE dbo.CDISocioD (
	ID 		        int         	NOT NULL,
 	Renglon	        float	    	NOT NULL,
    NIPCDI   	    varchar(30)     NULL,
	Cliente         varchar(10)     NULL,
	Membresia       int             NULL,
	Socio           varchar(100)    NULL, 	
    Estatus 		varchar(15)   	NULL,
    TipoSangre      varchar(10)     NULL,
    Edad            int             NULL,	
    CONSTRAINT priCDISocioD PRIMARY KEY CLUSTERED (ID, Renglon)
)	
GO
EXEC spALTER_TABLE 'CDISocioD', 'TipoSangre',         'varchar(10) NULL'
GO
EXEC spALTER_TABLE 'CDISocioD', 'Edad',               'int NULL'
GO
EXEC spALTER_TABLE 'CDISocioD', 'SocioNueva',         'varchar(100) NULL'
GO


/****** CDISocioArticulos (Detalle) ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDISocioArticulos') and type = 'U') 
  CREATE TABLE dbo.CDISocioArticulos (
	ID 		        int         	NOT NULL,
 	Articulo        varchar(20)   	NOT NULL,
 	RenglonTipo     varchar(1)      NULL,
 	Cantidad        float           NULL,
    Precio          money           NULL,
    CONSTRAINT priCDISocioArticulos PRIMARY KEY CLUSTERED (ID, Articulo)
)	
GO


/****** CDICopiaDetalleSocio ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDICopiaDetalleSocio') and type = 'U') 
  CREATE TABLE dbo.CDICopiaDetalleSocio (
	ID 		        int         	NOT NULL,    
	Cliente         varchar(10)     NOT NULL
    CONSTRAINT priCDICopiaDetalleSocio PRIMARY KEY CLUSTERED (ID, Cliente)
)	
GO

/****** CDISocioEquipoD ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDISocioEquipoD') and type = 'U') 
  CREATE TABLE dbo.CDISocioEquipoD (
	ID 		        int            	 NOT NULL,    	
	NombreJugador   varchar(255)     NOT NULL
    CONSTRAINT priCDISocioEquipoD PRIMARY KEY CLUSTERED (ID, NombreJugador)
)	
GO

/****** CDICfgCategoria ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDICfgCategoria') and type = 'U') 
  CREATE TABLE dbo.CDICfgCategoria (
	Categoria   varchar(50)  NOT NULL,
	CantidadD   int          NULL,
	CantidadA   int          NULL,
	EdadD       int          NULL,
	EdadA       int          NULL,
	Sexo        varchar(20)  NULL, 
	Sugerir     varchar(2)   NULL,
	Comentario  varchar(255) NULL,	
    CONSTRAINT priCDICfgCategoria PRIMARY KEY CLUSTERED (Categoria)
)	
GO

/****** CDICfgCategoriaArt ******/
if not exists (select * from sysobjects where id = object_id('dbo.CDICfgCategoriaArt') and type = 'U') 
  CREATE TABLE dbo.CDICfgCategoriaArt (
	Categoria    varchar(50)  NOT NULL,
	ArticuloM    varchar(20)  NULL,
	ArticuloA    varchar(20)  NULL,
	ArticuloBM   varchar(20)  NULL,
	ArticuloBA     varchar(20)  NULL,	
	EsRecurrente bit          NULL DEFAULT 0
)	
GO

--DROP TABLE CDICfgCategoriaArt
--SELECT * FROM CDICfgCategoriaArt

--BEGM 20120516. Comentario de bloqueo/baja
-----***** CDITextoMovBloq *****-----
IF OBJECT_ID('CDITextoMovBloq', 'U') IS NULL
  CREATE TABLE CDITextoMovBloq (ID        int         IDENTITY(1,1), 
                                Mov       varchar(20), 
                                Activo    bit         NULL DEFAULT 0, 
                                Leyenda   text        NULL, 
         CONSTRAINT priCDITextoMovBloq PRIMARY KEY CLUSTERED (ID, Mov))
GO

-----***** CDICfgTextoMovBloq *****-----
IF OBJECT_ID('CDICfgTextoMovBloq', 'U') IS NULL
  CREATE TABLE CDICfgTextoMovBloq (ID        int         IDENTITY(1,1), 
                                Tbla     varchar(50), 
                                Campo     varchar(50) NULL DEFAULT 0, 
                                Etiqueta  varchar(50) NULL, 
         CONSTRAINT priCDICfgTextoMovBloq PRIMARY KEY CLUSTERED (ID))
GO

-----***** CDIBajasDefuncion *****-----
IF OBJECT_ID('CDIBajasDefuncion', 'U') IS NULL
BEGIN
  CREATE TABLE CDIBajasDefuncion (Socio   varchar(20), 
         CONSTRAINT priCDIBajasDefuncion PRIMARY KEY CLUSTERED (Socio))
END
GO

IF OBJECT_ID('CDISocioSubsidioHist', 'U') IS NULL
  CREATE TABLE CDISocioSubsidioHist (ID         int IDENTITY(1,1), 
                                     Subsidio   varchar(30) NOT NULL, 
                                     Importe    money,
                                     Fecha      datetime DEFAULT GETDATE(), 
               CONSTRAINT priCDISocioSubsidioHist PRIMARY KEY CLUSTERED(ID))
GO


IF OBJECT_ID('CDISocioSubsidio', 'U') IS NULL
  CREATE TABLE CDISocioSubsidio (Subsidio   varchar(30) NOT NULL, 
                                 Importe    money, 
               CONSTRAINT priCDISocioSubsidio PRIMARY KEY CLUSTERED(Subsidio))
GO

IF OBJECT_ID('CDISubsidioXCateg', 'U') IS NULL
  CREATE TABLE CDISubsidioXCateg (Categoria   varchar(50) NOT NULL, 
                                  Subsidio    varchar(20) NOT NULL,
               CONSTRAINT priCDISubsidioXCateg PRIMARY KEY CLUSTERED(Categoria, Subsidio))
GO
