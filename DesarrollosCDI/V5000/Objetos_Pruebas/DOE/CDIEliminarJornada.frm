
[Forma]
Clave=CDIEliminarJornada
Icono=0
CarpetaPrincipal=CDIEliminarjornada
Modulos=(Todos)
Nombre=Eliminar Jornada

ListaCarpetas=CDIEliminarjornada
PosicionInicialIzquierda=546
PosicionInicialArriba=331
PosicionInicialAlturaCliente=67
PosicionInicialAncho=273
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
[CDIEliminarjornada]
Estilo=Ficha
Clave=CDIEliminarjornada
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

PermiteEditar=S
[CDIEliminarjornada.Info.Jornada]
Carpeta=CDIEliminarjornada
Clave=Info.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

EditarConBloqueo=N
[Acciones.Aceptar]
Nombre=Aceptar
Boton=5
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Expresion
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S
GuardarAntes=S
ConfirmarAntes=S
Expresion=ProcesarSQL(<T> exec CDIEliminarJornada :tG<T>, Info.Jornada )
