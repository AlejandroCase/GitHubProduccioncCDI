
[Forma]
Clave=CDISeleccionPersonal
Icono=0
CarpetaPrincipal=CDISeleccionPersonal
Modulos=(Todos)
Nombre=CDISeleccionPersonal

ListaCarpetas=CDISeleccionPersonal
PosicionInicialIzquierda=307
PosicionInicialArriba=238
PosicionInicialAlturaCliente=240
PosicionInicialAncho=683
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar
VentanaTipoMarco=Normal
VentanaPosicionInicial=Por diseño
VentanaEstadoInicial=Normal
VentanaColor=Plata
ExpresionesAlMostrar=asigna(Info.EstacionTrabajo, EstacionTrabajo)
[CDISeleccionPersonal]
Estilo=Hoja
Clave=CDISeleccionPersonal
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISeleccionPersonal
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
OtroOrden=S
ListaOrden=CDIRepPersonal.personal<TAB>(Acendente)
ExpAntesRefrescar=asigna(Info.EstacionTrabajo,CDISeleccionPersonal:CDIRepPersonal.Estacion)
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIRepPersonal.Usuario=<T>{Usuario}<T>
[CDISeleccionPersonal.CDIRepPersonal.personal]
Carpeta=CDISeleccionPersonal
Clave=CDIRepPersonal.personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[FormaExtraValor.Columnas]
VerCampo=293
VerValor=296

[SituacionCta.Columnas]
0=188
1=148
2=-2
3=-2
4=-2

[(Carpeta Abrir).Columnas]
0=99
1=358

[CDISeleccionPersonal.Columnas]
personal=64
Nombre=289

NombreCompleto=199
Tipo=71
Departamento=129
Puesto=163
Estacion=47
[Lista.Columnas]
0=106
1=301








[CDISeleccionPersonal.PersonalA.NombreCompleto]
Carpeta=CDISeleccionPersonal
Clave=PersonalA.NombreCompleto
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDISeleccionPersonal.PersonalA.Tipo]
Carpeta=CDISeleccionPersonal
Clave=PersonalA.Tipo
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISeleccionPersonal.PersonalA.Departamento]
Carpeta=CDISeleccionPersonal
Clave=PersonalA.Departamento
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDISeleccionPersonal.PersonalA.Puesto]
Carpeta=CDISeleccionPersonal
Clave=PersonalA.Puesto
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco











[Acciones.Guardar]
Nombre=Guardar
Boton=23
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

EspacioPrevio=S










GuardarAntes=S

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=(Fin)









[CDISeleccionPersonal.ListaEnCaptura]
(Inicio)=CDIRepPersonal.personal
CDIRepPersonal.personal=PersonalA.NombreCompleto
PersonalA.NombreCompleto=PersonalA.Tipo
PersonalA.Tipo=PersonalA.Departamento
PersonalA.Departamento=PersonalA.Puesto
PersonalA.Puesto=(Fin)
