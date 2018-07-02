
[Forma]
Clave=CDIFiltrosAsistenciaDiaria
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Filtros Asistencia Diaria
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=(Lista)
ListaCarpetas=(Variables)
MovModulo=ASIS
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=501
PosicionInicialArriba=304
PosicionInicialAlturaCliente=164
PosicionInicialAncho=277
EsMovimiento=S
MovimientosValidos=(Lista)
TituloAuto=S
MovEspecificos=Especificos
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
[(Variables).ListaEnCaptura]
(Inicio)=Info.Mov
Info.Mov=Info.Periodo
Info.Periodo=Info.Ejercicio
Info.Ejercicio=Info.Numero
Info.Numero=(Fin)

[(Variables).Info.Mov]
Carpeta=(Variables)
Clave=Info.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Periodo]
Carpeta=(Variables)
Clave=Info.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Numero]
Carpeta=(Variables)
Clave=Info.Numero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Preliminar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.CDIRepAsistenciaDiaria]
Nombre=CDIRepAsistenciaDiaria
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepAsistenciaDiaria
Activo=S
Visible=S

ConCondicion=S
EjecucionConError=S
EjecucionCondicion=(Info.Numero > 0)y(Info.Numero < 7)
EjecucionMensaje=<T>Numero de Años a Calcular son Incorrectos<T>
[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

















































[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=CDIRepAsistenciaDiaria
CDIRepAsistenciaDiaria=(Fin)



























[Forma.MovimientosValidos]
(Inicio)=Registro
Registro=Registro Soc
Registro Soc=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
