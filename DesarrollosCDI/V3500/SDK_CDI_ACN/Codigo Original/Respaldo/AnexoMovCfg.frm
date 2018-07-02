[Forma]
Clave=AnexoMovCfg
Nombre=e(<T>Editar Anexos<T>)+<T> - <T>+Info.Descripcion
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Detalle
PosicionInicialIzquierda=719
PosicionInicialArriba=369
PosicionInicialAltura=402
PosicionInicialAncho=482
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaExclusiva=S
PosicionInicialAlturaCliente=425

[Lista]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Lista
Clave=Lista
OtroOrden=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AnexoMov
Fuente={MS Sans Serif, 8, Negro, []}
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
ListaOrden=AnexoMov.Orden<TAB>(Acendente)
CarpetaVisible=S
HojaMantenerSeleccion=S
Filtros=S
FiltroPredefinido=S
FiltroAncho=20
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Rama=<T>{Info.Rama}<T> AND ID={Info.ID}

[Detalle]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Detalles
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AnexoMov
Fuente={MS Sans Serif, 8, Negro, []}
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

[Lista.Columnas]
Nombre=328
Direccion=321
Tipo=98

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

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreEnBoton=S
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
NombreEnBoton=S
NombreDesplegar=E&liminar
EnBarraHerramientas=S
Carpeta=Lista
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S
ConfirmarAntes=S

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

[Imagen.Anexo.Imagen]
Carpeta=Imagen
Clave=Anexo.Imagen
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Comentario.Anexo.Comentario]
Carpeta=Comentario
Clave=Anexo.Comentario
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.URL]
Nombre=URL
Boton=57
NombreEnBoton=S
NombreDesplegar=&Examinar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S
Expresion=URL(AnexoMov:AnexoMov.Direccion)
ActivoCondicion=AnexoMov:AnexoMov.Tipo<><T>Comentario<T>

[Lista.AnexoMov.Nombre]
Carpeta=Lista
Clave=AnexoMov.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.AnexoMov.Tipo]
Carpeta=Lista
Clave=AnexoMov.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.AnexoMov.Tipo]
Carpeta=Detalle
Clave=AnexoMov.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro
Efectos=[Negritas]

[Detalle.AnexoMov.Nombre]
Carpeta=Detalle
Clave=AnexoMov.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=37
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.AnexoMov.Icono]
Carpeta=Detalle
Clave=AnexoMov.Icono
Editar=S
ValidaNombre=S
3D=S
Pegado=N
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.AnexoMov.Direccion]
Carpeta=Detalle
Clave=AnexoMov.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=62
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.AnexoMov.Comentario]
Carpeta=Detalle
Clave=AnexoMov.Comentario
Editar=S
LineaNueva=S
3D=S
Tamano=62x12
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Ordenar]
Nombre=Ordenar
Boton=50
NombreDesplegar=Cambiar Orden
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Antes=S
AntesExpresiones=Forma(<T>AnexoMovOrdenar<T>)
Visible=S

[Mensaje]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Mensaje
Clave=Mensaje
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AnexoMov
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
CondicionVisible=AnexoMov:AnexoMov.Tipo=<T>Mensaje<T>

[Mensaje.AnexoMov.Origen]
Carpeta=Mensaje
Clave=AnexoMov.Origen
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=55
ColorFondo=Blanco
ColorFuente=Negro

[Mensaje.AnexoMov.Destino]
Carpeta=Mensaje
Clave=AnexoMov.Destino
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=55x10
ColorFondo=Blanco
ColorFuente=Negro

[Mensaje.AnexoMov.Fecha]
Carpeta=Mensaje
Clave=AnexoMov.Fecha
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=55
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.AnexoMov.FechaEmision]
Carpeta=Detalle
Clave=AnexoMov.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.AnexoMov.Vencimiento]
Carpeta=Detalle
Clave=AnexoMov.Vencimiento
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Contrato]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Contrato
Clave=Contrato
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=AnexoCta
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
CondicionVisible=AnexoMov:AnexoMov.Tipo=<T>Contrato<T>

[Contrato.AnexoCta.TipoDocumento]
Carpeta=Contrato
Clave=AnexoCta.TipoDocumento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Blanco
ColorFuente=Negro

[Contrato.AnexoCta.FechaEmision]
Carpeta=Contrato
Clave=AnexoCta.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Contrato.AnexoCta.Inicio]
Carpeta=Contrato
Clave=AnexoCta.Inicio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Contrato.AnexoCta.Vencimiento]
Carpeta=Contrato
Clave=AnexoCta.Vencimiento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Contrato.AnexoCta.Categoria]
Carpeta=Contrato
Clave=AnexoCta.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=62
ColorFondo=Blanco
ColorFuente=Negro

[Contrato.AnexoCta.Grupo]
Carpeta=Contrato
Clave=AnexoCta.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Blanco
ColorFuente=Negro

[Contrato.AnexoCta.Familia]
Carpeta=Contrato
Clave=AnexoCta.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=62
ColorFondo=Blanco
ColorFuente=Negro

[Detalle.AnexoMov.NivelAcceso]
Carpeta=Detalle
Clave=AnexoMov.NivelAcceso
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=Mensaje
Mensaje=Contrato
Contrato=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Nuevo
Nuevo=Eliminar
Eliminar=URL
URL=Ordenar
Ordenar=Navegador
Navegador=(Fin)

[Lista.ListaEnCaptura]
(Inicio)=AnexoMov.Nombre
AnexoMov.Nombre=AnexoMov.Tipo
AnexoMov.Tipo=(Fin)

[Detalle.ListaEnCaptura]
(Inicio)=AnexoMov.Tipo
AnexoMov.Tipo=AnexoMov.Nombre
AnexoMov.Nombre=AnexoMov.Icono
AnexoMov.Icono=AnexoMov.Direccion
AnexoMov.Direccion=AnexoMov.Comentario
AnexoMov.Comentario=AnexoMov.FechaEmision
AnexoMov.FechaEmision=AnexoMov.Vencimiento
AnexoMov.Vencimiento=AnexoMov.NivelAcceso
AnexoMov.NivelAcceso=(Fin)

[Mensaje.ListaEnCaptura]
(Inicio)=AnexoMov.Fecha
AnexoMov.Fecha=AnexoMov.Origen
AnexoMov.Origen=AnexoMov.Destino
AnexoMov.Destino=(Fin)

[Contrato.ListaEnCaptura]
(Inicio)=AnexoCta.TipoDocumento
AnexoCta.TipoDocumento=AnexoCta.FechaEmision
AnexoCta.FechaEmision=AnexoCta.Inicio
AnexoCta.Inicio=AnexoCta.Vencimiento
AnexoCta.Vencimiento=AnexoCta.Categoria
AnexoCta.Categoria=AnexoCta.Grupo
AnexoCta.Grupo=AnexoCta.Familia
AnexoCta.Familia=(Fin)
