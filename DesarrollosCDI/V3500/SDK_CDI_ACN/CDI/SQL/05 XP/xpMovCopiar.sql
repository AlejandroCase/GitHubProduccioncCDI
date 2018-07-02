/********************* xpMovCopiar ***********************/
IF NOT EXISTS(SELECT * FROM sysobjects WHERE TYPE = 'u' AND NAME = 'xpMovCopiar') DROP PROCEDURE xpMovCopiar
GO
CREATE PROCEDURE xpMovCopiar  
        @Sucursal               int,  
        @Modulo                 char(5),  
        @ID                     int,  
        @Usuario                char(10),  
        @FechaTrabajo           datetime,  
        @EnSilencio             bit,  
        @Identico               bit,  
        @Directo                bit,  
        @Sub                    bit,  
        @GenerarID              int,  
        @GenerarMov             char(20),  
        @GenerarMovID           varchar(20),  
        @CopiarArtCostoInv      bit  
AS BEGIN  

  DECLARE
        @CDIDiasPrestamo        INT,
        @CDIFechaVigencia       DATETIME,
        @CDIMembresia           INT,
        @CDISocio               VARCHAR(10), 
        @CDISocioNum            varchar(100)
        
  IF @Modulo = 'INV'
  BEGIN
    SELECT @CDIDiasPrestamo     = CDIDiasPrestamo,
           @CDIFechaVigencia    = CDIFechaVigencia,
           @CDIMembresia        = CDIMembresia,
           @CDISocio            = CDISocio
      FROM Inv i 
     WHERE ID = @ID
     
    UPDATE Inv 
       SET CDIDiasPrestamo      = @CDIDiasPrestamo,
           CDIFechaVigencia     = @CDIFechaVigencia,
           CDIMembresia         = @CDIMembresia,
           CDISocio             = @CDISocio
     WHERE ID = @GenerarID
    
  END
  
  IF @Modulo = 'VTAS'
  BEGIN
    SELECT @CDISocioNum = CDISocio
      FROM Venta
     WHERE ID = @ID
     
    UPDATE Venta SET CDISocio = @CDISocioNum
     WHERE ID = @GenerarID
  END

  IF @Modulo = 'CXC'
  BEGIN
    SELECT @CDISocioNum = CDISocio
      FROM Cxc
     WHERE ID = @ID
     
    UPDATE Cxc SET CDISocio = @CDISocioNum
     WHERE ID = @GenerarID
  END

  RETURN  
END  
GO