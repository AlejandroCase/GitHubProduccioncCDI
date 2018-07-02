
[Forma]
Clave=CDIExploraMod
Icono=0
Modulos=(Todos)
Nombre=Modulo Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDISocio
CarpetaPrincipal=CDISocio
[CDISocio]
Estilo=Hoja
Clave=CDISocio
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISocio
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
HojaIndicador=S

[CDISocio.CDISocio.Mov]
Carpeta=CDISocio
Clave=CDISocio.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISocio.CDISocio.MovID]
Carpeta=CDISocio
Clave=CDISocio.MovID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISocio.CDISocio.FechaEmision]
Carpeta=CDISocio
Clave=CDISocio.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISocio.CDISocio.Usuario]
Carpeta=CDISocio
Clave=CDISocio.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISocio.CDISocio.Autorizacion]
Carpeta=CDISocio
Clave=CDISocio.Autorizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDISocio.CDISocio.Referencia]
Carpeta=CDISocio
Clave=CDISocio.Referencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDISocio.CDISocio.Observaciones]
Carpeta=CDISocio
Clave=CDISocio.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDISocio.CDISocio.Causa]
Carpeta=CDISocio
Clave=CDISocio.Causa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDISocio.CDISocio.Estatus]
Carpeta=CDISocio
Clave=CDISocio.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDISocio.ListaEnCaptura]
(Inicio)=CDISocio.Mov
CDISocio.Mov=CDISocio.MovID
CDISocio.MovID=CDISocio.FechaEmision
CDISocio.FechaEmision=CDISocio.Usuario
CDISocio.Usuario=CDISocio.Autorizacion
CDISocio.Autorizacion=CDISocio.Referencia
CDISocio.Referencia=CDISocio.Observaciones
CDISocio.Observaciones=CDISocio.Causa
CDISocio.Causa=CDISocio.Estatus
CDISocio.Estatus=(Fin)
