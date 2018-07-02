
[Forma]
Clave=CDIAsisLogReg
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Registro Personal en Log

ListaCarpetas=CDIAsisLogReg
CarpetaPrincipal=CDIAsisLogReg
PosicionInicialAlturaCliente=173
PosicionInicialAncho=300
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=533
PosicionInicialArriba=278
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Procesar
IniciarAgregando=S
[CDIAsisLogReg]
Estilo=Ficha
Clave=CDIAsisLogReg
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAsisLogReg
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

CarpetaVisible=S

[CDIAsisLogReg.CDIAsisLogReg.Personal]
Carpeta=CDIAsisLogReg
Clave=CDIAsisLogReg.Personal
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIAsisLogReg.CDIAsisLogReg.FechaEmision]
Carpeta=CDIAsisLogReg
Clave=CDIAsisLogReg.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=15
[CDIAsisLogReg.CDIAsisLogReg.HoraRegistro]
Carpeta=CDIAsisLogReg
Clave=CDIAsisLogReg.HoraRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco

[CDIAsisLogReg.CDIAsisLogReg.TipoRegistro]
Carpeta=CDIAsisLogReg
Clave=CDIAsisLogReg.TipoRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[Acciones.Procesar]
Nombre=Procesar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Procesar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
EjecucionCondicion=condatos(CDIAsisLogReg:CDIAsisLogReg.FechaEmision) y condatos(CDIAsisLogReg:CDIAsisLogReg.HoraRegistro) y condatos(CDIAsisLogReg:CDIAsisLogReg.TipoRegistro)

[CDIAsisLogReg.ListaEnCaptura]
(Inicio)=CDIAsisLogReg.Personal
CDIAsisLogReg.Personal=CDIAsisLogReg.FechaEmision
CDIAsisLogReg.FechaEmision=CDIAsisLogReg.HoraRegistro
CDIAsisLogReg.HoraRegistro=CDIAsisLogReg.TipoRegistro
CDIAsisLogReg.TipoRegistro=(Fin)


































[Acciones.Procesar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=ejecutarSql(<T>XpCDIregistroAsiste :nI, :tE, :tU, :nE<T>,CDIAsisLogReg:CDIAsisLogReg.IdR,Empresa, usuario, EstacionTrabajo)
[Acciones.Procesar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S



[Acciones.Procesar.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S





[Acciones.Procesar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Actualizar Forma
Actualizar Forma=Cerrar
Cerrar=(Fin)















[Forma.ListaAcciones]
(Inicio)=Procesar
Procesar=Guardar Cambios
Guardar Cambios=(Fin)
