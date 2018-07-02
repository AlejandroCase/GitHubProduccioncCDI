[Forma]
Clave=PersonalAtributoEntrevista
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
Vista=PersonalAtributoEntrevista
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
IconosNombre=PersonalAtributoEntrevista:PersonalAtributoEntrevista.Atributo
FiltroGeneral=PersonalAtributoEntrevista.Personal=<T>{Info.Personal}<T>
[Lista.Atributo.Nombre]
Carpeta=Lista
Clave=Atributo.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Lista.PersonalAtributoEntrevista.Peso]
Carpeta=Lista
Clave=PersonalAtributoEntrevista.Peso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[Lista.PersonalAtributoEntrevista.Valor]
Carpeta=Lista
Clave=PersonalAtributoEntrevista.Valor
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
Totalizadores2=Suma(PersonalAtributoEntrevista:ValorPeso)<BR>Suma(PersonalAtributoEntrevista:PersonalAtributoEntrevista.Peso)
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








[Lista.PersonalAtributoEntrevista.Observaciones]
Carpeta=Lista
Clave=PersonalAtributoEntrevista.Observaciones
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
Atributo.Nombre=PersonalAtributoEntrevista.Nivel
PersonalAtributoEntrevista.Nivel=PersonalAtributoEntrevista.Valor
PersonalAtributoEntrevista.Valor=PersonalAtributoEntrevista.Peso
PersonalAtributoEntrevista.Peso=PersonalAtributoEntrevista.Observaciones
PersonalAtributoEntrevista.Observaciones=(Fin)

[Lista.PersonalAtributoEntrevista.Nivel]
Carpeta=Lista
Clave=PersonalAtributoEntrevista.Nivel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Personalizar
Personalizar=(Fin)
