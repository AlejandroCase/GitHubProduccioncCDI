
[Forma]
Clave=CDIPersSucMod
Icono=200
Modulos=(Todos)
Nombre=Registro Personal
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIPersSuc
PosicionInicialIzquierda=103
PosicionInicialArriba=39
PosicionInicialAlturaCliente=650
PosicionInicialAncho=1159
PosicionSec1=53
PosicionCol2=786
VentanaSinIconosMarco=S
VentanaSiempreAlFrente=S
VentanaAjustarZonas=S
VentanaBloquearAjuste=S
VentanaExclusiva=S
[CDIPersSuc]
Estilo=Ficha
Clave=CDIPersSuc
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPersSuc
Fuente={Tahoma, 16, Negro, [Negritas]}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=CDIPersSuc.Personal
CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
ConFuenteEspecial=S
FiltroGeneral=CDIPersSuc.id={info.id}
[CDIPersSuc.CDIPersSuc.Personal]
Carpeta=CDIPersSuc
Clave=CDIPersSuc.Personal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPlugAsistenciaSuc]
Estilo=Ficha
PestanaOtroNombre=S
Clave=CDIPlugAsistenciaSuc
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIPlugAsistenciaSuc
Fuente={Tahoma, 12, Negro, [Negritas]}
VistaMaestra=CDIPersSuc
LlaveLocal=CDIPlugAsistenciaSuc.ID
LlaveMaestra=CDIPersSuc.id
FichaEspacioEntreLineas=20
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=$FFFFFFFF
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

FichaMarco=S

ConFuenteEspecial=S
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Nombre]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Efectos=[Negritas]
ColorFuente=$FFFFFFFF
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Jornada]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Efectos=[Negritas]
ColorFuente=$FFFFFFFF


[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Movimiento]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Efectos=[Negritas]
ColorFuente=$FFFFFFFF
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.HoraRegistro]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.HoraRegistro
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
Efectos=[Negritas]

Pegado=S
ColorFuente=$FFFFFFFF
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Departamento]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Departamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Efectos=[Negritas]
ColorFuente=$FFFFFFFF
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Puesto]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Puesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Efectos=[Negritas]
ColorFuente=$FFFFFFFF
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Mensaje]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50X2

Efectos=[Negritas + Cursiva]
ColorFuente=$00400000
ColorFondo=$0072C0C2
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Estatus]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00F2E440

Efectos=[Negritas]
ColorFuente=$FFFFFFFF
[CDIPlugAsistenciaSuc.CDIPlugAsistenciaSuc.Color]
Carpeta=CDIPlugAsistenciaSuc
Clave=CDIPlugAsistenciaSuc.Color
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Amarillo


Efectos=[Negritas + Subrayado]
[Foto]
Estilo=Ficha
Clave=Foto
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=CDIPersSuc
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
ListaEnCaptura=Foto
CarpetaVisible=S

[Foto.Foto]
Carpeta=Foto
Clave=Foto
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=45x30
ColorFondo=Blanco



















ConScroll=S
SinRecapitular=S



























































[CDIPlugAsistenciaSuc.ListaEnCaptura]
(Inicio)=CDIPlugAsistenciaSuc.Nombre
CDIPlugAsistenciaSuc.Nombre=CDIPlugAsistenciaSuc.Departamento
CDIPlugAsistenciaSuc.Departamento=CDIPlugAsistenciaSuc.Estatus
CDIPlugAsistenciaSuc.Estatus=CDIPlugAsistenciaSuc.Puesto
CDIPlugAsistenciaSuc.Puesto=CDIPlugAsistenciaSuc.Jornada
CDIPlugAsistenciaSuc.Jornada=CDIPlugAsistenciaSuc.Movimiento
CDIPlugAsistenciaSuc.Movimiento=CDIPlugAsistenciaSuc.HoraRegistro
CDIPlugAsistenciaSuc.HoraRegistro=CDIPlugAsistenciaSuc.Mensaje
CDIPlugAsistenciaSuc.Mensaje=CDIPlugAsistenciaSuc.Color
CDIPlugAsistenciaSuc.Color=(Fin)



[Forma.ListaCarpetas]
(Inicio)=CDIPersSuc
CDIPersSuc=CDIPlugAsistenciaSuc
CDIPlugAsistenciaSuc=Foto
Foto=(Fin)
