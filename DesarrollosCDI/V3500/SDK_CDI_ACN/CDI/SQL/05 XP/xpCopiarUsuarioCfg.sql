/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO


/************** xpCopiarUsuarioCfg *************/
IF EXISTS (SELECT * FROM SysObjects where id = object_id('dbo.xpCopiarUsuarioCfg') and sysstat & 0xf = 4) DROP PROCEDURE dbo.xpCopiarUsuarioCfg
GO
CREATE PROCEDURE xpCopiarUsuarioCfg
                   @UsuarioD    char(10),
                   @UsuarioA	char(10)
AS BEGIN

    IF EXISTS(SELECT * FROM Usuario WHERE Usuario = @UsuarioD) 
    BEGIN  --- A C C E S O S  C A T A L O G O S      E M M 
      SELECT @UsuarioD, @UsuarioA            
      UPDATE Usuario SET	ClDatosGenerales  = U2ClDatosGenerales,	ClDatosPersonales = U2ClDatosPersonales,	ClFiscal               = U2ClFiscal,			
							ClSeguro          = U2ClSeguro,			ClDatosVentas     = U2ClDatosVentas,		ClReglaNegocio         = U2ClReglaNegocio,			
							ClUsoServicio     = U2ClUsoServicio,	ClPerfiles        = U2ClPerfiles,			ClFord                 = U2ClFord,				
							ClCRM             = U2ClCRM,			ClInternet        = U2ClInternet,			ClOtros                = U2ClOtros ,			
							ClComentarios     = U2ClComentarios,	ClCaracteristicas = U2ClCaracteristicas,	ClSituacionesArea      = U2ClSituacionesArea,	
							ClEcuador         = U2ClEcuador,		PrDatosGenerales  = U2PrDatosGenerales,		PrReglaNegocio         = U2PrReglaNegocio,		
							PrComprasPagos    = U2PrComprasPagos,	PrFiscal          = U2PrFiscal,				PrOtrosDatos           = U2PrOtrosDatos,				
							PrCaracteristicas = U2PrCaracteristicas,PrSituacionesArea = U2PrSituacionesArea,	PrEcuador              = U2PrEcuador,
							PeDatosGenerales  = U2PeDatosGenerales,	PeBeneficiarios   = U2PeBeneficiarios,		PeRecursosHumanos      = U2PeRecursosHumanos,	
							PeAspiraciones    = U2PeAspiraciones,	PeReglaNegocio    = U2PeReglaNegocio,		PeComisionesEspeciales = U2PeComisionesEspeciales,	
							PeOtrosDatos      = U2PeOtrosDatos,		PePerfiles        = U2PePerfiles,			PeCaracteristicas      = U2PeCaracteristicas,
							PeSituacionesArea = U2PeSituacionesArea,SoDatosGenerales  = U2SoDatosGenerales,		SoEconomicos           = U2SoEconomicos,
							SoDatosMedicos    = U2SoDatosMedicos,	SoPreferencias    = U2SoPreferencias,		SoTransporte           = U2SoTransporte,
							SoDatosBancarios  = U2SoDatosBancarios,	SoDatosAcademicos = U2SoDatosAcademicos,	SoEstudioSocioeconomico= U2SoEstudioSocioeconomico,
							SoReglaNegocio    = U2SoReglaNegocio,	CDIRelacionesRestringidasRoles = U2CDIRelacionesRestringidasRoles,
							ClRolesAsignados  = U2ClRolesAsignados, PrRolesAsignados  = U2PrRolesAsignados,     PeRolesAsignados       = U2PeRolesAsignados,
							SoRolesAsignados  = U2SoRolesAsignados
        FROM Usuario X JOIN
		 (SELECT U1.Usuario 'Usuario_Origen',			U2.Usuario 'Usuario_Destino',		U1.Configuracion 'ConfiguracionO',			U2.Configuracion 'ConfiguracionD',
                 --- D E S T I N O
                 U2.ClDatosGenerales  AS U2ClDatosGenerales,	U2.ClDatosPersonales AS U2ClDatosPersonales,U2.ClFiscal          AS U2ClFiscal,			
				 U2.ClSeguro          AS U2ClSeguro,			U2.ClDatosVentas     AS U2ClDatosVentas,	U2.ClReglaNegocio    AS U2ClReglaNegocio,			
				 U2.ClUsoServicio     AS U2ClUsoServicio,		U2.ClPerfiles        AS U2ClPerfiles,		U2.ClFord            AS U2ClFord,			U2.ClCRM                   AS U2ClCRM,				
				 U2.ClInternet        AS U2ClInternet,			U2.ClOtros           AS U2ClOtros ,			U2.ClComentarios     AS U2ClComentarios,	U2.ClCaracteristicas       AS U2ClCaracteristicas,		
				 U2.ClSituacionesArea AS U2ClSituacionesArea,	U2.ClEcuador         AS U2ClEcuador,		U2.PrDatosGenerales  AS U2PrDatosGenerales,	U2.PrReglaNegocio          AS U2PrReglaNegocio,		
				 U2.PrComprasPagos    AS U2PrComprasPagos,		U2.PrFiscal          AS U2PrFiscal,			U2.PrOtrosDatos      AS U2PrOtrosDatos,		U2.PrCaracteristicas       AS U2PrCaracteristicas,	
                 U2.PrSituacionesArea AS U2PrSituacionesArea,	U2.PrEcuador         AS U2PrEcuador,		U2.PeDatosGenerales  AS U2PeDatosGenerales,	U2.PeBeneficiarios         AS U2PeBeneficiarios,		
				 U2.PeRecursosHumanos AS U2PeRecursosHumanos,	U2.PeAspiraciones    AS U2PeAspiraciones,	U2.PeReglaNegocio    AS U2PeReglaNegocio,	U2.PeComisionesEspeciales  AS U2PeComisionesEspeciales,	
				 U2.PeOtrosDatos      AS U2PeOtrosDatos,		U2.PePerfiles        AS U2PePerfiles,		U2.PeCaracteristicas AS U2PeCaracteristicas,U2.PeSituacionesArea       AS U2PeSituacionesArea,
				 U2.SoDatosGenerales  AS U2SoDatosGenerales,	U2.SoEconomicos      AS U2SoEconomicos,		U2.SoDatosMedicos    AS U2SoDatosMedicos,	U2.SoPreferencias		   AS U2SoPreferencias,		
				 U2.SoTransporte      AS U2SoTransporte,		U2.SoDatosBancarios  AS U2SoDatosBancarios,	U2.SoDatosAcademicos AS U2SoDatosAcademicos,U2.SoEstudioSocioeconomico AS U2SoEstudioSocioeconomico,
				 U2.SoReglaNegocio    AS U2SoReglaNegocio,		U2.CDIRelacionesRestringidasRoles AS U2CDIRelacionesRestringidasRoles,					U2.ClRolesAsignados        AS U2ClRolesAsignados,
				 U2.PrRolesAsignados  AS U2PrRolesAsignados,	U2.PeRolesAsignados  AS U2PeRolesAsignados,	U2.SoRolesAsignados  AS U2SoRolesAsignados
 
            FROM Usuario U1  JOIN Usuario U2 ON 1=1
           WHERE U1.Usuario = @UsuarioA
             AND U2.Usuario = @UsuarioD
         ) Z ON X.Usuario = Z.Usuario_Origen 


    END    --- A C C E S O S  C A T A L O G O S
   
  RETURN
END
GO


