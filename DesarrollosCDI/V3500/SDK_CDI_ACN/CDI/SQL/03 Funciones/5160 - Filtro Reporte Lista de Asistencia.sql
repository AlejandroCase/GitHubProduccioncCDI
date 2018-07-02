SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

  -- Desarrollo. Filtro Reporte Lista de Asistencia
  -- Cliente   . CDI
  -- Folio     . 5160
  -- Fecha     . 29 / 07 / 11
  -- Autor     . JOSE GONZALEZ

------------------ fnCDIPagoAsiste ---------------------

IF EXISTS (SELECT * FROM Sysobjects WHERE Name = 'fnCDIPagoAsiste' and TYPE = 'fn') DROP FUNCTION dbo.fnCDIPagoAsiste
GO
CREATE FUNCTION dbo.fnCDIPagoAsiste
(                
   @Empresa  		varchar(50),
   @Mov             varchar(50),
   @ID              int
   
)
RETURNS varchar(155)
AS BEGIN
  DECLARE 
    @EstatusCxc varchar(50),
    @IDVariable INT,
    @IDVariable1 INT,
    @IDVariable2 INT,
    @IDVariable3 INT

  SELECT @IDVariable=DID 
    FROM MovFlujo
   WHERE Empresa=@Empresa
         AND DModulo='VTAS'
         AND OModulo='CE'  
         AND OMov=@Mov
         AND DMov='Solicitud Cargo'      
         AND OID=@ID 
         AND Cancelado=0
 
 SELECT @IDVariable1=DID
   FROM MovFlujo
   WHERE Empresa='CDI'
         AND DModulo='VTAS'
         AND OMov='Solicitud Cargo'      
         AND DMov='Recibo'
         AND OID=@IDVariable
         AND OMOdulo='VTAS'
         AND Cancelado=0

 SELECT @IDVariable2=DID 
   FROM MovFlujo
  WHERE Empresa='CDI'
		AND DModulo='CXC'
		AND OMov='Recibo'      
		AND DMov='Recibo'
		AND OID=@IDVariable1
		AND OMOdulo='VTAS'         
        AND Cancelado=0
         
  SELECT @IDVariable3=DID 
    FROM MovFlujo
   WHERE Empresa='CDI'
         AND DModulo='CXC'
         AND OMov='Recibo'      
         AND DMov='Cobro'
         AND OID=@IDVariable2
         AND OMOdulo='CXC'                  
         AND Cancelado=0

SELECT @EstatusCxc=Estatus FROM Cxc WHERE ID=@IDVariable3
 
RETURN (@EstatusCxc)
END
GO
--SELECT dbo.fnCDIPagoAsiste ('CDI', 'PreRegistro', 3819)
GO 
	
