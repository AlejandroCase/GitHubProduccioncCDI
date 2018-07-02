-- SELECT * FROM CDITareasPendientes
IF EXISTS(SELECT * FROM sysobjects s WHERE TYPE = 'V' AND NAME = 'CDITareasPendientes') DROP VIEW CDITareasPendientes
GO
CREATE VIEW CDITareasPendientes
AS

  SELECT 'VTAS' AS Modulo, Mov, Usuario, v.SubModulo
    FROM Venta v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario, v.Submodulo
  UNION 
  SELECT 'AF' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM ActivoFijo v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario
  UNION 
  SELECT 'COMS' AS Modulo, Mov, Usuario, v.SubModulo
    FROM Compra v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario, SubModulo
  UNION 
  SELECT 'CONT' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM Cont v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario
  UNION 
  SELECT 'CXC' AS Modulo, Mov, Usuario, v.SubModulo
    FROM Cxc v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario, SubModulo
  UNION 
  SELECT 'CXP' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM Cxp v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario
  UNION 
  SELECT 'DIN' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM Dinero v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario
  UNION 
  SELECT 'GAS' AS Modulo, Mov, Usuario, v.SubModulo
    FROM Gasto v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario, SubModulo
  UNION 
  SELECT 'INV' AS Modulo, Mov, Usuario, v.SubModulo
    FROM Inv v WITH (NOLOCK) WHERE v.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, v.Usuario, SubModulo
  UNION 
  SELECT 'SOC' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM CDISocio c WITH (NOLOCK) WHERE c.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, c.Usuario
  UNION 
  SELECT 'ASIS' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM Asiste c WITH (NOLOCK) WHERE c.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, c.Usuario
  UNION 
  SELECT 'NOM' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM Nomina c WITH (NOLOCK) WHERE c.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, c.Usuario
  UNION 
  SELECT 'CP' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM CP c WITH (NOLOCK) WHERE c.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, c.Usuario
  UNION 
  SELECT 'CE' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM CE c WITH (NOLOCK) WHERE c.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, c.Usuario
  UNION 
  SELECT 'CA' AS Modulo, Mov, Usuario, '' AS SubModulo
    FROM CA c WITH (NOLOCK) WHERE c.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, c.Usuario
  UNION 
  SELECT 'ST' AS Modulo, Mov, Usuario, c.SubModulo
    FROM Soporte c WITH (NOLOCK) WHERE c.Estatus NOT IN ('CANCELADO', 'CONCLUIDO')
   GROUP BY Mov, c.Usuario, SubModulo
   
GO