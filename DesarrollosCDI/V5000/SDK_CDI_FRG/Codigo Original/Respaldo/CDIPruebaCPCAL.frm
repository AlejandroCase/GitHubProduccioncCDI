
[Forma]
Clave=CDIPruebaCPCAL
Icono=0
Modulos=(Todos)

ListaCarpetas=dsdds
CarpetaPrincipal=dsdds
PosicionInicialAlturaCliente=273
PosicionInicialAncho=1079
IniciarAgregando=S
PosicionInicialIzquierda=88
PosicionInicialArriba=190
[dsdds]
Estilo=Hoja
Clave=dsdds
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=cpcal
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PermiteEditar=S

[dsdds.CPCal.ClavePresupuestal]
Carpeta=dsdds
Clave=CPCal.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[dsdds.CPCal.Tipo]
Carpeta=dsdds
Clave=CPCal.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[dsdds.CPCal.Ejercicio]
Carpeta=dsdds
Clave=CPCal.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[dsdds.CPCal.Periodo]
Carpeta=dsdds
Clave=CPCal.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[dsdds.CPCal.IdCon]
Carpeta=dsdds
Clave=CPCal.IdCon
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[dsdds.Columnas]
ClavePresupuestal=304
Tipo=124
Ejercicio=64
Periodo=64
IdCon=64





[dsdds.ListaEnCaptura]
(Inicio)=CPCal.ClavePresupuestal
CPCal.ClavePresupuestal=CPCal.Tipo
CPCal.Tipo=CPCal.Ejercicio
CPCal.Ejercicio=CPCal.Periodo
CPCal.Periodo=CPCal.IdCon
CPCal.IdCon=(Fin)
