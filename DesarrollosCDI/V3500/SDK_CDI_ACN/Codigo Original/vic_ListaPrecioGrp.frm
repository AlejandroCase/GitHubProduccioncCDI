
[Forma]
Clave=vic_ListaPrecioGrp
Icono=0
Modulos=(Todos)
Nombre=Grupo de Lista de Precios
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S

ListaAcciones=(Lista)
ListaCarpetas=ListaSeleccion
CarpetaPrincipal=ListaSeleccion
PosicionInicialIzquierda=252
PosicionInicialArriba=371
PosicionInicialAlturaCliente=273
PosicionInicialAncho=333
[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
ConCondicion=S
EjecucionConError=S

Activo=S
Visible=S
EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista( Vic_listaPreciosGrp:Vic_listaPreciosGrp.GrupoLp)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comillas(Temp.Texto)+<T> Duplicado<T>
[ListaSeleccion]
Estilo=Hoja
Clave=ListaSeleccion
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Vic_listaPreciosGrp
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
ListaEnCaptura=Vic_listaPreciosGrp.GrupoLp

PermiteEditar=S
[ListaSeleccion.Vic_listaPreciosGrp.GrupoLp]
Carpeta=ListaSeleccion
Clave=Vic_listaPreciosGrp.GrupoLp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ListaSeleccion.Columnas]
GrupoLp=304

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreEnBoton=S
NombreDesplegar=Excel
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
Activo=S
Visible=S













[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=(Fin)
