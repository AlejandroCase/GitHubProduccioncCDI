
[Forma]
Clave=CDIPaqHojasA
Icono=0
Modulos=(Todos)
Nombre=Comité
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=538
PosicionInicialArriba=309
PosicionInicialAlturaCliente=112
PosicionInicialAncho=289
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
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
ListaEnCaptura=Info.CDIComite
CarpetaVisible=S

[(Variables).Info.CDIComite]
Carpeta=(Variables)
Clave=Info.CDIComite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Clave.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Clave.Cambiar Situacion]
Nombre=Cambiar Situacion
Boton=0
TipoAccion=Formas
ClaveAccion=CDIPaqInscRes
Activo=S
Visible=S

[Acciones.Clave]
Nombre=Clave
Boton=7
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S
NombreEnBoton=S
NombreDesplegar=Procesar e Imprimir


[Acciones.Clave.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Cambiar Situacion
Cambiar Situacion=(Fin)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S





NombreEnBoton=S
EspacioPrevio=S







[Lista.Columnas]
0=135
1=192













[Forma.ListaAcciones]
(Inicio)=Clave
Clave=Cerrar
Cerrar=(Fin)
