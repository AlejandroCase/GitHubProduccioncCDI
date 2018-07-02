
[Forma]
Clave=VIC_Rep_AltasBajasContratos
Icono=0
Modulos=(Todos)
Nombre=Alta y Baja de contratos

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
PosicionInicialAlturaCliente=146
PosicionInicialAncho=282
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=499
PosicionInicialArriba=270
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
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

[Ficha.RepParam.InfoFechaD]
Carpeta=Ficha
Clave=RepParam.InfoFechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Ficha.RepParam.InfoFechaA]
Carpeta=Ficha
Clave=RepParam.InfoFechaA
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Ficha.RepParam.InfoEstatusAltaBaja]
Carpeta=Ficha
Clave=RepParam.InfoEstatusAltaBaja
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=15
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S

ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S














[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=Browser(General.RSReportASPX & <T>/ReportesInmobiliaria/AltasBajasContratos&FechaD=<T> & RepParam:RepParam.InfoFechaD & <T>&FechaA=<T> & RepParam:RepParam.InfoFechaA & <T>&OpcionContrato=<T> & RepParam:RepParam.InfoEstatusAltaBaja,<T>Altas y Bajas de Contratos<T>)
[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S



[Acciones.Aceptar.Guardar]
Nombre=Guardar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S




[Ficha.ListaEnCaptura]
(Inicio)=RepParam.InfoFechaD
RepParam.InfoFechaD=RepParam.InfoFechaA
RepParam.InfoFechaA=RepParam.InfoEstatusAltaBaja
RepParam.InfoEstatusAltaBaja=(Fin)




[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Guardar
Guardar=Expresion
Expresion=Aceptar
Aceptar=(Fin)



[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
