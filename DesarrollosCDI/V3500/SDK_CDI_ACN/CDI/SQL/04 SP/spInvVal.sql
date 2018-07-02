/**************** spInvVal ****************/
if exists (select * from sysobjects where id = object_id('dbo.spInvVal') and type = 'P') drop procedure dbo.spInvVal
GO             
CREATE PROCEDURE spInvVal
		@ArticuloD	char(20),
		@ArticuloA	char(20),
                @Almacen	char(10),
		@InvVal		varchar(20),
		@FechaA		Datetime,
		@Empresa	char(5),
		@Categoria		VARCHAR(50),
		@Grupo			VARCHAR(50),
		@Familia		VARCHAR(50)

--//WITH ENCRYPTION
AS BEGIN

  DECLARE
	@ArticuloE	char(20),
	@AlmacenE	char(10),
	@InventarioE	float,
	@Cantidad	float,
	@Alm		char(10)

	IF @Almacen IN ('NULL', '(TODOS)', '') SELECT @Almacen = NULL
	IF @ArticuloD  IN ('0', 'NULL', '(TODOS)', '') SELECT @ArticuloD=MIN(ARTICULO) FROM ART
	IF @ArticuloA  IN ('0', 'NULL', '(TODOS)', '') SELECT @ArticuloA=MAX(ARTICULO) FROM ART


  CREATE TABLE #ExistenciaVal (
        ID			int		IDENTITY(1,1) NOT NULL PRIMARY KEY,

	Articulo		char(20)	COLLATE Database_Default NULL,
	Descripcion		varchar(100)	COLLATE Database_Default NULL,
	Categoria		Varchar(50)	NULL,
	Grupo			Varchar(50)	NULL,
	Familia			Varchar(50)	NULL,
	PrecioLista		money		NULL,
	Precio2			money		NULL,
	Precio3			money		NULL,
	Precio4			money		NULL,
	Precio5			money		NULL,
	Precio6			money		NULL,
	Precio7			money		NULL,
	Precio8			money		NULL,
	Precio9			money		NULL,
	Precio10		money		NULL,
	CostoEstandar		money		NULL,
	CostoReposicion		money		NULL,
	CostoPromedio		money		NULL,
	UltimoCosto		money		NULL,
	Moneda			char(10)	COLLATE Database_Default NULL,
	Almacen			char(10)	COLLATE Database_Default NULL,
	Nombre			varchar(100)	COLLATE Database_Default NULL,
	Existencias		float		NULL)

  CREATE INDEX Articulo ON #ExistenciaVal (Articulo, Almacen)

  INSERT #ExistenciaVal
  SELECT Art.Articulo,
         Art.Descripcion1,
		 Art.Categoria,
		 Art.Grupo,
		 Art.Familia,
         Art.PrecioLista,
         Art.Precio2,
         Art.Precio3,
         Art.Precio4,
         Art.Precio5,
         Art.Precio6,
         Art.Precio7,
         Art.Precio8,
         Art.Precio9,
         Art.Precio10,
         Art.CostoEstandar,
         Art.CostoReposicion,
         CostoPromedio = (SELECT TOP 1 a.CostoPromedio FROM ArtCostoHist a WHERE a.Empresa = @Empresa AND a.Articulo = Art.Articulo GROUP BY a.CostoPromedio, a.Fecha, a.Empresa, a.Articulo HAVING a.Fecha = (SELECT MAX(b.Fecha) FROM ArtCostoHist b WHERE b.Empresa = a.Empresa AND b.Articulo = a.Articulo AND b.Fecha < @FechaA +1)),
         UltimoCosto = (SELECT TOP 1 a.UltimoCostoActual FROM ArtCostoHist a WHERE a.Empresa = @Empresa AND a.Articulo = Art.Articulo GROUP BY a.UltimoCostoActual, a.Fecha, a.Empresa, a.Articulo HAVING a.Fecha = (SELECT MAX(b.Fecha) FROM ArtCostoHist b WHERE b.Empresa = a.Empresa AND b.Articulo = a.Articulo AND b.Fecha < @FechaA +1)),
         e.Moneda,
         e.Almacen,
         Alm.Nombre,
         SUM(e.Existencia)
    FROM Art
    JOIN ArtCostoSucursal ac ON Art.Articulo = ac.Articulo  
    JOIN ArtExistenciaNeta e ON Art.Articulo = e.Articulo  
    JOIN Alm ON e.Almacen = Alm.Almacen AND Alm.Sucursal = ac.Sucursal
   WHERE ac.Empresa = @Empresa
     AND e.Empresa = @Empresa
     AND Art.Articulo BETWEEN @ArticuloD AND @ArticuloA
     AND  ART.CATEGORIA=CASE @Categoria WHEN 'NULL' THEN ART.CATEGORIA ELSE @Categoria END
	 AND ISNULL( ART.GRUPO,'')=CASE @Grupo WHEN 'NULL' THEN  ISNULL(ART.GRUPO,'')  ELSE @Grupo END
	 AND  ISNULL(ART.FAMILIA,'')=CASE @Familia WHEN 'NULL' THEN ISNULL( ART.FAMILIA,'')  ELSE @Familia END
     AND ISNULL(e.Almacen, '') = ISNULL(ISNULL(@Almacen, e.Almacen), '')
   GROUP BY e.Moneda, Art.Articulo, Art.Descripcion1, Art.Categoria, Art.Grupo,
         Art.Familia ,
         Art.PrecioLista, Art.Precio2, Art.Precio3, Art.Precio4, Art.Precio5, Art.Precio6, Art.Precio7, Art.Precio8, Art.Precio9, Art.Precio10,
         Art.CostoEstandar, Art.CostoReposicion, ac.CostoPromedio, ac.UltimoCosto, 
         e.Almacen, Alm.Nombre

 DECLARE CrExist CURSOR LOCAL FOR 
  SELECT Articulo, Almacen, Existencias
    FROM #ExistenciaVal
    OPEN CrExist
   FETCH NEXT FROM CrExist INTO @ArticuloE, @AlmacenE, @InventarioE
   WHILE @@FETCH_STATUS <> -1
   BEGIN
     IF @@FETCH_STATUS <> -2 
     BEGIN
       SELECT @Cantidad = NULL, @Alm = NULL
       SELECT @Cantidad = SUM(ISNULL(a.CargoU, 0) - ISNULL(a.AbonoU, 0)) * -1, @Alm = a.Grupo
         FROM InvAuxU a
        WHERE a.Articulo = @ArticuloE
          AND ISNULL(a.Grupo, '') = ISNULL(ISNULL(@AlmacenE, a.Grupo), '')
          AND a.Rama = 'INV'
          AND a.Empresa = @Empresa
          AND a.Fecha BETWEEN @FechaA+1 AND GETDATE()
        GROUP BY a.Grupo
       UPDATE #ExistenciaVal SET Existencias = Existencias + ISNULL(@Cantidad, 0) WHERE Articulo = @ArticuloE AND Almacen = @AlmacenE
     END
     FETCH NEXT FROM CrExist INTO @ArticuloE, @AlmacenE, @InventarioE
   END
   CLOSE CrExist
   DEALLOCATE CrExist

  SELECT * FROM #ExistenciaVal WHERE Existencias > 0 ORDER BY Moneda, Articulo, Almacen, Categoria, Grupo, Familia

END
GO

/*

spInvVal '0071', '0074', 'NULL', 'Costo Promedio', '05/31/2005', 'BLER'

*/

