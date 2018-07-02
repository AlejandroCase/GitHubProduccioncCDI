SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO


IF EXISTS (SELECT * FROM SysObjects WHERE id = Object_id('dbo.spCDIRptIngresosAcademiasCobros') AND TYPE = 'P')  
DROP PROCEDURE dbo.spCDIRptIngresosAcademiasCobros
GO
CREATE PROCEDURE spCDIRptIngresosAcademiasCobros 
  @Empresa     varchar(5),
  @Comite      varchar(20),
  @FechaD      datetime,
  @FechaA      datetime
  AS BEGIN
  	IF UPPER(@Comite) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL) SELECT @Comite = NULL 
  	
SELECT c.Empresa, cp2.CDIComite, Coordinacion, c4.CEPlan, cp2.Descripcion, Area, CEFechaemision=c3.FechaEmision, 
CxcMov=cd.Aplica, CxcMovId= cd.AplicaID,CxcImporte=cd.Importe, ROUND( cd.Importe/1.16,2) AS CxcImpuesto, Articulo,CEMov=c3.Mov, 
CEMovId=c3.MovID, CEEstatus=c3.Estatus 
INTO #A
FROM  dbo.Cxc AS c
JOIN dbo.CxcD AS cd ON c.ID = cd.ID AND Mov='Cobro'
JOIN dbo.Cxc AS c2 ON c2.Mov=cd.Aplica AND c2.MovID=cd.AplicaID
JOIN dbo.Venta AS v ON v.Mov=c2.Origen AND v.MovID=c2.OrigenID AND c2.OrigenTipo='VTAS'
JOIN dbo.VentaD AS vd ON v.ID=vd.ID
JOIN dbo.Venta AS v2 ON v2.Mov =v.Origen AND v2.MovID=v.OrigenID AND v.OrigenTipo='VTAS'
JOIN dbo.CE AS c3 ON c3.Mov=v2.Origen AND c3.MovID=v2.OrigenID AND v2.OrigenTipo='CE'
JOIN dbo.CED AS c4 ON c3.ID=c4.ID
JOIN dbo.CEPlan AS cp2 ON c4.CEPlan = cp2.CEPlan
WHERE ISNULL ( cp2.CDIComite,'') = ISNULL ( ISNULL(@Comite,cp2.CDIComite),'')
		AND c.Estatus='Concluido' AND c.Empresa=@Empresa
		AND c3.FechaEmision BETWEEN @FechaD AND @FechaA
ORDER BY c4.CEPlan


  SELECT Empresa, CDIComite, Coordinacion, SUM(isnull(CxcImporte,0)) AS 'Importe', SUM(isnull(CxcImpuesto,0)) AS 'Impuestos', 
           (SUM(isnull(CxcImporte,0)) + Sum(isnull(CxcImpuesto,0))) AS 'ImporteT'
      FROM #A
    GROUP BY Empresa,  CDIComite, Coordinacion
    ORDER BY CDIComite, Coordinacion

END
  
  GO
  
  
  --EXEC spCDIRptIngresosAcademiasCobros @Empresa='CDI', @Comite='', @FechaD='01-01-2012', @FechaA='30-06-2012'