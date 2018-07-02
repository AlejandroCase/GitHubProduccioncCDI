[Forma]
Clave=FormaVirtual
Nombre=Formas Virtuales
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=145
PosicionInicialArriba=94
PosicionInicialAlturaCliente=543
PosicionInicialAncho=734
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaVirtual
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
HojaAjustarColumnas=S
HojaMantenerSeleccion=S

[Lista.FormaVirtual.FormaVirtual]
Carpeta=Lista
Clave=FormaVirtual.FormaVirtual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.FormaVirtual.Forma]
Carpeta=Lista
Clave=FormaVirtual.Forma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.FormaVirtual.Modo]
Carpeta=Lista
Clave=FormaVirtual.Modo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
FormaVirtual=182
Forma=111
Titulo=321
Modo=80
Etiqueta=261
Nombre=315

[Acciones.Carpetas]
Nombre=Carpetas
Boton=47
NombreEnBoton=S
NombreDesplegar=&Carpetas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=FormaVirtualCarpeta
Activo=S
Visible=S
ConCondicion=S
GuardarAntes=S
Antes=S
EjecucionCondicion=ConDatos(FormaVirtual:FormaVirtual.FormaVirtual)
AntesExpresiones=Asigna(Info.FormaVirtual, FormaVirtual:FormaVirtual.FormaVirtual)

[Acciones.Campos]
Nombre=Campos
Boton=47
NombreEnBoton=S
NombreDesplegar=C&ampos
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=FormaVirtualCampo
Activo=S
Visible=S
ConCondicion=S
GuardarAntes=S
Antes=S
EjecucionCondicion=ConDatos(FormaVirtual:FormaVirtual.FormaVirtual)
AntesExpresiones=Asigna(Info.FormaVirtual, FormaVirtual:FormaVirtual.FormaVirtual)

[Lista.FormaVirtual.Titulo]
Carpeta=Lista
Clave=FormaVirtual.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Acciones]
Nombre=Acciones
Boton=47
NombreEnBoton=S
NombreDesplegar=&Acciones
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=FormaVirtualAccion
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(FormaVirtual:FormaVirtual.FormaVirtual)
Antes=S
AntesExpresiones=Asigna(Info.FormaVirtual, FormaVirtual:FormaVirtual.FormaVirtual)
Visible=S

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Carpetas
Carpetas=Campos
Campos=Acciones
Acciones=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=FormaVirtual.FormaVirtual
FormaVirtual.FormaVirtual=FormaVirtual.Titulo
FormaVirtual.Titulo=FormaVirtual.Forma
FormaVirtual.Forma=FormaVirtual.Modo
FormaVirtual.Modo=(Fin)
