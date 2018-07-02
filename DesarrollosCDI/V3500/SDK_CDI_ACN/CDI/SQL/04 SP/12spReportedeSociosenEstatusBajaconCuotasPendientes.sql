SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

 --EXEC spReportedeSociosenEstatusBajaconCuotasPendientes @FechaD='01-01-2011', @FechaA='31-12-2011'
    
/**************** spReportedeSociosenEstatusBajaconCuotasPendientes****************/
if exists (select * from sysobjects where id = object_id('dbo.spReportedeSociosenEstatusBajaconCuotasPendientes') and type = 'P') drop procedure dbo.spReportedeSociosenEstatusBajaconCuotasPendientes
GO
CREATE PROCEDURE spReportedeSociosenEstatusBajaconCuotasPendientes

@FechaD		DATETIME,
@FechaA		DATETIME

AS BEGIN
	   
		SELECT	c.Membresia, c.Socio, SociosEstatus= c.Estatus,  c.PersonalNombres, c.PersonalApellidoPaterno, c.PersonalApellidoMaterno,
				c2.Mov, c2.MovID, CxcSaldo= c2.Saldo* mt.Factor , CxcEstatus=c2.Estatus, c2.FechaEmision, c2.Concepto, vd.Articulo, a.Descripcion1
		FROM	cte c
				INNER JOIN cxc c2 ON c.Cliente=c2.Cliente
				INNER JOIN venta v ON c2.OrigenTipo='VTAS' AND c2.Origen=v.Mov AND c2.OrigenID=v.MovID
				INNER JOIN ventad vd ON v.ID =vd.ID
				INNER JOIN art a ON a.Articulo = vd.Articulo
				INNER JOIN MovTipo mt ON c2.Mov=mt.Mov AND mt.Modulo='cxc' 
		WHERE	c.Estatus='Baja'
				AND c2.Estatus='Pendiente' 
				AND c2.FechaEmision BETWEEN @FechaD AND @FechaA

    END

GO
