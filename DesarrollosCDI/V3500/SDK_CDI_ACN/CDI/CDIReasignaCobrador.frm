
[Forma]
Clave=CDIReasignaCobrador
Icono=0
Modulos=(Todos)
Nombre=<T>Reasignar Cobrador<T>

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=527
PosicionInicialArriba=310
PosicionInicialAlturaCliente=115
PosicionInicialAncho=239
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Dise�o
VentanaExclusiva=S
VentanaEstadoInicial=Normal
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

[(Variables).Info.AgenteD]
Carpeta=(Variables)
Clave=Info.AgenteD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.AgenteA]
Carpeta=(Variables)
Clave=Info.AgenteA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


AccionAlEnterBloquearAvance=N
[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S

Activo=S
Visible=S
EspacioPrevio=S



TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S










[Lista.Columnas]
0=105
1=247















[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Forma
Forma=Cierra
Cierra=(Fin)














[(Variables).ListaEnCaptura]
(Inicio)=Info.AgenteD
Info.AgenteD=Info.AgenteA
Info.AgenteA=(Fin)











[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)