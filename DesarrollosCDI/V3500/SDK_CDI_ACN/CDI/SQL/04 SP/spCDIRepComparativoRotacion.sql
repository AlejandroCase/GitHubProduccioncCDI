SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

/**************** spCDIRepComparativoRotacion ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCDIRepComparativoRotacion') and type = 'P') drop procedure dbo.spCDIRepComparativoRotacion
GO  
CREATE PROCEDURE spCDIRepComparativoRotacion (@Estacion INT, @Fecha DATETIME, @Almacen VARCHAR(10), @Categoria VARCHAR(50)) 
AS
BEGIN
  DECLARE 
    @Semana1      INT,
    @Semana2      INT,
    @Semana3      INT,
    @FechaD1      DATETIME,
    @FechaA1      DATETIME,
    @FechaD2      DATETIME,
    @FechaA2      DATETIME,
    @FechaD3      DATETIME,
    @FechaA3      DATETIME,
    @Ejercicio    INT,
    @EjercicioA   INT,
    @FechaAntD1   DATETIME,
    @FechaAntA1   DATETIME,
    @FechaAntD2   DATETIME,
    @FechaAntA2   DATETIME,
    @FechaAntD3   DATETIME,
    @FechaAntA3   DATETIME
    
    DELETE CDITitulos where Estacion = @Estacion   
    
    CREATE TABLE #RepComparativo ( Articulo     VARCHAR(20), 
                                   Descripcion  VARCHAR(100),
                                   Categoria    VARCHAR(50),
                                   Cantidad1    FLOAT NULL, 
                                   Cantidad2    FLOAT NULL, 
                                   Cantidad3    FLOAT NULL,
                                   CantidadAnt1 FLOAT NULL, 
                                   CantidadAnt2 FLOAT NULL, 
                                   CantidadAnt3 FLOAT NULL
                                   ) 

    CREATE TABLE #RepComparativoRotacion ( ID           INT IDENTITY,
                                           Articulo     VARCHAR(20), 
                                           Descripcion  VARCHAR(100),
                                           Categoria    VARCHAR(50),
                                           Cantidad1    FLOAT NULL, 
                                           Cantidad2    FLOAT NULL, 
                                           Cantidad3    FLOAT NULL,
                                           Total        FLOAT NULL,
                                           PromedioTri  FLOAT NULL,
                                           CantidadAnt1 FLOAT NULL, 
                                           CantidadAnt2 FLOAT NULL, 
                                           CantidadAnt3 FLOAT NULL,
                                           TotalAnt     FLOAT NULL,
                                           PromedioAnt  FLOAT NULL,
                                           Dif          FLOAT NULL,
                                           Porcentaje   FLOAT NULL                                           
                                         ) 
    
    IF @Almacen = '' OR @Almacen = 'NULL'
      SELECT @Almacen = NULL
    IF @Categoria = '' OR @Categoria = 'NULL'
      SELECT @Categoria = NULL
      
    SELECT @Semana1 = NoSemana FROM Tiempo WHERE Fecha = @Fecha
    SELECT @Semana2 = @Semana1 - 1, @Semana3 = @Semana1 - 2, @Ejercicio = YEAR(@Fecha), @EjercicioA = @Ejercicio - 1

    SELECT @FechaD1 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana1 AND Anio = @Ejercicio
    SELECT @FechaA1 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana1 AND Anio = @Ejercicio    
    
    SELECT @FechaD2 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana2 AND Anio = @Ejercicio
    SELECT @FechaA2 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana2 AND Anio = @Ejercicio    
    
    SELECT @FechaD3 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @Ejercicio
    SELECT @FechaA3 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @Ejercicio    

    SELECT @FechaAntD1 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana1 AND Anio = @EjercicioA
    SELECT @FechaAntA1 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana1 AND Anio = @EjercicioA    

    SELECT @FechaAntD2 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana2 AND Anio = @EjercicioA
    SELECT @FechaAntA2 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana2 AND Anio = @EjercicioA    
    
    SELECT @FechaAntD3 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA
    SELECT @FechaAntA3 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA    


    IF @Semana1 = 1
    BEGIN
      SELECT @Semana2 = MAX(NoSemana) FROM Tiempo WHERE Anio = @EjercicioA
      SELECT @Semana3 = @Semana2 - 1
      
      SELECT @FechaD2 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana2 AND Anio = @EjercicioA
      SELECT @FechaA2 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana2 AND Anio = @EjercicioA    
    
      SELECT @FechaD3 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA
      SELECT @FechaA3 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA    

      SELECT @FechaAntD2 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana2 AND Anio = @EjercicioA - 1
      SELECT @FechaAntA2 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana2 AND Anio = @EjercicioA - 1    
      
      SELECT @FechaAntD3 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA - 1
      SELECT @FechaAntA3 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA - 1    
      
    END
    ELSE
    IF @Semana1 = 2
    BEGIN
      SELECT @Semana3 = MAX(NoSemana) FROM Tiempo WHERE Anio = @EjercicioA

      SELECT @FechaD3 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA
      SELECT @FechaA3 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA    

      SELECT @FechaAntD3 = MIN(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA - 1
      SELECT @FechaAntA3 = MAX(Fecha) FROM Tiempo WHERE NoSemana = @Semana3 AND Anio = @EjercicioA - 1    
      
    END
        
    --SELECT @FechaD1 '@FechaD1', @FechaA1 '@FechaA1', @FechaD2 '@FechaD2', @FechaA2 '@FechaA2', @FechaD3 '@FechaD3', @FechaA3 '@FechaA3', 
    --       @FechaAntD1 '@FechaAntD1', @FechaAntA1 '@FechaAntA1', @FechaAntD2 '@FechaAntD2', @FechaAntA2 '@FechaAntA2', @FechaAntD3 '@FechaAntD3', 
    --       @FechaAntA3 '@FechaAntA3'

  
  INSERT INTO CDITitulos (Estacion,  Semana1,  Semana2,  Semana3,  Ejercicio1, Ejercicio2)
       SELECT             @Estacion, @Semana1, @Semana2, @Semana3, @Ejercicio, @EjercicioA

-- Inicio Año Actual
  INSERT INTO #RepComparativo (Articulo,    Descripcion,    Categoria,   Cantidad1)
       SELECT                  id.Articulo, a.Descripcion1, a.Categoria, Sum(isnull(id.Cantidad, 0))
         FROM Inv i
              LEFT JOIN InvD id    ON id.ID = i.ID
              LEFT JOIN Art a      ON a.Articulo = id.Articulo
        WHERE i.Estatus = 'CONCLUIDO' AND i.Mov IN ('Salida Cafeteria', 'Salida Diversa', 'Salida Rápida') AND FechaEmision BETWEEN @FechaD1 AND @FechaA1
              AND i.Almacen = ISNULL(@Almacen, i.Almacen) AND a.Categoria = ISNULL(@Categoria, a.Categoria)
     GROUP BY id.Articulo, a.Descripcion1, a.Categoria              


  INSERT INTO #RepComparativo (Articulo,    Descripcion,    Categoria,   Cantidad2)
       SELECT                  id.Articulo, a.Descripcion1, a.Categoria, Sum(isnull(id.Cantidad, 0))
         FROM Inv i
              LEFT JOIN InvD id    ON id.ID = i.ID
              LEFT JOIN Art a      ON a.Articulo = id.Articulo
        WHERE i.Estatus = 'CONCLUIDO' AND i.Mov IN ('Salida Cafeteria', 'Salida Diversa', 'Salida Rápida') AND FechaEmision BETWEEN @FechaD2 AND @FechaA2
              AND i.Almacen = ISNULL(@Almacen, i.Almacen) AND a.Categoria = ISNULL(@Categoria, a.Categoria)
     GROUP BY id.Articulo, a.Descripcion1, a.Categoria              

  INSERT INTO #RepComparativo (Articulo,    Descripcion,    Categoria,   Cantidad3)
       SELECT                  id.Articulo, a.Descripcion1, a.Categoria, Sum(isnull(id.Cantidad, 0))
         FROM Inv i
              LEFT JOIN InvD id    ON id.ID = i.ID
              LEFT JOIN Art a      ON a.Articulo = id.Articulo
        WHERE i.Estatus = 'CONCLUIDO' AND i.Mov IN ('Salida Cafeteria', 'Salida Diversa', 'Salida Rápida') AND FechaEmision BETWEEN @FechaD3 AND @FechaA3
              AND i.Almacen = ISNULL(@Almacen, i.Almacen) AND a.Categoria = ISNULL(@Categoria, a.Categoria)        
     GROUP BY id.Articulo, a.Descripcion1, a.Categoria      
-- Fin Año Actual             
       
-- Inicio Año Anterior
  INSERT INTO #RepComparativo (Articulo,    Descripcion,    Categoria,   CantidadAnt1)
       SELECT                  id.Articulo, a.Descripcion1, a.Categoria, Sum(isnull(id.Cantidad, 0))
         FROM Inv i
              LEFT JOIN InvD id    ON id.ID = i.ID
              LEFT JOIN Art a      ON a.Articulo = id.Articulo
        WHERE i.Estatus = 'CONCLUIDO' AND i.Mov IN ('Salida Cafeteria', 'Salida Diversa', 'Salida Rápida') AND FechaEmision BETWEEN @FechaAntD1 AND @FechaAntA1
              AND i.Almacen = ISNULL(@Almacen, i.Almacen) AND a.Categoria = ISNULL(@Categoria, a.Categoria)        
     GROUP BY id.Articulo, a.Descripcion1, a.Categoria              


  INSERT INTO #RepComparativo (Articulo,    Descripcion,    Categoria,   CantidadAnt2)
       SELECT                  id.Articulo, a.Descripcion1, a.Categoria, Sum(isnull(id.Cantidad, 0))
         FROM Inv i
              LEFT JOIN InvD id    ON id.ID = i.ID
              LEFT JOIN Art a      ON a.Articulo = id.Articulo
        WHERE i.Estatus = 'CONCLUIDO' AND i.Mov IN ('Salida Cafeteria', 'Salida Diversa', 'Salida Rápida') AND FechaEmision BETWEEN @FechaAntD2 AND @FechaAntA2
              AND i.Almacen = ISNULL(@Almacen, i.Almacen) AND a.Categoria = ISNULL(@Categoria, a.Categoria)        
     GROUP BY id.Articulo, a.Descripcion1, a.Categoria              

  INSERT INTO #RepComparativo (Articulo,    Descripcion,    Categoria,   CantidadAnt3)
       SELECT                  id.Articulo, a.Descripcion1, a.Categoria, Sum(isnull(id.Cantidad, 0))
         FROM Inv i
              LEFT JOIN InvD id    ON id.ID = i.ID
              LEFT JOIN Art a      ON a.Articulo = id.Articulo
        WHERE i.Estatus = 'CONCLUIDO' AND i.Mov IN ('Salida Cafeteria', 'Salida Diversa', 'Salida Rápida') AND FechaEmision BETWEEN @FechaAntD3 AND @FechaAntA3
              AND i.Almacen = ISNULL(@Almacen, i.Almacen) AND a.Categoria = ISNULL(@Categoria, a.Categoria)        
     GROUP BY id.Articulo, a.Descripcion1, a.Categoria    
-- Fin Año Anterior               

  INSERT INTO #RepComparativoRotacion (Articulo, Descripcion, Categoria, Cantidad1,                    Cantidad2,                   Cantidad3,
                                                                         CantidadAnt1,                 CantidadAnt2,                CantidadAnt3)
  SELECT                               Articulo, Descripcion, Categoria, ISNULL(SUM(Cantidad1), 0),    ISNULL(SUM(Cantidad2), 0),    ISNULL(SUM(Cantidad3), 0) 'Semena3', 
                                                                         ISNULL(SUM(CantidadAnt1), 0), ISNULL(SUM(CantidadAnt2), 0), ISNULL(SUM(CantidadAnt3), 0) 'SemenaAnt3'
  FROM #RepComparativo
  GROUP BY Articulo, Descripcion, Categoria

  UPDATE #RepComparativoRotacion SET Total    = dbo.CDIfnTotalArt(Articulo, @FechaA1,    @Ejercicio, @Almacen), 
                                     TotalAnt = dbo.CDIfnTotalArt(Articulo, @FechaAntA1, @EjercicioA, @Almacen)
                                     
  UPDATE #RepComparativoRotacion SET PromedioTri    = Total / @Semana1,
                                     PromedioAnt = TotalAnt / @Semana1,
                                     Dif         = TotalAnt - Total,
                                     Porcentaje  = CASE WHEN TotalAnt = 0 THEN 0 ELSE (TotalAnt - Total)/TotalAnt END

  SELECT ID,           Articulo, Descripcion, Categoria, Cantidad1, Cantidad2, Cantidad3, Total, Convert(Decimal(20,2), round(PromedioTri, 2), 2) AS PromedioTri, CantidadAnt1, CantidadAnt2, 
         CantidadAnt3, TotalAnt, Convert(Decimal(20,2), round(PromedioAnt, 2), 2) AS PromedioAnt, Dif, Convert(Decimal(20,2), round(Porcentaje, 2), 2) AS Porcentaje
    FROM #RepComparativoRotacion  ORDER BY Categoria, Descripcion 
    
END
GO
--DECLARE 
--  @Fecha DATETIME
  
--SELECT @Fecha = dbo.fnFechaSinHora(GETDATE()-100)
----SELECT @Fecha = '01-07-2012'
--EXEC dbo.spCDIRepComparativoRotacion @Estacion = 2,   @Fecha= '23-10-2012',    @Almacen = 'GENERAL',    @Categoria = 'ALIMENTOS'
--EXEC spCDIRepComparativoRotacion 1 , @Fecha, NULL, NULL
--GO