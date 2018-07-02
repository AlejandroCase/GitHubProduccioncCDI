
[Forma]
Clave=CDIPreRegisVol
Icono=0
Modulos=(Todos)
Nombre=Preregistros Socio
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIPreRegisDet
CarpetaPrincipal=CDIPreRegisDet
PosicionInicialIzquierda=96
PosicionInicialArriba=188
PosicionInicialAlturaCliente=353
PosicionInicialAncho=1174
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar
ExpresionesAlMostrar=informacion(info.Clientea)<BR>ASIGNA(info.Cliente,info.ClienteA)<BR>informacion(info.cliente)
[CDIPreRegisDet]
Estilo=Hoja
Clave=CDIPreRegisDet
ValidarCampos=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPreRegisDet
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

ListaCamposAValidar=(Lista)
CarpetaVisible=S


Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroTipo=General
FiltroRespetar=S
FiltroGeneral=CDIPreRegisDet.CDISocio=<T>{Info.Cliente}<T><BR>or CDIPreRegisDet.Cliente=<T>{Info.Cliente}<T><BR>and CDIPreRegisDet.FechaEmision >=<T>20140101<T>
[CDIPreRegisDet.CDIPreRegisDet.Mov]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIPreRegisDet.CDIPreRegisDet.MovId]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.MovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIPreRegisDet.CDIPreRegisDet.FechaEmision]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPreRegisDet.CDIPreRegisDet.CDISocio]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPreRegisDet.Cte.Nombre]
Carpeta=CDIPreRegisDet
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIPreRegisDet.CDIPreRegisDet.Concepto]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.Concepto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPreRegisDet.CDIPreRegisDet.Programa]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPreRegisDet.CDIPreRegisDet.Ceplan]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.Ceplan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPreRegisDet.CDIPreRegisDet.Estatus]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIPreRegisDet.Columnas]
Mov=66
MovId=43
FechaEmision=73
CDISocio=56
Nombre=193
Concepto=220
Programa=89
Ceplan=83
Estatus=104



Precio=64
DescuentoLineal=82
CDIBeca=52
id=64
Grupo=98
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=7
NombreDesplegar=Registrar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

NombreEnBoton=S






[Acciones.Seleccionar.Seleccionar]
Nombre=Seleccionar
Boton=0
TipoAccion=Ventana
ClaveAccion=Seleccionar/Aceptar
Activo=S
Visible=S


[Acciones.Seleccionar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S








[Acciones.Seleccionar.ListaAccionesMultiples]
(Inicio)=Seleccionar
Seleccionar=Cerrar
Cerrar=(Fin)



[CDIPreRegisDet.CDIPreRegisDet.id]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.id
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPreRegisDet.CDIPreRegisDet.Grupo]
Carpeta=CDIPreRegisDet
Clave=CDIPreRegisDet.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

















































[CDIPreRegisDet.ListaEnCaptura]
(Inicio)=CDIPreRegisDet.id
CDIPreRegisDet.id=CDIPreRegisDet.Mov
CDIPreRegisDet.Mov=CDIPreRegisDet.MovId
CDIPreRegisDet.MovId=CDIPreRegisDet.FechaEmision
CDIPreRegisDet.FechaEmision=CDIPreRegisDet.CDISocio
CDIPreRegisDet.CDISocio=Cte.Nombre
Cte.Nombre=CDIPreRegisDet.Concepto
CDIPreRegisDet.Concepto=CDIPreRegisDet.Programa
CDIPreRegisDet.Programa=CDIPreRegisDet.Ceplan
CDIPreRegisDet.Ceplan=CDIPreRegisDet.Estatus
CDIPreRegisDet.Estatus=CDIPreRegisDet.Grupo
CDIPreRegisDet.Grupo=(Fin)

[CDIPreRegisDet.ListaCamposAValidar]
(Inicio)=CDIPreRegisDet.CDIPlan
CDIPreRegisDet.CDIPlan=CDIPreRegisDet.Materia
CDIPreRegisDet.Materia=CDIPreRegisDet.Grupo
CDIPreRegisDet.Grupo=CDIPreRegisDet.Espacio
CDIPreRegisDet.Espacio=CDIPreRegisDet.profesor
CDIPreRegisDet.profesor=CDIPreRegisDet.Horario
CDIPreRegisDet.Horario=CDIPreRegisDet.Precio
CDIPreRegisDet.Precio=CDIPreRegisDet.DescuentoLineal
CDIPreRegisDet.DescuentoLineal=CDIPreRegisDet.CDIBeca
CDIPreRegisDet.CDIBeca=(Fin)
