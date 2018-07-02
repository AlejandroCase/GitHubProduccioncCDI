
[Forma]
Clave=CDIPaqInscRes
Icono=0
Modulos=(Todos)
Nombre=Generar indice
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIPaqInscRes
CarpetaPrincipal=CDIPaqInscRes
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=413
PosicionInicialArriba=70
PosicionInicialAlturaCliente=590
PosicionInicialAncho=540
[CDIPaqInscRes]
Estilo=Hoja
Clave=CDIPaqInscRes
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPaqInscRes
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

RefrescarAlEntrar=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
FiltroGeneral=CDIComite=<T>{Info.CDIComite}<T>
[CDIPaqInscRes.CDIPaqInscRes.CDIComite]
Carpeta=CDIPaqInscRes
Clave=CDIPaqInscRes.CDIComite
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPaqInscRes.CDIPaqInscRes.Coordinacion]
Carpeta=CDIPaqInscRes
Clave=CDIPaqInscRes.Coordinacion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPaqInscRes.CDIPaqInscRes.Ceplan]
Carpeta=CDIPaqInscRes
Clave=CDIPaqInscRes.Ceplan
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPaqInscRes.CDIPaqInscRes.Total]
Carpeta=CDIPaqInscRes
Clave=CDIPaqInscRes.Total
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPaqInscRes.CDIPaqInscRes.Hoja]
Carpeta=CDIPaqInscRes
Clave=CDIPaqInscRes.Hoja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[CDIPaqInscRes.Columnas]
CDIComite=116
Coordinacion=135
Ceplan=117
Total=34
Hoja=31

[Acciones.cdipaqinscFormato]
Nombre=cdipaqinscFormato
Boton=4
NombreEnBoton=S
NombreDesplegar=Impresion
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDIPaqHojas
Activo=S
Visible=S
















EspacioPrevio=S
[Acciones.Presentacion preliminar]
Nombre=Presentacion preliminar
Boton=6
NombreEnBoton=S
NombreDesplegar=Indice
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S




























EspacioPrevio=S
[Acciones.Procesa]
Nombre=Procesa
Boton=7
NombreEnBoton=S
NombreDesplegar=Procesar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S























GuardarAntes=S























Expresion=ProcesarSql(<T>xpCDIGenIndice  :tCo<T>, info.CDIComite)
[CDIPaqInscRes.ListaEnCaptura]
(Inicio)=CDIPaqInscRes.CDIComite
CDIPaqInscRes.CDIComite=CDIPaqInscRes.Coordinacion
CDIPaqInscRes.Coordinacion=CDIPaqInscRes.Ceplan
CDIPaqInscRes.Ceplan=CDIPaqInscRes.Total
CDIPaqInscRes.Total=CDIPaqInscRes.Hoja
CDIPaqInscRes.Hoja=(Fin)


































[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Procesa
Procesa=Presentacion preliminar
Presentacion preliminar=cdipaqinscFormato
cdipaqinscFormato=Cerrar
Cerrar=(Fin)
