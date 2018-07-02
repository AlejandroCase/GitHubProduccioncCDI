
[Forma]
Clave=CDISemanaCoordina
Icono=0
CarpetaPrincipal=CDISemanaCoordina
Modulos=(Todos)
MovModulo=CDISemanaCoordina
Nombre=Fechas y Semanas

ListaCarpetas=CDISemanaCoordina
PosicionInicialAlturaCliente=126
PosicionInicialAncho=578
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=1805
PosicionInicialArriba=277
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaColor=Plata
ExpresionesAlMostrar=asigna(info.usuario,usuario)
[CDISemanaCoordina]
Estilo=Ficha
Clave=CDISemanaCoordina
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISemanaCoordina
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S


FichaEspacioEntreLineas=10
FichaEspacioNombres=136
FichaNombres=Izquierda
FichaAlineacion=Centrado
FichaColorFondo=Plata
FichaAlineacionDerecha=S
FichaEspacioNombresAuto=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDISemanaCoordina.IdMsgSemana = <T>{Info.ID}<T>
[CDISemanaCoordina.CDISemanaCoordina.FInicio]
Carpeta=CDISemanaCoordina
Clave=CDISemanaCoordina.FInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDISemanaCoordina.CDISemanaCoordina.FFin]
Carpeta=CDISemanaCoordina
Clave=CDISemanaCoordina.FFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



Tamano=20
[CDISemanaCoordina.Columnas]
Id=64
FInicio=128
FFin=148
Semana=85
Incluir=64





[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=cerrar
Activo=S
Visible=S















EspacioPrevio=S




[Acciones.Email]
Nombre=Email
Boton=74
NombreEnBoton=S
NombreDesplegar=&Email Personal CDI
EnBarraHerramientas=S
TipoAccion=formas
ClaveAccion=CDIListaMeils
Activo=S
Visible=S








EspacioPrevio=S

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S
















EspacioPrevio=S

[Acciones.CDIConsecutivoComu]
Nombre=CDIConsecutivoComu
Boton=38
NombreEnBoton=S
NombreDesplegar=&Consecutivo Cominicados
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=formas
ClaveAccion=CDIConsecutivoComu
Activo=S
Visible=S








[Acciones.Comite]
Nombre=Comite
Boton=18
NombreEnBoton=S
NombreDesplegar=&Comite
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDICoordinacionCorreo
Visible=S


Antes=S
Activo=S
GuardarAntes=S
AntesExpresiones=GuardarCambios<BR>ASIGNA(Info.Id,CDISemanaCoordina:CDISemanaCoordina.IdMsgSemana)
[Acciones.Planes]
Nombre=Planes
Boton=78
NombreDesplegar=&Planes
EnBarraHerramientas=S
TipoAccion=formas
Activo=S
Visible=S

NombreEnBoton=S




















ClaveAccion=CDIPlanMsgs















Antes=S
AntesExpresiones=EjecutarSQL(<T>CDIPlanesMsgs  :nId<T>,CDISemanaCoordina:CDISemanaCoordina.IdMsgSemana)
[Acciones.Planes.Exec]
Nombre=Exec
Boton=0
TipoAccion=expresion
Activo=S
Visible=S


Expresion=EjecutarSQL(<T>CDIPlanesMsgs :tUsuario<T>,info.usuario)
[Acciones.Planes.actua]
Nombre=actua
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S

[Acciones.Planes.forma]
Nombre=forma
Boton=0
TipoAccion=formas
ClaveAccion=CDIPlanMsgs
Activo=S
Visible=S






















[Acciones.Grupo]
Nombre=Grupo
Boton=136
NombreDesplegar=&Grupos
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDIGrupoMsgs
Activo=S
Visible=S

NombreEnBoton=S


















Antes=S





































AntesExpresiones=EjecutarSQL(<T>CDISPGrupoMsgs  :nId<T>,CDISemanaCoordina:CDISemanaCoordina.IdMsgSemana)
[Acciones.Planes.ejecuta]
Nombre=ejecuta
Boton=0
TipoAccion=expresion
Expresion=EjecutarSQL(<T>CDIPlanesMsgs :tUsuario, :nId<T>,info.usuario,Info.Id)
Activo=S
Visible=S

[Acciones.Planes.forma1]
Nombre=forma1
Boton=0
TipoAccion=formas
ClaveAccion=CDIPlanMsgs
Activo=S
Visible=S



[Acciones.Planes.Asigna]
Nombre=Asigna
Boton=0
TipoAccion=expresion
Expresion=asigna(Info.ID,CDISemanaCoordina.IdMsgSemana)
Activo=S
Visible=S

[Acciones.Planes.ListaAccionesMultiples]
(Inicio)=Asigna
Asigna=ejecuta
ejecuta=forma1
forma1=(Fin)


















[CDISemanaCoordina.ListaEnCaptura]
(Inicio)=CDISemanaCoordina.FInicio
CDISemanaCoordina.FInicio=CDISemanaCoordina.FFin
CDISemanaCoordina.FFin=(Fin)



































[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=CDIConsecutivoComu
CDIConsecutivoComu=Comite
Comite=Planes
Planes=Grupo
Grupo=Email
Email=(Fin)
