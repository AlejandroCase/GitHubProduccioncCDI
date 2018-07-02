/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

if exists (select * from sysobjects where id = object_id('dbo.tgCDICEPlanValida') and sysstat & 0xf = 8) drop trigger dbo.tgCDICEPlanValida
GO
CREATE TRIGGER tgCDICEPlanValida ON CEPlan
--//WITH ENCRYPTION
FOR INSERT, UPDATE
AS BEGIN
  DECLARE
    @CEPlan					CHAR(10),
    @Coordinacion			VARCHAR(50),
    @CDIComite				VARCHAR(50),
    @CDIClavePresupuestal	VARCHAR(50),
    @CDIConcepto			VARCHAR(50),
    @Mensaje				varchar(255),
    @Bandera				BIT,
    @Precio					VARCHAR (50)
    

IF UPPER(@CEPlan) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')					SELECT @CEPlan = NULL
IF UPPER(@Coordinacion) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')			SELECT @Coordinacion = NULL
IF UPPER(@CDIComite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')				SELECT @CDIComite = NULL
IF UPPER(@CDIClavePresupuestal) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')	SELECT @CDIClavePresupuestal = NULL
IF UPPER(@CDIConcepto) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ')				SELECT @CDIConcepto = NULL
IF UPPER(@Precio) IN ('', NULL,' ')													SELECT @Precio = NULL

  SELECT @CEPlan					= CEPlan, 
         @Coordinacion              = ISNULL( Coordinacion,''), 
         @CDIComite					= isnull(CDIComite, ''), 
         @CDIClavePresupuestal		= ISNULL(CDIClavepresupuestal,''),
         @CDIConcepto				= ISNULL (CDIConcepto,''),
         @Precio					= ISNULL (Precio,NULL)
    FROM INSERTED
    
    
  SELECT @Bandera=0 
  
  SELECT @Mensaje = 'Para el curso '
  SELECT @Mensaje = @Mensaje + @CEPlan
  SELECT @Mensaje = @Mensaje + ' son Obligatorios los campos: '

--SELECT @Mensaje
	 BEGIN
  		IF @Coordinacion = ''
  		  SELECT @Mensaje = @Mensaje + 'Coordinación, ' , @Bandera=1
  		IF @CDIComite = ''
  		  SELECT @Mensaje = @Mensaje + 'Comite, ', @Bandera=1
  		IF @CDIClavePresupuestal = ''
  		  SELECT @Mensaje = @Mensaje + 'Clave Presupuestal, ', @Bandera=1
  		IF @CDIConcepto = ''
  			SELECT @Mensaje = @Mensaje + 'Concepto, ', @Bandera=1
  		IF @Precio IS NULL
  			SELECT @Mensaje = @Mensaje + 'Precio, ', @Bandera=1
		IF @Bandera=1
  		BEGIN         
			RAISERROR (@Mensaje,16,-1) 
		END 
	 END
	 
 
END

GO