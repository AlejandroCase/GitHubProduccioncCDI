SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO

if exists (select * from sysobjects where id = object_id('dbo.CDIVistaNIPCDI') and type = 'V') drop view dbo.CDIVistaNIPCDI
GO
CREATE VIEW CDIVistaNIPCDI
AS
SELECT 'Socio' AS Tipo , c.NIPCDI, c.PersonalNombres + ' ' + c.PersonalApellidoPaterno + ' ' + c.PersonalApellidoMaterno AS Nombre, c.Cliente AS Clave
  FROM Cte c
WHERE c.CDISocio = 1 AND isnull(c.NIPCDI, '') <> '' 
UNION
SELECT 'Cliente' AS Tipo, c.NIPCDI, c.PersonalNombres + ' ' + c.PersonalApellidoPaterno + ' ' + c.PersonalApellidoMaterno AS Nombre, c.Cliente AS Clave
  FROM Cte c
WHERE c.CDISocio = 0 AND isnull(c.NIPCDI, '') <> '' 
UNION 
SELECT 'Proveedor' AS Tipo, p.NIPCDI, CASE WHEN isnull(p.Nombre, '') <> '' THEN p.Nombre ELSE p.CDINombre + ' ' + p.CDIApellidoPaterno + ' ' + p.CDIApellidoMaterno END AS Nombre, p.Proveedor AS Clave
  FROM Prov p
WHERE isnull(p.NIPCDI, '') <> ''
UNION 
SELECT 'Personal' AS Tipo, p.NIPCDI, p.Nombre + ' ' + p.ApellidoPaterno + ' ' + p.ApellidoMaterno, p.Personal AS Clave
  FROM Personal p
WHERE isnull(p.NIPCDI, '') <> ''  
GO

if exists (select * from sysobjects where id = object_id('dbo.CDIClaveHonorJusticia') and type = 'V') drop view dbo.CDIClaveHonorJusticia
GO
CREATE VIEW CDIClaveHonorJusticia
AS
SELECT 'Cliente' AS Tipo, 
        c.Cliente AS Clave, 
        c.Nombre, 
        c.NombreCorto,
        c.NIPCDI,
        c.Socio 
  FROM Cte c 
 WHERE c.CDISocio = 0
UNION 
SELECT 'Socio' AS Tipo, 
        c.Cliente AS Clave, 
        c.PersonalNombres + ' ' + c.PersonalApellidoPaterno + ' ' + c.PersonalApellidoMaterno AS Nombre, 
        '' AS NombreCorto,
        c.NIPCDI,
        c.Socio
  FROM Cte c 
 WHERE c.CDISocio = 1
UNION 
SELECT 'Proveedor' AS Tipo,
        p.Proveedor AS Clave,
        p.CDINombre + ' ' + p.CDIApellidoPaterno + ' ' + p.CDIApellidoMaterno AS Nombre,
        p.Nombre AS NombreCorto,
        p.NIPCDI,
        '' AS Socio
  FROM Prov p
UNION 
SELECT 'Personal' AS Tipo,
       p.Personal AS Clave,
       p.Nombre  + ' ' + p.ApellidoPaterno + ' ' + p.ApellidoMaterno,
       '' AS NombreCorto,
       p.NIPCDI,
       '' AS Socio
  FROM Personal p  
GO

IF OBJECT_ID('CDIMovsBaja', 'V') IS NOT NULL
  DROP VIEW CDIMovsBaja
GO

CREATE VIEW CDIMovsBaja
AS
  SELECT cs.Cliente, FechaEmision, Concepto
  FROM CDISocio cs
  INNER JOIN (SELECT Cliente, MAX(ID) ID 
              FROM CDISocio 
              WHERE Mov = 'Baja' AND Estatus = 'CONCLUIDO' GROUP BY Cliente) Mov ON cs.Cliente = Mov.Cliente AND cs.ID = Mov.ID
GO
