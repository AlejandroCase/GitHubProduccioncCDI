
[Forma]
Clave=CDIPagosElectronicosMifel
Icono=0
Modulos=(Todos)
Nombre=<T>Generar Archivo<T>

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=510
PosicionInicialArriba=290
PosicionInicialAlturaCliente=134
PosicionInicialAncho=375
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Dise�o
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.numero,0)
Totalizadores=S
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
ListaEnCaptura=Info.CDIDirectorio
CarpetaVisible=S


[Lista.Columnas]
Moneda=144
TipoCambio=69


[Acciones.Procesar]
Nombre=Procesar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Procesar
EnBarraHerramientas=S

Multiple=S
ListaAccionesMultiples=(Lista)
EspacioPrevio=S
ActivoCondicion=Info.numero=1
VisibleCondicion=1=0
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S












EspacioPrevio=S
[Acciones.Procesar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S






[Acciones.Procesar.VariablesAsignar]
Nombre=VariablesAsignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Procesar.Procesa]
Nombre=Procesa
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S




Expresion=ProcesarSQL(<T>XPCDIPagosElectronicosMifel :nE, :nB, :tD, :tU<T>, EstacionTrabajo, 1, Info.CDIDirectorio, Usuario)
[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIBanco
Info.CDIBanco=Info.Moneda
Info.Moneda=Info.CDIDirectorio
Info.CDIDirectorio=(Fin)

[(Variables).Info.CDIDirectorio]
Carpeta=(Variables)
Clave=Info.CDIDirectorio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco





























[Acciones.reporte.cancelar]
Nombre=cancelar
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIPagosElectronicos
Activo=S
Visible=S

[Acciones.reporte.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=asigna(info.numero,1)
Activo=S
Visible=S

[Acciones.reporte]
Nombre=reporte
Boton=6
NombreDesplegar=Reporte
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S



[Acciones.Procesar.ListaAccionesMultiples]
(Inicio)=VariablesAsignar
VariablesAsignar=Procesa
Procesa=(Fin)








[Acciones.reporte.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.reporte.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=cancelar
cancelar=Expresion
Expresion=(Fin)













































[Forma.ListaAcciones]
(Inicio)=reporte
reporte=Cancelar
Cancelar=Procesar
Procesar=(Fin)
