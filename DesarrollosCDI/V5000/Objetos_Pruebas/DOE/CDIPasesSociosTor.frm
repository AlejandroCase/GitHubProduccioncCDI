
[Forma]
Clave=CDIPasesSociosTor
Icono=0
Modulos=(Todos)
Nombre=Pase Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIPasesSociosTor
PosicionInicialIzquierda=-3
PosicionInicialArriba=4
PosicionInicialAlturaCliente=746
PosicionInicialAncho=1311
PosicionCol1=551
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Guardar Cambios
BarraAcciones=S
PosicionSec1=586
BarraAyuda1=CDIPasesSociosTor:Cte.Cliente
BarraAyuda2=CDIPasesSociosTor:Cte.Nombre
BarraHerramientas=S
SinTransacciones=S
PosicionCol2=553
[CDIPasesSociosTor]
Estilo=Ficha
Clave=CDIPasesSociosTor
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPasesSociosTor
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

PermiteEditar=S
[CDIPasesSociosTor.CDIPasesSociosTor.Socio]
Carpeta=CDIPasesSociosTor
Clave=CDIPasesSociosTor.Socio
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

IgnoraFlujo=S
EditarConBloqueo=N
[CDIPasesSociosTor2]
Estilo=Ficha
Clave=CDIPasesSociosTor2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIPasesSociosTor
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S









ListaEnCaptura=(Lista)

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ExpAntesRefrescar=actualizarvista
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroGeneral=id={info.id}
FiltroRespetar=S
FiltroTipo=General
[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76

[CDIPasesSociosTor2.Cte.RutaImagen]
Carpeta=CDIPasesSociosTor2
Clave=Cte.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIPasesSociosTor2.Columnas]
RutaImagen=604





[CDIPasesSociosTor2.Foto]
Carpeta=CDIPasesSociosTor2
Clave=Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
Tamano=50x30
ColorFondo=Blanco








SinRecapitular=S
[(Variables).Info.Socio]
Carpeta=(Variables)
Clave=Info.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco








AccionAlEnter=Guardar
AccionAlEnterBloquearAvance=S

[Acciones.Guardar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=ASigna(CDIPasesSociosTor:CDIPasesSociosTor.Socio,Info.Socio)

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=25
NombreEnBoton=S
NombreDesplegar=Pase
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S







EspacioPrevio=S









Multiple=S
ListaAccionesMultiples=(Lista)

RefrescarDespues=S
DocNuevo=S
ConAutoEjecutar=S
AutoEjecutarExpresion=2
[Acciones.Guardar Cambios.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[RolesCDI.Columnas]
NIPCDI=147
Catalogo=174
Rol=136

[(Carpeta Abrir).Columnas]
0=106
1=283
2=137
3=-2
4=-2



















[CDIPasesSociosTor.NombreC]
Carpeta=CDIPasesSociosTor
Clave=NombreC
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CDIPasesSociosTor.EstatusC]
Carpeta=CDIPasesSociosTor
Clave=EstatusC
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco












[CDIPasesSociosTor.Causa]
Carpeta=CDIPasesSociosTor
Clave=Causa
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPasesSociosTor.MembresiaC]
Carpeta=CDIPasesSociosTor
Clave=MembresiaC
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco





[Acciones.Guardar Cambios.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S







Expresion=asigna(Info.mensaje,Sql(<T>xpCDIPASEtor :nI<T>, CDIPasesSociosTor:CDIPasesSociosTor.id))<BR>//si(info.mensaje<><T>1<T>,informacion(info.mensaje))<BR>fin

[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=CteInfo
CteInfo=(Fin)













[CDIPasesSociosTor.CDIPasesSociosTor.SocioCB]
Carpeta=CDIPasesSociosTor
Clave=CDIPasesSociosTor.SocioCB
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=24
ColorFondo=Blanco

















EditarConBloqueo=N
IgnoraFlujo=N






[Acciones.Guardar Cambios.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S















[CDIPasesSociosTor2.CDIPasesSociosTor.Nombre]
Carpeta=CDIPasesSociosTor2
Clave=CDIPasesSociosTor.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPasesSociosTor2.CDIPasesSociosTor.Situacion]
Carpeta=CDIPasesSociosTor2
Clave=CDIPasesSociosTor.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[CDIPasesSociosTor.Bloqueadoc]
Carpeta=CDIPasesSociosTor
Clave=Bloqueadoc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





[CDIPasesSociosTor2.CDIPasesSociosTor.Estatus]
Carpeta=CDIPasesSociosTor2
Clave=CDIPasesSociosTor.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco









[CDIPasesSociosTor2.ListaEnCaptura]
(Inicio)=Foto
Foto=Cte.RutaImagen
Cte.RutaImagen=CDIPasesSociosTor.Nombre
CDIPasesSociosTor.Nombre=CDIPasesSociosTor.Estatus
CDIPasesSociosTor.Estatus=CDIPasesSociosTor.Situacion
CDIPasesSociosTor.Situacion=(Fin)












[Acciones.Guardar Cambios.Documento Nuevo Usando]
Nombre=Documento Nuevo Usando
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S




[Acciones.Guardar Cambios.Cancelar Cambios2]
Nombre=Cancelar Cambios2
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S







[datos.CDIPasesSociosTor.Nombre]
Carpeta=datos
Clave=CDIPasesSociosTor.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[datos.CDIPasesSociosTor.Estatus]
Carpeta=datos
Clave=CDIPasesSociosTor.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[datos.CDIPasesSociosTor.Situacion]
Carpeta=datos
Clave=CDIPasesSociosTor.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[datos.Columnas]
Nombre=127
Estatus=94
Situacion=304



[CDIPasesSociosTor.ListaEnCaptura]
(Inicio)=CDIPasesSociosTor.Socio
CDIPasesSociosTor.Socio=NombreC
NombreC=EstatusC
EstatusC=Bloqueadoc
Bloqueadoc=Causa
Causa=MembresiaC
MembresiaC=CDIPasesSociosTor.SocioCB
CDIPasesSociosTor.SocioCB=(Fin)






[datos.ListaEnCaptura]
(Inicio)=CDIPasesSociosTor.Nombre
CDIPasesSociosTor.Nombre=CDIPasesSociosTor.Estatus
CDIPasesSociosTor.Estatus=CDIPasesSociosTor.Situacion
CDIPasesSociosTor.Situacion=(Fin)




[Acciones.Guardar Cambios.Actualizar Forma3]
Nombre=Actualizar Forma3
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S









[Acciones.Guardar Cambios.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Actualizar Forma3
Actualizar Forma3=Expresion
Expresion=Cancelar Cambios2
Cancelar Cambios2=Actualizar Forma
Actualizar Forma=Documento Nuevo Usando
Documento Nuevo Usando=(Fin)

[Forma.ListaCarpetas]
(Inicio)=CDIPasesSociosTor
CDIPasesSociosTor=CDIPasesSociosTor2
CDIPasesSociosTor2=(Fin)
