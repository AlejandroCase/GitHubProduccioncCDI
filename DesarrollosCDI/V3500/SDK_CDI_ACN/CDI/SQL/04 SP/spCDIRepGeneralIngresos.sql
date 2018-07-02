SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

		
-------------------------------------------------------------------------
------------------ SP CDI REPORTE GENERAL DE INGRESOS -------------------
-------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepGeneralIngresos') AND type = 'P') DROP PROCEDURE dbo.spCDIRepGeneralIngresos
GO

CREATE PROCEDURE spCDIRepGeneralIngresos  
				@Empresa	varchar(5),  
				@Proyecto   varchar(50),  
				@Periodo	FLOAT,  
				@Ejercicio  FLOAT  
AS  
BEGIN  
DECLARE			@FechaL varchar(25),  
				@Fecha DATETIME,  
				@Dia  int  
				
CREATE TABLE #GeneralIngresos  
(  
ID					int IDENTITY(1,1) NOT NULL,  
Mov					varchar(20),  
MovID				varchar(20),  
EmpresaCDI			varchar(5),  
Comite				varchar(50),  
DescripcionProy		varchar(100),  
ClavePresupuestal	varchar(50),
DescripcionCP		varchar(255),
Tipo				varchar(50),  
PresupuestoTotal	money,  
EjercidoTeorico		money,  
EjercidoAFecha		money,  
)  

SELECT @Fecha   = DATEADD (mm,1,@Fecha)  
SELECT @Fecha   = DATEDIFF(dd,1,@Fecha)  
SELECT @Dia     = DATEPART(dd,@Fecha)  
IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL
INSERT INTO #GeneralIngresos
SELECT V.Mov, V.MovID, V.Empresa, ISNULL(V.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), VD.CDIClavePresupuestal, ISNULL(Cl.Descripcion,'SIN CLAVE'), 'INGRESOS 1',  
		ISNULL(V.Subtotal,0) * MT1.Factor AS PresupuestoTotal,  
		0.00                              AS EjercidoTeorico,  
		0.00                              AS EjercidoAFecha  
FROM VentaTCalc V  
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov  
INNER JOIN VentaD VD ON VD.ID = V.ID AND VD.Renglon = V.Renglon  
LEFT JOIN Proy P ON P.Proyecto = V.Proyecto  
LEFT JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = VD.CDIClavePresupuestal  
WHERE V.Empresa               = @Empresa  
AND V.Ejercicio             = @Ejercicio  
AND ISNULL(V.Proyecto,'')   = ISNULL(ISNULL(@Proyecto,V.Proyecto),'')  
AND ISNULL(VD.CDIClavePresupuestal,'') <> ''  
AND V.Estatus				= 'CONCLUIDO'
UNION ALL  
SELECT V.Mov, V.MovID, V.Empresa, ISNULL(V.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), VD.CDIClavePresupuestal, ISNULL(Cl.Descripcion,'SIN CLAVE'), 'INGRESOS 2',  
		0.00                              AS PresupuestoTotal,  
		ISNULL(V.Subtotal,0) * MT1.Factor AS EjercidoTeorico,  
		0.00                              AS EjercidoAFecha  
FROM VentaTCalc V  
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov  
INNER JOIN VentaD VD ON VD.ID = V.ID AND VD.Renglon = V.Renglon  
LEFT JOIN Proy P ON P.Proyecto = V.Proyecto  
LEFT JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = VD.CDIClavePresupuestal  
WHERE V.Empresa             = @Empresa  
AND V.Periodo            >= 1  
AND V.Periodo            <= @Periodo  
AND V.Ejercicio           = @Ejercicio  
AND ISNULL(V.Proyecto,'') = ISNULL(ISNULL(@Proyecto,V.Proyecto),'')  
AND ISNULL(VD.CDIClavePresupuestal,'') <> ''  
AND V.Estatus			  = 'CONCLUIDO'
UNION ALL  
SELECT V.Mov, V.MovID, V.Empresa, ISNULL(V.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), VD.CDIClavePresupuestal, ISNULL(Cl.Descripcion,'SIN CLAVE'), 'INGRESOS 3',  
		0.00                              AS PresupuestoTotal,  
		0.00                              AS EjercidoTeorico,  
		ISNULL(V.Subtotal,0) * MT1.Factor AS EjercidoAFecha     
FROM VentaTCalc V  
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.F' AND MT1.Mov = V.Mov  
INNER JOIN VentaD VD ON VD.ID = V.ID AND VD.Renglon = V.Renglon  
LEFT JOIN Proy P ON P.Proyecto = V.Proyecto  
LEFT JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = VD.CDIClavePresupuestal  
WHERE V.Empresa             = @Empresa  
AND V.Periodo            >= 1  
AND V.Periodo            <= @Periodo  
AND V.Ejercicio           = @Ejercicio  
AND ISNULL(V.Proyecto,'') = ISNULL(ISNULL(@Proyecto,V.Proyecto),'')  
AND ISNULL(VD.CDIClavePresupuestal,'') <> '' 
AND V.Estatus			  = 'CONCLUIDO' 

SELECT EmpresaCDI, Comite, DescripcionProy,
SUM(ISNULL(PresupuestoTotal,0))  AS PresupuestoTotal,  
SUM(ISNULL(EjercidoTeorico,0))   AS EjercidoTeorico,  
SUM(ISNULL(EjercidoAFecha,0))   AS EjercidoAFecha,  
SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0)) AS VariacionPesos,  
(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) / SUM(ISNULL(EjercidoTeorico,0)) * 100 AS VariacionPorcentaje,
SUM(ISNULL(PresupuestoTotal,0)) - SUM(ISNULL(EjercidoAFecha,0)) AS PorEjercer,
@Dia AS UltimoDiaPeriodo  
FROM #GeneralIngresos
GROUP BY EmpresaCDI, Comite, DescripcionProy  
ORDER BY EmpresaCDI, Comite
RETURN
END  
GO



--EXEC spCDIRepGeneralIngresos 'cdi', '', 7, 2011