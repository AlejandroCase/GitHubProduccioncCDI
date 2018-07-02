
[Forma]
Clave=vic_NotariaGrp
Icono=4
Modulos=(Todos)
Nombre=Grupo
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=vic_NotariaGrp
CarpetaPrincipal=vic_NotariaGrp
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=407
PosicionInicialArriba=251
PosicionInicialAlturaCliente=328
PosicionInicialAncho=338
[vic_NotariaGrp]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Grupos
Clave=vic_NotariaGrp
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_NotariaGrp
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
ListaEnCaptura=vic_NotariaGrp.Grupo
CarpetaVisible=S

[vic_NotariaGrp.vic_NotariaGrp.Grupo]
Carpeta=vic_NotariaGrp
Clave=vic_NotariaGrp.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

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
NombreDesplegar=Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=vic_NotariaGrp
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
ActivoCondicion=Usuario.EnviarExcel
Visible=S


[vic_NotariaGrp.Columnas]
Grupo=304



[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Excel
Excel=(Fin)
