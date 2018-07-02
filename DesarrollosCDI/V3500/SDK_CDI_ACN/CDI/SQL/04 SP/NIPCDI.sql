/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

--EXEC spRegistroSugerirCDI 'Personal', NULL, 'Daniel', 'Soria', 'Gutierrez', '14/10/1981', '1', 'Mexicano'

/********** spRegistroSugerirCDI ************/
IF EXISTS(SELECT * FROM sysobjects  WHERE name = 'spRegistroSugerirCDI' and type = 'P')   DROP PROCEDURE spRegistroSugerirCDI
go
CREATE PROCEDURE spRegistroSugerirCDI
                                   @Cual             varchar(20), 
                                   @Registro         varchar(20), 
                                   @Nombre           varchar(50), 
                                   @Paterno          varchar(50), 
                                   @Materno          varchar(50), 
                                   @Nacimiento       datetime,  
                                   @Cliente          varchar(10),
                                   @Nacionalidad2    varchar(30) 
--//WITH ENCRYPTION
AS BEGIN
  
  DECLARE @A  int, 
          @UnNombre varchar(50),  
          @Palabra varchar(50), 
          @NombreCompleto  varchar(255), 
          @CPaterno        char(1), 
          @CMaterno        char(1), 
          @CNombre         char(1),
          @Nacionalidad     varchar(30)

  SELECT @CPaterno = '',  @CMaterno ='',   @CNombre = ''
  SELECT @Registro         = UPPER(NULLIF(NULLIF(RTRIM(@Registro),  '0'),  ''))
  SELECT @Paterno          = UPPER(NULLIF(NULLIF(RTRIM(@Paterno),   '0'),  ''))
  SELECT @Materno          = UPPER(NULLIF(NULLIF(RTRIM(@Materno),   '0'),  ''))
  SELECT @Nombre           = UPPER(NULLIF(NULLIF(RTRIM(@Nombre),    '0'),  ''))
  SELECT @NombreCompleto = LTRIM(RTRIM(@Nombre + ' ' + @Paterno + ' ' + @Materno))
  EXEC spQuitaPreposicionesArticulos @Paterno OUTPUT
  EXEC spQuitaPreposicionesArticulos @Materno OUTPUT
  EXEC spQuitaPreposicionesArticulos @Nombre  OUTPUT

  IF @Nacimiento > '01-01-1910'
  BEGIN
    IF CHARINDEX(' ', @Nombre) > 0 -- tiene mas de un nombre se aplica regla 6
    BEGIN
      SELECT  @UnNombre = @Nombre
      EXEC SPExtraerDato @UnNombre OUTPUT,  @Palabra OUTPUT,  ' '
      IF @Palabra NOT IN('JOSE',  'MARIA') 
         SELECT @Nombre = @Palabra 
      ELSE  BEGIN
         EXEC SPExtraerDato @UnNombre OUTPUT,  @Palabra OUTPUT,  ' '
         SELECT @Nombre = @Palabra 
      END
    END
    IF LEN(@Paterno) = 0 OR LEN(@Materno) = 0 -- Si tiene solo un apellido aplica la regla 7
      SELECT @Registro = SUBSTRING(@Paterno,  1,  2) +  SUBSTRING(@Materno,  1,  2) +  SUBSTRING(@Nombre,   1,  2) 
                         + RIGHT(LTRIM(RTRIM( YEAR(@Nacimiento))) , 2) +  RIGHT('0' + LTRIM(MONTH(@Nacimiento))  , 2) 
                         + RIGHT('0' + LTRIM(  DAY(@Nacimiento))  , 2)
    ELSE BEGIN
      IF LEN(@Paterno) < 3 -- si tiene una o dos letras el paterno se aplica la regla 4
        SELECT @Registro = SUBSTRING(@Paterno,  1,  1) + SUBSTRING(@Materno,  1,  1) + SUBSTRING(@Nombre,   1,  2)
                           + RIGHT(LTRIM(RTRIM(YEAR(@Nacimiento))) , 2) + RIGHT('0' + LTRIM(MONTH(@Nacimiento)) , 2)
                           + RIGHT('0' + LTRIM(DAY(@Nacimiento)) , 2)
      ELSE
        IF  LEN(ISNULL(@Nombre, '')) > 0  AND LEN(ISNULL(@Registro, '')) < 10 
        BEGIN
          SELECT @A=2
          
          WHILE (SUBSTRING(@Paterno, @A, 1) not in('A', 'E', 'I', 'O', 'U')  AND @A < LEN(ISNULL(@Paterno, ''))+1)   
            SELECT @A=@A+1      
          SELECT @REGISTRO =    SUBSTRING(LTRIM(@Paterno), 1, 1)
                             +  SUBSTRING(LTRIM(@Paterno), @A, 1) 
                             +  SUBSTRING(LTRIM(@Materno), 1, 1) 
                             +  SUBSTRING(LTRIM(@Nombre), 1, 1) 
                             +  RIGHT(LTRIM(RTRIM(YEAR(@Nacimiento))), 2)
                             +  RIGHT('0' + LTRIM(MONTH(@Nacimiento)), 2)
                             +  RIGHT('0' + LTRIM(DAY(@Nacimiento)), 2)
        END
    END 
  END    

  IF EXISTS( SELECT * FROM RFCAnexoIV WHERE Palabra = SUBSTRING(@Registro,  1,  4))
    SELECT @Registro = SUBSTRING(@Registro,  1,  3) + 'X' + SUBSTRING(@Registro, 5,  99) 

  IF @Cual = 'Socio'
  BEGIN 
    SELECT TOP 1 @Nacionalidad = c.Nacionalidad FROM CDINacionalidad c WHERE c.Cliente = @Cliente
    SELECT @Nacionalidad = UPPER(SUBSTRING(@Nacionalidad, 0, 4 ))
  END 
  ELSE   	
    IF @Cual IN ('Personal', 'Proveedor')
    BEGIN
      SELECT @Nacionalidad = @Nacionalidad2
      SELECT @Nacionalidad = UPPER(SUBSTRING(@Nacionalidad, 0, 4 ))    	
    END
  
  IF LEN(@registro) <=10 -- Si ya tenia algo lo dejo como esta
  BEGIN    
    SELECT @Palabra = ''
    SELECT @Registro = LEFT(@Registro, 10)
    EXEC spRFCClaveHomonima @NombreCompleto,  @Palabra OUTPUT    
    SELECT @Registro = @Registro + @Palabra
    EXEC spRFCDigitoVerificador @Registro,  @Palabra OUTPUT    
    SELECT @Registro = @Registro + @Palabra
    SELECT @Registro = @Registro + @Nacionalidad
  END


  SELECT "Registro" = @Registro
  RETURN
END
GO


/********** spNipCDIOk ************/
IF EXISTS (SELECT name FROM sysobjects  WHERE name = 'spNipCDIOk' and type = 'P') DROP PROCEDURE spNipCDIOk
GO
CREATE PROCEDURE spNipCDIOk
                           @Cual        varchar(10),
                           @Registro    varchar(30),
                           @Clave       varchar(10),
            		       @Ok	       	bit 	= 1	OUTPUT  -- 1= esta bien  0= esta mal
--//WITH ENCRYPTION
AS 
BEGIN
  IF @Cual = 'Personal'
    BEGIN
   	  IF EXISTS (SELECT * FROM Personal p  WHERE p.Personal <> @Clave AND p.NIPCDI = @Registro) 
   	    SELECT @Ok = 0   	  
    END
  SELECT "OK" = @Ok
  RETURN 	
END
GO
--Exec spNipCDIOk 'Personal', 'SOGD811014ND2AME', '2'

/********** spCDIMembrecia ************/
IF EXISTS (SELECT name FROM sysobjects  WHERE name = 'spCDIMembrecia' and type = 'P') DROP PROCEDURE spCDIMembrecia
GO
CREATE PROCEDURE spCDIMembrecia  
                           @Estitular   bit  
--//WITH ENCRYPTION  
AS   
BEGIN  
  DECLARE   
    @Consecutivo int    
  IF @Estitular = 1  
  BEGIN  
   SELECT @Consecutivo = c.Consecutivo + 1 FROM Consecutivo c WHERE c.Tipo = 'Membresía'  
   UPDATE Consecutivo SET Consecutivo = @Consecutivo WHERE Tipo = 'Membresía'  
  END      
    SELECT @Consecutivo  
  RETURN    
END
GO  


/********** spCDIEditarNIPCDI ************/
IF EXISTS (SELECT name FROM sysobjects  WHERE name = 'spCDIEditarNIPCDI' and type = 'P') DROP PROCEDURE spCDIEditarNIPCDI
GO
CREATE PROCEDURE spCDIEditarNIPCDI
                           @Clave    varchar(10),  
                           @NIPCDI   varchar(30),
                           @Editar   varchar(10),
                           @PorValor varchar(10),
                           @Tipo     Varchar(20)   
                           
--//WITH ENCRYPTION  
AS   
BEGIN  
  DECLARE 
    @NuevoNIPCDI varchar(30)
    
  SELECT @Editar = ISNULL(@Editar, ''), @PorValor = ISNULL(@PorValor, '')    
  IF @Tipo = 'Personal'
  BEGIN
  	IF isnull(@Editar, '') <> '' 
  	  SELECT @NuevoNIPCDI = replace(@NIPCDI, @Editar, @PorValor)      
  	ELSE 
  	  IF isnull(@Editar, '') = ''   	
  	    SELECT @NuevoNIPCDI = @NIPCDI+@PorValor
    UPDATE Personal SET NIPCDI = @NuevoNIPCDI WHERE Personal = @Clave	  	
   END
  IF @Tipo = 'Prov'
  BEGIN
  	IF isnull(@Editar, '') <> '' 
  	  SELECT @NuevoNIPCDI = replace(@NIPCDI, @Editar, @PorValor)      
  	ELSE 
  	  IF isnull(@Editar, '') = ''   	
  	    SELECT @NuevoNIPCDI = @NIPCDI+@PorValor
    UPDATE Prov SET NIPCDI = @NuevoNIPCDI WHERE Proveedor = @Clave	  	
   END
  IF @Tipo IN ('Cte','Socio')
  BEGIN
  	IF isnull(@Editar, '') <> '' 
  	  SELECT @NuevoNIPCDI = replace(@NIPCDI, @Editar, @PorValor)      
  	ELSE 
  	  IF isnull(@Editar, '') = ''   	
  	    SELECT @NuevoNIPCDI = @NIPCDI+@PorValor
    UPDATE Cte SET NIPCDI = @NuevoNIPCDI WHERE Cliente = @Clave	  	
   END



  RETURN    
END
GO  
--EXEC spCDIEditarNIPCDI 8, 'SOGD811014CQ7MEX', 'XXXXXX', NULL, 'PERSONAL'
--SELECT p.NIPCDI, * FROM Personal p
