SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReporteCobrosdeAportReingryCategorias  @FechaD='01-01-2011' ,@FechaA='31-12-2011'
    
/**************** spReporteCobrosdeAportReingryCategorias****************/
if exists (select * from sysobjects where id = object_id('dbo.spReporteCobrosdeAportReingryCategorias') and type = 'P') drop procedure dbo.spReporteCobrosdeAportReingryCategorias
GO
CREATE PROCEDURE spReporteCobrosdeAportReingryCategorias

@FechaD			DATETIME,
@FechaA 		DATETIME


AS BEGIN
	
	
						SELECT CDISocio=COUNT( ISNULL( c.CDISocio,0)), c.FormaCobro ,Importe=SUM( ISNULL( c.Importe,0)), c.Concepto
						FROM cxc c 
						INNER JOIN cxcd  cd ON cd.ID = c.ID
						INNER JOIN Venta v ON cd.Aplica=v.Mov AND cd.AplicaID=v.MovID
						INNER JOIN VentaD vd ON vd.ID = v.ID
						INNER JOIN Art a ON a.Articulo = vd.Articulo
						INNER JOIN Cte c2 ON c.Cliente=c2.Cliente
						WHERE
								c.Mov='Cobro'
						AND	c.Estatus='Concluido' 
						AND	c.FechaEmision BETWEEN @FechaD AND @FechaA
						AND a.Descripcion1 LIKE '%categor%'
						AND c2.CDISocio=1
						GROUP BY  c.FormaCobro ,  c.Concepto

				UNION ALL
				
						SELECT CDISocio=COUNT( ISNULL( c.CDISocio,0)), c.FormaCobro , Importe=SUM( ISNULL( c.Importe,0)), c.Concepto

						FROM cxc c 
						INNER JOIN cxcd  cd ON cd.ID = c.ID
						INNER JOIN Venta v ON cd.Aplica=v.Mov AND cd.AplicaID=v.MovID
						INNER JOIN VentaD vd ON vd.ID = v.ID
						INNER JOIN Art a ON a.Articulo = vd.Articulo
						INNER JOIN Cte c2 ON c.Cliente=c2.Cliente
						WHERE
								c.Mov='Cobro'
						AND	c.Estatus='Concluido' 
						AND	c.FechaEmision BETWEEN @FechaD AND @FechaA
						AND a.Descripcion1 LIKE '%reingre%'
						AND c2.CDISocio=1
						GROUP BY  c.FormaCobro ,  c.Concepto

				UNION ALL

						SELECT  CDISocio=COUNT( ISNULL( c.CDISocio,0)), c.FormaCobro , Importe=SUM( ISNULL( c.Importe,0)), c.Concepto

						FROM cxc c 
						INNER JOIN cxcd  cd ON cd.ID = c.ID
						INNER JOIN Venta v ON cd.Aplica=v.Mov AND cd.AplicaID=v.MovID
						INNER JOIN VentaD vd ON vd.ID = v.ID
						INNER JOIN Art a ON a.Articulo = vd.Articulo
						INNER JOIN Cte c2 ON c.Cliente=c2.Cliente
						WHERE
								c.Mov='Cobro'
						AND	c.Estatus='Concluido' 
						AND	c.FechaEmision BETWEEN @FechaD AND @FechaA
						AND a.Descripcion1 LIKE '%admis%'
						AND c2.CDISocio=1
						GROUP BY  c.FormaCobro , c.Concepto

   END


GO
