
[Forma]
Clave=CDITarjetaBancariaLista
Icono=0
Modulos=(Todos)
Nombre=Tarjetas Bancarias
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIDatosBancarios
CarpetaPrincipal=CDIDatosBancarios
PosicionInicialIzquierda=332
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=701
[CDIDatosBancarios]
Estilo=Hoja
Clave=CDIDatosBancarios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIDatosBancariosV
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

PestanaOtroNombre=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General


FiltroGeneral=Cliente=<T>{Info.Cliente}<T><BR>and Estatus=<T>ALTA<T>
[CDIDatosBancarios.Columnas]
Institucion=172
NoTarjeta=104
AMEX=100









Vigencia=67
VigenciaAMEX=94

NombreTarjeta=312



[CDIDatosBancarios.CDIDatosBancariosV.Institucion]
Carpeta=CDIDatosBancarios
Clave=CDIDatosBancariosV.Institucion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIDatosBancarios.CDIDatosBancariosV.NoTarjeta]
Carpeta=CDIDatosBancarios
Clave=CDIDatosBancariosV.NoTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=16
ColorFondo=Blanco

[CDIDatosBancarios.CDIDatosBancariosV.Vigencia]
Carpeta=CDIDatosBancarios
Clave=CDIDatosBancariosV.Vigencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIDatosBancarios.CDIDatosBancariosV.NombreTarjeta]
Carpeta=CDIDatosBancarios
Clave=CDIDatosBancariosV.NombreTarjeta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIDatosBancarios.ListaEnCaptura]
(Inicio)=CDIDatosBancariosV.Institucion
CDIDatosBancariosV.Institucion=CDIDatosBancariosV.NoTarjeta
CDIDatosBancariosV.NoTarjeta=CDIDatosBancariosV.Vigencia
CDIDatosBancariosV.Vigencia=CDIDatosBancariosV.NombreTarjeta
CDIDatosBancariosV.NombreTarjeta=(Fin)