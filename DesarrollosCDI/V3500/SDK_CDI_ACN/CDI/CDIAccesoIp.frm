
[Forma]
Clave=CDIAccesoIp
Icono=0
Modulos=(Todos)
MovModulo=SOC
Nombre=Acceso Ip

ListaCarpetas=Ipes
CarpetaPrincipal=Ipes
PosicionInicialIzquierda=299
PosicionInicialArriba=79
PosicionInicialAlturaCliente=273
PosicionInicialAncho=372
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
BarraAyuda=S
BarraAyudaBold=S
BarraAyudaEsp=S
BarraAyuda1=Empresa
[Ipes]
Estilo=Hoja
Clave=Ipes
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAccesoIp
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaConfirmarEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIAccesoIp.Empresa=<T>{Empresa}<T>
[Ipes.CDIAccesoIp.Origen]
Carpeta=Ipes
Clave=CDIAccesoIp.Origen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ipes.CDIAccesoIp.Ip]
Carpeta=Ipes
Clave=CDIAccesoIp.Ip
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ipes.Columnas]
Origen=64
Ip=124

Torniquete=64
Ubicacion=78
[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

EspacioPrevio=S
EnBarraHerramientas=S
[Acciones.Guardar Cambios]
Nombre=Guardar Cambios
Boton=3
NombreEnBoton=S
NombreDesplegar=Guardar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S





EnBarraHerramientas=S









[Ipes.ListaEnCaptura]
(Inicio)=CDIAccesoIp.Origen
CDIAccesoIp.Origen=CDIAccesoIp.Ip
CDIAccesoIp.Ip=CDIAccesoIp.Torniquete
CDIAccesoIp.Torniquete=CDIAccesoIp.Ubicacion
CDIAccesoIp.Ubicacion=(Fin)

[Ipes.CDIAccesoIp.Torniquete]
Carpeta=Ipes
Clave=CDIAccesoIp.Torniquete
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Ipes.CDIAccesoIp.Ubicacion]
Carpeta=Ipes
Clave=CDIAccesoIp.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco









































[Forma.ListaAcciones]
(Inicio)=Guardar Cambios
Guardar Cambios=Cerrar
Cerrar=(Fin)
