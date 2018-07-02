SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
if exists (select * from sysobjects where id = object_id('dbo.cVentaD') and sysstat & 0xf = 2) drop view dbo.cVentaD
GO
CREATE VIEW cVentaD
--//WITH ENCRYPTION
AS
SELECT
  ID,
  Renglon,
  RenglonSub,

  RenglonID,
  RenglonTipo,

  Cantidad,
  Almacen,
  EnviarA,
  Codigo,
  Articulo,
  SubCuenta,
  --nSubCuenta,
  Precio,
  PrecioSugerido,
  DescuentoTipo,
  DescuentoLinea,
  DescuentoImporte,
  Impuesto1,
  Impuesto2,
  Impuesto3,
  DescripcionExtra,
  Costo,
  CostoActividad,
  Paquete,
  ContUso,
  ContUso2,
  ContUso3,

--  Comision,

  Aplica,
  AplicaID,

  CantidadPendiente,
  CantidadReservada,
  CantidadCancelada,
  CantidadOrdenada,
  CantidadObsequio,

  CantidadA,

  Unidad,
  Factor,
  CantidadInventario,

  SustitutoArticulo,
  SustitutoSubCuenta,
  FechaRequerida,
  HoraRequerida,

  Instruccion,

  UltimoReservadoCantidad,
  UltimoReservadoFecha,
  
  Agente,
  Departamento,
  Sucursal,
  SucursalOrigen,
  AutoLocalidad,
  UEN,
  Espacio,
  CantidadAlterna,
  PoliticaPrecios,
  PrecioMoneda,
  PrecioTipoCambio,
  AFArticulo,
  AFSerie,
  ExcluirPlaneacion,
  Anexo, 
  Estado,
  ExcluirISAN,
  Posicion,
  PresupuestoEsp,
  ProveedorRef,
  TransferirA,
  Tarima,
  ABC,
  TipoImpuesto1,
  TipoImpuesto2,
  TipoImpuesto3,
  CDIClavePresupuestal
  --OrdenCompra

FROM	
  VentaD
GO

