
[Forma]
Clave=CDIVCargaTranWeb
Icono=0
Modulos=(Todos)
Nombre=Tran. Sin Procedar

ListaCarpetas=CDIVCargaTranWeb
CarpetaPrincipal=CDIVCargaTranWeb
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=273
PosicionInicialAncho=1283
PosicionInicialIzquierda=36
PosicionInicialArriba=100
[CDIVCargaTranWeb]
Estilo=Hoja
Clave=CDIVCargaTranWeb
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVCargaTranWeb
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaOrden=(Lista)
CarpetaVisible=S

HojaOrdenarColumnas=S
[CDIVCargaTranWeb.lid]
Carpeta=CDIVCargaTranWeb
Clave=lid
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVCargaTranWeb.Procesado]
Carpeta=CDIVCargaTranWeb
Clave=Procesado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVCargaTranWeb.IdTransaccionWeb]
Carpeta=CDIVCargaTranWeb
Clave=IdTransaccionWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CDIVCargaTranWeb.CDISocio]
Carpeta=CDIVCargaTranWeb
Clave=CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVCargaTranWeb.Nombre]
Carpeta=CDIVCargaTranWeb
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVCargaTranWeb.Estacion]
Carpeta=CDIVCargaTranWeb
Clave=Estacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIVCargaTranWeb.Modulo]
Carpeta=CDIVCargaTranWeb
Clave=Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIVCargaTranWeb.Movimiento]
Carpeta=CDIVCargaTranWeb
Clave=Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVCargaTranWeb.Concepto]
Carpeta=CDIVCargaTranWeb
Clave=Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVCargaTranWeb.Importe]
Carpeta=CDIVCargaTranWeb
Clave=Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVCargaTranWeb.UnidadCantidad]
Carpeta=CDIVCargaTranWeb
Clave=UnidadCantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[CDIVCargaTranWeb.FechaEmision]
Carpeta=CDIVCargaTranWeb
Clave=FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Actualiza]
Nombre=Actualiza
Boton=82
NombreDesplegar=Acualiza
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S




EspacioPrevio=S
[CDIVCargaTranWeb.Columnas]
lid=37
Procesado=54
IdTransaccionWeb=249
CDISocio=63
Nombre=201
Estacion=66
Modulo=46
Movimiento=138
Concepto=130
Importe=59
UnidadCantidad=56
FechaEmision=191











[CDIVCargaTranWeb.ListaEnCaptura]
(Inicio)=lid
lid=Procesado
Procesado=IdTransaccionWeb
IdTransaccionWeb=CDISocio
CDISocio=Nombre
Nombre=Estacion
Estacion=Modulo
Modulo=Movimiento
Movimiento=Concepto
Concepto=Importe
Importe=UnidadCantidad
UnidadCantidad=FechaEmision
FechaEmision=(Fin)

[CDIVCargaTranWeb.ListaOrden]
(Inicio)=Id	(Decendente)
Id	(Decendente)=IdTransaccionWeb	(Acendente)
IdTransaccionWeb	(Acendente)=(Fin)









[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Actualiza
Actualiza=(Fin)
