
[Forma]
Clave=CdiCrearCasillero
Icono=0
Modulos=(Todos)
Nombre=Crear Casilleros
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal

ListaCarpetas=Crear
CarpetaPrincipal=Crear
PosicionInicialIzquierda=433
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
AccionesDivision=S
BarraHerramientas=S
[Crear]
Estilo=Ficha
Clave=Crear
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
FichaColorFondo=Plata

InicializarVariables=S
[Crear.Info.CdiCasSeccion]
Carpeta=Crear
Clave=Info.CdiCasSeccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Crear.Info.CdiCasUbicacion]
Carpeta=Crear
Clave=Info.CdiCasUbicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Crear.Info.CdiCasTipo]
Carpeta=Crear
Clave=Info.CdiCasTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Crear.Info.CdiCasDel]
Carpeta=Crear
Clave=Info.CdiCasDel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Crear.Info.CdiCasAl]
Carpeta=Crear
Clave=Info.CdiCasAl
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



EnBarraHerramientas=S
EspacioPrevio=S
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

Expresion=Procesarsql(<T>CDICreaCasillero :tSecc, :tUb, :tTip, :nDel, :nAl<T>,info.cdicasseccion,Info.cdicasubicacion,Info.cdicastipo,info.CdicasDel,Info.cdicasal)
ConCondicion=S
EjecucionCondicion=CONDATOS(info.cdicasseccion) Y<BR>CONDATOS(Info.cdicasubicacion) Y<BR>CONDATOS(Info.cdicastipo) Y<BR>CONDATOS(info.CdicasDel) Y<BR>CONDATOS(Info.cdicasal)
EjecucionMensaje=<T>Faltan Datos<T>
EjecucionConError=S
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Aceptar
Multiple=S
EnBarraAcciones=S
ConfirmarAntes=S
DialogoMensaje=EstaSeguro
TipoAccion=Expresion
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S


EnBarraHerramientas=S



[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=(Fin)

[Crear.ListaEnCaptura]
(Inicio)=Info.CdiCasSeccion
Info.CdiCasSeccion=Info.CdiCasUbicacion
Info.CdiCasUbicacion=Info.CdiCasTipo
Info.CdiCasTipo=Info.CdiCasDel
Info.CdiCasDel=Info.CdiCasAl
Info.CdiCasAl=(Fin)





[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
