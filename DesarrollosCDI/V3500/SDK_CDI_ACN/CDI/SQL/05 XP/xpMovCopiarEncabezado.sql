/*
Enrique Toral
Al avanzar movimientos de Venta, copia el plan de estudios para que la condición de pago y tipo de forma de pago se filtre.
*/
if exists (select * from sysobjects where id = object_id('dbo.xpMovCopiarEncabezado') and type = 'P') drop procedure dbo.xpMovCopiarEncabezado
GO
CREATE PROCEDURE xpMovCopiarEncabezado
        @Sucursal	          int,
        @Modulo		          char(5),
        @ID		              int,
        @Empresa	          char(5),
        @Mov		            char(20),
        @MovID 		          varchar(20),
        @Usuario	          char(10),
        @FechaEmision	      datetime,
        @Estatus	          char(15),
        @Moneda		          char(10),
        @TipoCambio	        float,
        @Almacen	          char(10),
        @AlmacenDestino     char(10),
        @GenerarDirecto	    bit,
        @GenerarMov	        char(20),
        @GenerarMovID 	    varchar(20),
        @GenerarID	        int,
        @Ok		              int	OUTPUT,
        @CopiarBitacora	    bit
AS BEGIN
	DECLARE
	@CEPlan           varchar(10),
	@CDIFacturarA   VARCHAR (10),
	@CDIClavePresupuestal VARCHAR(50)
	
	IF @Modulo = 'VTAS' AND @Mov IS NOT NULL AND ISNULL(@Mov, '') <> ISNULL(@GenerarMov, '')
	BEGIN
		
		SELECT @CEPlan = v.CDICEPlan, @CDIFacturarA=v.CDIFacturarA  FROM Venta v WHERE v.ID = @ID
		UPDATE Venta SET CDICEPlan = @CEPlan, CDIFacturarA = @CDIFacturarA WHERE ID = @GenerarID
		
	END
    ---------------------------------------------------------------
    --- C P  C P   C P   C P   C P   C P   C P  C P   C P   C P ---
    --------------------------------------------------------------- E M M 
    IF @Modulo = 'CP' AND ISNULL(@Mov, '') <> ISNULL(@GenerarMov, '')
	BEGIN --- C P      
      IF @GenerarID > 0
      BEGIN --- I D G E N E R A R
        IF EXISTS(SELECT * FROM CDICPArtCat        WHERE ID = @ID)
        BEGIN --- I D O  
          IF NOT EXISTS ( SELECT * FROM CDICPArtCat        WHERE ID = @GenerarID) INSERT INTO CDICPArtCat        (ID,        ClavePresupuestal,Categoria,Tipo,Cantidad,Precio,Referencia,Observaciones,EnMov)
                                                                                  SELECT                          @GenerarID,ClavePresupuestal,Categoria,Tipo,Cantidad,Precio,Referencia,Observaciones,EnMov            FROM CDICPArtCat        WHERE ID = @ID
        END   --- I D O 

        IF EXISTS(SELECT * FROM CDICPConcepto      WHERE ID = @ID) 
        BEGIN --- I D O   
          IF NOT EXISTS ( SELECT * FROM CDICPConcepto      WHERE ID = @GenerarID) INSERT INTO CDICPConcepto      (ID,        ClavePresupuestal,Modulo,Concepto,Tipo,Cantidad,Precio,Referencia,Observaciones,EnMov)
                                                                                  SELECT                          @GenerarID,ClavePresupuestal,Modulo,Concepto,Tipo,Cantidad,Precio,Referencia,Observaciones,EnMov      FROM CDICPConcepto      WHERE ID = @ID
        END   --- I D O   
        IF EXISTS(SELECT * FROM CDICPClasificacion WHERE ID = @ID) 
        BEGIN --- I D O 
          IF NOT EXISTS ( SELECT * FROM CDICPClasificacion WHERE ID = @GenerarID) INSERT INTO CDICPClasificacion (ID,        ClavePresupuestal,Modulo,Clasificacion,Tipo,Cantidad,Precio,Referencia,Observaciones,EnMov)
                                                                                  SELECT                          @GenerarID,ClavePresupuestal,Modulo,Clasificacion,Tipo,Cantidad,Precio,Referencia,Observaciones,EnMov FROM CDICPClasificacion WHERE ID = @ID
        END   --- I D O 
      END   --- I D G E N E R A R            
	END   --- C P

 IF @Modulo = 'CXC' 
  BEGIN
    SELECT @CDIClavePresupuestal = CDIClavePresupuestal FROM Cxc WHERE ID = @ID
    UPDATE Cxc SET CDIClavePresupuestal = @CDIClavePresupuestal WHERE ID = @GenerarID
  END     

RETURN
END
GO
