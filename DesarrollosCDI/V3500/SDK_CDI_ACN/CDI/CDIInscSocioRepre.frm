
[Forma]
Clave=CDIInscSocioRepre
Icono=0
CarpetaPrincipal=CDIInscSocioRepre
Modulos=(Todos)
Nombre=Paquetes Socios Representativos

ListaCarpetas=CDIInscSocioRepre
PosicionInicialIzquierda=190
PosicionInicialArriba=159
PosicionInicialAlturaCliente=273
PosicionInicialAncho=369
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIInscSocioRepre]
Estilo=Hoja
Clave=CDIInscSocioRepre
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIInscSocioRepre
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S


PermiteEditar=S
HojaConfirmarEliminar=S
[CDIInscSocioRepre.CDIInscSocioRepre.PaqueteNo]
Carpeta=CDIInscSocioRepre
Clave=CDIInscSocioRepre.PaqueteNo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIInscSocioRepre.CDIInscSocioRepre.Socio]
Carpeta=CDIInscSocioRepre
Clave=CDIInscSocioRepre.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



[CDIInscSocioRepre.CDIInscSocioRepre.Ceplan]
Carpeta=CDIInscSocioRepre
Clave=CDIInscSocioRepre.Ceplan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscSocioRepre.CDIInscSocioRepre.Grupo]
Carpeta=CDIInscSocioRepre
Clave=CDIInscSocioRepre.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscSocioRepre.CDIInscSocioRepre.Nivel]
Carpeta=CDIInscSocioRepre
Clave=CDIInscSocioRepre.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIInscSocioRepre.Columnas]
Id=64
PaqueteNo=79
Socio=54
Cliente=64
Programa=64
Ceplan=65
Grupo=64
Nivel=64


[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=cerrar
Activo=S
Visible=S














[CDIInscSocioRepre.ListaEnCaptura]
(Inicio)=CDIInscSocioRepre.PaqueteNo
CDIInscSocioRepre.PaqueteNo=CDIInscSocioRepre.Socio
CDIInscSocioRepre.Socio=CDIInscSocioRepre.Ceplan
CDIInscSocioRepre.Ceplan=CDIInscSocioRepre.Grupo
CDIInscSocioRepre.Grupo=CDIInscSocioRepre.Nivel
CDIInscSocioRepre.Nivel=(Fin)











[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=(Fin)
