SET DATEFIRST 7
SET ANSI_NULLS off
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

/**************** splistajornadad ****************/
if exists (select * from sysobjects where id = object_id('dbo.splistajornadad') and type = 'P') drop procedure dbo.splistajornadad
GO
CREATE PROCEDURE splistajornadad
 
	@CDIEntrada VARCHAR (5),  
	@CDISalida  VARCHAR (5),  
	@CDIJornada VARCHAR (20)  
  
AS BEGIN     
   
	IF UPPER(@CDIEntrada) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @CDIEntrada = NULL  
	IF UPPER(@CDISalida)  IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @CDISalida  = NULL  
	IF UPPER(@CDIJornada) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @CDIJornada = NULL  
    
		SELECT Jornada  
		INTO #CDIJornada2      
		FROM JornadaD    
		WHERE   
		 ISNULL( Entrada,'') = ISNULL(ISNULL( @CDIEntrada,Entrada),'')   
		AND ISNULL( Salida,'') = ISNULL(ISNULL( @CDISalida,Salida),'')   
		AND ISNULL(Jornada,'')  = ISNULL (ISNULL (@CDIJornada, Jornada),'')  
  
  
		SELECT JornadaD.Jornada,Dia,Entrada,salida,dia as NombreDia      
		FROM JornadaD  
		INNER JOIN   #CDIJornada2 ON JornadaD.Jornada=#CDIJornada2.Jornada  
		GROUP BY JornadaD.Jornada,Dia,Entrada,salida,dia  
   
  
END      
 
GO