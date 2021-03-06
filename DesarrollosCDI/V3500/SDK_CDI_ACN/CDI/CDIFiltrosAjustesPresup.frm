
[Forma]
Clave=CDIFiltrosAjustesPresup
Icono=0
Modulos=(Todos)
Nombre=Ajustes Al Presupuesto
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=510
PosicionInicialArriba=418
PosicionInicialAlturaCliente=141
PosicionInicialAncho=259
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
MovModulo=CP
EsMovimiento=S
MovimientosValidos=(Lista)
TituloAuto=S
MovEspecificos=Excepciones
ExpresionesAlMostrar=Asigna(Info.Mov, <T>Ajuste<T>)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
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
ListaEnCaptura=(Lista)

CarpetaVisible=S

[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
Efectos=[Negritas]

[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
0=135
1=192

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S



NombreEnBoton=S
EspacioPrevio=S
ListaAccionesMultiples=(Lista)

[Acciones.Preliminar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar.Reporte]
Nombre=Reporte
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CDIRepAjustesPresupuesto
Activo=S
Visible=S






[Acciones.Preliminar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Reporte
Reporte=(Fin)































[(Variables).ListaEnCaptura]
(Inicio)=Info.Proyecto
Info.Proyecto=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=(Fin)







[Forma.MovimientosValidos]
(Inicio)=Anteproyecto
Anteproyecto=Traspaso
Traspaso=Traspaso Remanente
Traspaso Remanente=Operacion
Operacion=Devolución Anterior
Devolución Anterior=A Mes 13
A Mes 13=Devolución Actual
Devolución Actual=Reservado Flujo
Reservado Flujo=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Preliminar
Preliminar=(Fin)
