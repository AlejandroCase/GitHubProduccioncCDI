
[Forma]
Clave=PersonalAtributo
Icono=4
Modulos=(Todos)
Nombre=Atributos del Personal

ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=277
PosicionInicialArriba=150
PosicionInicialAlturaCliente=431
PosicionInicialAncho=811
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Lista(Info.Personal, Info.Nombre)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
Totalizadores=S
PosicionSec1=368
PosicionSec2=183
[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=PersonalAtributo
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroAplicaEn=Atributo.Tipo
FiltroPredefinido=S
FiltroAutoCampo=(Validaciones Memoria)
FiltroAutoValidar=AtributoTipo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroEstilo=Directorio
FiltroRespetar=S
FiltroTipo=Automático
CarpetaVisible=S

IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Atributo<T>
ElementosPorPagina=200

PestanaOtroNombre=S
PestanaNombre=Atributos
IconosNombre=PersonalAtributo:PersonalAtributo.Atributo
FiltroGeneral=PersonalAtributo.Personal=<T>{Info.Personal}<T>
[Lista.Atributo.Nombre]
Carpeta=Lista
Clave=Atributo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.PersonalAtributo.Peso]
Carpeta=Lista
Clave=PersonalAtributo.Peso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.PersonalAtributo.Valor]
Carpeta=Lista
Clave=PersonalAtributo.Valor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Columnas]
Atributo=124
Nombre=304
Peso=62
Opcion=261
Valor=64


0=98
1=230
2=129
3=57
4=66
5=-2
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=<T>&Cerrar<T>
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S




[Acciones.Personalizar]
Nombre=Personalizar
Boton=45
NombreDesplegar=Personalizar Vista
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S








[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
Totalizadores1=Calificación<BR>Peso
Totalizadores2=Suma(PersonalAtributo:ValorPeso)<BR>Suma(PersonalAtributo:PersonalAtributo.Peso)
Totalizadores3=#.##<BR>0.00%
Totalizadores=S
TotCarpetaRenglones=Lista
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CarpetaVisible=S


[(Carpeta Totalizadores).Peso]
Carpeta=(Carpeta Totalizadores)
Clave=Peso
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=10
ColorFondo=Plata
ColorFuente=$00808040
Efectos=[Negritas]








[Lista.PersonalAtributo.Observaciones]
Carpeta=Lista
Clave=PersonalAtributo.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco










[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Calificación
Calificación=Peso
Peso=(Fin)

[(Carpeta Totalizadores).Calificación]
Carpeta=(Carpeta Totalizadores)
Clave=Calificación
Editar=S
ValidaNombre=S
3D=S
Pegado=S
Tamano=10
ColorFondo=Plata
Efectos=[Negritas]




[Lista.ListaEnCaptura]
(Inicio)=Atributo.Nombre
Atributo.Nombre=PersonalAtributo.Nivel
PersonalAtributo.Nivel=PersonalAtributo.Valor
PersonalAtributo.Valor=PersonalAtributo.Peso
PersonalAtributo.Peso=PersonalAtributo.Observaciones
PersonalAtributo.Observaciones=(Fin)

[Lista.PersonalAtributo.Nivel]
Carpeta=Lista
Clave=PersonalAtributo.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco










[Acciones.PersonalAtributoEntrevista]
Nombre=PersonalAtributoEntrevista
Boton=79
NombreEnBoton=S
NombreDesplegar=Atributos de las &Entrevistas
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=PersonalAtributoEntrevista
Activo=S
Visible=S



[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=PersonalAtributoEntrevista
PersonalAtributoEntrevista=Personalizar
Personalizar=(Fin)
