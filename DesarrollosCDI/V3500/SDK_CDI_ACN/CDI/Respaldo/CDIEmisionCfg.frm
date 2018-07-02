
[Forma]
Clave=CDIEmisionCfg
Icono=0
Modulos=(Todos)
Nombre=Configuración Emision Documentos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIEmisionCfg
PosicionInicialIzquierda=274
PosicionInicialArriba=112
PosicionInicialAlturaCliente=505
PosicionInicialAncho=818
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSec1=299
DialogoAbrir=S
PosicionCol1=407
CarpetasMultilinea=S

[CDIEmisionCfg]
Estilo=Ficha
Clave=CDIEmisionCfg
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEmisionCfg
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
ControlRenglon=S
CampoRenglon=CDIEmisionCfg.ControlRenglon
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Generales

[CDIEmisionCfg.CDIEmisionCfg.Clave]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIEmisionCfg.CDIEmisionCfg.Concepto]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
Pegado=N

[CDIEmisionCfg.CDIEmisionCfg.Descripcion]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50x2
ColorFondo=Blanco

[CDIEmisionCfg.CDIEmisionCfg.CvePresupuestal]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.CvePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIEmisionCfg.CDIEmisionCfg.FormaPago]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.FormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIEmisionCfg.CDIEmisionCfg.Documento]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.Documento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


[CDIEmisionCfg.CDIEmisionCfg.PeriodoVencimiento]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.PeriodoVencimiento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIEmisionCfg.CDIEmisionCfg.DiaVencimiento]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.DiaVencimiento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDIEmisionCfg.CDIEmisionCfg.Principal]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.Principal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIEmisionCfg.CDIEmisionCfg.Estatus]
Carpeta=CDIEmisionCfg
Clave=CDIEmisionCfg.Estatus
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco












[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Activo=S
Visible=S

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S








[CDIEmisionCfgTipo]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Tipo
Clave=CDIEmisionCfgTipo
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIEmisionCfgTipo
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIEmisionCfg
LlaveLocal=CDIEmisionCfgTipo.Id
LlaveMaestra=CDIEmisionCfg.Id
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIEmisionCfgTipo.Tipo
CarpetaVisible=S

ControlRenglon=S
CampoRenglon=CDIEmisionCfgTipo.Renglon
OtroOrden=S
ListaOrden=CDIEmisionCfgTipo.Renglon<TAB>(Acendente)
[CDIEmisionCfgTipo.CDIEmisionCfgTipo.Tipo]
Carpeta=CDIEmisionCfgTipo
Clave=CDIEmisionCfgTipo.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDIEmisionCfgTipo.Columnas]
Tipo=101





[CDIEmisionCfgCat]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Categoría
Clave=CDIEmisionCfgCat
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIEmisionCfgCat
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIEmisionCfg
LlaveLocal=CDIEmisionCfgCat.Id
LlaveMaestra=CDIEmisionCfg.Id
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIEmisionCfgCat.categoria
CarpetaVisible=S

ControlRenglon=S
CampoRenglon=CDIEmisionCfgCat.Renglon
OtroOrden=S
ListaOrden=CDIEmisionCfgCat.Renglon<TAB>(Acendente)
[CDIEmisionCfgCat.CDIEmisionCfgCat.categoria]
Carpeta=CDIEmisionCfgCat
Clave=CDIEmisionCfgCat.categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDIEmisionCfgCat.Columnas]
categoria=304



[CDIEmisionCfgSubCat]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Sub Categoria
Clave=CDIEmisionCfgSubCat
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIEmisionCfgSubCat
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIEmisionCfg
LlaveLocal=CDIEmisionCfgSubCat.Id
LlaveMaestra=CDIEmisionCfg.Id
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIEmisionCfgSubCat.SubCategoria
CarpetaVisible=S

ControlRenglon=S
CampoRenglon=CDIEmisionCfgSubCat.Renglon
OtroOrden=S
ListaOrden=CDIEmisionCfgSubCat.Renglon<TAB>(Acendente)
[CDIEmisionCfgSubCat.CDIEmisionCfgSubCat.SubCategoria]
Carpeta=CDIEmisionCfgSubCat
Clave=CDIEmisionCfgSubCat.SubCategoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





[CDIEmisionCfgSubCat.Columnas]
SubCategoria=304



[CDIEmisionCfgClase]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Clase
Clave=CDIEmisionCfgClase
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIEmisionCfgClase
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIEmisionCfg
LlaveLocal=CDIEmisionCfgClase.Id
LlaveMaestra=CDIEmisionCfg.Id
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIEmisionCfgClase.Clase
CarpetaVisible=S

ControlRenglon=S
CampoRenglon=CDIEmisionCfgClase.Renglon
OtroOrden=S

ListaOrden=CDIEmisionCfgClase.Renglon<TAB>(Acendente)
[CDIEmisionCfgPeriodo]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Periodo
Clave=CDIEmisionCfgPeriodo
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIEmisionCfgPeriodo
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIEmisionCfg
LlaveLocal=CDIEmisionCfgPeriodo.Id
LlaveMaestra=CDIEmisionCfg.Id
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

ListaEnCaptura=CDIEmisionCfgPeriodo.Periodo


OtroOrden=S
ControlRenglon=S
CampoRenglon=CDIEmisionCfgPeriodo.Renglon
ListaOrden=CDIEmisionCfgPeriodo.Renglon<TAB>(Acendente)
[CDIEmisionCfgClase.Columnas]
Clase=304

Renglon=64
[CDIEmisionCfgPeriodo.CDIEmisionCfgPeriodo.Periodo]
Carpeta=CDIEmisionCfgPeriodo
Clave=CDIEmisionCfgPeriodo.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





[CDIEmisionCfgPeriodo.Columnas]
Periodo=304























[Lista.Columnas]
Tipo=207
Categoria=250





[CDIClaseLista.Columnas]
Clase=304

[CDISubcategoriaLista.Columnas]
SubCategoria=304























































[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S





[(Carpeta Abrir)]
Estilo=Iconos
Pestana=S
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIEmisionCfg
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosNombre=CDIEmisionCfg:CDIEmisionCfg.Concepto
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIEmisionCfg.Clave
CDIEmisionCfg.Clave=CDIEmisionCfg.Concepto
CDIEmisionCfg.Concepto=CDIEmisionCfg.Descripcion
CDIEmisionCfg.Descripcion=(Fin)

[(Carpeta Abrir).CDIEmisionCfg.Clave]
Carpeta=(Carpeta Abrir)
Clave=CDIEmisionCfg.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).CDIEmisionCfg.Concepto]
Carpeta=(Carpeta Abrir)
Clave=CDIEmisionCfg.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDIEmisionCfg.Descripcion]
Carpeta=(Carpeta Abrir)
Clave=CDIEmisionCfg.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[(Carpeta Abrir).Columnas]
0=171
1=-2
2=-2
3=-2



















































[CDIEmisionCfgClase.CDIEmisionCfgClase.Clase]
Carpeta=CDIEmisionCfgClase
Clave=CDIEmisionCfgClase.Clase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[CDIEmisionCfgJob.CDIEmisionCfgJob.Habilitado]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.Habilitado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDIEmisionCfgJob.CDIEmisionCfgJob.FechaUnica]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.FechaUnica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=15
[CDIEmisionCfgJob.CDIEmisionCfgJob.HoraUnica]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.HoraUnica
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=10
ColorFondo=Blanco



LineaNueva=N



[CDIEmisionCfgJob.CDIEmisionCfgJob.DiaMensual]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.DiaMensual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
Tamano=5
[CDIEmisionCfgJob.CDIEmisionCfgJob.HoraMensual]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.HoraMensual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIEmisionCfgJob.CDIEmisionCfgJob.FechaInicioMensual]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.FechaInicioMensual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=15
[CDIEmisionCfgJob.CDIEmisionCfgJob.FechaFinMensual]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.FechaFinMensual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
Tamano=15
[CDIEmisionCfgJob.CDIEmisionCfgJob.DiaAnual]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.DiaAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=5
[CDIEmisionCfgJob.CDIEmisionCfgJob.MesAnual]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.MesAnual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIEmisionCfgJob.CDIEmisionCfgJob.HoraAnual]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.HoraAnual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco






































































[CDIEmisionCfgJob.Columnas]
TipoDeProgramacion=604
FechaUnica=94
HoraUnica=34
Habilitado=64
TipoPeriodo=304
DiaMensual=64
HoraMensual=34
FechaInicioMensual=94
FechaFinMensual=94
DiaAnual=64
MesAnual=76
HoraAnual=34



































[CDIEmisionCfgJob.CDIEmisionCfgJob.ProgUnica]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.ProgUnica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIEmisionCfgJob.CDIEmisionCfgJob.ProgMes]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.ProgMes
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIEmisionCfgJob.CDIEmisionCfgJob.ProgAnual]
Carpeta=CDIEmisionCfgJob
Clave=CDIEmisionCfgJob.ProgAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[CDIEmisionCfgJob.ListaEnCaptura]
(Inicio)=CDIEmisionCfgJob.Habilitado
CDIEmisionCfgJob.Habilitado=CDIEmisionCfgJob.ProgUnica
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
CDIEmisionCfgJob.HoraAnual=(Fin)













































[CDIEmisionCfg.ListaEnCaptura]
(Inicio)=CDIEmisionCfg.Clave
CDIEmisionCfg.Clave=CDIEmisionCfg.Descripcion
CDIEmisionCfg.Descripcion=CDIEmisionCfg.Documento
CDIEmisionCfg.Documento=CDIEmisionCfg.Concepto
CDIEmisionCfg.Concepto=CDIEmisionCfg.CvePresupuestal
CDIEmisionCfg.CvePresupuestal=CDIEmisionCfg.FormaPago
CDIEmisionCfg.FormaPago=CDIEmisionCfg.PeriodoVencimiento
CDIEmisionCfg.PeriodoVencimiento=CDIEmisionCfg.DiaVencimiento
CDIEmisionCfg.DiaVencimiento=CDIEmisionCfg.Principal
CDIEmisionCfg.Principal=CDIEmisionCfg.Estatus
CDIEmisionCfg.Estatus=(Fin)









[CDIProgra]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Programacion
Clave=CDIProgra
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEmisionCfgJob
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIEmisionCfg
LlaveLocal=CDIEmisionCfgJob.Id
LlaveMaestra=CDIEmisionCfg.Id
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

RefrescarAlEntrar=S
[CDIProgra.CDIEmisionCfgJob.ProgUnica]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.ProgUnica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.FechaUnica]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.FechaUnica
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.HoraUnica]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.HoraUnica
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.DiaMensual]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.DiaMensual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.ProgMes]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.ProgMes
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.HoraMensual]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.HoraMensual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.FechaInicioMensual]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.FechaInicioMensual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.FechaFinMensual]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.FechaFinMensual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.MesAnual]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.MesAnual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.ProgAnual]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.ProgAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.DiaAnual]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.DiaAnual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIProgra.CDIEmisionCfgJob.HoraAnual]
Carpeta=CDIProgra
Clave=CDIEmisionCfgJob.HoraAnual
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco









[CDIProgra.ListaEnCaptura]
(Inicio)=CDIEmisionCfgJob.ProgUnica
CDIEmisionCfgJob.ProgUnica=CDIEmisionCfgJob.FechaUnica
CDIEmisionCfgJob.FechaUnica=CDIEmisionCfgJob.HoraUnica
CDIEmisionCfgJob.HoraUnica=CDIEmisionCfgJob.ProgMes
CDIEmisionCfgJob.ProgMes=CDIEmisionCfgJob.DiaMensual
CDIEmisionCfgJob.DiaMensual=CDIEmisionCfgJob.HoraMensual
CDIEmisionCfgJob.HoraMensual=CDIEmisionCfgJob.FechaInicioMensual
CDIEmisionCfgJob.FechaInicioMensual=CDIEmisionCfgJob.FechaFinMensual
CDIEmisionCfgJob.FechaFinMensual=CDIEmisionCfgJob.ProgAnual
CDIEmisionCfgJob.ProgAnual=CDIEmisionCfgJob.MesAnual
CDIEmisionCfgJob.MesAnual=CDIEmisionCfgJob.DiaAnual
CDIEmisionCfgJob.DiaAnual=CDIEmisionCfgJob.HoraAnual
CDIEmisionCfgJob.HoraAnual=(Fin)























[Forma.ListaCarpetas]
(Inicio)=CDIEmisionCfg
CDIEmisionCfg=CDIEmisionCfgTipo
CDIEmisionCfgTipo=CDIEmisionCfgCat
CDIEmisionCfgCat=CDIEmisionCfgSubCat
CDIEmisionCfgSubCat=CDIEmisionCfgClase
CDIEmisionCfgClase=CDIEmisionCfgPeriodo
CDIEmisionCfgPeriodo=CDIProgra
CDIProgra=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Documento Eliminar
Documento Eliminar=Documento Abrir
Documento Abrir=(Fin)
