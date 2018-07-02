[Forma]
Clave=CampanaCfgSituacion
Nombre=Configuración - Acciones Automáticas
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialIzquierda=629
PosicionInicialArriba=374
PosicionInicialAlturaCliente=382
PosicionInicialAncho=661
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
PosicionCol1=409
Comentarios=Lista(Info.Mov, Info.MovID, Info.Tipo)

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CampanaCfgSituacion
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
FiltroRespetar=S
FiltroTipo=General
OtroOrden=S
ListaOrden=(Lista)
HojaAjustarColumnas=S
HojaMantenerSeleccion=S
FiltroGeneral=CampanaCfgSituacion.ID={Info.ID}

[Lista.CampanaCfgSituacion.Situacion]
Carpeta=Lista
Clave=CampanaCfgSituacion.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaCfgSituacion.Accion]
Carpeta=Lista
Clave=CampanaCfgSituacion.Accion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Situacion=202
Accion=174
Estatus=94

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

[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CampanaCfgSituacion
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

[Ficha.CampanaCfgSituacion.Pagina]
Carpeta=Ficha
Clave=CampanaCfgSituacion.Pagina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.CampanaCfgSituacion.Asunto]
Carpeta=Ficha
Clave=CampanaCfgSituacion.Asunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.CampanaCfgSituacion.ProyectoMov]
Carpeta=Ficha
Clave=CampanaCfgSituacion.ProyectoMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.CampanaCfgSituacion.CampanaMov]
Carpeta=Ficha
Clave=CampanaCfgSituacion.CampanaMov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.CampanaCfgSituacion.CampanaMovID]
Carpeta=Ficha
Clave=CampanaCfgSituacion.CampanaMovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.CampanaCfgSituacion.ProyectoPlantilla]
Carpeta=Ficha
Clave=CampanaCfgSituacion.ProyectoPlantilla
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Ficha
Ficha=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=CampanaCfgSituacion.Situacion
CampanaCfgSituacion.Situacion=CampanaCfgSituacion.Accion
CampanaCfgSituacion.Accion=(Fin)

[Lista.ListaOrden]
(Inicio)=CampanaCfgSituacion.Situacion<TAB>(Acendente)
CampanaCfgSituacion.Situacion<TAB>(Acendente)=CampanaCfgSituacion.Accion<TAB>(Acendente)
CampanaCfgSituacion.Accion<TAB>(Acendente)=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=CampanaCfgSituacion.Pagina
CampanaCfgSituacion.Pagina=CampanaCfgSituacion.Asunto
CampanaCfgSituacion.Asunto=CampanaCfgSituacion.CampanaMov
CampanaCfgSituacion.CampanaMov=CampanaCfgSituacion.CampanaMovID
CampanaCfgSituacion.CampanaMovID=CampanaCfgSituacion.ProyectoMov
CampanaCfgSituacion.ProyectoMov=CampanaCfgSituacion.ProyectoPlantilla
CampanaCfgSituacion.ProyectoPlantilla=(Fin)
