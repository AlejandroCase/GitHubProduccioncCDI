
[Forma]
Clave=CDIActDat
Icono=0
Modulos=(Todos)
MovModulo=CDIActDat
Nombre=Actualización de Datos

ListaCarpetas=(Lista)
CarpetaPrincipal=CDIActDat
PosicionInicialAlturaCliente=705
PosicionInicialAncho=1382
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=-8
PosicionInicialArriba=-8
PosicionSec1=130
PosicionCol2=1221
PosicionSec2=330
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionCol1=591
PosicionCol3=671
ExpresionesAlMostrar=asigna(Info.CDINumero,2)
ListaAcciones=Cerrar
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

MenuLocal=S
ListaAcciones=(Lista)
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
Nombre=294




Cliente=50
Socio=54
Estatus=50
Descripcion13=57
Descripcion15=211

Titular=54
Parentesco=90
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
ListaEnCaptura=CDIImagen
CarpetaVisible=S

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

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
Tamano=50
ColorFondo=Blanco

[ctex.Cte.DireccionNumero]
Carpeta=ctex
Clave=Cte.DireccionNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Pegado=N
[ctex.Cte.DireccionNumeroInt]
Carpeta=ctex
Clave=Cte.DireccionNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Pegado=N

[ctex.Cte.Delegacion]
Carpeta=ctex
Clave=Cte.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Pegado=N
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
Tamano=50
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
Tamano=50
ColorFondo=Blanco

[ctex.Cte.Pais]
Carpeta=ctex
Clave=Cte.Pais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Pegado=N
[ctex.Cte.Telefonos]
Carpeta=ctex
Clave=Cte.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.eMail1]
Carpeta=ctex
Clave=Cte.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






Pegado=N


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





[CteDet.Cte.Titular]
Carpeta=CteDet
Clave=Cte.Titular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







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
VistaMaestra=Cte
LlaveLocal=CDICtrlActDat.Membresia
LlaveMaestra=Cte.Membresia
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
Cliente=51
Socio=56
ActDatos=65
ActValida=51
ActPago=122
ActImpCred=85


Rehd=45
RegChip=50
Foto=33
EntregaCred=77
RegDatos=92
[Foto.CDIImagen]
Carpeta=Foto
Clave=CDIImagen
Editar=S
LineaNueva=S
3D=S
ConScroll=S
SinRecapitular=S
Tamano=15x12
ColorFondo=Blanco


[Foto.ListaEnCaptura]
(Inicio)=Cte.RutaImagen
Cte.RutaImagen=CDIImagen
CDIImagen=(Fin)













[ctex.Cte.PersonalNombres]
Carpeta=ctex
Clave=Cte.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.PersonalApellidoPaterno]
Carpeta=ctex
Clave=Cte.PersonalApellidoPaterno
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=50
ColorFondo=Blanco

LineaNueva=S
[ctex.Cte.PersonalApellidoMaterno]
Carpeta=ctex
Clave=Cte.PersonalApellidoMaterno
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=50
ColorFondo=Blanco

LineaNueva=S
[ctex.Cte.Sexo]
Carpeta=ctex
Clave=Cte.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.FechaNacimiento]
Carpeta=ctex
Clave=Cte.FechaNacimiento
Editar=S
ValidaNombre=S
3D=S
Pegado=N
ColorFondo=Blanco

LineaNueva=S
[ctex.Cte.EstadoCivil]
Carpeta=ctex
Clave=Cte.EstadoCivil
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=50
ColorFondo=Blanco

LineaNueva=S

[ctex.Cte.TelefonosLada]
Carpeta=ctex
Clave=Cte.TelefonosLada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco







[CDICteActualiza]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Actualizados
Clave=CDICteActualiza
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C2
Vista=CDICteActualiza
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDICteActualiza.Cliente
LlaveMaestra=Cte.Cliente
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

[CDICteActualiza.Columnas]
Nombre=604
PersonalApellidoPaterno=304
PersonalApellidoMaterno=304
PersonalDireccion=604
PersonalEntreCalles=604
PersonalPlano=94
PersonalDelegacion=604
PersonalColonia=604
PersonalPoblacion=604
PersonalEstado=184
PersonalPais=184
PersonalZona=184
PersonalCodigoPostal=107
PersonalTelefonos=604
PersonalTelefonosLada=115



[Acciones.Actualiza]
Nombre=Actualiza
Boton=0
NombreDesplegar=Actualizar Datos
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
Antes=S
AntesExpresiones=asigna(info.cliente,Cte:Cte.Cliente)<BR>Asigna(info.folio,1)
[Acciones.Valida]
Nombre=Valida
Boton=0
NombreDesplegar=Validar Datos
EnMenu=S
TipoAccion=Controles Captura
Visible=S

Antes=S
ClaveAccion=Actualizar Forma
ConCondicion=S
EjecucionConError=S
ActivoCondicion=condatos(CDICteActualiza:CDICteActualiza.Cliente)
EjecucionCondicion=condatos(CDICteActualiza:CDICteActualiza.Cliente)
EjecucionMensaje=<T>No tiene actualizacion de datos<T>
AntesExpresiones=asigna(info.cliente,Cte:Cte.Cliente)<BR>Asigna(info.folio,2)<BR>formamodal(<T>cdivactval<T>)
[Acciones.Pago]
Nombre=Pago
Boton=0
NombreDesplegar=Solicitud Cargo
EnMenu=S
TipoAccion=Controles Captura
Activo=S
Visible=S






ClaveAccion=Actualizar Forma
Antes=S
AntesExpresiones=asigna(info.cliente,Cte:Cte.Cliente)<BR><BR>Si<BR>      Confirmacion(<T>¿ Desea generar la Solicitud Cargo ?<T>,BotonSi, BotonNo)=BotonSi)<BR>    Entonces<BR>      Ejecutarsql(<T>xpcdiVtaCre :tS, :tE, :fH, :tU<T>,info.cliente, empresa,ahora,usuario)<BR>    Fin
[CDICteActualiza.CDICteActualiza.PersonalApellidoPaterno]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.PersonalApellidoPaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.PersonalApellidoMaterno]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.PersonalApellidoMaterno
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.Direccion]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.DireccionNumero]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.DireccionNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.DireccionNumeroInt]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.DireccionNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[CDICteActualiza.CDICteActualiza.Delegacion]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.Colonia]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.Poblacion]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.Estado]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.Pais]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Pais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CodigoPostal]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.Telefonos]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.TelefonosLada]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.TelefonosLada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.eMail1]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[CDICteActualiza.CDICteActualiza.Sexo]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.FechaNacimiento]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICteActualiza.CDICteActualiza.EstadoCivil]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.EstadoCivil
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[CDICteActualiza.CDICteActualiza.Descripcion19]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Descripcion19
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedTipoSangre]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedTipoSangre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedDonador]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedDonador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=4
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedEnfermedad]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedEnfermedad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[CDICteActualiza.CDICteActualiza.CDIMedAlergias]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedAlergias
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[CDICteActualiza.CDICteActualiza.CDIMedMedicamentos]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedMedicamentos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco


Pegado=S
[ctex.Cte.Descripcion19]
Carpeta=ctex
Clave=Cte.Descripcion19
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.CDIMedTipoSangre]
Carpeta=ctex
Clave=Cte.CDIMedTipoSangre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.CDIMedDonador]
Carpeta=ctex
Clave=Cte.CDIMedDonador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[ctex.Cte.CDIMedEnfermedad]
Carpeta=ctex
Clave=Cte.CDIMedEnfermedad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Pegado=S
[ctex.Cte.CDIMedAlergias]
Carpeta=ctex
Clave=Cte.CDIMedAlergias
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

Pegado=S
[ctex.Cte.CDIMedMedicamentos]
Carpeta=ctex
Clave=Cte.CDIMedMedicamentos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



Pegado=S

[ctex.Cte.CDIMedEnfermo]
Carpeta=ctex
Clave=Cte.CDIMedEnfermo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[ctex.Cte.CDIMedAlergia]
Carpeta=ctex
Clave=Cte.CDIMedAlergia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[ctex.Cte.CDIMedMedicamento]
Carpeta=ctex
Clave=Cte.CDIMedMedicamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco







[ctex.Cte.Parentesco]
Carpeta=ctex
Clave=Cte.Parentesco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.Nacionalidad]
Carpeta=ctex
Clave=Cte.Nacionalidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[ctex.Cte.Ocupacion]
Carpeta=ctex
Clave=Cte.Ocupacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.EntreCalles]
Carpeta=ctex
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[ctex.Cte.RFC]
Carpeta=ctex
Clave=Cte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





[ctex.Cte.PersonalPais]
Carpeta=ctex
Clave=Cte.PersonalPais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco





[CDICteActualiza.CDICteActualiza.Nacionalidad]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Nacionalidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.Ocupacion]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Ocupacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.PersonalPais]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.PersonalPais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.Parentesco]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.Parentesco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.RFC]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco



[CDICteActualiza.CDICteActualiza.CDIMedEnfermo]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedEnfermo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=4
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedAlergia]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedAlergia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=4
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedMedicamento]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedMedicamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=4
ColorFondo=Blanco




[ctex.Cte.CDIMedAvisar]
Carpeta=ctex
Clave=Cte.CDIMedAvisar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.CDIMedTelefono]
Carpeta=ctex
Clave=Cte.CDIMedTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ctex.Cte.CDIMedCelular]
Carpeta=ctex
Clave=Cte.CDIMedCelular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[CDICteActualiza.CDICteActualiza.CDIMedAvisar]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedAvisar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedTelefono]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedCelular]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedCelular
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco









[CDICteActualiza.CDICteActualiza.CDIMedAvisar2]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedAvisar2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedTelefono2]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedTelefono2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.CDIMedCelular2]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.CDIMedCelular2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco




[CteDet.Cte.Parentesco]
Carpeta=CteDet
Clave=Cte.Parentesco
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco








[Acciones.Actualiza.Socio]
Nombre=Socio
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S







Expresion=asigna(info.cliente,Cte:Cte.Cliente)
[Acciones.Actualiza.Vec]
Nombre=Vec
Boton=0
TipoAccion=Formas
ClaveAccion=CDIVActVal
Activo=S
Visible=S


[Acciones.Actualiza.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S








Expresion=actualizarforma
[ctex.ListaEnCaptura]
(Inicio)=Cte.PersonalNombres
Cte.PersonalNombres=Cte.PersonalApellidoPaterno
Cte.PersonalApellidoPaterno=Cte.PersonalApellidoMaterno
Cte.PersonalApellidoMaterno=Cte.Parentesco
Cte.Parentesco=Cte.Sexo
Cte.Sexo=Cte.Nacionalidad
Cte.Nacionalidad=Cte.PersonalPais
Cte.PersonalPais=Cte.FechaNacimiento
Cte.FechaNacimiento=Cte.EstadoCivil
Cte.EstadoCivil=Cte.Ocupacion
Cte.Ocupacion=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=Cte.Colonia
Cte.Colonia=Cte.CodigoPostal
Cte.CodigoPostal=Cte.Delegacion
Cte.Delegacion=Cte.Poblacion
Cte.Poblacion=Cte.Estado
Cte.Estado=Cte.Pais
Cte.Pais=Cte.Telefonos
Cte.Telefonos=Cte.TelefonosLada
Cte.TelefonosLada=Cte.RFC
Cte.RFC=Cte.eMail1
Cte.eMail1=Cte.Descripcion19
Cte.Descripcion19=Cte.CDIMedTipoSangre
Cte.CDIMedTipoSangre=Cte.CDIMedDonador
Cte.CDIMedDonador=Cte.CDIMedEnfermo
Cte.CDIMedEnfermo=Cte.CDIMedEnfermedad
Cte.CDIMedEnfermedad=Cte.CDIMedAlergia
Cte.CDIMedAlergia=Cte.CDIMedAlergias
Cte.CDIMedAlergias=Cte.CDIMedMedicamento
Cte.CDIMedMedicamento=Cte.CDIMedMedicamentos
Cte.CDIMedMedicamentos=Cte.CDIMedAvisar
Cte.CDIMedAvisar=Cte.CDIMedTelefono
Cte.CDIMedTelefono=Cte.CDIMedCelular
Cte.CDIMedCelular=(Fin)










[CDICteActualiza.CDICteActualiza.PersonalNombres]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Acciones.Actualiza.ListaAccionesMultiples]
(Inicio)=Socio
Socio=Vec
Vec=Expresion
Expresion=(Fin)






[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


























[CDICteActualiza.ListaEnCaptura]
(Inicio)=CDICteActualiza.PersonalNombres
CDICteActualiza.PersonalNombres=CDICteActualiza.PersonalApellidoPaterno
CDICteActualiza.PersonalApellidoPaterno=CDICteActualiza.PersonalApellidoMaterno
CDICteActualiza.PersonalApellidoMaterno=CDICteActualiza.Parentesco
CDICteActualiza.Parentesco=CDICteActualiza.Sexo
CDICteActualiza.Sexo=CDICteActualiza.Nacionalidad
CDICteActualiza.Nacionalidad=CDICteActualiza.PersonalPais
CDICteActualiza.PersonalPais=CDICteActualiza.FechaNacimiento
CDICteActualiza.FechaNacimiento=CDICteActualiza.EstadoCivil
CDICteActualiza.EstadoCivil=CDICteActualiza.Ocupacion
CDICteActualiza.Ocupacion=CDICteActualiza.Direccion
CDICteActualiza.Direccion=CDICteActualiza.DireccionNumero
CDICteActualiza.DireccionNumero=CDICteActualiza.DireccionNumeroInt
CDICteActualiza.DireccionNumeroInt=CDICteActualiza.Colonia
CDICteActualiza.Colonia=CDICteActualiza.CodigoPostal
CDICteActualiza.CodigoPostal=CDICteActualiza.Delegacion
CDICteActualiza.Delegacion=CDICteActualiza.Poblacion
CDICteActualiza.Poblacion=CDICteActualiza.Estado
CDICteActualiza.Estado=CDICteActualiza.Pais
CDICteActualiza.Pais=CDICteActualiza.Telefonos
CDICteActualiza.Telefonos=CDICteActualiza.TelefonosLada
CDICteActualiza.TelefonosLada=CDICteActualiza.RFC
CDICteActualiza.RFC=CDICteActualiza.eMail1
CDICteActualiza.eMail1=CDICteActualiza.Descripcion19
CDICteActualiza.Descripcion19=CDICteActualiza.CDIMedTipoSangre
CDICteActualiza.CDIMedTipoSangre=CDICteActualiza.CDIMedDonador
CDICteActualiza.CDIMedDonador=CDICteActualiza.CDIMedEnfermo
CDICteActualiza.CDIMedEnfermo=CDICteActualiza.CDIMedEnfermedad
CDICteActualiza.CDIMedEnfermedad=CDICteActualiza.CDIMedAlergia
CDICteActualiza.CDIMedAlergia=CDICteActualiza.CDIMedAlergias
CDICteActualiza.CDIMedAlergias=CDICteActualiza.CDIMedMedicamento
CDICteActualiza.CDIMedMedicamento=CDICteActualiza.CDIMedMedicamentos
CDICteActualiza.CDIMedMedicamentos=CDICteActualiza.CDIMedAvisar
CDICteActualiza.CDIMedAvisar=CDICteActualiza.ParentescoAvisar
CDICteActualiza.ParentescoAvisar=CDICteActualiza.CDIMedTelefono
CDICteActualiza.CDIMedTelefono=CDICteActualiza.CDIMedCelular
CDICteActualiza.CDIMedCelular=CDICteActualiza.CDIMedAvisar2
CDICteActualiza.CDIMedAvisar2=CDICteActualiza.ParentescoAvisar1
CDICteActualiza.ParentescoAvisar1=CDICteActualiza.CDIMedTelefono2
CDICteActualiza.CDIMedTelefono2=CDICteActualiza.CDIMedCelular2
CDICteActualiza.CDIMedCelular2=(Fin)

[CDICteActualiza.CDICteActualiza.ParentescoAvisar]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.ParentescoAvisar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDICteActualiza.CDICteActualiza.ParentescoAvisar1]
Carpeta=CDICteActualiza
Clave=CDICteActualiza.ParentescoAvisar1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco























[CDICtrlActDat.CDICtrlActDat.Rehd]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.Rehd
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICtrlActDat.CDICtrlActDat.RegChip]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.RegChip
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICtrlActDat.CDICtrlActDat.Foto]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICtrlActDat.CDICtrlActDat.EntregaCred]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.EntregaCred
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco































































[Acciones.Grabar]
Nombre=Grabar
Boton=0
NombreDesplegar=Grabar Cambios
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
Antes=S
Visible=S




AntesExpresiones=asigna(info.cliente,Cte:Cte.Cliente)<BR>Si<BR>      Confirmacion(<T>¿ Desea Grabar los cambios realizados ?<T>,BotonSi, BotonNo)=BotonSi)<BR>    Entonces<BR>      Ejecutarsql(<T>xpcdiGrabaAct :tS<T>,info.cliente)<BR> Fin






[CteDet.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Socio
Cte.Socio=Cte.Titular
Cte.Titular=Cte.Parentesco
Cte.Parentesco=Cte.Nombre
Cte.Nombre=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=(Fin)

[CteDet.ListaAcciones]
(Inicio)=Actualiza
Actualiza=Valida
Valida=Pago
Pago=Grabar
Grabar=(Fin)









[CDICtrlActDat.CDICtrlActDat.RegDatos]
Carpeta=CDICtrlActDat
Clave=CDICtrlActDat.RegDatos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICtrlActDat.ListaEnCaptura]
(Inicio)=CDICtrlActDat.Cliente
CDICtrlActDat.Cliente=CDICtrlActDat.Socio
CDICtrlActDat.Socio=CDICtrlActDat.ActDatos
CDICtrlActDat.ActDatos=CDICtrlActDat.ActValida
CDICtrlActDat.ActValida=CDICtrlActDat.ActPago
CDICtrlActDat.ActPago=CDICtrlActDat.Rehd
CDICtrlActDat.Rehd=CDICtrlActDat.RegChip
CDICtrlActDat.RegChip=CDICtrlActDat.Foto
CDICtrlActDat.Foto=CDICtrlActDat.ActImpCred
CDICtrlActDat.ActImpCred=CDICtrlActDat.EntregaCred
CDICtrlActDat.EntregaCred=CDICtrlActDat.RegDatos
CDICtrlActDat.RegDatos=(Fin)





































































[Forma.ListaCarpetas]
(Inicio)=CDIActDat
CDIActDat=CteDet
CteDet=Foto
Foto=ctex
ctex=CDICtrlActDat
CDICtrlActDat=CDICteActualiza
CDICteActualiza=(Fin)
