
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

--BEGM 20101220. 4841. Herramienta Cambio de Categoria

IF OBJECT_ID('spCDISugiereCategoria', 'P') IS NOT NULL
  DROP PROCEDURE spCDISugiereCategoria
GO

CREATE PROCEDURE spCDISugiereCategoria (@Estacion int, @Tipo varchar(5))
AS
BEGIN
  DELETE CDICambioCategoria WHERE Estacion = @Estacion
  
  IF @Tipo = 'Ini'
    INSERT INTO CDICambioCategoria(Estacion, Membresia, Socio, Cliente, Nombre, APaterno, AMaterno, Estatus, Titular, Categoria, Tipo)
    SELECT @Estacion, c.Membresia, Socio, c.Cliente, PersonalNombres, PersonalApellidoPaterno, PersonalApellidoMaterno, Estatus, Titular, c.Categoria, Tipo
    FROM Cte c
    WHERE CDISocio = 1 AND c.Membresia IS NOT NULL AND (c.Estatus  IN('ALTA','BLOQUEADO') OR ISNULL(Descripcion13, 'No') = 'Si') --and Titular = 1
  ELSE IF @Tipo = 'Sug'
    INSERT INTO CDICambioCategoria(Estacion, Membresia, Socio, Cliente, Nombre, APaterno, AMaterno, Estatus, Titular, MotivoCambio, Categoria, CategoriaSug,
                                    Tipo, NumMemb, Edad)
    SELECT @Estacion, c.Membresia, Socio, c.Cliente, PersonalNombres, PersonalApellidoPaterno, PersonalApellidoMaterno, Estatus, Titular, Comentario, 
           c.Categoria, CASE WHEN ISNULL(c.Categoria, '') <> ISNULL(ccc.Categoria, '') THEN ccc.Categoria ELSE '' END CategoriaSugerida, 
           Tipo, NumMemb, DATEDIFF(YY, ISNULL(FechaNacimiento, GETDATE()), GETDATE()) Edad
    FROM Cte c
    INNER JOIN (SELECT Membresia, COUNT(*) NumMemb FROM Cte WHERE (Estatus IN('ALTA','BLOQUEADO') OR ISNULL(Descripcion13, 'No') = 'Si') GROUP BY Membresia) ci ON ci.Membresia = c.Membresia
    LEFT JOIN CDICfgCategoria ccc ON ci.NumMemb BETWEEN ccc.CantidadD AND ccc.CantidadA 
                                     AND DATEDIFF(YY, ISNULL(FechaNacimiento, GETDATE()), GETDATE()) BETWEEN ccc.EdadD AND ccc.EdadA
    WHERE CDISocio = 1 AND c.Membresia IS NOT NULL AND (c.Estatus IN('ALTA','BLOQUEADO') OR ISNULL(Descripcion13, 'No') = 'Si') 
          AND ccc.Sugerir = 'Si' --and Titular = 1 --BEGM 20110121. Considerar si la categoría se sugiere 
          AND CASE WHEN ISNULL(c.Categoria, '') <> ISNULL(ccc.Categoria, '') THEN ccc.Categoria ELSE '' END <> '' 
          AND c.Categoria <> ccc.Categoria + ' Oro'
  
    
END
GO


IF OBJECT_ID('spCDICambiaCategoria', 'P') IS NOT NULL
  DROP PROCEDURE spCDICambiaCategoria
GO

CREATE PROCEDURE spCDICambiaCategoria (@Estacion int, @Usuario varchar(10), @Empresa varchar(5))
AS
BEGIN
  DECLARE @i           int, 
          @Cuantos     int, 
          @Socio       varchar(20), 
          @DefProyecto varchar(50), 
          @DefSucursal int, 
          @DefMoneda   varchar(10), 
          @IDGenerado  int, 
          @Depend      int, 
          @j           int, 
          @SocioD      varchar(20), 
          @IDGeneradoD int

  DECLARE @SociosTabla TABLE (ID int IDENTITY(1,1), 
                              Socio varchar(100))

  DECLARE @MismaMembresia TABLE(ID            int, 
                                Membresia     int, 
                                Socio         varchar(100), 
                                Cliente       varchar(10), 
                                Titular       bit, 
                                MotivoCambio  varchar(255), 
                                Categoria     varchar(50), 
                                CatSug        varchar(50))

  SELECT 'Proceso Finalizado'
                              
  SELECT @DefProyecto = DefProyecto, @DefSucursal = Sucursal, @DefMoneda = DefMoneda FROM Usuario WHERE Usuario = @Usuario

  INSERT INTO @SociosTabla (Socio)
  SELECT Clave
  FROM ListaSt
  WHERE Estacion = @Estacion
  
  SELECT @i = 1, @Cuantos = @@IDENTITY
  
  WHILE @i <= @Cuantos
  BEGIN
    SELECT @Socio = Socio FROM @SociosTabla WHERE ID = @i
    
    INSERT INTO CDISocio(Empresa, Mov, FechaEmision, UltimoCambio, Proyecto, Usuario, Referencia, 
                          Estatus, Sucursal, Moneda, TipoCambio, Cliente, Membresia, Socio, Categoria)
    SELECT @Empresa, 'Sol Cambio Categoría', dbo.fnFechaSinHora(GETDATE()), GETDATE(), @DefProyecto, @Usuario, 'Cambio de Categoría', 
           'SINAFECTAR', @DefSucursal, @DefMoneda, 1, Cliente, Membresia, Socio, CategoriaSug
    FROM CDICambioCategoria
    WHERE Estacion = @Estacion AND Socio = @Socio
    
    SELECT @IDGenerado = SCOPE_IDENTITY()
    
    IF @IDGenerado IS NOT NULL
      EXEC spAfectar 'SOC', @IDGenerado, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion, @EnSilencio=1

    INSERT INTO @MismaMembresia(ID, Membresia, Socio, Cliente, Titular, MotivoCambio, Categoria, CatSug)
    SELECT ROW_NUMBER() OVER(ORDER BY c.Cliente), c.Membresia, c.Socio, c.Cliente, cc.Titular, cc.MotivoCambio, c.Categoria, 
           CASE WHEN ISNULL(c.Categoria, '') <> ISNULL(ccc.Categoria, '') THEN ccc.Categoria ELSE '' END CategoriaSugerida
    FROM Cte c
    INNER JOIN CDICambioCategoria cc ON c.Membresia = cc.Membresia
    INNER JOIN (SELECT Membresia, COUNT(*) NumMemb FROM Cte WHERE (Estatus IN('ALTA','BLOQUEADO') OR ISNULL(Descripcion13, 'No') = 'Si') AND Socio <> @Socio GROUP BY Membresia) ci ON ci.Membresia = c.Membresia
    LEFT JOIN CDICfgCategoria ccc ON ci.NumMemb BETWEEN ccc.CantidadD AND ccc.CantidadA 
                                     AND DATEDIFF(YY, ISNULL(FechaNacimiento, GETDATE()), GETDATE()) BETWEEN ccc.EdadD AND ccc.EdadA
    WHERE cc.Estacion = 1 AND cc.Socio = @Socio AND ccc.Sugerir = 'Si' --BEGM 20110121. Considerar si la categoría se sugiere
          AND c.Socio <> @Socio and CDISocio = 1 AND (c.Estatus  IN('ALTA','BLOQUEADO') OR ISNULL(Descripcion13, 'No') = 'Si')
          AND CASE WHEN ISNULL(c.Categoria, '') <> ISNULL(ccc.Categoria, '') THEN ccc.Categoria ELSE '' END <> '' 

    SELECT @Depend = @@ROWCOUNT, @j = 1
      
    IF @Depend > 0
    BEGIN
      WHILE @j <= @Depend
      BEGIN
        SELECT @SocioD = Socio FROM @MismaMembresia WHERE ID = @j

        INSERT INTO CDISocio(Empresa, Mov, FechaEmision, UltimoCambio, Proyecto, Usuario, Referencia, 
                              Estatus, Sucursal, Moneda, TipoCambio, Cliente, Membresia, Socio, Categoria)
        SELECT @Empresa, 'Sol Cambio Categoría', dbo.fnFechaSinHora(GETDATE()), GETDATE(), @DefProyecto, @Usuario, 'Cambio de Categoría', 
               'SINAFECTAR', @DefSucursal, @DefMoneda, 1, Cliente, Membresia, Socio, CatSug
        FROM @MismaMembresia
        WHERE Socio = @SocioD
    
        SELECT @IDGeneradoD = SCOPE_IDENTITY()
    
        IF @IDGeneradoD IS NOT NULL
          EXEC spAfectar 'SOC', @IDGeneradoD, 'AFECTAR', 'Todo', NULL, @Usuario, @Estacion, @EnSilencio=1
        
        SET @j = @j + 1

      END
      DELETE @MismaMembresia
    END
      
    SET @i = @i + 1
    
  END  
END
GO

