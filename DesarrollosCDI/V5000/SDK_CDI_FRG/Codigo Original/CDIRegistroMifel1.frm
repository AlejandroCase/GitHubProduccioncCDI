
[Forma]
Clave=CDIRegistroMifel1
Icono=0
CarpetaPrincipal=CDIRegistroMifel
Modulos=(Todos)
Nombre=Nomina Electrónica Mifel

ListaCarpetas=(Lista)
PosicionInicialIzquierda=227
PosicionInicialArriba=97
PosicionInicialAlturaCliente=489
PosicionInicialAncho=949
PosicionSec1=123
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
VentanaColor=Plata
BarraHerramientas=S
DialogoAbrir=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionCol1=519
MovModulo=(Todos)
Totalizadores=S
[CDIRegistroMifel]
Estilo=Ficha
Clave=CDIRegistroMifel
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIRegistroMifel
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=12
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

PermiteEditar=S
GuardarAlSalir=S
ExpAlRefrescar=ASIGNA(Info.Numero,CDIRegistroMifel:CDIRegistroMifel.Id)
GuardarPorRegistro=S
[CDIRegistroMifel.CDIRegistroMifel.Movimiento]
Carpeta=CDIRegistroMifel
Clave=CDIRegistroMifel.Movimiento
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco

Pegado=N
[CDIRegistroMifel.CDIRegistroMifel.MovId]
Carpeta=CDIRegistroMifel
Clave=CDIRegistroMifel.MovId
Editar=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=8
Pegado=N
[CDIRegistroMifel.CDIRegistroMifel.Nomina]
Carpeta=CDIRegistroMifel
Clave=CDIRegistroMifel.Nomina
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIRegistroMifel.CDIRegistroMifel.Observaciones]
Carpeta=CDIRegistroMifel
Clave=CDIRegistroMifel.Observaciones
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

LineaNueva=S
[CDIRegistroMifel.CDIRegistroMifel.Estatus]
Carpeta=CDIRegistroMifel
Clave=CDIRegistroMifel.Estatus
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco






































Pegado=N
[CDIRegistroMifelD]
Estilo=Hoja
Clave=CDIRegistroMifelD
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=CDIRegistroMifelD
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
HojaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

PestanaNombre=Formato Mifel
PermiteEditar=S
Detalle=S
VistaMaestra=CDIRegistroMifel
LlaveLocal=CDIRegistroMifelD.ID
LlaveMaestra=CDIRegistroMifel.Id
BusquedaRapidaControles=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
HojaPermiteInsertar=S
HojaPermiteEliminar=S
[CDIRegistroMifelD.CDIRegistroMifelD.CUENTA]
Carpeta=CDIRegistroMifelD
Clave=CDIRegistroMifelD.CUENTA
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIRegistroMifelD.CDIRegistroMifelD.IMPORTE]
Carpeta=CDIRegistroMifelD
Clave=CDIRegistroMifelD.IMPORTE
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIRegistroMifelD.CDIRegistroMifelD.CONCEPTO]
Carpeta=CDIRegistroMifelD
Clave=CDIRegistroMifelD.CONCEPTO
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIRegistroMifelD.CDIRegistroMifelD.NOMBRE]
Carpeta=CDIRegistroMifelD
Clave=CDIRegistroMifelD.NOMBRE
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIRegistroMifelD.CDIRegistroMifelD.PERSONAL]
Carpeta=CDIRegistroMifelD
Clave=CDIRegistroMifelD.PERSONAL
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco




EditarConBloqueo=S
[CDIRegistroMifelD.Columnas]
CUENTA=85
IMPORTE=73
CONCEPTO=123
NOMBRE=204
PERSONAL=60












Error=235
ENVIAR=64
[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CDIRegistroMifel
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
IconosSubTitulo=ID

PestanaNombre=Registros
BusquedaRapidaControles=S
FiltroEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=SINAFECTAR
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
IconosNombre=CDIRegistroMifel:CDIRegistroMifel.Id
FiltroModificarEstatus=S
[(Carpeta Abrir).CDIRegistroMifel.MovId]
Carpeta=(Carpeta Abrir)
Clave=CDIRegistroMifel.MovId
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).CDIRegistroMifel.Movimiento]
Carpeta=(Carpeta Abrir)
Clave=CDIRegistroMifel.Movimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[(Carpeta Abrir).CDIRegistroMifel.Observaciones]
Carpeta=(Carpeta Abrir)
Clave=CDIRegistroMifel.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[(Carpeta Abrir).Columnas]
0=-2
1=-2
2=-2


3=284
4=-2
[Acciones.&Archivo]
Nombre=&Archivo
Boton=65
NombreEnBoton=S
NombreDesplegar=Generar
EnBarraHerramientas=S
Visible=S















Multiple=S
TipoAccion=formas
ClaveAccion=CDIIdNom
ListaAccionesMultiples=(Lista)

EspacioPrevio=S
Antes=S
DespuesGuardar=S
GuardarAntes=S
ActivoCondicion=CDIRegistroMifel:CDIRegistroMifel.Id=nulo
AntesExpresiones=asigna(info.id,CDIRegistroMifel:CDIRegistroMifel.Id)
[Acciones.&Archivo.1]
Nombre=1
Boton=0
TipoAccion=formas
ClaveAccion=CDIIdNom
Activo=S
Visible=S






[Acciones.&Archivo.2]
Nombre=2
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S




Expresion=EjecutarSQL( <T>EXEC CDIMifel :nID,:tUsu,:nIDMifel<T>,Info.NominaID, USUARIO , Info.ID)<BR>ActualizarForma
[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreDesplegar=Nuevo
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Activo=S
Visible=S



EspacioPrevio=S
[Acciones.Abrir]
Nombre=Abrir
Boton=2
NombreDesplegar=&Abrir
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S








EspacioPrevio=S
[CDIRegistroMifelD.ListaCamposAValidar]
(Inicio)=CDIRegistroMifelD.TotalEmpleados
CDIRegistroMifelD.TotalEmpleados=CDIRegistroMifelD.TOTAL
CDIRegistroMifelD.TOTAL=(Fin)








[(Carpeta Totalizadores)]
Clave=(Carpeta Totalizadores)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
Totalizadores1=Total Empleados<BR>Total Nomina<BR>Importe en <T>0<T><BR>T. Enviados<BR>T. No Enviados<BR>Importe Enviados
Totalizadores=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
CarpetaVisible=S


Totalizadores2=SQL(<T>SELECT count(id) from CDIRegistroMifelD where id=:nI<T>,CDIRegistroMifelD:CDIRegistroMifelD.ID  )<BR>SQL(<T>SELECT SUM(IMPORTE) from CDIRegistroMifelD where id=:nI<T>,  CDIRegistroMifelD:CDIRegistroMifelD.ID)<BR>SQL(<T>SELECT count(ID) from CDIRegistroMifelD where id=:nI AND IMPORTE =:nCero<T>,  CDIRegistroMifelD:CDIRegistroMifelD.ID,0  )<BR>SQL(<T>SELECT count(ID) from CDIRegistroMifelD where id=:nI AND enviar= :nEnv <T>,   CDIRegistroMifelD:CDIRegistroMifelD.ID,1  )<BR>SQL(<T>SELECT count(ID) from CDIRegistroMifelD where id=:nI AND enviar= :nEnv <T>,  CDIRegistroMifelD:CDIRegistroMifelD.ID,0  )<BR>SQL(<T>SELECT sum(importe) from CDIRegistroMifelD where id=:nI AND enviar= :nEnv <T>, CDIRegistroMifelD:CDIRegistroMifelD.ID,1  )
Totalizadores3=0<BR>(Monetario)<BR>0<BR>0<BR>0<BR>(Monetario)
TotExpresionesEnSumas=S
TotAlCambiar=S
TotCarpetaRenglones=CDIRegistroMifelD
[(Carpeta Totalizadores).Total Nomina]
Carpeta=(Carpeta Totalizadores)
Clave=Total Nomina
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Plata







[CDIRegistroMifelD.CDIRegistroMifelD.Error]
Carpeta=CDIRegistroMifelD
Clave=CDIRegistroMifelD.Error
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco












[(Carpeta Totalizadores).Total Empleados]
Carpeta=(Carpeta Totalizadores)
Clave=Total Empleados
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Plata













[Acciones.Crear]
Nombre=Crear
Boton=7
NombreDesplegar=&Crear TXT
EnBarraHerramientas=S
Visible=S





EspacioPrevio=S


















TipoAccion=expresion
Expresion=EjecutarSQL( <T>EXEC CDIMifelTXT :nID<T>,CDIRegistroMifel:CDIRegistroMifel.Id)<BR> ActualizarForma
ActivoCondicion=CDIRegistroMifel:CDIRegistroMifel.Estatus<><T>CONCLUIDO<T>



[(Carpeta Abrir).CDIRegistroMifel.Usuario]
Carpeta=(Carpeta Abrir)
Clave=CDIRegistroMifel.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco













[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios









GuardarAntes=S




Activo=S
Visible=S










[Acciones.buscar]
Nombre=buscar
Boton=0
NombreDesplegar=Navegar
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Activo=S
Visible=S





EspacioPrevio=S































[Acciones.Documento Eliminar]
Nombre=Documento Eliminar
Boton=5
NombreDesplegar=&Documento Eliminar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S

EspacioPrevio=S








ActivoCondicion=CDIRegistroMifel:CDIRegistroMifel.Estatus<><T>CONCLUIDO<T>

























[CDIRegistroMifelD.CDIRegistroMifelD.ENVIAR]
Carpeta=CDIRegistroMifelD
Clave=CDIRegistroMifelD.ENVIAR
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[CDIRegistroMifel.CDIRegistroMifel.Usuario]
Carpeta=CDIRegistroMifel
Clave=CDIRegistroMifel.Usuario
Editar=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

LineaNueva=S
[CDIRegistroMifel.CDIRegistroMifel.FechaEmision]
Carpeta=CDIRegistroMifel
Clave=CDIRegistroMifel.FechaEmision
Editar=N
ValidaNombre=S
3D=S
ColorFondo=Blanco







Tamano=9















[(Carpeta Totalizadores).T. Enviados]
Carpeta=(Carpeta Totalizadores)
Clave=T. Enviados
Editar=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Plata

[(Carpeta Totalizadores).T. No Enviados]
Carpeta=(Carpeta Totalizadores)
Clave=T. No Enviados
Editar=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Plata

[(Carpeta Totalizadores).Importe Enviados]
Carpeta=(Carpeta Totalizadores)
Clave=Importe Enviados
Editar=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Plata













[(Carpeta Totalizadores).Importe en '0']
Carpeta=(Carpeta Totalizadores)
Clave=Importe en '0'
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Plata














[CDIRegistroMifel.ListaEnCaptura]
(Inicio)=CDIRegistroMifel.Nomina
CDIRegistroMifel.Nomina=CDIRegistroMifel.Movimiento
CDIRegistroMifel.Movimiento=CDIRegistroMifel.MovId
CDIRegistroMifel.MovId=CDIRegistroMifel.Usuario
CDIRegistroMifel.Usuario=CDIRegistroMifel.FechaEmision
CDIRegistroMifel.FechaEmision=CDIRegistroMifel.Estatus
CDIRegistroMifel.Estatus=CDIRegistroMifel.Observaciones
CDIRegistroMifel.Observaciones=(Fin)







[CDIRegistroMifelD.ListaEnCaptura]
(Inicio)=CDIRegistroMifelD.PERSONAL
CDIRegistroMifelD.PERSONAL=CDIRegistroMifelD.NOMBRE
CDIRegistroMifelD.NOMBRE=CDIRegistroMifelD.CUENTA
CDIRegistroMifelD.CUENTA=CDIRegistroMifelD.ENVIAR
CDIRegistroMifelD.ENVIAR=CDIRegistroMifelD.IMPORTE
CDIRegistroMifelD.IMPORTE=CDIRegistroMifelD.CONCEPTO
CDIRegistroMifelD.CONCEPTO=CDIRegistroMifelD.Error
CDIRegistroMifelD.Error=(Fin)






[(Carpeta Totalizadores).ListaEnCaptura]
(Inicio)=Total Empleados
Total Empleados=T. Enviados
T. Enviados=Importe en '0'
Importe en '0'=T. No Enviados
T. No Enviados=Total Nomina
Total Nomina=Importe Enviados
Importe Enviados=(Fin)








[Acciones.&Archivo.ListaAccionesMultiples]
(Inicio)=1
1=2
2=(Fin)

























[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=CDIRegistroMifel.MovId
CDIRegistroMifel.MovId=CDIRegistroMifel.Movimiento
CDIRegistroMifel.Movimiento=CDIRegistroMifel.Observaciones
CDIRegistroMifel.Observaciones=CDIRegistroMifel.Usuario
CDIRegistroMifel.Usuario=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=CONCLUIDO
CONCLUIDO=SINAFECTAR
SINAFECTAR=(Fin)





















[Forma.ListaCarpetas]
(Inicio)=CDIRegistroMifel
CDIRegistroMifel=CDIRegistroMifelD
CDIRegistroMifelD=(Fin)

[Forma.ListaAcciones]
(Inicio)=Abrir
Abrir=Nuevo
Nuevo=Guardar
Guardar=Documento Eliminar
Documento Eliminar=&Archivo
&Archivo=Crear
Crear=buscar
buscar=(Fin)
