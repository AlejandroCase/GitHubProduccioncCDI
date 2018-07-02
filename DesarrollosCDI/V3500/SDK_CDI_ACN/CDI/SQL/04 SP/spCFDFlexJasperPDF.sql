/* Configuracion MS SQL Server */

SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/**************** spCFDFlexJasperPDF ****************/
if exists (select * from sysobjects where id = object_id('dbo.spCFDFlexJasperPDF') and type = 'P') drop procedure dbo.spCFDFlexJasperPDF
GO             
CREATE PROCEDURE spCFDFlexJasperPDF  
  @Empresa  varchar(5),  
  @Modulo   varchar(5),  
  @ID    int,  
  @Temporal  varchar(255),  
  @Imagen   varchar(255),  
  @Reporte  varchar(50),  

  @Ok    int = NULL OUTPUT,  
  @OkRef   varchar(255) = NULL OUTPUT  


--//WITH ENCRYPTION  
AS BEGIN  
  -- SET nocount ON  
  DECLARE  
    @XML     varchar(max),  
    @JaseperPDF    varchar(max),  
    @ImporteConLetra  varchar(max),  
 @Comentario1   varchar(255),  
 @Comentario2   varchar(255),  
 @Comentario3   varchar(255),  
 @Comentario4   varchar(255),  
 @Comentario5   varchar(255),  
 @PlantillaJasper  varchar(255),  
 @eDocEstatus   varchar(15),  
 @Mov     varchar(20),  
 @ContMoneda    varchar(20),  
 @EmpresaNoInterior  varchar(20),  
 @ReceptorNoInterior  varchar(20),  
 @Receptor    varchar(50),  
 @TFDCadenaOriginal  varchar(max),  
 @EsCFDI     bit,  
 @Estatus    varchar(15),  
 @SAT_MN     bit  

  SET @EsCFDI = 0  
  IF @Modulo = 'VTAS'  
  BEGIN  
    SELECT @Mov = RTRIM(LTRIM(ISNULL(v.Mov,''))),  
           @Receptor = RTRIM(LTRIM(ISNULL(v.CDIFacturarA,v.Cliente))),  --AQUI SE MODIFICO
           @Estatus = RTRIM(LTRIM(ISNULL(v.Estatus,''))),  
           @SAT_MN = ISNULL(mt.SAT_MN, ec.SAT_MN)  
      FROM Venta v  
      JOIN EmpresaCFD ec  
        ON v.Empresa = ec.Empresa  
      JOIN MovTipo mt  
        ON v.Mov = mt.Mov AND mt.Modulo = @Modulo  
     WHERE v.ID = @ID  

    SELECT @ReceptorNoInterior = RTRIM(LTRIM(ISNULL(DireccionNumeroInt,''))) FROM Cte WHERE Cliente = @Receptor  
  END  
  ELSE  
  IF @Modulo = 'COMS'  
  BEGIN  
    SELECT @Mov = RTRIM(LTRIM(ISNULL(c.Mov,''))),  
           @Receptor = RTRIM(LTRIM(ISNULL(c.Proveedor,''))),  
           @Estatus = RTRIM(LTRIM(ISNULL(c.Estatus,''))),  
           @SAT_MN = ISNULL(mt.SAT_MN, ec.SAT_MN)  
      FROM Compra c  
      JOIN EmpresaCFD ec  
        ON c.Empresa = ec.Empresa  
      JOIN MovTipo mt  
        ON c.Mov = mt.Mov AND mt.Modulo = @Modulo  
     WHERE c.ID = @ID  

    SELECT @ReceptorNoInterior = RTRIM(LTRIM(ISNULL(DireccionNumeroInt,''))) FROM Prov WHERE Proveedor = @Receptor  
  END  
  ELSE  
  IF @Modulo = 'CXC'  
  BEGIN  
    SELECT @Mov = RTRIM(LTRIM(ISNULL(Cxc.Mov,''))),  
           @Receptor = RTRIM(LTRIM(ISNULL(Cxc.CDIFacturarA,Cxc.Cliente))),  --AQUI SE MODIFICO
           @Estatus = RTRIM(LTRIM(ISNULL(Cxc.Estatus,''))),  
           @SAT_MN = ISNULL(mt.SAT_MN, ec.SAT_MN)  
      FROM Cxc  
      JOIN EmpresaCFD ec  
        ON Cxc.Empresa = ec.Empresa  
      JOIN MovTipo mt  
        ON Cxc.Mov = mt.Mov AND mt.Modulo = @Modulo  
     WHERE Cxc.ID = @ID  

    SELECT @ReceptorNoInterior = RTRIM(LTRIM(ISNULL(DireccionNumeroInt,''))) FROM Cte WHERE Cliente = @Receptor   
  END  
  ELSE  
  IF @Modulo = 'CXP'  
  BEGIN  
    SELECT @Mov = RTRIM(LTRIM(ISNULL(Cxp.Mov,''))),  
           @Receptor = RTRIM(LTRIM(ISNULL(Cxp.Proveedor,''))),  
           @Estatus = RTRIM(LTRIM(ISNULL(Cxp.Estatus,''))),  
           @SAT_MN = ISNULL(mt.SAT_MN, ec.SAT_MN)  
      FROM Cxp  
      JOIN EmpresaCFD ec  
        ON Cxp.Empresa = ec.Empresa  
      JOIN MovTipo mt  
        ON Cxp.Mov = mt.Mov AND mt.Modulo = @Modulo  
     WHERE Cxp.ID = @ID  

    SELECT @ReceptorNoInterior = RTRIM(LTRIM(ISNULL(DireccionNumeroInt,''))) FROM Prov WHERE Proveedor = @Receptor  
  END  

  SELECT @ContMoneda = RTRIM(LTRIM(ISNULL(ContMoneda,''))) FROM EmpresaCfg WHERE Empresa = @Empresa  
  SELECT @EmpresaNoInterior = RTRIM(LTRIM(ISNULL(DireccionNumeroInt,''))) FROM Empresa WHERE Empresa = @Empresa  

  UPDATE CFD  
     SET TFDCadenaOriginal = dbo.fnCFDFlexCadenaOriginalTFDI(@Modulo, @ID)  
   WHERE Modulo = @Modulo   
     AND ModuloID = @ID  

  SELECT @XML = ISNULL(Documento,''),  
         @TFDCadenaOriginal = ISNULL(TFDCadenaOriginal,'')  
    FROM CFD   
   WHERE Modulo = @Modulo   
     AND ModuloID = @ID  


  IF @Modulo = 'VTAS'  
    SELECT  
       @ImporteConLetra = RTRIM(LTRIM(ISNULL(dbo.fnNumeroEnEspanol(VentaTotal,CASE WHEN @SAT_MN = 1 THEN @ContMoneda ELSE VentaMoneda END),''))),  
       @ImporteConLetra = CASE WHEN @SAT_MN = 1 THEN '(' + @ImporteConLetra +  + ' M.N.)' ELSE  
            CASE WHEN @ContMoneda = VentaMoneda THEN '(' + @ImporteConLetra +  + ' M.N.)' ELSE '(' + @ImporteConLetra +  + ')' END END  
      FROM CFDVenta   
     WHERE ID = @ID  
  ELSE  
  IF @Modulo = 'CXC'  
    SELECT  
       @ImporteConLetra = RTRIM(LTRIM(ISNULL(dbo.fnNumeroEnEspanol(CxcTotal,CASE WHEN @SAT_MN = 1 THEN @ContMoneda ELSE CXCMoneda END),''))),  
       @ImporteConLetra = CASE WHEN @SAT_MN = 1 THEN '(' + @ImporteConLetra +  + ' M.N.)' ELSE  
              CASE WHEN @ContMoneda = CXCMoneda THEN '(' + @ImporteConLetra +  + ' M.N.)' ELSE '(' + @ImporteConLetra +  + ')' END END  
      FROM CFDCxc  
     WHERE ID = @ID  


  SELECT @Comentario1  = RTRIM(LTRIM(ISNULL(Comentario1,''))),  
   @Comentario2  = RTRIM(LTRIM(ISNULL(Comentario2,''))),  
   @Comentario3  = RTRIM(LTRIM(ISNULL(Comentario3,''))),  
   @Comentario4  = RTRIM(LTRIM(ISNULL(Comentario4,''))),  
   @Comentario5  = RTRIM(LTRIM(ISNULL(Comentario5,''))),  
   @PlantillaJasper = RTRIM(LTRIM(ISNULL(PlantillaJasper,'')))  
    FROM EmpresaCFDJasperReports   
   WHERE Empresa = @Empresa AND Reporte = @Reporte  

  IF NULLIF(@Receptor,'') IS NULL SET @Receptor = '(Todos)'  

  --Primero se busca el cliente especifico    
  SELECT   
    @eDocEstatus = NULLIF(Estatus,'')  
    FROM MovTipoCFDFlex  
   WHERE Modulo = @Modulo  
     AND Mov = @Mov  
     AND Contacto = @Receptor  

  --Si no se encuentra, se busca una configuraci�n gen�rica  
  IF NULLIF(@eDocEstatus,'') IS NULL  
  BEGIN    
    SELECT   
      @eDocEstatus = NULLIF(Estatus,'')        
      FROM MovTipoCFDFlex  
     WHERE Modulo = @Modulo  
       AND Mov = @Mov  
       AND ISNULL(NULLIF(ISNULL(NULLIF(Contacto,''),'(Todos)'),'(Todos)'),@Receptor) = @Receptor  
  END  


  IF @XML LIKE '%<cfdi:Comprobante%' SET @EsCFDI = 1  

  IF @Ok IS NULL  
    EXEC speDocXML @@SPID, @Empresa, @Modulo, '', @ID, @PlantillaJasper, @eDocEstatus, 0, 1, @XML OUTPUT, @Ok OUTPUT, @OkRef OUTPUT, 0, 1  

--select convert(xml,@XML), @Ok  

  SELECT @JaseperPDF = 'Movimiento="' + @Mov + '" ' +  
        'ImporteConLetra="' + @ImporteConLetra + '" ' +  
        'Estatus="' + @Estatus + '" ' +  
        'EmpresaNoInterior="' + @EmpresaNoInterior + '" ' +  
        'ReceptorNoInterior="' + @ReceptorNoInterior + '" ' +  
                       'Comentario1="' + @Comentario1 + '" ' +  
                       'Comentario2="' + @Comentario2 + '" ' +  
                       'Comentario3="' + @Comentario3 + '" ' +  
                       'Comentario4="' + @Comentario4 + '" ' +  
                       'Comentario5="' + @Comentario5 + '" ' +  
                       'TFDCadenaOriginal="' + @TFDCadenaOriginal + '" ' +  
                       'CFDModulo=" '  
  SELECT @XML = REPLACE(@XML, 'CFDModulo="', @JaseperPDF)    

  EXEC spCFDFlexRegenerarArchivo @Empresa, @Temporal, @XML, @Ok OUTPUT, @OkRef OUTPUT  

  IF @EsCFDI = 1  
    EXEC spCFDFlexQRCode @Empresa, @Modulo, @ID, @Imagen  
--select @XML  
--select convert(xml,@XML), @Ok  
END  
GO