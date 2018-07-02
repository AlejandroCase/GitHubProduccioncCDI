
[Forma]
Clave=VIC_Rep_ListaContratos
Icono=0
Modulos=(Todos)
Nombre=Lista de Contratos
BarraHerramientas=S
MovModulo=(Todos)
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=506
PosicionInicialArriba=292
PosicionInicialAlturaCliente=101
PosicionInicialAncho=268

ListaAcciones=(Lista)
[Variables.ListaEnCaptura]
(Inicio)=RepParam.InfoInmueble
RepParam.InfoInmueble=RepParam.InfoEstatus
RepParam.InfoEstatus=(Fin)



[Lista.Columnas]
0=101
1=300
2=-2

[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=RepParam
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

ExpAntesRefrescar=CampoAsignaVariable(RepParam:RepParam.InfoInmueble,<T>(Todos)<T>)
[Ficha.RepParam.InfoInmueble]
Carpeta=Ficha
Clave=RepParam.InfoInmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Ficha.RepParam.InfoEstatus]
Carpeta=Ficha
Clave=RepParam.InfoEstatus
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


[Acciones.Preliminar]
Nombre=Preliminar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




EspacioPrevio=S
[Acciones.Preliminar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=//EjecutarSQL(<T>vic_RepActualizaFiltro :iEstacion, :tInmueble, :tEstatus<T>, EstacionTrabajo, RepParam:RepParam.InfoInmueble, RepParam:RepParam.InfoEstatus)<BR>//Browser(General.RSReportASPX+<T>/ReportesInmobiliaria/ListaContratos&Estacion=<T> + EstacionTrabajo,<T>Lista de Contratos<T>)<BR>Browser(General.RSReportASPX & <T>/ReportesInmobiliaria/ListaContratos&Inmobiliaria=<T> & RepParam:RepParam.InfoInmueble & <T>&Estatus=<T> & RepParam:RepParam.InfoEstatus,<T>Lista de Contratos<T>)
[Acciones.Preliminar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S














[Acciones.Preliminar.Guardar]
Nombre=Guardar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S










[Ficha.ListaEnCaptura]
(Inicio)=RepParam.InfoInmueble
RepParam.InfoInmueble=RepParam.InfoEstatus
RepParam.InfoEstatus=(Fin)












[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Guardar
Guardar=Expresion
Expresion=Aceptar
Aceptar=(Fin)





[Forma.ListaAcciones]
(Inicio)=Preliminar
Preliminar=Cancelar
Cancelar=(Fin)
