[Forma]
Clave=RepContBalanceAnuales
Nombre=Estados de Posición Financiera Anuales
Icono=0
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=753
PosicionInicialArriba=411
PosicionInicialAltura=292
PosicionInicialAncho=414
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
AccionesTamanoBoton=25x5
AccionesCentro=S
ListaAcciones=(Lista)
AccionesDivision=S
VentanaEscCerrar=S
BarraHerramientas=S
PosicionInicialAlturaCliente=343

VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.EjercicioA, EjercicioTrabajo)<BR>Asigna(Info.EjercicioD, EjercicioTrabajo - 2) <BR>Asigna(Info.PeriodoA, PeriodoTrabajo)<BR>Asigna(Info.ConMovimientos, <T>Si<T>)<BR>Asigna(Info.RepAnuales, <T>Del Ejercicio<T>)<BR>Asigna(Info.CentroCostos, <T>(Todos)<T>)<BR>Asigna(Info.CentroCostos2, <T>(Todos)<T>)<BR>Asigna(Info.CentroCostos3, <T>(Todos)<T>)<BR>Asigna(Info.Proyecto, <T>(Todos)<T>)<BR>Asigna(Info.UEN, Nulo)<BR>Asigna(Rep.Sucursal, Nulo)<BR>Asigna(Info.ContMoneda, Config.ContMoneda)<BR>Asigna(Rep.Titulo, e(<T>Estados de Posición Finaciera Anuales<T>))
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
FichaEspacioEntreLineas=5
FichaEspacioNombres=75
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaColorFondo=Plata
FichaAlineacion=Izquierda
ListaEnCaptura=(Lista)
PermiteEditar=S

[(Variables).Info.PeriodoA]
Carpeta=(Variables)
Clave=Info.PeriodoA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.RepPan]
Nombre=RepPan
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=Asignar<BR>ContBalanceAnuales
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S

[Acciones.Imprimir.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=&Imprimir
Multiple=S
EnBarraAcciones=S
TipoAccion=Reportes Impresora
ListaAccionesMultiples=Variables Asignar<BR>ContBalanceAnuales
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S
EspacioPrevio=S

[Acciones.RepPan.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[(Variables).Info.ConMovimientos]
Carpeta=(Variables)
Clave=Info.ConMovimientos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[(Variables).Rep.Titulo]
Carpeta=(Variables)
Clave=Rep.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.CentroCostos]
Carpeta=(Variables)
Clave=Info.CentroCostos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Rep.Sucursal]
Carpeta=(Variables)
Clave=Rep.Sucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

EspacioPrevio=S
[(Variables).Info.Moneda]
Carpeta=(Variables)
Clave=Info.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.EjercicioD]
Carpeta=(Variables)
Clave=Info.EjercicioD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.EjercicioA]
Carpeta=(Variables)
Clave=Info.EjercicioA
Editar=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.RepAnuales]
Carpeta=(Variables)
Clave=Info.RepAnuales
Editar=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Imprimir.ContBalanceAnuales]
Nombre=ContBalanceAnuales
Boton=0
TipoAccion=Expresion
Expresion=ReporteImpresora(<T>ContBalanceAnuales<T>)
Activo=S
Visible=S

[Acciones.RepPan.ContBalanceAnuales]
Nombre=ContBalanceAnuales
Boton=0
TipoAccion=Expresion
Expresion=ReportePantalla(<T>ContBalanceAnuales<T>)
Activo=S
Visible=S




[(Variables).ListaEnCaptura]
(Inicio)=Info.EjercicioD
Info.EjercicioD=Info.EjercicioA
Info.EjercicioA=Info.PeriodoA
Info.PeriodoA=Info.ConMovimientos
Info.ConMovimientos=Info.RepAnuales
Info.RepAnuales=Info.CentroCostos
Info.CentroCostos=Info.CentroCostos2
Info.CentroCostos2=Info.CentroCostos3
Info.CentroCostos3=Info.Proyecto
Info.Proyecto=Info.UEN
Info.UEN=Rep.Sucursal
Rep.Sucursal=Info.Moneda
Info.Moneda=Rep.Titulo
Rep.Titulo=(Fin)

[(Variables).Info.CentroCostos2]
Carpeta=(Variables)
Clave=Info.CentroCostos2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.CentroCostos3]
Carpeta=(Variables)
Clave=Info.CentroCostos3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.UEN]
Carpeta=(Variables)
Clave=Info.UEN
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro








[Lista.Columnas]
0=135
1=192









[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=RepPan
RepPan=(Fin)
