
[Forma]
Clave=CDIEstAge
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Estadisiticas Agente
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIEstAge
PosicionInicialIzquierda=1680
PosicionInicialArriba=233
PosicionInicialAlturaCliente=260
PosicionInicialAncho=738
[CDIEstAge]
Estilo=Hoja
Clave=CDIEstAge
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEstAge
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

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos
ValidarCampos=S
FiltroGeneral=Estacion={EstacionTrabajo}
[CDIEstAge.CDIEstAge.Agente]
Carpeta=CDIEstAge
Clave=CDIEstAge.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIEstAge.Agente.Nombre]
Carpeta=CDIEstAge
Clave=Agente.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIEstAge.CDIEstAge.TipoEst]
Carpeta=CDIEstAge
Clave=CDIEstAge.TipoEst
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIEstAge.CDIEstAge.ConceptoEst]
Carpeta=CDIEstAge
Clave=CDIEstAge.ConceptoEst
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIEstAge.CDIEstAge.Total]
Carpeta=CDIEstAge
Clave=CDIEstAge.Total
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIEstAge.Columnas]
Agente=56
Nombre=214
TipoEst=64
ConceptoEst=146
Total=64

Porcentaje=64
Membresia=64
[CDIEstAgeg.Grafica.EstaAgeG]
Estilo=Rectangulo
Tipo=Barras
ConMarcas=S
TipoMarca=Etiqueta y Porcentage Total
Campo=CDIEstAge.Porcentaje
CampoEtiqueta=CDIEstAge.ConceptoEst
Clave=EstaAgeG
ColorDefinido=Rojo
Color=Automático

[CDIEstAgeg]
Estilo=Gráfica
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Grafica
Clave=CDIEstAgeg
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEstAge
Fuente={Tahoma, 8, Negro, []}
ListaSeries=EstaAgeG
Grafica3D=S
Grafica3DPor=15
GraficaAxisLeft=S
GraficaAxisBottom=S
GraficaMarco=S
GraficaParedes=S
GraficaLeyenda=S
GraficaLeyendaExterior=S
GraficaEscalaAuto=S
GraficaLeyendaPos=Derecha
GraficaColorFondo=Plata
GraficaTipoDegradado=Arriba Abajo
GraficaFondo=Fijo
CarpetaVisible=S





Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Total>0
[CDIEstAge.CDIEstAge.Porcentaje]
Carpeta=CDIEstAge
Clave=CDIEstAge.Porcentaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco









[CDIEstAge.CDIEstAge.Membresia]
Carpeta=CDIEstAge
Clave=CDIEstAge.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIEstAge.ListaEnCaptura]
(Inicio)=CDIEstAge.Agente
CDIEstAge.Agente=Agente.Nombre
Agente.Nombre=CDIEstAge.TipoEst
CDIEstAge.TipoEst=CDIEstAge.ConceptoEst
CDIEstAge.ConceptoEst=CDIEstAge.Membresia
CDIEstAge.Membresia=CDIEstAge.Total
CDIEstAge.Total=CDIEstAge.Porcentaje
CDIEstAge.Porcentaje=(Fin)













[Forma.ListaCarpetas]
(Inicio)=CDIEstAge
CDIEstAge=CDIEstAgeg
CDIEstAgeg=(Fin)
