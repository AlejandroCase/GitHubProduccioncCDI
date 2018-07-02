
[Forma]
Clave=CDICambioSocio
Icono=0
Modulos=(Todos)
Nombre=Cambio Email y Contraseña Socio
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICambioSocio
CarpetaPrincipal=CDICambioSocio
PosicionInicialIzquierda=446
PosicionInicialArriba=138
PosicionInicialAlturaCliente=454
PosicionInicialAncho=473
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
IniciarAgregando=S
[CDICambioSocio]
Estilo=Ficha
Clave=CDICambioSocio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICambioSocio
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

RefrescarAlEntrar=S
[CDICambioSocio.CDICambioSocio.Socio]
Carpeta=CDICambioSocio
Clave=CDICambioSocio.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[CDICambioSocio.CDICambioSocio.Email]
Carpeta=CDICambioSocio
Clave=CDICambioSocio.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICambioSocio.CDICambioSocio.Contrasena]
Carpeta=CDICambioSocio
Clave=CDICambioSocio.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Acciones.Expresion]
Nombre=Expresion
Boton=23
NombreEnBoton=S
NombreDesplegar=Aceptar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S


Multiple=S
ListaAccionesMultiples=(Lista)
ConCondicion=S
EjecucionConError=S
EjecucionCondicion=CDICambioSocio:CDICambioSocio.Contrasena=CDICambioSocio:CDICambioSocio.Contrasena2
EjecucionMensaje=<T>Las contraseñas no son iguales<T>
[CDICambioSocio.CDICambioSocio.Contrasena2]
Carpeta=CDICambioSocio
Clave=CDICambioSocio.Contrasena2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=5
NombreEnBoton=S
NombreDesplegar=Cancelar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S



EspacioPrevio=S
[Acciones.Expresion.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Expresion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S









Expresion=SQL(<T>xpCDICamPassSocio :nI<T>, CDICambioSocio:CDICambioSocio.Id)
[Acciones.Expresion.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S




[CDICambioSocio.ListaEnCaptura]
(Inicio)=CDICambioSocio.Socio
CDICambioSocio.Socio=CDICambioSocio.Email
CDICambioSocio.Email=CDICambioSocio.Contrasena
CDICambioSocio.Contrasena=CDICambioSocio.Contrasena2
CDICambioSocio.Contrasena2=(Fin)








[Acciones.Expresion.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Actualizar Forma
Actualizar Forma=(Fin)









[Forma.ListaAcciones]
(Inicio)=Expresion
Expresion=Cancelar Cambios
Cancelar Cambios=(Fin)
