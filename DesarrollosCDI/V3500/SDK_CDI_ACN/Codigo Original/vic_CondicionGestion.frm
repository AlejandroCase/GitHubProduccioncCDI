
[Forma]
Clave=vic_CondicionGestion
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Editar Gestión
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
PosicionInicialIzquierda=246
PosicionInicialArriba=247
PosicionInicialAlturaCliente=335
PosicionInicialAncho=660
ListaAcciones=(Lista)
Menus=S
Comentarios=<T>Condición: <T> + Info.Clave
MenuPrincipal=&Archivo
[Lista]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Actividades
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionGestion
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
ListaEnCaptura=(Lista)

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=vic_CondicionGestion.IDContrato = <T>{Info.ID}<T><BR>AND vic_CondicionGestion.IDCondicion = <T>{Info.Clave}<T>
FiltroRespetar=S
FiltroTipo=General
[Lista.vic_CondicionGestion.Titulo]
Carpeta=Lista
Clave=vic_CondicionGestion.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_CondicionGestion.FechaRelativa]
Carpeta=Lista
Clave=vic_CondicionGestion.FechaRelativa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_CondicionGestion.Persona]
Carpeta=Lista
Clave=vic_CondicionGestion.Persona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_CondicionGestion.Telefonos]
Carpeta=Lista
Clave=vic_CondicionGestion.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_CondicionGestion.Email]
Carpeta=Lista
Clave=vic_CondicionGestion.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Detalle]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Detalle
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionGestion
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

[Detalle.vic_CondicionGestion.Titulo]
Carpeta=Detalle
Clave=vic_CondicionGestion.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_CondicionGestion.Concepto]
Carpeta=Detalle
Clave=vic_CondicionGestion.Concepto
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

Efectos=[Negritas]

[Detalle.vic_CondicionGestion.Persona]
Carpeta=Detalle
Clave=vic_CondicionGestion.Persona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_CondicionGestion.Telefonos]
Carpeta=Detalle
Clave=vic_CondicionGestion.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_CondicionGestion.Email]
Carpeta=Detalle
Clave=vic_CondicionGestion.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.vic_CondicionGestion.Texto]
Carpeta=Detalle
Clave=vic_CondicionGestion.Texto
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=72x5
ColorFondo=Blanco
ColorFuente=Negro


[Lista.Columnas]
Titulo=173
FechaRelativa=100
Persona=193
Telefonos=201
Email=304

[Detalle.Columnas]
Titulo=304
Concepto=304
Fecha=94
Persona=604
Telefonos=304
Email=604
Texto=604


[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreDesplegar=&Guardar cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
EnMenu=S
[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Insertar
Activo=S
Visible=S



Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+N
EnMenu=S
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
ConfirmarAntes=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S
















Menu=&Archivo
EnMenu=S
[Detalle.vic_CondicionGestion.FechaRelativa]
Carpeta=Detalle
Clave=vic_CondicionGestion.FechaRelativa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro




[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
GuardarAntes=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S















[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=(Fin)



















[Lista.ListaEnCaptura]
(Inicio)=vic_CondicionGestion.Titulo
vic_CondicionGestion.Titulo=vic_CondicionGestion.FechaRelativa
vic_CondicionGestion.FechaRelativa=vic_CondicionGestion.Persona
vic_CondicionGestion.Persona=vic_CondicionGestion.Telefonos
vic_CondicionGestion.Telefonos=vic_CondicionGestion.Email
vic_CondicionGestion.Email=(Fin)

[Detalle.ListaEnCaptura]
(Inicio)=vic_CondicionGestion.Titulo
vic_CondicionGestion.Titulo=vic_CondicionGestion.Concepto
vic_CondicionGestion.Concepto=vic_CondicionGestion.FechaRelativa
vic_CondicionGestion.FechaRelativa=vic_CondicionGestion.Persona
vic_CondicionGestion.Persona=vic_CondicionGestion.Telefonos
vic_CondicionGestion.Telefonos=vic_CondicionGestion.Email
vic_CondicionGestion.Email=vic_CondicionGestion.Texto
vic_CondicionGestion.Texto=(Fin)















































































[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Nuevo
Nuevo=Eliminar
Eliminar=Cerrar
Cerrar=(Fin)
