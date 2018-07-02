SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF



 --EXEC spReporteAnalisisdeMovimientosporCobrarporfecha @FechaD	='01-01-2011',@FechaA='31-12-2011',@Concepto	=''
 
    
/**************** spReporteAnalisisdeMovimientosporCobrarporfecha****************/
if exists (select * from sysobjects where id = object_id('dbo.spReporteAnalisisdeMovimientosporCobrarporfecha') and type = 'P') drop procedure dbo.spReporteAnalisisdeMovimientosporCobrarporfecha
GO
CREATE PROCEDURE spReporteAnalisisdeMovimientosporCobrarporfecha

@FechaD				DATETIME,
@FechaA				DATETIME,
@Concepto			VARCHAR (50)

AS BEGIN
	
		IF UPPER(@Concepto) IN ('0', 'NULL', '(TODOS)','', '(ALL)',NULL,' ') SELECT @Concepto = NULL
		
SELECT c.Concepto, Cantidad=COUNT( c.movid),Clave=c.Cliente,NombreCompleto= c2.Nombre,
  Saldo=SUM( c.Saldo*mt.Factor), c.FechaEmision, c.Vencimiento,Importe=SUM( c.Importe), Impuesto=sum(c.Impuestos)
  FROM Cxc c
INNER JOIN Cte c2 ON c.Cliente=c2.Cliente
INNER JOIN MovTipo mt ON c.Mov=mt.Mov AND mt.Modulo='CXC'
WHERE mt.Clave IN ('CXC.F','CXC.NC','CXC.D')
AND c.Estatus='PENDIENTE'
AND c2.CDISocio=0
AND c.Mov NOT IN ('Cancelacion Nomina','Cancelacion Nom SI','Cobro Nomina','Prestamo SI')
AND  ISNULL( c.Vencimiento,c.FechaEmision) BETWEEN @FechaD AND @FechaA
AND ISNULL ( c.Concepto,'') = ISNULL(ISNULL(@Concepto,c.Concepto),'')
GROUP BY c.Concepto, c.FechaEmision, c2.Nombre,  c.Vencimiento, c.Cliente

UNION ALL

SELECT c.Concepto,Cantidad=COUNT( c.movid),Clave= CONVERT(VARCHAR, c2.Membresia,100)  , NombreCompleto= isnull(c2.PersonalNombres,' ') + ' ' + isnull(c2.PersonalApellidoPaterno,' ') + ' ' + isnull(c2.PersonalApellidoMaterno,' ') , 
Saldo= sum(c.Saldo*mt.Factor), c.FechaEmision, c.Vencimiento,Importe=SUM( c.Importe), Impuesto=sum(c.Impuestos)
  FROM Cxc c
INNER JOIN Cte c2 ON c.Cliente=c2.Cliente
INNER JOIN MovTipo mt ON c.Mov=mt.Mov AND mt.Modulo='CXC'
WHERE mt.Clave IN ('CXC.F','CXC.NC','CXC.D')
AND c.Estatus='PENDIENTE'
AND c2.CDISocio=1
AND c.Mov NOT IN ('Cancelacion Nomina','Cancelacion Nom SI','Cobro Nomina','Prestamo SI')
AND  ISNULL( c.Vencimiento,c.FechaEmision) BETWEEN @FechaD AND @FechaA
AND ISNULL ( c.Concepto,'') = ISNULL(ISNULL(@Concepto,c.Concepto),'')
GROUP BY c.Concepto, c.FechaEmision, c2.PersonalNombres, c2.PersonalApellidoPaterno, c2.PersonalApellidoMaterno, c.Vencimiento, c.Cliente, c2.Membresia
ORDER BY c.Concepto
   	
   END

GO