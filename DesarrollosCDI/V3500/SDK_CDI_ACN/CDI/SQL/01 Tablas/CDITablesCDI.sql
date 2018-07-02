--********************  Campos Nuevos para CDI   *********************************
--***************  Personal  *******************

EXEC spALTER_TABLE  'Personal', 'ChecadaLibre','varchar(2)  NULL'
EXEC spALTER_TABLE  'Personal', 'ChecadaLibreFechaD','DateTime  NULL'
EXEC spALTER_TABLE  'Personal', 'ChecadaLibreFechaA','DateTime  NULL'
EXEC spALTER_TABLE  'Personal', 'ChecarConTeclado','varchar(2)  NULL'

--***************  RHD		 *******************

EXEC spALTER_TABLE  'RHD', 'ChecadaLibre','varchar(2)  NULL'
EXEC spALTER_TABLE  'RHD', 'ChecadaLibreFechaD','DateTime  NULL'
EXEC spALTER_TABLE  'RHD', 'ChecadaLibreFechaA','DateTime  NULL'
EXEC spALTER_TABLE  'RHD', 'ChecarConTeclado','varchar(2)  NULL'

--***************  Jornada	 *******************

EXEC spALTER_TABLE  'Jornada', 'ToleranciaEntrada','int NULL'
EXEC spALTER_TABLE  'Jornada', 'ToleranciaSalida','int NULL'

--*************** CDIPercepcion **************** Drop table CDIPercepcion
if NOT exists (select * from sysobjects where id = object_id('dbo.CDIPercepcion') and type = 'U') 
Create Table CDIPercepcion			(Concepto varchar (50), Empresa varchar (5)) 
GO
--**************** CDIPercepcionGravable **************** Drop table CDIPercepcionGravable
if NOT exists (select * from sysobjects where id = object_id('dbo.CDIPercepcionGravable') and type = 'U') 
Create Table CDIPercepcionGravable	(Concepto varchar (50),Empresa varchar (5)) 
GO
--**************** CDIPercepcionExenta **************** Drop table CDIPercepcionExenta
if NOT exists (select * from sysobjects where id = object_id('dbo.CDIPercepcionExenta') and type = 'U') 
Create Table CDIPercepcionExenta	(Concepto varchar (50),Empresa varchar (5)) 
GO
--**************** CDIOtrasPercepciones **************** Drop table CDIOtrasPercepciones
if NOT exists (select * from sysobjects where id = object_id('dbo.CDIOtrasPercepciones') and type = 'U') 
Create Table CDIOtrasPercepciones	(Concepto varchar (50),Empresa varchar (5)) 
GO
--**************** CDIDeduccion **************** Drop table CDIDeduccion
if NOT exists (select * from sysobjects where id = object_id('dbo.CDIDeduccion') and type = 'U') 
Create Table CDIDeduccion			(Concepto varchar (50),Empresa varchar (5)) 
GO
--**************** CDIObligaciones **************** Drop table CDIObligaciones
if NOT exists (select * from sysobjects where id = object_id('dbo.CDIObligaciones') and type = 'U') 
Create Table CDIObligaciones		(Concepto varchar (50),Empresa varchar (5)) 

