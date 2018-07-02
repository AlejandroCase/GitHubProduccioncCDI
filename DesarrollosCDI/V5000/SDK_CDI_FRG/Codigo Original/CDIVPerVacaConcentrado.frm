
[Forma]
Clave=CDIVPerVacaConcentrado
Icono=0
CarpetaPrincipal=CDIVPerVacaConcentrado
Modulos=(Todos)
MovModulo=CDIVPerVacaConcentrado
Nombre=Personal Vacaciones General

ListaCarpetas=CDIVPerVacaConcentrado
PosicionInicialIzquierda=388
PosicionInicialArriba=226
PosicionInicialAlturaCliente=276
PosicionInicialAncho=590
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIVPerVacaConcentrado]
Estilo=Hoja
Clave=CDIVPerVacaConcentrado
ValidarCampos=S
BusquedaRapidaControles=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIVPerVacaConcentrado
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

ListaCamposAValidar=(Lista)
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
CarpetaVisible=S


MenuLocal=S
ListaAcciones=Detalle Anual
ExpAntesRefrescar=asigna(info.personal,CDIVPerVacaConcentrado:CDIVPerVacaConcentrado.Personal)
HojaOrdenarColumnas=S
OtroOrden=S
ListaOrden=CDIVPerVacaConcentrado.Personal<TAB>(Acendente)
[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.Estatus]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.TipoContrato]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.TipoContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.Sindicato]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.Sindicato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.FechaAlta]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.FechaAlta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.FechaAntiguedad]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.FechaAntiguedad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.Cargos]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.Cargos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.Abonos]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.Abonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDIVPerVacaConcentrado.Columnas]
Estatus=46
TipoContrato=67
Sindicato=70
FechaAlta=67
FechaAntiguedad=94
Cargos=38
Abonos=42
Diferencia=50



Personal=64
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



[Acciones.Detalle Anual]
Nombre=Detalle Anual
Boton=0
NombreDesplegar=&Detalle Anual
EnMenu=S
TipoAccion=formas
ClaveAccion=CDIVacACumuladas
Activo=S
Antes=S
Visible=S





















AntesExpresiones=asigna(info.personal,CDIVPerVacaConcentrado:CDIVPerVacaConcentrado.Personal)










[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.Diferencia]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.Diferencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[CDIVPerVacaConcentrado.CDIVPerVacaConcentrado.Personal]
Carpeta=CDIVPerVacaConcentrado
Clave=CDIVPerVacaConcentrado.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[Acciones.Enviar a Excel]
Nombre=Enviar a Excel
Boton=115
NombreDesplegar=Enviar a Excel
EnBarraHerramientas=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S








[CDIVPerVacaConcentrado.ListaEnCaptura]
(Inicio)=CDIVPerVacaConcentrado.Personal
CDIVPerVacaConcentrado.Personal=CDIVPerVacaConcentrado.Estatus
CDIVPerVacaConcentrado.Estatus=CDIVPerVacaConcentrado.TipoContrato
CDIVPerVacaConcentrado.TipoContrato=CDIVPerVacaConcentrado.Sindicato
CDIVPerVacaConcentrado.Sindicato=CDIVPerVacaConcentrado.FechaAlta
CDIVPerVacaConcentrado.FechaAlta=CDIVPerVacaConcentrado.FechaAntiguedad
CDIVPerVacaConcentrado.FechaAntiguedad=CDIVPerVacaConcentrado.Cargos
CDIVPerVacaConcentrado.Cargos=CDIVPerVacaConcentrado.Abonos
CDIVPerVacaConcentrado.Abonos=CDIVPerVacaConcentrado.Diferencia
CDIVPerVacaConcentrado.Diferencia=(Fin)

[CDIVPerVacaConcentrado.ListaCamposAValidar]
(Inicio)=CDIVPerVacaConcentrado.Personal
CDIVPerVacaConcentrado.Personal=CDIVPerVacaConcentrado.Nombre
CDIVPerVacaConcentrado.Nombre=CDIVPerVacaConcentrado.Departamento
CDIVPerVacaConcentrado.Departamento=(Fin)





















[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Enviar a Excel
Enviar a Excel=(Fin)
