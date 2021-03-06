
[Forma]
Clave=CDIServidorVinculado
Icono=30
Modulos=(Todos)
Nombre=Servidor Vinculado
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIServidorVinculado
CarpetaPrincipal=CDIServidorVinculado
PosicionInicialIzquierda=420
PosicionInicialArriba=243
PosicionInicialAlturaCliente=243
PosicionInicialAncho=525
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)


ExpresionesAlMostrar=ActualizarForma
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



[Acciones.Guadar]
Nombre=Guadar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S



EspacioPrevio=S







[Acciones.ActivarVinculo]
Nombre=ActivarVinculo
Boton=94
NombreDesplegar=&Servidor
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S

NombreEnBoton=S




EspacioPrevio=S







GuardarAntes=S
Expresion=VerComentario( <T>Script para Activar Vinculo con el Servidor.<T>, SQLEnLista(<T>spCDIVinculoServidor :tEmpresa<T>, Empresa))
ActivoCondicion=ConDatos( CDIServidorVinculado:CDIServidorVinculado.Servidor) y<BR>ConDatos( CDIServidorVinculado:CDIServidorVinculado.NombreUsuario) y<BR>ConDatos( CDIServidorVinculado:CDIServidorVinculado.BaseDatos) y<BR>ConDatos( CDIServidorVinculado:CDIServidorVinculado.TablaVinculada )
[CDIServidorVinculado]
Estilo=Ficha
Clave=CDIServidorVinculado
IgnorarControlesEdicion=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIServidorVinculado
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S

PermiteEditar=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIServidorVinculado.Proceso = <T>{Info.CDIProcesoVinculacion}<T>
[CDIServidorVinculado.CDIServidorVinculado.Servidor]
Carpeta=CDIServidorVinculado
Clave=CDIServidorVinculado.Servidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
Efectos=[Negritas]

[CDIServidorVinculado.CDIServidorVinculado.NombreUsuario]
Carpeta=CDIServidorVinculado
Clave=CDIServidorVinculado.NombreUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIServidorVinculado.CDIServidorVinculado.Passwords]
Carpeta=CDIServidorVinculado
Clave=CDIServidorVinculado.Passwords
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIServidorVinculado.CDIServidorVinculado.BaseDatos]
Carpeta=CDIServidorVinculado
Clave=CDIServidorVinculado.BaseDatos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco







Efectos=[Negritas]
[CDIServidorVinculado.CDIServidorVinculado.TablaVinculada]
Carpeta=CDIServidorVinculado
Clave=CDIServidorVinculado.TablaVinculada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco













Efectos=[Negritas]


[Acciones.Conexion]
Nombre=Conexion
Boton=95
NombreEnBoton=S
NombreDesplegar=&ProbarConexión
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S



EspacioPrevio=S


























GuardarAntes=S
Expresion=ProcesarSQL( <T>EXEC spCDIVinculoServidorPruebaConex :t<T>, Empresa )
ActivoCondicion=ConDatos( CDIServidorVinculado:CDIServidorVinculado.Servidor) y<BR>ConDatos( CDIServidorVinculado:CDIServidorVinculado.NombreUsuario) y<BR>ConDatos( CDIServidorVinculado:CDIServidorVinculado.BaseDatos) y<BR>ConDatos( CDIServidorVinculado:CDIServidorVinculado.TablaVinculada )
















[CDIServidorVinculado.CDIServidorVinculado.Producto]
Carpeta=CDIServidorVinculado
Clave=CDIServidorVinculado.Producto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco







[CDIServidorVinculado.CDIServidorVinculado.Proceso]
Carpeta=CDIServidorVinculado
Clave=CDIServidorVinculado.Proceso
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Plata













Efectos=[Negritas]

[CDIServidorVinculado.ListaEnCaptura]
(Inicio)=CDIServidorVinculado.Servidor
CDIServidorVinculado.Servidor=CDIServidorVinculado.Producto
CDIServidorVinculado.Producto=CDIServidorVinculado.NombreUsuario
CDIServidorVinculado.NombreUsuario=CDIServidorVinculado.Passwords
CDIServidorVinculado.Passwords=CDIServidorVinculado.BaseDatos
CDIServidorVinculado.BaseDatos=CDIServidorVinculado.TablaVinculada
CDIServidorVinculado.TablaVinculada=CDIServidorVinculado.Proceso
CDIServidorVinculado.Proceso=(Fin)













[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guadar
Guadar=ActivarVinculo
ActivarVinculo=Conexion
Conexion=(Fin)
