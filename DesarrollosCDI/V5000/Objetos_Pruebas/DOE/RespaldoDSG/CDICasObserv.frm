
[Forma]
Clave=CDICasObserv
Icono=0
Modulos=(Todos)
Nombre=Observaciones
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICasObserv
CarpetaPrincipal=CDICasObserv
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=475
PosicionInicialArriba=321
PosicionInicialAlturaCliente=88
PosicionInicialAncho=415
Comentarios=Info.mov+<T> Casillero: <T>+Info.cdicasal
[CDICasObserv]
Estilo=Ficha
Clave=CDICasObserv
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
ListaEnCaptura=Info.Observaciones
CarpetaVisible=S

[CDICasObserv.Info.Observaciones]
Carpeta=CDICasObserv
Clave=Info.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Aceptar
Multiple=S
EnBarraHerramientas=S
TipoAccion=Controles Captura
Activo=S
Visible=S

ListaAccionesMultiples=(Lista)

[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S






[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

















Multiple=S
ListaAccionesMultiples=(Lista)

[Acciones.Cancelar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=abortaroperacion

[Acciones.Cancelar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Cerrar
Cerrar=(Fin)






[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S









Expresion=caso info.mov es <T>DesAsignar<T><BR>  entonces<BR>     ProcesarSql(<T>CDIEntregaCasillero :nId, :tUs, :tOb<T>, Info.Numero, Usuario, Info.observaciones)<BR>  Info.mov es <T>BAJA<T><BR>  entonces<BR>           Sql(<T>CDIBajaCasilleroDisp :nId, :tUs, :tObs<T>, Info.numero, usuario, Info.observaciones)<BR>  Info.mov es <T>Reactiva<T><BR>           Sql(<T>CDIAltaCasilleroDisp :nId, :tUs, :tObs<T>, Info.numero, usuario, Info.Observaciones)<BR>sino<BR>informacion(info.mov)<BR>informacion(info.numero)<BR>informacion(info.cdicasal)<BR>fin
[Acciones.Aceptar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S









[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=Cerrar
Cerrar=(Fin)



































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
