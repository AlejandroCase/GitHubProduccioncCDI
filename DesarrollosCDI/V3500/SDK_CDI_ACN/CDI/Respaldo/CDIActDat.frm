
[Forma]
Clave=CDIActDat
Icono=0
Modulos=(Todos)
MovModulo=CDIActDat
Nombre=CDIActDat

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIActDat
PosicionInicialAlturaCliente=705
PosicionInicialAncho=1382
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=0
PosicionInicialArriba=12
PosicionSec1=164
PosicionCol2=975
PosicionSec2=377
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionCol1=829
[CDIActDat]
Estilo=Hoja
Clave=CDIActDat
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIActDat
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

CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
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
[CDIActDat.CDIActDat.membresia]
Carpeta=CDIActDat
Clave=CDIActDat.membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIActDat.CDIActDat.Cliente]
Carpeta=CDIActDat
Clave=CDIActDat.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIActDat.CDIActDat.Socio]
Carpeta=CDIActDat
Clave=CDIActDat.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIActDat.CDIActDat.Nombre]
Carpeta=CDIActDat
Clave=CDIActDat.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco




































[CDIActDat.Columnas]
membresia=64
Cliente=49
Socio=51
Nombre=306
PersonalApellidoPaterno=304
PersonalApellidoMaterno=304
PersonalNombres=304
Sexo=124
Nacionalidad=184
FechaNacimiento=94
EstadoCivil=124
Ocupacion=304
Direccion=604
DireccionNumero=124
DireccionNumeroInt=124
EntreCalles=604
Colonia=604
Delegacion=604
Estado=184
Pais=184
CodigoPostal=94
RFC=94
Telefonos=604
TelefonosLada=74
eMail1=304
Descripcion19=304
CDIMedTipoSangre=304
CDIMedDonador=83
CDIMedEnfermo=82
CDIMedAlergias=80
cdimedmedicamento=100
CDIMedAvisar=304
cdimedavispare1=84
cdimedavispare1Telfijo1=119
cdimedavispare1TelMov1=124
CDIMedAvisar2=78
cdimedavispare2=84
cdimedavispare1Telfijo2=119
cdimedavispare1TelMov2=124




[CteDet]
Estilo=Hoja
PestanaNombre=Miembros
Clave=CteDet
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIActDat
LlaveLocal=Cte.Membresia
LlaveMaestra=CDIActDat.membresia
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)

[CteDet.Cte.Nombre]
Carpeta=CteDet
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[CteDet.Columnas]
Nombre=272




Cliente=50
Socio=54
Estatus=50
Descripcion13=57
Descripcion15=182

Titular=54
[Foto]
Estilo=Ficha
Clave=Foto
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Cte.RutaImagen
CarpetaVisible=S

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
[Foto.Cte.RutaImagen]
Carpeta=Foto
Clave=Cte.RutaImagen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco









[cte2.Cte.PersonalDireccion]
Carpeta=cte2
Clave=Cte.PersonalDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[cte2.Cte.PersonalEntreCalles]
Carpeta=cte2
Clave=Cte.PersonalEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[cte2.Cte.PersonalPlano]
Carpeta=cte2
Clave=Cte.PersonalPlano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[cte2.Cte.PersonalDelegacion]
Carpeta=cte2
Clave=Cte.PersonalDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[cte2.Cte.PersonalColonia]
Carpeta=cte2
Clave=Cte.PersonalColonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[cte2.Cte.PersonalPoblacion]
Carpeta=cte2
Clave=Cte.PersonalPoblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[cte2.Cte.PersonalEstado]
Carpeta=cte2
Clave=Cte.PersonalEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[cte2.Cte.PersonalPais]
Carpeta=cte2
Clave=Cte.PersonalPais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[cte2.Cte.PersonalZona]
Carpeta=cte2
Clave=Cte.PersonalZona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[cte2.Cte.PersonalCodigoPostal]
Carpeta=cte2
Clave=Cte.PersonalCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[cte2.Cte.PersonalTelefonos]
Carpeta=cte2
Clave=Cte.PersonalTelefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[cte2.Cte.PersonalTelefonosLada]
Carpeta=cte2
Clave=Cte.PersonalTelefonosLada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco


[cte2.Columnas]
PersonalDireccion=147
PersonalEntreCalles=96
PersonalPlano=94
PersonalDelegacion=184
PersonalColonia=184
PersonalPoblacion=184
PersonalEstado=184
PersonalPais=184
PersonalZona=184
PersonalCodigoPostal=94
PersonalTelefonos=604
PersonalTelefonosLada=40




[cte2.ListaEnCaptura]
(Inicio)=Cte.PersonalDireccion
Cte.PersonalDireccion=Cte.PersonalEntreCalles
Cte.PersonalEntreCalles=Cte.PersonalPlano
Cte.PersonalPlano=Cte.PersonalDelegacion
Cte.PersonalDelegacion=Cte.PersonalColonia
Cte.PersonalColonia=Cte.PersonalPoblacion
Cte.PersonalPoblacion=Cte.PersonalEstado
Cte.PersonalEstado=Cte.PersonalPais
Cte.PersonalPais=Cte.PersonalZona
Cte.PersonalZona=Cte.PersonalCodigoPostal
Cte.PersonalCodigoPostal=Cte.PersonalTelefonos
Cte.PersonalTelefonos=Cte.PersonalTelefonosLada
Cte.PersonalTelefonosLada=(Fin)




[ctex]
Estilo=Ficha
Clave=ctex
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C1
Vista=cte
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
ListaEnCaptura=(Lista)

CarpetaVisible=S
Detalle=S
VistaMaestra=Cte
LlaveLocal=Cte.Cliente
LlaveMaestra=Cte.Cliente

Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Actuales
[ctex.Cte.Direccion]
Carpeta=ctex
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[ctex.Cte.DireccionNumero]
Carpeta=ctex
Clave=Cte.DireccionNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ctex.Cte.DireccionNumeroInt]
Carpeta=ctex
Clave=Cte.DireccionNumeroInt
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=S
[ctex.Cte.EntreCalles]
Carpeta=ctex
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[ctex.Cte.Delegacion]
Carpeta=ctex
Clave=Cte.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.Colonia]
Carpeta=ctex
Clave=Cte.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.CodigoPostal]
Carpeta=ctex
Clave=Cte.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[ctex.Cte.Poblacion]
Carpeta=ctex
Clave=Cte.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.Estado]
Carpeta=ctex
Clave=Cte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[ctex.Cte.Pais]
Carpeta=ctex
Clave=Cte.Pais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[ctex.Cte.Telefonos]
Carpeta=ctex
Clave=Cte.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[ctex.Cte.eMail1]
Carpeta=ctex
Clave=Cte.eMail1
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






Pegado=S


[CteDet.Cte.Cliente]
Carpeta=CteDet
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CteDet.Cte.Socio]
Carpeta=CteDet
Clave=Cte.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CteDet.Cte.Estatus]
Carpeta=CteDet
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CteDet.Cte.Descripcion13]
Carpeta=CteDet
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CteDet.Cte.Descripcion15]
Carpeta=CteDet
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDIActDat.ListaEnCaptura]
(Inicio)=CDIActDat.membresia
CDIActDat.membresia=CDIActDat.Cliente
CDIActDat.Cliente=CDIActDat.Socio
CDIActDat.Socio=CDIActDat.Nombre
CDIActDat.Nombre=(Fin)




[CteDet.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Socio
Cte.Socio=Cte.Titular
Cte.Titular=Cte.Nombre
Cte.Nombre=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=(Fin)

[CteDet.Cte.Titular]
Carpeta=CteDet
Clave=Cte.Titular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[ctex.ListaEnCaptura]
(Inicio)=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=Cte.Colonia
Cte.Colonia=Cte.Delegacion
Cte.Delegacion=Cte.CodigoPostal
Cte.CodigoPostal=Cte.Poblacion
Cte.Poblacion=Cte.Estado
Cte.Estado=Cte.Pais
Cte.Pais=Cte.Telefonos
Cte.Telefonos=Cte.eMail1
Cte.eMail1=(Fin)








[CDICtrlActDat]
Estilo=Hoja
Clave=CDICtrlActDat
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDICtrlActDat
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=CDIActDat
LlaveLocal=CDICtrlActDat.Membresia
LlaveMaestra=CDIActDat.membresia
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

CarpetaVisible=S

[CDICtrlActDat.CDICtrlActDat.Cliente]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICtrlActDat.CDICtrlActDat.Socio]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDICtrlActDat.CDICtrlActDat.ActDatos]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.ActDatos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICtrlActDat.CDICtrlActDat.ActValida]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.ActValida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICtrlActDat.CDICtrlActDat.ActPago]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.ActPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICtrlActDat.CDICtrlActDat.ActImpCred]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.ActImpCred
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[CDICtrlActDat.Columnas]
Cliente=64
Socio=64
ActDatos=95
ActValida=80
ActPago=81
ActImpCred=104

[CDICtrlActDat.ListaEnCaptura]
(Inicio)=CDICtrlActDat.Cliente
CDICtrlActDat.Cliente=CDICtrlActDat.Socio
CDICtrlActDat.Socio=CDICtrlActDat.ActDatos
CDICtrlActDat.ActDatos=CDICtrlActDat.ActValida
CDICtrlActDat.ActValida=CDICtrlActDat.ActPago
CDICtrlActDat.ActPago=CDICtrlActDat.ActImpCred
CDICtrlActDat.ActImpCred=(Fin)



[Forma.ListaCarpetas]
(Inicio)=CDIActDat
CDIActDat=CteDet
CteDet=Foto
Foto=ctex
ctex=CDICtrlActDat
CDICtrlActDat=(Fin)
