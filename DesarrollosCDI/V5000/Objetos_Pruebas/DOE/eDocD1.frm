
[Forma]
Clave=eDocD1
Icono=0
Modulos=(Todos)
Nombre=eDoc - Lista Secciones

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Modulo,Info.Descripcion)
PosicionInicialAlturaCliente=360
PosicionInicialAncho=794
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=243
PosicionInicialArriba=163
ExpresionesAlMostrar=Asigna(Temp.Numerico4,0)
[Lista]
Estilo=Hoja
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=eDocD1
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
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
OtroOrden=S

ListaOrden=eDocD1.Orden<TAB>(Acendente)

FiltroGeneral=eDocD1.Modulo = {Comillas(Info.Modulo)} AND eDocD1.eDoc = {Comillas(Info.Descripcion)}
[Lista.eDocD1.Seccion]
Carpeta=Lista
Clave=eDocD1.Seccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.eDocD1.SubSeccionDe]
Carpeta=Lista
Clave=eDocD1.SubSeccionDe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Lista.eDocD1.Vista]
Carpeta=Lista
Clave=eDocD1.Vista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.eDocD1.Cierre]
Carpeta=Lista
Clave=eDocD1.Cierre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.eDocD1.TablaSt]
Carpeta=Lista
Clave=eDocD1.TablaSt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

[Lista.Columnas]
Orden=64
Seccion=154
SubSeccionDe=159
Vista=179
Cierre=87
TablaSt=179

[Acciones.MapeoCampo]
Nombre=MapeoCampo
Boton=47
NombreDesplegar=&Detalle
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=eDocDMapeoCampo1
Activo=S
Visible=S



Antes=S












AntesExpresiones=Asigna(Info.Vista,eDocD1:eDocD1.Vista)<BR>Asigna(Info.RID,eDocD1:eDocD1.RID)<BR>Asigna(Info.Categoria,eDocD1:eDocD1.Seccion)





[Acciones.TagConservar]
Nombre=TagConservar
Boton=78
NombreDesplegar=&Atributos XML a conservar (vacios)
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=eDocDTagSostener1
Activo=S
Visible=S
Antes=S
AntesExpresiones=Asigna(Info.RID,eDocD1:eDocD1.RID)





























[Acciones.Ordenar]
Nombre=Ordenar
Boton=50
NombreDesplegar=Cambiar &Orden
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Visible=S







Antes=S





DespuesGuardar=S
AntesExpresiones=FormaModal(<T>eDocDOrden1<T>)
[Orden.Columnas]
0=-2
1=538











[Lista.ListaEnCaptura]
(Inicio)=eDocD1.Seccion
eDocD1.Seccion=eDocD1.SubSeccionDe
eDocD1.SubSeccionDe=eDocD1.Vista
eDocD1.Vista=eDocD1.Cierre
eDocD1.Cierre=eDocD1.TablaSt
eDocD1.TablaSt=(Fin)









[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=MapeoCampo
MapeoCampo=TagConservar
TagConservar=Ordenar
Ordenar=(Fin)
