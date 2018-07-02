
[Forma]
Clave=CDISocioSubsidio
Icono=0
Modulos=(Todos)
Nombre=Subsidios
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=495
PosicionInicialArriba=343
PosicionInicialAlturaCliente=303
PosicionInicialAncho=290
ListaAcciones=(Lista)
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocioSubsidio
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
CarpetaVisible=S
OtroOrden=S
PermiteEditar=S
ListaEnCaptura=(Lista)

ListaOrden=CDISocioSubsidio.Subsidio<TAB>(Acendente)

[Lista.CDISocioSubsidio.Subsidio]
Carpeta=Lista
Clave=CDISocioSubsidio.Subsidio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.CDISocioSubsidio.Importe]
Carpeta=Lista
Clave=CDISocioSubsidio.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Columnas]
Subsidio=139
Importe=107


[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Hist]
Nombre=Hist
Boton=34
NombreDesplegar=&Historial
EnBarraHerramientas=S
Activo=S
Visible=S



EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CDISocioSubsidioHist
Antes=S




NombreEnBoton=S
AntesExpresiones=Asigna(Info.CDISubsidio, CDISocioSubsidio:CDISocioSubsidio.Subsidio)







[Lista.ListaEnCaptura]
(Inicio)=CDISocioSubsidio.Subsidio
CDISocioSubsidio.Subsidio=CDISocioSubsidio.Importe
CDISocioSubsidio.Importe=(Fin)























[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Hist
Hist=(Fin)
