SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

IF Exists (select * from sysobjects WHERE ID = object_id('dbo.xpInvVerificar') AND sysstat & 0xf = 4) 
  drop procedure dbo.xpInvVerificar
GO             

CREATE PROCEDURE xpInvVerificar
    			@ID                	int,
				@Accion				char(20),
				@Base				char(20),
    			@Empresa	      	char(5),
				@Usuario			char(10),
    			@Modulo	      		char(5),
    			@Mov	  	      	char(20),
    			@MovID             	varchar(20),
    			@MovTipo     		char(20),
    			@MovMoneda	      	char(10),
    			@MovTipoCambio	 	float,
     	    	@Estatus	 	    char(15),
     	    	@EstatusNuevo	    char(15),
				@FechaEmision		datetime,
				@Ok					int				OUTPUT,
				@OkRef				varchar(255)	OUTPUT
AS 
  BEGIN
    DECLARE 
    -- ..:: 07/06/2012 JPV     
		@Clave				        varchar(20),
		@Cliente                    varchar(20),
		@ArtCfgEsp			        varchar(20),
		@Descripcion                varchar(50),    
        @FechaServ                  datetime,
        @FechaEmis                  datetime,
        @FechaEmisionAnt            datetime,
        @MovAnt                     varchar(20),
        @MovIdAnt                   varchar(20)
   -- ...::: 07/06/2012 

   -- ..:: 07/06/2012      
    IF @Modulo = 'VTAS'  SELECT @Clave = Clave FROM MovTipo WHERE Modulo = 'VTAS' AND MOV = @MOV 

    IF @Modulo = 'VTAS' AND @Clave IN('VTAS.F')  AND @Accion IN ('AFECTAR','VERIFICAR')
       BEGIN
         SELECT @ArtCfgEsp = CEArtCoberturaMedica FROM CDIEmpresaCfg 
         SELECT @FechaServ  = GETDATE()
         SELECT @FechaEmisionAnt = DATENAME(YY, @FECHASERV)+'01'+'01'
         IF EXISTS(SELECT Articulo FROM VentaD WHERE ID = @ID AND Articulo = @ArtCfgEsp) 
            BEGIN
               SELECT @FechaEmis = FechaEmision, @Cliente = Cliente FROM Venta WHERE ID = @ID  
               IF (SELECT COUNT(v.FechaEmision) FROM Venta v
                     LEFT JOIN VentaD d 
                       ON v.ID = d.ID
                    WHERE v.Empresa = @Empresa
                      AND v.ID <> @ID
                      AND v.Cliente = @Cliente
                      AND d.Articulo = @ArtCfgEsp
                      AND v.FechaEmision BETWEEN @FechaEmisionAnt AND  @FechaServ   
                      AND v.Estatus IN ('CONCLUIDO')
                  ) > 0
                 BEGIN
                    SELECT @MovAnt = ISNULL(Mov,''), @MovIdAnt = ISNULL(MovId,'') FROM Venta v
                      LEFT JOIN VentaD d 
                        ON v.ID = d.ID
                     WHERE v.Empresa = @Empresa
                       AND v.ID <> @ID
                       AND v.Cliente = @Cliente
                       AND d.Articulo = @ArtCfgEsp
                       AND v.FechaEmision BETWEEN @FechaEmisionAnt AND  @FechaServ   
                       AND v.Estatus IN ('CONCLUIDO')
                       
                    SELECT @Descripcion = ISNULL(Descripcion1,'') FROM Art where Articulo =  @ArtCfgEsp
                    SELECT @Ok = 10530 
                    SELECT @OkRef='Articulo: ' + @ArtCfgEsp + ', ' + @Descripcion +  ' ya existe un Movimiento Previo: ' + @MovAnt + ' - ' +  @MovIDAnt 
                 END
                      
            END   
       
       END
       RETURN 
   -- ...::: 07/06/2012 
END    
GO
