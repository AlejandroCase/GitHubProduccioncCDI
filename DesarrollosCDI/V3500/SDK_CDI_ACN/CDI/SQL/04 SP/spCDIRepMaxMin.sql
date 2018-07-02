SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
 
 
/**************** spCDIRepMaxMin ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIRepMaxMin') and type = 'P') drop procedure dbo.spCDIRepMaxMin
GO
CREATE PROCEDURE spCDIRepMaxMin  
@Categoria    varchar(50),    
@Almacen      varchar(20),
@ArticuloD	  VARCHAR(20),
@ArticuloA	  VARCHAR(20)   
AS BEGIN  
IF UPPER(@Categoria) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Categoria = NULL   
IF UPPER(@Almacen) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Almacen = NULL   
IF UPPER(@ArticuloD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @ArticuloD = NULL
IF UPPER(@ArticuloA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @ArticuloA = NULL
SELECT   
aei.Almacen,   
a.Categoria,   
a.Articulo,   
a.Unidad,  
a.Descripcion1,   
ac.UltimoCosto,  
ac.CostoPromedio,  
aa.Minimo AS min1,  
aa.Maximo AS max1,  
aei.Inventario,  
ac.UltimoCosto  
  FROM ArtAlm aa   
INNER JOIN Art a ON a.Articulo = aa.Articulo  
INNER JOIN ArtExistenciaInv aei  ON aei.Articulo= a.Articulo AND aei.Almacen = aa.Almacen  
INNER JOIN  ArtCosto ac ON a.Articulo = ac.Articulo  
WHERE   
ISNULL(a.Categoria,'')  = ISNULL(ISNULL(@Categoria,a.Categoria),'')    
AND ISNULL(aei.Almacen,'')  = ISNULL(ISNULL(@Almacen,aei.Almacen),'')    
AND ISNULL( a.Articulo,'') BETWEEN ISNULL(ISNULL(@ArticuloD,a.Articulo),'') AND  ISNULL(ISNULL(@ArticuloA,a.Articulo),'')
AND aei.Inventario <= aa.Minimo  
ORDER BY aei.Almacen, a.Categoria  
END  
GO