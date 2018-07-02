
[Forma]
Clave=CDIEspecificarReciboVac
Icono=0
Modulos=(Todos)
Nombre=CDIEspecificarReciboVac

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=668
PosicionInicialArriba=197
PosicionInicialAlturaCliente=175
PosicionInicialAncho=237
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
BarraAcciones=S
AccionesCentro=S
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
ListaEnCaptura=(Lista)
CarpetaVisible=S

FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro
PermiteEditar=S
[(Variables).Info.Personal]
Carpeta=(Variables)
Clave=Info.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[(Variables).Info.Ejercicio]
Carpeta=(Variables)
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.ID]
Carpeta=(Variables)
Clave=Info.ID
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Lista.Columnas]
0=106
1=301

[(Variables).ListaEnCaptura]
(Inicio)=Info.Personal
Info.Personal=Info.Ejercicio
Info.Ejercicio=Info.ID
Info.ID=(Fin)


[Acciones.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




[Acciones.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S













[Forma.ListaAcciones]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=Cancelar Cambios
Cancelar Cambios=(Fin)
