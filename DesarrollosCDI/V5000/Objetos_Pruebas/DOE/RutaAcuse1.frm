
[Forma]
Clave=RutaAcuse1
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Acuse Cancelación
PosicionInicialIzquierda=487
PosicionInicialArriba=283
PosicionInicialAlturaCliente=96
PosicionInicialAncho=500

ListaCarpetas=Lista
CarpetaPrincipal=Lista
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[Lista]
Estilo=Ficha
Pestana=S
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=RutaAcuse1
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
ListaEnCaptura=RutaAcuse1.Ruta
CarpetaVisible=S

PermiteEditar=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
PestanaOtroNombre=S
PestanaNombre=Ruta Acuse
FiltroGeneral=Estacion = {EstacionTrabajo}
[Acciones.Aceptar.Actualizar]
Nombre=Actualizar
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>EXEC spAsignarRutaCFD :tModulo,:nID,:tRuta<T>,Info.Modulo,Info.ID,RutaAcuse1:RutaAcuse1.Ruta)
[Acciones.Aceptar.Acepta]
Nombre=Acepta
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S



ConCondicion=S
EjecucionConError=S
EjecucionCondicion=Mayusculas(Derecha(RutaAcuse1:RutaAcuse1.Ruta , 4)) en (<T>.XML<T>,<T>.PDF<T>)
EjecucionMensaje=<T>Solo se permiten archivos de tipo XML ó PDF<T>
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S



























[Lista.RutaAcuse1.Ruta]
Carpeta=Lista
Clave=RutaAcuse1.Ruta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco








[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Actualizar
Actualizar=Acepta
Acepta=(Fin)







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
