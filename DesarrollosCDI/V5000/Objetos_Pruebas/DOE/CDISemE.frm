
[Forma]
Clave=CDISemE
Icono=0
CarpetaPrincipal=CDISemE
Modulos=(Todos)
MovModulo=CDISemE
Nombre=Fechas y Semanas

ListaCarpetas=CDISemE
PosicionInicialAlturaCliente=219
PosicionInicialAncho=578
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=394
PosicionInicialArriba=255
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
[CDISemE]
Estilo=Ficha
Clave=CDISemE
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISemE
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
[CDISemE.CDISemE.FInicio]
Carpeta=CDISemE
Clave=CDISemE.FInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDISemE.CDISemE.FFin]
Carpeta=CDISemE
Clave=CDISemE.FFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



Tamano=20
[CDISemE.Columnas]
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
[CDISemE.CDISemE.Semana1]
Carpeta=CDISemE
Clave=CDISemE.Semana1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISemE.CDISemE.Semana2]
Carpeta=CDISemE
Clave=CDISemE.Semana2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISemE.CDISemE.Semana3]
Carpeta=CDISemE
Clave=CDISemE.Semana3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISemE.CDISemE.Semana4]
Carpeta=CDISemE
Clave=CDISemE.Semana4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













Tamano=
[Acciones.CDICampCoordE]
Nombre=CDICampCoordE
Boton=18
NombreEnBoton=S
NombreDesplegar=&Coordinaciones
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CDICampCoordE
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
ClaveAccion=CDICampE
Activo=S
Visible=S








EspacioPrevio=S
[Acciones.CDIConsComunic]
Nombre=CDIConsComunic
Boton=38
NombreEnBoton=S
NombreDesplegar=&Consecutivo Cominicados
EnBarraHerramientas=S
TipoAccion=formas
ClaveAccion=CDIConsComunic
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
[CDISemE.ListaEnCaptura]
(Inicio)=CDISemE.FInicio
CDISemE.FInicio=CDISemE.FFin
CDISemE.FFin=CDISemE.Semana1
CDISemE.Semana1=CDISemE.Semana2
CDISemE.Semana2=CDISemE.Semana3
CDISemE.Semana3=CDISemE.Semana4
CDISemE.Semana4=(Fin)



































[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=CDIConsComunic
CDIConsComunic=CDICampCoordE
CDICampCoordE=Email
Email=(Fin)
