
[Forma]
Clave=CDIEliminarJTemp
Icono=0
CarpetaPrincipal=CDIEliminarJTemp
Modulos=(Todos)
Nombre=Jornada Temporal

ListaCarpetas=CDIEliminarJTemp
PosicionInicialIzquierda=510
PosicionInicialArriba=334
PosicionInicialAlturaCliente=60
PosicionInicialAncho=346
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Eliminar
BarraHerramientas=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
[CDIEliminarJTemp]
Estilo=Ficha
Clave=CDIEliminarJTemp
PermiteEditar=S
ConResumen=S
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
ListaEnCaptura=Info.Jornada
CarpetaVisible=S

[CDIEliminarJTemp.Info.Jornada]
Carpeta=CDIEliminarJTemp
Clave=Info.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreDesplegar=&Eliminar Jornada
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Expresion
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S
EspacioPrevio=S
ConfirmarAntes=S
Expresion=EjecutarSQL( <T>exec CDIEliminarJornadaTemporal<T>)
