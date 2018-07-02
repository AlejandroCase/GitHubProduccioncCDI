
[Forma]
Clave=CFDFlexPerfilDBMail1
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Perfil DBMail
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
ListaAcciones=(Lista)
PosicionInicialAlturaCliente=467
PosicionInicialAncho=737
PosicionCol1=248
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=271
PosicionInicialArriba=92
[Lista]
Estilo=Iconos
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDFlexPerfilDBMail1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

IconosCampo=Estatus
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200

IconosSubTitulo=<T>Perfil<T>
IconosNombre=CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.NombrePerfil
[Detalle]
Estilo=Ficha
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CFDFlexPerfilDBMail
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

[Detalle.CFDFlexPerfilDBMail1.NombrePerfil]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.NombrePerfil
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.CFDFlexPerfilDBMail1.NombreCuenta]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.NombreCuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

EspacioPrevio=S
[Detalle.CFDFlexPerfilDBMail1.Descripcion]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.CFDFlexPerfilDBMail1.CorreoElectronico]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.CorreoElectronico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.CFDFlexPerfilDBMail1.Usuario]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.CFDFlexPerfilDBMail1.Contrasena]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S



[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S





Antes=S
AntesExpresiones=EJECUTARSQL(<T>EXECUTE spCFDFlexEliminarCorreoElectronico :tNombrePerfil, :tNombreCuenta<T>,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.NombrePerfil,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.NombreCuenta)
[Lista.Columnas]
0=227





[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S

EspacioPrevio=S







Expresion=GuardarCambios<BR>ActualizarForma
[Detalle.CFDFlexPerfilDBMail1.Servidor]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.Servidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[Acciones.Registrar]
Nombre=Registrar
Boton=83
NombreDesplegar=&Registrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S





EspacioPrevio=S



















Expresion=EJECUTARSQL(<T>EXECUTE spCFDFlexRegistrarCorreoElectronico :tNombrePerfil, :tNombreCuenta, :tDescripcion, :tCorreoElectronico, :tUsuario, :tContrasena, :tServidor, :nPuerto, :lSSL<T>,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.NombrePerfil,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.NombreCuenta,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.Descripcion,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.CorreoElectronico,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.Usuario,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.Contrasena,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.Servidor,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.Puerto,<BR>CFDFlexPerfilDBMail1:CFDFlexPerfilDBMail1.ActivarSSL)<BR>ActualizarForma
[Detalle.ListaEnCaptura]
(Inicio)=CFDFlexPerfilDBMail1.NombrePerfil
CFDFlexPerfilDBMail1.NombrePerfil=CFDFlexPerfilDBMail1.NombreCuenta
CFDFlexPerfilDBMail1.NombreCuenta=CFDFlexPerfilDBMail1.Descripcion
CFDFlexPerfilDBMail1.Descripcion=CFDFlexPerfilDBMail1.CorreoElectronico
CFDFlexPerfilDBMail1.CorreoElectronico=CFDFlexPerfilDBMail1.Usuario
CFDFlexPerfilDBMail1.Usuario=CFDFlexPerfilDBMail1.Contrasena
CFDFlexPerfilDBMail1.Contrasena=CFDFlexPerfilDBMail1.Servidor
CFDFlexPerfilDBMail1.Servidor=CFDFlexPerfilDBMail1.Puerto
CFDFlexPerfilDBMail1.Puerto=CFDFlexPerfilDBMail1.ActivarSSL
CFDFlexPerfilDBMail1.ActivarSSL=(Fin)

[Detalle.CFDFlexPerfilDBMail1.Puerto]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.Puerto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Detalle.CFDFlexPerfilDBMail1.ActivarSSL]
Carpeta=Detalle
Clave=CFDFlexPerfilDBMail1.ActivarSSL
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco























[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=Nuevo
Nuevo=Eliminar
Eliminar=Registrar
Registrar=(Fin)
