
[Forma]
Clave=CDIPrxxx
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Programar Emisión
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIPrxxx
CarpetaPrincipal=CDIPrxxx
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=483
PosicionInicialArriba=149
PosicionInicialAlturaCliente=431
PosicionInicialAncho=400
Comentarios=Info.Id  <BR>Info.Descripcion
[CDIPrxxx]
Estilo=Ficha
Clave=CDIPrxxx
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEmisionCfgJob
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
FiltroGeneral=CDIEmisionCfgJob.Id={Info.id}
[CDIPrxxx.CDIEmisionCfgJob.ProgUnica]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.ProgUnica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPrxxx.CDIEmisionCfgJob.ProgMes]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.ProgMes
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPrxxx.CDIEmisionCfgJob.ProgAnual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.ProgAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPrxxx.CDIEmisionCfgJob.FechaUnica]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.FechaUnica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDIPrxxx.CDIEmisionCfgJob.HoraUnica]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.HoraUnica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPrxxx.CDIEmisionCfgJob.DiaMensual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.DiaMensual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=5
[CDIPrxxx.CDIEmisionCfgJob.HoraMensual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.HoraMensual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPrxxx.CDIEmisionCfgJob.FechaInicioMensual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.FechaInicioMensual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDIPrxxx.CDIEmisionCfgJob.FechaFinMensual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.FechaFinMensual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDIPrxxx.CDIEmisionCfgJob.MesAnual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.MesAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[CDIPrxxx.CDIEmisionCfgJob.DiaAnual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.DiaAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=5
[CDIPrxxx.CDIEmisionCfgJob.HoraAnual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.HoraAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
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




[Acciones.Expresion]
Nombre=Expresion
Boton=7
NombreEnBoton=S
NombreDesplegar=Programar Emisión
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S













Expresion=EjecutarSQL(<T>xpCDICrearJobEmision :nI<T>,CDIEmisionCfgJob:CDIEmisionCfgJob.Id)
[CDIPrxxx.CDIEmisionCfgJob.FechaInicioAnual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.FechaInicioAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIPrxxx.CDIEmisionCfgJob.FechaFinAnual]
Carpeta=CDIPrxxx
Clave=CDIEmisionCfgJob.FechaFinAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco












[CDIPrxxx.ListaEnCaptura]
(Inicio)=CDIEmisionCfgJob.ProgUnica
CDIEmisionCfgJob.ProgUnica=CDIEmisionCfgJob.FechaUnica
CDIEmisionCfgJob.FechaUnica=CDIEmisionCfgJob.HoraUnica
CDIEmisionCfgJob.HoraUnica=CDIEmisionCfgJob.ProgMes
CDIEmisionCfgJob.ProgMes=CDIEmisionCfgJob.DiaMensual
CDIEmisionCfgJob.DiaMensual=CDIEmisionCfgJob.HoraMensual
CDIEmisionCfgJob.HoraMensual=CDIEmisionCfgJob.FechaInicioMensual
CDIEmisionCfgJob.FechaInicioMensual=CDIEmisionCfgJob.FechaFinMensual
CDIEmisionCfgJob.FechaFinMensual=CDIEmisionCfgJob.ProgAnual
CDIEmisionCfgJob.ProgAnual=CDIEmisionCfgJob.DiaAnual
CDIEmisionCfgJob.DiaAnual=CDIEmisionCfgJob.MesAnual
CDIEmisionCfgJob.MesAnual=CDIEmisionCfgJob.HoraAnual
CDIEmisionCfgJob.HoraAnual=CDIEmisionCfgJob.FechaInicioAnual
CDIEmisionCfgJob.FechaInicioAnual=CDIEmisionCfgJob.FechaFinAnual
CDIEmisionCfgJob.FechaFinAnual=(Fin)



































[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=(Fin)
