
[Forma]
Clave=CDIAccCfgDesblExcep
Icono=0
Modulos=(Todos)
Nombre=Excepciones Desbloqueo
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIAccCfgDesblExcep
CarpetaPrincipal=CDIAccCfgDesblExcep
PosicionInicialIzquierda=517
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=332
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIAccCfgDesblExcep]
Estilo=Hoja
Clave=CDIAccCfgDesblExcep
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAccCfgDesblExcep
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

[CDIAccCfgDesblExcep.CDIAccCfgDesblExcep.Mov]
Carpeta=CDIAccCfgDesblExcep
Clave=CDIAccCfgDesblExcep.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDIAccCfgDesblExcep.Columnas]
Mov=153
Clave=124
SubClave=124





TipoSocio=304


Concepto=124
Causa=139


[CDIAccCfgDesblExcep.CDIAccCfgDesblExcep.Causa]
Carpeta=CDIAccCfgDesblExcep
Clave=CDIAccCfgDesblExcep.Causa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
Mov=224

[CDIAccCfgDesblExcep.ListaEnCaptura]
(Inicio)=CDIAccCfgDesblExcep.Mov
CDIAccCfgDesblExcep.Mov=CDIAccCfgDesblExcep.Causa
CDIAccCfgDesblExcep.Causa=(Fin)

[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreDesplegar=Guardar Cambios
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





























[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
