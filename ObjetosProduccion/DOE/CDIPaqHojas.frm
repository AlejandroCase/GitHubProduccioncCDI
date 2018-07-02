
[Forma]
Clave=CDIPaqHojas
Icono=0
Modulos=(Todos)
Nombre=Formación de Hojas
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=578
PosicionInicialArriba=279
PosicionInicialAlturaCliente=171
PosicionInicialAncho=210
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=cA
[(Variables)]
Estilo=Ficha
PestanaOtroNombre=S
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Plata

[(Variables).Info.HojaD]
Carpeta=(Variables)
Clave=Info.HojaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.HojaA]
Carpeta=(Variables)
Clave=Info.HojaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=135
1=192

[Acciones.cA]
Nombre=cA
Boton=4
NombreDesplegar=cA
EnBarraHerramientas=S
TipoAccion=Reportes Pantalla
ClaveAccion=cdipaqinscFormato
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.cA.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.cA.Cambiar Situacion]
Nombre=Cambiar Situacion
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=cdipaqinscFormato
Activo=S
Visible=S

[Acciones.cA.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Cambiar Situacion
Cambiar Situacion=(Fin)

[(Variables).ListaEnCaptura]
(Inicio)=Info.HojaD
Info.HojaD=Info.HojaA
Info.HojaA=(Fin)
