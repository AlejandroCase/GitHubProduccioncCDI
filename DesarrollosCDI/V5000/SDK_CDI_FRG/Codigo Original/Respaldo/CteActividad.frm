
[Forma]
Clave=CteActividad
Icono=0
Modulos=(Todos)
Nombre=Cte por Actividad

ListaCarpetas=CteActividad
CarpetaPrincipal=CteActividad
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
ExpresionesAlActivar=asigna(info.CteTipo,<T><T>)<BR>Asigna(Info.CteActividad,<T><T>)
PosicionInicialIzquierda=427
PosicionInicialArriba=192
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
[CteActividad]
Estilo=Ficha
Clave=CteActividad
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
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[CteActividad.Info.CteActividad]
Carpeta=CteActividad
Clave=Info.CteActividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CteActividad.Info.CteTipo]
Carpeta=CteActividad
Clave=Info.CteTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.Columnas]
Tipo=207

[CteActividad.ListaEnCaptura]
(Inicio)=Info.CteActividad
Info.CteActividad=Info.CteTipo
Info.CteTipo=(Fin)
