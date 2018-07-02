
[Forma]
Clave=CDITextoMovBloq
Icono=0
Modulos=(Todos)
Nombre=<T>Bitácora de Bloqueo<T>

ListaCarpetas=(Lista)
CarpetaPrincipal=CDITextoMovBloq
PosicionInicialIzquierda=250
PosicionInicialArriba=286
PosicionInicialAlturaCliente=329
PosicionInicialAncho=637
PosicionCol1=191
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaExclusiva=S
VentanaEstadoInicial=Normal
[CDITextoMovBloq]
Estilo=Hoja
Clave=CDITextoMovBloq
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDITextoMovBloq
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=CDITextoMovBloq.Mov

[CDITextoMovBloq.CDITextoMovBloq.Mov]
Carpeta=CDITextoMovBloq
Clave=CDITextoMovBloq.Mov
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDITextoMovBloqD]
Estilo=Ficha
Clave=CDITextoMovBloqD
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDITextoMovBloq
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

[CDITextoMovBloqD.CDITextoMovBloq.Mov]
Carpeta=CDITextoMovBloqD
Clave=CDITextoMovBloq.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDITextoMovBloqD.CDITextoMovBloq.Activo]
Carpeta=CDITextoMovBloqD
Clave=CDITextoMovBloq.Activo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDITextoMovBloq.Columnas]
Mov=149













[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
Carpeta=CDITextoMovBloqD
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S







NombreEnBoton=S
[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S







[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=Eliminar
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S











































[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S





















[CDITextoMovBloqD.CDITextoMovBloq.Leyenda]
Carpeta=CDITextoMovBloqD
Clave=CDITextoMovBloq.Leyenda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50X15
ColorFondo=Blanco



[CDITextoMovBloqD.ListaEnCaptura]
(Inicio)=CDITextoMovBloq.Mov
CDITextoMovBloq.Mov=CDITextoMovBloq.Activo
CDITextoMovBloq.Activo=CDITextoMovBloq.Leyenda
CDITextoMovBloq.Leyenda=(Fin)











































[Acciones.Etiquetas]
Nombre=Etiquetas
Boton=11
NombreEnBoton=S
NombreDesplegar=&Etiquetas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICfgTextoMovBloq
Activo=S
Visible=S



















































[Forma.ListaCarpetas]
(Inicio)=CDITextoMovBloq
CDITextoMovBloq=CDITextoMovBloqD
CDITextoMovBloqD=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=Nuevo
Nuevo=Eliminar
Eliminar=Navegador
Navegador=Etiquetas
Etiquetas=(Fin)
