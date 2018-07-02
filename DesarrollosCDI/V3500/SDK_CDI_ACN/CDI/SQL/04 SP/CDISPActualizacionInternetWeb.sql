SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
SET IMPLICIT_TRANSACTIONS OFF
SET ANSI_NULLS ON  
SET QUOTED_IDENTIFIER ON 



GO
IF OBJECT_ID('spWEBPreferenciasLoadParam') IS NOT NULL
  DROP PROCEDURE spWEBPreferenciasLoadParam
GO
CREATE PROCEDURE spWEBPreferenciasLoadParam      
  @SesionID  uniqueidentifier = null,      
  @Origen    varchar(255)     = null,      
  @Pagina    varchar(20)      = null      
AS BEGIN      

 DELETE WebPaginaParam WHERE Pagina=@Pagina
   
 CREATE TABLE #ParamLogic(Pagina varchar(20),Parametro varchar(50),Orden int identity (1,2))
 
 CREATE TABLE #ParamTag  (Pagina varchar(20),Parametro varchar(50),Nombre varchar(90),Orden int identity (2,2))

 INSERT #ParamLogic(Pagina,Parametro)
 SELECT @Pagina,Name
   FROM sys.columns  A JOIN IdiomaEtiqueta B  ON  A.name=B.Etiqueta 
  WHERE object_id=object_id('CDISociosPreferencias')
            
 INSERT #ParamTag(Pagina,Parametro,Nombre)
 SELECT @Pagina,'Tag'+Name,Nombre
   FROM sys.columns  A JOIN IdiomaEtiqueta B  ON  A.name=B.Etiqueta 
  WHERE object_id=object_id('CDISociosPreferencias')

 INSERT WebPaginaParam (Pagina,Parametro,Nombre,TipoDatos,TipoAyuda,Orden,EspacioPrevio,Tamano) 
 SELECT Pagina,Parametro,'','Logico','No',Orden,0,'' FROM #ParamLogic
  UNION ALL
 SELECT Pagina,Parametro,Nombre,'Etiqueta','No',Orden,CASE WHEN (Orden % 5)=0 THEN 1 ELSE 0 END,'70' 
   FROM #ParamTag
 ORDER BY Orden
 
 RETURN      
END   


GO
IF OBJECT_ID('spWEBPreferenciasLoad') IS NOT NULL
  DROP PROCEDURE spWEBPreferenciasLoad
GO
CREATE PROCEDURE spWEBPreferenciasLoad     
  @SesionID  uniqueidentifier = null,      
  @Origen    varchar(255)     = null,      
  @Pagina    varchar(20)      = null      
AS BEGIN      
 DECLARE
  @SQL        nvarchar(max)
 ,@ParmSelect nvarchar(max)
 ,@ParmUpdate nvarchar(max)
 ,@Parametro  varchar(50)
 ,@UsuarioWeb varchar(15)
 ,@Cliente    varchar(15)
 ,@Valor      varchar(10)
 ,@Until      int
 ,@i          int

 SET NOCOUNT ON
   
 EXEC spWEBPreferenciasLoadParam @SesionID,@Origen,@Pagina
   
 SELECT @UsuarioWeb=UsuarioWeb 
   FROM WebSesion 
  WHERE SesionID=@SesionID

 SELECT @Cliente=Cliente 
   FROM WebUsuario 
  WHERE UsuarioWeb=@UsuarioWeb  
   
 SELECT Parametro INTO #Param 
   FROM WebPaginaParam WHERE Pagina=@Pagina  and TipoDatos='Logico'
   
   SET @Until=@@ROWCOUNT
 ALTER TABLE #Param ADD ID INT IDENTITY 

 SELECT @i=1,
        @ParmSelect = N'@Cliente   varchar(15),@ValorOUT int OUTPUT',
        @ParmUpdate = N'@Parametro varchar(50),@ValorIN  int'
   
  WHILE @i<=@Until
   BEGIN 
    SELECT @SQL='SELECT  @ValorOut='+Parametro+ ' FROM CDISociosPreferencias WHERE Cliente=@Cliente'   
      FROM #Param 
     WHERE ID=@i

     EXEC sp_executesql @SQL,@ParmSelect,@Cliente=@Cliente,@ValorOut=@Valor OUTPUT;
       
    SELECT @Parametro=Parametro FROM #Param WHERE ID=@i
    SELECT @SQL='UPDATE WebPaginaParam 
                    SET ValorPorOmision=CASE WHEN @ValorIN=1 THEN ''Verdadero'' ELSE '''' END 
                  WHERE Parametro=@Parametro'  
    
     EXEC sp_executesql @SQL,@ParmUpdate,@Parametro=@Parametro,@ValorIN=@Valor;
       
   SET @i=@i+1
  END
     
RETURN      
END   



GO
IF OBJECT_ID('spWEBPreferenciasSubmit') IS NOT NULL
  DROP PROCEDURE spWEBPreferenciasSubmit
GO
CREATE PROCEDURE spWEBPreferenciasSubmit 
  @SesionID  uniqueidentifier = null,        
  @Origen    varchar(255)     = null,        
  @Pagina    varchar(20)      = null        
AS BEGIN        
 DECLARE 
  @until int 
 ,@Parametro  varchar(50)
 ,@Valor      varchar(2)
 ,@UsuarioWeb varchar(15)
 ,@Cliente    varchar(15)
 ,@i          int
  
 SELECT @UsuarioWeb=UsuarioWeb 
   FROM WebSesion 
  WHERE SesionID=@SesionID

 SELECT @Cliente=Cliente 
   FROM WebUsuario 
  WHERE UsuarioWeb=@UsuarioWeb  

  SELECT Parametro,CASE Valor WHEN 'True'  THEN 1 
                              WHEN 'False' THEN 0 END Valor 
    INTO #Temp                            
    FROM WebSesionPaginaParam 
   WHERE Parametro Like '%CDIPrefCheck%' AND SesionID=@SesionID
  ORDER BY Parametro 
   
   SELECT @until=@@ROWCOUNT,@i=1 
   
   ALTER TABLE #Temp ADD ID Int Identity 
   
   IF NOT EXISTS(SELECT * FROM CDISociosPreferencias WHERE Cliente=@Cliente)
    INSERT CDISociosPreferencias(Cliente) VALUES(@Cliente)
   
   WHILE @i<= @until
    BEGIN
      SELECT @Parametro=Parametro,@Valor=Valor FROM #Temp WHERE ID=@i
      EXEC('UPDATE CDISociosPreferencias SET ' +@Parametro+'='+@Valor+' WHERE Cliente='''+@Cliente+'''')
     SET @i+=1
    END

    SELECT '<SCRIPT>alert("Datos Actualizados Correctamente")</SCRIPT>'
   RETURN        
END     


GO
IF EXISTS(SELECT * FROM SYS.OBJECTS WHERE NAME='fnValidaDatosPostales' AND Type='FN')
 DROP FUNCTION fnValidaDatosPostales
GO
 CREATE FUNCTION fnValidaDatosPostales(@CP varchar(15),@Colonia varchar(60),@Del varchar(50),@Estado varchar(50))
  RETURNS BIT
  AS BEGIN 
    DECLARE 
    @ok Bit =1,
    @Valida int
     
     IF @CP='' AND @Colonia='' AND @Del='' AND @Estado=''
        SELECT @ok =1
     ELSE 
      BEGIN
       SELECT @Valida=Count(0) 
         FROM CodigoPostal 
        WHERE CodigoPostal=@CP AND Colonia=@Colonia AND Delegacion=@Del AND Estado=@Estado
        IF @Valida=0
          SELECT @ok=0
        ELSE 
          SELECT @ok=1  
      END       
   RETURN @ok 
  END   



GO
IF OBJECT_ID('spWEBActaluizacionLoad') IS NOT NULL
  DROP PROCEDURE spWEBActaluizacionLoad
GO
CREATE PROCEDURE spWEBActaluizacionLoad 
  @SesionID  uniqueidentifier = null,        
  @Origen    varchar(255)     = null,        
  @Pagina    varchar(20)      = null        
AS BEGIN    
 DECLARE
  @UsuarioWeb varchar(15)
 ,@Cliente    varchar(15)
   
 SELECT @UsuarioWeb=UsuarioWeb 
   FROM WebSesion 
  WHERE SesionID=@SesionID

 SELECT @Cliente=Cliente 
   FROM WebUsuario 
  WHERE UsuarioWeb=@UsuarioWeb  

  SELECT 'GeneralAMaterno'=PersonalApellidoMaterno 
		,'GeneralApaterno'=PersonalApellidoPaterno 
	    ,'GeneralNombre'=PersonalNombres 
		,'GeneralColonia'=a.Colonia 
		,'GeneralCP'=a.CodigoPostal 
		,'GeneralDelegacion'=a.Delegacion 
		,'GeneralDireccion'=a.Direccion 
		,'GeneralEdoCivil'=a.EstadoCivil  
		,'GeneralEntreCalles'=a.EntreCalles  
		,'GeneralEstado'=a.Estado 
		,'GeneralFechaNac'=a.FechaNacimiento 
		,'GeneralLugarNacimiento'=a.PersonalPais 
		,'GeneralMail'=a.Email1 
		,'GeneralNacionalidad'=a.Nacionalidad 
		,'GeneralNoExterior'=a.DireccionNumero  
		,'GeneralNoInteriror'=a.DireccionNumeroInt 
        ,'GeneralPais'=a.Pais 
		,'GeneralPoblacion'=a.Poblacion 
		,'GeneralSexo'=a.Sexo  
		,'GeneralTelefono'=a.Telefonos
        ,'EconomicoNombre'=CDIEcoNombreEmpresa
		,'EconomicoGiro'=CDIEcoNombreGiro 
	    ,'EconomicoDireccion'=CDIEcoDireccion 
		,'EconomicoNoExterior'=CDIEcoDireccionNumero
		,'EconomicoNoInterior'=CDIEcoDireccionNumeroInt 
		,'EconomicoEntreCalles'=CDIEcoEntreCalles 
        ,'EconomicoDelegacion'=CDIEcoDelegacion 
        ,'EconomicoColonia'=CDIEcoColonia 
        ,'EconomicoPoblacion'=CDIEcoPoblacion 
        ,'EconomicoEstado'=CDIEcoEstado 
        ,'EconomicoPais'=CDIEcoPais
        ,'EconomicoMail'=CDIEcoMail 
        ,'EconomicoTelefono'=CDIEcoTelefono 
        ,'EconomicoFax'=CDIEcoFax 
        ,'EconomicoCP'=CDIEcoCodigoPostal 
        ,'EconomicoAutomovil'=CDIEcoAutomoviles 
	    ,'MedicoAlergias'=CDIMedAlergia
		,'MedicoAvisar'=CDIMedAvisar 
		,'MedicoCelular'=CDIMedCelular 
		,'MedicoCuidadosEspeciales'   =CDIMedCuidados 
	    ,'MedicoCapacidadesDiferentes'=CDIMedCapacidades 
		,'MedicoEnfermedades'=CDIMedEnfermedad 
		,'MedicoEstatura'=CDIMedEstatura 
		,'MedicoMedicamentos'=CDIMedMedicamentos 
		,'MedicoNombreMedico'=CDIMedNombreMedico 
		,'MedicoPeso'=CDIMEdPeso
		,'MedicoRecomendaciones'=CDIMedRecomenda 
		,'MedicoTelefono'=CDIMedTelefono 
		,'MedicoTelMedico'=CDIMedTeleMedico 
		,'MedicoTipoSangre'=CDIMedTipoSangre 
 		,'TransporteRecogeDomicilio'=CDITransServicio  
		,'TransporteMismaDireccion'=CDITransMismaDir  	
		,'TransporteColonia'=CDITransColonia 
        ,'TransporteCP'=CDITransCodigoPostal
        ,'TransporteDelegacion'=CDITransDelegacion 
	    ,'TransporteDireccion'=CDITransDireccion 
        ,'TransporteEntreCalles'=CDITransEntreCalles 
        ,'TransporteEstado'=CDITransEstado 
        ,'TransporteHoraAscenso'=CDITransHoraAscenso 
        ,'TransporteNoExterior'=CDITransNumero 
        ,'TransporteNoInterior'=CDITransNumeroInt 
        ,'TransportePoblacion'=CDITransPoblacion 
		,'TransporteResponsable'=CDITransNombreResp 
        ,'TransporteTelefono'=CDITransTelefono 
	    ,'TransporteLlevarDomicilio'=CDITransLLevarDom 
        ,'TransporteMismaDireccionOut'=CDITransMismaDir2 
        ,'TransporteHoraSalida'=CDITransHoraSalida 
	    ,'TransporteCPOut'=CDITransCodigoPostal2 
		,'TransporteColoniaOut'=CDITransColonia2 
	    ,'TransporteDelegacionOut'=CDITransDelegacion2 
		,'TransporteDireccionOut'=CDITransDireccion2 
		,'TransporteEntreCallesOut'=CDITransEntreCalles2 
	    ,'TransporteEstadoOut'=CDITransEstado2 
		,'TransporteNoExteriorOut'=CDITransNumero2 
	    ,'TransporteNoInteriorOut'=CDITransNumeroInt2 
		,'TransportePoblacionOut'=CDITransPoblacion2 
		,'TransporteResponsableOut'=CDITransNombreResp2 
		,'TransporteTelefonoOut'=CDITransTelefono2
		,'AcademicoInstitucion'=b.Institucion  
 	    ,'AcademicoNivel'=b.Nivel  
 	    ,'AcademicoGrado'=b.Grado 
 	    ,'AcademicoDireccion'=b.Direccion 
 	    ,'AcademicoNoExterior'=b.Numero 
		,'AcademicoNoInterior'=b.NumeroInt 
		,'AcademicoEntreCalles'=b.EntreCalles 
		,'AcademicoPlano'=b.Plano 
        ,'AcademicoCP'=b.CodigoPostal 
        ,'AcademicoDelegacion'=b.Delegacion  
        ,'AcademicoColonia'=b.Colonia  
		,'AcademicoPoblacion'=b.Poblacion  
		,'AcademicoEstado'=b.Estado 
        ,'AcademicoPais'=b.Pais 
   FROM CTE  a LEFT OUTER JOIN CDIDatosAcademicos b ON a.Cliente=b.Cliente 
  WHERE a.Cliente=@Cliente
       
RETURN        
END     



GO
IF OBJECT_ID('spWEBActaluizacionSubmit') IS NOT NULL
  DROP PROCEDURE spWEBActaluizacionSubmit
  GO
CREATE PROCEDURE spWEBActaluizacionSubmit 
  @SesionID  uniqueidentifier = null,        
  @Origen    varchar(255)     = null,        
  @Pagina    varchar(20)      = null        
AS BEGIN        
 DECLARE
  @UsuarioWeb varchar(15)
 ,@Cliente    varchar(15)
 ,@RowCount   int
   
 SELECT @UsuarioWeb=UsuarioWeb 
   FROM WebSesion 
  WHERE SesionID=@SesionID

 SELECT @Cliente=Cliente 
   FROM WebUsuario 
  WHERE UsuarioWeb=@UsuarioWeb  


 /*********************************************Datos Generales **************************************************/
 SELECT 'Cliente'=@Cliente,
		'PersonalApellidoMaterno'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralAMaterno'),
		'PersonalApellidoPaterno'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralApaterno'),
	    'PersonalNombres'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralNombre'),
		'Colonia'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralColonia'),
		'CodigoPostal'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralCP'),
		'Delegacion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralDelegacion'),
		'Direccion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralDireccion'),
		'EstadoCivil'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralEdoCivil'),
		'EntreCalles'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralEntreCalles'),
		'Estado'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralEstado'),
		'FechaNacimiento'= CONVERT(Datetime,SUBSTRING(dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralFechaNac'),1,CHARINDEX(' ',dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralFechaNac')))),
		'PersonalPais'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralLugarNacimiento'),
		'Email1'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralMail'),
		'Nacionalidad'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralNacionalidad'),
		'DireccionNumero'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralNoExterior'),
		'DireccionNumeroInt'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralNoInteriror'),
        'Pais'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralPais'),
		'Poblacion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralPoblacion'),
		'Sexo'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralSexo'),
		'Telefonos'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'GeneralTelefono')
  INTO #CDICteGeneral
 
  SELECT @RowCount=dbo.fnValidaDatosPostales(CodigoPostal,Colonia,Delegacion,Estado)
   FROM  #CDICteGeneral
    
    IF @RowCount=0 
     BEGIN
       SELECT '<script>alert("Los datos Generales  \nCodigo Postal\nColonia\nDelegacion\nEstado\nSon Incorrectos!!")</script>'
       RETURN 
     END
     ELSE
      BEGIN
		MERGE Cte        AS CDI
		USING #CDICteGeneral AS T ON T.Cliente=CDI.Cliente
		WHEN MATCHED
		 THEN UPDATE SET CDI.PersonalApellidoMaterno=CASE WHEN T.PersonalApellidoMaterno='' THEN CDI.PersonalApellidoMaterno ELSE T.PersonalApellidoMaterno END,
						 CDI.PersonalApellidoPaterno=CASE WHEN T.PersonalApellidoPaterno='' THEN CDI.PersonalApellidoPaterno ELSE T.PersonalApellidoPaterno END,
						 CDI.PersonalNombres=CASE WHEN T.PersonalNombres='' THEN CDI.PersonalNombres ELSE T.PersonalNombres END,
						 CDI.Colonia=CASE WHEN T.Colonia='' THEN CDI.Colonia ELSE T.Colonia END,
						 CDI.CodigoPostal=CASE WHEN T.CodigoPostal='' THEN CDI.CodigoPostal ELSE T.CodigoPostal END,
						 CDI.Delegacion=CASE WHEN T.Delegacion='' THEN CDI.Delegacion ELSE T.Delegacion END,
						 CDI.Direccion=CASE WHEN T.Direccion='' THEN CDI.Direccion ELSE T.Direccion END,
						 CDI.EstadoCivil=CASE WHEN T.EstadoCivil='' THEN CDI.EstadoCivil ELSE T.EstadoCivil END,
						 CDI.EntreCalles=CASE WHEN T.EntreCalles='' THEN  CDI.EntreCalles ELSE T.EntreCalles END,
						 CDI.Estado=CASE WHEN T.Estado='' THEN CDI.Estado ELSE T.Estado END,
						 CDI.FechaNacimiento=CASE WHEN T.FechaNacimiento='' THEN CDI.FechaNacimiento ELSE T.FechaNacimiento END,
						 CDI.PersonalPais=CASE WHEN T.PersonalPais='' THEN CDI.PersonalPais ELSE T.PersonalPais END,
						 CDI.Email1=CASE WHEN T.Email1='' THEN CDI.Email1 ELSE T.Email1 END,
						 CDI.Nacionalidad=CASE WHEN T.Nacionalidad='' THEN CDI.Nacionalidad ELSE T.Nacionalidad END,
						 CDI.DireccionNumero=CASE WHEN T.DireccionNumero='' THEN CDI.DireccionNumero ELSE T.DireccionNumero END,
						 CDI.DireccionNumeroInt=CASE WHEN T.DireccionNumeroInt='' THEN CDI.DireccionNumeroInt ELSE T.DireccionNumeroInt END,
						 CDI.Pais=CASE WHEN T.Pais='' THEN CDI.Pais ELSE T.Pais END,
						 CDI.Poblacion=CASE WHEN T.Poblacion='' THEN CDI.Poblacion ELSE T.Poblacion END,
						 CDI.Sexo=CASE WHEN T.Sexo='' THEN CDI.Sexo ELSE T.Sexo END,
						 CDI.Telefonos=CASE WHEN T.Telefonos='' THEN CDI.Telefonos ELSE T.Telefonos END;
      END


 /*********************************************Datos Economicos **************************************************/
 SELECT 'Cliente'=@Cliente,  
        'CDIEcoNombreEmpresa'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoNombre'),
		'CDIEcoNombreGiro'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoGiro'),
	    'CDIEcoDireccion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoDireccion'),
		'CDIEcoDireccionNumero'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoNoExterior'),
		'CDIEcoDireccionNumeroInt'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoNoInterior'),
		'CDIEcoEntreCalles'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoEntreCalles'),
        'CDIEcoDelegacion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoDelegacion'),
        'CDIEcoColonia'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoColonia'),
        'CDIEcoPoblacion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoPoblacion'),
        'CDIEcoEstado'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoEstado'),
        'CDIEcoPais'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoPais'),
        'CDIEcoMail'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoMail'),
        'CDIEcoTelefono'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoTelefono'),
        'CDIEcoFax'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoFax'),
        'CDIEcoCodigoPostal'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoCP'),
        'CDIEcoAutomoviles'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'EconomicoAutomovil')
  INTO #CDICteEco
  
  SELECT @RowCount=dbo.fnValidaDatosPostales(CDIEcoCodigoPostal,CDIEcoColonia,CDIEcoDelegacion,CDIEcoEstado)
   FROM  #CDICteEco

    IF @RowCount=0 
     BEGIN
       SELECT '<script>alert("Los datos de Economia  \nCodigo Postal\nColonia\nDelegacion\nEstado\nSon Incorrectos!!")</script>'
       RETURN 
     END
     ELSE
      BEGIN
		MERGE Cte        AS CDI
		USING #CDICteEco AS T ON T.Cliente=CDI.Cliente
		WHEN MATCHED
		 THEN UPDATE SET CDI.CDIEcoNombreEmpresa=CASE WHEN T.CDIEcoNombreEmpresa='' THEN CDI.CDIEcoNombreEmpresa ELSE T.CDIEcoNombreEmpresa END,
						 CDI.CDIEcoNombreGiro=CASE WHEN T.CDIEcoNombreGiro='' THEN CDI.CDIEcoNombreGiro ELSE T.CDIEcoNombreGiro END,
						 CDI.CDIEcoDireccion=CASE WHEN T.CDIEcoDireccion='' THEN CDI.CDIEcoDireccion ELSE T.CDIEcoDireccion END,
						 CDI.CDIEcoDireccionNumero=CASE WHEN T.CDIEcoDireccionNumero='' THEN CDI.CDIEcoDireccionNumero ELSE T.CDIEcoDireccionNumero END,
						 CDI.CDIEcoDireccionNumeroInt=CASE WHEN T.CDIEcoDireccionNumeroInt='' THEN CDI.CDIEcoDireccionNumeroInt ELSE T.CDIEcoDireccionNumeroInt END,
						 CDI.CDIEcoEntreCalles=CASE WHEN T.CDIEcoEntreCalles='' THEN CDI.CDIEcoEntreCalles ELSE T.CDIEcoEntreCalles END,
						 CDI.CDIEcoDelegacion=CASE WHEN T.CDIEcoDelegacion='' THEN CDI.CDIEcoDelegacion ELSE T.CDIEcoDelegacion END,
						 CDI.CDIEcoColonia=CASE WHEN T.CDIEcoColonia='' THEN CDI.CDIEcoColonia ELSE T.CDIEcoColonia END,
						 CDI.CDIEcoPoblacion=CASE WHEN T.CDIEcoPoblacion='' THEN  CDI.CDIEcoPoblacion ELSE T.CDIEcoPoblacion END,
						 CDI.CDIEcoEstado=CASE WHEN T.CDIEcoEstado='' THEN CDI.CDIEcoEstado ELSE T.CDIEcoEstado END,
						 CDI.CDIEcoPais=CASE WHEN T.CDIEcoPais='' THEN CDI.CDIEcoPais ELSE T.CDIEcoPais END,
						 CDI.CDIEcoMail=CASE WHEN T.CDIEcoMail='' THEN CDI.CDIEcoMail ELSE T.CDIEcoMail END,
						 CDI.CDIEcoTelefono=CASE WHEN T.CDIEcoTelefono='' THEN CDI.CDIEcoTelefono ELSE T.CDIEcoTelefono END,
						 CDI.CDIEcoFax=CASE WHEN T.CDIEcoFax='' THEN CDI.CDIEcoFax ELSE T.CDIEcoFax END,
						 CDI.CDIEcoCodigoPostal=CASE WHEN T.CDIEcoCodigoPostal='' THEN CDI.CDIEcoCodigoPostal ELSE T.CDIEcoCodigoPostal END,
						 CDI.CDIEcoAutomoviles=CASE WHEN T.CDIEcoAutomoviles='' THEN CDI.CDIEcoAutomoviles ELSE T.CDIEcoAutomoviles END;
     END



 /*********************************************Datos Medicos **************************************************/
 SELECT 'Cliente'=@Cliente,		
		'CDIMedAlergias'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoAlergias'),
		'CDIMedAvisar'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoAvisar'),
		'CDIMedCapacidades'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoCapacidadesDiferentes'),
		'CDIMedCelular'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoCelular'),
		'CDIMedCuidados'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoCuidadosEspeciales'),
		'CDIMedEnfermedad'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoEnfermedades'),
		'CDIMedEstatura'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoEstatura'),
		'CDIMedMedicamentos'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoMedicamentos'),
		'CDIMedNombreMedico'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoNombreMedico'),
		'CDIMEdPeso'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoPeso'),
		'CDIMedRecomenda'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoRecomendaciones'),
		'CDIMedTelefono'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoTelefono'),
		'CDIMedTeleMedico'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoTelMedico'),
		'CDIMedTipoSangre'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'MedicoTipoSangre')
   INTO #CDICteMedico

		MERGE Cte        AS CDI
		USING #CDICteMedico AS T ON T.Cliente=CDI.Cliente
		WHEN MATCHED
		 THEN UPDATE SET CDI.CDIMedAlergias=CASE WHEN T.CDIMedAlergias='' THEN CDI.CDIMedAlergias ELSE T.CDIMedAlergias END,
						 CDI.CDIMedAvisar=CASE WHEN T.CDIMedAvisar='' THEN CDI.CDIMedAvisar ELSE T.CDIMedAvisar END,
						 CDI.CDIMedCapacidades=CASE WHEN T.CDIMedCapacidades='' THEN CDI.CDIMedCapacidades ELSE T.CDIMedCapacidades END,
						 CDI.CDIMedCelular=CASE WHEN T.CDIMedCelular='' THEN CDI.CDIMedCelular ELSE T.CDIMedCelular END,
						 CDI.CDIMedCuidados=CASE WHEN T.CDIMedCuidados='' THEN CDI.CDIMedCuidados ELSE T.CDIMedCuidados END,
						 CDI.CDIMedEnfermedad=CASE WHEN T.CDIMedEnfermedad='' THEN CDI.CDIMedEnfermedad ELSE T.CDIMedEnfermedad END,
						 CDI.CDIMedEstatura=CASE WHEN T.CDIMedEstatura='' THEN CDI.CDIMedEstatura ELSE T.CDIMedEstatura END,
						 CDI.CDIMedMedicamentos=CASE WHEN T.CDIMedMedicamentos='' THEN CDI.CDIMedMedicamentos ELSE T.CDIMedMedicamentos END,
						 CDI.CDIMedNombreMedico=CASE WHEN T.CDIMedNombreMedico='' THEN  CDI.CDIMedNombreMedico ELSE T.CDIMedNombreMedico END,
						 CDI.CDIMEdPeso=CASE WHEN T.CDIMEdPeso='' THEN CDI.CDIMEdPeso ELSE T.CDIMEdPeso END,
						 CDI.CDIMedRecomenda=CASE WHEN T.CDIMedRecomenda='' THEN CDI.CDIMedRecomenda ELSE T.CDIMedRecomenda END,
						 CDI.CDIMedTelefono=CASE WHEN T.CDIMedTelefono='' THEN CDI.CDIMedTelefono ELSE T.CDIMedTelefono END,
						 CDI.CDIMedTeleMedico=CASE WHEN T.CDIMedTeleMedico='' THEN CDI.CDIMedTeleMedico ELSE T.CDIMedTeleMedico END,
						 CDI.CDIMedTipoSangre=CASE WHEN T.CDIMedTipoSangre='' THEN CDI.CDIMedTipoSangre ELSE T.CDIMedTipoSangre END;



 /*********************************************Datos Transporte **************************************************/
 SELECT 'Cliente'=@Cliente,		
 		'CDITransServicio'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteRecogeDomicilio'), 
		'CDITransMismaDir'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteMismaDireccion'), 	
		'CDITransColonia'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteColonia'),
        'CDITransCodigoPostal'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteCP'),
        'CDITransDelegacion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteDelegacion'),
	    'CDITransDireccion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteDireccion'),
        'CDITransEntreCalles'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteEntreCalles'),
        'CDITransEstado'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteEstado'),
        'CDITransHoraAscenso'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteHoraAscenso'),
        'CDITransNumero'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteNoExterior'),
        'CDITransNumeroInt'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteNoInterior'),
        'CDITransPoblacion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransportePoblacion'),
		'CDITransNombreResp'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteResponsable'),
        'CDITransTelefono'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteTelefono')
        INTO #CDITransporteIN
        
   SELECT @RowCount=dbo.fnValidaDatosPostales(CDITransCodigoPostal,CDITransColonia,CDITransDireccion,CDITransEstado)
   FROM  #CDITransporteIN
    
    IF @RowCount=0 
     BEGIN
       SELECT '<script>alert("Los datos de Servicio de Transporte   \nCodigo Postal\nColonia\nDelegacion\nEstado\nSon Incorrectos!!")</script>'
       RETURN 
     END
     ELSE
      BEGIN
		MERGE Cte        AS CDI
		USING #CDITransporteIN AS T ON T.Cliente=CDI.Cliente
		WHEN MATCHED
		 THEN UPDATE SET CDI.CDITransServicio=CASE WHEN T.CDITransServicio='' THEN CDI.CDITransServicio ELSE CASE WHEN T.CDITransServicio='True' THEN 1 ELSE 0 END END,
						 CDI.CDITransMismaDir=CASE WHEN T.CDITransMismaDir='' THEN CDI.CDITransMismaDir ELSE CASE WHEN T.CDITransMismaDir='True' THEN 1 ELSE 0 END END,
						 CDI.CDITransColonia=CASE WHEN T.CDITransColonia='' THEN CDI.CDITransColonia ELSE T.CDITransColonia END,
						 CDI.CDITransCodigoPostal=CASE WHEN T.CDITransCodigoPostal='' THEN CDI.CDITransCodigoPostal ELSE T.CDITransCodigoPostal END,
						 CDI.CDITransDelegacion=CASE WHEN T.CDITransDelegacion='' THEN CDI.CDITransDelegacion ELSE T.CDITransDelegacion END,
						 CDI.CDITransDireccion=CASE WHEN T.CDITransDireccion='' THEN CDI.CDITransDireccion ELSE T.CDITransDireccion END,
						 CDI.CDITransEntreCalles=CASE WHEN T.CDITransEntreCalles='' THEN CDI.CDITransEntreCalles ELSE T.CDITransEntreCalles END,
						 CDI.CDITransEstado=CASE WHEN T.CDITransEstado='' THEN CDI.CDITransEstado ELSE T.CDITransEstado END,
						 CDI.CDITransHoraAscenso=CASE WHEN T.CDITransHoraAscenso='' THEN  CDI.CDITransHoraAscenso ELSE T.CDITransHoraAscenso END,
						 CDI.CDITransNumero=CASE WHEN T.CDITransNumero='' THEN CDI.CDITransNumero ELSE T.CDITransNumero END,
						 CDI.CDITransNumeroInt=CASE WHEN T.CDITransNumeroInt='' THEN CDI.CDITransNumeroInt ELSE T.CDITransNumeroInt END,
						 CDI.CDITransPoblacion=CASE WHEN T.CDITransPoblacion='' THEN CDI.CDITransPoblacion ELSE T.CDITransPoblacion END,
						 CDI.CDITransNombreResp=CASE WHEN T.CDITransNombreResp='' THEN CDI.CDITransNombreResp ELSE T.CDITransNombreResp END,
						 CDI.CDITransTelefono=CASE WHEN T.CDITransTelefono='' THEN CDI.CDITransTelefono ELSE T.CDITransTelefono END;
	  END

             
 SELECT 'Cliente'=@Cliente,		     
        'CDITransLLevarDom'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteLlevarDomicilio'),
        'CDITransMismaDir2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteMismaDireccionOut'),
        'CDITransHoraSalida'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteHoraSalida'),
	    'CDITransCodigoPostal2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteCPOut'),
		'CDITransColonia2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteColoniaOut'),
	    'CDITransDelegacion2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteDelegacionOut'),
		'CDITransDireccion2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteDireccionOut'),
		'CDITransEntreCalles2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteEntreCallesOut'),
	    'CDITransEstado2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteEstadoOut'),
		'CDITransNumero2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteNoExteriorOut'),
	    'CDITransNumeroInt2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteNoInteriorOut'),
		'CDITransPoblacion2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransportePoblacionOut'),
		'CDITransNombreResp2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteResponsableOut'),
		'CDITransTelefono2'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'TransporteTelefonoOut')
         INTO #CDITransporteOUT
         
   SELECT @RowCount=dbo.fnValidaDatosPostales(CDITransCodigoPostal2,CDITransColonia2,CDITransDireccion2,CDITransEstado2)
   FROM  #CDITransporteOUT
    
    IF @RowCount=0 
     BEGIN
       SELECT '<script>alert("Los datos de Servicio de Transporte   \nCodigo Postal\nColonia\nDelegacion\nEstado\nSon Incorrectos!!")</script>'
       RETURN 
     END
     ELSE
      BEGIN
		MERGE Cte        AS CDI
		USING #CDITransporteOUT AS T ON T.Cliente=CDI.Cliente
		WHEN MATCHED
		 THEN UPDATE SET CDI.CDITransLLevarDom=CASE WHEN T.CDITransLLevarDom='' THEN CDI.CDITransLLevarDom ELSE CASE WHEN T.CDITransLLevarDom='True' THEN 1 ELSE 0 END END,
						 CDI.CDITransMismaDir2=CASE WHEN T.CDITransMismaDir2='' THEN CDI.CDITransMismaDir2 ELSE CASE WHEN T.CDITransMismaDir2='True' THEN 1 ELSE 0 END END,
						 CDI.CDITransHoraSalida=CASE WHEN T.CDITransHoraSalida='' THEN CDI.CDITransHoraSalida ELSE T.CDITransHoraSalida END,
						 CDI.CDITransCodigoPostal2=CASE WHEN T.CDITransCodigoPostal2='' THEN CDI.CDITransCodigoPostal2 ELSE T.CDITransCodigoPostal2 END,
						 CDI.CDITransColonia2=CASE WHEN T.CDITransColonia2='' THEN CDI.CDITransColonia2 ELSE T.CDITransColonia2 END,
						 CDI.CDITransDelegacion2=CASE WHEN T.CDITransDelegacion2='' THEN CDI.CDITransDelegacion2 ELSE T.CDITransDelegacion2 END,
						 CDI.CDITransDireccion2=CASE WHEN T.CDITransDireccion2='' THEN CDI.CDITransDireccion2 ELSE T.CDITransDireccion2 END,
						 CDI.CDITransEntreCalles2=CASE WHEN T.CDITransEntreCalles2='' THEN CDI.CDITransEntreCalles2 ELSE T.CDITransEntreCalles2 END,
						 CDI.CDITransEstado2=CASE WHEN T.CDITransEstado2='' THEN  CDI.CDITransEstado2 ELSE T.CDITransEstado2 END,
						 CDI.CDITransNumeroInt2=CASE WHEN T.CDITransNumeroInt2='' THEN CDI.CDITransNumeroInt2 ELSE T.CDITransNumeroInt2 END,
						 CDI.CDITransPoblacion2=CASE WHEN T.CDITransPoblacion2='' THEN CDI.CDITransPoblacion2 ELSE T.CDITransPoblacion2 END,
						 CDI.CDITransNombreResp2=CASE WHEN T.CDITransNombreResp2='' THEN CDI.CDITransNombreResp2 ELSE T.CDITransNombreResp2 END,
						 CDI.CDITransTelefono2=CASE WHEN T.CDITransTelefono2='' THEN CDI.CDITransTelefono2 ELSE T.CDITransTelefono2 END,
						 CDI.CDITransNumero2=CASE WHEN T.CDITransNumero2='' THEN CDI.CDITransNumero2 ELSE T.CDITransNumero2 END;
	  END         
         
 /*********************************************Datos Academicos**************************************************/
 SELECT 'Cliente'=@Cliente,
 	    'Institucion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoInstitucion'),
 	    'Nivel'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoNivel'),
 	    'Grado'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoGrado'),
 	    'Direccion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoDireccion'),
 	    'Numero'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoNoExterior'),
		'NumeroInt'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoNoInterior'),
		'EntreCalles'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoEntreCalles'),
		'Plano'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoPlano'),
        'CodigoPostal'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoCP'),
        'Delegacion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoDelegacion'),
        'Colonia'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoColonia'),
		'Poblacion'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoPoblacion'),
		'Estado'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoEstado'),
        'Pais'=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'AcademicoPais')
    INTO #CDIDatosAcademicos

  SELECT @RowCount=dbo.fnValidaDatosPostales(CodigoPostal,Colonia,Delegacion,Estado)
   FROM  #CDIDatosAcademicos


    IF @RowCount=0 
     BEGIN
       SELECT '<script>alert("Los datos de Institucion Academica  \nCodigo Postal\nColonia\nDelegacion\nEstado\nSon Incorrectos!!")</script>'
       RETURN 
     END
     ELSE
      BEGIN
		MERGE CDIDatosAcademicos  AS CDI
		USING #CDIDatosAcademicos AS T ON T.Cliente=CDI.Cliente
		WHEN MATCHED
		 THEN UPDATE SET CDI.Cliente=T.Cliente,
						 CDI.Institucion=CASE WHEN T.Institucion='' THEN CDI.Institucion ELSE T.Institucion END,
						 CDI.Nivel=CASE WHEN T.Nivel='' THEN CDI.Nivel ELSE T.Nivel END,
						 CDI.Grado=CASE WHEN T.Grado='' THEN CDI.Grado ELSE T.Grado END,
						 CDI.Direccion=CASE WHEN T.Direccion='' THEN CDI.Direccion ELSE T.Direccion END,
						 CDI.Numero=CASE WHEN T.Numero='' THEN CDI.Numero ELSE T.Numero END,
						 CDI.NumeroInt=CASE WHEN T.NumeroInt='' THEN CDI.NumeroInt ELSE T.NumeroInt END,
						 CDI.EntreCalles=CASE WHEN T.EntreCalles='' THEN CDI.EntreCalles ELSE T.EntreCalles END,
						 CDI.CodigoPostal=CASE WHEN T.CodigoPostal='' THEN CDI.CodigoPostal ELSE T.CodigoPostal END,
						 CDI.Delegacion=CASE WHEN T.Delegacion='' THEN  CDI.Delegacion ELSE  T.Delegacion END,
						 CDI.Colonia=CASE WHEN T.Colonia='' THEN CDI.Colonia ELSE T.Colonia END,
						 CDI.Poblacion=CASE WHEN T.Poblacion='' THEN CDI.Poblacion ELSE T.Poblacion END,
						 CDI.Estado=CASE WHEN T.Estado='' THEN CDI.Estado ELSE T.Estado END,
						 CDI.Pais=CASE WHEN T.Pais='' THEN CDI.Pais ELSE T.Pais END
		WHEN NOT MATCHED THEN
		INSERT VALUES(T.Cliente,T.Institucion,T.Nivel,T.Grado,T.Direccion,T.Numero,T.NumeroInt,T.EntreCalles,
		              T.Plano,T.CodigoPostal,T.Delegacion,T.Colonia,T.Poblacion,T.Estado,T.Pais); 
     END
 
 
 SELECT '<SCRIPT>alert("Actualización de Datos Realizada Correctamente")</SCRIPT>'         
RETURN        
END     
GO   
