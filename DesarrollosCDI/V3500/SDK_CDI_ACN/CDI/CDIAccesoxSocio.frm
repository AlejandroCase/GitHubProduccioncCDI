
[Forma]
Clave=CDIAccesoxSocio
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Socios
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=CDIAccesoxSocio
CarpetaPrincipal=CDIAccesoxSocio
PosicionInicialIzquierda=167
PosicionInicialArriba=50
PosicionInicialAlturaCliente=152
PosicionInicialAncho=245
ListaAcciones=(Lista)
[CDIAccesoxSocio]
Estilo=Ficha
Clave=CDIAccesoxSocio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)

[CDIAccesoxSocio.ListaEnCaptura]
(Inicio)=Info.Socio
Info.Socio=Info.Membresia
Info.Membresia=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=(Fin)

[CDIAccesoxSocio.Info.Socio]
Carpeta=CDIAccesoxSocio
Clave=Info.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAccesoxSocio.Info.Membresia]
Carpeta=CDIAccesoxSocio
Clave=Info.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAccesoxSocio.Info.FechaD]
Carpeta=CDIAccesoxSocio
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIAccesoxSocio.Info.FechaA]
Carpeta=CDIAccesoxSocio
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=108
1=286

[Acciones.Cerrar]
Nombre=Cerrar
Boton=5
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreEnBoton=S
NombreDesplegar=&Preliminar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S























[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
