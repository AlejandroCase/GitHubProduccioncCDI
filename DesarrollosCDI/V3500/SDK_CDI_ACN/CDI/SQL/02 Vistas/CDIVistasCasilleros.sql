SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
SET IMPLICIT_TRANSACTIONS OFF
SET ANSI_NULLS ON  
SET QUOTED_IDENTIFIER ON 


 
/***************************************************************************************************
*         Desarrollo  Gustavo Méndez Ortega                                                        *
*  	      Funcion     Asignacion de Casilleros                 					                   *
*         Proyecto    CDI                                                                          *
*		  Fecha       25/Noviembre/2010 												           *	
****************************************************************************************************/


GO
/***************************************************************************************************/
/*                     vista para el detalle de los casilleros asignados                           */
/***************************************************************************************************/
 IF EXISTS(SELECT * FROM Sys.objects WHERE Name='CDIDetalleCasilleros' AND Type='V')
  DROP VIEW CDIDetalleCasilleros
   GO 
   CREATE VIEW CDIDetalleCasilleros
  AS   
  SELECT a.Casillerotag AS 'No Casillero',d.Seccion,d.Ubicacion,a.EstatusCas AS 'Estatus',a.Tipo,a.Cliente,b.Nombre,b.Socio,
         a.Membresia,c.Mov+' '+c.MovID AS 'Movimiento',ISNULL(c.Saldo,0) AS 'Saldo',a.PlanoID,a.Orden, a.Cilindro
    FROM CDICasilleros  a LEFT OUTER JOIN Cte b  ON a.Cliente = b.Cliente
                          LEFT OUTER JOIN Cxc c  ON a.VentaID=c.ID
                          LEFT OUTER JOIN CasillerosXML d ON d.ID=a.PlanoID 
GO     

/***************************************************************************************************/
/*                              vista para el Explorador de Socios                                 */
/***************************************************************************************************/
IF EXISTS(SELECT * FROM Sys.objects WHERE Name='CDIVistaSociosActivos' AND Type='V')
 DROP VIEW CDIVistaSociosActivos
GO 
CREATE VIEW CDIVistaSociosActivos
AS
SELECT Socio,ISNULL(PersonalNombres,'') +' '+ISNULL(PersonalApellidoPaterno,'')+' '+ISNULL(PersonalApellidoMaterno,'') AS Nombre,
       Membresia,Cliente,Parentesco,Estatus FROM Cte 
WHERE CDISocio=1 AND Socio IS NOT NULL  AND Membresia IS NOT NULL 

GO
                    