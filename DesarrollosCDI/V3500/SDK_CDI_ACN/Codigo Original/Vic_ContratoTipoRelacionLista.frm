
[Forma]
Clave=Vic_ContratoTipoRelacionLista
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Tipos de Relación
AccionesTamanoBoton=15x5
AccionesDerecha=S


ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=Aceptar
PosicionInicialIzquierda=457
PosicionInicialArriba=355
PosicionInicialAlturaCliente=406
PosicionInicialAncho=350
[Vic_ContratoTipoRelacion.ListaEnCaptura]
(Inicio)=Vic_ContratoTipoRelacion.TipoRelacion
Vic_ContratoTipoRelacion.TipoRelacion=Vic_ContratoTipoRelacion.TipoRelacionmaestra
Vic_ContratoTipoRelacion.TipoRelacionmaestra=(Fin)



[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Vic_ContratoTipoRelacion
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
ListaEnCaptura=Vic_ContratoTipoRelacion.TipoRelacion

CarpetaVisible=S
PestanaNombre=Lista
[Lista.ListaEnCaptura]
(Inicio)=Vic_ContratoTipoRelacion.TipoRelacion
Vic_ContratoTipoRelacion.TipoRelacion=Vic_ContratoTipoRelacion.TipoRelacionmaestra
Vic_ContratoTipoRelacion.TipoRelacionmaestra=(Fin)

[Lista.Vic_ContratoTipoRelacion.TipoRelacion]
Carpeta=Lista
Clave=Vic_ContratoTipoRelacion.TipoRelacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
ConCondicion=S
Visible=S
EjecucionConError=S


EjecucionCondicion=Asigna(Temp.Texto, ListaBuscarDuplicados(CampoEnLista(Vic_ContratoTipoRelacion.TipoRelacion)))<BR>Vacio(Temp.Texto)
EjecucionMensaje=Comiilas(Temp.Texto) + <T>Duplicado<T>
[Lista.Columnas]
TipoRelacion=304
TipoRelacionmaestra=304













[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=(Fin)
