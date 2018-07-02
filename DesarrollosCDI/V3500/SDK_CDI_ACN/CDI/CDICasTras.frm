
[Forma]
Clave=CDICasTras
Icono=0
Modulos=(Todos)
Nombre=Traspaso de Casillero
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICasTras
CarpetaPrincipal=CDICasTras
PosicionInicialIzquierda=451
PosicionInicialArriba=301
PosicionInicialAlturaCliente=127
PosicionInicialAncho=464
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Info.Mov+<T> Casillero: <T>+Info.cdicasal
[CDICasTras]
Estilo=Ficha
Clave=CDICasTras
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro


InicializarVariables=S
[CDICasTras.Info.CDISocioLista]
Carpeta=CDICasTras
Clave=Info.CDISocioLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco


[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76


[CDICasTras.Info.Observaciones]
Carpeta=CDICasTras
Clave=Info.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco






[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S













[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S











Expresion=ProcesarSql(<T>CDITraspasoCasillero :nId, :tUs, :tObs, :tCte<T>, Info.numero, usuario, Info.observaciones, Info.cdisociolista)
[Acciones.Aceptar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




[CDICasTras.ListaEnCaptura]
(Inicio)=Info.CDISocioLista
Info.CDISocioLista=Info.Observaciones
Info.Observaciones=(Fin)






















[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=Cerrar
Cerrar=(Fin)







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
