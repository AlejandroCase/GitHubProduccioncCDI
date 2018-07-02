
[Forma]
Clave=CDINomConcRep
Icono=0
Modulos=(Todos)
MovModulo=CDINomConcRep
Nombre=CDINomConcRep
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDINomConcRep
CarpetaPrincipal=CDINomConcRep
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=474
PosicionInicialArriba=51
PosicionInicialAlturaCliente=589
PosicionInicialAncho=410
[CDINomConcRep]
Estilo=Hoja
Clave=CDINomConcRep
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDINomConcRep
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
[CDINomConcRep.CDINomConcRep.Concepto]
Carpeta=CDINomConcRep
Clave=CDINomConcRep.Concepto
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDINomConcRep.CDINomConcRep.procesar]
Carpeta=CDINomConcRep
Clave=CDINomConcRep.procesar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

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


[CDINomConcRep.Columnas]
Concepto=304
procesar=64




























0=-2
1=-2
2=-2








[CDINomConcRep.ListaEnCaptura]
(Inicio)=CDINomConcRep.Concepto
CDINomConcRep.Concepto=CDINomConcRep.procesar
CDINomConcRep.procesar=(Fin)





[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
