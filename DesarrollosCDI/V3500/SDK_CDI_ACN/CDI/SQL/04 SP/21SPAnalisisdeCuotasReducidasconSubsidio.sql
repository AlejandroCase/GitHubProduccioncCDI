SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

-- EXEC spCDIAnalisisdeCuotasReducidasconSubsidios '' 
 
/**************** spCDIAnalisisdeCuotasReducidasconSubsidios ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIAnalisisdeCuotasReducidasconSubsidios') and type = 'P') drop procedure dbo.spCDIAnalisisdeCuotasReducidasconSubsidios
GO
CREATE PROCEDURE spCDIAnalisisdeCuotasReducidasconSubsidios

@Categoria VARCHAR(50)

AS BEGIN
	
	  IF UPPER(@Categoria) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Categoria = NULL

CREATE TABLE #CDICuotasReducidasConSubsidio ( 
	
		Categoria					VARCHAR(50),
		TotalMembresías				FLOAT,
		TotalMembresiasSub			FLOAT,
		TotalMensuales				FLOAT,
		TotalAnuales				FLOAT,
		TotalImporteMensuales		MONEY,
		TotalImporteAnuales			MONEY,
		TotalImporteMembresías		MONEY,
		TotalMembresiaPorcentaje	FLOAT NULL
								)


	DECLARE 
		@Categoria1		VARCHAR (50),
		@Cuota			MONEY,
		@Subsidio		MONEY,
		@Condicion		VARCHAR(50),
		@TotalMembresia FLOAT,	
		@CondicionM			VARCHAR(50),
		@CondicionA			VARCHAR(50),
		@CuotaM			MONEY,
		@CuotaA			MONEY,
		@SubsidioM		MONEY,
		@SubsidioA		MONEY,
		@ConteoSub		FLOAT,
		@SubPorcent		FLOAT
		
		
				
			
		INSERT  INTO #CDICuotasReducidasConSubsidio ( Categoria,TotalMembresías, TotalMembresiasSub,TotalMensuales,TotalAnuales,TotalImporteMensuales,TotalImporteAnuales,TotalImporteMembresías)
				
				SELECT Categoria= ISNULL (c.Categoria,'S/Categoria'), TotalMembresía= COUNT (isnull(c.Socio,0)),0 ,0,0, 0 ,0,0
				FROM Cte c
				INNER JOIN CDIArtCargosRecurrentes ccr ON ccr.Cliente = c.Cliente
				INNER  JOIN art a ON a.Articulo = ccr.Articulo
				WHERE 	c.CDISocio=1 
					AND c.Titular=1
					AND a.Articulo NOT IN ('CANCASTIPA','CANCASTIPB','EMERCCASTIPA','EMERCCASTIPB')
					AND c.Estatus IN ('ALTA','BLOQUEADO')
					AND ISNULL ( c.Categoria,'') = ISNULL(ISNULL(@Categoria,c.Categoria),'')
				GROUP BY c.Categoria
				ORDER BY c.Categoria
				
			
			SELECT Categoria= ISNULL (c.Categoria,'S/Categoria'), TotalMembresia= COUNT (isnull(c.Socio,0)),a.CDICondicion,Cuota=isnull(a.PrecioLista,0),Subsidio=isnull(c.CDISubsidio,0)
			INTO #TabledePaso	
			FROM Cte c
				INNER JOIN CDIArtCargosRecurrentes ccr ON ccr.Cliente = c.Cliente
				INNER  JOIN art a ON a.Articulo = ccr.Articulo
				WHERE 	c.CDISocio=1 
					AND c.Titular=1
					AND a.Articulo NOT IN ('CANCASTIPA','CANCASTIPB','EMERCCASTIPA','EMERCCASTIPB')
					AND c.Estatus IN ('ALTA','BLOQUEADO')
					AND ISNULL ( c.Categoria,'') = ISNULL(ISNULL(@Categoria,c.Categoria),'')
				GROUP BY c.Categoria, a.CDICondicion, a.PrecioLista, c.CDISubsidio
				ORDER BY c.Categoria
	
	
		SELECT @CondicionM = '1 Mes'
		SELECT @CondicionA='1 año'
		
			SELECT c.Categoria, TotalMembresiasSub= COUNT (isnull(c.Socio,0)),a.CDICondicion,Cuota=isnull(a.PrecioLista,0),Subsidio=isnull(c.CDISubsidio,0)
			INTO #TabledePaso2	
			FROM Cte c
				INNER JOIN CDIArtCargosRecurrentes ccr ON ccr.Cliente = c.Cliente
				INNER  JOIN art a ON a.Articulo = ccr.Articulo
				INNER JOIN  CDISocio c2 ON c.Cliente=c2.Cliente AND c2.Mov='Subsidio' AND c2.Estatus='Concluido'
				WHERE 	c.CDISocio=1 
					AND c.Titular=1
					AND a.Articulo NOT IN ('CANCASTIPA','CANCASTIPB','EMERCCASTIPA','EMERCCASTIPB')
			GROUP BY c.Categoria, a.CDICondicion, a.PrecioLista, c.CDISubsidio
					
	
		DECLARE CDICuotasReducidas CURSOR FOR
	 
			SELECT Categoria FROM #CDICuotasReducidasConSubsidio cr  
		
		OPEN CDICuotasReducidas 
		
			FETCH NEXT FROM CDICuotasReducidas INTO @Categoria1--,  @Condicion, @Cuota, @Subsidio
				
			WHILE @@FETCH_STATUS <>-1
			BEGIN
				
				SELECT @ConteoSub= COUNT (isnull(c.Socio,0))
				FROM Cte c
				INNER JOIN CDIArtCargosRecurrentes ccr ON ccr.Cliente = c.Cliente
				INNER  JOIN art a ON a.Articulo = ccr.Articulo
				INNER JOIN  CDISocio c2 ON c.Cliente=c2.Cliente AND c2.Mov='Subsidio' AND c2.Estatus='Concluido'
				WHERE 	c.CDISocio=1 
					AND c.Titular=1
					AND a.Articulo NOT IN ('CANCASTIPA','CANCASTIPB','EMERCCASTIPA','EMERCCASTIPB')
					AND c.Categoria=@Categoria1
	
				UPDATE #CDICuotasReducidasConSubsidio SET TotalMembresiasSub = @ConteoSub WHERE Categoria=@Categoria1
				
				
			--Conteo Mensual
			SELECT @TotalMembresia= SUM(ISNULL( TotalMembresiasSub,0)) FROM   #TabledePaso2 WHERE  Categoria=@Categoria1 AND CDICondicion=@CondicionM
						
			UPDATE #CDICuotasReducidasConSubsidio SET TotalMensuales = isnull (@TotalMembresia,0) WHERE Categoria=@Categoria1
			
			--Conteo Anual
			SELECT @TotalMembresia= SUM(isnull(TotalMembresiasSub,0)) FROM   #TabledePaso2 WHERE  Categoria=@Categoria1 AND CDICondicion=@CondicionA
			UPDATE #CDICuotasReducidasConSubsidio SET TotalAnuales = ISNULL( @TotalMembresia,0) WHERE Categoria=@Categoria1
			
			--Importe Mensual
			SELECT @CuotaM  = 12* ( SUM(isnull(TotalMembresiasSub,0)*(isnull(cuota,0)-ISNULL(Subsidio,0) )) )
			FROM #TabledePaso2  WHERE Categoria=@Categoria1 AND CDICondicion=@CondicionM
			
			UPDATE #CDICuotasReducidasConSubsidio SET TotalImporteMensuales = ISNULL( @CuotaM,0) WHERE Categoria=@Categoria1
			
			--Importe Anual
			SELECT @CuotaA  = SUM(isnull(TotalMembresiasSub,0)*(isnull(cuota,0)-ISNULL(Subsidio,0) ))
			FROM #TabledePaso2  WHERE Categoria=@Categoria1 AND CDICondicion=@CondicionA
			
			UPDATE #CDICuotasReducidasConSubsidio SET TotalImporteAnuales  = ISNULL( @CuotaA,0) WHERE Categoria=@Categoria1
			
			--Importe Total
			SELECT @Cuota= SUM( cr.TotalImporteMensuales + cr.TotalImporteAnuales)   FROM #CDICuotasReducidasConSubsidio cr WHERE cr.Categoria=@Categoria1
			UPDATE #CDICuotasReducidasConSubsidio SET TotalImporteMembresías = @Cuota WHERE Categoria=@Categoria1
			
			 --Porcenjate de subsidio vs total de membresias
			 
			SELECT @SubPorcent=( isnull(sum(crcs.TotalMembresiasSub),0) / isnull(sum(crcs.TotalMembresías),0) )*100
			 FROM #CDICuotasReducidasConSubsidio crcs 
			WHERE crcs.Categoria=@Categoria1  
			GROUP BY crcs.Categoria
			
			UPDATE #CDICuotasReducidasConSubsidio SET TotalMembresiaPorcentaje = ROUND ( @SubPorcent,2) WHERE Categoria=@Categoria1
		 
			
			FETCH NEXT FROM CDICuotasReducidas INTO @Categoria1--, @Condicion, @Cuota, @Subsidio
			
		END
		 CLOSE CDICuotasReducidas 
		 DEALLOCATE CDICuotasReducidas

		SELECT * FROM #CDICuotasReducidasConSubsidio cr		 

   END


GO