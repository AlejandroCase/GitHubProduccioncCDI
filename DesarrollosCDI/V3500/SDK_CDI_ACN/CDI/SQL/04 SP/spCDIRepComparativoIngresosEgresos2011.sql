SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

		
---------------------------------------------------------------------------------
----------- SP CDI REPORTE COMPARATIVO INGRESOS Y EGRESOS DEL 2011 --------------
---------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sysobjects WHERE ID = object_id('dbo.spCDIRepComparativoIngresosEgresos2011') AND type = 'P') DROP PROCEDURE dbo.spCDIRepComparativoIngresosEgresos2011
GO

CREATE PROCEDURE spCDIRepComparativoIngresosEgresos2011    
				@Empresa	varchar(5),    
				@Proyecto	varchar(50),    
				@Periodo	int,    
				@Ejercicio	int,    
				@Desglosar	varchar(5)    
AS    
BEGIN    
DECLARE @FechaL	varchar(25),    
		@Fecha	datetime,    
		@Dia	INT
		    
CREATE TABLE #ComparativoIE    
(    
ID						int IDENTITY	(1,1) NOT NULL,    
Mov						VARCHAR			(20),    
MovID					VARCHAR			(20),    
EmpresaCDI				VARCHAR			(5),    
Comite					VARCHAR			(50),    
DescripcionProy			VARCHAR			(100),  
Rama					VARCHAR			(20),    
ClavePresupuestal		VARCHAR			(50),    
DescripcionCP			VARCHAR			(255),    
Tipo					VARCHAR			(50),    
PresupuestoEjercido		money,    
EjercidoTeorico			money,    
EjercidoAFecha			money,    
PresupuestoEjercido2	money,    
EjercidoTeorico2		money,    
EjercidoAFecha2			money,    
)    
IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  SELECT @Proyecto = NULL    
SELECT @FechaL  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)    
SELECT @Fecha   = CONVERT(datetime,@FechaL)    
SELECT @Fecha   = DATEADD (mm,1,@Fecha)    
SELECT @Fecha   = DATEDIFF(dd,1,@Fecha)    
SELECT @Dia     = DATEPART(dd,@Fecha)    
INSERT INTO #ComparativoIE    
  
SELECT V.Mov, V.MovID, UPPER(V.Empresa), ISNULL(c2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, VD.CDIClavePresupuestal, ISNULL(Cl.Descripcion,'SIN CLAVE'), 'INGRESOS 1',    
		ISNULL(V.Subtotal,0) * MT1.Factor AS PresupuestoEjercido,    
		0.00                              AS EjercidoTeorico,    
		0.00                              AS EjercidoAFecha,    
		0.00                              AS PresupuestoEjercido2,     
		0.00                              AS EjercidoTeorico2,      
		0.00                              AS EjercidoAFecha2      
FROM VentaTCalc V    
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov    
INNER JOIN VentaD VD ON VD.ID = V.ID AND VD.Renglon = V.Renglon    
LEFT JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = VD.CDIClavePresupuestal
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = VD.CDIClavePresupuestal  
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto
WHERE V.Empresa               = @Empresa    
AND V.Ejercicio             = @Ejercicio    
AND ISNULL(c2.Proyecto,'')   = ISNULL(ISNULL(@Proyecto,c2.Proyecto),'')    
AND ISNULL(VD.CDIClavePresupuestal,'') <> ''    
AND V.Estatus    = 'CONCLUIDO'  
  
UNION ALL    
SELECT V.Mov, V.MovID, UPPER(V.Empresa), ISNULL(c2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, VD.CDIClavePresupuestal, ISNULL(Cl.Descripcion,'SIN CLAVE'), 'INGRESOS 2',    
		0.00                              AS PresupuestoEjercido,    
		ISNULL(V.Subtotal,0) * MT1.Factor AS EjercidoTeorico,    
		0.00                              AS EjercidoAFecha,    
		0.00                              AS PresupuestoEjercido2,     
		0.00                              AS EjercidoTeorico2,      
		0.00                              AS EjercidoAFecha2      
FROM VentaTCalc V    
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov    
INNER JOIN VentaD VD ON VD.ID = V.ID AND VD.Renglon = V.Renglon    
LEFT JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = VD.CDIClavePresupuestal 
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = VD.CDIClavePresupuestal   
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto 
WHERE V.Empresa             = @Empresa    
AND V.Periodo            >= 1    
AND V.Periodo            <= @Periodo    
AND V.Ejercicio           = @Ejercicio    
AND ISNULL(c2.Proyecto,'') = ISNULL(ISNULL(@Proyecto,c2.Proyecto),'')    
AND ISNULL(VD.CDIClavePresupuestal,'') <> ''    
AND V.Estatus     = 'CONCLUIDO'  
  
UNION ALL    
SELECT V.Mov, V.MovID, UPPER(V.Empresa), ISNULL(c2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, VD.CDIClavePresupuestal, ISNULL(Cl.Descripcion,'SIN CLAVE'), 'INGRESOS 3',    
		0.00                              AS PresupuestoEjercido,    
		0.00                              AS EjercidoTeorico,    
		ISNULL(V.Subtotal,0) * MT1.Factor AS EjercidoAFecha,    
		0.00                              AS PresupuestoEjercido2,     
		0.00          AS EjercidoTeorico2,      
		0.00                              AS EjercidoAFecha2      
FROM VentaTCalc V    
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.F' AND MT1.Mov = V.Mov    
INNER JOIN VentaD VD ON VD.ID = V.ID AND VD.Renglon = V.Renglon       
LEFT JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = VD.CDIClavePresupuestal
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = VD.CDIClavePresupuestal   
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto
WHERE V.Empresa             = @Empresa    
AND V.Periodo            >= 1    
AND V.Periodo            <= @Periodo    
AND V.Ejercicio           = @Ejercicio    
AND ISNULL(c2.Proyecto,'') = ISNULL(ISNULL(@Proyecto,c2.Proyecto),'')    
AND ISNULL(VD.CDIClavePresupuestal,'') <> ''   
AND V.Estatus     = 'CONCLUIDO'   
  
UNION ALL    
SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 1 y 2',    
		0.00                              AS PresupuestoEjercido,    
		0.00                              AS EjercidoTeorico,    
		0.00         AS EjercidoAFecha,    
		ISNULL(CD.Importe,0) * MT1.Factor AS PresupuestoEjercido2,     
		0.00         AS EjercidoTeorico2,      
		0.00                              AS EjercidoAFecha2      
FROM CP C    
INNER JOIN CPD CD ON CD.ID = C.ID    
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = CD.ClavePresupuestal   
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = CD.ClavePresupuestal   
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto  
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''   
AND CD.Tipo     = 'Ampliacion'   
  
UNION ALL  
SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 1 y 2',    
		0.00         AS PresupuestoEjercido,    
		0.00         AS EjercidoTeorico,    
		0.00         AS EjercidoAFecha,    
		(ISNULL(CD.Importe,0)*-1) * MT1.Factor AS PresupuestoEjercido2,     
		0.00         AS EjercidoTeorico2,      
		0.00         AS EjercidoAFecha2      
FROM CP C    
INNER JOIN CPD CD ON CD.ID = C.ID    
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = CD.ClavePresupuestal   
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = CD.ClavePresupuestal   
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''   
AND CD.Tipo     = 'Reduccion'   
  
UNION ALL  
SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 1 y 2',    
		0.00        AS PresupuestoEjercido,    
		0.00        AS EjercidoTeorico,    
		0.00        AS EjercidoAFecha,    
		0.00        AS PresupuestoEjercido2,     
		ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)) FROM CPCal CC WHERE CC.Tipo = 'Ampliacion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio),0) AS EjercidoTeorico2, 
		0.00        AS EjercidoAFecha2      
FROM CP C    
INNER JOIN CPD CD ON CD.ID = C.ID    
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = CD.ClavePresupuestal   
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Ampliacion'  
  
UNION ALL  
SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 1 y 2',    
		0.00        AS PresupuestoEjercido,    
		0.00        AS EjercidoTeorico,    
		0.00        AS EjercidoAFecha,    
		0.00        AS PresupuestoEjercido2,     
		ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)*-1) FROM CPCal CC WHERE CC.Tipo = 'Reduccion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio),0) AS EjercidoTeorico2,
		0.00        AS EjercidoAFecha2      
FROM CP C    
INNER JOIN CPD CD ON CD.ID = C.ID    
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = CD.ClavePresupuestal   
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Reduccion'  
  
UNION ALL    
SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 3',    
		0.00                              AS PresupuestoEjercido,    
		0.00                              AS EjercidoTeorico,    
		0.00          AS EjercidoAFecha,    
		0.00                              AS PresupuestoEjercido2,     
		0.00                              AS EjercidoTeorico2,      
		SUM(ISNULL(cd.Comprometido,0)) +SUM(ISNULL(cd.Comprometido2,0))+SUM(ISNULL(CD.Devengado,0))+SUM(ISNULL(CD.Devengado2,0))+SUM(ISNULL(cd.Ejercido,0))+SUM(ISNULL(cd.EjercidoPagado,0)) * MT1.Factor AS EjercidoAFecha2  
		--ISNULL(CD.Ejercido,0)* MT1.Factor AS EjercidoAFecha2      
FROM CP C    
INNER JOIN CPD CD ON CD.ID = C.ID    
INNER JOIN MovTipo MT1 ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl ON CL.ClavePresupuestal = CD.ClavePresupuestal   
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Periodo             >= 1    
AND C.Periodo             <= @Periodo    
AND C.Ejercicio   = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
------ Modificacion JM -------  
GROUP BY c.Mov, c.MovID, c.Empresa, c.Proyecto, p.Descripcion, c2.Proyecto, Cl.Rama, cd.ClavePresupuestal, cl.Descripcion, mt1.Factor  
  
IF @Desglosar = 'SI'    
SELECT EmpresaCDI, Comite, DescripcionProy, Rama, ClavePresupuestal, DescripcionCP,    
SUM(ISNULL(PresupuestoEjercido,0))  AS PresupuestoEjercido,    
SUM(ISNULL(EjercidoTeorico,0))   AS EjercidoTeorico,    
SUM(ISNULL(EjercidoAFecha,0))   AS EjercidoAFecha,    
SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0)) AS VariacionPesos,    
CASE WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) / SUM(ISNULL(EjercidoTeorico,0)) * 100 END AS VariacionPorcentaje,    
SUM(ISNULL(PresupuestoEjercido2,0)) AS PresupuestoEjercido2,    
SUM(ISNULL(EjercidoTeorico2,0))     AS EjercidoTeorico2,    
SUM(ISNULL(EjercidoAFecha2,0))      AS EjercidoAFecha2,    
SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0)) AS VariacionPesos2,    
CASE WHEN SUM(ISNULL(EjercidoTeorico2,0)) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0))) / SUM(ISNULL(EjercidoTeorico2,0)) * 100 END AS VariacionPorcentaje2,    
(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) - (SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0))) AS IngresosVSGastos,    
@Dia AS UltimoDiaPeriodo    
FROM #ComparativoIE    
GROUP BY EmpresaCDI, Comite, DescripcionProy, Rama, ClavePresupuestal, DescripcionCP   
ORDER BY EmpresaCDI, Comite, Rama, ClavePresupuestal    
  
ELSE    
SELECT EmpresaCDI, Comite, DescripcionProy ,    
SUM(ISNULL(PresupuestoEjercido,0))  AS PresupuestoEjercido,    
SUM(ISNULL(EjercidoTeorico,0))  AS EjercidoTeorico,    
SUM(ISNULL(EjercidoAFecha,0))  AS EjercidoAFecha,    
SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0)) AS VariacionPesos,    
CASE WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) / SUM(ISNULL(EjercidoTeorico,0)) * 100 END AS VariacionPorcentaje,    
SUM(ISNULL(PresupuestoEjercido2,0)) AS PresupuestoEjercido2,    
SUM(ISNULL(EjercidoTeorico2,0))     AS EjercidoTeorico2,    
SUM(ISNULL(EjercidoAFecha2,0))      AS EjercidoAFecha2,    
SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0)) AS VariacionPesos2,    
CASE WHEN SUM(ISNULL(EjercidoTeorico2,0)) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) / SUM(ISNULL(EjercidoTeorico2,0)) * 100 END AS VariacionPorcentaje2,    
(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) - (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) AS IngresosVSGastos,    
@Dia AS UltimoDiaPeriodo    
FROM #ComparativoIE    
GROUP BY EmpresaCDI, Comite, DescripcionProy    
ORDER BY EmpresaCDI, Comite    
RETURN    
END    
GO
  
  
--EXEC spCDIRepComparativoIngresosEgresos2011 'CDI', 'Socios', 9, 2011, 'si'