
[Forma]
Clave=CDISelTipoSoc
Icono=0
Modulos=(Todos)
MovModulo=SOC
Nombre=CDISelTipoSoc

ListaCarpetas=CDITipoSocios
CarpetaPrincipal=CDITipoSocios
PosicionInicialIzquierda=352
PosicionInicialArriba=122
PosicionInicialAlturaCliente=98
PosicionInicialAncho=231
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesCentro=S
[CDITipoSocios]
Estilo=Ficha
Clave=CDITipoSocios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.CDITipoSocio
CarpetaVisible=S

PermiteEditar=S
FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro
[CDITipoSocios.Info.CDITipoSocio]
Carpeta=CDITipoSocios
Clave=Info.CDITipoSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Lista.Columnas]
Socio=127
NombreSocio=171
Cliente=127
RFC=124
Tipo=163



Orden=64
[CDITipoSocios.ListaEnCaptura]
(Inicio)=Info.CDITipoSocio
Info.CDITipoSocio=Info.CDISocioLista
Info.CDISocioLista=(Fin)

[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S












[Acciones.Aceptar.Asignamos]
Nombre=Asignamos
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Aceptar.Cerramos]
Nombre=Cerramos
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Aceptar.LlamamosForma]
Nombre=LlamamosForma
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S





Expresion=Forma(<T>CDISocCtrlAcceso<T>)


[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Asignamos
Asignamos=LlamamosForma
LlamamosForma=Cerramos
Cerramos=(Fin)



















[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
