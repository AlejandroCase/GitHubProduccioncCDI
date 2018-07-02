[Forma]
Clave=CampanaCorreoAuto
Nombre=Correos Automáticos
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=487
PosicionInicialArriba=340
PosicionInicialAlturaCliente=484
PosicionInicialAncho=945
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
Comentarios=Lista(Info.Mov, Info.MovID, Info.Tipo)

[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CampanaCorreoAuto
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
HojaAjustarColumnas=S
FiltroGeneral=CampanaCorreoAuto.ID={Info.ID}

[Lista.CampanaCorreoAuto.Frecuencia]
Carpeta=Lista
Clave=CampanaCorreoAuto.Frecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaCorreoAuto.SiguienteEnvio]
Carpeta=Lista
Clave=CampanaCorreoAuto.SiguienteEnvio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaCorreoAuto.SituacionEsp]
Carpeta=Lista
Clave=CampanaCorreoAuto.SituacionEsp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaCorreoAuto.Pagina]
Carpeta=Lista
Clave=CampanaCorreoAuto.Pagina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CampanaCorreoAuto.Asunto]
Carpeta=Lista
Clave=CampanaCorreoAuto.Asunto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Frecuencia=124
SiguienteEnvio=83
SituacionEsp=133
Pagina=74
Asunto=409
Estatus=80

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

[Lista.CampanaCorreoAuto.Estatus]
Carpeta=Lista
Clave=CampanaCorreoAuto.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro
EditarConBloqueo=S

[Lista.ListaEnCaptura]
(Inicio)=CampanaCorreoAuto.Frecuencia
CampanaCorreoAuto.Frecuencia=CampanaCorreoAuto.SiguienteEnvio
CampanaCorreoAuto.SiguienteEnvio=CampanaCorreoAuto.SituacionEsp
CampanaCorreoAuto.SituacionEsp=CampanaCorreoAuto.Pagina
CampanaCorreoAuto.Pagina=CampanaCorreoAuto.Asunto
CampanaCorreoAuto.Asunto=CampanaCorreoAuto.Estatus
CampanaCorreoAuto.Estatus=(Fin)
