
[Forma]
Clave=CDIExpSoc2
Icono=0
Modulos=(Todos)
Nombre=Tarjeton Socios
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=CDIExpSoc2
CarpetaPrincipal=CDIExpSoc2
DialogoAbrir=S
PosicionInicialIzquierda=178
PosicionInicialArriba=53
PosicionInicialAlturaCliente=623
PosicionInicialAncho=1010
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Documento Abrir
[CDIExpSoc2]
Estilo=Ficha
Pestana=S
Clave=CDIExpSoc2
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICteCat
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
AlinearTodaCarpeta=S
[(Carpeta Abrir)]
Estilo=Iconos
Pestana=S
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDICteCat
Fuente={Tahoma, 8, Negro, []}
IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
IconosSubTitulo=<T>Socio<T>
IconosConPaginas=S

FiltroGrupo1=CDICteCat.Tipo
FiltroGrupo2=CDICteCat.Categoria
FiltroGrupo3=CDICteCat.SubCategoria
FiltroGrupo4=CDICteCat.Sede
FiltroGrupo5=CDICteCat.Clase
IconosNombre=CDICteCat:CDICteCat.Socio
FiltroTodo=S
FiltroGeneral=cte.Titular=1
[(Carpeta Abrir).CDICteCat.Tipo]
Carpeta=(Carpeta Abrir)
Clave=CDICteCat.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).CDICteCat.Categoria]
Carpeta=(Carpeta Abrir)
Clave=CDICteCat.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDICteCat.Sede]
Carpeta=(Carpeta Abrir)
Clave=CDICteCat.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDICteCat.SubCategoria]
Carpeta=(Carpeta Abrir)
Clave=CDICteCat.SubCategoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDICteCat.Aporta]
Carpeta=(Carpeta Abrir)
Clave=CDICteCat.Aporta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[(Carpeta Abrir).CDICteCat.Actividad]
Carpeta=(Carpeta Abrir)
Clave=CDICteCat.Actividad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).CDICteCat.Clase]
Carpeta=(Carpeta Abrir)
Clave=CDICteCat.Clase
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIExpSoc2.CDICteCat.Socio]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=
ColorFondo=Blanco


[CDIExpSoc2.Columnas]
Socio=64

[(Carpeta Abrir).Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2



9=-2








[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDICteCat.Tipo
CDICteCat.Tipo=CDICteCat.Categoria
CDICteCat.Categoria=CDICteCat.Sede
CDICteCat.Sede=CDICteCat.SubCategoria
CDICteCat.SubCategoria=CDICteCat.Aporta
CDICteCat.Aporta=CDICteCat.Actividad
CDICteCat.Actividad=CDICteCat.Clase
CDICteCat.Clase=Cte.Nombre
Cte.Nombre=(Fin)


[CDIExpSoc2.Cte.Nombre]
Carpeta=CDIExpSoc2
Clave=Cte.Nombre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.Tipo]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIExpSoc2.CDICteCat.Categoria]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Categoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.SubCategoria]
Carpeta=CDIExpSoc2
Clave=CDICteCat.SubCategoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.Sede]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Sede
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.Aporta]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Aporta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIExpSoc2.CDICteCat.Clase]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Clase
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.Actividad]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Actividad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.Formato]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Formato
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.Situacion]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Situacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.Recomendado]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Recomendado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.CDICteCat.CDIFormaPago]
Carpeta=CDIExpSoc2
Clave=CDICteCat.CDIFormaPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIExpSoc2.Cte.CDIFacturarA]
Carpeta=CDIExpSoc2
Clave=Cte.CDIFacturarA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


Pegado=S
[CDIExpSoc2.Cte.CDICuotaMembresia]
Carpeta=CDIExpSoc2
Clave=Cte.CDICuotaMembresia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[CDIExpSoc2.Cte.CDISubsidio]
Carpeta=CDIExpSoc2
Clave=Cte.CDISubsidio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=S
[Acciones.Documento Abrir]
Nombre=Documento Abrir
Boton=2
NombreDesplegar=Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S







[CDIExpSoc2.ListaEnCaptura]
(Inicio)=CDICteCat.Socio
CDICteCat.Socio=Cte.Nombre
Cte.Nombre=CDICteCat.Tipo
CDICteCat.Tipo=CDICteCat.Categoria
CDICteCat.Categoria=CDICteCat.SubCategoria
CDICteCat.SubCategoria=CDICteCat.Sede
CDICteCat.Sede=CDICteCat.Aporta
CDICteCat.Aporta=CDICteCat.Clase
CDICteCat.Clase=CDICteCat.Actividad
CDICteCat.Actividad=CDICteCat.Formato
CDICteCat.Formato=CDICteCat.Situacion
CDICteCat.Situacion=CDICteCat.Recomendado
CDICteCat.Recomendado=CDICteCat.CDIFormaPago
CDICteCat.CDIFormaPago=Cte.CDIFacturarA
Cte.CDIFacturarA=Cte.CDICuotaMembresia
Cte.CDICuotaMembresia=Cte.CDISubsidio
Cte.CDISubsidio=CDICteCat.Descuento
CDICteCat.Descuento=(Fin)

[CDIExpSoc2.CDICteCat.Descuento]
Carpeta=CDIExpSoc2
Clave=CDICteCat.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
