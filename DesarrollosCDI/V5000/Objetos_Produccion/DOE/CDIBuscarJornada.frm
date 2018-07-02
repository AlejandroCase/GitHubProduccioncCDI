
[Forma]
Clave=CDIBuscarJornada
Icono=0
CarpetaPrincipal=CDIBuscarJornada
Modulos=(Todos)
Nombre=Buscar Jornada

ListaCarpetas=CDIBuscarJornada
PosicionInicialIzquierda=531
PosicionInicialArriba=333
PosicionInicialAlturaCliente=62
PosicionInicialAncho=304
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=asigna(info.usuario,usuario)
[CDIBuscarJornada]
Estilo=Ficha
Clave=CDIBuscarJornada
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
ListaEnCaptura=Info.Jornada
CarpetaVisible=S

[CDIBuscarJornada.Info.Jornada]
Carpeta=CDIBuscarJornada
Clave=Info.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Buscar]
Nombre=Buscar
Boton=6
NombreDesplegar=&Buscar
EnBarraHerramientas=S
TipoAccion=Formas
Activo=S
Visible=S
EspacioPrevio=S
GuardarAntes=S

Antes=S
ClaveAccion=CDIJornadaNva
Multiple=S
ListaAccionesMultiples=(Lista)
ConfirmarAntes=S
AntesExpresiones=ProcesarSQL(<T> exec CDITraerJornada :tJ , :tU<T>, Info.Jornada ,info.Usuario )
[Acciones.Buscar.TraerJornada]
Nombre=TraerJornada
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSql(<T>exec CDIValidajornada :tJ<T>, Info.Jornada)   
[Acciones.Buscar.JornadaDa]
Nombre=JornadaDa
Boton=0
TipoAccion=formas
ClaveAccion=CDIJornadaNva
Activo=S
Visible=S












[Acciones.Buscar.busca]
Nombre=busca
Boton=0
TipoAccion=Expresion
Expresion=EjecutarSql(<T>exec CDITraerJornada :tJ<T>, Info.Jornada)
Activo=S
Visible=S

[Acciones.Buscar.b]
Nombre=b
Boton=0
TipoAccion=Formas
ClaveAccion=CDIJornadaNva
Activo=S
Visible=S


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S






















































[Acciones.Buscar.VariableAsigna]
Nombre=VariableAsigna
Boton=0
TipoAccion=controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Buscar.BuscarF]
Nombre=BuscarF
Boton=0
TipoAccion=formas
ClaveAccion=CDIJornadaNva
Activo=S
Visible=S





[Acciones.Buscar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Buscar.Buscar]
Nombre=Buscar
Boton=0
TipoAccion=Formas
ClaveAccion=CDIJornadaNvaActualiza
Activo=S
Visible=S



















[Acciones.Buscar.ListaAccionesMultiples]
(Inicio)=Aceptar
Aceptar=Buscar
Buscar=(Fin)





[Forma.ListaAcciones]
(Inicio)=Buscar
Buscar=Cerrar
Cerrar=(Fin)
