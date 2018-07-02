/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/********************* xpMovFinal ***************************/
IF EXISTS(SELECT * FROM SysObjects WHERE ID = Object_ID('dbo.xpMovFinal') AND Type = 'P') DROP PROCEDURE dbo.xpMovFinal
GO
CREATE PROCEDURE xpMovFinal  
        @Empresa                char(5),  
        @Sucursal               int,  
        @Modulo                 char(5),  
        @ID                     int,  
        @Estatus                char(15),  
        @EstatusNuevo           char(15),  
        @Usuario                char(10),  
        @FechaEmision           datetime,  
        @FechaRegistro          datetime,  
        @Mov                    char(20),  
        @MovID                  varchar(20),  
        @MovTipo                char(20),  
        @IDGenerar              int,  
        @Ok                     int             OUTPUT,  
        @OkRef                  varchar(255)    OUTPUT  
AS BEGIN    
    DECLARE
    @FlujoAutorizacion      BIT, 
    @EstatusAutorizacion    VARCHAR(15),
    @Proyecto               VARCHAR(50),
    @TablaModulo            VARCHAR(30),
    @Variables              NVARCHAR(MAX),
    @SQL                    NVARCHAR(MAX),
    @CEPlan                 varchar(10),
    @Materia                varchar(10),
    @CDIBecaAplicada        int,
    @IDPreRegistro          int,
    @Correo                 BIT,
    @UsuarioSiguiente       VARCHAR(10),
    @UsuarioMov             VARCHAR(10),
    @UsuarioAutorizar       VARCHAR(10),
    @CDIPermiteEditar       BIT,
    @CDICasilleroID      varchar(10),
    @CDICasillero        varchar(10),
    @CDIPlanoID          varchar(10),
    @Clave               varchar(10),
    --Cambios CFD Flex--
    @MovTipoCFDFlex			bit,
    @CFDFlex				bit,    
    @eDoc					bit,
    @XML					varchar(max),
    @eDocOk					int,
    @eDocOkRef				varchar(255)  

  	    
  SELECT @TablaModulo = dbo.fnMovTabla(@Modulo)
  
  SELECT @Variables = '
  	    @ID             int, 
  	    @Proyecto       varchar(50)     OUTPUT,
  	    @UsuarioMov     VARCHAR(10)     OUTPUT'
  
  SELECT @SQL = 'SELECT @Proyecto = Proyecto, @UsuarioMov = Usuario FROM ' + @TablaModulo + ' WHERE ID = @ID'
  
  EXEC sp_ExecuteSQL @SQL, @Variables, @ID, @Proyecto OUTPUT, @UsuarioMov OUTPUT
  	    
  SELECT @FlujoAutorizacion = mt.FlujoAutorizacion, @EstatusAutorizacion = mt.FlujoAutorizacionEstatus
    FROM MovTipo mt WHERE mt.Modulo = @Modulo AND mt.Mov = @Mov
    
  IF @FlujoAutorizacion = 1 AND @EstatusNuevo = @EstatusAutorizacion AND @Ok IS NULL
  AND EXISTS(SELECT * FROM CDIMovTipoFAProyecto mp WHERE mp.Mov = @Mov AND mp.Modulo = @Modulo AND mp.Proyecto = @Proyecto)
  BEGIN
    IF NOT EXISTS(SELECT * FROM CDIMovFAUsuario WHERE ID = @ID AND Mov = @Mov AND Modulo = @Modulo AND Proyecto = @Proyecto) 
    BEGIN
      INSERT INTO CDIMovFAUsuario
               (ID,     Mov,     Modulo,     Proyecto,     Usuario,     Orden,     Editar,     Correo,     Tarea,     Autorizacion,     Tiempo)
        SELECT @ID, ctf.Mov, ctf.Modulo, ctf.Proyecto, ctf.Usuario, ctf.Orden, ctf.Editar, ctf.Correo, ctf.Tarea, ctf.Autorizacion, ctf.Tiempo
          FROM CDIMovTipoFAUsuario ctf WHERE ctf.Mov = @Mov AND ctf.Modulo = @Modulo AND ctf.Proyecto = @Proyecto
       
      SELECT @UsuarioAutorizar = (SELECT TOP 1 cf.Usuario FROM CDIMovFAUsuario cf WHERE cf.Modulo = @Modulo AND ID = @ID AND Autorizado = 0 ORDER BY cf.Orden)
      SELECT TOP 1 @UsuarioAutorizar = cf.Usuario, @CDIPermiteEditar = ISNULL(cf.Editar, 0) FROM CDIMovFAUsuario cf WHERE cf.Modulo = @Modulo AND ID = @ID AND Autorizado = 0 ORDER BY cf.Orden
       
--      SELECT @SQL = 'UPDATE ' + @TablaModulo + ' SET CDIFlujoAutorizacion = 1 WHERE ID = ' + CONVERT(VARCHAR, @ID)
      
      SELECT @Variables = '
  	        @ID                 int, 
  	        @UsuarioAutorizar   varchar(10),
  	        @CDIPermiteEditar   bit'
  
      SELECT @SQL = 'UPDATE ' + @TablaModulo + ' SET Usuario = @UsuarioAutorizar, CDIFlujoAutorizacion = 1, CDIPermiteEditar = @CDIPermiteEditar WHERE ID = @ID'
  
      EXEC sp_ExecuteSQL @SQL, @Variables, @ID, @UsuarioAutorizar, @CDIPermiteEditar
      
      SELECT TOP 1 @Correo = Correo, @UsuarioSiguiente = Usuario
        FROM  CDIMovFAUsuario WHERE ID = @ID AND Modulo = @Modulo AND Proyecto = @Proyecto ORDER BY Orden
          
  	  IF @Correo = 1
        EXEC spCDIEnviarCorreo @Empresa, @Sucursal, @Modulo, @ID, @UsuarioSiguiente, @Usuario, @Ok OUTPUT, @OkRef OUTPUT
          
    END
    
  END
  
  -- Enrique Toral 12/Oct/2010. Al Cancelar preregistro, quita la aplicación de Beca de Solicitudes Autorizadas
  
  IF @Modulo = 'CE' AND @MovTipo = 'CE.P' AND @EstatusNuevo = 'CANCELADO'
  BEGIN
  	DECLARE crCECancelaBecaAplicada CURSOR FOR
  	SELECT c.CEPlan, c.Materia, c.CDIBecaAplicada
  	  FROM CED c
  	 WHERE c.ID = @ID
  	   AND c.CDIBecaAplicada IS NOT NULL
  	   
  	OPEN crCECancelaBecaAplicada
  	FETCH next FROM crCECancelaBecaAplicada INTO @CEPlan, @Materia, @CDIBecaAplicada
  	WHILE @@FETCH_STATUS = 0
  	BEGIN
  		UPDATE CED SET CDIBecaAplicada = NULL WHERE ID = @CDIBecaAplicada AND CEPlan = @CEPlan AND Materia = @Materia
  		FETCH next FROM crCECancelaBecaAplicada INTO @CEPlan, @Materia, @CDIBecaAplicada
  	END
  	   
  	CLOSE crCECancelaBecaAplicada
  	DEALLOCATE crCECancelaBecaAplicada
  END
  
  -- Enrique Toral 18/Oct/2010. Al Concluir un cobro, concluye el PreRegistro de Control Escolar.
  
  IF @Modulo = 'CXC' AND @MovTipo IN ( 'CXC.C', 'CXC.ANC', 'CXC.NC' , 'CXC.D', 'CXC.FAC') AND @EstatusNuevo = 'CONCLUIDO'
  BEGIN
    --BEGM 20120620. 5791. Conclusion de todos los movimientos de Preregistro
    DECLARE crCEConcluyePreregistro CURSOR FOR
    	SELECT c.ID
        FROM MovFlujo m
        JOIN MovFlujo mf ON m.OID = mf.DID AND mf.OModulo = 'VTAS' AND mf.DModulo = 'CXC' AND mf.Cancelado = 0
        JOIN MovFlujo mf2 ON mf.OID = mf2.DID AND mf2.OModulo = 'VTAS' AND mf2.DModulo = 'VTAS' AND mf2.Cancelado = 0
        JOIN MovFlujo mf3 ON mf2.OID = mf3.DID AND mf3.OModulo = 'CE' AND mf3.DModulo = 'VTAS' AND mf3.Cancelado = 0
        JOIN CE c ON mf3.OID = c.ID
        WHERE m.DID = @ID AND m.DModulo = 'CXC' AND m.OModulo = 'CXC' AND m.Cancelado = 0
          AND c.Estatus = 'PENDIENTE'

    OPEN crCEConcluyePreregistro
    FETCH NEXT FROM crCEConcluyePreregistro INTO @IDPreRegistro
    WHILE @@FETCH_STATUS = 0
    BEGIN
      EXEC spAfectar 'CE', @IDPreRegistro, 'AFECTAR', NULL, NULL, @Usuario, 0, 1, @Ok OUTPUT, @OkRef OUTPUT
      FETCH NEXT FROM crCEConcluyePreregistro INTO @IDPreRegistro
    END
    CLOSE crCEConcluyePreregistro
    DEALLOCATE crCEConcluyePreregistro
  END
  
  -- Gustavo Mendez 25/Nov/2010. Aplicacion de Casilleros
  
  IF @Modulo='VTAS' AND @MovTipo = 'VTAS.F' AND @EstatusNuevo='CONCLUIDO'  
     BEGIN  

   		  SELECT  @CDICasilleroID=c.CDICasilleroID,
				  @CDICasillero=c.CDICasillero,
				  @CDIPlanoID =c.CDIPlanoID 
			FROM Venta a JOIN Venta  b ON a.Origen=b.Mov AND a.OrigenID=b.MovID
						 JOIN VentaD c ON b.ID=c.ID 
		   WHERE a.ID=@ID AND b.CDIvisible=1
	            
		   UPDATE VentaD 
		      SET CDICasilleroID=@CDICasilleroID,
		          CDICasillero=@CDICasillero,
		          CDIPlanoID=@CDIPlanoID 
			WHERE ID=@ID   
		  
		   IF @CDICasilleroID IS NOT NULL
			  UPDATE Venta SET CDIvisible=1 WHERE ID=@ID	
        END  
      
      
     IF @Modulo='CXC' AND @MovTipo = 'CXC.F' AND @EstatusNuevo IN ('PENDIENTE','CONCLUIDO')  
     BEGIN  

	      SELECT @CDICasilleroID=vd.CDICasilleroID,
		         @CDICasillero=vd.CDICasillero,
		         @CDIPlanoID=vd.CDIPlanoID
		   FROM Cxc  c JOIN Venta  v   ON c.Origen=v.Mov  AND c.OrigenID=v.MovID
		               JOIN Venta  v2  ON v.Origen=v2.Mov AND v.OrigenID=v2.MovID 
            LEFT OUTER JOIN VentaD vd  ON v2.ID=vd.ID
		 WHERE c.ID=@ID AND v2.CDIvisible=1       
	            
           UPDATE Cxc 
		      SET CDICasilleroID=@CDICasilleroID,
		          CDICasillero=@CDICasillero,
		          CDIPlanoID=@CDIPlanoID 
			WHERE ID=@ID   

	       UPDATE CDICasilleros SET VentaID=@ID  
	        WHERE PlanoID=@CDIPlanoID AND ID=@CDICasilleroID	
      END  
      
      --Cambios CFD Flex--
SELECT 
    @CFDFlex = ISNULL(CFDFlex,0), 
    @eDoc = ISNULL(eDoc,0) 
    FROM EmpresaGral 
   WHERE Empresa = @Empresa

  SELECT 
    @MovTipoCFDFlex = ISNULL(CFDFlex,0) 
    FROM MovTipo 
   WHERE Mov = @Mov
     AND Modulo = @Modulo 

  IF (@Ok IS NULL OR @Ok BETWEEN 80030 AND 81000) AND @eDoc = 1 AND @MovTipoCFDFlex = 0 --MEJORA2104
  BEGIN
    SELECT @eDocOk = NULL, @eDocOkRef = NULL
    EXEC speDocXML @@SPID, @Empresa, @Modulo, @Mov, @ID, NULL, @EstatusNuevo, 1, 0, @XML OUTPUT, @eDocOk OUTPUT, @eDocOkRef OUTPUT
    IF @eDocOk IS NOT NULL SELECT @Ok = @eDocOk, @OkRef = @eDocOkRef
  END    

  IF (@MovTipoCFDFlex = 1) AND (@CFDFlex = 1) AND (@eDoc = 1) AND (@Ok IS NULL OR @Ok BETWEEN 80030 AND 81000) --MEJORA2104
  BEGIN
    SELECT @eDocOk = NULL, @eDocOkRef = NULL  
    EXEC spCFDFlex @@SPID, @Empresa, @Modulo, @ID, @EstatusNuevo, @eDocOk OUTPUT, @eDocOkRef OUTPUT  
    IF @eDocOk IS NOT NULL SELECT @Ok = @eDocOk, @OkRef = @eDocOkRef
  END

  IF (@MovTipoCFDFlex = 1) AND (@CFDFlex = 1) AND (@eDoc = 1) AND (@Ok IS NULL OR @Ok BETWEEN 80030 AND 81000) --MEJORA2104
  BEGIN
    SELECT @eDocOk = NULL, @eDocOkRef = NULL  
    EXEC spCFDFlexCancelar @@SPID, @Empresa, @Modulo, @ID, @EstatusNuevo, @eDocOk OUTPUT, @eDocOkRef OUTPUT  
    IF @eDocOk IS NOT NULL SELECT @Ok = @eDocOk, @OkRef = @eDocOkRef
  END
----Termina Cambios CFD Flex
      
--- DSG
    IF @Modulo = 'COMS' AND @MovTipo = 'COMS.O' AND @EstatusNuevo = 'CANCELADO'
    BEGIN
      EXEC spCDICancelarMovCP @ID, 'COMS', @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT  
    END
    ELSE
    IF @Modulo = 'COMS' AND @MovTipo IN('COMS.D', 'COMS.B') AND @EstatusNuevo = 'CONCLUIDO' 
    BEGIN
      EXEC spCDIBonificacionCP @ID, 'COMS', @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT  
    END
    
    IF @Modulo = 'GAS' AND @MovTipo = 'GAS.S' AND @EstatusNuevo = 'CANCELADO'
    BEGIN
      EXEC spCDICancelarMovCP @ID, 'GAS', @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT  
    END
    ELSE
    IF @Modulo = 'GAS' AND @MovTipo = 'GAS.DG' AND @EstatusNuevo = 'CONCLUIDO' 
    BEGIN
      EXEC spCDIBonificacionCP @ID, 'GAS', @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT  
    END
--DSG    
  
  RETURN  
END  
GO