
[Forma]
Clave=CDICalJuegosResultadosSlow
Icono=0
Modulos=(Todos)
Nombre=Calendario Juegos/Resultados
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICalJuegosResultados
CarpetaPrincipal=CDICalJuegosResultados
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=172
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=1022
[CDICalJuegosResultados]
Estilo=Hoja
Clave=CDICalJuegosResultados
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICalJuegosResultados
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
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroGrupo1=CDICalJuegosResultados.ClaveTorneo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S

FiltroTodo=S
FiltroGeneral=deporte=<T>Slowpitch<T>
[CDICalJuegosResultados.CDICalJuegosResultados.ClaveTorneo]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.nombre]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.NoVuelta]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.NoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.NoJornada]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.NoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.Dia]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.Dia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.Horario]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.EquipoLocal]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.EquipoLocal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.MarcadorLocal]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.MarcadorLocal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.MarcadorVisitante]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.MarcadorVisitante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICalJuegosResultados.CDICalJuegosResultados.EquipoVisitante]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.EquipoVisitante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=1
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[CDICalJuegosResultados.Columnas]
ClaveTorneo=65
nombre=148
NoVuelta=47
NoJornada=56
Dia=54
Horario=39
EquipoLocal=78
MarcadorLocal=73
MarcadorVisitante=90
EquipoVisitante=115





FechaPartido=68
[CDICalJuegosResultados.ListaEnCaptura]
(Inicio)=CDICalJuegosResultados.ClaveTorneo
CDICalJuegosResultados.ClaveTorneo=CDICalJuegosResultados.nombre
CDICalJuegosResultados.nombre=CDICalJuegosResultados.NoVuelta
CDICalJuegosResultados.NoVuelta=CDICalJuegosResultados.NoJornada
CDICalJuegosResultados.NoJornada=CDICalJuegosResultados.FechaPartido
CDICalJuegosResultados.FechaPartido=CDICalJuegosResultados.Dia
CDICalJuegosResultados.Dia=CDICalJuegosResultados.Horario
CDICalJuegosResultados.Horario=CDICalJuegosResultados.EquipoLocal
CDICalJuegosResultados.EquipoLocal=CDICalJuegosResultados.MarcadorLocal
CDICalJuegosResultados.MarcadorLocal=CDICalJuegosResultados.MarcadorVisitante
CDICalJuegosResultados.MarcadorVisitante=CDICalJuegosResultados.EquipoVisitante
CDICalJuegosResultados.EquipoVisitante=(Fin)

[CDICalJuegosResultados.CDICalJuegosResultados.FechaPartido]
Carpeta=CDICalJuegosResultados
Clave=CDICalJuegosResultados.FechaPartido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.CalJuegos]
Nombre=CalJuegos
Boton=4
NombreEnBoton=S
NombreDesplegar=Calendario Juegos/Resultados
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=CDICalJuegosResultadosSlow
ListaParametros1=CDICalJuegosResultados:CDICalJuegosResultados.ClaveTorneo
ListaParametros=S
Activo=S
Visible=S



[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=CalJuegos
CalJuegos=(Fin)
