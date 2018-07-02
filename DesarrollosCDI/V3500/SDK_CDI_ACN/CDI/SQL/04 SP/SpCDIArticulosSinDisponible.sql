IF EXISTS (select * from sysobjects where id = object_id('dbo.SpCDIArticulosSinDisponible') and type = 'P') DROP PROCEDURE dbo.SpCDIArticulosSinDisponible
GO 
CREATE PROCEDURE SpCDIArticulosSinDisponible

@ID					INT,
@Ok					int          OUTPUT,  
@OkRef				varchar(255) OUTPUT  
   

AS BEGIN

		DECLARE				@Articulo		VARCHAR (20),
							@Almacen		VARCHAR (10),
							@Disponible		FLOAT,
							@Mov			VARCHAR (20)
						
    DECLARE CdiArticulosSinDisponible CURSOR FOR 	
	
			SELECT id.Articulo, i.Almacen FROM Inv i
					LEFT OUTER JOIN InvD id ON id.ID = i.ID
					WHERE i.ID = @ID  
    
    OPEN CdiArticulosSinDisponible
	FETCH NEXT FROM CdiArticulosSinDisponible INTO @Articulo, @Almacen
	WHILE @@FETCH_STATUS <> -1 
	BEGIN 
		SELECT @Disponible=0
		
		SELECT @Disponible=isnull(ad.Disponible,0)  FROM ArtDisponible ad WHERE ad.Articulo =@Articulo AND ad.Almacen=@Almacen
		
		IF @Disponible <=0
		
		SELECT @Ok = 98765, @OkRef = 'El Artículo ' + @Articulo + ' no tiene disponible en el Almacén  ' + @Almacen
    
		FETCH NEXT FROM CdiArticulosSinDisponible INTO @Articulo, @Almacen
	END 
	CLOSE CdiArticulosSinDisponible
	DEALLOCATE CdiArticulosSinDisponible

   END

--EXEC SpCDIArticulosSinDisponible 1831, '',''

GO