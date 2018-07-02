SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF



 --EXEC SpCDIArticulosMarbete '','','',''
 
   
 
/**************** SpCDIArticulosMarbete ****************/
if exists (select * from sysobjects where id = object_id('dbo.SpCDIArticulosMarbete') and type = 'P') drop procedure dbo.SpCDIArticulosMarbete
GO
CREATE PROCEDURE SpCDIArticulosMarbete  
  
@Categoria		varchar (50),  
@Almacen		char (10)  ,
@ArticuloD		VARCHAR(20),
@ArticuloA		VARCHAR(20)
     
AS BEGIN  
  
  DECLARE       
    @Articulo   varchar (20),  
    @Descripcion1  varchar (100),  
    @Categoria2  varchar (50),   
    @Unidad   varchar (50),  
    @Inventario  float  ,  
    @FolioM   INT    ,  
    @Folio1   INT,  
    @Folio2   INT  
     
   IF UPPER(@ArticuloD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @ArticuloD =NULL
   IF UPPER(@ArticuloA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @ArticuloA =NULL
   IF UPPER(@Categoria) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Categoria =NULL                 
   IF UPPER(@Almacen)   IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Almacen =NULL 
      
    CREATE TABLE #TablaMarbete  
    (  
		Articulo   varchar (20),  
		Descripcion1  varchar (100),  
		Categoria   varchar (50),   
		Unidad    varchar (50),  
		Inventario   float   NULL,  
		FolioM    int    NULL  
     )  
      
  
     --DROP   
    DECLARE CdiArticulosMarbete CURSOR FOR    
      
		SELECT a.Articulo, ISNULL( a.Descripcion1,''), ISNULL (a.Categoria,''), ISNULL( a.Unidad,''),ISNULL(aei.Inventario,'')
		FROM ArtExistenciaInv aei  
		INNER JOIN Art a ON a.Articulo = aei.Articulo  
		WHERE			aei.Inventario IS NOT NULL
					AND aei.Inventario > 0  
					AND ISNULL ( a.Categoria,'') =ISNULL(ISNULL( @Categoria, a.Categoria),'')  
					AND ISNULL( aei.Almacen,'') = ISNULL(ISNULL( @Almacen,aei.Almacen),'')
					AND ISNULL( a.Articulo,'') BETWEEN ISNULL(ISNULL ( @ArticuloD, a.Articulo),'') AND ISNULL(ISNULL( @ArticuloA,a.Articulo),'')  
     
       
    OPEN CdiArticulosMarbete  
 FETCH NEXT FROM CdiArticulosMarbete  INTO @Articulo, @Descripcion1, @Categoria, @Unidad, @Inventario  
   
 SELECT @Folio1=0, @Folio2=1  
 WHILE @@FETCH_STATUS <> -1   
 BEGIN   
      
      
		SELECT @Folio1=@Folio1+@Folio2  
		INSERT INTO  #TablaMarbete (Articulo, Descripcion1, Categoria,Unidad,Inventario,FolioM)  
  
		VALUES (@Articulo,@Descripcion1,@Categoria,@Unidad,@Inventario,@Folio1)       
    
   
  FETCH NEXT FROM CdiArticulosMarbete  INTO @Articulo, @Descripcion1, @Categoria, @Unidad, @Inventario  
     
 END   
 CLOSE CdiArticulosMarbete   
 DEALLOCATE CdiArticulosMarbete   
  
SELECT * FROM #TablaMarbete tm  


  
   END  
  GO  
  