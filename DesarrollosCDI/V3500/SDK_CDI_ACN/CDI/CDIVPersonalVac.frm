
[Forma]
Clave=CDIVPersonalVac
Icono=0
CarpetaPrincipal=CDIVPersonalVac
Modulos=(Todos)
MovModulo=CDIVPersonalVac
Nombre=Personal

ListaCarpetas=CDIVPersonalVac
PosicionInicialAlturaCliente=580
PosicionInicialAncho=1122
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=122
PosicionInicialArriba=74
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
Totalizadores=S
PosicionSec1=503
[CDIVPersonalVac]
Estilo=Hoja
Clave=CDIVPersonalVac
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVPersonalVac
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

ValidarCampos=S
ListaCamposAValidar=(Lista)







OtroOrden=S
ListaOrden=CDIVPersonalVac.Ejercicio<TAB>(Decendente)
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Personal=<T>{info.personal}<T>
[CDIVPersonalVac.CDIVPersonalVac.TipoContrato]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.TipoContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVPersonalVac.CDIVPersonalVac.Sindicato]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.Sindicato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVPersonalVac.CDIVPersonalVac.Ejercicio]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVac.CDIVPersonalVac.Periodo]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIVPersonalVac.CDIVPersonalVac.CargosU]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.CargosU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVac.CDIVPersonalVac.AbonosU]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.AbonosU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVac.CDIVPersonalVac.Diferencia]
Carpeta=CDIVPersonalVac
Clave=CDIVPersonalVac.Diferencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPersonalVac.Columnas]
Personal=64
Nombre=173
Proyecto=79
Departamento=135
FechaAlta=65
FechaAntiguedad=96
Estatus=45
TipoContrato=69
Sindicato=66
Ejercicio=48
Periodo=40
Moneda=64
CargosU=47
AbonosU=47
Diferencia=52

[Acciones.Abrir]
Nombre=Abrir
Boton=2
NombreDesplegar=&Abrir
EnBarraHerramientas=S
TipoAccion=controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S
EspacioPrevio=S

DocNuevo=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[(Carpeta Abrir)]
Estilo=Iconos
Pestana=S
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIVPersonalVac
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosNombre=CDIVPersonalVac:CDIVPersonalVac.Personal
IconosSubTitulo=Personal
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Negro
CarpetaVisible=S













































[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
CarpetaVisible=S

Totalizadores1=Cargos<BR>Abonos
Totalizadores2=suma(CDIVPersonalVac:CDIVPersonalVac.CargosU)<BR>suma(CDIVPersonalVac:CDIVPersonalVac.AbonosU)
TotCarpetaRenglones=CDIVPersonalVac
TotExpresionesEnSumas=S
TotAlCambiar=S




ListaEnCaptura=(Lista)


[(Carpeta Totalizadores).Cargos]
Carpeta=(Carpeta Totalizadores)
Clave=Cargos
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata

[(Carpeta Totalizadores).Abonos]
Carpeta=(Carpeta Totalizadores)
Clave=Abonos
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata




[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Cargos
Cargos=Abonos
Abonos=(Fin)









[CDIVPersonalVac.ListaEnCaptura]
(Inicio)=CDIVPersonalVac.TipoContrato
CDIVPersonalVac.TipoContrato=CDIVPersonalVac.Sindicato
CDIVPersonalVac.Sindicato=CDIVPersonalVac.Ejercicio
CDIVPersonalVac.Ejercicio=CDIVPersonalVac.Periodo
CDIVPersonalVac.Periodo=CDIVPersonalVac.CargosU
CDIVPersonalVac.CargosU=CDIVPersonalVac.AbonosU
CDIVPersonalVac.AbonosU=CDIVPersonalVac.Diferencia
CDIVPersonalVac.Diferencia=(Fin)

[CDIVPersonalVac.ListaCamposAValidar]
(Inicio)=CDIVPersonalVac.Personal
CDIVPersonalVac.Personal=CDIVPersonalVac.Nombre
CDIVPersonalVac.Nombre=CDIVPersonalVac.Proyecto
CDIVPersonalVac.Proyecto=CDIVPersonalVac.Departamento
CDIVPersonalVac.Departamento=CDIVPersonalVac.FechaAlta
CDIVPersonalVac.FechaAlta=CDIVPersonalVac.FechaAntiguedad
CDIVPersonalVac.FechaAntiguedad=CDIVPersonalVac.Estatus
CDIVPersonalVac.Estatus=CDIVPersonalVac.TipoContrato
CDIVPersonalVac.TipoContrato=CDIVPersonalVac.Sindicato
CDIVPersonalVac.Sindicato=(Fin)





[Forma.ListaAcciones]
(Inicio)=Abrir
Abrir=Cerrar
Cerrar=(Fin)
