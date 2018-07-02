
[Forma]
Clave=vic_ConceptosDefinicionD_Det_Resultados
Icono=4
Modulos=(Todos)
Nombre=Resultados

ListaCarpetas=Resultados
CarpetaPrincipal=Resultados
PosicionInicialIzquierda=408
PosicionInicialArriba=297
PosicionInicialAlturaCliente=236
PosicionInicialAncho=336
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=Cerrar
Comentarios=Lista(Info.ID, <T>Campo: <T> + Info.Campo)
VentanaExclusiva=S
[Resultados]
Estilo=Ficha
Clave=Resultados
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ConceptosDefinicionD_Det
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=vic_ConceptosDefinicionD_Det.ID =<T>{Info.ID}<T><BR>AND vic_ConceptosDefinicionD_Det.Campo = <T>{Info.Campo}<T>
[Resultados.vic_ConceptosDefinicionD_Det.VEPromedio]
Carpeta=Resultados
Clave=vic_ConceptosDefinicionD_Det.VEPromedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFuente=Negro

Tamano=20
Efectos=[Negritas]
[Resultados.vic_ConceptosDefinicionD_Det.VESuma]
Carpeta=Resultados
Clave=vic_ConceptosDefinicionD_Det.VESuma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFuente=Negro

Tamano=20
Efectos=[Negritas]
[Resultados.vic_ConceptosDefinicionD_Det.VDPromedio]
Carpeta=Resultados
Clave=vic_ConceptosDefinicionD_Det.VDPromedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFuente=Negro

Tamano=20
Efectos=[Negritas]
[Resultados.vic_ConceptosDefinicionD_Det.VDSuma]
Carpeta=Resultados
Clave=vic_ConceptosDefinicionD_Det.VDSuma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFuente=Negro

Tamano=20
EspacioPrevio=S
Efectos=[Negritas]
[Resultados.vic_ConceptosDefinicionD_Det.VPSuma]
Carpeta=Resultados
Clave=vic_ConceptosDefinicionD_Det.VPSuma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFuente=Negro

Tamano=20
EspacioPrevio=S
Efectos=[Negritas]
[Resultados.vic_ConceptosDefinicionD_Det.VPPromedio]
Carpeta=Resultados
Clave=vic_ConceptosDefinicionD_Det.VPPromedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFuente=Negro

Tamano=20
Efectos=[Negritas]
[Resultados.Columnas]
VEPromedio=64
VESuma=64
VDPromedio=64
VDSuma=64
VPSuma=64
VPPromedio=64






[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S















[Resultados.ListaEnCaptura]
(Inicio)=vic_ConceptosDefinicionD_Det.VESuma
vic_ConceptosDefinicionD_Det.VESuma=vic_ConceptosDefinicionD_Det.VEPromedio
vic_ConceptosDefinicionD_Det.VEPromedio=vic_ConceptosDefinicionD_Det.VDSuma
vic_ConceptosDefinicionD_Det.VDSuma=vic_ConceptosDefinicionD_Det.VDPromedio
vic_ConceptosDefinicionD_Det.VDPromedio=vic_ConceptosDefinicionD_Det.VPSuma
vic_ConceptosDefinicionD_Det.VPSuma=vic_ConceptosDefinicionD_Det.VPPromedio
vic_ConceptosDefinicionD_Det.VPPromedio=(Fin)
