
[Forma]
Clave=CDIRelacionesRestringidasRoles
Icono=8
Modulos=(Todos)
Nombre=Relaciones Restringidas de Roles
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=205
PosicionInicialArriba=250
PosicionInicialAlturaCliente=273
PosicionInicialAncho=869
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
AutoGuardar=S
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIRelacionesRestringidasRoles
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)

OtroOrden=S
PermiteEditar=S

ListaOrden=CDIRelacionesRestringidasRoles.ID<TAB>(Acendente)
HojaAjustarColumnas=S
HojaMantenerSeleccion=S
GuardarPorRegistro=S
[Lista.CDIRelacionesRestringidasRoles.Rol]
Carpeta=Lista
Clave=CDIRelacionesRestringidasRoles.Rol
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIRelacionesRestringidasRoles.NoPermiteRel]
Carpeta=Lista
Clave=CDIRelacionesRestringidasRoles.NoPermiteRel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.CDIRelacionesRestringidasRoles.BajoAutorizacion]
Carpeta=Lista
Clave=CDIRelacionesRestringidasRoles.BajoAutorizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CDIRelacionesRestringidasRoles.Observaciones]
Carpeta=Lista
Clave=CDIRelacionesRestringidasRoles.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[Lista.Columnas]
Rol=174
NoPermiteRel=202
BajoAutorizacion=107
Observaciones=352



Catalogo=151

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Visible=S

Activo=S
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Eliminar Situación
EnBarraHerramientas=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Visible=S



EspacioPrevio=S





ActivoCondicion=Usuario.CDIRelacionesRestringidasRoles
[Acciones.UsuariosAutorizar]
Nombre=UsuariosAutorizar
Boton=80
NombreEnBoton=S
NombreDesplegar=&Usuarios para Autorizar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
Visible=S















ListaAccionesMultiples=(Lista)

GuardarAntes=S
ActivoCondicion=ConDatos( CDIRelacionesRestringidasRoles:CDIRelacionesRestringidasRoles.Rol) y<BR>ConDatos( CDIRelacionesRestringidasRoles:CDIRelacionesRestringidasRoles.NoPermiteRel)  y<BR>          CDIRelacionesRestringidasRoles:CDIRelacionesRestringidasRoles.BajoAutorizacion
[Acciones.UsuariosAutorizar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Asigna(Info.ID,CDIRelacionesRestringidasRoles:CDIRelacionesRestringidasRoles.ID)
[Acciones.UsuariosAutorizar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S



[Acciones.UsuariosAutorizar.Forma]
Nombre=Forma
Boton=0
TipoAccion=Formas
ClaveAccion=CDIUsuarioAutorizaRelacion
Activo=S
Visible=S























[Acciones.UsuariosAutorizar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Variables Asignar
Variables Asignar=Forma
Forma=(Fin)




















































































































































[Lista.ListaEnCaptura]
(Inicio)=CDIRelacionesRestringidasRoles.Rol
CDIRelacionesRestringidasRoles.Rol=CDIRelacionesRestringidasRoles.NoPermiteRel
CDIRelacionesRestringidasRoles.NoPermiteRel=CDIRelacionesRestringidasRoles.BajoAutorizacion
CDIRelacionesRestringidasRoles.BajoAutorizacion=CDIRelacionesRestringidasRoles.Observaciones
CDIRelacionesRestringidasRoles.Observaciones=(Fin)































[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Eliminar
Eliminar=UsuariosAutorizar
UsuariosAutorizar=(Fin)
