SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF



 --EXEC SPCatalogodeSociosconEstatusporTipo @Tipo='Temporal', @MembresiaD='',@MembresiaA='', @SocioD='',@SocioA='',@Estatus=''
 
   
 
/**************** SPCatalogodeSociosconEstatusporTipo ****************/
if exists (select * from sysobjects where id = object_id('dbo.SPCatalogodeSociosconEstatusporTipo') and type = 'P') drop procedure dbo.SPCatalogodeSociosconEstatusporTipo
GO
CREATE PROCEDURE SPCatalogodeSociosconEstatusporTipo
@Tipo	VARCHAR (15),
@MembresiaD VARCHAR (100),
@MembresiaA VARCHAR (100),
@SocioD VARCHAR(100),
@SocioA VARCHAR(100),
@Estatus VARCHAR (15)

AS BEGIN
	
		IF UPPER(@SocioD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @SocioD = NULL
		IF UPPER(@SocioA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @SocioA = NULL
		IF UPPER(@MembresiaD) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaD =NULL
		IF UPPER(@MembresiaA) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @MembresiaA = NULL
		IF UPPER(@Tipo) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Tipo = NULL
		IF UPPER(@Estatus) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Estatus = NULL
    
	SELECT Membresia, Socio,ClaveIntelisis=cliente, PersonalNombres, PersonalApellidoPaterno, PersonalApellidoMaterno,  Estatus, Tipo 
  FROM cte WHERE CDISocio =1  
  AND ISNULL(Tipo,'') = ISNULL(ISNULL(@Tipo,Tipo),'')
  AND ISNULL(Membresia,'') BETWEEN ISNULL(ISNULL(@MembresiaD, Membresia),'')  AND ISNULL(ISNULL(@MembresiaA, Membresia),'')
  AND ISNULL(Socio,'') BETWEEN ISNULL(ISNULL(@SocioD, Socio),'') AND ISNULL (ISNULL(@SocioA, Socio),'') 
   AND ISNULL(Estatus,'') = ISNULL(ISNULL(@Estatus,Estatus),'')
	ORDER BY Membresia, Socio

   END

GO