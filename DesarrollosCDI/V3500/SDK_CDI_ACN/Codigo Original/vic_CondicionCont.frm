
[Forma]
Clave=vic_CondicionCont
Icono=4
BarraHerramientas=S
Modulos=(Todos)
Nombre=Tipos de Contrato
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=408
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=335
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
[Lista]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Tipos de Contrato
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_CondicionCont
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
ListaEnCaptura=vic_CondicionCont.TipoContrato
CarpetaVisible=S

[Lista.vic_CondicionCont.TipoContrato]
Carpeta=Lista
Clave=vic_CondicionCont.TipoContrato
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
TipoContrato=304

[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=&Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Visible=S













ActivoCondicion=Usuario.EnviarExcel






[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=(Fin)
