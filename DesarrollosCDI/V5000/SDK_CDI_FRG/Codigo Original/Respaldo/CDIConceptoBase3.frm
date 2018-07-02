
[Forma]
Clave=CDIConceptoBase3
Icono=0
CarpetaPrincipal=CDIConceptoBase3
Modulos=(Todos)
Nombre=Preferencias

ListaCarpetas=CDIConceptoBase3
PosicionInicialAlturaCliente=224
PosicionInicialAncho=293
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
PosicionInicialIzquierda=462
PosicionInicialArriba=193
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
[CDIConceptoBase3]
Estilo=Hoja
Clave=CDIConceptoBase3
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIConceptoBase3
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

OtroOrden=S
PermiteEditar=S
ListaOrden=CDIConceptoBase3.Concepto<TAB>(Acendente)
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGrupo1=CDIConceptoBase3.Usuario
HojaColorFondo=Plata
FiltroGeneral=Usuario=<T>{Info.Usuario}<T><BR>and estacion =<T>{Info.Estaciontrabajo}<T>
[CDIConceptoBase3.CDIConceptoBase3.Concepto]
Carpeta=CDIConceptoBase3
Clave=CDIConceptoBase3.Concepto
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[CDIConceptoBase3.CDIConceptoBase3.Activo]
Carpeta=CDIConceptoBase3
Clave=CDIConceptoBase3.Activo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EditarConBloqueo=N
IgnoraFlujo=N
[CDIConceptoBase3.Columnas]
Concepto=124
Activo=64

Usuario=304
[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=Aceptar
Activo=S
Visible=S





























































































































































[CDIConceptoBase3.ListaEnCaptura]
(Inicio)=CDIConceptoBase3.Concepto
CDIConceptoBase3.Concepto=CDIConceptoBase3.Activo
CDIConceptoBase3.Activo=(Fin)
