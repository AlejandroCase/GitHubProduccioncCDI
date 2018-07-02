[Forma]
Clave=EspecificarReunion
Nombre=Reunión Especifica
Icono=0
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=455
PosicionInicialArriba=399
PosicionInicialAlturaCliente=117
PosicionInicialAncho=372
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
BarraAcciones=S
AccionesCentro=S

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
Boton=0
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
EnBarraAcciones=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=<T>&Cancelar<T>
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S
EspacioPrevio=S

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)

[(Variables).ListaEnCaptura]
(Inicio)=Info.Reunion
Info.Reunion=Info.ReunionID
Info.ReunionID=(Fin)
