SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

-- EXEC SPAnalisisdeCuotasSubsidiadas '' 
 
/**************** SPAnalisisdeCuotasSubsidiadas ****************/
if exists (select * from sysobjects where id = object_id('dbo.SPAnalisisdeCuotasSubsidiadas') and type = 'P') drop procedure dbo.SPAnalisisdeCuotasSubsidiadas
GO
CREATE PROCEDURE SPAnalisisdeCuotasSubsidiadas

@Categoria VARCHAR(50)

AS BEGIN
	
	  IF UPPER(@Categoria) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Categoria = NULL

CREATE TABLE #AnalisisCategoriasSubsidiadas ( 
	
	CDICategoria		VARCHAR(50)NULL,
	CDIPorcentaje010	FLOAT NULL,
	CDIPorcentaje1020	FLOAT NULL,
	CDIPorcentaje2030	FLOAT NULL,
	CDIPorcentaje3040	FLOAT NULL,
	CDIPorcentaje4050	FLOAT NULL,
	CDIPorcentaje5060	FLOAT NULL,
	CDIPorcentaje6070	FLOAT NULL,
	CDIPorcentaje7080	FLOAT NULL,
	CDIPorcentaje8090	FLOAT NULL,
	CDIPorcentaje90100	FLOAT NULL,
	CIDPorcentajemas100	FLOAT
											)
    
	DECLARE 
		@Categoria1		VARCHAR (50),
		@Cuota			MONEY,
		@Subsidio		MONEY,
		@Porcentaje		MONEY,	
		@CDIPorcentaje010		MONEY,
		@CDIPorcentaje1020		MONEY,
		@CDIPorcentaje2030		MONEY,
		@CDIPorcentaje3040		MONEY,
		@CDIPorcentaje4050		MONEY,
		@CDIPorcentaje5060		FLOAT,
		@CDIPorcentaje6070		FLOAT,
		@CDIPorcentaje7080		FLOAT,
		@CDIPorcentaje8090		FLOAT,
		@CDIPorcentaje90100		FLOAT,
		@CIDPorcentajemas100		FLOAT
		
		INSERT INTO #AnalisisCategoriasSubsidiadas ( CDICategoria)  (
		SELECT DISTINCT ( c.Categoria) 
		
		FROM Cte c
		
		INNER JOIN CDIArtCargosRecurrentes ccr ON ccr.Cliente = c.Cliente
		INNER JOIN Art a ON a.Articulo = ccr.Articulo
		WHERE 
				c.CDISubsidio <>0
			AND ISNULL (c.Categoria,'') = ISNULL(ISNULL(@Categoria,c.Categoria),'')) 

		SELECT c.Categoria, Cuota=ISNULL( a.PrecioLista,0),Subsidio= ISNULL( c.CDISubsidio,0) , Division= ISNULL( c.CDISubsidio,0) / isnull(a.PrecioLista,0)*100 
		
		  INTO #tablatemporal FROM Cte c
		
		INNER JOIN CDIArtCargosRecurrentes ccr ON ccr.Cliente = c.Cliente
		INNER JOIN Art a ON a.Articulo = ccr.Articulo
		WHERE 
				c.CDISubsidio >0
			AND ISNULL (c.Categoria,'') = ISNULL(ISNULL(@Categoria,c.Categoria),'') 
		ORDER BY c.Categoria
	
		DECLARE CDIANALISISSUBSIDIOS CURSOR FOR
	 
			SELECT  CDICategoria FROM  #AnalisisCategoriasSubsidiadas  
		
		OPEN CDIANALISISSUBSIDIOS 
		
			FETCH NEXT FROM CDIANALISISSUBSIDIOS INTO @Categoria1--, @Cuota, @Subsidio,@Porcentaje
				
			WHILE @@FETCH_STATUS <>-1
			BEGIN
				
				SELECT @CDIPorcentaje010= COUNT (Division) from #tablatemporal WHERE division >=0 AND Division <=10	 AND Categoria=@Categoria1	
				SELECT @CDIPorcentaje1020= COUNT (Division) from #tablatemporal WHERE division >10 AND Division <=20  AND Categoria=@Categoria1
				SELECT @CDIPorcentaje2030= COUNT (Division) from #tablatemporal WHERE division >20 AND Division <=30  AND Categoria=@Categoria1
				SELECT @CDIPorcentaje3040= COUNT (Division) from #tablatemporal WHERE division >30 AND Division <=40  AND Categoria=@Categoria1
				SELECT @CDIPorcentaje4050= COUNT (Division) from #tablatemporal WHERE division >40 AND Division <=50  AND Categoria=@Categoria1
				SELECT @CDIPorcentaje5060= COUNT (Division) from #tablatemporal WHERE division >50 AND Division <=60  AND Categoria=@Categoria1
				SELECT @CDIPorcentaje6070= COUNT (Division) from #tablatemporal WHERE division >60 AND Division <=70  AND Categoria=@Categoria1
				SELECT @CDIPorcentaje7080= COUNT (Division) from #tablatemporal WHERE division >70 AND Division <=80  AND Categoria=@Categoria1
				SELECT @CDIPorcentaje8090= COUNT (Division) from #tablatemporal WHERE division >80 AND Division <=90  AND Categoria=@Categoria1
				SELECT @CDIPorcentaje90100= COUNT (Division) from #tablatemporal WHERE division >90 AND Division <=100  AND Categoria=@Categoria1
				SELECT @CIDPorcentajemas100= COUNT (Division) from #tablatemporal WHERE division >100  AND Categoria=@Categoria1
				
				--select @CDIPorcentaje010,@CDIPorcentaje1020,@CDIPorcentaje2030, @CDIPorcentaje3040, @CDIPorcentaje4050, @CDIPorcentaje5060,
				--@CDIPorcentaje6070, @CDIPorcentaje7080		, @CDIPorcentaje8090		,@CDIPorcentaje90100		,@CIDPorcentajemas100	
	  
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje010 = @CDIPorcentaje010 WHERE CDICategoria=@Categoria1
								
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje1020 =  @CDIPorcentaje1020 WHERE CDICategoria=@Categoria1
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje2030 =  @CDIPorcentaje2030 WHERE CDICategoria=@Categoria1
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje3040 =  @CDIPorcentaje3040 WHERE CDICategoria=@Categoria1
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje4050  = @CDIPorcentaje4050 WHERE CDICategoria=@Categoria1
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje5060 = @CDIPorcentaje5060 WHERE CDICategoria=@Categoria1 
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje6070 = @CDIPorcentaje6070 WHERE CDICategoria=@Categoria1 
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje7080 = @CDIPorcentaje7080 WHERE CDICategoria=@Categoria1 
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje8090 = @CDIPorcentaje8090 WHERE CDICategoria=@Categoria1 
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CDIPorcentaje90100 = @CDIPorcentaje90100 WHERE CDICategoria=@Categoria1
			
			UPDATE #AnalisisCategoriasSubsidiadas
			SET CIDPorcentajemas100 = @CIDPorcentajemas100 WHERE CDICategoria=@Categoria1 
			
			
					
			FETCH NEXT FROM CDIANALISISSUBSIDIOS INTO @Categoria1--,@Cuota,@Subsidio,@Porcentaje
			
		END
		 CLOSE CDIANALISISSUBSIDIOS 
		 DEALLOCATE CDIANALISISSUBSIDIOS

		 
  	
			SELECT
				*
			FROM
				#AnalisisCategoriasSubsidiadas
   	
   END


GO
