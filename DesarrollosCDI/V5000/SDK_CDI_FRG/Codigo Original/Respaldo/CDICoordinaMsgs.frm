
[Forma]
Clave=CDICoordinaMsgs
Icono=0
CarpetaPrincipal=CDICoordinaMsgs
Modulos=(Todos)
MovModulo=CDICoordinaMsgs
Nombre=Coordinación de Campamento

ListaCarpetas=CDICoordinaMsgs
PosicionInicialAlturaCliente=219
PosicionInicialAncho=642
PosicionInicialIzquierda=368
PosicionInicialArriba=191
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
ExpresionesAlMostrar=asigna(Info.usuario,usuario)
[CDICoordinaMsgs]
Estilo=Hoja
Clave=CDICoordinaMsgs
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICoordinaMsgs
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
ListaEnCaptura=(Lista)



HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
Filtros=S
HojaColorFondo=Plata
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDICoordinaMsgs.IdMsg =<T>{Info.Id}<T>  AND<BR>CDICoordinaMsgs.Comite =<T>{Info.CoordinaMsgs}<T>
[CDICoordinaMsgs.CDICoordinaMsgs.Coordinacion]
Carpeta=CDICoordinaMsgs
Clave=CDICoordinaMsgs.Coordinacion
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco

[CDICoordinaMsgs.CDICoordinaMsgs.Incluir]
Carpeta=CDICoordinaMsgs
Clave=CDICoordinaMsgs.Incluir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EditarConBloqueo=N
[CDICoordinaMsgs.Columnas]
Id=64
Coordinacion=234
Incluir=64






Usuario=101
Comite=304
[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

NombreEnBoton=S
EspacioPrevio=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S























NombreEnBoton=S
EspacioPrevio=S

[CDICoordinaMsgs.CDICoordinaMsgs.Comite]
Carpeta=CDICoordinaMsgs
Clave=CDICoordinaMsgs.Comite
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[Acciones.Guardar.GUARDAR]
Nombre=GUARDAR
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=GUARDAR
GUARDAR=EXPRESA
EXPRESA=(Fin)





































[Acciones.CambiarForma.Cambia]
Nombre=Cambia
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>exec CDISeleccionCDICoordinaMsgs :nId<T>, CDICoordinaMsgs:CDICoordinaMsgs.IdMsg)
[Acciones.CambiarForma.Actualiz]
Nombre=Actualiz
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.CambiarForma]
Nombre=CambiarForma
Boton=18
NombreDesplegar=Seleccinar Todo
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S




EspacioPrevio=S

[Acciones.Quitar.Quita]
Nombre=Quita
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>Exec CDIQuitarSeleccionCDICoordinaMsgs  :nId<T>,CDICoordinaMsgs:CDICoordinaMsgs.IdMsg)
[Acciones.Quitar.actuatodo]
Nombre=actuatodo
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Quitar]
Nombre=Quitar
Boton=50
NombreEnBoton=S
NombreDesplegar=&Quitar Todo
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S




EspacioPrevio=S




[Acciones.CambiarForma.ListaAccionesMultiples]
(Inicio)=Cambia
Cambia=Actualiz
Actualiz=(Fin)


[Acciones.Quitar.ListaAccionesMultiples]
(Inicio)=Quita
Quita=actuatodo
actuatodo=(Fin)








[CDICoordinaMsgs.ListaEnCaptura]
(Inicio)=CDICoordinaMsgs.Coordinacion
CDICoordinaMsgs.Coordinacion=CDICoordinaMsgs.Incluir
CDICoordinaMsgs.Incluir=CDICoordinaMsgs.Comite
CDICoordinaMsgs.Comite=(Fin)



[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=CambiarForma
CambiarForma=Quitar
Quitar=(Fin)
