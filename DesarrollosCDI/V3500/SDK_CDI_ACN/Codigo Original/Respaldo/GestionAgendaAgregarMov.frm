[Forma]
Clave=GestionAgendaAgregarMov
Nombre=Agregar a la Agenda
Icono=0
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=802
PosicionInicialArriba=538
PosicionInicialAlturaCliente=87
PosicionInicialAncho=315
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
AccionesDivision=S
MovModulo=GES
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
Comentarios=Lista(Info.Mov, Info.MovID)
ExpresionesAlMostrar=Asigna(Filtro.Mov, Nulo)

[(Variables)]
Estilo=Ficha
Clave=(Variables)
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
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
CarpetaVisible=S
ListaEnCaptura=(Lista)

[(Variables).Info.Reunion]
Carpeta=(Variables)
Clave=Info.Reunion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.ReunionID]
Carpeta=(Variables)
Clave=Info.ReunionID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
EnBarraAcciones=S
NombreEnBoton=S
Antes=S
DespuesGuardar=S
AntesExpresiones=EjecutarSQL(<T>spGestionAgendaAgregarMov :tEmpresa, :nSucursal, :tModulo, :nID, :tReunion, :tReunionID<T>, Empresa, Sucursal, Info.Modulo, Info.ID, Info.Reunion, Info.ReunionID)

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreDesplegar=<T>&Cancelar<T>
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S
EnBarraAcciones=S
NombreEnBoton=S

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)

[(Variables).ListaEnCaptura]
(Inicio)=Info.Reunion
Info.Reunion=Info.ReunionID
Info.ReunionID=(Fin)
