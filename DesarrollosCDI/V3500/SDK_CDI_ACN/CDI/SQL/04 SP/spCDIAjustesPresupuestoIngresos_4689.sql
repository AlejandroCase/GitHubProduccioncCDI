SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

  -- Desarrollo. AJUSTES AL PRESUPUESTOS DE INGRESOS
  -- Cliente   . CDI
  -- Folio     . 4689
  -- Fecha     . 01 / 12 / 10
  -- Autor     . EDER MENDOZA

		
-----------------------------------------------------------------------------------------
-------- S P C D I R E P A J U S T E S P R E S U P U E S T O I N G R E S O S ------------
-----------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepAjustesPresupuestoIngresos') AND type = 'P') DROP PROCEDURE dbo.spCDIRepAjustesPresupuestoIngresos
GO

CREATE PROCEDURE spCDIRepAjustesPresupuestoIngresos
    	  @Empresa			varchar(5),		  
		  @Proyecto			varchar(50),  
   		  @PeriodoD			int,	
		  @PeriodoA			int,
		  @Ejercicio		int,	
          @Concepto			varchar(50) 
AS
BEGIN   

  CREATE TABLE #AjustesAlPresupuestoIngresos
  (	
   ID					int	IDENTITY(1,1) NOT NULL,	   
   Mov					varchar(20),
   MovID				varchar(20),
   EmpresaCDI			varchar(5),	   
   Concepto				varchar(50)		  NULL,
   DescripcionProy		varchar(100),	
   Comite				varchar(50),
   Tipo					varchar(50),
   PresupuestoInicial	money,  
   AjustePresupuesto	money,
   PresupuestoAjustado	money   	   
   )


  IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL 

  INSERT INTO #AjustesAlPresupuestoIngresos
  SELECT V.Mov,	V.MovID,	V.Empresa,	ISNULL(V.Concepto,''),	P.Descripcion,	ISNULL(V.Proyecto,'SIN PROYECTO'),	'Presupuesto Inicial',
		 ISNULL(V.Subtotal,0) * MT1.Factor AS PresupuestoInicial,	
         0.00                              AS AjustePresupuesto,	
         0.00                              AS PresupuestoAjustado
    FROM VentaTCalc V
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov
   LEFT JOIN Proy P
      ON P.Proyecto = V.Proyecto
   WHERE V.Empresa             = @Empresa
     AND V.Periodo            >= @PeriodoD
     AND V.Periodo            <= @PeriodoA
     AND V.Ejercicio           = @Ejercicio
     AND ISNULL(V.Proyecto,'') = ISNULL(ISNULL(@Proyecto,V.Proyecto),'')      
     AND ISNULL(V.Concepto,'') = 'Presupuesto Inicial' --''
     AND V.Estatus			   = 'CONCLUIDO'     
   UNION ALL 
  SELECT V.Mov,	V.MovID,	V.Empresa,	ISNULL(V.Concepto,''),	P.Descripcion,	ISNULL(V.Proyecto,'SIN PROYECTO'),	'Ajuste',
	     0.00                              AS PresupuestoInicial,	
         ISNULL(V.Subtotal,0) * MT1.Factor AS AjustePresupuesto,	
         0.00                              AS PresupuestoAjustado
    FROM VentaTCalc V
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov
    LEFT JOIN Proy P
      ON P.Proyecto = V.Proyecto
   WHERE V.Empresa             = @Empresa
     AND V.Periodo            >= @PeriodoD
     AND V.Periodo            <= @PeriodoA
     AND V.Ejercicio           = @Ejercicio
     AND ISNULL(V.Proyecto,'') = ISNULL(ISNULL(@Proyecto,V.Proyecto),'')      
     AND ISNULL(V.Concepto,'') = 'Ajuste Presupuesto' --@Concepto   
     AND V.Estatus             = 'CONCLUIDO'
   UNION ALL 
  SELECT V.Mov,	V.MovID,	V.Empresa,	V.Concepto,	P.Descripcion,	ISNULL(V.Proyecto,'SIN PROYECTO'),	'Presupuesto Ajustado',
		 0.00                              AS PresupuestoInicial,	
         0.00                              AS AjustePresupuesto,	
         ISNULL(V.Subtotal,0) * MT1.Factor AS PresupuestoAjustado
    FROM VentaTCalc V
   INNER JOIN MovTipo MT1
      ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov
    LEFT JOIN Proy P
      ON P.Proyecto = V.Proyecto
   WHERE V.Empresa             = @Empresa
     AND V.Periodo            >= @PeriodoD
     AND V.Periodo            <= @PeriodoA
     AND V.Ejercicio           = @Ejercicio
     AND ISNULL(V.Proyecto,'') = ISNULL(ISNULL(@Proyecto,V.Proyecto),'')      
     AND V.Estatus             = 'CONCLUIDO'       
  --SELECT * FROM #AjustesAlPresupuestoIngresos  
     
  SELECT EmpresaCDI, Comite, DescripcionProy, 
         SUM(ISNULL(PresupuestoInicial,0))  AS PresupuestoInicial,
         SUM(ISNULL(AjustePresupuesto,0))   AS AjusteAlPresupuesto,
         SUM(ISNULL(PresupuestoAjustado,0)) AS PresupuestoAsignado
    FROM #AjustesAlPresupuestoIngresos 
   GROUP BY EmpresaCDI, Comite, DescripcionProy
   ORDER BY EmpresaCDI, Comite

RETURN 
END
GO
--EXEC spCDIRepAjustesPresupuestoIngresos 'DEMO', '', 1, 12, 2010, 'Ajuste'