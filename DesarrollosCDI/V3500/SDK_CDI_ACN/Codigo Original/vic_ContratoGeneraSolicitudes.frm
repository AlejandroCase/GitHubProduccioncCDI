
[Forma]
Clave=vic_ContratoGeneraSolicitudes
Icono=4
Modulos=(Todos)
Nombre=Solicitud
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=206
PosicionInicialArriba=168
PosicionInicialAlturaCliente=398
PosicionInicialAncho=612
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Comentarios=<T>Contrato: <T> +Info.ID
ListaAcciones=(Lista)
IniciarAgregando=S
VentanaExclusiva=S
[Lista]
Estilo=Ficha
PestanaOtroNombre=S
PestanaNombre=Solicitudes
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGeneraSolicitudes
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

CarpetaVisible=S

[Lista.vic_ContratoGeneraSolicitudes.Titulo]
Carpeta=Lista
Clave=vic_ContratoGeneraSolicitudes.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco
ColorFuente=Negro

Efectos=[Negritas]
[Lista.vic_ContratoGeneraSolicitudes.TipoSolicitud]
Carpeta=Lista
Clave=vic_ContratoGeneraSolicitudes.TipoSolicitud
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

Efectos=[Negritas]
[Lista.vic_ContratoGeneraSolicitudes.Fecha]
Carpeta=Lista
Clave=vic_ContratoGeneraSolicitudes.Fecha
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

Tamano=28
Efectos=[Negritas]
[Lista.vic_ContratoGeneraSolicitudes.Persona]
Carpeta=Lista
Clave=vic_ContratoGeneraSolicitudes.Persona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=45
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_ContratoGeneraSolicitudes.Telefonos]
Carpeta=Lista
Clave=vic_ContratoGeneraSolicitudes.Telefonos
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

Pegado=S
[Lista.vic_ContratoGeneraSolicitudes.Email]
Carpeta=Lista
Clave=vic_ContratoGeneraSolicitudes.Email
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco
ColorFuente=Negro

[Lista.vic_ContratoGeneraSolicitudes.Texto]
Carpeta=Lista
Clave=vic_ContratoGeneraSolicitudes.Texto
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=80x15
ColorFondo=Blanco
ColorFuente=Negro









[Acciones.Afectar]
Nombre=Afectar
Boton=7
NombreDesplegar=&Generar Solicitud
GuardarAntes=S
EnBarraHerramientas=S
Activo=S
Visible=S




NombreEnBoton=S
Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.Cancelar]
Nombre=Cancelar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)































[Acciones.Afectar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Caso Confirmacion(<T>La solicutud se enviará a Gestión<T>,BotonAceptar,BotonCancelar)<BR>Es BotonAceptar Entonces<BR>ProcesarSQL(<T>vic_spContratoSolicitudes :nIDContrato, :nID, :tTitulo, :tTipoSolicitud, :fFecha,<BR>:tPersona, :tTelefonos, :tEmail, :tTexto, :tUsuario, :nEstacionTrabajo<T>, vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.IDContrato,<BR>vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.ID, vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.Titulo,<BR>vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.TipoSolicitud, vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.Fecha,<BR>vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.Persona, vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.Telefonos,<BR>vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.Email, vic_ContratoGeneraSolicitudes:vic_ContratoGeneraSolicitudes.Texto, Usuario, EstacionTrabajo)<BR>AbortarOperacion<BR>Es BotonCancelar  Entonces AbortarOperacion<BR>Sino <T><T><BR>Fin
[Acciones.Afectar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[Lista.ListaEnCaptura]
(Inicio)=vic_ContratoGeneraSolicitudes.TipoSolicitud
vic_ContratoGeneraSolicitudes.TipoSolicitud=vic_ContratoGeneraSolicitudes.Fecha
vic_ContratoGeneraSolicitudes.Fecha=vic_ContratoGeneraSolicitudes.Persona
vic_ContratoGeneraSolicitudes.Persona=vic_ContratoGeneraSolicitudes.Telefonos
vic_ContratoGeneraSolicitudes.Telefonos=vic_ContratoGeneraSolicitudes.Email
vic_ContratoGeneraSolicitudes.Email=vic_ContratoGeneraSolicitudes.Titulo
vic_ContratoGeneraSolicitudes.Titulo=vic_ContratoGeneraSolicitudes.Texto
vic_ContratoGeneraSolicitudes.Texto=(Fin)






[Acciones.Afectar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Aceptar
Aceptar=(Fin)









[Forma.ListaAcciones]
(Inicio)=Afectar
Afectar=Cancelar
Cancelar=(Fin)
