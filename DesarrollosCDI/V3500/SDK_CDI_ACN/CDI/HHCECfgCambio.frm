
[Forma]
Clave=HHCECfgCambio
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Movimientos Cambio/Pospuesto
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=506
PosicionInicialArriba=384
PosicionInicialAlturaCliente=158
PosicionInicialAncho=267
ListaAcciones=Aceptar
Comentarios=Info.Empresa
[Lista]
Estilo=Ficha
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=HHCECfgCambio
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=HHCECfgCambio.Empresa = <T>{Info.Empresa}<T>
[Lista.HHCECfgCambio.MovAltaPospuesto]
Carpeta=Lista
Clave=HHCECfgCambio.MovAltaPospuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCECfgCambio.MovBajaPospuesto]
Carpeta=Lista
Clave=HHCECfgCambio.MovBajaPospuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCECfgCambio.MovAltaCambio]
Carpeta=Lista
Clave=HHCECfgCambio.MovAltaCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCECfgCambio.MovBajaCambio]
Carpeta=Lista
Clave=HHCECfgCambio.MovBajaCambio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.ListaEnCaptura]
(Inicio)=HHCECfgCambio.MovAltaPospuesto
HHCECfgCambio.MovAltaPospuesto=HHCECfgCambio.MovBajaPospuesto
HHCECfgCambio.MovBajaPospuesto=HHCECfgCambio.MovAltaCambio
HHCECfgCambio.MovAltaCambio=HHCECfgCambio.MovBajaCambio
HHCECfgCambio.MovBajaCambio=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
