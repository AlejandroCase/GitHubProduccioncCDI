
[Forma]
Clave=CDIFiltrosSolPuntos
Icono=0
Modulos=(Todos)
Nombre=Puntos - Estado de Cuenta
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=403
PosicionInicialArriba=271
PosicionInicialAlturaCliente=188
PosicionInicialAncho=559
ListaAcciones=(Lista)
MovModulo=VTAS
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
ExpresionesAlMostrar=Asigna(Info.Mov,<T>Consumo<T>)
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
ListaEnCaptura=(Lista)

CarpetaVisible=S

[(Variables).Info.CDISocioListaD]
Carpeta=(Variables)
Clave=Info.CDISocioListaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDISocioListaA]
Carpeta=(Variables)
Clave=Info.CDISocioListaA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Preliminar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Pantalla
Activo=S
Visible=S

ClaveAccion=CDIPuntosEdoCta2
[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreEnBoton=S
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

[(Variables).Info.Titulo]
Carpeta=(Variables)
Clave=Info.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=58
ColorFondo=Blanco

























Efectos=[Negritas]
[(Variables).Info.CDIMovPuntos]
Carpeta=(Variables)
Clave=Info.CDIMovPuntos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDINivelPuntos]
Carpeta=(Variables)
Clave=Info.CDINivelPuntos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




















[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Info.CDISocioListaD
Info.CDISocioListaD=Info.CDISocioListaA
Info.CDISocioListaA=Info.CDIMovPuntos
Info.CDIMovPuntos=Info.CDINivelPuntos
Info.CDINivelPuntos=Info.Titulo
Info.Titulo=(Fin)


















[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Reporte
Reporte=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
