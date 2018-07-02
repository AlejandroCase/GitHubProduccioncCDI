SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON
SET IMPLICIT_TRANSACTIONS OFF
GO

IF EXISTS ( SELECT * FROM SYSOBJECTS WHERE ID= OBJECT_ID ('DBO.SpSUATrabajador') AND TYPE='P') DROP PROC SpSUATrabajador

GO

CREATE PROCEDURE SpSUATrabajador 

	@EMPRESA  VARCHAR(20),  
	@FECHAD  DATETIME,  
	@FECHAA  DATETIME,
	@Valuacion    VARCHAR (11)
  
AS BEGIN  
  
SELECT   
    Valuacion    RegistroPatronal,
    --PersonalPropValor.Valor RegistroPatronal,  
    Registro3             IMSS,  
    Registro2             RFC,  
    Registro              CURP,  
    ApellidoPaterno+'$'+ApellidoMaterno+'$'+Nombre Nombre,  
    TipoTrabajador = CASE TipoContrato   
                       WHEN 'Contruccion' THEN '3'  
                       WHEN 'Eventual'     THEN '2'    
                       ELSE '1'  
                     END,  
    Jornada = Case Jornada WHEN 'Jornada Reducida' THEN '1' ELSE '0'    END,  
    Right('0'+ltrim(DATEPART(dd,FechaAlta)),2)+right('0'+ltrim(DATEPART(mm,FechaAlta)),2)+LTRIM(DATEPART(yyyy,FechaAlta)) FechaAlta,  
    SDI * 100 SDI,  
    Personal  
FROM   
      Personal   
    --  PersonalPropValor   
WHERE   
      /*Personal.Estatus= 'ALTA'   
  AND */ Personal.Tipo='Empleado'  
  --AND PersonalPropValor.Propiedad= 'Registro Patronal'   
  AND Personal.Valuacion = @Valuacion
  AND Personal.FechaAlta BETWEEN @FECHAD AND @FECHAA  ----     
  --AND PersonalPropValor.Rama='EMP'  
  --AND PersonalPropValor.Cuenta= @EMPRESA--'05'   
  
END   
  
/*  
  
EXEC    SpSUATrabajador 'PCC',  '29/12/1900' ,'10/12/2010' , 'Y5032878109'
SELECT VALUACION,* FROM PERSONAL 

*/




GO


IF EXISTS ( SELECT * FROM SYSOBJECTS WHERE ID= OBJECT_ID ('DBO.spSUAMovimientos') AND TYPE='P') DROP PROC spSUAMovimientos

GO

CREATE PROCEDURE spSUAMovimientos 

 @EMPRESA CHAR(10),  
 @FechaD DATETIME,  
 @FechaA DATETIME,  
 @RegistroPatronal CHAR (11)
 
AS BEGIN  
  
CREATE TABLE   
 #SUAMovimiento(  
 RegistroPatronal CHAR(11),  
 IMSS CHAR(11),  
 TipoMovimiento CHAR(2),  
 FechaMovimiento CHAR(8),  
 FolioIncapacidad CHAR(8),  
 Dias CHAR(2),  
 SDI MONEY)  
  
INSERT INTO #SUAMovimiento (RegistroPatronal,IMSS,TipoMovimiento,FechaMovimiento,FolioIncapacidad,Dias,SDI)  
  
SELECT DISTINCT  
 CAST(RIGHT(ISNULL(REPLACE(Personal.Valuacion,'-',''),''),11) AS CHAR(11)) RegistroPatronal,  
 CAST(RIGHT(ISNULL(Registro3,''),11) AS CHAR(11)) IMSS,  
 TipoMovimiento = CASE A.Mov   
     WHEN 'Reingresos' THEN '08'  
     WHEN 'Bajas' THEN '02'   
      END,  
 RIGHT('0'+LTRIM(DATEPART(dd,a.FechaEmision)),2)+RIGHT('0'+LTRIM(DATEPART(mm,a.FechaEmision)),2)+LTRIM(DATEPART(yyyy,a.FechaEmision)) FechaEmision,  
 '' Folio,  
 '00' Dias,  
 CEILING(ISNULL(B.SDI,0)*100) SDI  
   
FROM   
 RH A,  
 RHD B,   
    Personal,  
 PersonalPropValor  
  
WHERE   
   A.FechaEmision BETWEEN @FechaD AND @FechaA   -- '01/01/2009' and '19/01/2009' --    
  AND A.EMPRESA= @Empresa  -- '05' --    
  AND A.Estatus='Concluido'   
  AND A.Mov IN('Reingresos','Bajas') --  
  --AND PersonalPropValor.Propiedad = 'Registro Patronal'  
  AND B.Personal=Personal.Personal    
  AND A.ID=B.ID   
  AND PersonalPropValor.Rama='EMP'  
  AND PersonalPropValor.Cuenta = @Empresa -- '05' --
  AND Personal.Valuacion = @RegistroPatronal  
  
  
INSERT INTO #SUAMovimiento (RegistroPatronal,Imss,TipoMovimiento,FechaMovimiento,SDI,DIAS,FolioIncapacidad)  
  
  
SELECT DISTINCT  
 CAST(RIGHT(ISNULL(REPLACE(Personal.Valuacion,'-',''),''),11) AS CHAR(11)) RegistroPatronal,  
 CAST(RIGHT(ISNULL(Registro3,''),11) AS CHAR(11)) IMSS,  
 '07' TipoMovimiento,  
 RIGHT('0'+LTRIM(DATEPART(dd,a.FechaEmision)),2)+RIGHT('0'+LTRIM(DATEPART(mm,a.FechaEmision)),2)+LTRIM(DATEPART(yyyy,a.FechaEmision)) FechaEmision,  
 CEILING(ISNULL(B.SDI,0)*100) SDI,  
 '00' Dias,  
 '' Folio  
FROM   
 RH A,  
 RHD B,  
 Personal,  
 PersonalPropValor  
  
WHERE A.FechaEmision BETWEEN @FechaD AND @FechaA -- '16/01/2009' and '19/01/2009' --     
  AND A.EMPRESA= @Empresa  -- '05' --    
  AND A.Estatus='Concluido'   
  AND A.Mov ='Modificaciones'   
  AND A.Concepto = NULL  
  --AND PersonalPropValor.Propiedad = 'Registro Patronal'  
  AND B.Personal=Personal.Personal    
  AND A.ID=B.ID   
  AND PersonalPropValor.Rama='EMP'  
  AND PersonalPropValor.Cuenta    = @Empresa -- '05' -- 
  AND Personal.Valuacion = @RegistroPatronal 
   
  
INSERT INTO #SUAMovimiento (RegistroPatronal,Imss,TipoMovimiento,FechaMovimiento,dias,FolioIncapacidad,SDI)  
  
SELECT   
 CAST(RIGHT(ISNULL(REPLACE(Personal.Valuacion,'-',''),''),11) AS CHAR(11)) RegistroPatronal,  
 CAST(RIGHT(ISNULL(Registro3,''),11) AS CHAR(11)) IMSS,  
 TipoMovimiento = CASE Nomina.Mov  
      WHEN 'Incapacidades' THEN '12'   
      WHEN 'Faltas'  THEN '11'   
      END,  
 RIGHT('0'+LTRIM(DATEPART(dd,Nomina.FechaEmision)),2)+RIGHT('0'+LTRIM(DATEPART(mm,Nomina.FechaEmision)),2)+LTRIM(DATEPART(yyyy,Nomina.FechaEmision)) FechaEmision,  
 LEFT('0'+LTRIM(RIGHT(Convert(CHAR, ISNULL(NominaD.Cantidad,0)),20)),2) SDI,  
 Cast(ISNULL(NominaD.Referencia,'') as char(8)) DIAS,0 FOLIO  
  
FROM  
 Nomina,  
 NominaD,  
 Personal,  
 PersonalPropValor  
  
WHERE   
     Nomina.FechaEmision BETWEEN @FechaD AND @FechaA -- '16/01/2009' and '19/01/2009' --   
  AND Nomina.EMPRESA= @Empresa -- '05' --    
  AND Mov in('Incapacidades','Faltas')   
  AND Nomina.Estatus in('PROCESAR','CONCLUIDO')  
  --AND PersonalPropValor.Propiedad = 'Registro Patronal'  
  AND NominaD.Personal=Personal.Personal    
  AND Nomina.ID=NominaD.ID   
  AND PersonalPropValor.Rama='EMP'  
  AND PersonalPropValor.Cuenta=  @Empresa -- '05' --
  AND Personal.Valuacion = @RegistroPatronal   
  
SELECT   
 RegistroPatronal,  
 IMSS,  
 TipoMovimiento,  
 FechaMovimiento,  
 FolioIncapacidad,  
 Dias,  
 SDI  
  
 FROM #SUAMovimiento  
  
Order by RegistroPatronal, TipoMovimiento, FechaMovimiento  
  
END
/*
exec spSUAMovimientos 'PCC','04/01/1900', '04/12/2010','Y5032878109'
*/


GO

