
[Forma]
Clave=CDICatAcuerdo
Icono=0
Modulos=(Todos)
Nombre=Catalogo Acuerdos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDICatAcuerdo
CarpetaPrincipal=CDICatAcuerdo
PosicionInicialIzquierda=488
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=389
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDICatAcuerdo]
Estilo=Hoja
Clave=CDICatAcuerdo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICatAcuerdo
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDICatAcuerdo.Acuerdo
CarpetaVisible=S

[CDICatAcuerdo.CDICatAcuerdo.Acuerdo]
Carpeta=CDICatAcuerdo
Clave=CDICatAcuerdo.Acuerdo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICatAcuerdo.Columnas]
Acuerdo=350

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