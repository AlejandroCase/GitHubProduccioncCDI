
[Forma]
Clave=CDIPermisoFuturaMama
Icono=0
Modulos=(Todos)
Nombre=Permisos Estacionamiento
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIPermisoFuturaMama
PosicionInicialIzquierda=270
PosicionInicialArriba=136
PosicionInicialAlturaCliente=457
PosicionInicialAncho=825
PosicionCol1=481
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
DialogoAbrir=S
[CDIPermisoFuturaMama]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Socio
Clave=CDIPermisoFuturaMama
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPermisoFuturaMama
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


CondicionEdicion=CDIPermisoFuturaMama:CDIPermisoFuturaMama.Estatus =<T>SINAFECTAR<T>
[CDIPermisoFuturaMama.CDIPermisoFuturaMama.FechaEmision]
Carpeta=CDIPermisoFuturaMama
Clave=CDIPermisoFuturaMama.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDIPermisoFuturaMama.CDIPermisoFuturaMama.FechaVigencia]
Carpeta=CDIPermisoFuturaMama
Clave=CDIPermisoFuturaMama.FechaVigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDIPermisoFuturaMama.Columnas]
cliente=64
FechaEmision=94
FechaVigencia=94


[CDIPermisoFuturaMama.CDIPermisoFuturaMama.Observaciones]
Carpeta=CDIPermisoFuturaMama
Clave=CDIPermisoFuturaMama.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50x5
ColorFondo=Blanco










[CDIPermisoFuturaMama.CDIPermisoFuturaMama.Socio]
Carpeta=CDIPermisoFuturaMama
Clave=CDIPermisoFuturaMama.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Foto]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Socio
Clave=Foto
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

Vista=CDIPermisoFuturaMama

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=(Lista)

[Foto.Imagen]
Carpeta=Foto
Clave=Imagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25x20
ColorFondo=Blanco

ConScroll=S
SinRecapitular=S








[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76


[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[Acciones.TarjetonEsta]
Nombre=TarjetonEsta
Boton=4
NombreDesplegar=Imprimir
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
Activo=S
Visible=S





GuardarAntes=S
Antes=S
DespuesGuardar=S
ClaveAccion=CDIPermisoFuturaMama
RefrescarDespues=S
AntesExpresiones=EjecutarSql(<T>xpCDIPermisoEstacio :nI, :tE<T>,CDIPermisoFuturaMama:CDIPermisoFuturaMama.Id, empresa)<BR>asigna(info.id,CDIPermisoFuturaMama:CDIPermisoFuturaMama.Id)
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
Vista=CDIPermisoFuturaMama
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
IconosSubTitulo=Folio


OtroOrden=S
ListaOrden=CDIPermisoFuturaMama.Folio<TAB>(Decendente)
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
PestanaOtroNombre=S
PestanaNombre=Permisos
MostrarConteoRegistros=S
IconosNombre=CDIPermisoFuturaMama:CDIPermisoFuturaMama.Folio
[(Carpeta Abrir).Cte.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[(Carpeta Abrir).CDIPermisoFuturaMama.FechaVigencia]
Carpeta=(Carpeta Abrir)
Clave=CDIPermisoFuturaMama.FechaVigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[(Carpeta Abrir).Columnas]
0=76
1=70
2=337
3=-2





[Acciones.Documento Nuevo]
Nombre=Documento Nuevo
Boton=1
NombreDesplegar=Documento Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S



[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Documento Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S





[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S












[(Carpeta Abrir).CDIPermisoFuturaMama.Socio]
Carpeta=(Carpeta Abrir)
Clave=CDIPermisoFuturaMama.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco







[Foto.Cte.RutaImagen]
Carpeta=Foto
Clave=Cte.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco









[CDIPermisoFuturaMama.ListaEnCaptura]
(Inicio)=CDIPermisoFuturaMama.Socio
CDIPermisoFuturaMama.Socio=NombreC
NombreC=CDIPermisoFuturaMama.FechaEmision
CDIPermisoFuturaMama.FechaEmision=CDIPermisoFuturaMama.FechaVigencia
CDIPermisoFuturaMama.FechaVigencia=CDIPermisoFuturaMama.Observaciones
CDIPermisoFuturaMama.Observaciones=(Fin)

[CDIPermisoFuturaMama.NombreC]
Carpeta=CDIPermisoFuturaMama
Clave=NombreC
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[Foto.ListaEnCaptura]
(Inicio)=Imagen
Imagen=Cte.RutaImagen
Cte.RutaImagen=(Fin)





























































[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIPermisoFuturaMama.Socio
CDIPermisoFuturaMama.Socio=Cte.Nombre
Cte.Nombre=CDIPermisoFuturaMama.FechaVigencia
CDIPermisoFuturaMama.FechaVigencia=(Fin)









[Forma.ListaCarpetas]
(Inicio)=CDIPermisoFuturaMama
CDIPermisoFuturaMama=Foto
Foto=(Fin)

[Forma.ListaAcciones]
(Inicio)=Documento Nuevo
Documento Nuevo=Documento Abrir
Documento Abrir=Guardar Cambios
Guardar Cambios=TarjetonEsta
TarjetonEsta=Cerrar
Cerrar=(Fin)
