
[Forma]
Clave=EmpresaGralCFDFlexible1
Icono=0
Modulos=(Todos)
Nombre=Configuración General CFD Flexible

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=550
PosicionInicialArriba=294
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
Comentarios=Info.Empresa
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaExclusivaOpcion=0
ExpresionesAlCerrar=Forma.ActualizarForma(<T>Venta<T>)
[Ficha]
Estilo=Ficha
Clave=Ficha
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaGralCFDFlexible1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=141
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Configuración General CFD Flexible


FiltroGeneral=EmpresaGralCFDFlexible1.Empresa = <T>{Info.Empresa}<T>
[Ficha.EmpresaGralCFDFlexible1.eDoc]
Carpeta=Ficha
Clave=EmpresaGralCFDFlexible1.eDoc
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Ficha.EmpresaGralCFDFlexible1.CFDFlex]
Carpeta=Ficha
Clave=EmpresaGralCFDFlexible1.CFDFlex
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Ficha.EmpresaGralCFDFlexible1.CFDI]
Carpeta=Ficha
Clave=EmpresaGralCFDFlexible1.CFDI
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





[Ficha.ListaEnCaptura]
(Inicio)=EmpresaGralCFDFlexible1.eDoc
EmpresaGralCFDFlexible1.eDoc=EmpresaGralCFDFlexible1.CFDFlex
EmpresaGralCFDFlexible1.CFDFlex=EmpresaGralCFDFlexible1.CFDI
EmpresaGralCFDFlexible1.CFDI=(Fin)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
GuardarAntes=S
