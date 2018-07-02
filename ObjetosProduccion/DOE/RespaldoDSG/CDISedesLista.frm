
[Forma]
Clave=CDISedesLista
Icono=0
Modulos=(Todos)
Nombre=Sedes
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISedesLista
CarpetaPrincipal=CDISedesLista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar/Aceptar
PosicionInicialIzquierda=433
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=198
[CDISedesLista]
Estilo=Hoja
Clave=CDISedesLista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISedes
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDISedes.Sede
CarpetaVisible=S

[CDISedesLista.CDISedes.Sede]
Carpeta=CDISedesLista
Clave=CDISedes.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar/Aceptar
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=Seleccionar/Aceptar
[CDISedesLista.Columnas]
Sede=156

[Acciones.Seleccionar/Aceptar.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S


[Acciones.Seleccionar/Aceptar.ListaAccionesMultiples]
(Inicio)=Seleccionar/Aceptar
Seleccionar/Aceptar=Cerrar
Cerrar=(Fin)
