if exists (select * from sysobjects where id = object_id('dbo.tgCDISocioValidaSocioDuplicado') and sysstat & 0xf = 8) drop trigger dbo.tgCDISocioValidaSocioDuplicado
GO
CREATE TRIGGER tgCDISocioValidaSocioDuplicado ON Cte

--WITH ENCRYPTION
FOR INSERT, UPDATE
AS 
BEGIN
  DECLARE
  	@NipCDI     varchar(30),
  	@Socio   varchar(10),
  	@Cliente	VARCHAR (10),
    @Bandera    int
    	
    SELECT @Bandera = 0 -- C O R R E C T O
  	SELECT  @Socio = Socio, @Cliente= Cliente 
  	  FROM INSERTED 
  	
	IF EXISTS (SELECT * FROM Cte  c WHERE c.Socio = @Socio AND c.CDISocio=1 AND c.Cliente <>@Cliente) AND ISNULL(@Socio,'') <> ''
	BEGIN
	  RAISERROR ('Ya existe un Socio con este Numero', 16,-1)
	  SELECT @Bandera = 1 -- I N C O R R E C T O 
    END  
  END 
  
  
  GO