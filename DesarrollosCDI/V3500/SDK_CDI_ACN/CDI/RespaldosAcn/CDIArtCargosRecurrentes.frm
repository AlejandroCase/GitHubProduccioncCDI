
[Forma]
Clave=CDIArtCargosRecurrentes
Icono=0
Modulos=(Todos)
Nombre=Cargos Recurrentes
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
PosicionInicialIzquierda=101
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=1163
Comentarios=Info.Cliente

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIArtCargosRecurrentes
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=CDIArtCargosRecurrentes.Cliente = <T>{Info.Cliente}<T>
[Lista.CDIArtCargosRecurrentes.Articulo]
Carpeta=Lista
Clave=CDIArtCargosRecurrentes.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar

[Lista.Columnas]
Articulo=124
Condicion=138
0=127
1=211
2=-2
3=-2
Descripcion1=276
FechaInicio=76
FechaFin=76
Cantidad=60
PrecioLista=86
EsCuota=64
casillero=51
Ubicacion=303

[Lista.Descripcion1]
Carpeta=Lista
Clave=Descripcion1
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Plata
Efectos=[Negritas]

[Lista.CDIArtCargosRecurrentes.FechaInicio]
Carpeta=Lista
Clave=CDIArtCargosRecurrentes.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIArtCargosRecurrentes.FechaFin]
Carpeta=Lista
Clave=CDIArtCargosRecurrentes.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIArtCargosRecurrentes.Cantidad]
Carpeta=Lista
Clave=CDIArtCargosRecurrentes.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.PrecioLista]
Carpeta=Lista
Clave=PrecioLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIArtCargosRecurrentes.EsCuota]
Carpeta=Lista
Clave=CDIArtCargosRecurrentes.EsCuota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIArtCargosRecurrentes.casillero]
Carpeta=Lista
Clave=CDIArtCargosRecurrentes.casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CDIArtCargosRecurrentes.Ubicacion]
Carpeta=Lista
Clave=CDIArtCargosRecurrentes.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco







[Lista.ListaEnCaptura]
(Inicio)=CDIArtCargosRecurrentes.Articulo
CDIArtCargosRecurrentes.Articulo=Descripcion1
Descripcion1=CDIArtCargosRecurrentes.EsCuota
CDIArtCargosRecurrentes.EsCuota=PrecioLista
PrecioLista=CDIArtCargosRecurrentes.Cantidad
CDIArtCargosRecurrentes.Cantidad=CDIArtCargosRecurrentes.FechaInicio
CDIArtCargosRecurrentes.FechaInicio=CDIArtCargosRecurrentes.FechaFin
CDIArtCargosRecurrentes.FechaFin=CDIArtCargosRecurrentes.casillero
CDIArtCargosRecurrentes.casillero=CDIArtCargosRecurrentes.Ubicacion
CDIArtCargosRecurrentes.Ubicacion=(Fin)










[Acciones.CDIBitaArtCargRec]
Nombre=CDIBitaArtCargRec
Boton=48
NombreEnBoton=S
NombreDesplegar=Bitacora
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
Activo=S
Visible=S





ClaveAccion=CDIBitCargosRec






Antes=S
AntesExpresiones=Asigna(Info.cliente,CDIArtCargosRecurrentes:CDIArtCargosRecurrentes.Cliente)





















[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S















































[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=CDIBitaArtCargRec
CDIBitaArtCargRec=Guardar
Guardar=Eliminar
Eliminar=(Fin)
