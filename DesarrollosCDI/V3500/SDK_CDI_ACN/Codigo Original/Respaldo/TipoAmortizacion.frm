[Forma]
Clave=TipoAmortizacion
Nombre=Tipo de Amortización
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=218
PosicionInicialArriba=294
PosicionInicialAlturaCliente=408
PosicionInicialAncho=843
PosicionColumna1=45
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=TipoAmortizacion
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
HojaTitulos=S
HojaMostrarColumnas=S

[Lista.TipoAmortizacion.TipoAmortizacion]
Carpeta=Lista
Clave=TipoAmortizacion.TipoAmortizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=TipoAmortizacion
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Ficha.TipoAmortizacion.TipoAmortizacion]
Carpeta=Ficha
Clave=TipoAmortizacion.TipoAmortizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[Ficha.TipoAmortizacion.PagoInhabiles]
Carpeta=Ficha
Clave=TipoAmortizacion.PagoInhabiles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Ficha.TipoAmortizacion.PagoVencimiento]
Carpeta=Ficha
Clave=TipoAmortizacion.PagoVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.TipoAmortizacion.PagoDias]
Carpeta=Ficha
Clave=TipoAmortizacion.PagoDias
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

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
TipoAmortizacion=88
Descripcion=255

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreEnBoton=S
NombreDesplegar=&Nueva
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S
EspacioPrevio=S

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=E&liminar
EnBarraHerramientas=S
ConfirmarAntes=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S

[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 1 (Registros)
Activo=S
Visible=S

[Ficha.TipoAmortizacion.Descripcion]
Carpeta=Ficha
Clave=TipoAmortizacion.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[Lista.TipoAmortizacion.Descripcion]
Carpeta=Lista
Clave=TipoAmortizacion.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.TipoAmortizacion.Estatus]
Carpeta=Ficha
Clave=TipoAmortizacion.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.TipoAmortizacion.Metodo]
Carpeta=Ficha
Clave=TipoAmortizacion.Metodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.MetodoAmortizacion.Descripcion]
Carpeta=Ficha
Clave=MetodoAmortizacion.Descripcion
Editar=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro
ValidaNombre=S

[Ficha.TipoAmortizacion.ComisionesFinanciadas]
Carpeta=Ficha
Clave=TipoAmortizacion.ComisionesFinanciadas
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.TipoAmortizacion.ReinversionAutomatica]
Carpeta=Ficha
Clave=TipoAmortizacion.ReinversionAutomatica
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Ficha
Ficha=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Nuevo
Nuevo=Eliminar
Eliminar=Navegador
Navegador=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=TipoAmortizacion.TipoAmortizacion
TipoAmortizacion.TipoAmortizacion=TipoAmortizacion.Descripcion
TipoAmortizacion.Descripcion=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=TipoAmortizacion.TipoAmortizacion
TipoAmortizacion.TipoAmortizacion=TipoAmortizacion.Metodo
TipoAmortizacion.Metodo=MetodoAmortizacion.Descripcion
MetodoAmortizacion.Descripcion=TipoAmortizacion.Descripcion
TipoAmortizacion.Descripcion=TipoAmortizacion.PagoVencimiento
TipoAmortizacion.PagoVencimiento=TipoAmortizacion.PagoDias
TipoAmortizacion.PagoDias=TipoAmortizacion.ComisionesFinanciadas
TipoAmortizacion.ComisionesFinanciadas=TipoAmortizacion.PagoInhabiles
TipoAmortizacion.PagoInhabiles=TipoAmortizacion.ReinversionAutomatica
TipoAmortizacion.ReinversionAutomatica=TipoAmortizacion.Estatus
TipoAmortizacion.Estatus=(Fin)
