[Forma]
Clave=RepContResultadosPresup
Nombre=Estado de Resultados con Presupuesto
Icono=0
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=700
PosicionInicialArriba=337
PosicionInicialAltura=396
PosicionInicialAncho=494
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
AccionesTamanoBoton=25x5
AccionesCentro=S
ListaAcciones=(Lista)
AccionesDivision=S
BarraHerramientas=S
VentanaEscCerrar=S
PosicionInicialAlturaCliente=481
ExpresionesAlMostrar=Asigna(Info.Ejercicio, EjercicioTrabajo) <BR>Asigna(Info.PeriodoD, 1);<BR>Asigna(Info.PeriodoA, PeriodoTrabajo)<BR>Asigna(Info.ConMovimientos, <T>Si<T>)<BR>Asigna(Info.AgruparCC, <T>No<T>)<BR>Asigna(Info.Desglosar, <T>No<T>)<BR>Asigna(Info.CentroCostosD, SQL(<T>SELECT Min(CentroCostos) FROM CentroCostos<T>))<BR>Asigna(Info.CentroCostosA, SQL(<T>SELECT Max(CentroCostos) FROM CentroCostos<T>))<BR>Asigna(Rep.Sucursal, Nulo)<BR>Asigna(Rep.Titulo, e(<T>Estado de Resultados con Presupuesto<T>))<BR>Asigna(Info.ContMoneda, Config.ContMoneda)<BR>Asigna(Info.Grupo, Nulo)<BR>Asigna(Info.Rama, <T>CC<T>)<BR>Asigna(Info.Controladora, Nulo)<BR>Asigna(Info.UnicamentePresupuesto, <T>No<T>)

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
FichaEspacioEntreLineas=8
FichaEspacioNombres=75
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaColorFondo=Plata
FichaAlineacion=Izquierda
ListaEnCaptura=(Lista)
PermiteEditar=S

[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.PeriodoA]
Carpeta=(Variables)
Clave=Info.PeriodoA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
Pegado=S
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.RepPan]
Nombre=RepPan
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S

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

[(Variables).Info.PeriodoD]
Carpeta=(Variables)
Clave=Info.PeriodoD
Editar=S
ValidaNombre=S
3D=S
Tamano=12
LineaNueva=S
ColorFondo=Blanco
ColorFuente=Negro

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
ListaAccionesMultiples=Variables Asignar<BR>ContResultadosP
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
Tamano=47
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

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

[(Variables).Info.Desglosar]
Carpeta=(Variables)
Clave=Info.Desglosar
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[(Variables).Info.AgruparCC]
Carpeta=(Variables)
Clave=Info.AgruparCC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.ContMoneda]
Carpeta=(Variables)
Clave=Info.ContMoneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.Grupo]
Carpeta=(Variables)
Clave=Info.Grupo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
Pegado=S

[(Variables).Info.CentroCostosD]
Carpeta=(Variables)
Clave=Info.CentroCostosD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.CentroCostosA]
Carpeta=(Variables)
Clave=Info.CentroCostosA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Imprimir.ContResultadosP]
Nombre=ContResultadosP
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
Expresion=Si(Info.AgruparCC=<T>No<T>, ReporteImpresora(<T>ContResultadosPresup<T>), ReporteImpresora(<T>ContResultadosPresupCC<T>))

[Acciones.RepPan.ContResultadosP]
Nombre=ContResultadosP
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Si(Info.AgruparCC=<T>No<T>, ReportePantalla(<T>ContResultadosPresup<T>), ReportePantalla(<T>ContResultadosPresupCC<T>))
[(Variables).Info.UnicamentePresupuesto]
Carpeta=(Variables)
Clave=Info.UnicamentePresupuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco
ColorFuente=Negro



[Acciones.RepPan.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=ContResultadosP
ContResultadosP=(Fin)





[(Variables).Info.CentroCostos2]
Carpeta=(Variables)
Clave=Info.CentroCostos2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.CentroCostos3]
Carpeta=(Variables)
Clave=Info.CentroCostos3
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

LineaNueva=S
[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.UEN]
Carpeta=(Variables)
Clave=Info.UEN
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro



LineaNueva=S









[(Variables).ListaEnCaptura]
(Inicio)=Info.Ejercicio
Info.Ejercicio=Info.PeriodoD
Info.PeriodoD=Info.PeriodoA
Info.PeriodoA=Info.ConMovimientos
Info.ConMovimientos=Info.Desglosar
Info.Desglosar=Info.UnicamentePresupuesto
Info.UnicamentePresupuesto=Info.ContMoneda
Info.ContMoneda=Info.CentroCostosD
Info.CentroCostosD=Info.CentroCostosA
Info.CentroCostosA=Info.CentroCostos2
Info.CentroCostos2=Info.CentroCostos3
Info.CentroCostos3=Info.Proyecto
Info.Proyecto=Info.UEN
Info.UEN=Rep.Sucursal
Rep.Sucursal=Info.AgruparCC
Info.AgruparCC=Info.Grupo
Info.Grupo=Rep.Titulo
Rep.Titulo=(Fin)



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=RepPan
RepPan=(Fin)
