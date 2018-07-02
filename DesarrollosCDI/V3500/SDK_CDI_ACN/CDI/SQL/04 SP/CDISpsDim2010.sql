/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

GO
----------------------------------------------------------
---------------    Sps Dim                 ---------------
----------------------------------------------------------
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_AyudaConceptoDim') and type = 'P') 
DROP PROCEDURE dbo.Sp_AyudaConceptoDim
GO
CREATE PROCEDURE dbo.Sp_AyudaConceptoDim
@Empresa varchar(5),
@EstacionTrabajo int
AS
BEGIN
	DECLARE @NomAuto bit 
	SELECT @NomAuto=NomAuto FROM Empresagral	WHERE Empresa=@Empresa
	DELETE CDIListaConcepto WHERE Empresa=@Empresa
	
	IF @NomAuto=1
		INSERT INTO CDIListaConcepto (Empresa,NominaConcepto,Concepto)
		SELECT @Empresa, NominaConcepto,Concepto FROM NominaConcepto nc
		ORDER BY nc.Concepto
	ELSE 
		INSERT INTO CDIListaConcepto ( Empresa,NominaConcepto,Concepto)
		SELECT  @Empresa,Concepto  ,Concepto FROM NomXPersonal nx
		ORDER BY nx.Concepto
END
GO
IF EXISTS (select * from sysobjects where id = object_id('dbo.Sp_FiltroDim') and type = 'P') 
DROP PROCEDURE dbo.Sp_FiltroDim
GO
CREATE PROCEDURE dbo.Sp_FiltroDim
@EstacionTrabajo int,
@Empresa varchar(5)
AS
BEGIN
	--EXEC Sp_FiltroDim 530
	DELETE Listast WHERE Estacion =@EstacionTrabajo
	
	 IF ( SELECT Obligatorio FROM CDIcfgDim WHERE Columna=30 AND Empresa=@Empresa ) = 0
		INSERT INTO Listast (Estacion,Clave)
		SELECT @EstacionTrabajo,Columna FROM CDIcfgDim 
		WHERE Columna BETWEEN 33 AND 50 AND Empresa=@Empresa
	ELSE 
		UPDATE CDIcfgDim SET Obligatorio = 1
		WHERE Columna BETWEEN 33 AND 50 AND Empresa=@Empresa
		
	IF ( SELECT Obligatorio FROM CDIcfgDim WHERE Columna=31 AND Empresa=@Empresa) = 0
		INSERT INTO Listast (Estacion,Clave)
		SELECT @EstacionTrabajo,Columna FROM CDIcfgDim 
		WHERE Columna BETWEEN 51 AND 57 AND Empresa=@Empresa
	ELSE 
		UPDATE CDIcfgDim SET Obligatorio = 1
		WHERE Columna BETWEEN 51 AND 57 AND Empresa=@Empresa 

	IF ( SELECT Obligatorio FROM CDIcfgDim WHERE Columna=32 AND Empresa=@Empresa ) = 0
		INSERT INTO Listast (Estacion,Clave)
		SELECT @EstacionTrabajo,Columna FROM CDIcfgDim 
		WHERE Columna BETWEEN 58 AND 134 AND Empresa=@Empresa
	ELSE 
		UPDATE CDIcfgDim SET Obligatorio = 1
		WHERE Columna BETWEEN 58 AND 134  AND Empresa=@Empresa
		
	UPDATE CDIcfgDim SET Obligatorio = 0
	FROM CDIcfgDim c JOIN Listast l ON l.Clave = c.Columna
	WHERE l.Estacion=@EstacionTrabajo AND c.Empresa=@Empresa
	
	UPDATE CDIcfgDim SET Tipo = 'Texto', Campo = CASE WHEN Obligatorio=1 THEN '1' ELSE '0' END
	WHERE Columna BETWEEN 30 AND 32 AND Empresa=@Empresa 	
	
END
GO
IF EXISTS (select * from sysobjects where id = object_id('dbo.RepDim') and type = 'P') 
DROP PROCEDURE dbo.RepDim
GO
CREATE PROCEDURE dbo.RepDim
@Cadena varchar(2),  
@Empresa varchar(5),  
@Anio int,  
@Estacion int  
AS  
BEGIN  
	DECLARE  
	@Personal varchar(30),  
	@Columna VarChar(30),  
	@SQL Varchar(8000),  
		@SQL2 Varchar(8000), 
	@FechaD datetime,  
	@FechaA datetime,  
	@FechaDSiguiente datetime,  
	@FechaASiguiente datetime,  
	@Campo varchar(50),  
	@Tabla bit,  
	@Tipo varchar(30),  
	@obligatorio bit,  
	@MaxColum int,  
	@Titulo varchar(90),  
	@ConceptoSubsidioEmpleo varchar(50)  ,
	@Colum30 varchar(2),
	@Colum31 varchar(2),
	@Colum32 varchar(2)
	SET DATEFORMAT mdy;

	IF @Cadena='SI'  
BEGIN  

	DELETE CDIPasoPipeDim where Estacion=@Estacion  
	DELETE CDIPasoDim where Estacion=@Estacion and Personal='0'  
	SELECT  @MaxColum=134--Max(Columna) FROM CDIcfgDim where Obligatorio=1  
	create table #pasoValor (vALOR VARCHAR(30))
	DECLARE CrpipePersonal CURSOR LOCAL FAST_FORWARD  FOR  
	SELECT  Personal from CDIPasoDim  where Estacion=@Estacion
	--select * from CDIcfgDim where
	--SELECT  @SQL='INSERT INTO CDIPasoPipeDim (Estacion,Cadena01) SELECT '+Convert(varchar(10),@Estacion)+', '  
	OPEN CrpipePersonal  
	FETCH NEXT FROM CrpipePersonal INTO  @Personal 
	WHILE @@FETCH_STATUS <> -1  
	BEGIN  
		IF @@FETCH_STATUS <> -2  
		BEGIN  		
		--SELECT @PERSONAL
			select 	@Colum30='',@Colum31='',@Colum32=''
			--select @MaxColum , @Columna
			DECLARE Crpipe CURSOR LOCAL FAST_FORWARD  FOR  
			SELECT  Columna FROM CDIcfgDim where /*Obligatorio=1 and*/    empresa=@empresa order by columna  
			--select * from CDIcfgDim where
			SELECT  @SQL='INSERT INTO CDIPasoPipeDim (Estacion,Cadena01) SELECT '+Convert(varchar(10),@Estacion)+', '  
			OPEN Crpipe  
			FETCH NEXT FROM Crpipe INTO  @Columna  
			WHILE @@FETCH_STATUS <> -1  
			BEGIN  
				IF @@FETCH_STATUS <> -2  
				BEGIN  				
				--SELECT @Columna 
				
					iF @Columna IN (30,31,32)
						BEGIN
							DELETE #pasoValor
							SET @SQL2=''
							SET @SQL2='insert into #pasoValor (Valor) select isnull( Dim'+@Columna+','+Char(39)+Char(39)+') from  CDIPasoDim where Personal='+@Personal+' and Estacion='+Convert(varchar(10),@Estacion)
							exec (@SQL2)
							--SELECT * FROM #pasoValor 
							IF @Columna=30
								sELECT @Colum30=vALOR FROM #pasoValor
							IF @Columna=31
								sELECT @Colum31=vALOR FROM #pasoValor
							IF @Columna=32
								sELECT @Colum32=vALOR FROM #pasoValor
						END 
						
					IF @Columna BETWEEN 33 AND 126
					--IN(
					--30,31,32,33,34,35,36,37,38,39,
					--40,41,42,43,44,45,46,47,48,49,
					--50,51,52,53,54,55,56,57,58,59,
					--60,61,62,63,64,65,66,67,68,69,
					--70,71,72,73,74,75,76,77,78,79,
					--80,81,82,83,84,85,86,87,88,89,
					--90,91,92,93,94,95,96,97,98,99,100,	
					--101,102,103,104,105,106,107,108,109,110,
					--111,112,113,114,115,116,117,118,119,120,
					--121,122,123,124,125,126)
					BEGIN				

						BEGIN
							IF @Colum30='2' AND @Columna IN (33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50)
							OR
							(@Colum31='2' AND @Columna IN (51,52,53,54,55,56,57))
							OR
							(@Colum32='2' AND @Columna IN 
							(58,59,60,61,62,63,64,65,66,67,68,69,70,
							71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,
							91,92,93,94,95,96,97,98,99,100,	101,102,103,104,105,106,107,108,109,110,
							111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126))
							
								SELECT @SQL= @SQL+''
							ELSE 
							BEGIN
								SELECT @SQL= @SQL+'isnull( Dim'+@Columna+','+Char(39)+Char(39)+' )+'+Char(39)+'|'+Char(39)  
								SELECT @SQL = @SQL+'+' 
							END
						END 
					END						
					ELSE
					BEGIN
						SELECT @SQL= @SQL+'isnull( Dim'+@Columna+','+Char(39)+Char(39)+' )+'+Char(39)+'|'+Char(39)  
					
						IF @MaxColum <> @Columna  
							SELECT @SQL = @SQL+'+'  
						ELSE  
							SELECT @SQL = @SQL+' FROM CDIPasoDim WHERE PERSONAL='+Char(39)+@pERSONAL+Char(39)+' AND  Estacion='+Convert(varchar(10),@Estacion)+' ORDER BY  Personal'  
					END 
	--			END
			END  
			FETCH NEXT FROM Crpipe INTO  @Columna  
		END  
		CLOSE Crpipe  
		DEALLOCATE Crpipe  
		--SELECT @SQL
		EXECUTE (@SQL)  
	END  
	FETCH NEXT FROM CrpipePersonal INTO  @Personal  
	END
	CLOSE CrpipePersonal  
	DEALLOCATE CrpipePersonal  

	SELECT Estacion, Cadena01,Cadena02  
	FROM CDIPasoPipeDim  
	WHERE Estacion=@Estacion  
END
	ELSE  
	BEGIN  
	
		DECLARE @PagosporSeparacionMov varchar(50)
		DECLARE @AsimiladosASalarios varchar(50)


		
		--Update CDICFGdim set Tipo='Texto',Obligatorio=1,Campo='1'	where Empresa=@Empresa AND columna in ('30','31')

	
		CREATE TABLE #PasoOrden(idColum int,Columna VarChar(30) null)  
		CREATE TABLE #PasoPersonal(idPer int,Personal Varchar(20) null)  
		CREATE TABLE #PasoSubTotales (Personal VARCHAR(20),Columna VARCHAR(30),SubTotal MONEY null)  
		CREATE TABLE #PasoTotales (Personal VARCHAR(20),Columna VARCHAR(30),Total int null)  
		CREATE TABLE #PasoExisteEnMov (Personal VARCHAR(20) null)  
		CREATE TABLE #Pasotexto (Personal VARCHAR(20),Columna VARCHAR(30),Valor VARCHAR(90) null)  
		DELETE CDIPasoDIM WHERE Estacion=@Estacion 

		--SELECT @FechaD=Getdate()
		--SELECT @FechaD=dbo.fnFechaSinHora(@FechaD)
		--SELECT year(@FechaD),@Anio
		--IF year(@FechaD)>=@Anio
		--BEGIN
		--	SET @FechaD=dateADD(year,(year(@FechaD)-@Anio)*-1,@FechaD)	

		--END
		--IF year(@FechaD)<@Anio
		--BEGIN
		--	SET @FechaD=dateADD(year,@Anio-year(@FechaD),@FechaD)
		--END
		--SELECT @FechaD = dateAdd(day,(datepart(day,@FechaD)-1)*-1,@FechaD)
		--SELECT @FechaD = dateAdd(month,(datepart(month,@FechaD)-1)*-1,@FechaD)
		--SELECT @FechaA = dateAdd(year,1,@FechaD)
		--SELECT @FechaA = dateAdd(day,-1,@FechaA)
		
		
		
		SELECT  @FechaD='01/01/'+CONVERT(varchar(4),@Anio), @FechaA='12/31/'+CONVERT(varchar(4),@Anio) 
		 
		SELECT @FechaDSiguiente=DATEADD(YEAR,1,@FechaD),@FechaASiguiente=DATEADD(YEAR,1,@FechaA)  
		DECLARE @NomAuto bit  
		SELECT @NomAuto=NomAuto FROM Empresagral  
		WHERE Empresa=@Empresa  
		IF @NomAuto=1  
		BEGIN  
			INSERT INTO #PasoSubTotales (Personal ,Columna ,SubTotal )  
			SELECT isnull(d.Personal,'0'),C.Columna, Sum(d.Importe)      
			--SELECT d.Personal,C.Columna, Sum(d.Importe)  
			FROM Nomina N JOIN  
			NominaD D ON D.ID = N.ID JOIN  
			CDICfgDimD Cd ON D.NominaConcepto=Cd.NominaConcepto JOIN  
			CDICfgDim C on C.Id =Cd.Id  
			WHERE  
			N.FechaA BETWEEN @FechaD AND @FechaA  
			AND n.Empresa=@Empresa  
			AND c.Empresa=@Empresa  
			AND n.Estatus IN ('CONCLUIDO')  
			GROUP BY d.Personal,C.Columna  
		End  
		IF @NomAuto=0  
		BEGIN  
			INSERT INTO #PasoSubTotales (Personal ,Columna ,SubTotal )  
			SELECT isnull(d.Personal,'0'),C.Columna,Sum(d.Importe) 
			--SELECT d.Personal,C.Columna,Sum(d.Importe)  
			FROM Nomina N JOIN  
			NominaD D ON D.ID = N.ID JOIN  
			CDICfgDimD Cd ON D.Concepto=Cd.Concepto JOIN  
			CDICfgDim C on C.Id =Cd.Id  
			WHERE  
			N.FechaA BETWEEN @FechaD AND @FechaA  
			AND n.Empresa=@Empresa  
			AND c.Empresa=@Empresa  
			AND n.Estatus IN ('CONCLUIDO')  
			GROUP BY d.Personal,C.Columna  
		end  
		INSERT INTO #PasoOrden (idColum ,Columna )  
		SELECT 1,Columna  
		FROM CDICfgDim  
		WHERE Empresa=@Empresa  
		ORDER BY Columna DESC  
		
		INSERT INTO  #PasoPersonal (idPer ,Personal)  
		SELECT 1, Personal  
		FROM #PasoSubTotales  
		GROUP BY Personal  
		
		INSERT INTO  #PasoPersonal (idPer ,Personal)  
		SELECT 1, 0  
		
		INSERT INTO  CDIPasoDIM (id ,Personal,Estacion)  
		SELECT 1, Personal,@Estacion FROM #PasoPersonal  
		
		INSERT INTO #PasoSubTotales (Personal ,Columna ,SubTotal )  
		SELECT pp.Personal, po.Columna, 0  
		FROM #PasoOrden po JOIN  
		#PasoPersonal pp ON po.idColum=pp.idPer  
		INSERT INTO #PasoTotales (Personal ,Columna ,Total)  
		SELECT Personal ,Columna ,ISNULL(ROUND(SUM(SubTotal),0),0)  
		FROM #PasoSubTotales  
		GROUP BY Personal ,Columna  
		
		
		
		UPDATE #PasoTotales SET Total=Total*-1  
		WHERE Total<0  
		DECLARE CrCamposPersonal CURSOR LOCAL FAST_FORWARD  FOR  
		SELECT Columna,Campo,Tipo  
		FROM CDICfgDim  
		WHERE Obligatorio=1  
		and Empresa=@Empresa  
		ORDER BY Columna  
		OPEN CrCamposPersonal  
		FETCH NEXT FROM CrCamposPersonal INTO  @Columna,@Campo,@Tipo  
		WHILE @@FETCH_STATUS <> -1  
		BEGIN  
			IF @@FETCH_STATUS <> -2  
			BEGIN  
				IF @Tipo='Tabla Personal'  
				BEGIN  
					SET @SQL=''  
					
					IF @Campo in ('FechaAlta')  
						SET @SQL='insert into #Pasotexto (Personal ,Columna ,Valor) Select p.Personal, '+@Columna+', right('+Char(39)+'00'+Char(39)+'+CONVERT(varchar(2),DATEPART(MONTH, case when p.FechaAlta < '+Char(39)+convert(varchar(10),@FechaD,101)+Char(39)+' then '+Char(39)
						+convert(varchar(10),@FechaD,101)+Char(39)+' else p.FechaAlta end)),2) FRom Personal p join #PasoTotales Pst on p.Personal=pst.Personal'  
					
					ELSE IF @Campo in ('FechaBaja')  
						SET @SQL='insert into #Pasotexto (Personal ,Columna ,Valor) Select p.Personal, '+@Columna+', right('+Char(39)+'00'+Char(39)+'+CONVERT(varchar(2),DATEPART(MONTH, case when p.Estatus = '+Char(39)+'ALTA'+Char(39)+' then '+Char(39)+convert(varchar(10),@FechaA
						,101)+Char(39)+' else p.FechaBaja end)),2) FRom Personal p join #PasoTotales Pst on p.Personal=pst.Personal'  
					
					ELSE IF @Campo in ('ZonaEconomica')  
						SET @SQL='insert into #Pasotexto (Personal ,Columna ,Valor) Select p.Personal, '+@Columna+',  case p.ZonaEconomica when '+Char(39)+'A'+Char(39)+' then '+Char(39)+'01'+Char(39)+' when '+Char(39)+'B'+Char(39)+' then '+Char(39)+'02'+Char(39)+' when '+Char(39
						)+'C'+Char(39)+' then '+Char(39)+'03'+Char(39)+' else '+Char(39)+'0'+Char(39)+' end  FRom Personal p join #PasoTotales Pst on p.Personal=pst.Personal'  
					
					ELSE IF @Campo in ('Sindicato')  
						SET @SQL='insert into #Pasotexto (Personal ,Columna ,Valor) Select p.Personal, '+@Columna+', isnull(p.'+@Campo+','+Char(39)+'2'+Char(39)+') FRom Personal p join #PasoTotales Pst on p.Personal=pst.Personal'  
					
					ELSE  
						SET @SQL='insert into #Pasotexto (Personal ,Columna ,Valor) Select p.Personal, '+@Columna+', replace (p.'+@Campo+','+Char(39)+'Ñ'+Char(39)+','+Char(39)+'N'+Char(39)+') FRom Personal p join #PasoTotales Pst on p.Personal=pst.Personal'  
					EXEC (@SQL)  
				END  
				if @Tipo='Expresion'  
				BEGIN  
					IF @Campo in ('AjusteAnual')  
					BEGIN  
						INSERT INTO #PasoExisteEnMov (Personal)  
						SELECT nd.personal  
						FROM nomina n  JOIN  nominad nd ON n.id=nd.id  
						WHERE n.estatus='CONCLUIDO'  
						AND n.fechaA BETWEEN @FechaDSiguiente AND @FechaDSiguiente  
						AND n.mov='AJUSTE ANUAL'  
						and n.Empresa=@Empresa  
						GROUP BY nd.personal  
						INSERT INTO #Pasotexto (Personal ,Columna ,Valor)  
						SELECT pp.personal,@Columna, CASE WHEN pem.personal IS NULL then '2' else '1' end  
						FROM #PasoPersonal pp LEFT JOIN  
						#PasoExisteEnMov  pem  on pp.personal= pem.personal  
					END  
					IF @Campo IN ('Entidad')  
					BEGIN  
						INSERT INTO #Pasotexto (Personal ,Columna ,Valor)  
						SELECT pp.personal,@Columna,isnull(Clave,'0') from #PasoPersonal pp JOIN  
						personal p on  pp.personal= p.personal JOIN  
						Sucursal s on p.SucursalTrabajo=s.Sucursal JOIN  
						PaisEstado pe on pe.Estado=s.Estado  
					END  
				END  
				IF @Tipo='Texto'  
				BEGIN  
					INSERT INTO #Pasotexto (Personal ,Columna ,Valor)  
					SELECT personal,@Columna,CASE WHEN @Campo='Null' THEN '' ELSE @Campo END  
					FROM #PasoPersonal  
				END  
			END  
			FETCH NEXT FROM CrCamposPersonal INTO  @Columna,@Campo,@Tipo  
		END  
		CLOSE CrCamposPersonal  
		DEALLOCATE CrCamposPersonal  
		DECLARE CrActualiza CURSOR LOCAL FAST_FORWARD  FOR  
		SELECT  cfg.Columna, cfg.Titulo, cfg.Tipo  
		FROM #PasoOrden po JOIN  
		CDIcfgDim cfg on po.Columna=cfg.Columna  
		WHERE cfg.Obligatorio=1  
		AND cfg.Empresa=@Empresa  
		ORDER BY cfg.Columna  
		OPEN CrActualiza  
		FETCH NEXT FROM CrActualiza INTO  @Columna, @Titulo, @Tipo  
		WHILE @@FETCH_STATUS <> -1  
		BEGIN  
			IF @@FETCH_STATUS <> -2  
			BEGIN  
				SELECT  @SQL=''  
				IF  @Tipo ='Suma Concepto'  
					SET @SQL='Update CDIPasoDim set  Dim'+ @Columna +'=pt.Total FROM CDIPasoDim po join #PasoTotales pt on po.Personal=pt.Personal where pt.Columna='+@Columna  
				ELSE  
					SET @SQL='Update CDIPasoDim set  Dim'+ @Columna +'=pt.Valor FROM CDIPasoDim po join #Pasotexto pt on po.Personal=pt.Personal where pt.Columna='+@Columna  
				EXEC (@SQL)  
				SELECT  @SQL=''  
				SELECT @SQL='Update CDIPasoDim set  Dim'+ @Columna +'='+Char(39)+Case when isnull(@Titulo,'')='' then 'Titulo '+@Columna else @Titulo end+Char(39)+' where Personal=0'  
				EXEC (@SQL)  
			END  
			FETCH NEXT FROM CrActualiza INTO  @Columna, @Titulo, @Tipo  
		END  
		CLOSE CrActualiza  
		DEALLOCATE CrActualiza 
		
		--esto a peticion de CDI
		UPDATE  CDIPasoDim  SET Dim9=CASE WHEN Dim9='0' THEN '2' ELSE Dim9 END 
		WHERE estacion=@estacion  AND Personal<>0 
		--esto a peticion de CDI
		UPDATE  CDIPasoDim  SET Dim13=CASE WHEN Dim13='Sindicalizado' THEN '1' ELSE '2' END 
		WHERE estacion=@estacion AND Personal<>0 
		--SELECT DISTINCT sindicato FROM personal
		
	
	
		SELECT @PagosporSeparacionMov=Campo 
		FROM CDICFGdim  WHERE Empresa=@Empresa AND columna=30

		SELECT @AsimiladosASalarios=Campo 
		FROM CDICFGdim  WHERE Empresa=@Empresa AND columna=31
	    --select @PagosporSeparacionMov '@PagosporSeparacionMov', @AsimiladosASalarios '@AsimiladosASalarios'
		DELETE #PasoPersonal
		INSERT INTO #PasoPersonal (idPer,Personal)
		SELECT 88,b.Personal
		FROM nomina a JOIN 
		nominad b ON a.id=b.id
		WHERE a.Mov =ltrim(rtrim(@PagosporSeparacionMov))
		AND a.FechaA BETWEEN @FechaD AND @FechaA
		AND a.Estatus IN ('Concluido')
		and b.Personal <> null
		GROUP BY b.Personal
		ORDER BY b.Personal
		
		IF (SELECT count(*) FROM #PasoPersonal)>0
		UPDATE CDIPasoDim 
		SET Dim30 ='2',
		Dim33='',Dim34='',Dim35='',Dim36='',Dim37='',Dim38='',Dim39='',Dim40='',Dim41='',Dim42='',Dim43='',Dim44='',
		Dim45='',Dim46='',Dim47='',Dim48='',Dim49='',Dim50=''
		WHERE Personal NOT IN (SELECT Personal FROM #PasoPersonal )
		AND estacion=@estacion 
		AND personal <>'0' 
		else
		UPDATE CDIPasoDim 
		SET Dim30 ='2',
		Dim33='',Dim34='',Dim35='',Dim36='',Dim37='',Dim38='',Dim39='',Dim40='',Dim41='',Dim42='',Dim43='',Dim44='',
		Dim45='',Dim46='',Dim47='',Dim48='',Dim49='',Dim50=''
		--WHERE Personal NOT IN (SELECT Personal FROM #PasoPersonal )
		where estacion=@estacion 
		AND personal <>'0'
		

		--SELECT @PagosporSeparacionMov
		
		DELETE #PasoPersonal
		INSERT INTO #PasoPersonal (idPer,Personal)
		SELECT 88,b.Personal
		FROM nomina a JOIN 
		nominad b ON a.id=b.id
		WHERE a.Mov =ltrim(rtrim(@AsimiladosASalarios))
		AND a.FechaA BETWEEN @FechaD AND @FechaA
		AND a.Estatus IN ('Concluido')
		and b.Personal <> null
		GROUP BY b.Personal
		ORDER BY b.Personal
		
		--select FechaD,FechaA,* from nomina
		
		--select @FechaD , @FechaA
		--select * from  #PasoPersonal
		IF (SELECT count(*) FROM #PasoPersonal)>0
		UPDATE CDIPasoDim 
			SET Dim31 ='2',
			Dim53='',Dim54='',Dim55='',Dim56='',Dim57='',Dim51='',Dim52=''
			WHERE Personal NOT IN (SELECT Personal FROM #PasoPersonal )
			AND estacion=@estacion
			AND personal <>'0' 
		else
			UPDATE CDIPasoDim 
			SET Dim31 ='2',
			Dim53='',Dim54='',Dim55='',Dim56='',Dim57='',Dim51='',Dim52=''
			--WHERE Personal NOT IN (SELECT Personal FROM #PasoPersonal )
			where estacion=@estacion
			AND personal <>'0' 
		
		
		--select * from #PasoPersonal
		--select Personal ,sum(SubTotal) from #PasoSubTotales
		--where Columna=58 and Personal<>0 and SubTotal>0
		--group by personal
		
		update CDIPasoDim set Dim32='2' ,Dim58='',Dim59='',Dim60='',Dim61='',Dim62='',Dim63='',Dim64='',Dim65='',Dim66='',Dim67='',Dim68='',Dim69=''
		,Dim70='',Dim71='',Dim72='',Dim73='',Dim74='',Dim75='',Dim76='',Dim77='',Dim78='',Dim79='',Dim80='',Dim81='',Dim82='',Dim83='',Dim84='',Dim85=''
		,Dim86='',Dim87='',Dim88='',Dim89='',Dim90='',Dim91='',Dim92='',Dim93='',Dim94='',Dim95='',Dim96='',Dim97='',Dim98='',Dim99='',Dim100='',Dim101=''
		,Dim102='',Dim103='',Dim104='',Dim105='',Dim106='',Dim107='',Dim108='',Dim109='',Dim110='',Dim111='',Dim112='',Dim113='',Dim114='',Dim115='',Dim116=''
		,Dim117='',Dim118='',Dim119='',Dim120='',Dim121='',Dim122='',Dim123='',Dim124='',Dim125='',Dim126=''
		WHERE estacion=@estacion 
		and Personal<>0 
		and  Personal in (select personal from #PasoPersonal)
		and Personal not in (select Personal from #PasoSubTotales where Columna=58 and Personal<>0 and SubTotal>0 )
		
		update  CDIPasoDim set Dim30='1' 
		WHERE estacion=@estacion and Dim30 is null
		update  CDIPasoDim set Dim31='1' 
		WHERE estacion=@estacion and Dim31 is null
		
		update  CDIPasoDim set Dim14='0' 
		WHERE estacion=@estacion and  Dim31='2' 
		 
		SELECT * FROM CDIPasoDim  
		WHERE estacion=@estacion  
		ORDER BY Personal  
	END  
END  
GO
--EXEC RepDim 'NO','CDI',2010,22
--GO
--EXEC RepDim 'si','CDI',2010,22
--go
if EXISTS (select * from sysobjects where id = object_id('dbo.DIMInsert') and type = 'P') 
DROP PROCEDURE dbo.DIMInsert
GO
CREATE PROCEDURE dbo.DIMInsert 
AS
BEGIN
	DECLARE @Emp	varchar(10),
			@EmpAnt	varchar(10)

	SELECT @EmpAnt = ''
	WHILE(1=1)
	BEGIN
	  SELECT @Emp = MIN(EMpresa)  FROM Empresa  WHERE Empresa > @EmpAnt
	  IF @Emp IS NULL BREAK
	  --Aqui codigo 
	  --SELECT @Emp
	  
	  IF NOT EXISTS (SELECT 1 FROM CDIcfgDim WHERE empresa=@Emp )
	  BEGIN
	  	
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,1,'Mes inicial','Mes inicial','Tabla Personal',1,'FechaAlta')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,2,'Mes Final','Mes final','Tabla Personal',1,'FechaBaja')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,3,'RegistroFederalCon','Registro federal de contribuyentes','Tabla Personal',1,'Registro2')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,4,'Curp','Clave única de registro de población','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,5,'Apaterno','Apellido Paterno','Tabla Personal',1,'ApellidoPaterno')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,6,'Amaterno','Apellido Materno','Tabla Personal',1,'ApellidoMaterno')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,7,'Nombre','Nombre(s)','Tabla Personal',1,'Nombre')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,8,'AreaGeografica','Área geográfica del salario mínimo','Tabla Personal',1,'ZonaEconomica')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,9,'CalculoAnualPatron','Indique si el patrón realizó cálculo anual','Expresion',1,'AjusteAnual')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,10,'TarifaUtilizada','Tarifa utilizada: del ejercicio que declara','Texto',1,'1')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,11,'TarifaUtilizada1991','Tarifa utilizada: 1991 actualizada','Texto',1,'2')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,12,'ProporcionSubSidioA','Proporción del subsidio aplicada','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,13,'Sindicalizado','Indique si el trabajador es sindicalizado','Texto',1,'1')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,14,'AsimiladoASalarios','Si es asimilado a salarios, señale la clave correspondiente','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,15,'EntidadFederativa','Clave de la Entidad federativa donde presento sus servicion','Expresion',1,'Entidad')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,16,'RFC1','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 1 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,17,'RFC2','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 2 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,18,'RFC3','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 3 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,19,'RFC4','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 4 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,20,'RFC5','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 5 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,21,'RFC6','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 6 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,22,'RFC7','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 7 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,23,'RFC8','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 8 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,24,'RFC9','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 9 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,25,'RFC10','En caso de que el trabajador haya tenido más de un patrón en el ejercicio, señale el RFC num 10 del otro patrón','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,26,'AportacionesVol','Monto de las aportaciones voluntarias efectuadas','Texto',1,'Null')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,27,'PatronAplicoMonto','Indique si el patrón aplicó el monto de las aportaciones voluntarias en el cálculo del impuesto','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,28,'MontoDeduciblesTrab','Monto de las aportaciones voluntarias deducibles para trabajadores que realizarán su declaración','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,29,'MontoDeduciblesPatron','Monto de las aportaciones voluntarias deducibles aplicadas por el patrón','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,30,'PagosporSeparacion','B. Pagos por separación','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,31,'AsimiladosASalarios','C. Asimilados a salarios (excepto fracción I del Art. 110 de la LISR)','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,32,'PagoPatronEfectuados','D. Pagos del patrón efectuados a sus trabajadores (incluyendo fracción I del Art. 110 de la LISR)','Texto',1,'1')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,33,'TotalesPagoParciales','Ingresos totales por pago en parcialidades','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,34,'Titulo34','Monto diario percibido por jubilaciones, pensiones o haberes de retiro en parcialidades','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,35,'Titulo35','Cantidad que se hubiera percibido en el periodo de no haber pago único por jubilaciones, pensiones o haberes de retiro en una sola exhibición','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,36,'Titulo36','Monto total del pago en una sola exhibición','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,37,'Titulo37','Número de días','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,38,'Titulo38','Ingresos exentos','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,39,'Titulo39','Ingresos gravables','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,40,'Titulo40','Ingresos acumulables','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,41,'Titulo41','Ingresos no acumulables','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,42,'Titulo42','Impuesto retenido','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,43,'Titulo43','Monto total pagado de otros pagos por separación','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,44,'Titulo44','Número de años de servicio del trabajador','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,45,'Titulo45','Ingresos excentos','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,46,'Titulo46','Ingresos gravados','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,47,'Titulo47','Ingresos acumulables (último sueldo mensual ordinario)','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,48,'Titulo48','Impuesto correspondiente al último sueldo mensual ordinario','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,49,'Titulo49','Ingresos no acumulables','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,50,'Titulo50','Impuesto Retenido','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,51,'Titulo51','Ingresos asimilados a salarios','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,52,'Titulo52','Impuesto retenido durante el ejercicio','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,53,'Titulo53','Indique si ejerció la opción otorgada por el empleador para adquirir acciones o títulos valor','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,54,'Titulo54','Valor de mercado de las acciones o títulos valor al ejercer la opción','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,55,'Titulo55','Precio establecido al otorgarse la opción de ingresos en acciones o títulos valor','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,56,'Titulo56','Ingreso Acumulable','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,57,'Titulo57','Impuesto retenido durante el ejercicio','Texto',0,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,58,'titulo58','Sueldos, salarios, rayas y jornales gravado','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,59,'Titulo59','Sueldos, salarios, rayas y jornales exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,60,'Titulo60','Gratificación anual gravado','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,61,'Titulo61','Gratificación anual exento','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,62,'Titulo62','Viáticos y gastos de viaje gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,63,'Titulo63','Viáticos y gastos de viaje exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,64,'Titulo64','Tiempo extraordinario gravado','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,65,'Titulo65','Tiempo extraordinario exento','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,66,'Titulo66','Prima vacacional gravado','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,67,'Titulo67','Prima vacacional exento','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,68,'Titulo68','Prima dominical gravado','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,69,'Titulo69','Prima dominical exento','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,70,'Titulo70','Participación de los trabajadores en las utilidades (PTU) gravado','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,71,'Titulo71','Participación de los trabajadores en las utilidades (PTU) exento','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,72,'Titulo72','Reembolso de gastos médicos, dentales y hospitalarios gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,73,'Titulo73','Reembolso de gastos médicos, dentales y hospitalarios exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,74,'Titulo74','Fondo de ahorro gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,75,'Titulo75','Fondo de ahorro exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,76,'Titulo76','Caja de ahorro gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,77,'Titulo77','Caja de ahorro exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,78,'Titulo78','Vales para despensa gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,79,'Titulo79','Vales para despensa exento','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,80,'Titulo80','Ayuda para gastos de funeral gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,81,'Titulo81','Ayuda para gastos de funeral exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,82,'Titulo82','Contribuciones a cargo del trabajador pagadas por el patrón gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,83,'Titulo83','Contribuciones a cargo del trabajador pagadas por el patrón exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,84,'Titulo84','Premios por puntualidad gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,85,'Titulo85','Premios por puntualidad exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,86,'Titulo86','Prima de seguro de vida gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,87,'Titulo87','Prima de seguro de vida exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,88,'Titulo88','Seguro de gastos médicos mayores gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,89,'Titulo89','Seguro de gastos médicos mayores exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,90,'Titulo90','Vales para restaurante gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,91,'Titulo91','Vales para restaurante exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,92,'Titulo92','Vales para gasolina gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,93,'Titulo93','Vales para gasolina exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,94,'Titulo94','Vales para ropa gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,95,'Titulo95','Vales para ropa exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,96,'Titulo96','Ayuda para renta gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,97,'Titulo97','Ayuda para renta exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,98,'Titulo98','Ayuda para artículos escolares gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,99,'Titulo99','Ayuda para artículos escolares exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,100,'Titulo100','Dotación o ayuda para anteojos gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,101,'Titulo101','Dotación o ayuda para anteojos exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,102,'Titulo102','Ayuda para transporte gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,103,'Titulo103','Ayuda para transporte exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,104,'Titulo104','Cuotas sindicales pagadas por el patrón gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,105,'Titulo105','Cuotas sindicales pagadas por el patrón exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,106,'Titulo106','Subsidios por incapacidad gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,107,'Titulo107','Subsidios por incapacidad exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,108,'Titulo108','Becas para trabajadores y/o sus hijos gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,109,'Titulo109','Becas para trabajadores y/o sus hijos exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,110,'Titulo110','Pagos efectuados por otros empleadores (sólo si el patrón que declara realizó cálculo anual) gravado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,111,'Titulo111','Pagos efectuados por otros empleadores (sólo si el patrón que declara realizó cálculo anual) exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,112,'Titulo112','Otros ingresos por salarios gravado','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,113,'Titulo113','Otros ingresos por salarios exento','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,114,'Titulo114','Suma del ingreso GRAVADO por sueldos y salarios','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,115,'Titulo115','Suma del ingreso EXENTO por sueldos y salarios','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,116,'Titulo116','Impuesto retenido durante el ejercicio que declara','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,117,'Titulo117','Impuesto retenido por otro(s) patrón(es) durante el ejercicio que declara','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,118,'Titulo118','Saldo a favor determinado en el ejercicio que declara, que el patrón compensará durante el siguiente ejercicio o solicitará su devolución','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,119,'Titulo119','Saldo a favor del ejercicio anterior no compensado durante el ejercicio que declara','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,120,'Titulo120','Suma de las cantidades que por concepto de crédito al salario le correspondió al trabajador','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,121,'Titulo121','Crédito al salario entregado en efectivo al trabajador durante el ejercicio que declara','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,122,'Titulo122','Monto total de ingresos obtenidos por concepto de prestaciones de previsión social','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,123,'Titulo123','Suma de ingresos exentos por concepto de prestaciones de previsión social','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,124,'Titulo124','Suma de ingresos por sueldos y salarios','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,125,'Titulo125','Monto del impuesto local a los ingresos por sueldos, salarios y en general por la prestación de un servicio personal subordinado retenido','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,126,'Titulo126','Monto del subsidio para el empleo entregado en efectivo al trabajador durante el ejercicio que declara','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,127,'Titulo127','Total de las aportaciones voluntarias deducibles','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,128,'Titulo128','ISR conforme a la tarifa anual','Suma Concepto',1,'')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,129,'Titulo129','Subsidio acreditable','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,130,'Titulo130','Subsidio no acreditable','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,131,'Titulo131','Impuesto sobre ingresos acumulables','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,132,'Titulo132','Impuesto sobre ingresos no acumulables','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,133,'Titulo133','Impuesto local a los ingresos por sueldos, salarios y en general por la prestación de un servicio personal subordinado','Texto',1,'0')
			insert into CDIcfgDim ( Empresa, Columna ,Titulo,Descripcion,Tipo,Obligatorio,Campo ) Values (@Emp,134,'Titulo134','Monto del subsidio para el empleo que le correspondió al trabajador durante el ejercicio','Suma Concepto',1,'')

  	  END  
	  SELECT @EmpAnt = @Emp
	END
END
GO
EXEC DIMInsert



