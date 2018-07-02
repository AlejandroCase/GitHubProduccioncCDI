
[Forma]
Clave=CDIParAutComs
Icono=0
Modulos=(Todos)
MovModulo=COMS
Nombre=Fecha

ListaCarpetas=CDIParAutComs
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
CarpetaPrincipal=CDIParAutComs
PosicionInicialIzquierda=547
PosicionInicialArriba=289
PosicionInicialAlturaCliente=151
PosicionInicialAncho=271
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[CDIParAutComs]
Estilo=Ficha
Clave=CDIParAutComs
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIParAutComs
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PermiteEditar=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=(Lista)


[CDIParAutComs.CDIParAutComs.Fechad]
Carpeta=CDIParAutComs
Clave=CDIParAutComs.Fechad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDIParAutComs.CDIParAutComs.FechaA]
Carpeta=CDIParAutComs
Clave=CDIParAutComs.FechaA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[CDIParAutComs.CDIParAutComs.Mov]
Carpeta=CDIParAutComs
Clave=CDIParAutComs.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Aceptar.Variables Asignar / Ventana Aceptar]
Nombre=Variables Asignar / Ventana Aceptar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S


[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=Aceptar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=(Lista)

Activo=S
Visible=S


NombreEnBoton=S
ConCondicion=S
GuardarAntes=S
Antes=S
DespuesGuardar=S
EjecucionCondicion=CONDATOS(CDIParAutComs:CDIParAutComs.Fechad) Y CONDATOS(CDIParAutComs:CDIParAutComs.FechaA) Y CONDATOS(CDIParAutComs:CDIParAutComs.Mov)
AntesExpresiones=ASIGNA(Info.Fechad,CDIParAutComs:CDIParAutComs.Fechad)<BR>ASIGNA(Info.Fechaa,CDIParAutComs:CDIParAutComs.Fechaa)<BR>ASigna(info.mov,CDIParAutComs:CDIParAutComs.Mov)
[Acciones.Aceptar.CDIFlComAuto]
Nombre=CDIFlComAuto
Boton=0
TipoAccion=Formas
ClaveAccion=CDIFlComAuto
Activo=S
Visible=S













[Acciones.Aceptar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar / Ventana Aceptar
Variables Asignar / Ventana Aceptar=CDIFlComAuto
CDIFlComAuto=Cerrar
Cerrar=(Fin)






















[CDIParAutComs.ListaEnCaptura]
(Inicio)=CDIParAutComs.Fechad
CDIParAutComs.Fechad=CDIParAutComs.FechaA
CDIParAutComs.FechaA=CDIParAutComs.Mov
CDIParAutComs.Mov=(Fin)







































































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cerrar
Cerrar=(Fin)
