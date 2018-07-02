[Forma]
Clave=RepContResultadosAnual
Icono=0
Modulos=(Todos)
Nombre=Estado de Resultados Anual
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
PosicionInicialIzquierda=803
PosicionInicialArriba=502
PosicionInicialAltura=206
PosicionInicialAncho=314
PosicionInicialAlturaCliente=161
ExpresionesAlMostrar=Asigna(Info.Ejercicio, EjercicioTrabajo) <BR>Asigna(Info.CentroCostos, <T>(Todos)<T>)<BR>Asigna(Rep.Titulo, e(<T>Estado de Resultados Anual<T>))<BR>Asigna(Info.ContMoneda, Config.ContMoneda)<BR>Asigna(Info.Controladora, Nulo)

[(Variables)]
Estilo=Ficha
Clave=(Variables)
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.CentroCostos]
Carpeta=(Variables)
Clave=Info.CentroCostos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Rep.Titulo]
Carpeta=(Variables)
Clave=Rep.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreEnBoton=S
NombreDesplegar=&Imprimir
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S
ListaAccionesMultiples=Variables Asignar<BR>ContResultadosAnual

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreEnBoton=S
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S
ListaAccionesMultiples=Variables Asignar<BR>ContResultadosAnual

[Acciones.Imprimir.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.ContResultadosAnual]
Nombre=ContResultadosAnual
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=ContResultadosAnual
Activo=S
Visible=S

[Acciones.Imprimir.ContResultadosAnual]
Nombre=ContResultadosAnual
Boton=0
TipoAccion=Reportes Impresora
ClaveAccion=ContResultadosAnual
Activo=S
Visible=S

[(Variables).Info.ContMoneda]
Carpeta=(Variables)
Clave=Info.ContMoneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro


[(Variables).ListaEnCaptura]
(Inicio)=Info.Ejercicio
Info.Ejercicio=Info.CentroCostos
Info.CentroCostos=Info.ContMoneda
Info.ContMoneda=Rep.Titulo
Rep.Titulo=(Fin)







[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=(Fin)
