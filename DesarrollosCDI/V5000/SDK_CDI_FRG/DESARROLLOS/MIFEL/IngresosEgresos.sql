sp_helptext spCDIRepComparativoIngresosEgresos 
EXEC spCDIRepComparativoIngresosEgresos 'CDI','ACTIVIDADES',1,2018,'NO'
EXEC spCDIRepComparativoIngresosEgresos 'CDI','ACTIVIDADES',1,2017,'SI'
EXEC spCDIRepComparativoIngresosEgresos '{Empresa}', '{Info.Proyecto}', {Info.Periodo}, {Info.Ejercicio}, '{Info.Desglosar}'
  
spCDIRepComparativoInEgreEjercicio 'CDI','ACTIVIDADES',1,2017,2018,'NO'


SET DATEFIRST 7        
SET ANSI_NULLS OFF        
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED        
SET LOCK_TIMEOUT -1        
SET QUOTED_IDENTIFIER OFF  
GO  

CREATE PROCEDURE spCDIRepComparativoInEgreEjercicio    

@Empresa   varchar(5),    
@Proyecto   varchar(50),    
@Periodo   int,    
@Ejercicio  int,    
@Ejercicio2  int,
@Desglosar  varchar(5)    
AS    
BEGIN    
--*/
DECLARE @FechaL varchar(25),    
@Fecha datetime,    
@Dia  int    ,
@FechaL2 varchar(25),    
@Fecha2 datetime,    
@Dia2  int    

/*
,
@Empresa   varchar(5)   ='CDI' ,
@Proyecto   varchar(50)='ACTIVIDADES',    
@Periodo   int = 1,    
@Ejercicio  int=2017,
@Ejercicio2  int=2018,        
@Desglosar  varchar(5)='Si'   
--*/

CREATE TABLE #ComparativoIE   
(    
ID     int IDENTITY(1,1) NOT NULL,    
Mov     varchar(20),    
MovID    varchar(20),    
EmpresaCDI   varchar(5),    
Comite    varchar(50),    
DescripcionProy  varchar(100),    
Rama     VARCHAR(20),    
ClavePresupuestal varchar(50),    
DescripcionCP  varchar(255),    
Tipo     varchar(50),    
PresupuestoEjercido MONEY,    
EjercidoTeorico  MONEY,    
EjercidoAFecha  MONEY,    
PresupuestoEjercido2 MONEY,    
EjercidoTeorico2  MONEY,    
EjercidoAFecha2  MONEY, 
Ejercicio1 INT   
)

CREATE TABLE #ComparativoIEPer2  
(    
ID     int IDENTITY(1,1) NOT NULL,    
Mov     varchar(20),    
MovID    varchar(20),    
EmpresaCDI   varchar(5),    
Comite    varchar(50),    
DescripcionProy  varchar(100),    
Rama     VARCHAR(20),    
ClavePresupuestal varchar(50),    
DescripcionCP  varchar(255),    
Tipo     varchar(50),    
PresupuestoEjercido MONEY,    
EjercidoTeorico  MONEY,    
EjercidoAFecha  MONEY,    
PresupuestoEjercido2 MONEY,    
EjercidoTeorico2  MONEY,    
EjercidoAFecha2  MONEY,
Ejercicio2 int     
)

CREATE TABLE #ComparativoIEPer3  
(    
Ejercicio INT,
EmpresaCDI   varchar(5) NULL,    
Comite    varchar(50) NULL,    
DescripcionProy  varchar(100) NULL,    
Rama     VARCHAR(20)NULL,    
ClavePresupuestal varchar(50)NULL,    
DescripcionCP  varchar(255)NULL,    
E1PresupuestoEjercido1 MONEY NULL,    
E1EjercidoTeorico1  MONEY NULL,    
E1EjercidoAFecha1  MONEY NULL, 
E1VariacionPesos	MONEY NULL,
E1VariacionPorcentaje	MONEY NULL,
E1PresupuestoEjercido21 MONEY NULL,    
E1EjercidoTeorico21  MONEY NULL,    
E1EjercidoAFecha21  MONEY NULL,    
E1VariacionPesos2 MONEY NULL, 
E1VariacionPorcentaje2 MONEY NULL, 	
E1IngresosVSGastos MONEY NULL, 
E1UltimoDiaPeriodo INT NULL,

E2PresupuestoEjercido1 MONEY NULL,    
E2EjercidoTeorico1  MONEY NULL,    
E2EjercidoAFecha1  MONEY NULL, 
E2VariacionPesos	MONEY NULL,
E2VariacionPorcentaje	MONEY NULL,
E2PresupuestoEjercido21 MONEY NULL,    
E2EjercidoTeorico21  MONEY NULL,    
E2EjercidoAFecha21  MONEY NULL,    
E2VariacionPesos2 MONEY NULL, 
E2VariacionPorcentaje2 MONEY NULL, 	
E2IngresosVSGastos MONEY NULL, 
E2UltimoDiaPeriodo INT NULL


)




IF @Proyecto IS NULL OR @Proyecto = ' ' OR @Proyecto = 'NULL' OR @Proyecto = 'Todo' OR @Proyecto = 'Todos' OR @Proyecto = '(Todos)'  
SELECT @Proyecto = NULL    
SELECT @FechaL  = CONVERT(varchar(4),@Ejercicio) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)    
SELECT @Fecha   = CONVERT(datetime,@FechaL)    
SELECT @Fecha   = DATEADD (mm,1,@Fecha)    
SELECT @Fecha   = DATEDIFF(dd,1,@Fecha)    
SELECT @Dia     = DATEPART(dd,@Fecha)    



SELECT @FechaL2  = CONVERT(varchar(4),@Ejercicio2) + RIGHT('00' + CONVERT(varchar(2),@Periodo),2) + RIGHT('00' + CONVERT(varchar(2),1),2)  
SELECT @Fecha2   = CONVERT(datetime,@FechaL2)    
SELECT @Fecha2   = DATEADD (mm,1,@Fecha2) 
SELECT @Fecha2   = DATEDIFF(dd,1,@Fecha2) 
SELECT @Dia2     = DATEPART(dd,@Fecha2)  



INSERT INTO #ComparativoIE    (
Mov ,MovID,EmpresaCDI,Comite,DescripcionProy,Rama,ClavePresupuestal,DescripcionCP,Tipo,PresupuestoEjercido,EjercidoTeorico,EjercidoAFecha,
PresupuestoEjercido2,EjercidoTeorico2,EjercidoAFecha2,Ejercicio1)
  
SELECT V.Mov, V.MovID, UPPER(V.Empresa), ISNULL(c2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, VD.CDIClavePresupuestal, ISNULL(Cl.Descripcion,'SIN CLAVE'), 'INGRESOS 1',    
ISNULL(V.Subtotal,0) * MT1.Factor AS PresupuestoEjercido,    
0.00                              AS EjercidoTeorico,    
0.00                              AS EjercidoAFecha,    
0.00                              AS PresupuestoEjercido2,     
0.00                              AS EjercidoTeorico2,      
0.00                              AS EjercidoAFecha2 
,V.Ejercicio 						AS Ejercicio	   
FROM VentaTCalc V    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov    
INNER JOIN VentaD VD    
ON VD.ID = V.ID AND VD.Renglon = V.Renglon    
LEFT JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = VD.CDIClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = VD.CDIClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
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
,V.Ejercicio 						AS Ejercicio	       
FROM VentaTCalc V    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov    
INNER JOIN VentaD VD    
ON VD.ID = V.ID AND VD.Renglon = V.Renglon    
LEFT JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = VD.CDIClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = VD.CDIClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE V.Empresa             = @Empresa    
AND V.Periodo            >= 1    
AND V.Periodo            <= @Periodo    
AND V.Ejercicio           = @Ejercicio    
AND ISNULL(c2.Proyecto,'') = ISNULL(ISNULL(@Proyecto,c2.Proyecto),'')    
AND ISNULL(VD.CDIClavePresupuestal,'') <> ''    
AND V.Estatus     = 'CONCLUIDO'    

UNION ALL    

SELECT c.Mov, c.MovID, UPPER(c.Empresa), ISNULL(c2.Proyecto,'SIN PROYECTO'), ISNULL(p.Descripcion,''), cp.Rama, co.CDIClavePresupuestal, ISNULL(cp.Descripcion,'SIN CLAVE'), 'INGRESOS 3',    
0.00                              AS PresupuestoEjercido,    
0.00                              AS EjercidoTeorico,    
ISNULL(mi.SubTotal,0) * isnull(m.Factor,0) * isnull(c.TipoCambio,0) AS EjercidoAFecha,    ---Fco agerego el isnull  a los campos m.Factor,c.TipoCambio  
0.00                              AS PresupuestoEjercido2,     
0.00                              AS EjercidoTeorico2,      
0.00                              AS EjercidoAFecha2  
,c.Ejercicio 						AS Ejercicio	     
FROM Cxc c LEFT JOIN CxcD cd ON cd.ID = c.ID    
LEFT JOIN MovImpuesto mi ON mi.Modulo = 'CXC' AND mi.ModuloID = cd.ID    
LEFT JOIN Cxc co on co.Mov = cd.Aplica AND co.MovID = cd.AplicaID    
LEFT JOIN ClavePresupuestal cp ON cp.ClavePresupuestal = co.CDIClavePresupuestal    
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = co.CDIClavePresupuestal    
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto    
LEFT JOIN MovTipo m on m.Mov = c.Mov AND m.Modulo = 'CXC'    
WHERE c.Empresa                 = @Empresa    
AND c.Periodo            >= 1    
AND c.Periodo            <= @Periodo    
AND c.Ejercicio           = @Ejercicio    
AND ISNULL(c2.Proyecto,'') = ISNULL(ISNULL(@Proyecto,c2.Proyecto),'')    
AND ISNULL(co.CDIClavePresupuestal,'') <> ''    
AND c.Estatus     = 'CONCLUIDO'    
AND m.Clave IN ('CXC.C', 'CXC.DC', 'CXC.ANC')    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama,   CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 1',    
0.00                              AS PresupuestoEjercido,    
0.00                              AS EjercidoTeorico,    
0.00         AS EjercidoAFecha,    
ISNULL(CD.Importe,0) * MT1.Factor AS PresupuestoEjercido2,     
0.00          AS EjercidoTeorico2,         
0.00                              AS EjercidoAFecha2      
,c.Ejercicio 						AS Ejercicio	   
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS'/*,'CP.TA'*/) AND MT1.Mov = C.Mov AND MT1.Mov IN ('Asignacion')    
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Ampliacion'   
 
UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 2',    
0.00        AS PresupuestoEjercido,    
0.00        AS EjercidoTeorico,    
0.00        AS EjercidoAFecha,    
0.00        AS PresupuestoEjercido2,    
ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)) FROM CPCal CC WHERE CC.Tipo = 'Ampliacion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio),0) AS EjercidoTeorico2, 
   
0.00        AS EjercidoAFecha2    
,C.Ejercicio 						AS Ejercicio	   
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13','Tr. de Mes 13','Mes 13')     
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Ampliacion'    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 2',    
0.00        AS PresupuestoEjercido,    
0.00        AS EjercidoTeorico,    
0.00        AS EjercidoAFecha,    
0.00        AS PresupuestoEjercido2,    
ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)*-1) FROM CPCal CC WHERE CC.Tipo = 'Reduccion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio),0) AS EjercidoTeorico2,
  
    
0.00        AS EjercidoAFecha2    
,C.Ejercicio 						AS Ejercicio	   
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13','Tr. de Mes 13','Mes 13')     
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Reduccion'    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama,   CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 2',    
0.00         AS PresupuestoEjercido,    
0.00         AS EjercidoTeorico,    
0.00         AS EjercidoAFecha,    
0.00         AS PresupuestoEjercido2,     
ISNULL(CD.Presupuesto,0) * MT1.Factor AS EjercidoTeorico2,         
0.00         AS EjercidoAFecha2   
,C.Ejercicio 						AS Ejercicio	    
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.OP') AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND C.Mov        = 'Traspaso Remanente'    
UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 3',    
0.00        AS PresupuestoEjercido,    
0.00        AS EjercidoTeorico,    
0.00        AS EjercidoAFecha,    
0.00        AS PresupuestoEjercido2,    
0.00     AS EjercidoTeorico2,    
ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)) FROM CPCal CC WHERE CC.Tipo = 'Ampliacion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio),0) *-1 AS EjercidoAFecha2
,C.Ejercicio 						AS Ejercicio	       
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS') AND MT1.Mov = C.Mov AND MT1.Mov IN ('Devoluciones')    
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Ampliacion'    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 3',    
0.00                              AS PresupuestoEjercido,    
0.00                              AS EjercidoTeorico,    
0.00         AS EjercidoAFecha,    
0.00                              AS PresupuestoEjercido2,     
0.00                              AS EjercidoTeorico2,      
SUM(ISNULL(cd.Comprometido,0)) +SUM(ISNULL(cd.Comprometido2,0))+SUM(ISNULL(CD.Devengado,0))+SUM(ISNULL(CD.Devengado2,0))+SUM(ISNULL(cd.Ejercido,0))+SUM(ISNULL(cd.EjercidoPagado,0)) * MT1.Factor AS EjercidoAFecha2    
,C.Ejercicio 						AS Ejercicio	   
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Periodo             >= 1    
AND C.Periodo             <= @Periodo    
AND C.Ejercicio   = @Ejercicio    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
GROUP BY C.Ejercicio,c.Mov, c.MovID, c.Empresa, c.Proyecto, p.Descripcion, c2.Proyecto, Cl.Rama, cd.ClavePresupuestal, cl.Descripcion, mt1.Factor    



  
INSERT INTO #ComparativoIEPer2    
  
  
SELECT V.Mov, V.MovID, UPPER(V.Empresa), ISNULL(c2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, VD.CDIClavePresupuestal, ISNULL(Cl.Descripcion,'SIN CLAVE'), 'INGRESOS 1',    
ISNULL(V.Subtotal,0) * MT1.Factor AS PresupuestoEjercido,    
0.00                              AS EjercidoTeorico,    
0.00                              AS EjercidoAFecha,    
0.00                              AS PresupuestoEjercido2,     
0.00                              AS EjercidoTeorico2,      
0.00                              AS EjercidoAFecha2  
,V.Ejercicio 						AS Ejercicio	   
FROM VentaTCalc V    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov    
INNER JOIN VentaD VD    
ON VD.ID = V.ID AND VD.Renglon = V.Renglon    
LEFT JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = VD.CDIClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = VD.CDIClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE V.Empresa               = @Empresa    
AND V.Ejercicio             = @Ejercicio2    
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
,V.Ejercicio 						AS Ejercicio	   
FROM VentaTCalc V    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'VTAS' AND MT1.Clave = 'VTAS.PR' AND MT1.Mov = V.Mov    
INNER JOIN VentaD VD    
ON VD.ID = V.ID AND VD.Renglon = V.Renglon    
LEFT JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = VD.CDIClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = VD.CDIClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE V.Empresa             = @Empresa    
AND V.Periodo            >= 1    
AND V.Periodo            <= @Periodo    
AND V.Ejercicio           = @Ejercicio2    
AND ISNULL(c2.Proyecto,'') = ISNULL(ISNULL(@Proyecto,c2.Proyecto),'')    
AND ISNULL(VD.CDIClavePresupuestal,'') <> ''    
AND V.Estatus     = 'CONCLUIDO'    

UNION ALL    

SELECT c.Mov, c.MovID, UPPER(c.Empresa), ISNULL(c2.Proyecto,'SIN PROYECTO'), ISNULL(p.Descripcion,''), cp.Rama, co.CDIClavePresupuestal, ISNULL(cp.Descripcion,'SIN CLAVE'), 'INGRESOS 3',    
0.00                              AS PresupuestoEjercido,    
0.00                              AS EjercidoTeorico,    
ISNULL(mi.SubTotal,0) * isnull(m.Factor,0) * isnull(c.TipoCambio,0) AS EjercidoAFecha,    ---Fco agerego el isnull  a los campos m.Factor,c.TipoCambio  
0.00                              AS PresupuestoEjercido2,     
0.00                              AS EjercidoTeorico2,      
0.00                              AS EjercidoAFecha2      
,C.Ejercicio 						AS Ejercicio	  
FROM Cxc c LEFT JOIN CxcD cd ON cd.ID = c.ID    
LEFT JOIN MovImpuesto mi ON mi.Modulo = 'CXC' AND mi.ModuloID = cd.ID    
LEFT JOIN Cxc co on co.Mov = cd.Aplica AND co.MovID = cd.AplicaID    
LEFT JOIN ClavePresupuestal cp ON cp.ClavePresupuestal = co.CDIClavePresupuestal    
LEFT JOIN CDICPProy c2 ON c2.ClavePresupuestal = co.CDIClavePresupuestal    
LEFT JOIN Proy p ON p.Proyecto = c2.Proyecto    
LEFT JOIN MovTipo m on m.Mov = c.Mov AND m.Modulo = 'CXC'    
WHERE c.Empresa                 = @Empresa    
AND c.Periodo            >= 1    
AND c.Periodo            <= @Periodo    
AND c.Ejercicio           = @Ejercicio2    
AND ISNULL(c2.Proyecto,'') = ISNULL(ISNULL(@Proyecto,c2.Proyecto),'')    
AND ISNULL(co.CDIClavePresupuestal,'') <> ''    
AND c.Estatus     = 'CONCLUIDO'    
AND m.Clave IN ('CXC.C', 'CXC.DC', 'CXC.ANC')    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama,   CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 1',    
0.00                              AS PresupuestoEjercido,    
0.00                              AS EjercidoTeorico,    
0.00         AS EjercidoAFecha,    
ISNULL(CD.Importe,0) * MT1.Factor AS PresupuestoEjercido2,     
0.00          AS EjercidoTeorico2,         
0.00                              AS EjercidoAFecha2      
,C.Ejercicio 						AS Ejercicio	  
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS'/*,'CP.TA'*/) AND MT1.Mov = C.Mov AND MT1.Mov IN ('Asignacion')    
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio2    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Ampliacion'    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 2',    
0.00        AS PresupuestoEjercido,    
0.00        AS EjercidoTeorico,    
0.00        AS EjercidoAFecha,    
0.00        AS PresupuestoEjercido2,    
ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)) FROM CPCal CC WHERE CC.Tipo = 'Ampliacion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio2),0) AS EjercidoTeorico2, 
   
0.00        AS EjercidoAFecha2    
,C.Ejercicio 						AS Ejercicio	  
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13','Tr. de Mes 13','Mes 13')     
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio2    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Ampliacion'    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 2',    
0.00        AS PresupuestoEjercido,    
0.00        AS EjercidoTeorico,    
0.00        AS EjercidoAFecha,    
0.00        AS PresupuestoEjercido2,    
ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)*-1) FROM CPCal CC WHERE CC.Tipo = 'Reduccion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio2),0) AS EjercidoTeorico2,
0.00        AS EjercidoAFecha2    
,C.Ejercicio 						AS Ejercicio	  
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS','CP.TA') AND MT1.Mov = C.Mov AND MT1.Mov NOT IN ('Cambio Proceso Mes13','Tr. de Mes 13','Mes 13')     
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio2    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Reduccion'    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama,   CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 2',    
0.00         AS PresupuestoEjercido,    
0.00         AS EjercidoTeorico,    
0.00         AS EjercidoAFecha,    
0.00         AS PresupuestoEjercido2,     
ISNULL(CD.Presupuesto,0) * MT1.Factor AS EjercidoTeorico2,         
0.00         AS EjercidoAFecha2      
,C.Ejercicio 						AS Ejercicio	  
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.OP') AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio2    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND C.Mov        = 'Traspaso Remanente'    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 3',    
0.00        AS PresupuestoEjercido,    
0.00        AS EjercidoTeorico,    
0.00        AS EjercidoAFecha,    
0.00        AS PresupuestoEjercido2,    
0.00     AS EjercidoTeorico2,    
ISNULL((SELECT SUM(ISNULL(CC.Importe,0.00)) FROM CPCal CC WHERE CC.Tipo = 'Ampliacion' AND CC.ID = C.ID AND CC.ClavePresupuestal = CD.ClavePresupuestal AND CC.Periodo >= 1 AND CC.Periodo <= @Periodo AND CC.Ejercicio = @Ejercicio2),0) *-1 AS EjercidoAFecha2
,C.Ejercicio 						AS Ejercicio	      
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave IN ('CP.AS') AND MT1.Mov = C.Mov AND MT1.Mov IN ('Devoluciones')    
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Ejercicio            = @Ejercicio2    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
AND CD.Tipo     = 'Ampliacion'    

UNION ALL    

SELECT C.Mov, C.MovID, UPPER(C.Empresa), ISNULL(C2.Proyecto,'SIN PROYECTO'), ISNULL(P.Descripcion,''), Cl.Rama, CD.ClavePresupuestal,   ISNULL(Cl.Descripcion,'SIN CLAVE'), 'EGRESOS 3',    
0.00                              AS PresupuestoEjercido,    
0.00                              AS EjercidoTeorico,    
0.00         AS EjercidoAFecha,    
0.00                              AS PresupuestoEjercido2,     
0.00                              AS EjercidoTeorico2,      
SUM(ISNULL(cd.Comprometido,0)) +SUM(ISNULL(cd.Comprometido2,0))+SUM(ISNULL(CD.Devengado,0))+SUM(ISNULL(CD.Devengado2,0))+SUM(ISNULL(cd.Ejercido,0))+SUM(ISNULL(cd.EjercidoPagado,0)) * MT1.Factor AS EjercidoAFecha2    
,c.Ejercicio    					AS Ejercicio
FROM CP C    
INNER JOIN CPD CD    
ON CD.ID = C.ID    
INNER JOIN MovTipo MT1    
ON MT1.Modulo = 'CP' AND MT1.Clave = 'CP.OP' AND MT1.Mov = C.Mov    
INNER JOIN ClavePresupuestal Cl    
ON CL.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN CDICPProy c2    
ON c2.ClavePresupuestal = CD.ClavePresupuestal    
LEFT JOIN Proy p    
ON p.Proyecto = c2.Proyecto    
WHERE C.Estatus              = 'CONCLUIDO'    
AND C.Empresa              = @Empresa    
AND C.Periodo             >= 1    
AND C.Periodo             <= @Periodo    
AND C.Ejercicio   =			@Ejercicio2    
AND ISNULL(C2.Proyecto,'')  = ISNULL(ISNULL(@Proyecto,C2.Proyecto),'')    
AND ISNULL(CD.ClavePresupuestal,'')<> ''    
GROUP BY C.Ejercicio,c.Mov, c.MovID, c.Empresa, c.Proyecto, p.Descripcion, c2.Proyecto, Cl.Rama, cd.ClavePresupuestal, cl.Descripcion, mt1.Factor    
   

INSERT INTO  #ComparativoIEPer3( Ejercicio,EmpresaCDI,Comite,DescripcionProy,Rama	,ClavePresupuestal,DescripcionCP)

SELECT Ejercicio, EmpresaCDI,Comite,DescripcionProy,Rama	,ClavePresupuestal,DescripcionCP  FROM (

SELECT  Ejercicio1 as Ejercicio , EmpresaCDI,Comite,DescripcionProy,Rama	,ClavePresupuestal,DescripcionCP  FROM #ComparativoIE
GROUP BY Ejercicio1 ,EmpresaCDI, Comite, DescripcionProy, Rama, ClavePresupuestal, DescripcionCP
UNION ALL
SELECT   Ejercicio2 as Ejercicio , EmpresaCDI,Comite,DescripcionProy,Rama	,ClavePresupuestal,DescripcionCP  FROM #ComparativoIEPer2
GROUP BY Ejercicio2,EmpresaCDI, Comite, DescripcionProy, Rama, ClavePresupuestal, DescripcionCP

) AS T1 ORDER BY   DescripcionCP,ClavePresupuestal 


  
IF @Desglosar = 'SI'    
   BEGIN


-------------------------------------------------------------------------------

DECLARE
---Tabla Ejercicio 1
--@Proyecto   varchar(50)='ACTIVIDADES', @Dia INT = 1 ,@Dia2 INT= 2 ,
@1EmpresaCDI varchar(5),@1Comite varchar(50),@1DescripcionProy  varchar(100),@1Rama VARCHAR(20), @1ClavePresupuestal varchar(50),@1DescripcionCP varchar(255),    
@1PresupuestoEjercido MONEY,@1EjercidoTeorico MONEY,@1EjercidoAFecha MONEY,@1VariacionPesos	MONEY,@1VariacionPorcentaje	MONEY,
@1PresupuestoEjercido2	MONEY,@1EjercidoTeorico2 MONEY,@1EjercidoAFecha2 MONEY,@1VariacionPesos2 MONEY,@1VariacionPorcentaje2 MONEY,
@1IngresosVSGastos MONEY,@1UltimoDiaPeriodo INT,

---Tabla Ejercicio 2

@2EmpresaCDI varchar(5),@2Comite varchar(50),@2DescripcionProy  varchar(100),@2Rama VARCHAR(20), @2ClavePresupuestal varchar(50),@2DescripcionCP varchar(255),    
@2PresupuestoEjercido MONEY,@2EjercidoTeorico MONEY,@2EjercidoAFecha MONEY,@2VariacionPesos	MONEY,@2VariacionPorcentaje	MONEY,
@2PresupuestoEjercido2	MONEY,@2EjercidoTeorico2 MONEY,@2EjercidoAFecha2 MONEY,@2VariacionPesos2 MONEY,@2VariacionPorcentaje2 MONEY,
@2IngresosVSGastos MONEY,@2UltimoDiaPeriodo INT



DECLARE @3EmpresaCDI varchar(5),@3Comite varchar(50),@3DescripcionProy  varchar(100),@3Rama VARCHAR(20), @3ClavePresupuestal varchar(50),@3DescripcionCP varchar(255),    
  
@3E1PresupuestoEjercido1 MONEY,@3E1EjercidoTeorico1  MONEY,@3E1EjercidoAFecha1  MONEY,@3E1VariacionPesos	MONEY,@3E1VariacionPorcentaje	MONEY,
@3E1PresupuestoEjercido21 MONEY,@3E1EjercidoTeorico21  MONEY,@3E1EjercidoAFecha21  MONEY,@3E1VariacionPesos2 MONEY, @3E1VariacionPorcentaje2 MONEY, 	
@3E1IngresosVSGastos MONEY, @3E1UltimoDiaPeriodo INT,

@3E2PresupuestoEjercido1 MONEY,@3E2EjercidoTeorico1  MONEY,@3E2EjercidoAFecha1  MONEY,@3E2VariacionPesos	MONEY,@3E2VariacionPorcentaje	MONEY,
@3E2PresupuestoEjercido21 MONEY,@3E2EjercidoTeorico21  MONEY,@3E2EjercidoAFecha21  MONEY,@3E2VariacionPesos2 MONEY,@3E2VariacionPorcentaje2 MONEY, 	
@3E2IngresosVSGastos MONEY,@3E2UltimoDiaPeriodo INT
DECLARE	actualiza cursor
FOR 

SELECT 
EmpresaCDI,Comite,DescripcionProy,Rama,ClavePresupuestal,DescripcionCP,

E1PresupuestoEjercido1,E1EjercidoTeorico1,E1EjercidoAFecha1,E1VariacionPesos,E1VariacionPorcentaje,
E1PresupuestoEjercido21,E1EjercidoTeorico21,E1EjercidoAFecha21,E1VariacionPesos2,E1VariacionPorcentaje2,
E1IngresosVSGastos,E1UltimoDiaPeriodo,

E2PresupuestoEjercido1,E2EjercidoTeorico1,E2EjercidoAFecha1,E2VariacionPesos,E2VariacionPorcentaje,
E2PresupuestoEjercido21,E2EjercidoTeorico21,E2EjercidoAFecha21,E2VariacionPesos2,E2VariacionPorcentaje2,
E2IngresosVSGastos,E2UltimoDiaPeriodo

FROM
 #ComparativoIEPer3 

OPEN actualiza
FETCH NEXT FROM actualiza INTO 
@3EmpresaCDI ,@3Comite ,@3DescripcionProy ,@3Rama, @3ClavePresupuestal,@3DescripcionCP,    
@3E1PresupuestoEjercido1 ,@3E1EjercidoTeorico1  ,@3E1EjercidoAFecha1  ,@3E1VariacionPesos	,@3E1VariacionPorcentaje	,
@3E1PresupuestoEjercido21 ,@3E1EjercidoTeorico21  ,@3E1EjercidoAFecha21  ,@3E1VariacionPesos2 , @3E1VariacionPorcentaje2 , 	
@3E1IngresosVSGastos , @3E1UltimoDiaPeriodo ,
@3E2PresupuestoEjercido1 ,@3E2EjercidoTeorico1  ,@3E2EjercidoAFecha1  ,@3E2VariacionPesos	,@3E2VariacionPorcentaje	,
@3E2PresupuestoEjercido21 ,@3E2EjercidoTeorico21  ,@3E2EjercidoAFecha21  ,@3E2VariacionPesos2 ,@3E2VariacionPorcentaje2 , 	
@3E2IngresosVSGastos ,@3E2UltimoDiaPeriodo 



WHILE (@@fetch_status <> -1)
BEGIN
	IF (@@fetch_status <> -2)
	BEGIN



SELECT  @1EmpresaCDI = EmpresaCDI, @1Comite=Comite, @1DescripcionProy=DescripcionProy, @1Rama=Rama,@1ClavePresupuestal= ClavePresupuestal, @1DescripcionCP= DescripcionCP,    
@1PresupuestoEjercido =SUM(ISNULL(PresupuestoEjercido,0)),    
@1EjercidoTeorico=SUM(ISNULL(EjercidoTeorico,0))  ,
@1EjercidoAFecha=SUM(ISNULL(EjercidoAFecha,0))   ,
@1VariacionPesos=SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0)) ,

@1VariacionPorcentaje=CASE WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) <> 0 THEN 100.00 WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) / SUM(ISNULL(EjercidoTeorico,0)) * 100 END ,

@1PresupuestoEjercido2=SUM(ISNULL(PresupuestoEjercido2,0)) ,    
@1EjercidoTeorico2 =SUM(ISNULL(EjercidoTeorico2,0)),
@1EjercidoAFecha2=SUM(ISNULL(EjercidoAFecha2,0)),    
@1VariacionPesos2=SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0)),

@1VariacionPorcentaje2=CASE WHEN SUM(ISNULL(EjercidoTeorico2,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) <> 0 THEN 100.00 WHEN SUM(ISNULL(EjercidoTeorico2,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) = 0 THEN 0.00
ELSE(SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0))) / SUM(ISNULL(EjercidoTeorico2,0)) * 100 END ,    

@1IngresosVSGastos=(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) - (SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0))) , 
@1UltimoDiaPeriodo=@Dia

FROM #ComparativoIE WHERE isnull(Comite,'') = isnull(isnull(@Proyecto,Comite),'')    

AND EmpresaCDI=@3EmpresaCDI AND Comite=@3Comite AND DescripcionProy=@3DescripcionProy AND Rama=@3Rama AND 
 ClavePresupuestal=@3ClavePresupuestal AND DescripcionCP=@3DescripcionCP AND Ejercicio1 = @Ejercicio

GROUP BY EmpresaCDI, Comite, DescripcionProy, Rama, ClavePresupuestal, DescripcionCP 
 
 UPDATE #ComparativoIEPer3 SET 
 E1PresupuestoEjercido1 =@1PresupuestoEjercido, E1EjercidoTeorico1  =@1EjercidoTeorico, E1EjercidoAFecha1=@1EjercidoAFecha,E1VariacionPesos=@1VariacionPesos,
E1VariacionPorcentaje=@1VariacionPorcentaje	,
E1PresupuestoEjercido21=@1PresupuestoEjercido2 ,E1EjercidoTeorico21 =@1EjercidoTeorico2 ,E1EjercidoAFecha21 =@1EjercidoAFecha2,E1VariacionPesos2=@1VariacionPesos2 , 
E1VariacionPorcentaje2=@1VariacionPorcentaje2 , 	
E1IngresosVSGastos=@1IngresosVSGastos , 
E1UltimoDiaPeriodo =@1UltimoDiaPeriodo
 WHERE EmpresaCDI=@3EmpresaCDI AND Comite=@3Comite  AND DescripcionProy=@3DescripcionProy AND Rama=@3Rama AND ClavePresupuestal=@3ClavePresupuestal AND 
 DescripcionCP=@3DescripcionCP AND Ejercicio = @Ejercicio
       
----------------------------

SELECT @2EmpresaCDI=EmpresaCDI, @2Comite =Comite, @2DescripcionProy=DescripcionProy,@2Rama= Rama, @2ClavePresupuestal=ClavePresupuestal,@2DescripcionCP=  DescripcionCP,    
@2PresupuestoEjercido =SUM(ISNULL(PresupuestoEjercido,0)),    
@2EjercidoTeorico= SUM(ISNULL(EjercidoTeorico,0)),    
@2EjercidoAFecha=SUM(ISNULL(EjercidoAFecha,0)),
@2VariacionPesos=SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0)),
@2VariacionPorcentaje=CASE WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) <> 0 THEN 100.00 WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) / SUM(ISNULL(EjercidoTeorico,0)) * 100 END ,    

@2PresupuestoEjercido2=SUM(ISNULL(PresupuestoEjercido2,0)) ,
@2EjercidoTeorico2=SUM(ISNULL(EjercidoTeorico2,0)),
@2EjercidoAFecha2=SUM(ISNULL(EjercidoAFecha2,0)),
@2VariacionPesos2=SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0)),    

@2VariacionPorcentaje2=CASE WHEN SUM(ISNULL(EjercidoTeorico2,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) <> 0 THEN 100.00 WHEN SUM(ISNULL(EjercidoTeorico2,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) = 0 THEN 0.00
ELSE(SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0))) / SUM(ISNULL(EjercidoTeorico2,0)) * 100 END ,

@2IngresosVSGastos=(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) - (SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0))) ,
@2UltimoDiaPeriodo=@Dia2   
FROM #ComparativoIEPer2 WHERE isnull(Comite,'') = isnull(isnull(@Proyecto,Comite),'')

AND EmpresaCDI=@3EmpresaCDI AND Comite=@3Comite AND DescripcionProy=@3DescripcionProy AND Rama=@3Rama AND 
 ClavePresupuestal=@3ClavePresupuestal AND DescripcionCP=@3DescripcionCP  AND  Ejercicio2 = @Ejercicio2
  
GROUP BY EmpresaCDI, Comite, DescripcionProy, Rama, ClavePresupuestal, DescripcionCP    
     
 UPDATE #ComparativoIEPer3 SET 
E2PresupuestoEjercido1 =@2PresupuestoEjercido ,    
E2EjercidoTeorico1=@2EjercidoTeorico  ,    
E2EjercidoAFecha1 =@2EjercidoAFecha , 
E2VariacionPesos =@2VariacionPesos	,
E2VariacionPorcentaje =@2VariacionPorcentaje	,
E2PresupuestoEjercido21 =@2PresupuestoEjercido2 ,    
E2EjercidoTeorico21 =@2EjercidoTeorico2 ,    
E2EjercidoAFecha21 =@2EjercidoAFecha2 ,    
E2VariacionPesos2 =@2VariacionPesos2 , 
E2VariacionPorcentaje2  =@2VariacionPorcentaje2, 	
E2IngresosVSGastos =@2IngresosVSGastos , 
E2UltimoDiaPeriodo =@2UltimoDiaPeriodo

 WHERE EmpresaCDI=@3EmpresaCDI AND Comite=@3Comite  AND DescripcionProy=@3DescripcionProy AND Rama=@3Rama AND ClavePresupuestal=@3ClavePresupuestal AND 
 DescripcionCP=@3DescripcionCP   AND Ejercicio = @Ejercicio2
       
   
	END
	FETCH NEXT FROM actualiza INTO 
@3EmpresaCDI ,@3Comite ,@3DescripcionProy ,@3Rama, @3ClavePresupuestal,@3DescripcionCP,    
@3E1PresupuestoEjercido1 ,@3E1EjercidoTeorico1  ,@3E1EjercidoAFecha1  ,@3E1VariacionPesos	,@3E1VariacionPorcentaje	,
@3E1PresupuestoEjercido21 ,@3E1EjercidoTeorico21  ,@3E1EjercidoAFecha21  ,@3E1VariacionPesos2 , @3E1VariacionPorcentaje2 , 	
@3E1IngresosVSGastos , @3E1UltimoDiaPeriodo ,
@3E2PresupuestoEjercido1 ,@3E2EjercidoTeorico1  ,@3E2EjercidoAFecha1  ,@3E2VariacionPesos	,@3E2VariacionPorcentaje	,
@3E2PresupuestoEjercido21 ,@3E2EjercidoTeorico21  ,@3E2EjercidoAFecha21  ,@3E2VariacionPesos2 ,@3E2VariacionPorcentaje2 , 	
@3E2IngresosVSGastos ,@3E2UltimoDiaPeriodo 

END
CLOSE actualiza
DEALLOCATE actualiza



SELECT 

EmpresaCDI   ,Comite    ,DescripcionProy  ,Rama     ,ClavePresupuestal,DescripcionCP , 

ISNULL(SUM(E1PresupuestoEjercido1),0)     AS E1PresupuestoEjercido1,ISNULL(SUM(E2PresupuestoEjercido1),0) AS E2PresupuestoEjercido1, 
ISNULL(SUM(E1EjercidoTeorico1  ),0) AS E1EjercidoTeorico1,ISNULL(SUM(E2EjercidoTeorico1  ),0) AS E2EjercidoTeorico1 ,   
ISNULL(SUM(E1EjercidoAFecha1  ),0) AS E1EjercidoAFecha1, ISNULL(SUM(E2EjercidoAFecha1  ),0) AS E2EjercidoAFecha1,
ISNULL(SUM(E1VariacionPesos	),0) AS E1VariacionPesos,ISNULL(SUM(E2VariacionPesos	),0) AS E2VariacionPesos,
ISNULL(SUM(E1VariacionPorcentaje	),0) AS E1VariacionPorcentaje,ISNULL(SUM(E2VariacionPorcentaje	),0) AS E2VariacionPorcentaje,
ISNULL(SUM(E1PresupuestoEjercido21 ),0) AS E1PresupuestoEjercido21,  ISNULL(SUM(E2PresupuestoEjercido21 ),0) AS E2PresupuestoEjercido21,    
ISNULL(SUM(E1EjercidoTeorico21  ),0) AS E1EjercidoTeorico21,    ISNULL(SUM(E2EjercidoTeorico21  ),0)AS E2EjercidoTeorico21 ,    
ISNULL(SUM(E1EjercidoAFecha21  ),0)AS E1EjercidoAFecha21 ,    ISNULL(SUM(E2EjercidoAFecha21  ),0) AS E2EjercidoAFecha21 ,
ISNULL(SUM(E1VariacionPesos2 ),0) AS E1VariacionPesos2, ISNULL(SUM(E2VariacionPesos2 ),0) AS E2VariacionPesos2,
ISNULL(SUM(E1VariacionPorcentaje2 ),0) AS E1VariacionPorcentaje2 , 	ISNULL(SUM(E2VariacionPorcentaje2 ),0)AS E2VariacionPorcentaje2 , 
ISNULL(SUM(E1IngresosVSGastos ),0) AS E1IngresosVSGastos , ISNULL(SUM(E2IngresosVSGastos ),0) AS E2IngresosVSGastos , 
ISNULL(SUM(E1UltimoDiaPeriodo ),0) AS E1UltimoDiaPeriodo ,ISNULL(SUM(E2UltimoDiaPeriodo  ),0) AS E2UltimoDiaPeriodo 

 FROM #ComparativoIEPer3
 GROUP BY  EmpresaCDI   ,Comite    ,DescripcionProy  ,Rama     ,ClavePresupuestal,DescripcionCP
 ORDER BY EmpresaCDI, Comite, Rama, ClavePresupuestal  
 
END



ELSE    

BEGIN




SELECT @Ejercicio as Periodo,EmpresaCDI, Comite, DescripcionProy ,    
SUM(ISNULL(PresupuestoEjercido,0))  AS PresupuestoEjercido,    
SUM(ISNULL(EjercidoTeorico,0))   AS EjercidoTeorico,    
SUM(ISNULL(EjercidoAFecha,0))   AS EjercidoAFecha,    
SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0)) AS VariacionPesos,    
CASE WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) <> 0 THEN 100.00 WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) / SUM(ISNULL(EjercidoTeorico,0)) * 100 END AS VariacionPorcentaje,    
SUM(ISNULL(PresupuestoEjercido2,0)) AS PresupuestoEjercido2,    
SUM(ISNULL(EjercidoTeorico2,0))     AS EjercidoTeorico2,    
SUM(ISNULL(EjercidoAFecha2,0))      AS EjercidoAFecha2,    
SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0)) AS VariacionPesos2,    
CASE WHEN SUM(ISNULL(EjercidoTeorico2,0))  = 0 AND (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) <> 0 THEN 100.00 WHEN SUM(ISNULL(EjercidoTeorico2,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) / SUM(ISNULL(EjercidoTeorico2,0)) * 100 END AS VariacionPorcentaje2,    
(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) - (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) AS IngresosVSGastos,    
@Dia AS UltimoDiaPeriodo    
FROM #ComparativoIE WHERE isnull(Comite,'') = isnull(isnull(@Proyecto,Comite),'')    
GROUP BY EmpresaCDI, Comite, DescripcionProy    
UNION ALL
SELECT @Ejercicio2 as Periodo,EmpresaCDI, Comite, DescripcionProy ,    
SUM(ISNULL(PresupuestoEjercido,0))  AS PresupuestoEjercido,    
SUM(ISNULL(EjercidoTeorico,0))   AS EjercidoTeorico,    
SUM(ISNULL(EjercidoAFecha,0))   AS EjercidoAFecha,    
SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0)) AS VariacionPesos,    
CASE WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) <> 0 THEN 100.00 WHEN SUM(ISNULL(EjercidoTeorico,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) / SUM(ISNULL(EjercidoTeorico,0)) * 100 END AS VariacionPorcentaje,    
SUM(ISNULL(PresupuestoEjercido2,0)) AS PresupuestoEjercido2,    
SUM(ISNULL(EjercidoTeorico2,0))     AS EjercidoTeorico2,    
SUM(ISNULL(EjercidoAFecha2,0))      AS EjercidoAFecha2,    
SUM(ISNULL(EjercidoTeorico2,0))-SUM(ISNULL(EjercidoAFecha2,0)) AS VariacionPesos2,    
CASE WHEN SUM(ISNULL(EjercidoTeorico2,0))  = 0 AND (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) <> 0 THEN 100.00 WHEN SUM(ISNULL(EjercidoTeorico2,0)) = 0 AND (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) = 0 THEN 0.00    
ELSE(SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) / SUM(ISNULL(EjercidoTeorico2,0)) * 100 END AS VariacionPorcentaje2,    
(SUM(ISNULL(EjercidoAFecha,0))-SUM(ISNULL(EjercidoTeorico,0))) - (SUM(ISNULL(EjercidoAFecha2,0))-SUM(ISNULL(EjercidoTeorico2,0))) AS IngresosVSGastos,    
@Dia2 AS UltimoDiaPeriodo    
FROM #ComparativoIEPer2 WHERE isnull(Comite,'') = isnull(isnull(@Proyecto,Comite),'')    
GROUP BY EmpresaCDI, Comite, DescripcionProy    
ORDER BY EmpresaCDI, Comite 

END
RETURN 
END

