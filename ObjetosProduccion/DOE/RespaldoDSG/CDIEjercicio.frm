
[Forma]
Clave=CDIEjercicio
Icono=0
Modulos=(Todos)
Nombre=Ejercicio
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=532
PosicionInicialArriba=310
PosicionInicialAlturaCliente=108
PosicionInicialAncho=301
BarraAcciones=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Ejercicio
CarpetaVisible=S

FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Plata
PermiteEditar=S
[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=7
NombreEnBoton=S
NombreDesplegar=Limpiar
EnBarraAcciones=S
TipoAccion=Expresion
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
Antes=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreDesplegar=Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

NombreEnBoton=S




EspacioPrevio=S









[Acciones.Aceptar.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Sql(<T>xpCDILimpiarFechas :nE<T>,Info.Ejercicio)




[Acciones.Aceptar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=Expresion
Expresion=Cerrar
Cerrar=(Fin)



[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
