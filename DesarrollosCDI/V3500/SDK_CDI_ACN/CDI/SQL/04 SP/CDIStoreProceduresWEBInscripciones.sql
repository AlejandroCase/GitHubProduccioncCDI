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
*  	      Funcion     Inscripciones por Internet                   					               *
*         Proyecto    CDI                                                                          *
*		  Fecha       13/Diciembre/2010 												           *	
****************************************************************************************************/



GO
/**************************************************************************************************/
/*         Tabla que lista de opciones por pagina Tabla Modificada del sistema Iportal            */
/**************************************************************************************************/ 
IF EXISTS(SELECT * FROM Sys.objects WHERE name='WebPaginaParamLista' AND Type='U')
 DROP TABLE  WebPaginaParamLista
GO  
CREATE TABLE WebPaginaParamLista 
 (
   Pagina      varchar (20)  NOT NULL,
   Parametro   varchar (50)  NOT NULL,
   Valor       varchar (255) NOT NULL,
   Nombre      varchar (255) NULL,
   Orden       int  NULL,
   SesionID    uniqueidentifier  DEFAULT '00000000-0000-0000-0000-000000000000',
   CONSTRAINT priWebPaginaParamLista PRIMARY KEY CLUSTERED(Pagina,Parametro,Valor,SesionID)
 ) 

GO
/**************************************************************************************************/
/*                Tabla que Almacena Errores de la aplicacion casilleros                          */
/**************************************************************************************************/ 
 IF NOT EXISTS(SELECT * FROM SysTabla where SysTabla='CDIIportalCursos')
 INSERT INTO SysTabla(SysTabla,Tipo) VALUES('CDIIportalCursos','Cuenta')
 GO

 IF  EXISTS(SELECT * FROM Sys.Tables WHERE Name='CDIIportalCursos')
   DROP TABLE CDIIportalCursos
  GO  
 CREATE TABLE CDIIportalCursos
  (
   SesionID       uniqueidentifier,
   Curso          varchar(10)  COLLATE Database_Default NULL,  
   Programa       varchar(20)  COLLATE Database_Default NULL,
   Descripcion    varchar(100) COLLATE Database_Default NULL, 
   Materia        varchar(20)  COLLATE Database_Default NULL,
   Grupo          varchar(10)  COLLATE Database_Default NULl,
   Espacio        varchar(10)  COLLATE Database_Default NULL,
   Profesor       varchar(10)  COLLATE Database_Default NULL,
   Horario        varchar(50)  COLLATE Database_Default NULL,
   Precio         varchar(80)  COLLATE Database_Default NULL,
   Inscribe       bit  DEFAULT 1 
 )
 
 
GO
IF OBJECT_ID('spAsistenteCursoVerificarWEB') IS NOT NULL
  DROP PROCEDURE spAsistenteCursoVerificarWEB
GO 
CREATE PROCEDURE spAsistenteCursoVerificarWEB 
    @SesionID       uniqueidentifier, 
    @Programa       varchar(20),
    @Cliente        varchar(10), 
	@Empresa        char(5),  
	@Sucursal       int,  
	@EnSilencio     bit = 0,  
	@Ok             int = NULL          OUTPUT,  
	@OkRef          varchar(255) = NULL OUTPUT  
AS  
BEGIN  
	DECLARE  
 	@CEPrograma                 varchar(10),  
	@CEPlan                     varchar(10),  
	@Materia                    varchar(10),  
	@Grupo                      varchar(10),  
	@EvaluacionProfesor         bit,  
	@EvaluacionPsicologica      bit,  
	@CondicionFisica            bit,  
	@ID                         int

   DELETE CDIIportalCursos WHERE SesionID=@SesionID

   SELECT ROW_NUMBER() OVER(ORDER BY CED.CEPlan)ID,
          CE.Programa,CED.CEPlan,CEPlan.Descripcion,Materia,Grupo,Espacio,Profesor,Cupo,
          Horario,CED.Precio,CDIEvaluacionProfesor,CDIEvaluacionPsicologica,CDICondicionFisica
     INTO #Temp
     FROM CE JOIN CED     ON CE.ID=CED.ID 
             JOIN CEPlan  ON CED.CEPlan=CEPlan.CEPlan
    WHERE Mov='Alta Programa' AND CE.Estatus='CONCLUIDO' AND Materia IS NOT NULL  --AND CDIMostrarInternet=1 AND Programa=@Programa
   ORDER BY CED.CEPlan

   
    DECLARE crAsistenteCursoCCPMVerificar CURSOR FOR  
     SELECT ID,Programa,CEPlan,Materia,Grupo,CDIEvaluacionProfesor,CDIEvaluacionPsicologica,CDICondicionFisica 
      FROM #Temp

      OPEN crAsistenteCursoCCPMVerificar  
       FETCH NEXT FROM crAsistenteCursoCCPMVerificar 
                  INTO @ID,@CEPrograma,@CEPlan,@Materia,@Grupo,@EvaluacionProfesor,@EvaluacionPsicologica,@CondicionFisica
        WHILE @@FETCH_STATUS = 0 
        BEGIN  
    
         EXEC xpCDICEVerificar @Empresa, @Sucursal, @Cliente,@CEPrograma,@CEPlan,@Materia,@Grupo,@Ok OUTPUT,@OkRef OUTPUT  

         IF @Ok IS NULL
          BEGIN 
           INSERT INTO CDIIportalCursos 
            SELECT @SesionID,CEPlan,Programa,Descripcion,Materia,Grupo,Espacio,Profesor,Horario,Precio,1
              FROM #Temp 
             WHERE ID=@ID
                         
             IF ISNULL(@EvaluacionProfesor, 0) = 1 OR ISNULL(@EvaluacionPsicologica, 0) = 1 OR  ISNULL(@CondicionFisica, 0) = 1 
              UPDATE CDIIportalCursos SET Inscribe=0 WHERE Curso=@CEPlan
          END 
        FETCH NEXT FROM crAsistenteCursoCCPMVerificar 
                   INTO @ID,@CEPrograma,@CEPlan,@Materia,@Grupo,@EvaluacionProfesor,@EvaluacionPsicologica,@CondicionFisica

    END  
  CLOSE crAsistenteCursoCCPMVerificar  
 DEALLOCATE crAsistenteCursoCCPMVerificar  

RETURN  
END  


GO 
IF OBJECT_ID('spWEBConsultaSocios') IS NOT NULL
  DROP PROCEDURE spWEBConsultaSocios
GO 
CREATE PROCEDURE spWEBConsultaSocios 
 @SesionID	uniqueidentifier=NULL,
 @Origen    varchar(255)    =NULL,
 @Pagina    varchar(20)     =NULL
AS BEGIN 
  DECLARE 
  @UsuarioWeb varchar(20),
  @Cliente    varchar(10),
  @Membresia  int

  DELETE CDIIportalCursos WHERE SesionID=@SesionID
  DELETE WebSesionPaginaParam WHERE SesionID=@SesionID
  
  SELECT @UsuarioWeb=UsuarioWeb 
    FROM WebSesion 
   WHERE SesionID=@SesionID
   
  SELECT @Cliente=Cliente 
    FROM WEBUsuario 
  WHERE UsuarioWeb= @UsuarioWeb 
  
  SELECT @Membresia=Membresia
    FROM Cte
   WHERE Cliente= @Cliente 

  SELECT Nombre,Parentesco AS 'Dependencia',Membresia,Socio 
    FROM CDIVistaSociosActivos 
   WHERE Membresia=@Membresia
  RETURN  
END



GO
IF OBJECT_ID('spWEBInsertaLista') IS NOT NULL
  DROP PROCEDURE spWEBInsertaLista
GO
CREATE PROCEDURE spWEBInsertaLista
  @SesionID  uniqueidentifier = null,        
  @Origen    varchar(255)     = null,        
  @Pagina    varchar(20)      = null,
  @Periodo   varchar(20)      = null,
  @Parametro varchar(50)      = null,
  @Curso     varchar(50)      = null,
  @llave     varchar(20)      = null
AS BEGIN     
  
     IF @Parametro='Periodo'
      BEGIN
       SELECT DISTINCT Curso INTO #temp 
         FROM CDIIportalCursos 
        WHERE SesionID=@SesionID AND  Programa=@Periodo 
      
        DELETE WebPaginaParamLista WHERE Pagina=@Pagina  AND SesionID=@SesionID
        INSERT WebPaginaParamLista 
        SELECT @Pagina,'Curso',Curso,Curso,ROW_NUMBER() OVER(Order by curso),@SesionID FROM #temp
      END 
     ELSE IF @Parametro='Curso'
      BEGIN 
       DELETE WebPaginaParamLista WHERE Pagina=@Pagina AND Parametro='Grupo' AND SesionID=@SesionID
       INSERT WebPaginaParamLista 
       SELECT @Pagina,'Grupo',Grupo,Grupo,ROW_NUMBER() OVER(Order by Grupo),@SesionID 
         FROM CDIIportalCursos 
        WHERE SesionID=@SesionID AND Curso=@Curso  AND Programa=@llave
      END

RETURN        
END       


GO
IF OBJECT_ID('spWEBDatosSocio') IS NOT NULL
  DROP PROCEDURE spWEBDatosSocio
GO
CREATE PROCEDURE spWEBDatosSocio  
  @SesionID  uniqueidentifier = null,      
  @Origen    varchar(255)     = null,      
  @Pagina    varchar(20)      = null      
AS BEGIN      
  DECLARE 
  @UsuarioWeb  varchar(20),
  @Cliente     varchar(10),
  @Socio       varchar(10),
  @Nombre      varchar(90),
  @Periodo     varchar(10),
  @Empresa     varchar(10),
  @Ciclo       varchar(20),
  @Sucursal    int,
  @Membresia   int,
  @Inscribe    int,
  @Descripcion varchar(90),
  @Materia     varchar(50),
  @Espacio     varchar(20),
  @Horario     varchar(50),
  @Precio      varchar(20),
  @Profesor    varchar(90),
  @Mensaje     varchar(100),
  @Grupo       varchar(20),
  @Curso       varchar(50)
  
  
  SELECT @Periodo=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Periodo')
  SELECT @Curso=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Curso')
  SELECT @Grupo=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Grupo')

  SELECT @UsuarioWeb=UsuarioWeb 
    FROM WebSesion 
   WHERE SesionID=@SesionID
   
  SELECT @Empresa=Empresa,@Sucursal=Sucursal
    FROM WEBUsuario 
  WHERE UsuarioWeb= @UsuarioWeb 
  
  SELECT @Membresia=Membresia,@Socio=Socio,@Nombre=Nombre,@Cliente=Cliente 
    FROM CDIVistaSociosActivos
   WHERE Socio= @Origen 
   
  SELECT @Ciclo=Ciclo
    FROM CEPrograma 
   WHERE Programa=@Periodo

   EXEC spAsistenteCursoVerificarWEB @SesionID,@Periodo,@Cliente,@Empresa,@Sucursal
  
 
  SELECT @Descripcion=Descripcion,@Materia=Materia,@Espacio=Espacio,@Horario=Horario,@Precio=Precio,@Profesor=Nombre,@Inscribe=Inscribe,
         @Mensaje=CASE WHEN Inscribe=0 THEN 'ES NECESARIO ACUDIR AL DEPORTIVO PARA LA INSCRIPCIÓN DE ESTE CURSO' ELSE  'AGRADECEMOS SU INTERES POR EL CURSO' END
    FROM CDIIportalCursos JOIN Profesor ON CDIIportalCursos.Profesor=Profesor.Profesor
   WHERE SesionID=@SesionID AND Curso=@Curso AND Programa=@Periodo AND Grupo=@Grupo  


  
   IF(SELECT COUNT(0) FROM CDIIportalCursos) =0 
      SELECT @Mensaje=CASE @Curso WHEN '' THEN 'NINGUN CURSO DISPLONIBLE' END 

  SELECT 'Nombre'=@Nombre ,'Socio'=@Socio,'Membresia'=@Membresia,'Grupo'=@Periodo,
         'Ciclo'=UPPER(@Ciclo),'Maestro'=@Profesor,'Descripcion'=@Descripcion,
         'Materia'=@Materia,'Lugar'=@Espacio,'Horario'=@Horario,'Precio'=@Precio,'Mensaje'=@Mensaje,'Inscribe'=@Inscribe
  RETURN      
END   



GO
IF OBJECT_ID('spWEBRefrescaCampos') IS NOT NULL
  DROP PROCEDURE spWEBRefrescaCampos
GO
CREATE PROCEDURE spWEBRefrescaCampos          
  @SesionID  uniqueidentifier = null,          
  @Origen    varchar(255)     = null,          
  @Pagina    varchar(20)      = null          
AS BEGIN          
 DECLARE
  @ValorLlave    varchar(20),
  @ValorCampo    varchar(20),
  @NombreCampo   varchar(90),
  @UsuarioWeb    varchar(20),
  @Curso         varchar(20),
  @Socio         varchar(10),
  @Nombre        varchar(90),
  @Periodo       varchar(10),
  @Empresa       varchar(10),
  @Ciclo         varchar(20)


    
 EXEC spExtraerDato @Origen OUTPUT, @ValorLlave  OUTPUT,'|', 1      
 EXEC spExtraerDato @Origen OUTPUT, @ValorCampo  OUTPUT,'|', 1      
 EXEC spExtraerDato @Origen OUTPUT, @NombreCampo OUTPUT,'|', 1      
 
 
 IF @NombreCampo='Periodo'
  BEGIN
	 SELECT @Ciclo=Ciclo
	   FROM CEPrograma 
	  WHERE Programa=@ValorCampo
	 
	  EXEC spWEBInsertaLista  @SesionID,NULL,@Pagina,@ValorCampo,@NombreCampo
	  
	  SELECT  'Ciclo'=UPPER(@Ciclo),'Periodo'=@ValorCampo
  END 

 ELSE IF @NombreCampo='Curso'
  BEGIN
    EXEC spWEBInsertaLista  @SesionID,NULL,@Pagina,@ValorCampo,@NombreCampo,@ValorCampo,@ValorLlave
    SELECT  'Periodo'=@ValorLlave,'Curso'=@ValorCampo
  END 
    
 ELSE IF @NombreCampo='Grupo'
  BEGIN
    SELECT @Curso=Curso 
      FROM CDIIportalCursos 
     WHERE SesionID=@SesionID AND Programa=@ValorLlave AND Grupo=@ValorCampo
     
    SELECT  'Periodo'=@ValorLlave,'Curso'=@Curso,'Grupo'=@ValorCampo
 END 
 RETURN          
END 


GO 
IF OBJECT_ID('spWEBInscripcionSocios') IS NOT NULL
  DROP PROCEDURE spWEBInscripcionSocios
GO 
CREATE PROCEDURE spWEBInscripcionSocios 
 @SesionID	uniqueidentifier=NULL,
 @Origen    varchar(255)    =NULL,
 @Pagina    varchar(20)     =NULL
AS BEGIN 
  DECLARE 
  @UsuarioWeb varchar(20),
  @Cliente    varchar(10),
  @Empresa    varchar(10),
  @Usuario    varchar(10),
  @Sucursal   int,
  @Membresia  int

  SELECT @UsuarioWeb=UsuarioWeb 
    FROM WebSesion 
   WHERE SesionID=@SesionID
   
  SELECT @Cliente=Cliente,@Empresa=Empresa,@Sucursal=Sucursal,@Usuario=Usuario 
    FROM WEBUsuario 
  WHERE UsuarioWeb= @UsuarioWeb 
  
  SELECT @Membresia=Membresia
    FROM Cte
   WHERE Cliente= @Cliente 
  
  DELETE WebPaginaParamLista WHERE SesionID=@SesionID 
   
  EXEC xpWEBCursoCDI @SesionID,@Origen,@Pagina,@Empresa,@Sucursal,@Usuario
   
  RETURN  
END


GO
IF OBJECT_ID('xpWEBCursoCDI') IS NOT NULL
  DROP PROCEDURE xpWEBCursoCDI
GO 
CREATE PROCEDURE  xpWEBCursoCDI   
        @SesionID  uniqueidentifier=NULL,
        @Origen    varchar(255)    =NULL,
        @Pagina    varchar(20)     =NULL,
		@Empresa   char(5),
		@Sucursal  int,
		@Usuario   char(10)

AS
BEGIN
  DECLARE
	@FechaEmision   datetime,
	@CEPrograma	    varchar(10),
	@CEPlan		    varchar(10),
	@Cliente        varchar(15),
	@Cliente2       varchar(15),
	@Socio          varchar(15),
    @Condicion		varchar(50),
	@Inscripcion    money,
	@Porc			float,
	@Porc2			float,
	@ID			    int,
	@Proyecto		varchar(50),
	@CentroCostos   varchar(20),
	@CreditoDirecto bit,
	@Materia	    char(20),
	@Grupo		    char(10),
	@Profesor	    char(10),
	@Horario	    varchar(30),
	@Espacio	    char(10),
	@Precio		    float,
	@Concepto       varchar(50),
	@Ok             int,
	@OkRef          varchar(255)


  SELECT @FechaEmision=CONVERT(datetime,CONVERT(Date,GETDATE())) 
  SELECT @CEPlan=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Curso')
  SELECT @Grupo=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Grupo')
  SELECT @Horario=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Horario')
  SELECT @Espacio=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Lugar')
  SELECT @Profesor=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Maestro')
  SELECT @CEPrograma=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Periodo')
  SELECT @Precio=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Precio')
  SELECT @Socio=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Socio')
  SELECT @Materia=dbo.fnWebPaginaParamValor(@SesionID,@Pagina,'Materia')
  
  SELECT @Cliente=Cliente FROM Cte WHERE Socio=@Socio

  IF(SELECT Inscribe FROM CDIIportalCursos WHERE SesionID=@SesionID AND Curso=@CEPlan AND Programa=@CEPrograma AND Grupo=@Grupo) = 0  
    BEGIN
      SELECT '<script>alert("Es necesario acudir al deportivo para la inscripción de este curso")</script>'
      RETURN
    END

  SELECT @Concepto=CDIConcepto,@Proyecto=CDIComite,@CentroCostos=CDICentroCostos 
    FROM CEPlan 
   WHERE CEPlan=@CEPlan

  SELECT @Condicion=Condicion,
	     @Cliente2=NULLIF(RTRIM(CECliente),''),@Porc2=ISNULL(CEClientePorcentaje, 0) 
    FROM Cte 
   WHERE Cliente=@Cliente

  SELECT @Inscripcion=NULLIF(Inscripcion,0) FROM CEPlan WHERE CEPlan=@CEPlan

  SELECT @Porc=100-@Porc2

  INSERT INTO CE(Empresa,Mov,FechaEmision,Moneda,TipoCambio,Usuario,Estatus,Programa,CEPlan,Condicion,Descuento,DescuentoGlobal,Inscripcion,Cliente,
                 Cliente2,Porcentaje,Porcentaje2,Proyecto,Concepto,CDICentroCostos)
          SELECT @Empresa,'PreRegistro',@FechaEmision,'Pesos',1,@Usuario,'SINAFECTAR',@CEPrograma,@CEPlan,@Condicion,NULL,NULL,@Inscripcion,@Cliente,
                 @Cliente2,@Porc,@Porc2,@Proyecto,@Concepto,@CentroCostos

   SELECT @ID=@@IDENTITY

   EXEC spWEBAsignaMateria  @Empresa, @Sucursal, @ID, @CEPrograma, @CEPlan,@Materia,@Grupo,@Profesor,@Horario,@Espacio,@Precio,@EnSilencio = 1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
      

   IF @Ok IS NULL
     BEGIN 
      EXEC spAfectar 'CE', @ID, 'AFECTAR', 'Todo', @EnSilencio = 1, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT
      IF @Ok IS NULL
        SELECT '<center> <font color="#FF0000" size="+2"><b>Se Genero el Movimiento Pre Registro con el Folio  ' + MovID +'</b></font></center><BR><BR>'FROM CE WHERE ID=@ID  
      END
    ELSE
     BEGIN
    	 DELETE CED WHERE ID = @ID
         DELETE CE  WHERE ID = @ID
         SELECT '<center> <font color="#FF0000" size="+2"><b>'+@OkRef+'</b></font></center><BR><BR>'
     END

 RETURN
END



GO
IF OBJECT_ID('spWEBAsignaMateria') IS NOT NULL
  DROP PROCEDURE spWEBAsignaMateria
GO 
CREATE PROCEDURE spWEBAsignaMateria
	@Empresa	  char(5),
	@Sucursal	  int,
	@ID			  int,
	@Programa	  char(10),
	@Plan		  char(10),
    @Materia	  char(10),
	@Grupo		  char(10),
	@Profesor	  char(10),
	@Horario	  varchar(30),
	@Espacio	  char(10),
	@Precio		  float,
	@EnSilencio	  bit = 0,
	@Ok           int = NULL OUTPUT,
	@OkRef        varchar(255) = NULL OUTPUT

AS
BEGIN
	DECLARE
	@Cliente      char(10),
	@TipoCte	  char(15),
	@RamaCte	  char(10),
	@Contacto	  char(10),
	@ContactoTipo char(15),
	@Renglon	  float,
	@ListaPrecios varchar(20),
	@Moneda       char(10),
	@Disponible	  int,
	@Directo	  bit,
    @Descuento	  varchar(30),
	@DescGlobal	  money,
	@Mensaje      varchar(255)


	SELECT @Directo=CreditoDirecto FROM CEPlan WHERE CEPlan = @Plan
	SELECT @Cliente=Cliente,@Moneda=Moneda FROM CE WHERE ID = @ID


	IF @Cliente IS NOT NULL
	  SELECT @TipoCte = ISNULL(Tipo,''), @RamaCte = ISNULL(Rama,''),@Descuento=Descuento
	    FROM Cte WHERE Cliente=@Cliente
	    
    IF @Descuento IS NOT NULL
      SELECT @DescGlobal=d.Porcentaje FROM Descuento d WHERE d.Descuento = @Descuento

    SELECT @Contacto = @Cliente, @ContactoTipo = 'Cliente'

	SELECT @Disponible=ISNULL(Disponible,0) 
	  FROM CEProgramaD
	 WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan = @Plan AND Grupo = @Grupo AND Materia IS NOT NULL


	IF @Directo = 0
	BEGIN 
		IF EXISTS(SELECT c.Dependencia, a.Materia
		            FROM CEPlanD d JOIN CEMateriaDependencia c ON d.CEPlan = c.CEPlan AND d.Materia = c.Materia AND d.CEPlan = @Plan AND d.Materia = @Materia
		                LEFT OUTER JOIN CEAlumnoHist a ON d.CEPlan = a.CEPlan AND c.Dependencia = a.Materia AND a.Empresa = @Empresa AND a.Alumno = @Contacto AND a.AlumnoTipo = @ContactoTipo AND a.Estatus = 'APROBADO'
	 	          GROUP BY c.Dependencia, a.Materia
		          HAVING a.Materia is null)
	     SELECT @Ok = 10060, @OkRef = 'No puede Asignar el Curso. Hay dependencias que no ha aprobado.'
    END

	IF @Directo = 0 AND Exists(SELECT * FROM CEAlumnoHist WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION') AND ISNULL(Materia,'') = ISNULL(@Materia,''))
	  SELECT @Ok = 10060, @OkRef = 'El Curso ya fue Aprobado o Asignado en el Programa Actual.'

	IF @Directo = 1 AND Exists(SELECT * FROM CEAlumnoHist WHERE Empresa = @Empresa AND Alumno = @Contacto AND AlumnoTipo = @ContactoTipo AND CEPlan = @Plan AND Estatus in ('APROBADO', 'ALTA', 'REVISION'))
	  SELECT @Ok = 10060, @OkRef = 'El Plan de Estudios ya fue Aprobado o Asignado en el Programa Actual.'

	IF @Directo = 0 AND Exists(SELECT * FROM CED WHERE ID = @ID AND Materia = @Materia)
      SELECT @Ok = 10060, @OkRef = 'El Curso ya esta Asignada al Movimiento'


    IF @Ok IS NULL
    BEGIN
	  BEGIN TRAN
       SELECT @Renglon = Max(Renglon) FROM CED WHERE ID = @ID
	   SELECT @Renglon = ISNULL(@Renglon,0) + 2048
	
		IF @Directo = 1
           SELECT @Precio = Precio FROM CEPlan WHERE CEPlan = @Plan
        ELSE
		  BEGIN
		    SELECT @Precio = Precio FROM CEPlanD WHERE CEPlan = @Plan AND Materia = @Materia
		    IF ISNULL(@Precio,0) = 0
		      SELECT @Precio = Precio FROM CEMateria WHERE Materia = @Materia
		  END
	
		INSERT INTO CED(ID, Renglon, CEPlan, Materia, Grupo, Espacio, Profesor, Horario, Sucursal, Precio, Reservado, DescuentoLineal)
			SELECT @ID, @Renglon, @Plan, @Materia, @Grupo, @Espacio, @Profesor, @Horario, @Sucursal, @Precio, 1, @DescGlobal
	
		UPDATE CEProgramaD SET Reservado = ISNULL(Reservado,0) + 1, Disponible = ISNULL(Disponible,0) - 1
		  WHERE Empresa = @Empresa AND Sucursal = @Sucursal AND Programa = @Programa AND CEPlan=@Plan  AND Grupo=@Grupo AND Materia IS NOT NULL
      COMMIT TRAN
    END


   IF @EnSilencio = 0
    BEGIN
  	IF @Ok IS NULL
	 SELECT 'Curso Reservado'
		ELSE
		BEGIN
			SELECT @Mensaje = ml.Descripcion FROM MensajeLista ml WHERE ml.Mensaje = @Ok
			SELECT @Mensaje = RTRIM(ISNULL(@Mensaje, '')) + ' ' + RTRIM(@OkRef)
			SELECT @Mensaje
		END
     END
  RETURN
END



GO
IF OBJECT_ID('spWebPaginaParamAyuda') IS NOT NULL
  DROP PROCEDURE spWebPaginaParamAyuda
GO
CREATE PROCEDURE spWebPaginaParamAyuda
			@SesionID	uniqueidentifier,
			@Pagina		varchar(20),
			@Parametro	varchar(50),
            @Mensaje	varchar(255)	= NULL OUTPUT,
			@ValorRegistro	VARCHAR(255) = ''
  WITH ENCRYPTION
AS BEGIN
  DECLARE
    @TipoAyuda		 varchar(20),
    @AyudaTabla		 varchar(100),
    @AyudaValor		 varchar(100),
    @AyudaNombre	 varchar(100),
    @AyudaCondicion	 varchar(255),
    @AyudaOrden		 varchar(255),
    @SQL		     varchar(4000),
 	@CampoTabla		 varchar(200),
 	@NombreVariable  varchar(200),
 	@NombreVariable2 varchar(200)
    
  
  SELECT @Mensaje = NULL

  SELECT @TipoAyuda = UPPER(TipoAyuda), @AyudaTabla = AyudaTabla, @AyudaValor = NULLIF(RTRIM(AyudaValor), ''), @AyudaNombre = NULLIF(RTRIM(AyudaNombre), ''), @AyudaCondicion = NULLIF(RTRIM(AyudaCondicion), ''), @AyudaOrden = NULLIF(RTRIM(AyudaOrden), '')
    FROM WebPaginaParam
   WHERE Pagina = @Pagina AND Parametro = @Parametro

 IF @TipoAyuda = 'Lista'
  BEGIN
    IF(SELECT COUNT(0) FROM WebPaginaParamLista WHERE SesionID=@SesionID AND Pagina=@Pagina AND Parametro=@Parametro) > 0
      BEGIN
       SELECT Valor, 'Nombre' = ISNULL(NULLIF(RTRIM(Nombre), ''), Valor)
         FROM WebPaginaParamLista
        WHERE Pagina = @Pagina AND Parametro = @Parametro AND SesionID=@SesionID
      ORDER BY Orden, Nombre, Valor
    END 
   ELSE
    BEGIN
    SELECT Valor, 'Nombre' = ISNULL(NULLIF(RTRIM(Nombre), ''), Valor)
      FROM WebPaginaParamLista
     WHERE Pagina = @Pagina AND Parametro = @Parametro
     ORDER BY Orden, Nombre, Valor
    END
   END
  
  ELSE
  IF @TipoAyuda = 'Tabla'
  BEGIN
    SELECT @SQL = 'SELECT '+ISNULL(@AyudaValor, @AyudaNombre)+' AS Valor, '+ISNULL(@AyudaNombre, @AyudaValor)+' AS Nombre FROM '+@AyudaTabla
    IF @AyudaCondicion IS NOT NULL SELECT @SQL = @SQL +' WHERE '+@AyudaCondicion
    IF @AyudaOrden IS NOT NULL SELECT @SQL = @SQL +' ORDER BY '+@AyudaOrden
    EXEC (@SQL)
  END
  ELSE
	IF @TipoAyuda = 'ListaDinamica'
  BEGIN
	   SELECT @CampoTabla = @AyudaCondicion
	   EXEC spExtraerDato @CampoTabla OUTPUT, @NombreVariable OUTPUT, '=', 1
		  SELECT @NombreVariable2 = @CampoTabla

  		 SELECT @NombreVariable2 = @NombreVariable
  		   EXEC spExtraerDato @NombreVariable OUTPUT, @NombreVariable2 OUTPUT, '@', 1
	      
		SELECT @SQL = 'SELECT '+ISNULL(@AyudaValor, @AyudaNombre)+' AS Valor, '+ISNULL(@AyudaNombre, @AyudaValor)+' AS Nombre FROM '+@AyudaTabla
		IF @AyudaCondicion IS NOT NULL SELECT @SQL = @SQL +' WHERE '+@CampoTabla+'='''+@ValorRegistro+''''
		IF @AyudaOrden IS NOT NULL SELECT @SQL = @SQL +' ORDER BY '+@AyudaOrden
		EXEC (@SQL)
  END	
  RETURN
END
GO





