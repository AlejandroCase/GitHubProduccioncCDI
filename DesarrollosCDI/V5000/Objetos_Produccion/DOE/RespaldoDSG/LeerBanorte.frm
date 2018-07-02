
[Forma]
Clave=LeerBanorte
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Recibir Banorte
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Ruta
CarpetaPrincipal=Ruta
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=433
PosicionInicialArriba=320
PosicionInicialAlturaCliente=89
PosicionInicialAncho=500
ListaAcciones=leer
[Ruta]
Estilo=Ficha
Clave=Ruta
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
ListaEnCaptura=Info.CDIRutaArchivo
CarpetaVisible=S

[Ruta.Info.CDIRutaArchivo]
Carpeta=Ruta
Clave=Info.CDIRutaArchivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Acciones.leer]
Nombre=leer
Boton=57
NombreEnBoton=S
NombreDesplegar=leer
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.leer.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.leer.Expresionleer]
Nombre=Expresionleer
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S











Expresion=EjecutarSQL(<T>spExtraeInfoBanorteXML :tR, :nL<T>,info.CDIRutaArchivo, Info.Numero)


[Acciones.leer.ListaAccionesMultiples]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=Expresionleer
Expresionleer=(Fin)
