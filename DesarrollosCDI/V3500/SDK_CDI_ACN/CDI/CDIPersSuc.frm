
[Forma]
Clave=CDIPersSuc
Icono=0
Modulos=(Todos)
Nombre=Registro Personal
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIPersSuc
PosicionInicialIzquierda=236
PosicionInicialArriba=71
PosicionInicialAlturaCliente=586
PosicionInicialAncho=893
PosicionCol1=449
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraAcciones=S
PosicionSec1=46
BarraAyuda1=CDIPersSuc:Cte.Cliente
BarraAyuda2=CDIPersSuc:Cte.Nombre
PosicionCol2=457
ListaAcciones=(Lista)
IniciarAgregando=S
[CDIPersSuc]
Estilo=Ficha
Clave=CDIPersSuc
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPersSuc
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
ListaEnCaptura=CDIPersSuc.Personal
CarpetaVisible=S

PermiteEditar=S

[CDIPersSuc2]
Estilo=Ficha
Clave=CDIPersSuc2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=CDIPersSuc
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S









ListaEnCaptura=Foto

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=76


[CDIPersSuc2.Columnas]
RutaImagen=604





[CDIPersSuc2.Foto]
Carpeta=CDIPersSuc2
Clave=Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
Tamano=45x30
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


Expresion=ASigna(CDIPersSuc:CDIPersSuc.Socio,Info.Socio)


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
























[Acciones.Guardar Cambios.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S







Expresion=//asigna(Info.mensaje,eJECUTARSql(<T>xpCDIPASE :nI<T>, CDIPersSuc:CDIPersSuc.id))<BR>//si(info.mensaje<><T>1<T>,informacion(info.mensaje))<BR>//fin<BR><BR>eJECUTARSql(<T>xpAccesoControlPerSuc :tE, :nS, :tU, :nI, :tP, :fH, :nO<T>,Empresa,Sucursal,Usuario,CDIPersSuc:CDIPersSuc.id,CDIPersSuc:CDIPersSuc.Personal, ahora, 3)
[Acciones.Guardar Cambios.Documento Nuevo]
Nombre=Documento Nuevo
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S












[CDIPersSuc.CDIPersSuc.Personal]
Carpeta=CDIPersSuc
Clave=CDIPersSuc.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco






[CDIPersSuc.ListaEnCaptura]
(Inicio)=CDIPersSuc.Personal
CDIPersSuc.Personal=NombreC
NombreC=EstatusC
EstatusC=DepartamentoC
DepartamentoC=PuestoC
PuestoC=JornadaC
JornadaC=(Fin)















[CDIPersSuc2.ListaEnCaptura]
(Inicio)=Foto
Foto=Personal.CDIPerImagen
Personal.CDIPerImagen=(Fin)







[CDIPlugAsistenciaSuc .ListaEnCaptura]
(Inicio)=CDIPlugAsistenciaSuc.Nombre
CDIPlugAsistenciaSuc.Nombre=CDIPlugAsistenciaSuc.Comite
CDIPlugAsistenciaSuc.Comite=CDIPlugAsistenciaSuc.Jornada
CDIPlugAsistenciaSuc.Jornada=CDIPlugAsistenciaSuc.Departamento
CDIPlugAsistenciaSuc.Departamento=CDIPlugAsistenciaSuc.Puesto
CDIPlugAsistenciaSuc.Puesto=CDIPlugAsistenciaSuc.Estatus
CDIPlugAsistenciaSuc.Estatus=CDIPlugAsistenciaSuc.HoraRegistro
CDIPlugAsistenciaSuc.HoraRegistro=CDIPlugAsistenciaSuc.Mensaje
CDIPlugAsistenciaSuc.Mensaje=CDIPlugAsistenciaSuc.Color
CDIPlugAsistenciaSuc.Color=(Fin)











[CDIPlugAsistenciaSuc]
Estilo=Ficha
Clave=CDIPlugAsistenciaSuc
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIPlugAsistenciaSuc
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=29
FichaEspacioNombres=70
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

FichaMarco=S
Detalle=S
VistaMaestra=CDIPersSuc
LlaveLocal=CDIPlugAsistenciaSuc.ID
LlaveMaestra=CDIPersSuc.id
Pestana=S
PestanaOtroNombre=S
PestanaNombre=tttt
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Nombre]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Comite]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Comite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Jornada]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Departamento]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Departamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Puesto]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Puesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Estatus]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.HoraRegistro]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.HoraRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Mensaje]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50x2
ColorFondo=Blanco

[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Color]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Color
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco









[Acciones.Guardar Cambios.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.Guardar Cambios.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Documento Nuevo
Documento Nuevo=Actualizar Forma
Actualizar Forma=(Fin)









[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIPersSuc
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIPersSuc.Personal
CarpetaVisible=S

[(Carpeta Abrir).CDIPersSuc.Personal]
Carpeta=(Carpeta Abrir)
Clave=CDIPersSuc.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco





























[Acciones.Actualizar Forma.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S




[Acciones.Actualizar Forma.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=eJECUTARSql(<T>xpAccesoControlPerSuc :tE, :nS, :tU, :nI, :tP, :fH, :nO<T>,Empresa,Sucursal,Usuario,CDIPersSuc:CDIPersSuc.id,CDIPersSuc:CDIPersSuc.Personal, ahora, 3)
Activo=S
Visible=S

[Acciones.Actualizar Forma.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=(Fin)







[Acciones.Todo.Guardar Cambios]
Nombre=Guardar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Todo.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Expresion=eJECUTARSql(<T>xpAccesoControlPerSuc :tE, :nS, :tU, :nI, :tP, :fH, :nO<T>,Empresa,Sucursal,Usuario,CDIPersSuc:CDIPersSuc.id,CDIPersSuc:CDIPersSuc.Personal, ahora, 3)
Activo=S
Visible=S

[Acciones.Todo.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S

[Acciones.Todo]
Nombre=Todo
Boton=7
NombreEnBoton=S
NombreDesplegar=Registro
GuardarAntes=S
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S

DocNuevo=S
[Det]
Estilo=Ficha
Clave=Det
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIPersSuc
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

Detalle=S
VistaMaestra=CDIPlugAsistenciaSuc
LlaveLocal=(Lista)
LlaveMaestra=(Lista)
PestanaNombre=xxxx
Pestana=S
RefrescarAlEntrar=S
[Det.CDIPlugAsistenciaSuc.Nombre]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.Jornada]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.HorarioJE]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.HorarioJE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.HorarioJS]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.HorarioJS
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.Movimiento]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.HoraRegistro]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.HoraRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=30
[Det.CDIPlugAsistenciaSuc.Comite]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Comite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.Departamento]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Departamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.Puesto]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Puesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.Mensaje]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.Estatus]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Det.CDIPlugAsistenciaSuc.Color]
Carpeta=Det
Clave=CDIPlugAsistenciaSuc.Color
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Det.LlaveLocal]
(Inicio)=CDIPersSuc.id
CDIPersSuc.id=CDIPersSuc.Personal
CDIPersSuc.Personal=(Fin)

[Det.LlaveMaestra]
(Inicio)=CDIPlugAsistenciaSuc.ID
CDIPlugAsistenciaSuc.ID=CDIPlugAsistenciaSuc.Personal
CDIPlugAsistenciaSuc.Personal=(Fin)

[Det.ListaEnCaptura]
(Inicio)=CDIPlugAsistenciaSuc.Nombre
CDIPlugAsistenciaSuc.Nombre=CDIPlugAsistenciaSuc.Jornada
CDIPlugAsistenciaSuc.Jornada=CDIPlugAsistenciaSuc.HorarioJE
CDIPlugAsistenciaSuc.HorarioJE=CDIPlugAsistenciaSuc.HorarioJS
CDIPlugAsistenciaSuc.HorarioJS=CDIPlugAsistenciaSuc.Movimiento
CDIPlugAsistenciaSuc.Movimiento=CDIPlugAsistenciaSuc.HoraRegistro
CDIPlugAsistenciaSuc.HoraRegistro=CDIPlugAsistenciaSuc.Comite
CDIPlugAsistenciaSuc.Comite=CDIPlugAsistenciaSuc.Departamento
CDIPlugAsistenciaSuc.Departamento=CDIPlugAsistenciaSuc.Puesto
CDIPlugAsistenciaSuc.Puesto=CDIPlugAsistenciaSuc.Mensaje
CDIPlugAsistenciaSuc.Mensaje=CDIPlugAsistenciaSuc.Estatus
CDIPlugAsistenciaSuc.Estatus=CDIPlugAsistenciaSuc.Color
CDIPlugAsistenciaSuc.Color=(Fin)










[Acciones.Todo.ListaAccionesMultiples]
(Inicio)=Guardar Cambios
Guardar Cambios=Expresion
Expresion=Actualizar Forma
Actualizar Forma=(Fin)






[Acciones.Actualizar Forma]
Nombre=Actualizar Forma
Boton=0
NombreDesplegar=Actualizar Forma
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Antes=S
DespuesGuardar=S
Visible=S

AntesExpresiones=eJECUTARSql(<T>xpAccesoControlPerSuc :tE, :nS, :tU, :nI, :tP, :fH, :nO<T>,Empresa,Sucursal,Usuario,CDIPersSuc:CDIPersSuc.id,CDIPersSuc:CDIPersSuc.Personal, ahora, 3)<BR>ActualizarForma




[CDIPlugAsistenciaSuc.ListaEnCaptura]
(Inicio)=CDIPlugAsistenciaSuc.Nombre
CDIPlugAsistenciaSuc.Nombre=CDIPlugAsistenciaSuc.Comite
CDIPlugAsistenciaSuc.Comite=CDIPlugAsistenciaSuc.Jornada
CDIPlugAsistenciaSuc.Jornada=CDIPlugAsistenciaSuc.Departamento
CDIPlugAsistenciaSuc.Departamento=CDIPlugAsistenciaSuc.Puesto
CDIPlugAsistenciaSuc.Puesto=CDIPlugAsistenciaSuc.Estatus
CDIPlugAsistenciaSuc.Estatus=CDIPlugAsistenciaSuc.HoraRegistro
CDIPlugAsistenciaSuc.HoraRegistro=CDIPlugAsistenciaSuc.Mensaje
CDIPlugAsistenciaSuc.Mensaje=CDIPlugAsistenciaSuc.Color
CDIPlugAsistenciaSuc.Color=(Fin)























[Forma.ListaCarpetas]
(Inicio)=CDIPersSuc
CDIPersSuc=CDIPersSuc2
CDIPersSuc2=CDIPlugAsistenciaSuc
CDIPlugAsistenciaSuc=Det
Det=(Fin)

[Forma.ListaAcciones]
(Inicio)=Todo
Todo=Actualizar Forma
Actualizar Forma=(Fin)
