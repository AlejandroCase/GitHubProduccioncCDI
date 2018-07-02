
[Forma]
Clave=CDICfgWebPar
Icono=0
Modulos=(Todos)
MovModulo=CDICfgWebPar
Nombre=Parametros WEB
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICfgWebPar
CarpetaPrincipal=CDICfgWebPar
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=231
PosicionInicialArriba=106
PosicionInicialAlturaCliente=517
PosicionInicialAncho=903
[CDICfgWebPar]
Estilo=Ficha
Clave=CDICfgWebPar
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICfgWebPar
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

[CDICfgWebPar.CDICfgWebPar.CuentaBancoDeposito]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.CuentaBancoDeposito
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

EspacioPrevio=S


























[CDICfgWebPar.CDICfgWebPar.DescuentoPagoWeb]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.DescuentoPagoWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
























[Lista.Columnas]
0=84
1=111
2=-2







[CDICfgWebPar.CDICfgWebPar.PreRegistros]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.PreRegistros
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICfgWebPar.CDICfgWebPar.Recibos]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.Recibos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICfgWebPar.CDICfgWebPar.Cobros]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.Cobros
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICfgWebPar.CDICfgWebPar.Depositos]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.Depositos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDICfgWebPar.CDICfgWebPar.mensaje]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x5
ColorFondo=Blanco


[Acciones.Expresion]
Nombre=Expresion
Boton=69
NombreDesplegar=Saludo
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S



NombreEnBoton=S







EspacioPrevio=S
Expresion=EditorHTML( CDICfgWebPar:CDICfgWebPar.mensaje, mensaje)
[CDICfgWebPar.ListaEnCaptura]
(Inicio)=CDICfgWebPar.CuentaBancoDeposito
CDICfgWebPar.CuentaBancoDeposito=CDICfgWebPar.DescuentoPagoWeb
CDICfgWebPar.DescuentoPagoWeb=CDICfgWebPar.PreRegistros
CDICfgWebPar.PreRegistros=CDICfgWebPar.Recibos
CDICfgWebPar.Recibos=CDICfgWebPar.Cobros
CDICfgWebPar.Cobros=CDICfgWebPar.Depositos
CDICfgWebPar.Depositos=CDICfgWebPar.mensaje
CDICfgWebPar.mensaje=CDICfgWebPar.mensaje1
CDICfgWebPar.mensaje1=CDICfgWebPar.mensaje2
CDICfgWebPar.mensaje2=(Fin)

[CDICfgWebPar.CDICfgWebPar.mensaje1]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.mensaje1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100X5
ColorFondo=Blanco

[CDICfgWebPar.CDICfgWebPar.mensaje2]
Carpeta=CDICfgWebPar
Clave=CDICfgWebPar.mensaje2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100X5
ColorFondo=Blanco












[Acciones.Mensaje]
Nombre=Mensaje
Boton=69
NombreEnBoton=S
NombreDesplegar=Mensaje
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S


EspacioPrevio=S
Expresion=EditorHTML( CDICfgWebPar:CDICfgWebPar.mensaje1, Mensaje )
[Acciones.Despedida]
Nombre=Despedida
Boton=69
NombreEnBoton=S
NombreDesplegar=Despedida
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S









EspacioPrevio=S
Expresion=EditorHTML(CDICfgWebPar:CDICfgWebPar.mensaje2>,Despedida )




















[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=Expresion
Expresion=Mensaje
Mensaje=Despedida
Despedida=(Fin)
