[Forma]
Clave=RepCompraProvCat
Nombre=Compras por Categor�a de Proveedores
Icono=18
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=375
PosicionInicialArriba=311
PosicionInicialAltura=146
PosicionInicialAncho=274
VentanaTipoMarco=Di�logo
VentanaPosicionInicial=Centrado
AccionesTamanoBoton=15x5
AccionesDivision=S
VentanaExclusiva=S
AccionesCentro=S
BarraHerramientas=S
ListaAcciones=(Lista)
VentanaEscCerrar=S
ExpresionesAlMostrar=Asigna(Info.FechaD, PrimerDiaMes)<BR>Asigna(Info.FechaA, UltimoDiaMes)<BR>Asigna(Rep.Compras, <T>Entradas y Devoluciones<T>)

[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
FichaEspacioEntreLineas=4
FichaEspacioNombres=65
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
ListaEnCaptura=(Lista)
PermiteEditar=S

[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=21
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=21
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Rep.Compras]
Carpeta=(Variables)
Clave=Rep.Compras
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=21
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
NombreEnBoton=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreEnBoton=S
NombreDesplegar=&Preliminar
EnBarraHerramientas=S
Activo=S
Visible=S
Multiple=S
ListaAccionesMultiples=Variables Asignar<BR>CompraProvCat

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreEnBoton=S
NombreDesplegar=&Imprimir
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S
Multiple=S
ListaAccionesMultiples=Variables Asignar<BR>CompraProvCat

[Acciones.Imprimir.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Imprimir.CompraProvCat]
Nombre=CompraProvCat
Boton=0
TipoAccion=Reportes Impresora
ClaveAccion=CompraProvCat
Activo=S
Visible=S

[Acciones.Preliminar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.CompraProvCat]
Nombre=CompraProvCat
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CompraProvCat
Activo=S
Visible=S

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=(Fin)

[(Variables).ListaEnCaptura]
(Inicio)=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Rep.Compras
Rep.Compras=(Fin)
