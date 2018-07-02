
[Forma]
Clave=CDICasilleroGenRec
Icono=0
Modulos=(Todos)
Nombre=Cilindro
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Cilindro
CarpetaPrincipal=Cilindro
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=453
PosicionInicialArriba=308
PosicionInicialAlturaCliente=114
PosicionInicialAncho=459
ExpresionesAlMostrar=Asigna(Info.CDICilindro,nulo)
Comentarios=<T>Casillero :<T> +Info.CDICasal
[Cilindro]
Estilo=Ficha
Clave=Cilindro
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
ListaEnCaptura=Info.Observaciones
CarpetaVisible=S

InicializarVariables=S

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

ConCondicion=S
EjecucionConError=S
Expresion=ProcesarSql(<T>CDIsp_CasilleroGenRec    :ncasillero, :tUs, :tOb <T>, info.cdicasal, usuario, Info.Observaciones )
EjecucionCondicion=condatos(Info.observaciones)
EjecucionMensaje=<T>Falta especificar las observaciones<T>
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=&Aceptar
Multiple=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S


NombreEnBoton=S







[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
















[Acciones.Cancelar/Cancelar Cambios]
Nombre=Cancelar/Cancelar Cambios
Boton=5
NombreDesplegar=Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



NombreEnBoton=S








EspacioPrevio=S













[Cilindro.Info.Observaciones]
Carpeta=Cilindro
Clave=Info.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco





[Cilindro.ListaEnCaptura]
(Inicio)=Info.CDICilindro
Info.CDICilindro=Info.Observaciones
Info.Observaciones=(Fin)




























[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Aceptar
Aceptar=Expresion
Expresion=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar/Cancelar Cambios
Cancelar/Cancelar Cambios=(Fin)
