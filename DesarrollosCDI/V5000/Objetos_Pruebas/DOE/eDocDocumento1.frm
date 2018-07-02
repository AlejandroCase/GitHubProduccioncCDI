
[Forma]
Clave=eDocDocumento1
Icono=0
Modulos=(Todos)
Nombre=Documento Electrónico

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Modulo,Info.Descripcion)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=262
PosicionInicialArriba=140
PosicionInicialAlturaCliente=413
PosicionInicialAncho=755
[Ficha]
Estilo=Ficha
Clave=Ficha
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=eDocDocumento1
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
ListaEnCaptura=eDocDocumento1.Documento
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
AlinearTodaCarpeta=S

FiltroGeneral=eDocDocumento1.Modulo = {Comillas(Info.Modulo)} AND eDocDocumento1.eDoc = {Comillas(Info.Descripcion)}
[Ficha.eDocDocumento1.Documento]
Carpeta=Ficha
Clave=eDocDocumento1.Documento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

GuardarAntes=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S













[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
