
[Forma]
Clave=CDIBuscarJornadaTorneo
Icono=0
Modulos=(Todos)
Nombre=Jornada

ListaCarpetas=CDIBuscarJornadaTorneo
CarpetaPrincipal=CDIBuscarJornadaTorneo
PosicionInicialIzquierda=567
PosicionInicialArriba=304
PosicionInicialAlturaCliente=81
PosicionInicialAncho=231
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
BarraAcciones=S
AccionesCentro=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
VentanaExclusiva=S
VentanaExclusivaOpcion=0
ExpresionesAlActivar=asigna(Info.BuscarJornadaTorneo,<T><T>)
[CDIBuscarJornadaTorneo]
Estilo=Ficha
Clave=CDIBuscarJornadaTorneo
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=98
FichaNombres=Izquierda
FichaAlineacion=Centrado
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=Info.BuscarJornadaTorneo

PermiteEditar=S
[CDIBuscarJornadaTorneo.Info.BuscarJornadaTorneo]
Carpeta=CDIBuscarJornadaTorneo
Clave=Info.BuscarJornadaTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIVJornadas.Columnas]
NoVuelta=35
NoJornada=43
TipoJornada=81
FechaEmision=74
FechaPartido=76
Horario=42
Sede=70
EquipoLocal=76
MarcadorLocal=47
EquipoVisitante=83
MarcadorVisitante=62

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=Aceptar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S
EnBarraAcciones=S

[Acciones.cancelar]
Nombre=cancelar
Boton=0
NombreDesplegar=Cancelar
EnBarraAcciones=S
TipoAccion=ventana
ClaveAccion=cancelar Cambios
Activo=S
Visible=S





























[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=cancelar
cancelar=(Fin)
