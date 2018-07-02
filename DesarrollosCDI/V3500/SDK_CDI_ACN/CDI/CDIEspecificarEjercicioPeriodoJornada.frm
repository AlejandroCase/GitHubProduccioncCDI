[Forma]
Clave=CDIEspecificarEjercicioPeriodoJornada
Nombre=Especificar Ejercicio / Periodo / Jorn
Icono=0
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=374
PosicionInicialArriba=208
PosicionInicialAlturaCliente=317
PosicionInicialAncho=276
AccionesTamanoBoton=15x5
BarraAcciones=S
ListaAcciones=(Lista)
AccionesCentro=S
AccionesDivision=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S

VentanaEstadoInicial=Normal
ExpresionesAlCerrar=sql(<T>exec Sp_UpPersonalJornada :tp, :suc<T>,Info.PeriodoTipo,Info.Sucursal)
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



[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=&Aceptar
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S
EnBarraAcciones=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=<T>&Cancelar<T>
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S



[(Variables).Info.PeriodoTipo]
Carpeta=(Variables)
Clave=Info.PeriodoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro


[Lista.Columnas]
PeriodoTipo=247








0=91
1=267



Grupo=304


[(Variables).Info.Sucursal]
Carpeta=(Variables)
Clave=Info.Sucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro




[(Variables).ListaEnCaptura]
(Inicio)=Info.PeriodoTipo
Info.PeriodoTipo=Info.Sucursal
Info.Sucursal=(Fin)











[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
