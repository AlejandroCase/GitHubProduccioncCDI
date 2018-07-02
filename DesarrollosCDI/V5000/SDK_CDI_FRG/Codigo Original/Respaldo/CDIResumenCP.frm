
[Forma]
Clave=CDIResumenCP
Icono=0
CarpetaPrincipal=CDIResumenCP
Modulos=(Todos)
Nombre=Resumen por CP

ListaCarpetas=CDIResumenCP
PosicionInicialAlturaCliente=125
PosicionInicialAncho=300
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=563
PosicionInicialArriba=321
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
VentanaExclusivaOpcion=0
VentanaColor=Plata
ExpresionesAlActivar=Asigna(Info.ClavePresupuestal,<T><T>)<BR>Asigna(Info.Ejercicio,<T><T>)
[CDIResumenCP]
Estilo=Ficha
Clave=CDIResumenCP
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
PermiteEditar=S

[CDIResumenCP.Info.ClavePresupuestal]
Carpeta=CDIResumenCP
Clave=Info.ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIResumenCP.Info.Ejercicio]
Carpeta=CDIResumenCP
Clave=Info.Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[CDIResumenCP.ListaEnCaptura]
(Inicio)=Info.ClavePresupuestal
Info.ClavePresupuestal=Info.Ejercicio
Info.Ejercicio=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=&Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S






[Lista.Columnas]
0=401
1=315






[Acciones.Aceptar.Acept]
Nombre=Acept
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Aceptar.Expresa]
Nombre=Expresa
Boton=0
TipoAccion=expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>EXEC CDIResumenCP :tCP, :nEjer, :tUsu<T>,info.clavepresupuestal,info.ejercicio,usuario)
[Acciones.Aceptar.forma]
Nombre=forma
Boton=0
TipoAccion=formas
ClaveAccion=CDIresumenMovCP
Activo=S
Visible=S



[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Acept
Acept=Expresa
Expresa=forma
forma=(Fin)



































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
