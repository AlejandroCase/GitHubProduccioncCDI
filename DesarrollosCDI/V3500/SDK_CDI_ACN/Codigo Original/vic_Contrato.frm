
[Forma]
Clave=vic_Contrato
Icono=4
Modulos=PACTO

ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=221
PosicionInicialArriba=180
PosicionInicialAlturaCliente=630
PosicionInicialAncho=837
Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Nombre=<T>Contrato<T>


MovModulo=PACTO




BarraAyuda=S
BarraAyudaBold=S
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
DialogoAbrir=S
AutoRefrescarControles=S
PosicionSec1=423
ListaAcciones=(Lista)
PosicionSec2=485
PosicionCol2=464
ExpresionesAlMostrar=Asigna(Info.MovID, Nulo)<BR>Asigna(Info.Importe, 0.0)<BR>Asigna(Info.EsNuevo, Falso)<BR>Asigna(Info.ID, 0)
ExpresionesAlCerrar=Asigna(Info.EsNuevo, Falso)
MenuPrincipal=(Lista)
[Contrato.Columnas]
Fianza=64

[Contrato2.Columnas]
FechaEmision=94
Concepto=304
Usuario=64



[Contrato2.ListaEnCaptura]
(Inicio)=Contrato.FechaEmision
Contrato.FechaEmision=Contrato.Concepto
Contrato.Concepto=Contrato.Usuario
Contrato.Usuario=(Fin)





















[Fianza]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Fianza
Clave=Fianza
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Contrato2
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=113
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

Detalle=S
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Contrato.ID
LlaveMaestra=Contrato.ID

CondicionVisible=vic_Contrato2:vic_Contrato.Fianza
[Fianza.vic_Contrato.FianzaOblig]
Carpeta=Fianza
Clave=vic_Contrato.FianzaOblig
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=22
[Fianza.vic_Contrato.FianzaCia]
Carpeta=Fianza
Clave=vic_Contrato.FianzaCia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[Fianza.vic_Contrato.FianzaFIni]
Carpeta=Fianza
Clave=vic_Contrato.FianzaFIni
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=22
[Fianza.vic_Contrato.FianzaFFin]
Carpeta=Fianza
Clave=vic_Contrato.FianzaFFin
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=22
[Fianza.vic_Contrato.FianzaImp]
Carpeta=Fianza
Clave=vic_Contrato.FianzaImp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=22
[Fianza.vic_Contrato.FianzaNota]
Carpeta=Fianza
Clave=vic_Contrato.FianzaNota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80x3
ColorFondo=Blanco











[Ficha]
Estilo=Ficha
Pestana=S
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S


PestanaOtroNombre=S
PermiteEditar=S
Vista=Vic_ContratoClaseCte
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
PestanaNombre=Contrato
ListaEnCaptura=(Lista)
ExpAlRefrescar=CampoAsignaVariable(vic_Condicion:vic_Condicion.FechaIni, Info.FechaContratoIni)<BR>CampoAsignaVariable(vic_Condicion:vic_Condicion.FechaFin, Info.FechaContratoFin)
ExpAntesRefrescar=Vic_ContratoClaseCte:Contrato.ClaseContrato = <T>PROVEEDOR<T>
[Generales]
Estilo=Ficha
Pestana=S
Clave=Generales
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S




PestanaOtroNombre=S
PestanaNombre=Generales
PermiteEditar=S
Vista=vic_Contrato2
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Detalle=S
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Contrato.ID
LlaveMaestra=Contrato.ID
ListaEnCaptura=(Lista)

[Fechas]
Estilo=Ficha
Pestana=S
Clave=Fechas
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S




PestanaOtroNombre=S
PestanaNombre=Fechas
Detalle=S
PermiteEditar=S
Vista=vic_Contrato2
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Contrato.ID
LlaveMaestra=Contrato.ID
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=(Lista)
[Fiador]
Estilo=Ficha
Pestana=S
Clave=Fiador
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco




PestanaOtroNombre=S
PestanaNombre=Fiador
Detalle=S
PermiteEditar=S
Vista=vic_Contrato2
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Contrato.ID
LlaveMaestra=Contrato.ID
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=(Lista)

CondicionVisible=vic_Contrato2:vic_Contrato.SiFiador
[FormaExtraValor]
Estilo=Hoja
Pestana=S
Clave=FormaExtraValor
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S




PestanaOtroNombre=S
PestanaNombre=Características
PermiteEditar=S
Vista=FormaExtraValor
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
Filtros=S
OtroOrden=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
ListaEnCaptura=(Lista)
ListaOrden=GrupoOrden<TAB>(Acendente)
HojaSinBorde=S
HojaFondoGris=S
FiltroGeneral=FormaExtraValor.FormaTipo IN<BR>(SELECT FormaTipo FROM dbo.fnVICFormaExtraContratos(<T>{vic_Contrato2:vic_Contrato.Categoria}<T>, <T>{vic_Contrato2:vic_Contrato.Grupo}<T>, <T>{vic_Contrato2:vic_Contrato.Familia}<T>))<BR>AND FormaExtraValor.Aplica=<T>Contratos<T> AND FormaExtraValor.AplicaClave=<T>{Vic_ContratoClaseCte:Contrato.ID}<T>
[Documento]
Estilo=Ficha
Pestana=S
Clave=Documento
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S


PermiteEditar=S
Vista=vic_Contrato
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
PestanaOtroNombre=S
PestanaNombre=Documento
ListaEnCaptura=Contrato.Documento
AlinearTodaCarpeta=S
[Comentarios]
Estilo=Ficha
Pestana=S
Clave=Comentarios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S




PermiteEditar=S
Vista=vic_Contrato
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
PestanaOtroNombre=S
PestanaNombre=Comentarios
ListaEnCaptura=Contrato.Comentarios
AlinearTodaCarpeta=S

[Ficha.Contrato.Mov]
Carpeta=Ficha
Clave=Contrato.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Ficha.Contrato.MovID]
Carpeta=Ficha
Clave=Contrato.MovID
Editar=S
3D=S
Pegado=N
Tamano=7
ColorFondo=Blanco




ValidaNombre=N
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=vic_ContratoA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Movimiento<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S



ListaEnCaptura=(Lista)
OtroOrden=S
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNombre=&Vencimiento
MenuLocal=S
ListaOrden=Contrato.ID<TAB>(Decendente)
FiltroEstatus=S
FiltroUsuarios=S
FiltroMovs=S
FiltroSucursales=S
FiltroListaEstatus=(Lista)
BusquedaRapida=S
BusquedaEnLinea=S
FiltroUsuarioDefault=(Usuario)
FiltroMovDefault=(Todos)
FiltroFechas=S
FiltroEstatusDefault=PENDIENTE
FiltroFechasDefault=(Todo)
FiltroFechasCancelacion=Contrato.FechaCancelacion
FiltroFechasCampo=Contrato.Hasta
PestanaOtroNombre=S
PestanaNombre=Movimientos
IconosConPaginas=S
BusquedaAncho=20
FiltroFechasVencimiento=S
ListaAcciones=(Lista)
FiltroMovsTodos=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosNombre=vic_ContratoA:Contrato.Mov+<T> <T>+vic_ContratoA:Contrato.MovID
FiltroGeneral=Contrato.ClaseContrato = {Comillas(Info.VicClaseContrato)}
[(Carpeta Abrir).Columnas]
0=106





















1=230
2=263
3=80
4=69
5=-2
6=117
[(Carpeta Abrir).Contrato.FechaEmision]
Carpeta=(Carpeta Abrir)
Clave=Contrato.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







[(Carpeta Abrir).Contrato.Desde]
Carpeta=(Carpeta Abrir)
Clave=Contrato.Desde
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).Contrato.Hasta]
Carpeta=(Carpeta Abrir)
Clave=Contrato.Hasta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
































[Ficha.Contrato.Proyecto]
Carpeta=Ficha
Clave=Contrato.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco




Pegado=N
[Ficha.Contrato.UEN]
Carpeta=Ficha
Clave=Contrato.UEN
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco






LineaNueva=N
ValidaNombre=N
[Ficha.Contrato.Moneda]
Carpeta=Ficha
Clave=Contrato.Moneda
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

ValidaNombre=N
OcultaNombre=N
LineaNueva=N
[Ficha.Contrato.TipoCambio]
Carpeta=Ficha
Clave=Contrato.TipoCambio
Editar=S
3D=S
Tamano=5
ColorFondo=Blanco







LineaNueva=N
ValidaNombre=N
[Ficha.Contrato.FechaEmision]
Carpeta=Ficha
Clave=Contrato.FechaEmision
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Ficha.Contrato.ContactoTipo]
Carpeta=Ficha
Clave=Contrato.ContactoTipo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22






ColorFondo=Blanco



[Acciones.AbrirPropiedades]
Nombre=AbrirPropiedades
Boton=0
NombreDesplegar=&Propiedades
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Antes=S
Visible=S









ActivoCondicion=ConDatos(ContratoA:Contrato.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.ID,vic_ContratoA:Contrato.ID)








[Acciones.AbrirLocalizar]
Nombre=AbrirLocalizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=Alt+F3
NombreDesplegar=&Localizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Localizar
Activo=S
Visible=S






[Acciones.AbrirLocalizarSig]
Nombre=AbrirLocalizarSig
Boton=0
UsaTeclaRapida=S
TeclaRapida=F3
NombreDesplegar=&Localizar Siguiente
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Localizar Siguiente
Activo=S
Visible=S






[Acciones.AbrirImprimir]
Nombre=AbrirImprimir
Boton=0
NombreDesplegar=&Impirmir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.PresentacionPrelim]
Nombre=PresentacionPrelim
Boton=0
NombreDesplegar=&Presentación Preliminar
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=&Enviar a Excel
EnMenu=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.MostrarCampos]
Nombre=MostrarCampos
Boton=0
NombreDesplegar=&Mostrar Campos
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

EspacioPrevio=S








[Comentarios.Contrato.Comentarios]
Carpeta=Comentarios
Clave=Contrato.Comentarios
Editar=S
LineaNueva=S
3D=S
Tamano=110X20
ColorFondo=Blanco









ConScroll=S
SinRecapitular=S
EditarConBloqueo=S
[Documento.Contrato.Documento]
Carpeta=Documento
Clave=Contrato.Documento
Editar=S
LineaNueva=S
3D=S
Tamano=110x20
ColorFondo=Blanco
ColorFuente=Negro








ConScroll=S
SinRecapitular=S
[FormaExtraValor.VerCampo]
Carpeta=FormaExtraValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco



EditarConBloqueo=N
[FormaExtraValor.Columnas]
VerCampo=360
VerValor=360
















[Generales.vic_Contrato.Inmueble]
Carpeta=Generales
Clave=vic_Contrato.Inmueble
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Generales.vic_Contrato.SIC]
Carpeta=Generales
Clave=vic_Contrato.SIC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco




EspacioPrevio=S
[Generales.vic_Contrato.SICextendido]
Carpeta=Generales
Clave=vic_Contrato.SICextendido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=84x2
ColorFondo=Blanco

[Generales.vic_Contrato.Familia]
Carpeta=Generales
Clave=vic_Contrato.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

EspacioPrevio=N
[Generales.vic_Contrato.Categoria]
Carpeta=Generales
Clave=vic_Contrato.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

EspacioPrevio=S
[Generales.vic_Contrato.Grupo]
Carpeta=Generales
Clave=vic_Contrato.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco






[Generales.vic_Contrato.Agrupador1]
Carpeta=Generales
Clave=vic_Contrato.Agrupador1
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Contrato.Agrupador2]
Carpeta=Generales
Clave=vic_Contrato.Agrupador2
Editar=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Generales.vic_Contrato.DirInternet]
Carpeta=Generales
Clave=vic_Contrato.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=42
ColorFondo=Blanco

EspacioPrevio=S
[Generales.vic_Contrato.DirInternet2]
Carpeta=Generales
Clave=vic_Contrato.DirInternet2
Editar=S
3D=S
Pegado=S
Tamano=42
ColorFondo=Blanco






[Generales.vic_Contrato.Contacto]
Carpeta=Generales
Clave=vic_Contrato.Contacto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=42
ColorFondo=Blanco

[Generales.vic_Contrato.Telefonos]
Carpeta=Generales
Clave=vic_Contrato.Telefonos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco

Pegado=S
[Generales.vic_Contrato.TelefonosLada]
Carpeta=Generales
Clave=vic_Contrato.TelefonosLada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[Generales.vic_Contrato.Fax]
Carpeta=Generales
Clave=vic_Contrato.Fax
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[Generales.vic_Contrato.Contacto2]
Carpeta=Generales
Clave=vic_Contrato.Contacto2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=42
ColorFondo=Blanco

[Generales.vic_Contrato.Telefonos2]
Carpeta=Generales
Clave=vic_Contrato.Telefonos2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco

Pegado=S
[Generales.vic_Contrato.TelefonosLada2]
Carpeta=Generales
Clave=vic_Contrato.TelefonosLada2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[Generales.vic_Contrato.Extencion2]
Carpeta=Generales
Clave=vic_Contrato.Extencion2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[Generales.vic_Contrato.Fax2]
Carpeta=Generales
Clave=vic_Contrato.Fax2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




Pegado=S
[Generales.vic_Contrato.eMail]
Carpeta=Generales
Clave=vic_Contrato.eMail
Editar=S
ValidaNombre=S
3D=S
Tamano=35
ColorFondo=Blanco

Pegado=S
[Generales.vic_Contrato.Extencion]
Carpeta=Generales
Clave=vic_Contrato.Extencion
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[Generales.vic_Contrato.eMail2]
Carpeta=Generales
Clave=vic_Contrato.eMail2
Editar=S
ValidaNombre=S
3D=S
Tamano=35
ColorFondo=Blanco




Pegado=S

[Lista.Columnas]
0=50
1=300










Estado=150
Delegacion=129
Colonia=189
CodigoPostal=71
Ruta=67

UEN=44
Nombre=293

Cliente=117
RFC=107
Familia=233
Grupo=100
Categoria=304
Agrupador1=304
Agrupador2=304
Dafrecuencia=304
2=-2
Tipoderenta=304
3=-2
Articulo=131
Descripcion1=244
Tipocondicion=304
Agrupador=304
Mov=200
TablaAnual=304
Pena=304
4=-2
5=-2
Empresa=71
Almacen=90
Sucursal=46
Concepto=218
[FirFechas.ListaEnCaptura]
(Inicio)=vic_Contrato.Direccion
vic_Contrato.Direccion=vic_Contrato.DireccionNumero
vic_Contrato.DireccionNumero=vic_Contrato.DireccionNumeroInt
vic_Contrato.DireccionNumeroInt=vic_Contrato.Colonia
vic_Contrato.Colonia=vic_Contrato.Población
vic_Contrato.Población=vic_Contrato.Delegacion
vic_Contrato.Delegacion=vic_Contrato.Estado
vic_Contrato.Estado=vic_Contrato.Pais
vic_Contrato.Pais=vic_Contrato.CodigoPostal
vic_Contrato.CodigoPostal=vic_Contrato.Plano
vic_Contrato.Plano=vic_Contrato.EntreCalles
vic_Contrato.EntreCalles=vic_Contrato.Observaciones
vic_Contrato.Observaciones=(Fin)















[FirFisica]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Dir. Física
Clave=FirFisica
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Contrato2
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Contrato.ID
LlaveMaestra=Contrato.ID
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


CondicionVisible=vic_Contrato2:vic_Contrato.DirFisica
[FirFisica.vic_Contrato.Direccion]
Carpeta=FirFisica
Clave=vic_Contrato.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[FirFisica.vic_Contrato.DireccionNumero]
Carpeta=FirFisica
Clave=vic_Contrato.DireccionNumero
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[FirFisica.vic_Contrato.DireccionNumeroInt]
Carpeta=FirFisica
Clave=vic_Contrato.DireccionNumeroInt
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[FirFisica.vic_Contrato.Colonia]
Carpeta=FirFisica
Clave=vic_Contrato.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FirFisica.vic_Contrato.Población]
Carpeta=FirFisica
Clave=vic_Contrato.Población
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FirFisica.vic_Contrato.Delegacion]
Carpeta=FirFisica
Clave=vic_Contrato.Delegacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FirFisica.vic_Contrato.Estado]
Carpeta=FirFisica
Clave=vic_Contrato.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FirFisica.vic_Contrato.Pais]
Carpeta=FirFisica
Clave=vic_Contrato.Pais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FirFisica.vic_Contrato.CodigoPostal]
Carpeta=FirFisica
Clave=vic_Contrato.CodigoPostal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FirFisica.vic_Contrato.Plano]
Carpeta=FirFisica
Clave=vic_Contrato.Plano
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[FirFisica.vic_Contrato.EntreCalles]
Carpeta=FirFisica
Clave=vic_Contrato.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80x2
ColorFondo=Blanco

[FirFisica.vic_Contrato.Observaciones]
Carpeta=FirFisica
Clave=vic_Contrato.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80x5
ColorFondo=Blanco













[Fechas.vic_Contrato.FechaMiembro]
Carpeta=Fechas
Clave=vic_Contrato.FechaMiembro
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Fechas.vic_Contrato.FechaEntrega]
Carpeta=Fechas
Clave=vic_Contrato.FechaEntrega
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Fechas.vic_Contrato.FechaBaja]
Carpeta=Fechas
Clave=vic_Contrato.FechaBaja
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Fechas.vic_Contrato.FechaMan]
Carpeta=Fechas
Clave=vic_Contrato.FechaMan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Fechas.vic_Contrato.FechaApertura]
Carpeta=Fechas
Clave=vic_Contrato.FechaApertura
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Fechas.vic_Contrato.FechaFirma]
Carpeta=Fechas
Clave=vic_Contrato.FechaFirma
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Fechas.vic_Contrato.FechaVencOp]
Carpeta=Fechas
Clave=vic_Contrato.FechaVencOp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

EspacioPrevio=S
[Fechas.vic_Contrato.FechaVencOb]
Carpeta=Fechas
Clave=vic_Contrato.FechaVencOb
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco



[Fiador.vic_Contrato.Fiador]
Carpeta=Fiador
Clave=vic_Contrato.Fiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=39
ColorFondo=Blanco

[Fiador.vic_Contrato.FiadorRFC]
Carpeta=Fiador
Clave=vic_Contrato.FiadorRFC
Editar=S
ValidaNombre=S
3D=S
Tamano=21
ColorFondo=Blanco

[Fiador.vic_Contrato.DireccionFiador]
Carpeta=Fiador
Clave=vic_Contrato.DireccionFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Fiador.vic_Contrato.DireccionNumeroFiador]
Carpeta=Fiador
Clave=vic_Contrato.DireccionNumeroFiador
Editar=S
ValidaNombre=N
3D=S
Pegado=S
Tamano=10
ColorFondo=Blanco

[Fiador.vic_Contrato.DireccionNumeroIntFiador]
Carpeta=Fiador
Clave=vic_Contrato.DireccionNumeroIntFiador
Editar=S
ValidaNombre=N
3D=S
Pegado=S
Tamano=10
ColorFondo=Blanco

[Fiador.vic_Contrato.ColoniaFiador]
Carpeta=Fiador
Clave=vic_Contrato.ColoniaFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Fiador.vic_Contrato.PoblaciónFiador]
Carpeta=Fiador
Clave=vic_Contrato.PoblaciónFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Fiador.vic_Contrato.DelegacionFiador]
Carpeta=Fiador
Clave=vic_Contrato.DelegacionFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Fiador.vic_Contrato.EstadoFiador]
Carpeta=Fiador
Clave=vic_Contrato.EstadoFiador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Fiador.vic_Contrato.PaisFiador]
Carpeta=Fiador
Clave=vic_Contrato.PaisFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Fiador.vic_Contrato.CodigoPostalFiador]
Carpeta=Fiador
Clave=vic_Contrato.CodigoPostalFiador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Fiador.vic_Contrato.PlanoFiador]
Carpeta=Fiador
Clave=vic_Contrato.PlanoFiador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Fiador.vic_Contrato.EntreCallesFiador]
Carpeta=Fiador
Clave=vic_Contrato.EntreCallesFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco

[Fiador.vic_Contrato.ObservacionesFiador]
Carpeta=Fiador
Clave=vic_Contrato.ObservacionesFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80x2
ColorFondo=Blanco

[Fiador.vic_Contrato.TelefonosLadaFiador]
Carpeta=Fiador
Clave=vic_Contrato.TelefonosLadaFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[Fiador.vic_Contrato.TelefonosFiador]
Carpeta=Fiador
Clave=vic_Contrato.TelefonosFiador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[Fiador.vic_Contrato.ExtencionFiador]
Carpeta=Fiador
Clave=vic_Contrato.ExtencionFiador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[Fiador.vic_Contrato.FaxFiador]
Carpeta=Fiador
Clave=vic_Contrato.FaxFiador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco










Pegado=S






[Fiador.vic_Contrato.FiadorGarantia]
Carpeta=Fiador
Clave=vic_Contrato.FiadorGarantia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80x3
ColorFondo=Blanco
















[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+N
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S







[Acciones.MovCopiar]
Nombre=MovCopiar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Shift+F11
NombreDesplegar=&Copiar
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
















Expresion=CopiarMovimiento(<T>PACTO<T>, Vic_ContratoClaseCte:Contrato.ID, <T>vic_Contrato<T>)
[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S







[Acciones.Localizar]
Nombre=Localizar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Shift+F3
NombreDesplegar=L&ocalizar...
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Localizar
Activo=S
Visible=S













[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
ConCondicion=S
Visible=S







Antes=S
EjecucionCondicion=Si(General.MovConcurrente y ConDatos(Vic_ContratoClaseCte:Contrato.ID) y (Vic_ContratoClaseCte:Contrato.UltimoCambio<>SQL(<T>spMovInfoVerUltimoCambio :nID, :tModulo<T>, Vic_ContratoClaseCte:Contrato.ID, <T>PACTO<T>)), Dialogo(<T>MovConcurrente<T>) AbortarOperacion)<BR>Verdadero
[Acciones.MovPersonal]
Nombre=MovPersonal
Boton=0
Menu=&Archivo
NombreDesplegar=P&ersonal Involucrado
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=MovPersonal
Activo=S
Visible=S




Antes=S









GuardarAntes=S
DespuesGuardar=S
AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Mov, Vic_ContratoClaseCte:Contrato.Mov)<BR>Asigna(Info.MovID, Vic_ContratoClaseCte:Contrato.MovID)<BR>Asigna(Info.Fecha, Vic_ContratoClaseCte:Contrato.FechaEmision)<BR>Asigna(Info.Estatus, Vic_ContratoClaseCte:Contrato.Estatus)
[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=0
Menu=&Archivo
NombreDesplegar=&Evaluaciones
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S







Expresion=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.Mov, Vic_ContratoClaseCte:Contrato.Mov)<BR>Asigna(Info.Clave, <T>PACTO<T>+Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Nombre, Vic_ContratoClaseCte:Contrato.Mov+<T> <T>+Vic_ContratoClaseCte:Contrato.MovID)<BR>Asigna(Info.Aplica, <T>Movimientos<T>)<BR>Forma(Si(Vic_ContratoClaseCte:Contrato.Estatus en (EstatusConcluido, EstatusCancelado), <T>EvaluacionCalificacionInfo<T>, <T>EvaluacionCalificacion<T>))
[Acciones.Propiedades]
Nombre=Propiedades
Boton=0
Menu=&Archivo
NombreDesplegar=Propie&dades
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPropiedades
Visible=S




Antes=S









ActivoCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)
[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+P
NombreDesplegar=&Imprimir
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S














Expresion=ReporteImpresora(ReporteMovImpresora(<T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov, Vic_ContratoClaseCte:Contrato.Estatus), Vic_ContratoClaseCte:Contrato.ID)
ActivoCondicion=Usuario.ImprimirMovs
[Acciones.RepPantalla]
Nombre=RepPantalla
Boton=6
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F11
NombreDesplegar=&Presentación Preliminar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
















Expresion=ReportePantalla(ReporteMovPantalla(<T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov, Vic_ContratoClaseCte:Contrato.Estatus), Vic_ContratoClaseCte:Contrato.ID)
[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S











NombreDesplegar=&Plantillas Office
Expresion=Asigna(Info.Forma, <T>vic_contrato<T>)<BR>Asigna(Info.Nombre, <T>Contratos<T>)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Si<BR>   Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>    PlantillaOffice( Info.PlantillaID )<BR>Fin
[Acciones.FormasAnexas]
Nombre=FormasAnexas
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F10
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovFormaAnexo
Activo=S
Antes=S
Visible=S




NombreDesplegar=Formas Anexas









AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Mov, Vic_ContratoClaseCte:Contrato.Mov)
[Acciones.Verificar]
Nombre=Verificar
Boton=41
Menu=&Archivo
NombreDesplegar=&Verificar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S




ConCondicion=S












EspacioPrevio=S









GuardarAntes=S
RefrescarDespues=S
Expresion=Verificar(<T>PACTO<T>, Vic_ContratoClaseCte:Contrato.ID,Vic_ContratoClaseCte:Contrato.Mov,Vic_ContratoClaseCte:Contrato.MovID)
ActivoCondicion=Vic_ContratoClaseCte:Contrato.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)
EjecucionCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.Mov)
EjecucionMensaje=<T>El movimiento debe tener un valor<T>
EjecucionConError=S
[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
NombreDesplegar=&Cambiar Situación
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Visible=S










Antes=S









ActivoCondicion=(ConfigModulo(<T>PACTO<T>,<T>Situaciones<T>)=<T>Si<T>) y Usuario.ModificarSituacion y<BR>PuedeAvanzarSituacion(<T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov, Vic_ContratoClaseCte:Contrato.Estatus, FormaSituacion)
AntesExpresiones=Si(Vacio(Vic_ContratoClaseCte:Contrato.ID),GuardarCambios)
[Acciones.Sucursal]
Nombre=Sucursal
Boton=0
Menu=&Archivo
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Sucursal Destino




UsaTeclaRapida=S
TeclaRapida=Ctrl+U
NombreDesplegar=<T>Sucursal<T>
























Antes=S









ActivoCondicion=Usuario.ModificarSucursalDestino y (Vic_ContratoClaseCte:Contrato.Estatus=EstatusSinAfectar) y (no FormaBloqueada)
AntesExpresiones=Si(Vacio(Vic_ContratoClaseCte:Contrato.ID),GuardarCambios)
VisibleCondicion=Usuario.ModificarSucursalDestino
[Acciones.Afectar]
Nombre=Afectar
Boton=7
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F12
NombreDesplegar=&Afectar
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Visible=S




ConCondicion=S












Antes=S






GuardarAntes=S
RefrescarDespues=S
DespuesGuardar=S















Expresion=Asigna(Afectar.Modulo, <T>PACTO<T>)<BR>Asigna(Afectar.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Afectar.Mov, Vic_ContratoClaseCte:Contrato.Mov)<BR>Asigna(Afectar.MovID, Vic_ContratoClaseCte:Contrato.MovID)<BR>Asigna(Afectar.GenerarMov, Nulo)<BR>Asigna(Afectar.FormaCaptura, Vic_ContratoClaseCte:Contrato.Mov)<BR>Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.Mov, Vic_ContratoClaseCte:Contrato.Mov)<BR>Asigna(Info.MovGenerar, Nulo)                      <BR>Asigna(Info.Estatus, SQL(<T>SELECT Estatus FROM Contrato WHERE ID=:nID<T>, Vic_ContratoClaseCte:Contrato.ID))<BR><BR>Si<BR> Info.Estatus en (EstatusPendiente, EstatusVigente, EstatusVencido, EstatusConcluido)<BR>Entonces<BR>  /*                                       <BR>  Si<BR>    Precaucion(<T>¿ Esta Seguro que Desea Reestructurar el Movimiento <T>+Afectar.Mov+<T> <T>+Afectar.MovID+<T> ?<T>, BotonSi, BotonNo)=BotonSi<BR>  Entonces<BR>    Generar(<T>PACTO<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.Mov, Afectar.FormaCaptura)<BR>    Generar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>,<T>Contrato<T>,Afectar.FormaCaptura)<BR>  Fin<BR>  */<BR>  Dialogo(<T>GenerarContrato2<T>)<BR>Sino<BR>  /*<BR>  Si Info.Estatus en (EstatusVigente, EstatusConcluido) Entonces<BR>    Si Confirmacion(<T>Desea Renovar Contrato<T>, BotonSi, BotonNo) = BotonSi Entonces<BR>      //ProcesarSQL(<T>EXEC spMovCopiar :nSucursal, :tModulo, :nID, :tUsuario, :tFechaTrabajo, @Sub = 1, @GenerarMov = :tGenerarMov<T>,<BR>      //            Vic_ContratoClaseCte:Contrato.Sucursal, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.ID, Usuario, FechaTrabajo, <T>Renovacion<T>)<BR>      Asigna(Afectar.GenerarMov, Vic_ContratoClaseCte:Contrato.Mov)<BR>      Generar(<T>PACTO<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov, Afectar.FormaCaptura)<BR><BR>    Fin<BR>  Fin<BR>  */<BR>  Si<BR>    Info.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)<BR>  Entonces<BR>    //ContratoRecalcular(Vic_ContratoClaseCte:Contrato.ID)<BR>    Afectar(<T>PACTO<T>, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, Afectar.GenerarMov, Afectar.FormaCaptura)<BR>  Fin<BR>Fin
ActivoCondicion=PuedeAfectar(Usuario.Afectar, Usuario.AfectarOtrosMovs, Vic_ContratoClaseCte:Contrato.Usuario) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador, EstatusPendiente, EstatusVigente, EstatusVencido, EstatusConcluido)) y<BR>PuedeAvanzarEstatus(<T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov, Vic_ContratoClaseCte:Contrato.Estatus, FormaSituacion)
EjecucionCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.Mov)
AntesExpresiones=Si<BR>  General.CamposExtras=<T>Campos Extras<T> y (Vic_ContratoClaseCte:Contrato.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)) y SQL(<T>SELECT CEAntesAfectar FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMov AND CE=1<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov)<BR>Entonces<BR>  Si(no CamposExtrasMovimiento(<T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov, Vic_ContratoClaseCte:Contrato.ID, Verdadero, Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)), AbortarOperacion)<BR>FIn
[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=&Eliminar
EnBarraHerramientas=S
EnMenu=S
Visible=S




EspacioPrevio=S









RefrescarDespues=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
ActivoCondicion=(Vic_ContratoClaseCte:Contrato.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusVigente, EstatusCancelado)) y PuedeAfectar(Verdadero, Usuario.ModificarOtrosMovs, Vic_ContratoClaseCte:Contrato.Usuario)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=33
Menu=&Archivo
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S










Antes=S









GuardarAntes=S
RefrescarDespues=S
ConfirmarAntes=S
DialogoMensaje=MovCancelar









Expresion=Cancelar(<T>PACTO<T>, Vic_ContratoClaseCte:Contrato.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>PACTO<T>)
ActivoCondicion=PuedeAfectar(Usuario.Cancelar, Usuario.CancelarOtrosMovs, Vic_ContratoClaseCte:Contrato.Usuario) y ConDatos(Vic_ContratoClaseCte:Contrato.ID) y ConDatos(Vic_ContratoClaseCte:Contrato.MovID) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus en (EstatusSincro, EstatusPendiente, EstatusVigente))
AntesExpresiones=Asigna(Afectar.Mov, Vic_ContratoClaseCte:Contrato.Mov )<BR>Asigna(Afectar.MovID, Vic_ContratoClaseCte:Contrato.MovID )
[Acciones.Consecutivo]
Nombre=Consecutivo
Boton=0
Menu=&Archivo
NombreDesplegar=A&signar Consecutivo
EnMenu=S
TipoAccion=Expresion


























GuardarAntes=S
RefrescarDespues=S
Expresion=ProcesarSQL(<T>spAfectar :tModulo, :nID, :tAccion<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.ID, <T>CONSECUTIVO<T>)
ActivoCondicion=Vacio(Vic_ContratoClaseCte:Contrato.MovID)
VisibleCondicion=Vic_ContratoClaseCte:Contrato.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)
[Generales.vic_Contrato.DirFisica]
Carpeta=Generales
Clave=vic_Contrato.DirFisica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







[Fiador.vic_Contrato.ContactoFiador]
Carpeta=Fiador
Clave=vic_Contrato.ContactoFiador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco






[Acciones.CamposExtras]
Nombre=CamposExtras
Boton=0
Menu=&Edición
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S










UsaTeclaRapida=S
TeclaRapida=Ctrl+1









NombreDesplegar=General.CamposExtras+<T>...<T>






GuardarAntes=S
RefrescarDespues=S













Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasMovimiento(<T>Contratos<T>, Vic_ContratoClaseCte:Contrato.Mov, Vic_ContratoClaseCte:Contrato.ID, Falso, Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))<BR>Sino<BR>  Asigna(Info.Aplica, <T>Contratos<T>)<BR>  Asigna(Info.Clave, Vic_ContratoClaseCte:Contrato.ID)<BR>  Asigna(Info.Nombre, Vic_ContratoClaseCte:Contrato.Mov+<T> <T>+ Vic_ContratoClaseCte:Contrato.MovID)<BR>  Asigna(Info.Modulo, <T>PACTO<T>)<BR>  Asigna(Info.Mov, Vic_ContratoClaseCte:Contrato.Mov)<BR>  Asigna(Info.Categoria, vic_Contrato2:vic_Contrato.Categoria)<BR>  Asigna(Info.Grupo, vic_Contrato2:vic_Contrato.Grupo)<BR>  Asigna(Info.Familia, vic_Contrato2:vic_Contrato.Familia)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)                                                  <BR>  Asigna(Info.SIC, Nulo)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si<BR>    ConDatos(Info.FormaTipo)<BR>  Entonces<BR>    Si<BR>      Vic_ContratoClaseCte:Contrato.Estatus en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador, EstatusVigente)<BR>    Entonces<BR>      iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Sino                <BR>      iConsulta(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre)<BR>    Fin<BR>  Sino<BR>    Informacion(<T>No Tiene Definida Ninguna Forma<T>)<BR>  Fin<BR>Fin
[Acciones.Tarea]
Nombre=Tarea
Boton=70
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
NombreDesplegar=&Tareas
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
Antes=S
Visible=S










Multiple=S
ListaAccionesMultiples=(Lista)
GuardarAntes=S
ActivoCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.ID)
AntesExpresiones=Asigna(Info.Aplica, <T>Contratos<T>)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)
[Acciones.Anexos]
Nombre=Anexos
Boton=77
NombreDesplegar=&Anexos
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=AnexoMov
Activo=S
Antes=S
Visible=S




Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F4
GuardarAntes=S






DespuesGuardar=S









AntesExpresiones=Asigna(Info.Rama, <T>PACTO<T>)<BR>Asigna(Info.Fecha, Vic_ContratoClaseCte:Contrato.FechaEmision)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Usuario.ModificarAnexosMovConcluidos o (Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado, EstatusConcluido))))<BR>Asigna(Info.Descripcion, Vic_ContratoClaseCte:Contrato.Mov+<T> <T> +Vic_ContratoClaseCte:Contrato.MovID)
[Acciones.AnexosDetalle]
Nombre=AnexosDetalle
Boton=0
Menu=&Edición
NombreDesplegar=Anexos &Detalle
EnMenu=S
TipoAccion=Formas
ClaveAccion=AnexoMovD
Activo=S
Visible=S




UsaTeclaRapida=S
TeclaRapida=Ctrl+F4
ConCondicion=S
EjecucionConError=S












Antes=S









EjecucionCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.ID) y ConDatos(vic_ContratoD:ContratoD.Actividad)
EjecucionMensaje=Si(Vacio(Vic_ContratoClaseCte:Contrato.ID), <T>Es Necesario Guardar el Movimiento Antes de Ejecutar<T>)
AntesExpresiones=Asigna(Info.Rama, <T>PACTO<T>)<BR>Asigna(Info.Fecha, Vic_ContratoClaseCte:Contrato.FechaEmision)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.AnexoCfg, (no FormaBloqueada) y (Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado, EstatusConcluido)))<BR>Asigna(Info.Cuenta, ContratoD:ContratoD.Actividad)<BR>Asigna(Info.Descripcion, ContratoD:ContratoD.Asunto)
[Acciones.Contactos]
Nombre=Contactos
Boton=74
Menu=&Edición
NombreDesplegar=&Contactos
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovCto
Activo=S
Visible=S










GuardarAntes=S
Antes=S



























AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Mov, Vic_ContratoClaseCte:Contrato.Mov)<BR>Asigna(Info.MovID, Vic_ContratoClaseCte:Contrato.MovID)
[Acciones.Fuente]
Nombre=Fuente
Boton=0
Menu=Forma&to
UsaTeclaRapida=S
TeclaRapida=Ctrl+F
NombreDesplegar=&Fuente...
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S







Expresion=Forma.RTF.Fuente(<T>Documento<T>, <T>Contrato.Documento<T>)
[Acciones.AlinearIzquierda]
Nombre=AlinearIzquierda
Boton=0
Menu=Forma&to
NombreDesplegar=Alinear a la &Izquierda
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S




EspacioPrevio=S









Expresion=Forma.RTF.AlinearIzquierda(<T>Documento<T>, <T>Contrato.Documento<T>)
[Acciones.Centrar]
Nombre=Centrar
Boton=0
Menu=Forma&to
NombreDesplegar=&Centrar
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S










Expresion=Forma.RTF.Centrar(<T>Documento<T>, <T>Contrato.Documento<T>)
[Acciones.AlinearDerecha]
Nombre=AlinearDerecha
Boton=0
Menu=Forma&to
NombreDesplegar=Alinear a la &Derecha
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
















Expresion=Forma.RTF.AlinearDerecha(<T>Documento<T>, <T>Contrato.Documento<T>)
[Acciones.ConViñetas]
Nombre=ConViñetas
Boton=0
Menu=Forma&to
NombreDesplegar=Con Viñetas
EnMenu=S
EspacioPrevio=S
Activo=S
Visible=S




TipoAccion=Expresion
Expresion=Forma.RTF.ConVinetas(<T>Documento<T>, <T>Contrato.Documento<T>)
[Acciones.SinViñetas]
Nombre=SinViñetas
Boton=0
Menu=Forma&to
NombreDesplegar=Sin Viñetas
EnMenu=S
Activo=S
Visible=S










TipoAccion=Expresion









Expresion=Forma.RTF.SinVinetas(<T>Documento<T>, <T>Contrato.Documento<T>)
[Acciones.Anterior]
Nombre=Anterior
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+,
NombreDesplegar=Anterior
EnMenu=S
TipoAccion=Controles Captura
Activo=S
Visible=S




ClaveAccion=Documento Anterior






[Acciones.Siguiente]
Nombre=Siguiente
Boton=0
Menu=&Ver
UsaTeclaRapida=S
NombreDesplegar=Siguiente
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Siguiente
Activo=S
Visible=S




TeclaRapida=Ctrl+.









[Acciones.Tiempo]
Nombre=Tiempo
Boton=0
Menu=&Ver
NombreDesplegar=&Tiempo
EnMenu=S
TipoAccion=Formas
Visible=S




EspacioPrevio=S
ClaveAccion=VerMovTiempo









ConCondicion=S












Antes=S















ActivoCondicion=ConfigModulo(<T>PACTO<T>,<T>Tiempos<T>)=<T>Si<T>
EjecucionCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.ID)
AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Mov, Vic_ContratoClaseCte:Contrato.Mov)<BR>Asigna(Info.MovID, Vic_ContratoClaseCte:Contrato.MovID)
[Acciones.Politica]
Nombre=Politica
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Shift+Ctrl+O
NombreDesplegar=P&olítica Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=PoliticaInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S

EjecucionCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.Mov)
AntesExpresiones=Asigna(Info.Rama, <T>PACTO<T>)<BR>Asigna(Info.Clave, Vic_ContratoClaseCte:Contrato.Mov)



[Acciones.PoliticaConcepto]
Nombre=PoliticaConcepto
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Shift+Ctrl+N
NombreDesplegar=Política Co&ncepto
EnMenu=S
TipoAccion=Formas
ClaveAccion=ConceptoPoliticaInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S

EjecucionCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.Concepto)
AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.Concepto, Vic_ContratoClaseCte:Contrato.Concepto)











[Acciones.Politica2]
Nombre=Politica2
Boton=0
Menu=&Ver
NombreDesplegar=&Política
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=PoliticaInfo
Activo=S
Visible=S







ConCondicion=S






Antes=S









UsaTeclaRapida=S
TeclaRapida=Shift+Ctrl+O
GuardarAntes=S
EjecucionCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.Mov)
AntesExpresiones=Asigna(Info.Rama, <T>PACTO<T>)<BR>Asigna(Info.Clave, Vic_ContratoClaseCte:Contrato.Mov)
[Acciones.PoliticaConcepto2]
Nombre=PoliticaConcepto2
Boton=0
Menu=&Ver
NombreDesplegar=Política Co&ncepto
EnMenu=S
TipoAccion=Formas
ClaveAccion=ConceptoPoliticaInfo
Activo=S
Visible=S




ConCondicion=S






Antes=S









UsaTeclaRapida=S
TeclaRapida=Shift+Ctrl+N
GuardarAntes=S
EjecucionCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.Concepto)
AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.Concepto, Vic_ContratoClaseCte:Contrato.Concepto)
[Acciones.MovPos]
Nombre=MovPos
Boton=0
Menu=&Ver
NombreDesplegar=&Posición del Movimiento
EnMenu=S
TipoAccion=Formas
ClaveAccion=MovPos
Visible=S










Antes=S









ActivoCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.MovID)
AntesExpresiones=Asigna(Info.Modulo, <T>PACTO<T>)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Mov, Vic_ContratoClaseCte:Contrato.Mov)<BR>Asigna(Info.MovID, Vic_ContratoClaseCte:Contrato.MovID)
[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=&Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S







[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
EnMenu=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S







[Acciones.vic_ContratoFam]
Nombre=vic_ContratoFam
Boton=0
Menu=&Maestros
NombreDesplegar=&Familias
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoFam
Activo=S
Visible=S




[Acciones.vic_ContratoGrp]
Nombre=vic_ContratoGrp
Boton=0
Menu=&Maestros
NombreDesplegar=&Grupos
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoGrp
Activo=S
Visible=S




[Acciones.vic_ContratoCat]
Nombre=vic_ContratoCat
Boton=0
Menu=&Maestros
NombreDesplegar=&Categorías
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoCat
Activo=S
Visible=S







[Acciones.vic_ContratoAg1]
Nombre=vic_ContratoAg1
Boton=0
Menu=&Maestros
NombreDesplegar=&Agrupador 1
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoAg1
Activo=S
Visible=S




[Acciones.vic_ContratoAg2]
Nombre=vic_ContratoAg2
Boton=0
Menu=&Maestros
NombreDesplegar=&Agrupador 2
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoAg2
Activo=S
Visible=S







[Acciones.vic_ContratoTir]
Nombre=vic_ContratoTir
Boton=0
Menu=&Maestros
NombreDesplegar=&Tipo de Renta
TipoAccion=Formas
ClaveAccion=vic_ContratoTir
Activo=S
Visible=S







[Cliente.Contrato.Cliente]
Carpeta=Cliente
Clave=Contrato.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco
ColorFuente=Negro

[Cliente.Cte.Nombre]
Carpeta=Cliente
Clave=Cte.Nombre
Editar=S
3D=S
Pegado=S
Tamano=70
ColorFondo=Plata
ColorFuente=Negro




[Prospecto.Contrato.Prospecto]
Carpeta=Prospecto
Clave=Contrato.Prospecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Prospecto.Prospecto.Nombre]
Carpeta=Prospecto
Clave=Prospecto.Nombre
Editar=S
3D=S
Pegado=S
Tamano=70
ColorFondo=Plata





[Proveedor.Contrato.Proveedor]
Carpeta=Proveedor
Clave=Contrato.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Proveedor.Prov.Nombre]
Carpeta=Proveedor
Clave=Prov.Nombre
Editar=S
3D=S
Pegado=S
Tamano=70
ColorFondo=Plata





[Agente.Contrato.Agente]
Carpeta=Agente
Clave=Contrato.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Agente.Agente.Nombre]
Carpeta=Agente
Clave=Agente.Nombre
Editar=S
3D=S
Pegado=S
Tamano=70
ColorFondo=Plata





[Personal.Contrato.Personal]
Carpeta=Personal
Clave=Contrato.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco







[Personal.PersonalNombre]
Carpeta=Personal
Clave=PersonalNombre
Editar=S
ValidaNombre=N
3D=S
Pegado=S
Tamano=100
ColorFondo=Plata










[Acciones.MapaContratoSelec]
Nombre=MapaContratoSelec
Boton=0
NombreDesplegar=&Ver mapa Contrato (Selección)
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>Contrato.ID<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>Contrato<T>)<BR>PlugIn(<T>Mapa<T>, <T>Contrato<T>, <T>Posicionar<T>)
[Acciones.MapaContratoTodos]
Nombre=MapaContratoTodos
Boton=0
NombreDesplegar=&Ver mapa Contrato (Todos)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>Contrato.ID<T>)<BR>Mapa.AgregarListaSt(<T>Contrato<T>)<BR>PlugIn(<T>Mapa<T>, <T>Contrato<T>, <T>Posicionar<T>)
[Acciones.MapaFiadorSelec]
Nombre=MapaFiadorSelec
Boton=0
NombreDesplegar=&Ver mapa Fiador (Selección)
EnMenu=S
TipoAccion=Expresion
Visible=S

Activo=S
EspacioPrevio=S
Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>Contrato.ID<T>, Verdadero)<BR>Mapa.AgregarListaSt(<T>Fiador<T>)<BR>PlugIn(<T>Mapa<T>, <T>Fiador<T>, <T>Posicionar<T>)
[Acciones.MapaFiadorTodos]
Nombre=MapaFiadorTodos
Boton=0
NombreDesplegar=&Ver mapa Fiador (Todos)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

























Expresion=Mapa.Borrar<BR>RegistrarListaSt(<T>(Carpeta Abrir)<T>, <T>Contrato.ID<T>)<BR>Mapa.AgregarListaSt(<T>Fiador<T>)<BR>PlugIn(<T>Mapa<T>, <T>Fiador<T>, <T>Posicionar<T>)









[Acciones.Mapa]
Nombre=Mapa
Boton=105
Menu=&Ver
NombreDesplegar=&Ver mapa Dir. Fisica
TipoAccion=Expresion
Visible=S




GuardarAntes=S
EspacioPrevio=S
Expresion=Mapa.Borrar<BR>Mapa.Agregar(<T>Contrato<T>, vic_Contrato2:vic_Contrato.ID)<BR>PlugIn(<T>Mapa<T>, <T>Contrato<T>, <T>Posicionar<T>)
ActivoCondicion=ConDatos(vic_Contrato2:vic_Contrato.CodigoPostal)
[Acciones.MapaFiador]
Nombre=MapaFiador
Boton=38
Menu=&Ver
NombreDesplegar=&Ver mapa Fiador
GuardarAntes=S
TipoAccion=Expresion
Visible=S


























































Expresion=Mapa.Borrar<BR>Mapa.Agregar(<T>Fiador<T>, vic_Contrato2:vic_Contrato.ID)<BR>PlugIn(<T>Mapa<T>, <T>Fiador<T>, <T>Posicionar<T>)
ActivoCondicion=ConDatos(vic_Contrato2:vic_Contrato.CodigoPostalFiador)
[Condiciones]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Condiciones
Clave=Condiciones
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Condicion
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco






















ListaEnCaptura=(Lista)
MenuLocal=S
ListaAcciones=(Lista)
Detalle=S
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Condicion.IDContrato
LlaveMaestra=Contrato.ID
OtroOrden=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Condición<T>
ElementosPorPagina=200
ListaOrden=vic_Condicion.ID<TAB>(Acendente)

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosNombre=<T>Condición <T> + vic_Condicion:vic_Condicion.ID
FiltroGeneral=vic_Condicion.IDContrato IS NOT NULL
CondicionVisible=SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) noen (<T>VIC.O<T>)
[Condiciones.Columnas]
Condicion=93

Concepto=247
Agrupador=131
TipoCondicion=140
ID=37
Importe=95

Estatus=109
Frecuencia=94
Articulo=124

0=96
1=87
2=78
3=162
4=149
5=143
6=57
7=75
8=76
9=-2
10=-2
11=-2
12=-2
13=-2
14=-2
15=-2
[Condiciones.vic_Condicion.Concepto]
Carpeta=Condiciones
Clave=vic_Condicion.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco

[Condiciones.vic_Condicion.Agrupador]
Carpeta=Condiciones
Clave=vic_Condicion.Agrupador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco

[Condiciones.vic_Condicion.TipoCondicion]
Carpeta=Condiciones
Clave=vic_Condicion.TipoCondicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Condiciones.vic_Condicion.Importe]
Carpeta=Condiciones
Clave=vic_Condicion.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CondicionesDet.Columnas]
0=91
1=137
2=132
3=118
4=132













Agrupador=94
TipoCondicion=304
Importe=64
[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=
Totalizadores2=
Totalizadores3=
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S


[Acciones.Condiciones]
Nombre=Condiciones
Boton=56
NombreDesplegar=&Agregar Condición
EnBarraHerramientas=S
Visible=S

NombreEnBoton=S










































Multiple=S
ListaAccionesMultiples=(Lista)



GuardarAntes=S
EspacioPrevio=S
ConCondicion=S
EjecucionConError=S
ActivoCondicion=ConDatos(vic_Contrato2:vic_Contrato.ID) y (ConDatos(Vic_ContratoClaseCte:Contrato.ID))<BR>y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMov<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) noen (<T>VIC.O<T>)))<BR><BR>//(Vic_ContratoClaseCte:Contrato.Estatus en (EstatusSinAfectar))
EjecucionCondicion=ConDatos(vic_Contrato2:vic_Contrato.Inmueble)
EjecucionMensaje=<T>El Inmueble debe tener valor<T>
[Acciones.Condiciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Condiciones.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=FormaPos(<T>vic_Condicion<T>, SQL(<T>vic_spCondicionAgregar :nID<T>, Vic_ContratoClaseCte:Contrato.ID))<BR>EjecutarSQL(<T>vic_spCondicionEliminar :nID<T>, Vic_ContratoClaseCte:Contrato.ID)
[Acciones.Condiciones.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S














[UsoServicio.Columnas]
Servicio=293
Fecha=94
Porcentaje=38
Evaluacion=87
Observaciones=189


















[Local.Columnas]
0=59
1=149
2=111














3=82
4=78
5=92
6=110
7=53
8=-2
9=-2
10=-2
[Acciones.Actualizar.ListaAccionesMultiples]
(Inicio)=Refrescar Controles
Refrescar Controles=Actualizar Vista
Actualizar Vista=(Fin)












[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Visible=S

EspacioPrevio=S








GuardarAntes=S
ActivoCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.ID)
[Acciones.ActualizarCondicion]
Nombre=ActualizarCondicion
Boton=0
NombreDesplegar=&Actualizar Condición
EnMenu=S
TipoAccion=Expresion
Visible=S




GuardarAntes=S




Multiple=S
ListaAccionesMultiples=(Lista)
ActivoCondicion=(ConDatos(vic_Condicion:vic_Condicion.ID)) y (Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
[Condiciones.vic_Condicion.Frecuencia]
Carpeta=Condiciones
Clave=vic_Condicion.Frecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

























[Acciones.MinutaContrato]
Nombre=MinutaContrato
Boton=0
Menu=&Edición
NombreDesplegar=&Minutas
EnMenu=S
Antes=S
Visible=S










EspacioPrevio=S









Multiple=S
ListaAccionesMultiples=(Lista)


GuardarAntes=S
ActivoCondicion=(ConDatos(Vic_ContratoClaseCte:Contrato.ID)) y (ConDatos(vic_Contrato2:vic_Contrato.ID)) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
AntesExpresiones=Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Descripcion, Vic_ContratoClaseCte:Contrato.Titulo)
[Minutas]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Minutas
Clave=Minutas
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContMinuta
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_ContMinuta.IDContrato
LlaveMaestra=Contrato.ID
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

OtroOrden=S
MenuLocal=S
PermiteLocalizar=S
ListaOrden=vic_ContMinuta.ID<TAB>(Acendente)
ListaAcciones=(Lista)
ValidarCampos=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Minuta<T>
ElementosPorPagina=200

IconosNombre=<T>Minuta <T> + vic_ContMinuta:vic_ContMinuta.ID
[Minutas.vic_ContMinuta.Fecha]
Carpeta=Minutas
Clave=vic_ContMinuta.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Minutas.vic_ContMinuta.Texto]
Carpeta=Minutas
Clave=vic_ContMinuta.Texto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco




[Minutas.Columnas]
ID=56
Fecha=168
Titulo=279
Texto=519








0=156
1=183
2=129
3=-2
[Acciones.ActualizarMinuta]
Nombre=ActualizarMinuta
Boton=0
NombreDesplegar=&Acutualizar la Minuta
EnMenu=S
TipoAccion=Expresion
Visible=S

Antes=S

Expresion=FormaPos(<T>vic_ContMinuta<T>, vic_ContMinuta:vic_ContMinuta.ID)
ActivoCondicion=ConDatos(vic_ContMinuta:vic_ContMinuta.ID)
AntesExpresiones=Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Descripcion, Vic_ContratoClaseCte:Contrato.Titulo)




[Acciones.MinutaContrato.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Formas
Activo=S
Visible=S

ClaveAccion=vic_ContMinuta
[Acciones.MinutaContrato.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S






[Condiciones.vic_Condicion.Estatus]
Carpeta=Condiciones
Clave=vic_Condicion.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco






[CondicionesDet]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Condiciones Contractuales
Clave=CondicionesDet
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=vic_ContratoCondiciones
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=IDContrato
LlaveMaestra=Contrato.ID
CampoColorLetras=Negro
CampoColorFondo=Blanco

IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
IconosSubTitulo=<T>Moneda<T>

ListaEnCaptura=(Lista)



OtroOrden=S
PermiteLocalizar=S

ListaOrden=(Lista)
MenuLocal=S
ListaAcciones=(Lista)

IconosNombre=vic_ContratoCondiciones:MonCot
CondicionVisible=SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) noen (<T>VIC.O<T>)
[CondicionesDet.Importe]
Carpeta=CondicionesDet
Clave=Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco














[Condiciones.ListaCamposAValidar]
(Inicio)=NombreArticulo
NombreArticulo=vic_Condicion.Empresa
vic_Condicion.Empresa=(Fin)

















































[Acciones.HistorialLocal]
Nombre=HistorialLocal
Boton=0
Menu=&Ver
NombreDesplegar=&Historial del Local
GuardarAntes=S
EnMenu=S
TipoAccion=Expresion

EspacioPrevio=S







































ActivoCondicion=(ConDatos(Vic_ContratoClaseCte:Contrato.ID)) y (ConDatos(vic_Contrato2:vic_Contrato.ID)) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
[Acciones.CapturaVenta]
Nombre=CapturaVenta
Boton=0
Menu=&Edición
NombreDesplegar=&Captura de Venta
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=vic_DatoRentaSVenta
Antes=S
Visible=S




















GuardarAntes=S
ActivoCondicion=(ConDatos(Vic_ContratoClaseCte:Contrato.ID)) y (ConDatos(vic_Contrato2:vic_Contrato.Inmueble)) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusSinAfectar, EstatusCancelado))
AntesExpresiones=Asigna(Info.Numero, Vic_ContratoClaseCte:Contrato.ID)



[Acciones.Consumos]
Nombre=Consumos
Boton=0
Menu=&Ver
NombreDesplegar=&Asignar Consumos
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoConsumos
Antes=S
Visible=S
















GuardarAntes=S
ActivoCondicion=(ConDatos(Vic_ContratoClaseCte:Contrato.ID)) y (ConDatos(vic_Contrato2:vic_Contrato.Inmueble)) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
AntesExpresiones=Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)<BR>Asigna(Info.Inmueble, vic_Contrato2:vic_Contrato.Inmueble)
[Acciones.vic_ContratoSolicitudes]
Nombre=vic_ContratoSolicitudes
Boton=0
Menu=&Maestros
NombreDesplegar=&Solicitudes
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoSolicitudes
Activo=S
Visible=S












[Solicitudes]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Solicitudes
Clave=Solicitudes
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGeneraSolicitudes
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S







Detalle=S
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_ContratoGeneraSolicitudes.IDContrato
LlaveMaestra=Contrato.ID
ListaEnCaptura=(Lista)
PermiteLocalizar=S
MenuLocal=S
ListaAcciones=(Lista)
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
[Acciones.SolicitudesContrato.vic_ContratoGeneraSolicitudes]
Nombre=vic_ContratoGeneraSolicitudes
Boton=0
TipoAccion=Formas
ClaveAccion=vic_ContratoGeneraSolicitudes
Activo=S
Visible=S

[Acciones.SolicitudesContrato.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.SolicitudesContrato]
Nombre=SolicitudesContrato
Boton=0
Menu=&Edición
NombreDesplegar=&Solicitudes
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Antes=S
Visible=S



GuardarAntes=S



ActivoCondicion=(ConDatos(Vic_ContratoClaseCte:Contrato.ID)) y (ConDatos(vic_Contrato2:vic_Contrato.ID)) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
AntesExpresiones=Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)
[Acciones.BajaContrato]
Nombre=BajaContrato
Boton=0
Menu=&Archivo
NombreDesplegar=&Baja de Contrato
EnMenu=S
TipoAccion=Formas
Antes=S
Visible=S




EspacioPrevio=S
Multiple=S
ListaAccionesMultiples=(Lista)
GuardarAntes=S

ActivoCondicion=(Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusSinAfectar, EstatusCancelado, EstatusSinAfectar, EstatusBaja))
AntesExpresiones=Asigna(Info.Descripcion, <T>Contrato<T>)<BR>Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)
[Acciones.BajaContrato.vic_ContratoMotivo]
Nombre=vic_ContratoMotivo
Boton=0
TipoAccion=Formas
ClaveAccion=vic_ContratoMotivo
Activo=S
Visible=S

[Acciones.BajaContrato.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[Acciones.BajaLocales.vic_ContratoMotivo]
Nombre=vic_ContratoMotivo
Boton=0
TipoAccion=Formas
ClaveAccion=vic_ContratoMotivo
Activo=S
Visible=S

[Acciones.BajaLocales.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S



[Solicitudes.Gestion.FechaEmision]
Carpeta=Solicitudes
Clave=Gestion.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Solicitudes.Columnas]
0=144
1=125
2=173
3=313




Mov=124
MovID=64
FechaEmision=124
Asunto=347
Estado=184
Avance=64

4=132
5=-2
Concepto=164
Estatus=94
[Solicitudes.ListaCamposAValidar]
(Inicio)=Gestion.Concepto
Gestion.Concepto=Gestion.Estatus
Gestion.Estatus=(Fin)



[Solicitudes.Gestion.Asunto]
Carpeta=Solicitudes
Clave=Gestion.Asunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco



[Solicitudes.Gestion.Concepto]
Carpeta=Solicitudes
Clave=Gestion.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco









[Solicitudes.Gestion.Estatus]
Carpeta=Solicitudes
Clave=Gestion.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco




[Agenda.Columnas]
Mov=106
MovID=65
Orden=35
Avance=55
EstatusNombre=84
Asunto=108
FechaA=80
Duracion=49
Espacio=64
Estado=69
Situacion=75

[Para.Columnas]
Usuario=96
Nombre=307
Participacion=78
Respuesta=147
FechaRegistro=113

[Recursos.Columnas]
Recurso=64
Nombre=163
Fecha=73
HoraD=57
HoraA=53
Cantidad=64
Costo=55
CostoTotal=68
Referencia=141

[Bitacora.Columnas]
0=85
1=85
2=-2
3=-2
4=-2
5=-2

[SubMovimientos.Columnas]
0=180
1=93
2=214
3=208

[Acciones.Expresion]
Nombre=Expresion
Boton=0
NombreDesplegar=&Consultar Solicitud
EnMenu=S
TipoAccion=Expresion
Visible=S






Expresion=FormaPos(<T>Gestion<T>, vic_ContratoGeneraSolicitudes:Gestion.ID)
ActivoCondicion=ConDatos(vic_ContratoGeneraSolicitudes:Gestion.ID)

[Acciones.EliminarMinuta]
Nombre=EliminarMinuta
Boton=0
NombreDesplegar=&Eliminar Minuta
EnMenu=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)





ActivoCondicion=ConDatos(vic_ContMinuta:vic_ContMinuta.ID)
[Acciones.EliminarMinuta.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Precaucion(<T>¿ Esta seguro que desea eliminar esta Minuta ? <T>+ NuevaLinea + NuevaLinea + <T>Minuta <T> + vic_ContMinuta:vic_ContMinuta.ID, BotonSi, BotonNo ) = BotonSi<BR>Entonces EjecutarSQL(<T>vic_spEliminaMinuta :nID<T>, vic_ContMinuta:vic_ContMinuta.ID)<BR>Sino<BR><T><T><BR>Fin
[Acciones.EliminarMinuta.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S



[Acciones.CONDImprimir]
Nombre=CONDImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Condiciones
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S
EspacioPrevio=S

[Acciones.CONDPresentacion]
Nombre=CONDPresentacion
Boton=0
NombreDesplegar=&Presentación Preliminar
EnMenu=S
Carpeta=Condiciones
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.CONDExcel]
Nombre=CONDExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Condiciones
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.CONDPersonalizar]
Nombre=CONDPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Condiciones
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Acciones.MINImprimir]
Nombre=MINImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Minutas
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

EspacioPrevio=S
[Acciones.MINPresentacion]
Nombre=MINPresentacion
Boton=0
NombreDesplegar=&Presentación Preliminar
EnMenu=S
Carpeta=Minutas
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.MINExcel]
Nombre=MINExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Minutas
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.MINPersonalizar]
Nombre=MINPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Minutas
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S








[Acciones.SOLImprimir]
Nombre=SOLImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=Solicitudes
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.SOLPresentacion]
Nombre=SOLPresentacion
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=Solicitudes
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.SOLExcel]
Nombre=SOLExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Solicitudes
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.SOLPersonalizar]
Nombre=SOLPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Solicitudes
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Acciones.AsignarPlantillaTareas.vic_PlantillaTareasAsigna]
Nombre=vic_PlantillaTareasAsigna
Boton=0
TipoAccion=Formas
ClaveAccion=vic_PlantillaTareasAsigna
Activo=S
Visible=S

[Acciones.AsignarPlantillaTareas.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[Acciones.AsignarPlantillaTareas.ListaAccionesMultiples]
(Inicio)=vic_PlantillaTareasAsigna
vic_PlantillaTareasAsigna=Actualizar Vista
Actualizar Vista=(Fin)










[Actividades]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Actividades
Clave=Actividades
Filtros=S
Detalle=S
MenuLocal=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ActividadesAsignadas
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_ActividadesAsignadas.IDContrato
LlaveMaestra=Contrato.ID
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Clave<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

ListaAcciones=(Lista)
IconosNombre=vic_ActividadesAsignadas:vic_ActividadesAsignadas.ClaveAct
FiltroGeneral=vic_ActividadesAsignadas.Modulo=<T>PACTO<T><BR>and vic_ActividadesAsignadas.Clave is null<BR>and vic_ActividadesAsignadas.IDContrato is not null
[Actividades.vic_ActividadesAsignadas.Actividad]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.FechaIni]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.FechaIni
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.FechaIniEst]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.FechaIniEst
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.FechaVen]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.FechaVen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.FechaConEst]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.FechaConEst
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Actividades.vic_ActividadesAsignadas.Responsable]
Carpeta=Actividades
Clave=vic_ActividadesAsignadas.Responsable
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.ACTImprimir]
Nombre=ACTImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=Actividades
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

EspacioPrevio=S
[Acciones.ACTPreliminar]
Nombre=ACTPreliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=Actividades
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.ACTExcel]
Nombre=ACTExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=Actividades
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.ACTPersonalizar]
Nombre=ACTPersonalizar
Boton=0
NombreDesplegar=&Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Actividades
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Actividades.Columnas]
0=90
1=255
2=117
3=148
4=107
5=145
6=-2
























7=-2
[Acciones.Tarea.vic_PlantillaTareasAsigna]
Nombre=vic_PlantillaTareasAsigna
Boton=0
TipoAccion=Formas
ClaveAccion=vic_PlantillaTareasAsigna
Activo=S
Visible=S

[Acciones.Tarea.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S






[Acciones.ACTEliminar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Precaucion(<T>¿ Esta seguro que desea eliminar esta Actividad ?<T>+ NuevaLinea + NuevaLinea + <T>Actividad <T> + vic_ActividadesAsignadas:vic_ActividadesAsignadas.ID, BotonSi, BotonNo ) = BotonSi<BR>Entonces EjecutarSQL(<T>vic_spEliminaActividades :nID<T>, vic_ActividadesAsignadas:vic_ActividadesAsignadas.ID)<BR>Sino<BR><T><T><BR>Fin
[Acciones.ACTEliminar.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.ACTEliminar]
Nombre=ACTEliminar
Boton=0
NombreDesplegar=&Eliminar Registro
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Visible=S












ActivoCondicion=ConDatos(vic_ActividadesAsignadas:vic_ActividadesAsignadas.ID)

[Eventos.Columnas]
0=235
1=-2














[Acciones.EliminarCondicion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Precaucion(<T>¿ Esta seguro que desea eliminar esta Condición ?<T>+ NuevaLinea + NuevaLinea + <T>Condición <T> + vic_Condicion:vic_Condicion.ID, BotonSi, BotonNo ) = BotonSi<BR>Entonces EjecutarSQL(<T>vic_spEliminaCondicion :nID<T>, vic_Condicion:vic_Condicion.ID)<BR>Sino<BR><T><T><BR>Fin
[Acciones.EliminarCondicion.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S




[Acciones.Eliminar Condicion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)






[Acciones.EliminarCondicion]
Nombre=EliminarCondicion
Boton=0
NombreDesplegar=&Eliminar Condición
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Visible=S






GuardarAntes=S









ActivoCondicion=(ConDatos(vic_Condicion:vic_Condicion.ID)) y (Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))




[Fianza.vic_Contrato.FianzaContratada]
Carpeta=Fianza
Clave=vic_Contrato.FianzaContratada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco












[Acciones.CDImprimir]
Nombre=CDImprimir
Boton=0
NombreDesplegar=Imprimir
EnMenu=S
Carpeta=CondicionesDet
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.CDPreliminar]
Nombre=CDPreliminar
Boton=0
NombreDesplegar=Presentación preliminar
EnMenu=S
Carpeta=CondicionesDet
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.CDExcel]
Nombre=CDExcel
Boton=0
NombreDesplegar=Enviar a excel
EnMenu=S
Carpeta=CondicionesDet
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.CDPersonalizar]
Nombre=CDPersonalizar
Boton=0
NombreDesplegar=Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=CondicionesDet
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S




[Acciones.ACTEliminar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)



[Generales.NombreInmueble]
Carpeta=Generales
Clave=NombreInmueble
Editar=S
3D=S
Pegado=S
Tamano=30
ColorFondo=Plata










[MovTipo.Columnas]
Mov=169









[Acciones.EliminarMinuta.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)











[Inversionista.Contrato.Inversionista]
Carpeta=Inversionista
Clave=Contrato.Inversionista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22


ColorFondo=Blanco



[Tramites]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Trámites
Clave=Tramites
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGeneraTramites
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S



Detalle=S
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_ContratoGeneraTramites.IDContrato
LlaveMaestra=Contrato.ID
ListaEnCaptura=(Lista)
MenuLocal=S
ListaAcciones=(Lista)
OtroOrden=S
ListaOrden=vic_ContratoGeneraTramites.ID<TAB>(Acendente)
PermiteLocalizar=S
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
IconosSubTitulo=Trámite
IconosNombre=<T>Trámite <T> + vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.ID
IconosNombreNumerico=S
[Acciones.Tramites.vic_ContratoPSolicitudesNueva]
Nombre=vic_ContratoPSolicitudesNueva
Boton=0
TipoAccion=Formas
ClaveAccion=vic_ContratoPSolicitudesNueva
Activo=S
Visible=S

[Acciones.Tramites.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Tramites]
Nombre=Tramites
Boton=0
NombreDesplegar=&Agregar Plantilla Trámites
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Antes=S
Visible=S
Menu=&Edición





GuardarAntes=S
ActivoCondicion=(ConDatos(Vic_ContratoClaseCte:Contrato.ID)) y (ConDatos(vic_Contrato2:vic_Contrato.ID)) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
AntesExpresiones=Asigna(Info.ID, Vic_ContratoClaseCte:Contrato.ID)
[Tramites.vic_ContratoGeneraTramites.NombrePlantilla]
Carpeta=Tramites
Clave=vic_ContratoGeneraTramites.NombrePlantilla
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Tramites.vic_ContratoGeneraTramites.Actividad]
Carpeta=Tramites
Clave=vic_ContratoGeneraTramites.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Tramites.vic_ContratoGeneraTramites.Titulo]
Carpeta=Tramites
Clave=vic_ContratoGeneraTramites.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Tramites.vic_ContratoGeneraTramites.Recurso]
Carpeta=Tramites
Clave=vic_ContratoGeneraTramites.Recurso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Tramites.vic_ContratoGeneraTramites.Email]
Carpeta=Tramites
Clave=vic_ContratoGeneraTramites.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Tramites.vic_ContratoGeneraTramites.Concepto]
Carpeta=Tramites
Clave=vic_ContratoGeneraTramites.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[Tramites.vic_ContratoGeneraTramites.Notaria]
Carpeta=Tramites
Clave=vic_ContratoGeneraTramites.Notaria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Tramites.Columnas]
NombrePlantilla=124
Actividad=115
Titulo=212
Recurso=64
Email=174
Concepto=184
Notaria=64










NombreCorto=184
Nombre_1=304
0=62
1=155
2=154
3=191
4=171
5=174
6=95
7=130
8=128
9=-2
[Solicitudes.Gestion.Mov]
Carpeta=Solicitudes
Clave=Gestion.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[Tramites.vic_Notaria.NombreCorto]
Carpeta=Tramites
Clave=vic_Notaria.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Gris







[vic_Notaria.Columnas]
0=129
1=166
2=162
3=250
4=-2





[Acciones.TRConsultarActividades]
Nombre=TRConsultarActividades
Boton=0
NombreDesplegar=Consultar Trámite (sin Gestión)
Multiple=S
EnMenu=S
Visible=S


ListaAccionesMultiples=(Lista)
GuardarAntes=S
ActivoCondicion=no ConDatos(vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.IDGestion)

[Acciones.TRConsultarActividades.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=FormaPos(<T>vic_ContratoGeneraTramites<T>, vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.ID)
[Acciones.TRConsultarActividades.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[Acciones.TREliminarActividades.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=Si Precaucion(<T>¿ Esta seguro que desea eliminar este Registro ?<T> + NuevaLinea + NuevaLinea + <T>Trámite<T> + vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.Actividad, BotonSi, BotonNo ) = BotonSi<BR>Entonces<BR><BR>EjecutarSQL(<T>vic_spEliminaContratoPlantilla2 :nID<T>, vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.ID)<BR>Sino<BR><T><T><BR>Fin
[Acciones.TREliminarActividades.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.TREliminarActividades]
Nombre=TREliminarActividades
Boton=0
NombreDesplegar=&Eliminar Trámite
Multiple=S
EnMenu=S
TipoAccion=Expresion
ListaAccionesMultiples=(Lista)

Visible=S



GuardarAntes=S
ActivoCondicion=no ConDatos(vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.IDGestion)
[Acciones.TREnviarGestion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Confirmacion(<T>¿ Seguro desea enviar la Actividad a Gestión ?<T>, BotonAceptar,BotonCancelar) = BotonAceptar<BR>Entonces<BR>ProcesarSQL(<T>vic_spTramitesGestion :nID, :tActividad, :tTitulo,  :tRecurso, :tEmail, :tConcepto, :tUsuario, :fFecha, :nEstacion<T>,<BR>vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.ID, vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.Actividad,<BR>vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.Titulo, vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.Recurso,<BR>vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.Email, vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.Concepto,<BR>Usuario, FechaTrabajo, EstacionTrabajo)<BR>Sino<BR><T><T><BR>Fin
[Acciones.TREnviarGestion.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.TREnviarGestion]
Nombre=TREnviarGestion
Boton=0
NombreDesplegar=&Enviar a Gestión
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Visible=S

EspacioPrevio=S
GuardarAntes=S
ActivoCondicion=(ConDatos(vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.Recurso)) y<BR>(ConDatos(vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.ID)) y (no ConDatos(vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.IDGestion))
[Acciones.TRConsultarGestion]
Nombre=TRConsultarGestion
Boton=0
NombreDesplegar=Consultar Trámite (Gestión)
EnMenu=S
TipoAccion=Expresion
Visible=S

GuardarAntes=S
Expresion=FormaPos(<T>Gestion<T>, vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.IDGestion)
ActivoCondicion=(ConDatos(vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.ID)) y<BR>(ConDatos(vic_ContratoGeneraTramites:vic_ContratoGeneraTramites.IDGestion))
[Acciones.TRImprimir]
Nombre=TRImprimir
Boton=0
NombreDesplegar=Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=Tramites
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.TRExcel]
Nombre=TRExcel
Boton=0
NombreDesplegar=Enviar a excel
EnMenu=S
Carpeta=Tramites
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.TRPreliminar]
Nombre=TRPreliminar
Boton=0
NombreDesplegar=Presentación preliminar
EnMenu=S
Carpeta=Tramites
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.TRPersonalizar]
Nombre=TRPersonalizar
Boton=0
NombreDesplegar=Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=Tramites
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S




























[Acciones.TRInsertaNuevo.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=FormaPos(<T>vic_ContratoGeneraTramites<T>, SQL(<T>vic_spContratoInsertaNuevoTramite :nIDContrato<T>, Vic_ContratoClaseCte:Contrato.ID))
[Acciones.TRInsertaNuevo.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.TRInsertaNuevo]
Nombre=TRInsertaNuevo
Boton=0
NombreDesplegar=&Inserta nuevo Trámite
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Visible=S







ActivoCondicion=ConDatos(Vic_ContratoClaseCte:Contrato.ID)






[Acciones.TRConsultarActividades.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)

[Acciones.TRInsertaNuevo.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)

[Acciones.TREliminarActividades.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)


[Acciones.Redsitribucion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

[Acciones.Redsitribucion.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S



[Detalle.Columnas]
Fecha=136
Monto=194







Articulo=84
CantidadNeta=49
FechaRequerida=87
Cantidad=48
FechaEntrega=94
CantidadPendiente=53
CantidadA=48
Costo=75
DescuentoLinea=32
Importe=79
ContUso=92
ClavePresupuestal=99
Almacen=69
SubCuenta=124
[Acciones.Redsitribucion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)






[Acciones.Redistribucion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Confirmacion(<T>¿ Seguro desea Redistribuir la Condición ?<T>, BotonAceptar,BotonCancelar) = BotonAceptar<BR>Entonces<BR>FormaPos(<T>vic_CondicionRedistribucion<T>, SQL(<T>vic_spResdistribucion :nIDContrato, :nIDCondicion, :fFecha<T>, Vic_ContratoClaseCte:Contrato.ID, vic_Condicion:vic_Condicion.ID, FechaTrabajo))<BR>Sino<BR><T><T><BR>Fin
[Acciones.Redistribucion.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[Acciones.EliminarCondicion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)

[Acciones.Redistribucion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)








[OrdenesCompra.Compra.Proveedor]
Carpeta=OrdenesCompra
Clave=Compra.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
[OrdenesCompra.Prov.Nombre]
Carpeta=OrdenesCompra
Clave=Prov.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[OrdenesCompra.Compra.FechaEmision]
Carpeta=OrdenesCompra
Clave=Compra.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[OrdenesCompra.Compra.FechaRequerida]
Carpeta=OrdenesCompra
Clave=Compra.FechaRequerida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[OrdenesCompra.ImporteTotal]
Carpeta=OrdenesCompra
Clave=ImporteTotal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[OrdenesCompra.Columnas]
0=158
1=125
2=179
3=126
4=124
5=83









6=80
7=-2
[Acciones.OCImprimir]
Nombre=OCImprimir
Boton=0
NombreDesplegar=Imprimir
EnMenu=S
Carpeta=OrdenesCompra
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

EspacioPrevio=S
[Acciones.OCPresentacion]
Nombre=OCPresentacion
Boton=0
NombreDesplegar=Presentación preliminar
EnMenu=S
Carpeta=OrdenesCompra
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.OCExcel]
Nombre=OCExcel
Boton=0
NombreDesplegar=Enviar a excel
EnMenu=S
Carpeta=OrdenesCompra
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.OCPersonalizar]
Nombre=OCPersonalizar
Boton=0
NombreDesplegar=Personalizar Vista
EnMenu=S
EspacioPrevio=S
Carpeta=OrdenesCompra
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S






[MovImpuesto.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
11=-2
12=-2



[Acciones.OCConsultar]
Nombre=OCConsultar
Boton=0
NombreDesplegar=Consultar Orden ...
EnMenu=S
TipoAccion=Expresion

Visible=S
GuardarAntes=S






Expresion=FormaPos(<T>Compra<T>, vic_CompraA:Compra.ID)
ActivoCondicion=(ConDatos(vic_CompraA:Compra.ID)) y (Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
[Acciones.OCConsultar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)























[Acciones.OCInsertar]
Nombre=OCInsertar
Boton=0
NombreDesplegar=Nueva Orden de Compra ...
EnMenu=S
TipoAccion=Expresion
Visible=S











GuardarAntes=S
Expresion=FormaPos(<T>Compra<T>, SQL(<T>vic_spInsertaOrdenCompra :nIDContrato, :tMovContrato, :tMovIDContrato, :tEmpresa, :tUsuario, :fFechaEmision, :nSucursal, :tProveedor<T>,<BR>Vic_ContratoClaseCte:Contrato.ID, Vic_ContratoClaseCte:Contrato.Mov, Vic_ContratoClaseCte:Contrato.MovID, Empresa, Usuario, FechaTrabajo, Sucursal, Vic_ContratoClaseCte:Contrato.Proveedor))
ActivoCondicion=(ConDatos(Vic_ContratoClaseCte:Contrato.Proveedor)) y<BR>(ConDatos(Vic_ContratoClaseCte:Contrato.ID)) y<BR>(Vic_ContratoClaseCte:Contrato.Estatus noen(EstatusCancelado, EstatusVigente)) o (vic_Contrato2:vic_Contrato.Gobierno) y<BR>(SQL(<T>SELECT 1 FROM Prov WHERE Proveedor=:tProveedor AND DefMoneda IS NOT NULL<T>, Vic_ContratoClaseCte:Contrato.Proveedor)=1)
[Acciones.OCElimina.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Precaucion(<T>¿ Esta seguro que desea eliminar esta Orden de Compra ?<T> + NuevaLinea + NuevaLinea + vic_CompraA:Compra.Mov+<T> <T>+vic_CompraA:Compra.MovID, BotonSi, BotonNo ) = BotonSi            <BR>Entonces<BR>ProcesarSQL(<T>vic_spEliminarOrdenCompra :nIDCompra<T>, vic_CompraA:Compra.ID)<BR>Sino<BR><T><T><BR>Fin
[Acciones.OCElimina.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.OCElimina]
Nombre=OCElimina
Boton=0
NombreDesplegar=Elimina Orden Compra
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Visible=S










GuardarAntes=S













ActivoCondicion=(ConDatos(Vic_ContratoClaseCte:Contrato.Proveedor)) y (ConDatos(Vic_ContratoClaseCte:Contrato.ID)) y (Vic_ContratoClaseCte:Contrato.Estatus noen(EstatusCancelado, EstatusVigente))
[OrdenesCompra.Compra.Importe]
Carpeta=OrdenesCompra
Clave=Compra.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[OrdenesCompra.Compra.Impuestos]
Carpeta=OrdenesCompra
Clave=Compra.Impuestos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





















[Generales.vic_Contrato.ContratoAbierto]
Carpeta=Generales
Clave=vic_Contrato.ContratoAbierto
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
LineaNueva=S
OcultaNombre=N
[Generales.vic_Contrato.MontoMinimo]
Carpeta=Generales
Clave=vic_Contrato.MontoMinimo
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
Pegado=N
[Generales.vic_Contrato.MontoMaximo]
Carpeta=Generales
Clave=vic_Contrato.MontoMaximo
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







Tamano=20


































[DatosGob.vic_ContratoGob.ResponsableAdmin]
Carpeta=DatosGob
Clave=vic_ContratoGob.ResponsableAdmin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob.vic_ContratoGob.UnidadResponsable]
Carpeta=DatosGob
Clave=vic_ContratoGob.UnidadResponsable
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob.vic_ContratoGob.ClavePresupUR]
Carpeta=DatosGob
Clave=vic_ContratoGob.ClavePresupUR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob.vic_ContratoGob.ConvenioModif]
Carpeta=DatosGob
Clave=vic_ContratoGob.ConvenioModif
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob.vic_ContratoGob.Temporalidad]
Carpeta=DatosGob
Clave=vic_ContratoGob.Temporalidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosGob.vic_ContratoGob.TipoProc]
Carpeta=DatosGob
Clave=vic_ContratoGob.TipoProc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosGob.vic_ContratoGob.SubTipoProc]
Carpeta=DatosGob
Clave=vic_ContratoGob.SubTipoProc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosGob.vic_ContratoGob.TipoErogacion]
Carpeta=DatosGob
Clave=vic_ContratoGob.TipoErogacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosGob.vic_ContratoGob.EsquemaPrecios]
Carpeta=DatosGob
Clave=vic_ContratoGob.EsquemaPrecios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosGob.vic_ContratoGob.ActoAdminJuridico]
Carpeta=DatosGob
Clave=vic_ContratoGob.ActoAdminJuridico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosGob.vic_ContratoGob.FechaFallo]
Carpeta=DatosGob
Clave=vic_ContratoGob.FechaFallo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20





















[DatosGob.vic_ContratoGobTemp.Descripcion]
Carpeta=DatosGob
Clave=vic_ContratoGobTemp.Descripcion
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata




[Temporalidad.Columnas]
Clave=64
Descripcion=484





[DatosGob.vic_ContratoGobTipoProc.Descripcion]
Carpeta=DatosGob
Clave=vic_ContratoGobTipoProc.Descripcion
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata




[TipoProc.Columnas]
Clave=64
Descripcion=404





[DatosGob.vic_ContratoGobErog.Descripcion]
Carpeta=DatosGob
Clave=vic_ContratoGobErog.Descripcion
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata




[Erogacion.Columnas]
Clave=60
Descripcion=263





[DatosGob.vic_ContratoGobPre.Descripcion]
Carpeta=DatosGob
Clave=vic_ContratoGobPre.Descripcion
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata




[EsquemaPrecios.Columnas]
Clave=64
Descripcion=323




[DatosGob.vic_ContratoGobJur.Descripcion]
Carpeta=DatosGob
Clave=vic_ContratoGobJur.Descripcion
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata






[ActoJuridico.Columnas]
Clave=64
Descripcion=304
























[DatosGob2.vic_ContratoGob.ProcedimAdjudicacion]
Carpeta=DatosGob2
Clave=vic_ContratoGob.ProcedimAdjudicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

EspacioPrevio=S
[DatosGob2.vic_ContratoGob.FechaAdjudicacion]
Carpeta=DatosGob2
Clave=vic_ContratoGob.FechaAdjudicacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

LineaNueva=S
[DatosGob2.vic_ContratoGob.ResponAdjudicacion]
Carpeta=DatosGob2
Clave=vic_ContratoGob.ResponAdjudicacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.AreaResponsable]
Carpeta=DatosGob2
Clave=vic_ContratoGob.AreaResponsable
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.FirmaContratoDep]
Carpeta=DatosGob2
Clave=vic_ContratoGob.FirmaContratoDep
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.FirmaContratoProv]
Carpeta=DatosGob2
Clave=vic_ContratoGob.FirmaContratoProv
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.PlazoEntregaBienes]
Carpeta=DatosGob2
Clave=vic_ContratoGob.PlazoEntregaBienes
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.LugarEntrega]
Carpeta=DatosGob2
Clave=vic_ContratoGob.LugarEntrega
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[DatosGob2.vic_ContratoGob.CondicionEntrega]
Carpeta=DatosGob2
Clave=vic_ContratoGob.CondicionEntrega
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70x2
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.FormaConsultaSE]
Carpeta=DatosGob2
Clave=vic_ContratoGob.FormaConsultaSE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

EspacioPrevio=S
[DatosGob2.vic_ContratoGob.FechaConsulta]
Carpeta=DatosGob2
Clave=vic_ContratoGob.FechaConsulta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[DatosGob2.vic_ContratoGob.ResponsableConsulta]
Carpeta=DatosGob2
Clave=vic_ContratoGob.ResponsableConsulta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.FundamentoLegal]
Carpeta=DatosGob2
Clave=vic_ContratoGob.FundamentoLegal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.AccionCompra]
Carpeta=DatosGob2
Clave=vic_ContratoGob.AccionCompra
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.CodigoIdentificador]
Carpeta=DatosGob2
Clave=vic_ContratoGob.CodigoIdentificador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.PaisOrigen]
Carpeta=DatosGob2
Clave=vic_ContratoGob.PaisOrigen
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Area.Columnas]
Area=304


















































[SubtipoProc.Columnas]
Clave=93
Nacional=141
Internacional=171
InvitacionProv=178
AdjudicacionDirecta=210






[Fechas.vic_Contrato.FechaLFirma]
Carpeta=Fechas
Clave=vic_Contrato.FechaLFirma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco









[DatosGob2.vic_ContratoGob.FechaEntrega]
Carpeta=DatosGob2
Clave=vic_ContratoGob.FechaEntrega
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.PrecioFijo]
Carpeta=DatosGob2
Clave=vic_ContratoGob.PrecioFijo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob2.vic_ContratoGob.SujetoAjustes]
Carpeta=DatosGob2
Clave=vic_ContratoGob.SujetoAjustes
Editar=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco

Pegado=S
[DatosGob2.vic_ContratoGob.ControlCalidad]
Carpeta=DatosGob2
Clave=vic_ContratoGob.ControlCalidad
Editar=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco





























Pegado=S
[DatosGob2.Alm.Nombre]
Carpeta=DatosGob2
Clave=Alm.Nombre
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Plata





[DatosGob.vic_ContratoGob.OficioAutPresup]
Carpeta=DatosGob
Clave=vic_ContratoGob.OficioAutPresup
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob.vic_ContratoGob.FechaAutPresup]
Carpeta=DatosGob
Clave=vic_ContratoGob.FechaAutPresup
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob.vic_ContratoGob.ResponsableAutPresup]
Carpeta=DatosGob
Clave=vic_ContratoGob.ResponsableAutPresup
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob.vic_ContratoGob.NoLicitacion]
Carpeta=DatosGob
Clave=vic_ContratoGob.NoLicitacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[DatosGob.vic_ContratoGob.NombreLicitacion]
Carpeta=DatosGob
Clave=vic_ContratoGob.NombreLicitacion
Editar=S
3D=S
Pegado=S
Tamano=50
ColorFondo=Blanco
























[Acciones.vic_ContratoGobErog]
Nombre=vic_ContratoGobErog
Boton=0
Menu=&Maestros
NombreDesplegar=T&ipos de Erogación
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoGobErog

EspacioPrevio=S

ActivoCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
VisibleCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
[Acciones.vic_ContratoGobJur]
Nombre=vic_ContratoGobJur
Boton=0
Menu=&Maestros
NombreDesplegar=&Acto Administrativo Jurídico
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoGobJur













ActivoCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
VisibleCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
[Acciones.vic_ContratoGobPre]
Nombre=vic_ContratoGobPre
Boton=0
NombreDesplegar=&Esquema de Precios
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoGobPre




Menu=&Maestros









ActivoCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
VisibleCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
[Acciones.vic_ContratoGobTemp]
Nombre=vic_ContratoGobTemp
Boton=0
NombreDesplegar=&Temporalidad
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoGobTemp

Menu=&Maestros









ActivoCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
VisibleCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
[Acciones.vic_ContratoGobTipoProc]
Nombre=vic_ContratoGobTipoProc
Boton=0
Menu=&Maestros
NombreDesplegar=Tipos &Procedimiento Adjudicación
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoGobTipoProc







ActivoCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
VisibleCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
[Acciones.vic_ContratoGobSubTipoProc]
Nombre=vic_ContratoGobSubTipoProc
Boton=0
Menu=&Maestros
NombreDesplegar=Subtipos Procedimiento &Adjudicación
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_ContratoGobSubTipoProc


































































ActivoCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
VisibleCondicion=(vic_Contrato2:vic_Contrato.Gobierno) y (SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.O<T>))
[Actividades.Usuario.Nombre]
Carpeta=Actividades
Clave=Usuario.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco





























[Tramites.Recurso.Nombre]
Carpeta=Tramites
Clave=Recurso.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Gris










[Acciones.TREnviarGestion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)












[Cliente.ListaEnCaptura]
(Inicio)=Contrato.Cliente
Contrato.Cliente=Cte.Nombre
Cte.Nombre=(Fin)














[Acciones.Tramites.ListaAccionesMultiples]
(Inicio)=vic_ContratoPSolicitudesNueva
vic_ContratoPSolicitudesNueva=Actualizar Vista
Actualizar Vista=(Fin)

























































































[Acciones.BajaLocales.ListaAccionesMultiples]
(Inicio)=vic_ContratoMotivo
vic_ContratoMotivo=Actualizar Vista
Actualizar Vista=(Fin)



















[Acciones.Tarea.ListaAccionesMultiples]
(Inicio)=vic_PlantillaTareasAsigna
vic_PlantillaTareasAsigna=Actualizar Vista
Actualizar Vista=(Fin)






























































[Acciones.MinutaContrato.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)




[Acciones.SolicitudesContrato.ListaAccionesMultiples]
(Inicio)=vic_ContratoGeneraSolicitudes
vic_ContratoGeneraSolicitudes=Actualizar Vista
Actualizar Vista=(Fin)

















[Acciones.OCElimina.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)





[Minutas.vic_ContMinuta.Titulo]
Carpeta=Minutas
Clave=vic_ContMinuta.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco






















[MAFIndicador.Columnas]
Indicador=304
Referencia=201
LecturaAnterior=124








[Acciones.Eliminar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Documento Eliminar
Documento Eliminar=(Fin)














































[Inversionista.ContactoTipoNombre]
Carpeta=Inversionista
Clave=ContactoTipoNombre
Editar=S
3D=S
Pegado=S
Tamano=70
ColorFondo=Plata


[(Carpeta Abrir).Cte.NombreCorto]
Carpeta=(Carpeta Abrir)
Clave=Cte.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco














[vic_LocalLista.ListaEnCaptura]
(Inicio)=vic_Local.NombreCorto
vic_Local.NombreCorto=vic_Local.Nombre
vic_Local.Nombre=vic_Local.Uso
vic_Local.Uso=vic_Local.Medida
vic_Local.Medida=vic_Local.Unidad
vic_Local.Unidad=(Fin)

[vic_LocalLista.vic_Local.NombreCorto]
Carpeta=vic_LocalLista
Clave=vic_Local.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[vic_LocalLista.vic_Local.Nombre]
Carpeta=vic_LocalLista
Clave=vic_Local.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco

[vic_LocalLista.vic_Local.Uso]
Carpeta=vic_LocalLista
Clave=vic_Local.Uso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[vic_LocalLista.vic_Local.Medida]
Carpeta=vic_LocalLista
Clave=vic_Local.Medida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[vic_LocalLista.vic_Local.Unidad]
Carpeta=vic_LocalLista
Clave=vic_Local.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco











[LocalesDet.vic_Local.Nombre]
Carpeta=LocalesDet
Clave=vic_Local.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=200
ColorFondo=Blanco

[LocalesDet.vic_Local.Uso]
Carpeta=LocalesDet
Clave=vic_Local.Uso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[LocalesDet.vic_Local.Medida]
Carpeta=LocalesDet
Clave=vic_Local.Medida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[LocalesDet.vic_Local.Unidad]
Carpeta=LocalesDet
Clave=vic_Local.Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





[Acciones.LOCPreliminar]
Nombre=LOCPreliminar
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=LocalesDet
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.LOCExcel]
Nombre=LOCExcel
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=LocalesDet
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.LOCImprimir]
Nombre=LOCImprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=LocalesDet
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.LOCPersonalizar]
Nombre=LOCPersonalizar
Boton=0
NombreDesplegar=&Personalizar vista
EnMenu=S
EspacioPrevio=S
Carpeta=LocalesDet
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S







[LocalesDet.Columnas]
0=128
1=150
2=106
3=106
4=95
5=-2




[CondicionesDet.Agrupador]
Carpeta=CondicionesDet
Clave=Agrupador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CondicionesDet.Uso]
Carpeta=CondicionesDet
Clave=Uso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CondicionesDet.Renta/m2]
Carpeta=CondicionesDet
Clave=Renta/m2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







[LocalesDet.ListaOrden]
(Inicio)=vic_Condicion.Local	(Acendente)
vic_Condicion.Local	(Acendente)=vic_Local.Medida	(Acendente)
vic_Local.Medida	(Acendente)=(Fin)




[LocalesDet.vic_Condicion.Local]
Carpeta=LocalesDet
Clave=vic_Condicion.Local
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco







[Acciones.LOCPresentacion]
Nombre=LOCPresentacion
Boton=0
NombreDesplegar=&Presentación preliminar
EnMenu=S
Carpeta=LocalesDet
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[LocalesDet]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Locales
Clave=LocalesDet
Detalle=S
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=vic_ListaContratoLocales
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=IDContrato
LlaveMaestra=Contrato.ID
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Local<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

ListaAcciones=(Lista)

IconosNombre=vic_ListaContratoLocales:NombreCorto
CondicionVisible=SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) noen (<T>VIC.O<T>)
[LocalesDet.Nombre]
Carpeta=LocalesDet
Clave=Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[LocalesDet.Uso]
Carpeta=LocalesDet
Clave=Uso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[LocalesDet.Medida]
Carpeta=LocalesDet
Clave=Medida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[LocalesDet.Unidad]
Carpeta=LocalesDet
Clave=Unidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.LOCExcel2]
Nombre=LOCExcel2
Boton=0
NombreDesplegar=&Enviar a excel
EnMenu=S
Carpeta=LocalesDet
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.LOCImprimir2]
Nombre=LOCImprimir2
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
Carpeta=LocalesDet
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.LOCPersonalizar2]
Nombre=LOCPersonalizar2
Boton=0
NombreDesplegar=&Personalizar vista
EnMenu=S
EspacioPrevio=S
Carpeta=LocalesDet
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S





















[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)























































[ListadoCodic.Columnas]
FechaAplicaMov=76
Aplicada=64




Monto=64
RefciaNumFac=124




[Condiciones.Art.Descripcion1]
Carpeta=Condiciones
Clave=Art.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Condiciones.vic_Condicion.FechaIni]
Carpeta=Condiciones
Clave=vic_Condicion.FechaIni
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Condiciones.vic_Condicion.FechaFin]
Carpeta=Condiciones
Clave=vic_Condicion.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Condiciones.vic_Condicion.MonCot]
Carpeta=Condiciones
Clave=vic_Condicion.MonCot
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Condiciones.vic_Condicion.MonFact]
Carpeta=Condiciones
Clave=vic_Condicion.MonFact
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




















[Acciones.InactivaCondicion]
Nombre=InactivaCondicion
Boton=0
NombreDesplegar=&Inactiva Condición
EnMenu=S
TipoAccion=Expresion
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
GuardarAntes=S
ActivoCondicion=(ConDatos(vic_Condicion:vic_Condicion.ID)) y (Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
[Acciones.InactivaCondicion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Precaucion(<T>¿Esta seguro que desea Inactivar esta Condición?<T>+ NuevaLinea + NuevaLinea + <T>Condición <T> + vic_Condicion:vic_Condicion.ID, BotonSi, BotonNo ) = BotonSi<BR>Entonces EjecutarSQL(<T>vic_spCondicionInactivar :nID<T>, vic_Condicion:vic_Condicion.ID)<BR>Sino<BR><T><T>                                                         <BR>Fin
[Acciones.InactivaCondicion.Actualiza]
Nombre=Actualiza
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S



















[Generales.vic_Contrato.Factor1]
Carpeta=Generales
Clave=vic_Contrato.Factor1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco

Tamano=10
[Generales.vic_Contrato.Factor2]
Carpeta=Generales
Clave=vic_Contrato.Factor2
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=10
[Generales.vic_Contrato.Factor3]
Carpeta=Generales
Clave=vic_Contrato.Factor3
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco





Tamano=10





[Generales.vic_Contrato.SiFiador]
Carpeta=Generales
Clave=vic_Contrato.SiFiador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Generales.vic_Contrato.Fianza]
Carpeta=Generales
Clave=vic_Contrato.Fianza
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco






[CondicionesGenerales.ListaEnCaptura]
(Inicio)=vic_Contrato.PenaCanc
vic_Contrato.PenaCanc=vic_Contrato.PenaImpo
vic_Contrato.PenaImpo=vic_Contrato.PenaPorc
vic_Contrato.PenaPorc=vic_Contrato.Tipoderenta
vic_Contrato.Tipoderenta=vic_Contrato.AvanceObra
vic_Contrato.AvanceObra=(Fin)

[DefCondiciones.ListaEnCaptura]
(Inicio)=vic_Contrato.ActDepoGar
vic_Contrato.ActDepoGar=vic_Contrato.MesesDepGar
vic_Contrato.MesesDepGar=vic_Contrato.Seguro
vic_Contrato.Seguro=vic_Contrato.MesesRenAdela
vic_Contrato.MesesRenAdela=vic_Contrato.Dafrecuencia
vic_Contrato.Dafrecuencia=vic_Contrato.DAContFact
vic_Contrato.DAContFact=vic_Contrato.DAIVA
vic_Contrato.DAIVA=vic_Contrato.DARISR
vic_Contrato.DARISR=vic_Contrato.DARIVA
vic_Contrato.DARIVA=vic_Contrato.DAMonCot
vic_Contrato.DAMonCot=vic_Contrato.DAMonFact
vic_Contrato.DAMonFact=vic_Contrato.DAGenInc
vic_Contrato.DAGenInc=vic_Contrato.FechaRev
vic_Contrato.FechaRev=vic_Contrato.DAMesesRev
vic_Contrato.DAMesesRev=vic_Contrato.DAIndicador
vic_Contrato.DAIndicador=vic_Contrato.DAIndPor
vic_Contrato.DAIndPor=vic_Contrato.DAIndMas
vic_Contrato.DAIndMas=(Fin)




















[CondRenta]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cond. Renta
Clave=CondRenta
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Contrato2
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Contrato.ID
LlaveMaestra=Contrato.ID
FichaEspacioEntreLineas=6
FichaEspacioNombres=150
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


CondicionVisible=SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.CR<T>)
[CondRenta.vic_Contrato.ActDepoGar]
Carpeta=CondRenta
Clave=vic_Contrato.ActDepoGar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Efectos=[Negritas]
[CondRenta.vic_Contrato.MesesDepGar]
Carpeta=CondRenta
Clave=vic_Contrato.MesesDepGar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.Seguro]
Carpeta=CondRenta
Clave=vic_Contrato.Seguro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.MesesRenAdela]
Carpeta=CondRenta
Clave=vic_Contrato.MesesRenAdela
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.Dafrecuencia]
Carpeta=CondRenta
Clave=vic_Contrato.Dafrecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=18
ColorFondo=Blanco
Efectos=[Negritas]

[CondRenta.vic_Contrato.DAContFact]
Carpeta=CondRenta
Clave=vic_Contrato.DAContFact
Editar=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=12
ColorFondo=Blanco




[CondRenta.vic_Contrato.DAMonCot]
Carpeta=CondRenta
Clave=vic_Contrato.DAMonCot
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.DAMonFact]
Carpeta=CondRenta
Clave=vic_Contrato.DAMonFact
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.DAGenInc]
Carpeta=CondRenta
Clave=vic_Contrato.DAGenInc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=12
ColorFondo=Blanco

[CondRenta.vic_Contrato.FechaRev]
Carpeta=CondRenta
Clave=vic_Contrato.FechaRev
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.DAMesesRev]
Carpeta=CondRenta
Clave=vic_Contrato.DAMesesRev
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.DAIndicador]
Carpeta=CondRenta
Clave=vic_Contrato.DAIndicador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.DAIndPor]
Carpeta=CondRenta
Clave=vic_Contrato.DAIndPor
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondRenta.vic_Contrato.DAIndMas]
Carpeta=CondRenta
Clave=vic_Contrato.DAIndMas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco









[CondVenta]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cond. Venta
Clave=CondVenta
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Contrato2
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Contrato.ID
LlaveMaestra=Contrato.ID
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




CondicionVisible=SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.CV<T>)
[CondVenta.vic_Contrato.PenaCanc]
Carpeta=CondVenta
Clave=vic_Contrato.PenaCanc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=18
ColorFondo=Blanco

[CondVenta.vic_Contrato.PenaImpo]
Carpeta=CondVenta
Clave=vic_Contrato.PenaImpo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

[CondVenta.vic_Contrato.PenaPorc]
Carpeta=CondVenta
Clave=vic_Contrato.PenaPorc
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco




[CondServicio]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Cond. Servicio
Clave=CondServicio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_Contrato2
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




Detalle=S
VistaMaestra=Vic_ContratoClaseCte
LlaveLocal=vic_Contrato.ID
LlaveMaestra=Contrato.ID
CondicionVisible=SQL(<T>SELECT SubClave FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMovimiento<T>, <T>PACTO<T>, Vic_ContratoClaseCte:Contrato.Mov) en (<T>VIC.CSE<T>)
[CondServicio.vic_Contrato.AvanceObra]
Carpeta=CondServicio
Clave=vic_Contrato.AvanceObra
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco


Tamano=18





[Acciones.vic_ContratoConcepC]
Nombre=vic_ContratoConcepC
Boton=0
Menu=&Maestros
NombreDesplegar=&Concepto de Condición
EnMenu=S
TipoAccion=Formas
ClaveAccion=vic_CondicionAgp
Activo=S
Visible=S


























































[Ficha.Contrato.Cliente]
Carpeta=Ficha
Clave=Contrato.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Ficha.Cte.Nombre]
Carpeta=Ficha
Clave=Cte.Nombre
Editar=S
3D=S
Pegado=S
Tamano=70
ColorFondo=Blanco











[Prospecto.ListaEnCaptura]
(Inicio)=Contrato.Prospecto
Contrato.Prospecto=Prospecto.Nombre
Prospecto.Nombre=(Fin)

[Proveedor.ListaEnCaptura]
(Inicio)=Contrato.Proveedor
Contrato.Proveedor=Prov.Nombre
Prov.Nombre=(Fin)

[Personal.ListaEnCaptura]
(Inicio)=Contrato.Personal
Contrato.Personal=PersonalNombre
PersonalNombre=(Fin)

[Agente.ListaEnCaptura]
(Inicio)=Contrato.Agente
Contrato.Agente=Agente.Nombre
Agente.Nombre=(Fin)

[Inversionista.ListaEnCaptura]
(Inicio)=Contrato.Inversionista
Contrato.Inversionista=ContactoTipoNombre
ContactoTipoNombre=(Fin)

[OrdenesCompra.ListaEnCaptura]
(Inicio)=Compra.Proveedor
Compra.Proveedor=Prov.Nombre
Prov.Nombre=Compra.FechaEmision
Compra.FechaEmision=Compra.FechaRequerida
Compra.FechaRequerida=Compra.Importe
Compra.Importe=Compra.Impuestos
Compra.Impuestos=ImporteTotal
ImporteTotal=(Fin)

[OrdenesCompra.ListaAcciones]
(Inicio)=OCConsultar
OCConsultar=OCInsertar
OCInsertar=OCElimina
OCElimina=OCImprimir
OCImprimir=OCPresentacion
OCPresentacion=OCExcel
OCExcel=OCPersonalizar
OCPersonalizar=(Fin)

[DatosGob.ListaEnCaptura]
(Inicio)=vic_ContratoGob.ResponsableAdmin
vic_ContratoGob.ResponsableAdmin=vic_ContratoGob.UnidadResponsable
vic_ContratoGob.UnidadResponsable=vic_ContratoGob.ClavePresupUR
vic_ContratoGob.ClavePresupUR=vic_ContratoGob.ConvenioModif
vic_ContratoGob.ConvenioModif=vic_ContratoGob.Temporalidad
vic_ContratoGob.Temporalidad=vic_ContratoGobTemp.Descripcion
vic_ContratoGobTemp.Descripcion=vic_ContratoGob.TipoProc
vic_ContratoGob.TipoProc=vic_ContratoGobTipoProc.Descripcion
vic_ContratoGobTipoProc.Descripcion=vic_ContratoGob.SubTipoProc
vic_ContratoGob.SubTipoProc=vic_ContratoGob.TipoErogacion
vic_ContratoGob.TipoErogacion=vic_ContratoGobErog.Descripcion
vic_ContratoGobErog.Descripcion=vic_ContratoGob.EsquemaPrecios
vic_ContratoGob.EsquemaPrecios=vic_ContratoGobPre.Descripcion
vic_ContratoGobPre.Descripcion=vic_ContratoGob.ActoAdminJuridico
vic_ContratoGob.ActoAdminJuridico=vic_ContratoGobJur.Descripcion
vic_ContratoGobJur.Descripcion=vic_ContratoGob.FechaFallo
vic_ContratoGob.FechaFallo=vic_ContratoGob.OficioAutPresup
vic_ContratoGob.OficioAutPresup=vic_ContratoGob.FechaAutPresup
vic_ContratoGob.FechaAutPresup=vic_ContratoGob.ResponsableAutPresup
vic_ContratoGob.ResponsableAutPresup=vic_ContratoGob.NoLicitacion
vic_ContratoGob.NoLicitacion=vic_ContratoGob.NombreLicitacion
vic_ContratoGob.NombreLicitacion=(Fin)

[DatosGob2.ListaEnCaptura]
(Inicio)=vic_ContratoGob.ProcedimAdjudicacion
vic_ContratoGob.ProcedimAdjudicacion=vic_ContratoGob.FechaAdjudicacion
vic_ContratoGob.FechaAdjudicacion=vic_ContratoGob.ResponAdjudicacion
vic_ContratoGob.ResponAdjudicacion=vic_ContratoGob.AreaResponsable
vic_ContratoGob.AreaResponsable=vic_ContratoGob.FirmaContratoDep
vic_ContratoGob.FirmaContratoDep=vic_ContratoGob.FirmaContratoProv
vic_ContratoGob.FirmaContratoProv=vic_ContratoGob.PlazoEntregaBienes
vic_ContratoGob.PlazoEntregaBienes=vic_ContratoGob.FechaEntrega
vic_ContratoGob.FechaEntrega=vic_ContratoGob.LugarEntrega
vic_ContratoGob.LugarEntrega=Alm.Nombre
Alm.Nombre=vic_ContratoGob.PrecioFijo
vic_ContratoGob.PrecioFijo=vic_ContratoGob.SujetoAjustes
vic_ContratoGob.SujetoAjustes=vic_ContratoGob.ControlCalidad
vic_ContratoGob.ControlCalidad=vic_ContratoGob.CondicionEntrega
vic_ContratoGob.CondicionEntrega=vic_ContratoGob.FormaConsultaSE
vic_ContratoGob.FormaConsultaSE=vic_ContratoGob.FechaConsulta
vic_ContratoGob.FechaConsulta=vic_ContratoGob.ResponsableConsulta
vic_ContratoGob.ResponsableConsulta=vic_ContratoGob.FundamentoLegal
vic_ContratoGob.FundamentoLegal=vic_ContratoGob.AccionCompra
vic_ContratoGob.AccionCompra=vic_ContratoGob.CodigoIdentificador
vic_ContratoGob.CodigoIdentificador=vic_ContratoGob.PaisOrigen
vic_ContratoGob.PaisOrigen=(Fin)









[Ficha.Contrato.ClaseContrato]
Carpeta=Ficha
Clave=Contrato.ClaseContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco























[Minutas.ListaEnCaptura]
(Inicio)=vic_ContMinuta.Titulo
vic_ContMinuta.Titulo=vic_ContMinuta.Fecha
vic_ContMinuta.Fecha=vic_ContMinuta.Texto
vic_ContMinuta.Texto=(Fin)

[Minutas.ListaAcciones]
(Inicio)=ActualizarMinuta
ActualizarMinuta=EliminarMinuta
EliminarMinuta=MINImprimir
MINImprimir=MINPresentacion
MINPresentacion=MINExcel
MINExcel=MINPersonalizar
MINPersonalizar=(Fin)



[Actividades.ListaEnCaptura]
(Inicio)=vic_ActividadesAsignadas.Actividad
vic_ActividadesAsignadas.Actividad=vic_ActividadesAsignadas.FechaIni
vic_ActividadesAsignadas.FechaIni=vic_ActividadesAsignadas.FechaIniEst
vic_ActividadesAsignadas.FechaIniEst=vic_ActividadesAsignadas.FechaVen
vic_ActividadesAsignadas.FechaVen=vic_ActividadesAsignadas.FechaConEst
vic_ActividadesAsignadas.FechaConEst=vic_ActividadesAsignadas.Responsable
vic_ActividadesAsignadas.Responsable=Usuario.Nombre
Usuario.Nombre=(Fin)

[Actividades.ListaAcciones]
(Inicio)=ACTEliminar
ACTEliminar=ACTImprimir
ACTImprimir=ACTPreliminar
ACTPreliminar=ACTExcel
ACTExcel=ACTPersonalizar
ACTPersonalizar=(Fin)

[CondicionesDet.ListaEnCaptura]
(Inicio)=Agrupador
Agrupador=Uso
Uso=Importe
Importe=Renta/m2
Renta/m2=(Fin)

[CondicionesDet.ListaOrden]
(Inicio)=Agrupador	(Acendente)
Agrupador	(Acendente)=MonCot	(Acendente)
MonCot	(Acendente)=(Fin)

[CondicionesDet.ListaAcciones]
(Inicio)=CDImprimir
CDImprimir=CDPreliminar
CDPreliminar=CDExcel
CDExcel=CDPersonalizar
CDPersonalizar=(Fin)




[LocalesDet.ListaEnCaptura]
(Inicio)=Nombre
Nombre=Uso
Uso=Medida
Medida=Unidad
Unidad=(Fin)

[LocalesDet.ListaAcciones]
(Inicio)=LOCPresentacion
LOCPresentacion=LOCExcel2
LOCExcel2=LOCImprimir2
LOCImprimir2=LOCPersonalizar2
LOCPersonalizar2=(Fin)














[CondVenta.vic_Contrato.DAMonCot]
Carpeta=CondVenta
Clave=vic_Contrato.DAMonCot
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

EspacioPrevio=N
[CondVenta.vic_Contrato.DAMonFact]
Carpeta=CondVenta
Clave=vic_Contrato.DAMonFact
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco


















[CondServicio.vic_Contrato.DAMonCot]
Carpeta=CondServicio
Clave=vic_Contrato.DAMonCot
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco

EspacioPrevio=N
[CondServicio.vic_Contrato.DAMonFact]
Carpeta=CondServicio
Clave=vic_Contrato.DAMonFact
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco









[Fianza.ListaEnCaptura]
(Inicio)=vic_Contrato.FianzaOblig
vic_Contrato.FianzaOblig=vic_Contrato.FianzaCia
vic_Contrato.FianzaCia=vic_Contrato.FianzaFIni
vic_Contrato.FianzaFIni=vic_Contrato.FianzaFFin
vic_Contrato.FianzaFFin=vic_Contrato.FianzaImp
vic_Contrato.FianzaImp=vic_Contrato.FianzaNota
vic_Contrato.FianzaNota=vic_Contrato.FianzaContratada
vic_Contrato.FianzaContratada=(Fin)












[Generales.ListaEnCaptura]
(Inicio)=vic_Contrato.Inmueble
vic_Contrato.Inmueble=NombreInmueble
NombreInmueble=vic_Contrato.DirFisica
vic_Contrato.DirFisica=vic_Contrato.SiFiador
vic_Contrato.SiFiador=vic_Contrato.Fianza
vic_Contrato.Fianza=vic_Contrato.SIC
vic_Contrato.SIC=vic_Contrato.SICextendido
vic_Contrato.SICextendido=vic_Contrato.Categoria
vic_Contrato.Categoria=vic_Contrato.Agrupador1
vic_Contrato.Agrupador1=vic_Contrato.Grupo
vic_Contrato.Grupo=vic_Contrato.Agrupador2
vic_Contrato.Agrupador2=vic_Contrato.Familia
vic_Contrato.Familia=vic_Contrato.Factor1
vic_Contrato.Factor1=vic_Contrato.Factor2
vic_Contrato.Factor2=vic_Contrato.Factor3
vic_Contrato.Factor3=vic_Contrato.DirInternet
vic_Contrato.DirInternet=vic_Contrato.DirInternet2
vic_Contrato.DirInternet2=vic_Contrato.Contacto
vic_Contrato.Contacto=vic_Contrato.eMail
vic_Contrato.eMail=vic_Contrato.TelefonosLada
vic_Contrato.TelefonosLada=vic_Contrato.Telefonos
vic_Contrato.Telefonos=vic_Contrato.Extencion
vic_Contrato.Extencion=vic_Contrato.Fax
vic_Contrato.Fax=vic_Contrato.Contacto2
vic_Contrato.Contacto2=vic_Contrato.eMail2
vic_Contrato.eMail2=vic_Contrato.TelefonosLada2
vic_Contrato.TelefonosLada2=vic_Contrato.Telefonos2
vic_Contrato.Telefonos2=vic_Contrato.Extencion2
vic_Contrato.Extencion2=vic_Contrato.Fax2
vic_Contrato.Fax2=vic_Contrato.ContratoAbierto
vic_Contrato.ContratoAbierto=vic_Contrato.MontoMinimo
vic_Contrato.MontoMinimo=vic_Contrato.MontoMaximo
vic_Contrato.MontoMaximo=(Fin)







[Fiador.ListaEnCaptura]
(Inicio)=vic_Contrato.Fiador
vic_Contrato.Fiador=vic_Contrato.FiadorRFC
vic_Contrato.FiadorRFC=vic_Contrato.ContactoFiador
vic_Contrato.ContactoFiador=vic_Contrato.DireccionFiador
vic_Contrato.DireccionFiador=vic_Contrato.DireccionNumeroFiador
vic_Contrato.DireccionNumeroFiador=vic_Contrato.DireccionNumeroIntFiador
vic_Contrato.DireccionNumeroIntFiador=vic_Contrato.ColoniaFiador
vic_Contrato.ColoniaFiador=vic_Contrato.PoblaciónFiador
vic_Contrato.PoblaciónFiador=vic_Contrato.EstadoFiador
vic_Contrato.EstadoFiador=vic_Contrato.DelegacionFiador
vic_Contrato.DelegacionFiador=vic_Contrato.CodigoPostalFiador
vic_Contrato.CodigoPostalFiador=vic_Contrato.PaisFiador
vic_Contrato.PaisFiador=vic_Contrato.PlanoFiador
vic_Contrato.PlanoFiador=vic_Contrato.EntreCallesFiador
vic_Contrato.EntreCallesFiador=vic_Contrato.ObservacionesFiador
vic_Contrato.ObservacionesFiador=vic_Contrato.TelefonosLadaFiador
vic_Contrato.TelefonosLadaFiador=vic_Contrato.TelefonosFiador
vic_Contrato.TelefonosFiador=vic_Contrato.ExtencionFiador
vic_Contrato.ExtencionFiador=vic_Contrato.FaxFiador
vic_Contrato.FaxFiador=vic_Contrato.FiadorGarantia
vic_Contrato.FiadorGarantia=(Fin)













[FirFisica.ListaEnCaptura]
(Inicio)=vic_Contrato.Direccion
vic_Contrato.Direccion=vic_Contrato.DireccionNumero
vic_Contrato.DireccionNumero=vic_Contrato.DireccionNumeroInt
vic_Contrato.DireccionNumeroInt=vic_Contrato.Colonia
vic_Contrato.Colonia=vic_Contrato.Población
vic_Contrato.Población=vic_Contrato.Delegacion
vic_Contrato.Delegacion=vic_Contrato.Estado
vic_Contrato.Estado=vic_Contrato.CodigoPostal
vic_Contrato.CodigoPostal=vic_Contrato.Pais
vic_Contrato.Pais=vic_Contrato.Plano
vic_Contrato.Plano=vic_Contrato.EntreCalles
vic_Contrato.EntreCalles=vic_Contrato.Observaciones
vic_Contrato.Observaciones=(Fin)




[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=Cte.NombreCorto
Cte.NombreCorto=Cte.Nombre
Cte.Nombre=Contrato.Desde
Contrato.Desde=Contrato.Hasta
Contrato.Hasta=Contrato.FechaEmision
Contrato.FechaEmision=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=SINAFECTAR
SINAFECTAR=CONFIRMAR
CONFIRMAR=BORRADOR
BORRADOR=SINCRO
SINCRO=PENDIENTE
PENDIENTE=VIGENTE
VIGENTE=VENCIDO
VENCIDO=CONCLUIDO
CONCLUIDO=CANCELADO
CANCELADO=SINLOCAL
SINLOCAL=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=AbrirPropiedades
AbrirPropiedades=AbrirLocalizar
AbrirLocalizar=AbrirLocalizarSig
AbrirLocalizarSig=AbrirImprimir
AbrirImprimir=PresentacionPrelim
PresentacionPrelim=Excel
Excel=MostrarCampos
MostrarCampos=MapaContratoSelec
MapaContratoSelec=MapaContratoTodos
MapaContratoTodos=MapaFiadorSelec
MapaFiadorSelec=MapaFiadorTodos
MapaFiadorTodos=(Fin)









[Condiciones.vic_Condicion.ConIncremento]
Carpeta=Condiciones
Clave=vic_Condicion.ConIncremento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Condiciones.vic_Condicion.BasadoenVentas]
Carpeta=Condiciones
Clave=vic_Condicion.BasadoenVentas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Condiciones.vic_Condicion.ConLocal]
Carpeta=Condiciones
Clave=vic_Condicion.ConLocal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Condiciones.vic_Local.NombreCorto]
Carpeta=Condiciones
Clave=vic_Local.NombreCorto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

































[CondVenta.ListaEnCaptura]
(Inicio)=vic_Contrato.DAMonCot
vic_Contrato.DAMonCot=vic_Contrato.DAMonFact
vic_Contrato.DAMonFact=vic_Contrato.PenaCanc
vic_Contrato.PenaCanc=vic_Contrato.PenaImpo
vic_Contrato.PenaImpo=vic_Contrato.PenaPorc
vic_Contrato.PenaPorc=(Fin)

[CondServicio.ListaEnCaptura]
(Inicio)=vic_Contrato.DAMonCot
vic_Contrato.DAMonCot=vic_Contrato.DAMonFact
vic_Contrato.DAMonFact=vic_Contrato.AvanceObra
vic_Contrato.AvanceObra=(Fin)





[Fechas.vic_Contrato.FechaInicio]
Carpeta=Fechas
Clave=vic_Contrato.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco

[Fechas.vic_Contrato.FechaEscrituracion]
Carpeta=Fechas
Clave=vic_Contrato.FechaEscrituracion
Editar=S
ValidaNombre=S
3D=S
Tamano=22
ColorFondo=Blanco






[Acciones.BajaContrato.ListaAccionesMultiples]
(Inicio)=vic_ContratoMotivo
vic_ContratoMotivo=Actualizar Vista
Actualizar Vista=(Fin)




[Acciones.InactivaCondicion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualiza
Actualiza=(Fin)





[Acciones.ActualizarCondicion.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=FormaPos(<T>vic_Condicion<T>, vic_Condicion:vic_Condicion.ID)
Activo=S
Visible=S

[Acciones.ActualizarCondicion.Actualizar Vista]
Nombre=Actualizar Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S




[CondRenta.ListaEnCaptura]
(Inicio)=vic_Contrato.ActDepoGar
vic_Contrato.ActDepoGar=vic_Contrato.MesesDepGar
vic_Contrato.MesesDepGar=vic_Contrato.Seguro
vic_Contrato.Seguro=vic_Contrato.MesesRenAdela
vic_Contrato.MesesRenAdela=vic_Contrato.Dafrecuencia
vic_Contrato.Dafrecuencia=vic_Contrato.DAContFact
vic_Contrato.DAContFact=vic_Contrato.DAMonCot
vic_Contrato.DAMonCot=vic_Contrato.DAMonFact
vic_Contrato.DAMonFact=vic_Contrato.DAGenInc
vic_Contrato.DAGenInc=vic_Contrato.FechaRev
vic_Contrato.FechaRev=vic_Contrato.DAMesesRev
vic_Contrato.DAMesesRev=vic_Contrato.DAIndicador
vic_Contrato.DAIndicador=vic_Contrato.DAIndPor
vic_Contrato.DAIndPor=vic_Contrato.DAIndMas
vic_Contrato.DAIndMas=(Fin)


















[Fechas.ListaEnCaptura]
(Inicio)=vic_Contrato.FechaInicio
vic_Contrato.FechaInicio=vic_Contrato.FechaMiembro
vic_Contrato.FechaMiembro=vic_Contrato.FechaLFirma
vic_Contrato.FechaLFirma=vic_Contrato.FechaFirma
vic_Contrato.FechaFirma=vic_Contrato.FechaMan
vic_Contrato.FechaMan=vic_Contrato.FechaEscrituracion
vic_Contrato.FechaEscrituracion=vic_Contrato.FechaVencOp
vic_Contrato.FechaVencOp=vic_Contrato.FechaVencOb
vic_Contrato.FechaVencOb=vic_Contrato.FechaEntrega
vic_Contrato.FechaEntrega=vic_Contrato.FechaApertura
vic_Contrato.FechaApertura=vic_Contrato.FechaBaja
vic_Contrato.FechaBaja=(Fin)




















[Solicitudes.ListaEnCaptura]
(Inicio)=Gestion.Mov
Gestion.Mov=Gestion.FechaEmision
Gestion.FechaEmision=Gestion.Concepto
Gestion.Concepto=Gestion.Asunto
Gestion.Asunto=Gestion.Estatus
Gestion.Estatus=(Fin)

[Solicitudes.ListaAcciones]
(Inicio)=Expresion
Expresion=SOLImprimir
SOLImprimir=SOLPresentacion
SOLPresentacion=SOLExcel
SOLExcel=SOLPersonalizar
SOLPersonalizar=(Fin)
















[Ficha.ListaEnCaptura]
(Inicio)=Contrato.Mov
Contrato.Mov=Contrato.MovID
Contrato.MovID=Contrato.Proyecto
Contrato.Proyecto=Contrato.UEN
Contrato.UEN=Contrato.Moneda
Contrato.Moneda=Contrato.TipoCambio
Contrato.TipoCambio=Contrato.FechaEmision
Contrato.FechaEmision=Contrato.ContactoTipo
Contrato.ContactoTipo=Contrato.Cliente
Contrato.Cliente=Cte.Nombre
Cte.Nombre=Contrato.ClaseContrato
Contrato.ClaseContrato=(Fin)

















[Tramites.ListaEnCaptura]
(Inicio)=vic_ContratoGeneraTramites.NombrePlantilla
vic_ContratoGeneraTramites.NombrePlantilla=vic_ContratoGeneraTramites.Actividad
vic_ContratoGeneraTramites.Actividad=vic_ContratoGeneraTramites.Titulo
vic_ContratoGeneraTramites.Titulo=vic_ContratoGeneraTramites.Recurso
vic_ContratoGeneraTramites.Recurso=Recurso.Nombre
Recurso.Nombre=vic_ContratoGeneraTramites.Email
vic_ContratoGeneraTramites.Email=vic_ContratoGeneraTramites.Concepto
vic_ContratoGeneraTramites.Concepto=vic_ContratoGeneraTramites.Notaria
vic_ContratoGeneraTramites.Notaria=vic_Notaria.NombreCorto
vic_Notaria.NombreCorto=(Fin)

[Tramites.ListaAcciones]
(Inicio)=TRInsertaNuevo
TRInsertaNuevo=TRConsultarActividades
TRConsultarActividades=TREliminarActividades
TREliminarActividades=TREnviarGestion
TREnviarGestion=TRConsultarGestion
TRConsultarGestion=TRImprimir
TRImprimir=TRPreliminar
TRPreliminar=TRExcel
TRExcel=TRPersonalizar
TRPersonalizar=(Fin)










[Acciones.Vic_ContratoTipoRelacion]
Nombre=Vic_ContratoTipoRelacion
Boton=0
NombreDesplegar=&Tipos de Relación
EnMenu=S
TipoAccion=Formas
ClaveAccion=Vic_ContratoTipoRelacion
Activo=S
Visible=S













Menu=&Maestros









[Relaciones]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Relación de Contratos
Clave=Relaciones
Filtros=S
OtroOrden=S
Detalle=S
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Vic_ContratoRelaciones
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Vic_ContratoClaseCte
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

LlaveLocal=Vic_ContratoRelaciones.IDContrato
LlaveMaestra=Contrato.ID
IconosSubTitulo=Relación
ListaEnCaptura=(Lista)




ListaAcciones=(Lista)
ListaOrden=(Lista)
IconosNombre=<T>Relación: <T> + Vic_ContratoRelaciones:Vic_ContratoRelaciones.ID
[Relaciones.Vic_ContratoRelaciones.TipoRelacion]
Carpeta=Relaciones
Clave=Vic_ContratoRelaciones.TipoRelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco










[Acciones.RelacionesAgregar]
Nombre=RelacionesAgregar
Boton=0
NombreDesplegar=&Agregar Relación
GuardarAntes=S
Multiple=S
EnMenu=S
Activo=S
Visible=S

ListaAccionesMultiples=(Lista)
[Acciones.RelacionesAgregar.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.RelacionesAgregar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=FormaPos(<T>vic_ContratoRelaciones<T>, SQL(<T>vic_spInsertarRelacionContratoEnPantalla :nID<T>, Vic_ContratoClaseCte:Contrato.ID))<BR>EjecutarSQL(<T>vic_spEliminarRelacionContratoNoCapturada :nID<T>, Vic_ContratoClaseCte:Contrato.ID)
[Acciones.RelacionesAgregar.Actualiza Vista]
Nombre=Actualiza Vista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[Acciones.RelacionesActualiza]
Nombre=RelacionesActualiza
Boton=0
NombreDesplegar=&Actualiza Relación
GuardarAntes=S
Multiple=S
EnMenu=S
Visible=S

ListaAccionesMultiples=(Lista)
ActivoCondicion=(ConDatos(Vic_ContratoRelaciones:vic_ContratoRelaciones.ID)) y (Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
[Acciones.RelacionesActualiza.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=FormaPos(<T>vic_ContratoRelaciones<T>, Vic_ContratoRelaciones:vic_ContratoRelaciones.ID)
[Acciones.RelacionesActualiza.ActualizaVista]
Nombre=ActualizaVista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S


[Acciones.RelacionesEliminar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si Precaucion(<T>¿ Esta seguro que desea eliminar esta Relación ?<T>+ NuevaLinea + NuevaLinea + <T>Relación <T> + Vic_ContratoRelaciones:vic_ContratoRelaciones.ID, BotonSi, BotonNo ) = BotonSi<BR>Entonces EjecutarSQL(<T>vic_spEliminaRelacionContrato :nID<T>, Vic_ContratoRelaciones:vic_ContratoRelaciones.ID)<BR>Sino<BR><T><T><BR>Fin
[Acciones.RelacionesEliminar.ActualizaVista]
Nombre=ActualizaVista
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.RelacionesEliminar]
Nombre=RelacionesEliminar
Boton=0
NombreDesplegar=&Eliminar Relación
GuardarAntes=S
Multiple=S
EnMenu=S
ListaAccionesMultiples=(Lista)

Visible=S



ActivoCondicion=(ConDatos(Vic_ContratoRelaciones:vic_ContratoRelaciones.ID)) y (Vic_ContratoClaseCte:Contrato.Estatus noen (EstatusCancelado))
[Acciones.ActualizarCondicion.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)

[Condiciones.ListaEnCaptura]
(Inicio)=vic_Condicion.Estatus
vic_Condicion.Estatus=vic_Condicion.TipoCondicion
vic_Condicion.TipoCondicion=vic_Condicion.Frecuencia
vic_Condicion.Frecuencia=Art.Descripcion1
Art.Descripcion1=vic_Condicion.Importe
vic_Condicion.Importe=vic_Condicion.FechaIni
vic_Condicion.FechaIni=vic_Condicion.FechaFin
vic_Condicion.FechaFin=vic_Condicion.MonCot
vic_Condicion.MonCot=vic_Condicion.MonFact
vic_Condicion.MonFact=vic_Condicion.Agrupador
vic_Condicion.Agrupador=vic_Condicion.Concepto
vic_Condicion.Concepto=vic_Condicion.ConLocal
vic_Condicion.ConLocal=vic_Local.NombreCorto
vic_Local.NombreCorto=vic_Condicion.ConIncremento
vic_Condicion.ConIncremento=vic_Condicion.BasadoenVentas
vic_Condicion.BasadoenVentas=(Fin)

[Condiciones.ListaAcciones]
(Inicio)=ActualizarCondicion
ActualizarCondicion=InactivaCondicion
InactivaCondicion=EliminarCondicion
EliminarCondicion=CONDImprimir
CONDImprimir=CONDPresentacion
CONDPresentacion=CONDExcel
CONDExcel=CONDPersonalizar
CONDPersonalizar=(Fin)




[Acciones.RelacionesActualiza.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=ActualizaVista
ActualizaVista=(Fin)



















[Acciones.RelacionesEliminar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=ActualizaVista
ActualizaVista=(Fin)


[Relaciones.vic_ContratoRelaciones.MovIDRelacion]
Carpeta=Relaciones
Clave=vic_ContratoRelaciones.MovIDRelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Relaciones.ClienteRelacion]
Carpeta=Relaciones
Clave=ClienteRelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Relaciones.ClienteNombreRelacion]
Carpeta=Relaciones
Clave=ClienteNombreRelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[Relaciones.MovRelacion]
Carpeta=Relaciones
Clave=MovRelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco










[Acciones.RelacionesAgregar.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Actualiza Vista
Actualiza Vista=(Fin)

[Relaciones.ListaEnCaptura]
(Inicio)=Vic_ContratoRelaciones.TipoRelacion
Vic_ContratoRelaciones.TipoRelacion=vic_ContratoRelaciones.MovIDRelacion
vic_ContratoRelaciones.MovIDRelacion=MovRelacion
MovRelacion=ClienteRelacion
ClienteRelacion=ClienteNombreRelacion
ClienteNombreRelacion=(Fin)

[Relaciones.ListaOrden]
(Inicio)=vic_ContratoRelaciones.ID	(Acendente)
vic_ContratoRelaciones.ID	(Acendente)=vic_ContratoRelaciones.IDContrato	(Acendente)
vic_ContratoRelaciones.IDContrato	(Acendente)=vic_ContratoRelaciones.TipoRelacion	(Acendente)
vic_ContratoRelaciones.TipoRelacion	(Acendente)=vic_ContratoRelaciones.MovIDRelacion	(Acendente)
vic_ContratoRelaciones.MovIDRelacion	(Acendente)=vic_ContratoRelaciones.IDContratoRelacion	(Acendente)
vic_ContratoRelaciones.IDContratoRelacion	(Acendente)=(Fin)

[Relaciones.ListaAcciones]
(Inicio)=RelacionesAgregar
RelacionesAgregar=RelacionesActualiza
RelacionesActualiza=RelacionesEliminar
RelacionesEliminar=(Fin)







[Acciones.Condiciones.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Actualizar Vista
Actualizar Vista=(Fin)




[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Generales
Generales=FirFisica
FirFisica=Fiador
Fiador=Fianza
Fianza=Fechas
Fechas=CondRenta
CondRenta=CondVenta
CondVenta=CondServicio
CondServicio=Condiciones
Condiciones=Relaciones
Relaciones=Minutas
Minutas=Solicitudes
Solicitudes=Tramites
Tramites=FormaExtraValor
FormaExtraValor=Documento
Documento=Actividades
Actividades=Comentarios
Comentarios=CondicionesDet
CondicionesDet=LocalesDet
LocalesDet=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=MovCopiar
MovCopiar=Abrir
Abrir=Localizar
Localizar=Guardar
Guardar=MovPersonal
MovPersonal=Evaluaciones
Evaluaciones=Propiedades
Propiedades=Imprimir
Imprimir=RepPantalla
RepPantalla=PlantillasOffice
PlantillasOffice=FormasAnexas
FormasAnexas=Verificar
Verificar=Situacion
Situacion=Sucursal
Sucursal=Afectar
Afectar=BajaContrato
BajaContrato=Eliminar
Eliminar=Cancelar
Cancelar=Consecutivo
Consecutivo=CamposExtras
CamposExtras=Tarea
Tarea=Anexos
Anexos=AnexosDetalle
AnexosDetalle=Fuente
Fuente=AlinearIzquierda
AlinearIzquierda=Centrar
Centrar=AlinearDerecha
AlinearDerecha=ConViñetas
ConViñetas=SinViñetas
SinViñetas=Anterior
Anterior=Siguiente
Siguiente=Tiempo
Tiempo=Politica2
Politica2=PoliticaConcepto2
PoliticaConcepto2=MovPos
MovPos=Mapa
Mapa=MapaFiador
MapaFiador=Contactos
Contactos=Actualizar
Actualizar=Condiciones
Condiciones=Navegador
Navegador=Cerrar
Cerrar=vic_ContratoCat
vic_ContratoCat=vic_ContratoGrp
vic_ContratoGrp=vic_ContratoFam
vic_ContratoFam=vic_ContratoAg1
vic_ContratoAg1=vic_ContratoAg2
vic_ContratoAg2=vic_ContratoTir
vic_ContratoTir=vic_ContratoSolicitudes
vic_ContratoSolicitudes=MinutaContrato
MinutaContrato=SolicitudesContrato
SolicitudesContrato=Tramites
Tramites=HistorialLocal
HistorialLocal=CapturaVenta
CapturaVenta=Consumos
Consumos=vic_ContratoGobErog
vic_ContratoGobErog=vic_ContratoGobJur
vic_ContratoGobJur=vic_ContratoGobPre
vic_ContratoGobPre=vic_ContratoGobTemp
vic_ContratoGobTemp=vic_ContratoGobTipoProc
vic_ContratoGobTipoProc=vic_ContratoGobSubTipoProc
vic_ContratoGobSubTipoProc=vic_ContratoConcepC
vic_ContratoConcepC=Vic_ContratoTipoRelacion
Vic_ContratoTipoRelacion=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=Forma&to
Forma&to=&Ver
&Ver=&Maestros
&Maestros=&Otros
&Otros=(Fin)
