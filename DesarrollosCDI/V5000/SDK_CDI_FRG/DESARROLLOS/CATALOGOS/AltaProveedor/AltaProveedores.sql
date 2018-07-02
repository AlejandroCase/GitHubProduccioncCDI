

-----------------Tabla para el proveedor


--drop table  CDIProv

SET DATEFIRST 7        
SET ANSI_NULLS OFF        
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED        
SET LOCK_TIMEOUT -1        
SET QUOTED_IDENTIFIER OFF  
GO
CREATE TABLE [dbo].[CDIProv](
	[Proveedor] [varchar](10) NULL,
	[Rama] [varchar](10) NULL,
	[Nombre] [varchar](100) NULL,
	[NombreCorto] [varchar](20) NULL,
	[Direccion] [varchar](100) NULL,
	[DireccionNumero] [varchar](20) NULL,
	[DireccionNumeroInt] [varchar](20) NULL,
	[EntreCalles] [varchar](100) NULL,
	[Plano] [varchar](15) NULL,
	[Observaciones] [varchar](100) NULL,
[Delegacion] [varchar](100) NULL,
[Colonia] [varchar](100) NULL,
[Poblacion] [varchar](100) NULL,
[Estado] [varchar](30) NULL,
[Zona] [varchar](30) NULL,
[Ruta] [varchar](50) NULL,
[Pais] [varchar](30) NULL,
[CodigoPostal] [varchar](15) NULL,
[Telefonos] [varchar](100) NULL,
[Fax] [varchar](50) NULL,
[PedirTono] [bit] NULL,
[DirInternet] [varchar](50) NULL,
[Contacto1] [varchar](50) NULL,
[Contacto2] [varchar](50) NULL,
[Extencion1] [varchar](10) NULL,
[Extencion2] [varchar](10) NULL,
[eMail1] [varchar](50) NULL,
[eMail2] [varchar](50) NULL,
[RFC] [varchar](15) NULL,
[CURP] [varchar](30) NULL,
[Categoria] [varchar](50) NULL,
[Familia] [varchar](50) NULL,
[ZonaImpuesto] [varchar](30) NULL,
[FormaEnvio] [varchar](50) NULL,
[Descuento] [varchar](30) NULL,
[Comprador] [varchar](50) NULL,
[Proyecto] [varchar](50) NULL,
[Condicion] [varchar](50) NULL,
[CtaDinero] [varchar](10) NULL,
[Almacen] [varchar](10) NULL,
[DiaRevision1] [varchar](10) NULL,
[DiaRevision2] [varchar](10) NULL,
[HorarioRevision] [varchar](50) NULL,
[DiaPago1] [varchar](10) NULL,
[DiaPago2] [varchar](10) NULL,
[HorarioPago] [varchar](50) NULL,
[Beneficiario] [int] NULL,
[BeneficiarioNombre] [varchar](100) NULL,
[LeyendaCheque] [varchar](100) NULL,
[Agente] [varchar](10) NULL,
[Situacion] [varchar](50) NULL,
[SituacionFecha] [datetime] NULL,
[SituacionUsuario] [varchar](10) NULL,
[SituacionNota] [varchar](100) NULL,
[Clase] [varchar](15) NULL,
[Estatus] [varchar](15) NULL,
[UltimoCambio] [datetime] NULL,
[Alta] [datetime] NULL,
[Conciliar] [bit] NULL,
[Mensaje] [varchar](50) NULL,
[Tipo] [varchar](15) NULL,
[ProntoPago] [bit] NULL,
[DefMoneda] [varchar](10) NULL,
[ProvBancoSucursal] [varchar](50) NULL,
[ProvCuenta] [varchar](20) NULL,
[Logico1] [bit] NULL,
[Logico2] [bit] NULL,
[Logico3] [bit] NULL,
[TieneMovimientos] [bit] NULL,
[DescuentoRecargos] [bit] NULL,
[CompraAutoCargosTipo] [varchar](20) NULL,
[CompraAutoCargos] [float] NULL,
[Pagares] [bit] NULL,
[Aforo] [float] NULL,
[MaximoAplicacionPagos] [float] NULL,
[NivelAcceso] [varchar](50) NULL,
[Idioma] [varchar](50) NULL,
[ListaPreciosEsp] [varchar](20) NULL,
[Contrasena] [varchar](20) NULL,
[AutoEndoso] [varchar](10) NULL,
[Cuenta] [varchar](20) NULL,
[CuentaRetencion] [varchar](20) NULL,
[FormaPago] [varchar](50) NULL,
[wGastoSolicitud] [bit] NULL,
[ConLimiteAnticipos] [bit] NULL,
[LimiteAnticiposMN] [money] NULL,
[ChecarLimite] [varchar](20) NULL,
[eMailAuto] [bit] NULL,
[FiscalRegimen] [varchar](30) NULL,
[Intercompania] [bit] NULL,
[GarantiaCostos] [bit] NULL,
[GarantiaCostosPlazo] [int] NULL,
[ImportadorRegimen] [varchar](30) NULL,
[ImportadorRegistro] [varchar](30) NULL,
[Comision] [float] NULL,
[Importe1] [float] NULL,
[Importe2] [float] NULL,
[Origen] [varchar](20) NULL,
[OrigenID] [varchar](20) NULL,
[MapaLatitud] [float] NULL,
[MapaLongitud] [float] NULL,
[MapaPrecision] [int] NULL,
[TipoRegistro] [varchar](20) NULL,
[AutorizacionSRI] [varchar](50) NULL,
[VigenciaSRI] [datetime] NULL,
[SincroID] [timestamp] NULL,
[SincroC] [int] NULL,
[NIPCDI] [varchar](30) NULL,
[CDIApellidoPaterno] [varchar](30) NULL,
[CDIApellidoMaterno] [varchar](30) NULL,
[CDINombre] [varchar](30) NULL,
[CDIFechaNacimiento] [datetime] NULL,
[CDINacionalidad] [varchar](30) NULL,
[CDIRelacionNIPCDI] [varchar](10) NULL,
[CFDIRetTipoContribuyente] [varchar](2) NULL,
[CFDIRetBeneficiarioNombre] [varchar](100) NULL,
[CFDIRetBeneficiarioCURP] [varchar](30) NULL,
[CFDIRetBeneficiarioRFC] [varchar](15) NULL,
[FiscalGenerar] [bit] NULL,
[FiscalZona] [varchar](30) NULL,
[ContactoTipo] [varchar](20) NULL,
[INFORTallerExterior] [bit] NULL,
[INFORProveedorNal] [bit] NULL,
[ReferenciaIntelisisService] [varchar](50) NULL,
[DefPosicionRecibo] [varchar](10) NULL,
[DefPosicionSurtido] [varchar](10) NULL,
[TarimasChep] [bit] NULL,
[CentroCostos] [varchar](20) NULL,
[MFATipoOperacion] [varchar](50) NULL,
[ClaveTipoTercero] [varchar](50) NULL,
[ClaveTipoOperacion] [varchar](50) NULL,
usuario varchar (20))



ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [PedirTono]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [Conciliar]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ('CDIProveedor') FOR [Tipo]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [ProntoPago]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [Logico1]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [Logico2]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [Logico3]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [TieneMovimientos]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [DescuentoRecargos]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ('No') FOR [CompraAutoCargosTipo]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [Pagares]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((100)) FOR [MaximoAplicacionPagos]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [wGastoSolicitud]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [ConLimiteAnticipos]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ('Anticipo') FOR [ChecarLimite]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [eMailAuto]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [Intercompania]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [GarantiaCostos]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((1)) FOR [SincroC]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((1)) FOR [FiscalGenerar]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ('CDIProveedor') FOR [ContactoTipo]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ((0)) FOR [TarimasChep]
GO

ALTER TABLE [dbo].[CDIProv] ADD  DEFAULT ('otros') FOR [MFATipoOperacion]
GO










--------------------------------Actualiza Concecutivo Alta Proveedor
if exists ( SELECT name FROM sys.objects WHERE name ='CDINuevoProvConce' and TYPE='P') DROP PROCEDURE CDINuevoProvConce

SET DATEFIRST 7        
SET ANSI_NULLS OFF        
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED        
SET LOCK_TIMEOUT -1        
SET QUOTED_IDENTIFIER OFF  
GO

CREATE PROC CDINuevoProvConce  @usuario VARCHAR (20)
AS BEGIN

DECLARE @Consecutivo VARCHAR(15)

SELECT @Consecutivo = Consecutivo FROM Consecutivo WHERE Tipo='Prov' and Prefijo=0 and Concurrencia='Normal'


INSERT INTO CDIPROV (Proveedor,usuario)
		VALUES ('0'+@Consecutivo ,@usuario)
		
UPDATE Consecutivo SET Consecutivo=@Consecutivo+1 WHERE Tipo='Prov' and Prefijo=0 and Concurrencia='Normal'

END

GO




--------------------------------Inserta en Prov Alta Proveedor
if exists ( SELECT name FROM sys.objects WHERE name ='CDINuevoProv' and TYPE='P') DROP PROCEDURE CDINuevoProv


SET DATEFIRST 7        
SET ANSI_NULLS OFF        
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED        
SET LOCK_TIMEOUT -1        
SET QUOTED_IDENTIFIER OFF  
GO

CREATE PROC CDINuevoProv  @IdProv VARCHAR (10) , @usuario VARCHAR (20)
AS BEGIN

INSERT INTO Prov (

Proveedor,Rama,Nombre,NombreCorto,Direccion,DireccionNumero,DireccionNumeroINT,EntreCalles,Plano,Observaciones,Delegacion,Colonia,Poblacion,Estado,Zona,Ruta,Pais,CodigoPostal,Telefonos,Fax,PedirTono,DirINTernet,Contacto1,Contacto2,Extencion1,
Extencion2,eMail1,eMail2,RFC,CURP,Categoria,Familia,ZonaImpuesto,FormaEnvio,Descuento,Comprador,Proyecto,Condicion,CtaDinero,Almacen,DiaRevision1,DiaRevision2,HorarioRevision,DiaPago1,DiaPago2,HorarioPago,Beneficiario,BeneficiarioNombre,LeyendaCheque,
Agente,Situacion,SituacionFecha,SituacionUsuario,SituacionNota,Clase,Estatus,UltimoCambio,Alta,Conciliar,Mensaje,Tipo,ProntoPago,DefMoneda,ProvBancoSucursal,ProvCuenta,Logico1,Logico2,Logico3,TieneMovimientos,DescuentoRecargos,CompraAutoCargosTipo,CompraAutoCargos,
Pagares,Aforo,MaximoAplicacionPagos,NivelAcceso,Idioma,ListaPreciosEsp,Contrasena,AutoEndoso,Cuenta,CuentaRetencion,FormaPago,wGastoSolicitud,ConLimiteAnticipos,LimiteAnticiposMN,ChecarLimite,eMailAuto,FiscalRegimen,INTercompania,GarantiaCostos,GarantiaCostosPlazo,
ImportadorRegimen,ImportadorRegistro,Comision,Importe1,Importe2,Origen,OrigenID,MapaLatitud,MapaLongitud,MapaPrecision,TipoRegistro,AutorizacionSRI,VigenciaSRI,SincroC,NIPCDI,CDIApellidoPaterno,CDIApellidoMaterno,CDINombre,CDIFechaNacimiento,CDINacionalidad,
CDIRelacionNIPCDI,CFDIRetTipoContribuyente,CFDIRetBeneficiarioNombre,CFDIRetBeneficiarioCURP,CFDIRetBeneficiarioRFC,FiscalGenerar,FiscalZona,ContactoTipo,INFORTallerExterior,INFORProveedorNal,ReferenciaINTelisisService,DefPosicionRecibo,DefPosicionSurtido,TarimasChep,
CentroCostos,MFATipoOperacion,ClaveTipoTercero,ClaveTipoOperacion)

SELECT Proveedor,Rama,Nombre,NombreCorto,Direccion,DireccionNumero,DireccionNumeroINT,EntreCalles,Plano,Observaciones,Delegacion,Colonia,Poblacion,Estado,Zona,Ruta,Pais,CodigoPostal,Telefonos,Fax,PedirTono,DirINTernet,Contacto1,Contacto2,Extencion1,
Extencion2,eMail1,eMail2,RFC,CURP,Categoria,Familia,ZonaImpuesto,FormaEnvio,Descuento,Comprador,Proyecto,Condicion,CtaDinero,Almacen,DiaRevision1,DiaRevision2,HorarioRevision,DiaPago1,DiaPago2,HorarioPago,Beneficiario,BeneficiarioNombre,LeyendaCheque,
Agente,Situacion,SituacionFecha,SituacionUsuario,SituacionNota,Clase,Estatus,UltimoCambio,Alta,Conciliar,Mensaje,Tipo,ProntoPago,DefMoneda,ProvBancoSucursal,ProvCuenta,Logico1,Logico2,Logico3,TieneMovimientos,DescuentoRecargos,CompraAutoCargosTipo,CompraAutoCargos,
Pagares,Aforo,MaximoAplicacionPagos,NivelAcceso,Idioma,ListaPreciosEsp,Contrasena,AutoEndoso,Cuenta,CuentaRetencion,FormaPago,wGastoSolicitud,ConLimiteAnticipos,LimiteAnticiposMN,ChecarLimite,eMailAuto,FiscalRegimen,INTercompania,GarantiaCostos,GarantiaCostosPlazo,
ImportadorRegimen,ImportadorRegistro,Comision,Importe1,Importe2,Origen,OrigenID,MapaLatitud,MapaLongitud,MapaPrecision,TipoRegistro,AutorizacionSRI,VigenciaSRI,SincroC,NIPCDI,CDIApellidoPaterno,CDIApellidoMaterno,CDINombre,CDIFechaNacimiento,CDINacionalidad,
CDIRelacionNIPCDI,CFDIRetTipoContribuyente,CFDIRetBeneficiarioNombre,CFDIRetBeneficiarioCURP,CFDIRetBeneficiarioRFC,FiscalGenerar,FiscalZona,ContactoTipo,INFORTallerExterior,INFORProveedorNal,ReferenciaINTelisisService,DefPosicionRecibo,DefPosicionSurtido,TarimasChep,
CentroCostos,MFATipoOperacion,ClaveTipoTercero,ClaveTipoOperacion
FROM CDIProv WHERE Proveedor=@IdProv and usuario=@usuario


DELETE CDIProv WHERE Proveedor=@IdProv and usuario=@usuario

END

GO


--------------------------------Inserta en CDIProv al Proveedor para su actualizacion de datos
if exists ( SELECT name FROM sys.objects WHERE name ='CDIAcualizaProv' and TYPE='P') DROP PROCEDURE CDIAcualizaProv


SET DATEFIRST 7        
SET ANSI_NULLS OFF        
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED        
SET LOCK_TIMEOUT -1        
SET QUOTED_IDENTIFIER OFF  
GO

CREATE PROC CDIAcualizaProv @IdProv VARCHAR (10) , @usuario VARCHAR (20)
AS BEGIN

DECLARE
@Proveedor VARCHAR(10), @Rama VARCHAR(10),@Nombre VARCHAR(100),@NombreCorto VARCHAR(20),@Direccion VARCHAR(100),@DireccionNumero VARCHAR(20),@DireccionNumeroINT VARCHAR(20),
@EntreCalles VARCHAR(100),@Plano VARCHAR(15),@Observaciones VARCHAR(100),@Delegacion VARCHAR(100),@Colonia VARCHAR(100),@Poblacion VARCHAR(100),@Estado VARCHAR(30),@Zona VARCHAR(30),
@Ruta VARCHAR(50),@Pais VARCHAR(30),@CodigoPostal VARCHAR(15),@Telefonos VARCHAR(100),@Fax VARCHAR(50),@PedirTono BIT,@DirINTernet VARCHAR(50),@Contacto1 VARCHAR(50),@Contacto2 VARCHAR(50),
@Extencion1 VARCHAR(10),@Extencion2 VARCHAR(10),@eMail1 VARCHAR(50),@eMail2 VARCHAR(50),@RFC VARCHAR(15),@CURP VARCHAR(30),@Categoria VARCHAR(50),@Familia VARCHAR(50),@ZonaImpuesto VARCHAR(30),
@FormaEnvio VARCHAR(50),@Descuento VARCHAR(30),@Comprador VARCHAR(50),@Proyecto VARCHAR(50),@Condicion VARCHAR(50),@CtaDinero VARCHAR(10),@Almacen VARCHAR(10),@DiaRevision1 VARCHAR(10),
@DiaRevision2 VARCHAR(10),@HorarioRevision VARCHAR(50),@DiaPago1 VARCHAR(10),@DiaPago2 VARCHAR(10),@HorarioPago VARCHAR(50),@Beneficiario INT,@BeneficiarioNombre VARCHAR(100),@LeyendaCheque VARCHAR(100),
@Agente VARCHAR(10),@Situacion VARCHAR(50),@SituacionFecha datetime,@SituacionUsuario VARCHAR(10),@SituacionNota VARCHAR(100),@Clase VARCHAR(15),@Estatus VARCHAR(15),@UltimoCambio datetime,@Alta datetime,
@Conciliar BIT,@Mensaje VARCHAR(50),@Tipo VARCHAR(15),@ProntoPago BIT,@DefMoneda VARCHAR(10),@ProvBancoSucursal VARCHAR(50),@ProvCuenta VARCHAR(20),@Logico1 BIT,@Logico2 BIT,@Logico3 BIT,@TieneMovimientos BIT,
@DescuentoRecargos BIT,@CompraAutoCargosTipo VARCHAR(20),@CompraAutoCargos FLOAT,@Pagares BIT,@Aforo FLOAT,@MaximoAplicacionPagos FLOAT,@NivelAcceso VARCHAR(50),@Idioma VARCHAR(50),@ListaPreciosEsp VARCHAR(20),
@Contrasena VARCHAR(20),@AutoEndoso VARCHAR(10),@Cuenta VARCHAR(20),@CuentaRetencion VARCHAR(20),@FormaPago VARCHAR(50),@wGastoSolicitud BIT,@ConLimiteAnticipos BIT,@LimiteAnticiposMN money,@ChecarLimite VARCHAR(20),@eMailAuto BIT,
@FiscalRegimen VARCHAR(30),@INTercompania BIT,@GarantiaCostos BIT,@GarantiaCostosPlazo INT,@ImportadorRegimen VARCHAR(30),@ImportadorRegistro VARCHAR(30),@Comision FLOAT,@Importe1 FLOAT,
@Importe2 FLOAT,@Origen VARCHAR(20),@OrigenID VARCHAR(20),@MapaLatitud FLOAT,@MapaLongitud FLOAT,@MapaPrecision INT,@TipoRegistro VARCHAR(20),@AutorizacionSRI VARCHAR(50),@VigenciaSRI datetime
,@SincroC INT,@NIPCDI VARCHAR(30),@CDIApellidoPaterno VARCHAR(30),@CDIApellidoMaterno VARCHAR(30),@CDINombre VARCHAR(30),@CDIFechaNacimiento datetime,@CDINacionalidad VARCHAR(30),
@CDIRelacionNIPCDI VARCHAR(10),@CFDIRetTipoContribuyente VARCHAR(2),@CFDIRetBeneficiarioNombre VARCHAR(100),@CFDIRetBeneficiarioCURP VARCHAR(30),@CFDIRetBeneficiarioRFC VARCHAR(15),@FiscalGenerar BIT,
@FiscalZona VARCHAR(30),@ContactoTipo VARCHAR(20),@INFORTallerExterior BIT,@INFORProveedorNal BIT,@ReferenciaINTelisisService VARCHAR(50),@DefPosicionRecibo VARCHAR(10),@DefPosicionSurtido VARCHAR(10),@TarimasChep BIT,
@CentroCostos VARCHAR(20),@MFATipoOperacion VARCHAR(50),@ClaveTipoTercero VARCHAR(50),@ClaveTipoOperacion VARCHAR(50)



INSERT INTO CDIProv (

Proveedor,Rama,Nombre,NombreCorto,Direccion,DireccionNumero,DireccionNumeroINT,EntreCalles,Plano,Observaciones,Delegacion,Colonia,Poblacion,Estado,Zona,Ruta,Pais,CodigoPostal,Telefonos,Fax,PedirTono,DirINTernet,Contacto1,Contacto2,Extencion1,
Extencion2,eMail1,eMail2,RFC,CURP,Categoria,Familia,ZonaImpuesto,FormaEnvio,Descuento,Comprador,Proyecto,Condicion,CtaDinero,Almacen,DiaRevision1,DiaRevision2,HorarioRevision,DiaPago1,DiaPago2,HorarioPago,Beneficiario,BeneficiarioNombre,LeyendaCheque,
Agente,Situacion,SituacionFecha,SituacionUsuario,SituacionNota,Clase,Estatus,UltimoCambio,Alta,Conciliar,Mensaje,Tipo,ProntoPago,DefMoneda,ProvBancoSucursal,ProvCuenta,Logico1,Logico2,Logico3,TieneMovimientos,DescuentoRecargos,CompraAutoCargosTipo,CompraAutoCargos,
Pagares,Aforo,MaximoAplicacionPagos,NivelAcceso,Idioma,ListaPreciosEsp,Contrasena,AutoEndoso,Cuenta,CuentaRetencion,FormaPago,wGastoSolicitud,ConLimiteAnticipos,LimiteAnticiposMN,ChecarLimite,eMailAuto,FiscalRegimen,INTercompania,GarantiaCostos,GarantiaCostosPlazo,
ImportadorRegimen,ImportadorRegistro,Comision,Importe1,Importe2,Origen,OrigenID,MapaLatitud,MapaLongitud,MapaPrecision,TipoRegistro,AutorizacionSRI,VigenciaSRI,SincroC,NIPCDI,CDIApellidoPaterno,CDIApellidoMaterno,CDINombre,CDIFechaNacimiento,CDINacionalidad,
CDIRelacionNIPCDI,CFDIRetTipoContribuyente,CFDIRetBeneficiarioNombre,CFDIRetBeneficiarioCURP,CFDIRetBeneficiarioRFC,FiscalGenerar,FiscalZona,ContactoTipo,INFORTallerExterior,INFORProveedorNal,ReferenciaINTelisisService,DefPosicionRecibo,DefPosicionSurtido,TarimasChep,
CentroCostos,MFATipoOperacion,ClaveTipoTercero,ClaveTipoOperacion,usuario)

SELECT Proveedor,Rama,Nombre,NombreCorto,Direccion,DireccionNumero,DireccionNumeroINT,EntreCalles,Plano,Observaciones,Delegacion,Colonia,Poblacion,Estado,Zona,Ruta,Pais,CodigoPostal,Telefonos,Fax,PedirTono,DirINTernet,Contacto1,Contacto2,Extencion1,
Extencion2,eMail1,eMail2,RFC,CURP,Categoria,Familia,ZonaImpuesto,FormaEnvio,Descuento,Comprador,Proyecto,Condicion,CtaDinero,Almacen,DiaRevision1,DiaRevision2,HorarioRevision,DiaPago1,DiaPago2,HorarioPago,Beneficiario,BeneficiarioNombre,LeyendaCheque,
Agente,Situacion,SituacionFecha,SituacionUsuario,SituacionNota,Clase,Estatus,UltimoCambio,Alta,Conciliar,Mensaje,Tipo,ProntoPago,DefMoneda,ProvBancoSucursal,ProvCuenta,Logico1,Logico2,Logico3,TieneMovimientos,DescuentoRecargos,CompraAutoCargosTipo,CompraAutoCargos,
Pagares,Aforo,MaximoAplicacionPagos,NivelAcceso,Idioma,ListaPreciosEsp,Contrasena,AutoEndoso,Cuenta,CuentaRetencion,FormaPago,wGastoSolicitud,ConLimiteAnticipos,LimiteAnticiposMN,ChecarLimite,eMailAuto,FiscalRegimen,INTercompania,GarantiaCostos,GarantiaCostosPlazo,
ImportadorRegimen,ImportadorRegistro,Comision,Importe1,Importe2,Origen,OrigenID,MapaLatitud,MapaLongitud,MapaPrecision,TipoRegistro,AutorizacionSRI,VigenciaSRI,SincroC,NIPCDI,CDIApellidoPaterno,CDIApellidoMaterno,CDINombre,CDIFechaNacimiento,CDINacionalidad,
CDIRelacionNIPCDI,CFDIRetTipoContribuyente,CFDIRetBeneficiarioNombre,CFDIRetBeneficiarioCURP,CFDIRetBeneficiarioRFC,FiscalGenerar,FiscalZona,ContactoTipo,INFORTallerExterior,INFORProveedorNal,ReferenciaINTelisisService,DefPosicionRecibo,DefPosicionSurtido,TarimasChep,
CentroCostos,MFATipoOperacion,ClaveTipoTercero,ClaveTipoOperacion, @usuario
FROM Prov WHERE Proveedor=@IdProv


END

GO

--------------------------------Inserta en CDIProv al Proveedor para su actualizacion de datos
if exists ( SELECT name FROM sys.objects WHERE name ='CDIActuProv' and TYPE='P') DROP PROCEDURE CDIActuProv


SET DATEFIRST 7        
SET ANSI_NULLS OFF        
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED        
SET LOCK_TIMEOUT -1        
SET QUOTED_IDENTIFIER OFF  
GO

CREATE PROC CDIActuProv @IdProv VARCHAR (10) , @usuario VARCHAR (20)
AS BEGIN

DECLARE
@Proveedor VARCHAR(10), @Rama VARCHAR(10),@Nombre VARCHAR(100),@NombreCorto VARCHAR(20),@Direccion VARCHAR(100),@DireccionNumero VARCHAR(20),@DireccionNumeroINT VARCHAR(20),
@EntreCalles VARCHAR(100),@Plano VARCHAR(15),@Observaciones VARCHAR(100),@Delegacion VARCHAR(100),@Colonia VARCHAR(100),@Poblacion VARCHAR(100),@Estado VARCHAR(30),@Zona VARCHAR(30),
@Ruta VARCHAR(50),@Pais VARCHAR(30),@CodigoPostal VARCHAR(15),@Telefonos VARCHAR(100),@Fax VARCHAR(50),@PedirTono BIT,@DirINTernet VARCHAR(50),@Contacto1 VARCHAR(50),@Contacto2 VARCHAR(50),
@Extencion1 VARCHAR(10),@Extencion2 VARCHAR(10),@eMail1 VARCHAR(50),@eMail2 VARCHAR(50),@RFC VARCHAR(15),@CURP VARCHAR(30),@Categoria VARCHAR(50),@Familia VARCHAR(50),@ZonaImpuesto VARCHAR(30),
@FormaEnvio VARCHAR(50),@Descuento VARCHAR(30),@Comprador VARCHAR(50),@Proyecto VARCHAR(50),@Condicion VARCHAR(50),@CtaDinero VARCHAR(10),@Almacen VARCHAR(10),@DiaRevision1 VARCHAR(10),
@DiaRevision2 VARCHAR(10),@HorarioRevision VARCHAR(50),@DiaPago1 VARCHAR(10),@DiaPago2 VARCHAR(10),@HorarioPago VARCHAR(50),@Beneficiario INT,@BeneficiarioNombre VARCHAR(100),@LeyendaCheque VARCHAR(100),
@Agente VARCHAR(10),@Situacion VARCHAR(50),@SituacionFecha datetime,@SituacionUsuario VARCHAR(10),@SituacionNota VARCHAR(100),@Clase VARCHAR(15),@Estatus VARCHAR(15),@UltimoCambio datetime,@Alta datetime,
@Conciliar BIT,@Mensaje VARCHAR(50),@Tipo VARCHAR(15),@ProntoPago BIT,@DefMoneda VARCHAR(10),@ProvBancoSucursal VARCHAR(50),@ProvCuenta VARCHAR(20),@Logico1 BIT,@Logico2 BIT,@Logico3 BIT,@TieneMovimientos BIT,
@DescuentoRecargos BIT,@CompraAutoCargosTipo VARCHAR(20),@CompraAutoCargos FLOAT,@Pagares BIT,@Aforo FLOAT,@MaximoAplicacionPagos FLOAT,@NivelAcceso VARCHAR(50),@Idioma VARCHAR(50),@ListaPreciosEsp VARCHAR(20),
@Contrasena VARCHAR(20),@AutoEndoso VARCHAR(10),@Cuenta VARCHAR(20),@CuentaRetencion VARCHAR(20),@FormaPago VARCHAR(50),@wGastoSolicitud BIT,@ConLimiteAnticipos BIT,@LimiteAnticiposMN money,@ChecarLimite VARCHAR(20),@eMailAuto BIT,
@FiscalRegimen VARCHAR(30),@INTercompania BIT,@GarantiaCostos BIT,@GarantiaCostosPlazo INT,@ImportadorRegimen VARCHAR(30),@ImportadorRegistro VARCHAR(30),@Comision FLOAT,@Importe1 FLOAT,
@Importe2 FLOAT,@Origen VARCHAR(20),@OrigenID VARCHAR(20),@MapaLatitud FLOAT,@MapaLongitud FLOAT,@MapaPrecision INT,@TipoRegistro VARCHAR(20),@AutorizacionSRI VARCHAR(50),@VigenciaSRI datetime
,@SincroC INT,@NIPCDI VARCHAR(30),@CDIApellidoPaterno VARCHAR(30),@CDIApellidoMaterno VARCHAR(30),@CDINombre VARCHAR(30),@CDIFechaNacimiento datetime,@CDINacionalidad VARCHAR(30),
@CDIRelacionNIPCDI VARCHAR(10),@CFDIRetTipoContribuyente VARCHAR(2),@CFDIRetBeneficiarioNombre VARCHAR(100),@CFDIRetBeneficiarioCURP VARCHAR(30),@CFDIRetBeneficiarioRFC VARCHAR(15),@FiscalGenerar BIT,
@FiscalZona VARCHAR(30),@ContactoTipo VARCHAR(20),@INFORTallerExterior BIT,@INFORProveedorNal BIT,@ReferenciaINTelisisService VARCHAR(50),@DefPosicionRecibo VARCHAR(10),@DefPosicionSurtido VARCHAR(10),@TarimasChep BIT,
@CentroCostos VARCHAR(20),@MFATipoOperacion VARCHAR(50),@ClaveTipoTercero VARCHAR(50),@ClaveTipoOperacion VARCHAR(50)




SELECT 
@Proveedor=Proveedor,@Rama=Rama,@Nombre=Nombre,@NombreCorto=NombreCorto,@Direccion=Direccion,@DireccionNumero=DireccionNumero,@DireccionNumeroINT=DireccionNumeroINT,@EntreCalles=EntreCalles,@Plano=Plano,@Observaciones=Observaciones,@Delegacion=Delegacion,
@Colonia=Colonia,@Poblacion=Poblacion,@Estado=Estado,@Zona=Zona,@Ruta=Ruta,@Pais=Pais,@CodigoPostal=CodigoPostal,@Telefonos=Telefonos,@Fax=Fax,@PedirTono=PedirTono,@DirINTernet=DirINTernet,@Contacto1=Contacto1,@Contacto2=Contacto2,@Extencion1=Extencion1,
@Extencion2=Extencion2,@eMail1=eMail1,@eMail2=eMail2,@RFC=RFC,@CURP=CURP,@Categoria=Categoria,@Familia=Familia,@ZonaImpuesto=ZonaImpuesto,@FormaEnvio=FormaEnvio,@Descuento=Descuento,@Comprador=Comprador,@Proyecto=Proyecto,@Condicion=Condicion,@CtaDinero=CtaDinero,
@Almacen=Almacen,@DiaRevision1=DiaRevision1,@DiaRevision2=DiaRevision2,@HorarioRevision=HorarioRevision,@DiaPago1=DiaPago1,@DiaPago2=DiaPago2,@HorarioPago=HorarioPago,@Beneficiario=Beneficiario,@BeneficiarioNombre=BeneficiarioNombre,@LeyendaCheque=LeyendaCheque,
@Agente=Agente,@Situacion=Situacion,@SituacionFecha=SituacionFecha,@SituacionUsuario=SituacionUsuario,@SituacionNota=SituacionNota,@Clase=Clase,@Estatus=Estatus,@UltimoCambio=UltimoCambio,@Alta=Alta,@Conciliar=Conciliar,@Mensaje=Mensaje,@Tipo=Tipo,@ProntoPago=ProntoPago,
@DefMoneda=DefMoneda,@ProvBancoSucursal=ProvBancoSucursal,@ProvCuenta=ProvCuenta,@Logico1=Logico1,@Logico2=Logico2,@Logico3=Logico3,@TieneMovimientos=TieneMovimientos,@DescuentoRecargos=DescuentoRecargos,@CompraAutoCargosTipo=CompraAutoCargosTipo,@CompraAutoCargos=CompraAutoCargos,
@Pagares=Pagares,@Aforo=Aforo,@MaximoAplicacionPagos=MaximoAplicacionPagos,@NivelAcceso=NivelAcceso,@Idioma=Idioma,@ListaPreciosEsp=ListaPreciosEsp,@Contrasena=Contrasena,@AutoEndoso=AutoEndoso,@Cuenta=Cuenta,@CuentaRetencion=CuentaRetencion,@FormaPago=FormaPago,@wGastoSolicitud=wGastoSolicitud,
@ConLimiteAnticipos=ConLimiteAnticipos,@LimiteAnticiposMN=LimiteAnticiposMN,@ChecarLimite=ChecarLimite,@eMailAuto=eMailAuto,@FiscalRegimen=FiscalRegimen,@INTercompania=INTercompania,@GarantiaCostos=GarantiaCostos,@GarantiaCostosPlazo=GarantiaCostosPlazo,@ImportadorRegimen=ImportadorRegimen,
@ImportadorRegistro=ImportadorRegistro,@Comision=Comision,@Importe1=Importe1,@Importe2=Importe2,@Origen=Origen,@OrigenID=OrigenID,@MapaLatitud=MapaLatitud,@MapaLongitud=MapaLongitud,@MapaPrecision=MapaPrecision,@TipoRegistro=TipoRegistro,@AutorizacionSRI=AutorizacionSRI,
@VigenciaSRI=VigenciaSRI,@SincroC=SincroC,@NIPCDI=NIPCDI,@CDIApellidoPaterno=CDIApellidoPaterno,@CDIApellidoMaterno=CDIApellidoMaterno,@CDINombre=CDINombre,@CDIFechaNacimiento=CDIFechaNacimiento,@CDINacionalidad=CDINacionalidad,@CDIRelacionNIPCDI=CDIRelacionNIPCDI,@CFDIRetTipoContribuyente=CFDIRetTipoContribuyente,
@CFDIRetBeneficiarioNombre=CFDIRetBeneficiarioNombre,@CFDIRetBeneficiarioCURP=CFDIRetBeneficiarioCURP,@CFDIRetBeneficiarioRFC=CFDIRetBeneficiarioRFC,@FiscalGenerar=FiscalGenerar,@FiscalZona=FiscalZona,@ContactoTipo=ContactoTipo,
@INFORTallerExterior=INFORTallerExterior,@INFORProveedorNal=INFORProveedorNal,@ReferenciaINTelisisService=ReferenciaINTelisisService,@DefPosicionRecibo=DefPosicionRecibo,@DefPosicionSurtido=DefPosicionSurtido,@TarimasChep=TarimasChep,@CentroCostos=CentroCostos,@MFATipoOperacion=MFATipoOperacion,@ClaveTipoTercero=ClaveTipoTercero,
@ClaveTipoOperacion=ClaveTipoOperacion

FROM CDIProv WHERE Proveedor=@IdProv and usuario=@usuario


UPDATE Prov SET 
Proveedor=@Proveedor,Rama=@Rama,Nombre=@Nombre,NombreCorto=@NombreCorto,Direccion=@Direccion,DireccionNumero=@DireccionNumero,DireccionNumeroINT=@DireccionNumeroINT,EntreCalles=@EntreCalles,Plano=@Plano,Observaciones=@Observaciones,Delegacion=@Delegacion,Colonia=@Colonia,Poblacion=@Poblacion,Estado=@Estado,Zona=@Zona,Ruta=@Ruta,
Pais=@Pais,CodigoPostal=@CodigoPostal,Telefonos=@Telefonos,Fax=@Fax,PedirTono=@PedirTono,DirINTernet=@DirINTernet,Contacto1=@Contacto1,Contacto2=@Contacto2,Extencion1=@Extencion1,Extencion2=@Extencion2,eMail1=@eMail1,eMail2=@eMail2,RFC=@RFC,CURP=@CURP,Categoria=@Categoria,Familia=@Familia,ZonaImpuesto=@ZonaImpuesto,FormaEnvio=@FormaEnvio,
Descuento=@Descuento,Comprador=@Comprador,Proyecto=@Proyecto,Condicion=@Condicion,CtaDinero=@CtaDinero,Almacen=@Almacen,DiaRevision1=@DiaRevision1,DiaRevision2=@DiaRevision2,HorarioRevision=@HorarioRevision,DiaPago1=@DiaPago1,DiaPago2=@DiaPago2,HorarioPago=@HorarioPago,Beneficiario=@Beneficiario,BeneficiarioNombre=@BeneficiarioNombre,
LeyendaCheque=@LeyendaCheque,Agente=@Agente,Situacion=@Situacion,SituacionFecha=@SituacionFecha,SituacionUsuario=@SituacionUsuario,SituacionNota=@SituacionNota,Clase=@Clase,Estatus=@Estatus,UltimoCambio=@UltimoCambio,Alta=@Alta,Conciliar=@Conciliar,Mensaje=@Mensaje,Tipo=@Tipo,ProntoPago=@ProntoPago,DefMoneda=@DefMoneda,ProvBancoSucursal=@ProvBancoSucursal,
ProvCuenta=@ProvCuenta,Logico1=@Logico1,Logico2=@Logico2,Logico3=@Logico3,TieneMovimientos=@TieneMovimientos,DescuentoRecargos=@DescuentoRecargos,CompraAutoCargosTipo=@CompraAutoCargosTipo,CompraAutoCargos=@CompraAutoCargos,Pagares=@Pagares,Aforo=@Aforo,MaximoAplicacionPagos=@MaximoAplicacionPagos,NivelAcceso=@NivelAcceso,Idioma=@Idioma,
ListaPreciosEsp=@ListaPreciosEsp,Contrasena=@Contrasena,AutoEndoso=@AutoEndoso,Cuenta=@Cuenta,CuentaRetencion=@CuentaRetencion,FormaPago=@FormaPago,wGastoSolicitud=@wGastoSolicitud,ConLimiteAnticipos=@ConLimiteAnticipos,LimiteAnticiposMN=@LimiteAnticiposMN,ChecarLimite=@ChecarLimite,eMailAuto=@eMailAuto,FiscalRegimen=@FiscalRegimen,INTercompania=@INTercompania,
GarantiaCostos=@GarantiaCostos,GarantiaCostosPlazo=@GarantiaCostosPlazo,ImportadorRegimen=@ImportadorRegimen,ImportadorRegistro=@ImportadorRegistro,Comision=@Comision,Importe1=@Importe1,Importe2=@Importe2,Origen=@Origen,OrigenID=@OrigenID,MapaLatitud=@MapaLatitud,MapaLongitud=@MapaLongitud,MapaPrecision=@MapaPrecision,TipoRegistro=@TipoRegistro,AutorizacionSRI=@AutorizacionSRI,
VigenciaSRI=@VigenciaSRI,SincroC=@SincroC,NIPCDI=@NIPCDI,CDIApellidoPaterno=@CDIApellidoPaterno,CDIApellidoMaterno=@CDIApellidoMaterno,CDINombre=@CDINombre,CDIFechaNacimiento=@CDIFechaNacimiento,CDINacionalidad=@CDINacionalidad,CDIRelacionNIPCDI=@CDIRelacionNIPCDI,CFDIRetTipoContribuyente=@CFDIRetTipoContribuyente,CFDIRetBeneficiarioNombre=@CFDIRetBeneficiarioNombre,
CFDIRetBeneficiarioCURP=@CFDIRetBeneficiarioCURP,CFDIRetBeneficiarioRFC=@CFDIRetBeneficiarioRFC,FiscalGenerar=@FiscalGenerar,FiscalZona=@FiscalZona,ContactoTipo=@ContactoTipo,INFORTallerExterior=@INFORTallerExterior,INFORProveedorNal=@INFORProveedorNal,ReferenciaINTelisisService=@ReferenciaINTelisisService,DefPosicionRecibo=@DefPosicionRecibo,DefPosicionSurtido=@DefPosicionSurtido,
TarimasChep=@TarimasChep,CentroCostos=@CentroCostos,MFATipoOperacion=@MFATipoOperacion,ClaveTipoTercero=@ClaveTipoTercero,ClaveTipoOperacion=@ClaveTipoOperacion

WHERE Proveedor=@IdProv


DELETE CDIProv WHERE Proveedor=@IdProv and usuario=@usuario

END
GO