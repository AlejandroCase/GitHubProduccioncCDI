[Forma]
Clave=heEntradaExamenU
Icono=111
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialAlturaCliente=167
PosicionInicialAncho=185
Nombre=<T>Entrada a Examen<T>
PosicionInicialIzquierda=419
PosicionInicialArriba=283
VentanaTipoMarco=Di�logo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraAcciones=S
AccionesTamanoBoton=15x5
AccionesCentro=S
AccionesDivision=S
ListaAcciones=Aceptar<BR>Cerrar
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
CarpetaVisible=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro
PermiteEditar=S
ListaEnCaptura=Info.Personal<BR>Info.Examen1<BR>Info.Contrasena
[(Variables).Info.Examen1]
Carpeta=(Variables)
Clave=Info.Examen1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N
[Acciones.Aceptar.VariablesAsignar]
Nombre=VariablesAsignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S
[Acciones.Aceptar.heExamenPersonal]
Nombre=heExamenPersonal
Boton=0
TipoAccion=Formas
ClaveAccion=heExamenPersonal
Activo=S
Visible=S
ConCondicion=S
EjecucionCondicion=Info.Cantidad>0
EjecucionMensaje=<T>Datos Incorrectos<T>
EjecucionConError=S
[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=&Aceptar
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=VariablesAsignar<BR>InfoCantidad<BR>heExamenPersonal
Activo=S
Visible=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
[Acciones.Aceptar.InfoCantidad]
Nombre=InfoCantidad
Boton=0
TipoAccion=Expresion
Expresion=Asigna(Info.Cantidad,SQL(<T>SELECT COUNT(0) FROM heExamenPersonal WHERE IDExamen= :nIDExamen AND Estatus=:tEstatus AND PassWord=:tPW<T>,Info.Examen1,<T>SIN AFECTAR<T>,Info.Contrasena))
[(Variables).Info.Personal]
Carpeta=(Variables)
Clave=Info.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
[(Variables).Info.Contrasena]
Carpeta=(Variables)
Clave=Info.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro