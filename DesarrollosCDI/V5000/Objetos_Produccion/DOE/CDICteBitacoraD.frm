
[Forma]
Clave=CDICteBitacoraD
Icono=0
Modulos=(Todos)
Nombre=Detalle
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICteBitacoraD
CarpetaPrincipal=CDICteBitacoraD
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
PosicionInicialIzquierda=433
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
[CDICteBitacoraD]
Estilo=Ficha
Clave=CDICteBitacoraD
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICteBitacora
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General

FiltroGeneral=id=<T>{info.id}<T>
[CDICteBitacoraD.CDICteBitacora.Observaciones]
Carpeta=CDICteBitacoraD
Clave=CDICteBitacora.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50x5
ColorFondo=Blanco

[CDICteBitacoraD.CDICteBitacora.Fecha]
Carpeta=CDICteBitacoraD
Clave=CDICteBitacora.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDICteBitacoraD.CDICteBitacora.Usuario]
Carpeta=CDICteBitacoraD
Clave=CDICteBitacora.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Salir
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S










[CDICteBitacoraD.CDICteBitacora.Cliente]
Carpeta=CDICteBitacoraD
Clave=CDICteBitacora.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICteBitacoraD.ListaEnCaptura]
(Inicio)=CDICteBitacora.Cliente
CDICteBitacora.Cliente=CDICteBitacora.Observaciones
CDICteBitacora.Observaciones=CDICteBitacora.Fecha
CDICteBitacora.Fecha=CDICteBitacora.Usuario
CDICteBitacora.Usuario=Nombre
Nombre=Comite
Comite=(Fin)

[CDICteBitacoraD.Nombre]
Carpeta=CDICteBitacoraD
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteBitacoraD.Comite]
Carpeta=CDICteBitacoraD
Clave=Comite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
