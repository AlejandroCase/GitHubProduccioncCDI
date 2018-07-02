SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

--BEGM 26/10/2010 Genera la Renovación de Subsidios
/****************** spSummaGenerarEndoso ******************/
IF OBJECT_ID('dbo.spCDIRenuevaSubsidio', 'P') IS NOT NULL
  DROP PROCEDURE spCDIRenuevaSubsidio
GO

CREATE PROCEDURE spCDIRenuevaSubsidio(@Estacion int, @Usuario varchar(10), @FechaVencimiento DATETIME, @Porcentaje FLOAT)
AS
BEGIN

  DECLARE @Cuantos    int, 
          @I          int, 
          @IDSoc      int, 
          @IDGenerado int, 
          @Sql        varchar(1000)

  DECLARE @Subsidio TABLE(ID int IDENTITY(1,1), IDSoc int)

  INSERT INTO @Subsidio(IDSoc) 
  SELECT cs.ID
  FROM ListaST lst
  INNER JOIN CDISocio cs ON cs.Mov = SUBSTRING(Clave, 1, (CHARINDEX('-',Clave)-2)) AND cs.MovID = SUBSTRING(Clave, (CHARINDEX('-',Clave)+2), 10)
  WHERE lst.Estacion = LTRIM(STR(@Estacion))

  SELECT @Cuantos = @@ROWCOUNT, @I = 1

  WHILE @I <= @Cuantos
  BEGIN
    SELECT @IDSoc = IDSoc
    FROM @Subsidio
    WHERE ID = @I
    
    --Inserta datos del nuevo subsidio
    INSERT INTO CDISocio (Empresa, Mov, FechaEmision, UltimoCambio, Usuario, Observaciones, Estatus, Ejercicio, Periodo, FechaRegistro, 
                          Sucursal, Moneda, TipoCambio, Cliente, Membresia, Socio, FechaVigencia, ImporteSubsidio)
    SELECT cs.Empresa, ' Aceptar Subsidio', GETDATE(), GETDATE(), @Usuario, 'Renovación Automática', 'SINAFECTAR', YEAR(GETDATE()), MONTH(GETDATE()), GETDATE(), 
           cs.Sucursal, cs.Moneda, cs.TipoCambio, cs.Cliente, c.Membresia, c.Socio, @FechaVencimiento, (cs.ImporteSubsidio*(1+(isnull(@Porcentaje,0)/100)))
    FROM CDISocio cs
    INNER JOIN Cte c ON cs.Cliente = c.Cliente
    WHERE cs.ID = @IDSoc
    
    SET @IDGenerado = @@IDENTITY
        
    --Genera Subsidio
    EXEC spAfectar 'SOC', @IDGenerado, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion=@Estacion

    SET @I = @I + 1    
  END
  
END
GO
