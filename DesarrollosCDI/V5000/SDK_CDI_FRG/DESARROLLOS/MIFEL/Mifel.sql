
SELECT * FROM CDIRegistroMifelD

    
CREATE PROCEDURE CDIMifel @Id INT ,@Usuario VARCHAR(20) , @IDMifel  INT  
AS     
BEGIN    
  
DECLARE @TOTAL INT , @SUMAP FLOAT, @SUMAD FLOAT  ,@MovId INT ,@Mov VARCHAR (20),@Observaciones VARCHAR (100),@Concepto VARCHAR (30),@IdMov INT ,@CUENTA VARCHAR(20),  
@Improte MONEY,@Nombre VARCHAR (100),@Personal VARCHAR (15),@TotalEmpleado INT,@Suma FLOAT  
  
    
  SELECT @Mov=Mov,@MovId=MovId ,@Observaciones=Observaciones,@Concepto=Concepto FROM NOMINA WHERE ID=@ID  
    
   
    
  UPDATE CDIRegistroMifel SET Movimiento= @Mov,MovId=@MovId,Nomina=@Concepto,Observaciones=@Observaciones,Usuario=@Usuario,IdNomina=@id ,Estatus='SINAFECTAR'  
    WHERE ID=@IDMifel  
    
    
    
  INSERT INTO CDIRegistroMifelD(ID,CUENTA,IMPORTE,CONCEPTO,NOMBRE,PERSONAL)  
  
   select @IDMifel,PersonalCuenta,Percepcion-Deduccion,'PAGO DE NOMINA',Nombre,Personal from    
(    
select Personal.Personal,Personal.PersonalCuenta,IMPORTE , Personal.Nombre+' '+Personal.ApellidoPaterno+' '+Personal.ApellidoMaterno Nombre,Movimiento    
 FROM Nomina     
JOIN NominaD ON NominaD.ID=Nomina.ID    
JOIN Personal ON NominaD.Personal=Personal.Personal    
 WHERE Personal.FormaPago = 'TRANSFERENCIA Nomina' AND    
Nomina.ID=@ID    
and Movimiento in ('Deduccion','Percepcion'))  T1    
PIVOT(    
sum(IMPORTE)    
FOR Movimiento IN (Deduccion,Percepcion)    
) AS T2    
END    




SET DATEFIRST 7        
SET ANSI_NULLS OFF        
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED        
SET LOCK_TIMEOUT -1        
SET QUOTED_IDENTIFIER OFF  
GO 
  
ALTER PROCEDURE CDIMifelTXT   @ID INT  
AS      
BEGIN      
      
      
DECLARE @FileName  VARCHAR(800),@consulta VARCHAR(MAX),@Tipo VARCHAR(30)='Socio',@Titulo VARCHAR(20),      
@Directorio VARCHAR(50)='\\10.10.10.212\shared\PruebasMifel'     
,@RutaArchivo VARCHAR(100),@ComandoArchivo VARCHAR(500),@DB VARCHAR(30),@Existe INT, @BorraArch      VARCHAR(300)      ,@hoy datetime =GETDATE()    
,@concecu INT  
   
      
SET @DB = DB_NAME()   
       
SELECT @FileName=CONVERT (VARCHAR(2),@ID)+'FormatoMifel'+convert(VARCHAR (15), @hoy,112)+'.TXT'          
         
SET @RutaArchivo = @Directorio + '\' + @FileName                    
                    
SET @ComandoArchivo = 'BCP "EXEC ' + RTRIM(@DB) + '.dbo.CDIMifelNomina '+ CONVERT(VARCHAR(10),@ID)+' " QUERYOUT "' + @RutaArchivo + '"  -c -t, -T -S'+ @@SERVERNAME   
      
      
EXEC Master..Xp_Cmdshell @ComandoArchivo         
  
UPDATE  CDIRegistroMifel SET ESTATUS= 'CONCLUIDO' WHERE ID=@ID  
  
  
      
 EXEC msdb.dbo.sp_send_dbmail                              
       @profile_name = 'CDITestSmtp',                              
       @recipients = 'garciaan@cdi.org.mx',--'lopezv@cdi.org.mx',      
       @copy_recipients = 'caselina@cdi.org.mx',  
       @blind_copy_recipients = 'ramirezf@cdi.org.mx',      
       @body ='Se adjunta archivo generado "Macro Pago de Nomina ',      
       @subject = 'Formato de Nomina MIFEL' ,                              
       @body_format= 'HTML',  
       @file_attachments  = @RutaArchivo  
  
      
END   

