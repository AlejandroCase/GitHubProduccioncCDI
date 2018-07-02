SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
SET IMPLICIT_TRANSACTIONS OFF
SET ANSI_NULLS ON  
SET QUOTED_IDENTIFIER ON 

GO

-- FN: Funcion que sirve para formatear campos monetarios 
 IF EXISTS (SELECT * FROM Sys.Objects WHERE Name ='fnMonetarioEnTexto' AND Type='FN')
DROP FUNCTION fnMonetarioEnTexto
GO
CREATE FUNCTION dbo.fnMonetarioEnTexto(@Importe		money)
RETURNS char(30)
AS
BEGIN
  DECLARE
  @Signo			varchar(1),
  @Coma				varchar(1),
  @Punto			varchar(1),
  @Largo			int,
  @LargoPunto		int,
  @Cadena			varchar(30),
  @CadenaPunto		varchar(5),
  @CadenaEntero		varchar(30),
  @Negativo			bit,
  @Texto			varchar(30)
  
  SELECT @Negativo = 0
  IF @Importe < 0
    SELECT @Negativo = 1
  SELECT @Importe = ABS(@Importe)
  
  SELECT @Signo = '$', @Coma = ',', @Punto = '.'
  SELECT @Cadena = @Importe
  SELECT @LargoPunto   = CHARINDEX(@Punto, @Cadena, 1)
  SELECT @CadenaPunto  = SUBSTRING(@Cadena, @LargoPunto+1, 30)
  SELECT @CadenaEntero = SUBSTRING(@Cadena, 1, @LargoPunto-1)
  SELECT @CadenaEntero = LTRIM(@CadenaEntero)
  SELECT @Largo = LEN(@CadenaEntero)
  
  WHILE @Largo > 3
  BEGIN
  	SELECT @Cadena = RIGHT(@CadenaEntero, 3)
  	SELECT @Texto = @Coma + LTRIM(@Cadena) + ISNULL(@Texto, '')
  	SELECT @CadenaEntero = SUBSTRING(@CadenaEntero, 1, @Largo - 3)
  	SELECT @Largo = LEN(@CadenaEntero)
  END
  
  IF @Largo > 0
    SELECT @Texto = LTRIM(@CadenaEntero) + ISNULL(@Texto, '')
  
  IF @LargoPunto > 0
    SELECT @Texto = ISNULL(@Texto, '') + @Punto + @CadenaPunto
    
  SELECT @Texto = @Signo + @Texto
  
  IF @Negativo = 1
    SELECT @Texto = '-' + @Texto
  
  RETURN @Texto
END


GO
--sp Carga URL (Sistema Iportal)  
IF OBJECT_ID('spWebPaginaEvento') IS NOT NULL
  DROP PROCEDURE spWebPaginaEvento
GO 
CREATE PROCEDURE spWebPaginaEvento
	@SesionID	uniqueidentifier,
	@Origen		varchar(255),
	@Pagina		varchar(20),
	@Evento		varchar(50),	
	@Mensaje	varchar(255)	= NULL OUTPUT
WITH ENCRYPTION
AS BEGIN
 DECLARE 
 @UsuarioWeb varchar(20),
 @Sesion     varchar(Max),
 @URLPage    varchar(20)
 
 SET @Sesion=@SesionID

 SELECT @UsuarioWeb=UsuarioWeb 
   FROM WebSesion 
  WHERE SesionID=@SesionID
  
  SELECT @URLPage=Pagina 
    FROM WebPagina 
   WHERE CDIControlAcceso=1 AND Tipo='URL'
  
 UPDATE WebPagina 
    SET URL=Icono+'?SesionID='+@Sesion+
                  '&UsuarioWeb='+@UsuarioWeb
  WHERE Pagina=@URLPage
  
  IF @Evento='SALIR PAGINA'
    BEGIN 
      DELETE WebSesionPaginaParam WHERE SesionID=@SesionID 
      DELETE CDIIportalCursos WHERE SesionID=@SesionID
    END 
  
  
SELECT @Mensaje = NULL
RETURN
END


GO
-- Verifica la causa de Bloqueo de Cliente
IF OBJECT_ID('spCDI_WebControlAccesos') IS NOT NULL
  DROP PROCEDURE spCDI_WebControlAccesos
GO 
CREATE PROCEDURE spCDI_WebControlAccesos 
 @Cliente varchar(20),
 @Socio   varchar(20)
AS BEGIN 
 DECLARE 
  @Causa varchar(50)
 ,@Row   varchar(50)
 ,@i     int
 
CREATE TABLE #CDIWebAccesos
 (
  ID        int identity,
  Causa     varchar(20),
  Bloqueado char(2),
  Detalle   AS 'Detalle',
 )

 SELECT @Causa=Descripcion15 
   FROM Cte 
  WHERE CDISocio=1 AND Cliente=@Cliente

 INSERT #CDIWebAccesos VALUES('Admision','No')
 INSERT #CDIWebAccesos VALUES('Cuota','No')
 INSERT #CDIWebAccesos VALUES('Inscripcion','No')
 INSERT #CDIWebAccesos VALUES('Otros Ingresos','No')
 INSERT #CDIWebAccesos VALUES('Credencial','No')
 INSERT #CDIWebAccesos VALUES('Casilleros','No')
 INSERT #CDIWebAccesos VALUES('TarjetasBancarias','No')
 
 SET @i=1 

  WHILE @i <= 7
    BEGIN 
       SELECT @Row=Causa
         FROM #CDIWebAccesos WHERE Causa Like '%'+@Causa+'%' AND ID=@i
         
         IF @@ROWCOUNT > 0
           UPDATE #CDIWebAccesos SET Bloqueado='Si' WHERE ID=@i 
       SET @i+=1
   END 
   SELECT * FROM #CDIWebAccesos
 RETURN 
END


GO

-- Detalle Bloqueo del socio
IF OBJECT_ID('spCDI_WebDetalleControl') IS NOT NULL
  DROP PROCEDURE spCDI_WebDetalleControl
GO 
CREATE PROCEDURE spCDI_WebDetalleControl
	@Causa   varchar(100),
	@Cliente varchar(20),
	@Socio   varchar(20)
AS  
BEGIN  
   
  CREATE TABLE #SalidaDetalle
  (
   Movimiento  varchar (30) NULL,
   Dias        int,  
   Vencimiento DateTime, 
   Saldo       varchar(50),
  )

    
  IF @Causa like '%Admision%'
   BEGIN 
    INSERT INTO #SalidaDetalle  
    SELECT a.Mov+' '+a.MovID,DATEDIFF(DAY,a.Vencimiento,Getdate()),a.vencimiento,dbo.fnMonetarioEnTexto(a.saldo)
      FROM CXC a JOIN Cte b ON a.Cliente=b.Cliente 
                 JOIN CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa 
                 JOIN CDISocAcessoCfgBloqueo d     ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
                 JOIN Movtipo m                    ON a.Mov=m.Mov AND m.Modulo='CXC'  
     WHERE     b.Cliente=ISNULL(@Cliente,b.Cliente) 
           AND m.Clave IN ('CXC.F', 'CXC.D')  
           AND a.Concepto IN ('Cuota Admisión')  
           AND a.Estatus IN ('PENDIENTE')  
           AND DATEDIFF(DAY,a.Vencimiento,Getdate())>(ISNULL(c.AdmisionBloqueado,0)+ISNULL(AdmisionTolerancia,0))  
           AND c.Admision=1  
           AND d.Admision=1  
    END
      
      
   ELSE IF @Causa like '%Cuota%'
    BEGIN
    INSERT INTO #SalidaDetalle  
    SELECT a.Mov+' '+a.MovID,DATEDIFF(DAY,a.Vencimiento,Getdate()),a.vencimiento,dbo.fnMonetarioEnTexto(a.saldo)
      FROM CXC a JOIN Cte b ON a.Cliente=b.Cliente 
                 JOIN CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa 
                 JOIN CDISocAcessoCfgBloqueo d     ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
                 JOIN Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC'  
     WHERE     b.Cliente=ISNULL(@Cliente,b.Cliente) 
           AND m.Clave IN ('CXC.F', 'CXC.D')  
           AND a.Concepto IN ('Cuota Anual','Cuota Mensual')  
           AND a.Estatus IN ('PENDIENTE')  
           AND DATEDIFF(DAY,a.Vencimiento,Getdate())>(ISNULL(c.CuotaBloqueado,0)+ISNULL(CuotaTolerancia,0))  
           AND c.Cuota=1  
           AND d.Cuota=1  
     END
      
   ELSE IF @Causa like '%Inscripcion%'
    BEGIN   
    INSERT INTO #SalidaDetalle  
    SELECT a.Mov+' '+a.MovID,DATEDIFF(DAY,a.Vencimiento,Getdate()),a.vencimiento,dbo.fnMonetarioEnTexto(a.saldo)
      FROM CXC a JOIN Cte b ON a.Cliente=b.Cliente 
                 JOIN CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa 
                 JOIN CDISocAcessoCfgBloqueo d     ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
                 JOIN Movtipo m ON a.Mov=m.Mov AND m.Modulo='CXC'  
     WHERE     b.Cliente=ISNULL(@Cliente,b.Cliente)  
		   AND m.Clave IN ('CXC.F', 'CXC.D')  
		   AND a.Concepto LIKE 'Inscripción%'  
		   AND a.Estatus IN ('PENDIENTE')  
		   AND DATEDIFF(DAY,a.Vencimiento,Getdate())>(ISNULL(c.InscripcionBloqueado,0)+ISNULL(InscripcionTolerancia,0))  
		   AND c.Inscripcion=1  
		   AND d.Inscripcion=1  
    END
           
   ELSE IF @Causa like '%Otros%'
    BEGIN      
    INSERT INTO #SalidaDetalle  
    SELECT a.Mov+' '+a.MovID,DATEDIFF(DAY,a.Vencimiento,Getdate()),a.vencimiento,dbo.fnMonetarioEnTexto(a.saldo)
      FROM CXC a JOIN Cte b ON a.Cliente=b.Cliente 
                 JOIN CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa 
                 JOIN CDISocAcessoCfgBloqueo d     ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
                 JOIN Movtipo m                    ON a.Mov=m.Mov AND m.Modulo='CXC'  
     WHERE     b.Cliente=ISNULL(@Cliente,b.Cliente) 
		   AND m.Clave IN ('CXC.F', 'CXC.D')  
		   AND a.Concepto IN('Concesionarios','Duplicado llaves','Uniformes','Espacios comunicaciones')  
		   AND a.Estatus IN ('PENDIENTE')  
		   AND DATEDIFF(DAY,a.Vencimiento,Getdate())>(ISNULL(c.OtrosIngresosBloqueado,0)+ISNULL(OtrosIngresosTolerancia,0))  
		   AND c.OtrosIngresos=1  
		   AND d.OtrosIngresos=1  
    END       
      
   ELSE IF @Causa like '%Credencial%'
    BEGIN     
    INSERT INTO #SalidaDetalle  
    SELECT a.Mov+' '+a.MovID,DATEDIFF(DAY,a.Vencimiento,Getdate()),a.vencimiento,dbo.fnMonetarioEnTexto(a.saldo)
      FROM CXC a JOIN  Cte b ON a.Cliente=b.Cliente 
                 JOIN CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa 
                 JOIN CDISocAcessoCfgBloqueo d     ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
                 JOIN Movtipo m                    ON a.Mov=m.Mov AND m.Modulo='CXC'  
     WHERE     b.Cliente=ISNULL(@Cliente,b.Cliente)  
           AND m.Clave IN ('CXC.F', 'CXC.D')  
		   AND a.Concepto ='Credenciales'  
		   AND a.Estatus IN ('PENDIENTE')  
		   AND DATEDIFF(DAY,a.Vencimiento,Getdate())>(ISNULL(c.CredencialBloqueado,0)+ISNULL(CredencialTolerancia,0))  
		   AND c.Credencial=1  
		   AND d.Credencial=1  
    END

   ELSE IF @Causa like '%Casilleros%'
    BEGIN 
    INSERT INTO #SalidaDetalle 
    SELECT a.Mov+' '+a.MovID,DATEDIFF(DAY,a.Vencimiento,Getdate()),a.vencimiento,dbo.fnMonetarioEnTexto(a.saldo)
      FROM CXC a JOIN Cte b ON a.Cliente=b.Cliente 
                 JOIN CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa 
                 JOIN CDISocAcessoCfgBloqueo d     ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
                 JOIN Movtipo m                    ON a.Mov=m.Mov AND m.Modulo='CXC'  
      WHERE     b.Cliente=ISNULL(@Cliente,b.Cliente)  
			AND m.Clave IN ('CXC.F', 'CXC.D')  
			AND a.Concepto='Casilleros'  
			AND a.Estatus IN ('PENDIENTE')  
			AND DATEDIFF(DAY,a.Vencimiento,Getdate())>(ISNULL(c.CasillerosBloqueado,0)+ISNULL(CasillerosTolerancia,0))  
			AND c.Casilleros=1  
			AND d.Casilleros=1  
     END

   ELSE IF @Causa like '%Tarjetas%'
    BEGIN 
    INSERT INTO #SalidaDetalle  
    SELECT a.Mov+' '+a.MovID,DATEDIFF(DAY,a.Vencimiento,Getdate()),a.vencimiento,dbo.fnMonetarioEnTexto(a.saldo)
      FROM CXC a JOIN Cte b ON a.Cliente=b.Cliente 
                JOIN CDISocAcessoCfgVencimiento c ON b.Tipo=c.Tipo AND a.Empresa=c.Empresa 
                JOIN CDISocAcessoCfgBloqueo d     ON d.Tipo=c.Tipo AND d.Empresa=c.Empresa 
                JOIN Movtipo m                    ON a.Mov=m.Mov AND m.Modulo='CXC'  
     WHERE    b.Cliente=ISNULL(@Cliente,b.Cliente)    
		  AND m.Clave IN ('CXC.F', 'CXC.D')  
		  AND a.Concepto IN ('Declinada','Rechazada','Llamar al emisor')  
		  AND a.Estatus IN ('PENDIENTE')  
		  AND DATEDIFF(DAY,a.Vencimiento,Getdate())>(ISNULL(c.TarjetasBancariasBloqueado,0)+ISNULL(TarjetasBancariasTolerancia,0))  
		  AND c.TarjetasBancarias=1  
		  AND d.TarjetasBancarias=1  
    END
    
    SELECT * FROM #SalidaDetalle
   RETURN    
 END     


GO

-- Genera Movimiento de Pase
IF OBJECT_ID('spCDIGeneraPaseWEB') IS NOT NULL
  DROP PROCEDURE spCDIGeneraPaseWEB
GO 
CREATE PROCEDURE spCDIGeneraPaseWEB 
	@UsuarioWeb    varchar(10),  
 	@Cliente       varchar(30) 
AS  
BEGIN  
 DECLARE  
  @Empresa    varchar(5),
  @Usuario    varchar(10), 
  @Hoy        datetime,  
  @Sucursal   int,  
  @Moneda     varchar(10),  
  @TipoCambio float,  
  @Proyecto   varchar(50),  
  @IdAfectar  int      
   
    DELETE  MensajePase WHERE Cliente=@Cliente
    
    SELECT @Empresa=Empresa,@Usuario=Usuario FROM WebUsuario WHERE UsuarioWeb=@UsuarioWeb
    SELECT @Moneda = ContMoneda,@Hoy=CONVERT(Datetime,CONVERT(Date,GETDATE()))FROM EmpresaCfg WHERE Empresa = @Empresa  
    SELECT @TipoCambio = TipoCambio FROM Mon WHERE Moneda = @Moneda  
    SELECT @Sucursal=isnull(SucursalEmpresa,0),@Proyecto=Proyecto FROM Cte WHERE Cliente=@Cliente  
    
    SELECT Mov 
      INTO #A
      FROM CDISocio 
     WHERE FechaEmision=@Hoy AND Cliente=@Cliente AND Mov='Pase'

    IF @@ROWCOUNT = 0 
     BEGIN
      INSERT CDISocio(Estatus,Empresa,Mov,FechaEmision,UltimoCambio,Proyecto,Usuario,Observaciones,Sucursal,Moneda,TipoCambio,NIPCDI,Cliente,Membresia,Socio)   
       SELECT 'PENDIENTE',@Empresa,'Pase',@Hoy,GETDATE(),@Proyecto,@Usuario,NULL,@Sucursal,@Moneda,@TipoCambio,NIPCDI,Cliente,Membresia,Socio
         FROM Cte  
        WHERE Cliente=@Cliente
     
       SET @IdAfectar=@@IDENTITY 
       EXEC spAfectar 'SOC', @IdAfectar, 'AFECTAR', 'Todo', NULL,@Usuario  
       
       INSERT MensajePase
       VALUES (@Cliente,'OK','PASE GENERARO')
     END
     ELSE
       INSERT MensajePase VALUES (@Cliente,'ERROR','Ya Exite un pase generado para el dia de Hoy')
  RETURN 
END   
GO



