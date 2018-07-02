
[Forma]
Clave=CDIFirmaWeb
Icono=0
CarpetaPrincipal=Visor
Modulos=(Todos)
MovModulo=CDIFirmaWeb
Nombre=Catalogo Firma Comunicados

ListaCarpetas=(Lista)
PosicionInicialIzquierda=1803
PosicionInicialArriba=243
PosicionInicialAlturaCliente=235
PosicionInicialAncho=516
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionCol1=152
[CDIFirmaWeb]
Estilo=Hoja
Clave=CDIFirmaWeb
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIFirmaWeb
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIFirmaWeb.Usuario

CarpetaVisible=S



PermiteEditar=S
Detalle=S
VistaMaestra=CDIFirmaWeb
LlaveLocal=CDIFirmaWeb.ID
LlaveMaestra=CDIFirmaWeb.ID
[CDIFirmaWeb.Columnas]
Firma=217
Usuario=75


Usuario_1=64
[Acciones.Firma]
Nombre=Firma
Boton=86
NombreEnBoton=S
NombreDesplegar=&Firma
EnBarraHerramientas=S
EspacioPrevio=S
Activo=S
Visible=S
TipoAccion=expresion




GuardarAntes=S
Expresion=EditorHTML( CDIFirmaWeb:CDIFirmaWeb.Firma,Firma )
[Visor]
Estilo=Ficha
Clave=Visor
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIFirmaWeb
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[Visor.CDIFirmaWeb.Firma]
Carpeta=Visor
Clave=CDIFirmaWeb.Firma
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=40x10


[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S





[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S















[CDIFirmaWeb.CDIFirmaWeb.Usuario]
Carpeta=CDIFirmaWeb
Clave=CDIFirmaWeb.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

















[Lista.Columnas]
0=99
1=375











































[Visor.CDIFirmaWeb.Usuario]
Carpeta=Visor
Clave=CDIFirmaWeb.Usuario
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco






























[Visor.LlaveLocal]
(Inicio)=CDIFirmaWeb.Usuario
CDIFirmaWeb.Usuario=CDIFirmaWeb.Firma
CDIFirmaWeb.Firma=(Fin)

[Visor.LlaveMaestra]
(Inicio)=CDIFirmaWeb.Usuario
CDIFirmaWeb.Usuario=CDIFirmaWeb.Firma
CDIFirmaWeb.Firma=(Fin)








[CDIFirmaWeb.ListaEnCaptura]
(Inicio)=CDIFirmaWeb.Usuario
CDIFirmaWeb.Usuario=CDIFirmaWeb.Firma
CDIFirmaWeb.Firma=(Fin)




















[Visor.ListaEnCaptura]
(Inicio)=CDIFirmaWeb.Usuario
CDIFirmaWeb.Usuario=CDIFirmaWeb.Firma
CDIFirmaWeb.Firma=(Fin)



[Forma.ListaCarpetas]
(Inicio)=CDIFirmaWeb
CDIFirmaWeb=Visor
Visor=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=Firma
Firma=(Fin)
