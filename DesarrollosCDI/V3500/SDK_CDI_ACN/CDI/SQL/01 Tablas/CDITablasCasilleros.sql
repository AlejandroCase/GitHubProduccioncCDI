SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
SET IMPLICIT_TRANSACTIONS OFF
SET ANSI_NULLS ON  
SET QUOTED_IDENTIFIER ON 


 
/***************************************************************************************************
*         Desarrollo  Gustavo Méndez Ortega                                                        *
*  	      Funcion     Asignacion de Casilleros                   					               *
*         Proyecto    CDI                                                                          *
*		  Fecha       25/Noviembre/2010 												           *	
****************************************************************************************************/

 
 GO
/**************************************************************************************************/
/*              Tabla que Almacena parametros intelisis para la aplicacion NET                    */
/**************************************************************************************************/
 IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE Name='ParametrosIntel')
 CREATE TABLE ParametrosIntel
  (
   Estacion  int         NULL,               
   Usuario   varchar(15) NULL, 
   Empresa   varchar(10) NULL,
   Sucursal  int         NULL,
   UsuarioA  bit         DEFAULT(0) 
  )

  
 GO
/**************************************************************************************************/
/*                Tabla que Almacena Errores de la aplicacion casilleros                          */
/**************************************************************************************************/ 
 IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE Name='MensajeErrorCDI')
 CREATE TABLE MensajeErrorCDI
  ( 
   Mensaje varchar(900) COLLATE Database_Default NULL,
   Tipo    varchar(10)  COLLATE Database_Default NULL
  )


 GO
/**************************************************************************************************/
/*               Tabla para almacenar el maetro de Secciones de casilleros                        */
/**************************************************************************************************/ 
 IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE Name='CDIMaestroArea') 
 CREATE TABLE CDIMaestroArea
(
  ID      Int Identity PRIMARY KEY CLUSTERED,
  Seccion varchar(90)  COLLATE Database_Default NULL
)

GO
/**************************************************************************************************/
/*         Tabla que Almacena los informacion XML del planograma de casilleros                    */
/**************************************************************************************************/
IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE Name='CasillerosXML')
CREATE TABLE CasillerosXML
  ( 
  ID         Int Identity  PRIMARY KEY CLUSTERED,
  Seccion      varchar(90) COLLATE Database_Default NULL,
  Ubicacion    varchar(50) COLLATE Database_Default NULL,
  NumFilas     int  NULL,
  NumColumnas  int  NULL,
  NumCreados   int  NULL,
  Estatus      bit  DEFAULT 0,
  CampoXml     Xml
  )
  

  
GO  
/**************************************************************************************************/
/*                Tabla que Almacena los informacion de casilleros creados                        */
/**************************************************************************************************/
IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE Name='CDICasilleros')
CREATE TABLE CDICasilleros
(        
 ID             int identity, 
 Casillero      int, 
 Orden          int,
 Tipo           varchar(20) COLLATE Database_Default NOT NULL, 
 Estatus        varchar(20) COLLATE Database_Default NOT NULL,
 EstatusA       varchar(20) COLLATE Database_Default NOT NULL,
 CoordenadaX    int         NOT NULL,
 CoordenadaY    int         NOT NULL, 
 Cliente        varchar(10) COLLATE Database_Default NULL, 
 Membresia      varchar(15) COLLATE Database_Default NULL, 
 EstatusCas     varchar(20) COLLATE Database_Default NULL, 
 FechaEmision   DateTime,
 UltimoCambio   DateTime,  
 VentaID        int      NULL,
 PlanoID        int      NOT NULL,
 CasilleroTag   AS  Convert(varchar,Casillero),
 CONSTRAINT pk_CasiXML PRIMARY KEY CLUSTERED (PlanoID,Casillero,Orden,CoordenadaX,CoordenadaY), 
 CONSTRAINT fk_CasiXML FOREIGN KEY(PlanoID)  REFERENCES CasillerosXML(ID) 
 )
 
 GO
/***************************************************************************************************/
/*         Tabla que Almacena Historicos de movimientos de los casilleros                          */
/***************************************************************************************************/
 IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE Name='CDICasillerosD')
 CREATE TABLE CDICasillerosD
 (
  ID             int identity PRIMARY KEY, 
  Mov            varchar(15) COLLATE Database_Default NOT NULL, 
  Estatus        varchar(15) COLLATE Database_Default NOT NULL, 
  NumCasillero   int, 
  PlanoID        int,
  Cliente        varchar(10) COLLATE Database_Default NOT NULL, 
  Membresia      varchar(15) COLLATE Database_Default NOT NULL, 
  FechaEmision   AS Convert(Date,Getdate()),
  FechaHora      AS Getdate(),
  Hora           AS Convert(Time,Getdate())
 ) 
 
 
 
GO
/**************************************************************************************************/
/*                    Tabla que Almacena Mensajes control Accesos WEB                             */
/**************************************************************************************************/
IF NOT EXISTS(SELECT * FROM Sys.Tables WHERE Name='MensajePase')
CREATE TABLE MensajePase 
(
 Cliente  varchar(15) COLLATE Database_Default NULL,
 Tipo     varchar(10) COLLATE Database_Default NULL,
 Mensaje  varchar(100)COLLATE Database_Default NULL,
)
 
 
 
GO
/**************************************************************************************************/
/*                    Campos Nuevos para aplicacion de casilleros                                 */
/**************************************************************************************************/ 
EXEC spALTER_TABLE  'Venta'  ,'CDIvisible','Bit DEFAULT(0)'
EXEC spALTER_TABLE  'VentaD' ,'CDICasilleroID','int'
EXEC spALTER_TABLE  'VentaD' ,'CDICasillero','varchar(10)'
EXEC spALTER_TABLE  'VentaD' ,'CDIPlanoID','int'
EXEC spALTER_TABLE  'CxC'    ,'CDICasilleroID','int'
EXEC spALTER_TABLE  'CxC'    ,'CDICasillero','varchar(10)'
EXEC spALTER_TABLE  'CxC'    ,'CDIPlanoID','int'
EXEC spALTER_TABLE  'Usuario','CDIConfigCasillero','bit Default (0)'
EXEC spALTER_TABLE  'WebPagina','CDIControlAcceso','bit Default (0)'
GO

EXEC spADD_Index    'CDICasilleros','IndiceID','ID'

GO
EXEC spALTER_TABLE  'CDICasilleros','Cilindro', ' varchar(20) COLLATE Database_Default NULL' -- pzamudio

GO