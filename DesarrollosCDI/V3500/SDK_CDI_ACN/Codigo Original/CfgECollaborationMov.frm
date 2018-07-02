[Forma]
Clave=CfgECollaborationMov
Nombre=e-Collaboration - Mapa Movimientos
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
PosicionInicialIzquierda=388
PosicionInicialArriba=290
PosicionInicialAlturaCliente=410
PosicionInicialAncho=504
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado

[Lista]
Estilo=Hoja
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CfgECollaborationMov
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

[Lista.CfgECollaborationMov.Modulo]
Carpeta=Lista
Clave=CfgECollaborationMov.Modulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CfgECollaborationMov.Mov]
Carpeta=Lista
Clave=CfgECollaborationMov.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CfgECollaborationMov.ModuloDestino]
Carpeta=Lista
Clave=CfgECollaborationMov.ModuloDestino
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Lista.CfgECollaborationMov.MovDestino]
Carpeta=Lista
Clave=CfgECollaborationMov.MovDestino
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
Modulo=78
Mov=169
ModuloDestino=84
MovDestino=141

[Lista.ListaEnCaptura]
(Inicio)=CfgECollaborationMov.Modulo
CfgECollaborationMov.Modulo=CfgECollaborationMov.Mov
CfgECollaborationMov.Mov=CfgECollaborationMov.ModuloDestino
CfgECollaborationMov.ModuloDestino=CfgECollaborationMov.MovDestino
CfgECollaborationMov.MovDestino=(Fin)
