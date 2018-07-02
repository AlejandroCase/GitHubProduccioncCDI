
[Forma]
Clave=CDITorneoResSloTG
Icono=0
Modulos=(Todos)
Nombre=Estadistica de Torneo Por Vuelta
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDITorneoResSloTG
CarpetaPrincipal=CDITorneoResSloTG
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDITorneoResSloTG]
Estilo=Hoja
Pestana=S
Clave=CDITorneoResSloTG
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITorneoResSloTG
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
FiltroGrupo1=CDITorneoResSloTG.ClaveTorneo
FiltroGrupo2=CDITorneoResSloTG.NoVuelta
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
CarpetaVisible=S
[CDITorneoResSloTG.ListaEnCaptura]
(Inicio)=CDITorneoResSloTG.ClaveTorneo
CDITorneoResSloTG.ClaveTorneo=CDITorneoResSloTG.NoVuelta
CDITorneoResSloTG.NoVuelta=CDITorneoResSloTG.Equipo
CDITorneoResSloTG.Equipo=CDITorneoResSloTG.Jugo
CDITorneoResSloTG.Jugo=CDITorneoResSloTG.Gano
CDITorneoResSloTG.Gano=CDITorneoResSloTG.Perdio
CDITorneoResSloTG.Perdio=CDITorneoResSloTG.Empate
CDITorneoResSloTG.Empate=CDITorneoResSloTG.Forfeit
CDITorneoResSloTG.Forfeit=(Fin)

[CDITorneoResSloTG.CDITorneoResSloTG.ClaveTorneo]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTG.ClaveTorneo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDITorneoResSloTG.NoVuelta]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTG.NoVuelta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDITorneoResSloTG.Equipo]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTG.Equipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDITorneoResSloTG.CDITorneoResSloTG.Jugo]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTG.Jugo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDITorneoResSloTG.Gano]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTG.Gano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDITorneoResSloTG.Perdio]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTG.Perdio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDITorneoResSloTG.Empate]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTG.Empate
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDITorneoResSloTG.CDITorneoResSloTG.Forfeit]
Carpeta=CDITorneoResSloTG
Clave=CDITorneoResSloTG.Forfeit
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreDesplegar=Presentacion preliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=CDITorneoResSloTG
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S









[Forma.ListaAcciones]
(Inicio)=Presentacion preliminar
Presentacion preliminar=Enviar a Excel
Enviar a Excel=(Fin)
