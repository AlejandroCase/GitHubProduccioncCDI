
[Forma]
Clave=HHCEGrupoSugerir
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Sugerir Grupos
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
BarraAcciones=S
AccionesTamanoBoton=15x5
AccionesCentro=S
AccionesDivision=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=530
PosicionInicialArriba=422
PosicionInicialAlturaCliente=81
PosicionInicialAncho=219
ExpresionesAlMostrar=Asigna(Info.HHEspecial, <T>No<T>)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
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
ListaEnCaptura=Info.HHEspecial
CarpetaVisible=S

[(Variables).Info.HHEspecial]
Carpeta=(Variables)
Clave=Info.HHEspecial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreEnBoton=S
BotonDefault=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S













































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
