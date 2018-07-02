
[Forma]
Clave=CDIListaCampo
Icono=0
Modulos=(Todos)
Nombre=Amplear Campos
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=239
PosicionInicialArriba=44
PosicionInicialAlturaCliente=626
PosicionInicialAncho=919
BarraHerramientas=S
VentanaSiempreAlFrente=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
ListaAcciones=cerrar
VentanaColor=Plata
[Ficha]
Estilo=Ficha
Pestana=S
Clave=Ficha
Filtros=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=13
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
ListaEnCaptura=(Lista)


PestanaOtroNombre=S
PestanaNombre=Ficha
FiltroGeneral=Cte.Cliente=<T>0010900<T>
[Ficha.Cte.Cliente]
Carpeta=Ficha
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=$00D2FBFA






[ReglaNeg]
Estilo=Ficha
Pestana=S
Clave=ReglaNeg
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICteCat
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDICteCat.Cliente
LlaveMaestra=Cte.Cliente
FichaEspacioEntreLineas=13
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
PestanaOtroNombre=S
PestanaNombre=Recla de negocio


[ReglaNeg.CDICteCat.Socio]
Carpeta=ReglaNeg
Clave=CDICteCat.Socio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



















[CDiCarRec.LlaveMaestra]
(Inicio)=Cte.Cliente
Cte.Cliente=Agente.Nombre
Agente.Nombre=AgenteServicio.Agente
AgenteServicio.Agente=AgenteServicio.Nombre
AgenteServicio.Nombre=Agente3.Agente
Agente3.Agente=Agente3.Nombre
Agente3.Nombre=Agente4.Agente
Agente4.Agente=Agente4.Nombre
Agente4.Nombre=CteEnviarA.ID
CteEnviarA.ID=CteEnviarA.Nombre
CteEnviarA.Nombre=Sucursal.Sucursal
Sucursal.Sucursal=Sucursal.Nombre
Sucursal.Nombre=Sucursal.Estatus
Sucursal.Estatus=Espacio.Espacio
Espacio.Espacio=(Fin)




[CDiCarRec.ListaEnCaptura]
(Inicio)=CDIArtCargosRecurrentes.Cliente
CDIArtCargosRecurrentes.Cliente=CDIArtCargosRecurrentes.Articulo
CDIArtCargosRecurrentes.Articulo=CDIArtCargosRecurrentes.FechaInicio
CDIArtCargosRecurrentes.FechaInicio=CDIArtCargosRecurrentes.FechaFin
CDIArtCargosRecurrentes.FechaFin=CDIArtCargosRecurrentes.Cantidad
CDIArtCargosRecurrentes.Cantidad=CDIArtCargosRecurrentes.EsCuota
CDIArtCargosRecurrentes.EsCuota=CDIArtCargosRecurrentes.Ubicacion
CDIArtCargosRecurrentes.Ubicacion=CDIArtCargosRecurrentes.casillero
CDIArtCargosRecurrentes.casillero=CDIArtCargosRecurrentes.Id
CDIArtCargosRecurrentes.Id=CDIArtCargosRecurrentes.Membresia
CDIArtCargosRecurrentes.Membresia=CDIArtCargosRecurrentes.Articulo0
CDIArtCargosRecurrentes.Articulo0=CDIArtCargosRecurrentes.MembresiaAnt
CDIArtCargosRecurrentes.MembresiaAnt=CDIArtCargosRecurrentes.ClienteAnt
CDIArtCargosRecurrentes.ClienteAnt=CDIArtCargosRecurrentes.Estatus
CDIArtCargosRecurrentes.Estatus=CDIArtCargosRecurrentes.Socio
CDIArtCargosRecurrentes.Socio=CDIArtCargosRecurrentes.PrecioSocio
CDIArtCargosRecurrentes.PrecioSocio=Descripcion1
Descripcion1=PrecioLista
PrecioLista=Automatico
Automatico=(Fin)





















[CDiCargRec]
Estilo=Hoja
Pestana=S
Clave=CDiCargRec
Detalle=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIArtCargosRecurrentes
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CDIArtCargosRecurrentes.Cliente
LlaveMaestra=Cte.Cliente
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Cargos Recurrentes

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
HojaAjustarColumnas=S
HojaSinBorde=S
HojaFondoGris=S
HojaOrdenarColumnas=S

[CDiCargRec.CDIArtCargosRecurrentes.Articulo]
Carpeta=CDiCargRec
Clave=CDIArtCargosRecurrentes.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDiCargRec.CDIArtCargosRecurrentes.FechaInicio]
Carpeta=CDiCargRec
Clave=CDIArtCargosRecurrentes.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDiCargRec.CDIArtCargosRecurrentes.FechaFin]
Carpeta=CDiCargRec
Clave=CDIArtCargosRecurrentes.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDiCargRec.CDIArtCargosRecurrentes.Cantidad]
Carpeta=CDiCargRec
Clave=CDIArtCargosRecurrentes.Cantidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDiCargRec.CDIArtCargosRecurrentes.Ubicacion]
Carpeta=CDiCargRec
Clave=CDIArtCargosRecurrentes.Ubicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDiCargRec.CDIArtCargosRecurrentes.casillero]
Carpeta=CDiCargRec
Clave=CDIArtCargosRecurrentes.casillero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=32
ColorFondo=Blanco









[CDiCargRec.Descripcion1]
Carpeta=CDiCargRec
Clave=Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDiCargRec.PrecioLista]
Carpeta=CDiCargRec
Clave=PrecioLista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDiCargRec.Automatico]
Carpeta=CDiCargRec
Clave=Automatico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco






[Ficha.Cte.Membresia]
Carpeta=Ficha
Clave=Cte.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=8
Pegado=N
[Ficha.Cte.Socio]
Carpeta=Ficha
Clave=Cte.Socio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.Parentesco]
Carpeta=Ficha
Clave=Cte.Parentesco
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.Cte.Grupo]
Carpeta=Ficha
Clave=Cte.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=28
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.Familia]
Carpeta=Ficha
Clave=Cte.Familia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=28
ColorFondo=Blanco

Pegado=N



[Ficha.Cte.Alta]
Carpeta=Ficha
Clave=Cte.Alta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.Sexo]
Carpeta=Ficha
Clave=Cte.Sexo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.Nacionalidad]
Carpeta=Ficha
Clave=Cte.Nacionalidad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.FechaNacimiento]
Carpeta=Ficha
Clave=Cte.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
[Ficha.Edad]
Carpeta=Ficha
Clave=Edad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=23
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.EstadoCivil]
Carpeta=Ficha
Clave=Cte.EstadoCivil
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.PersonalPais]
Carpeta=Ficha
Clave=Cte.PersonalPais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.Descripcion12]
Carpeta=Ficha
Clave=Cte.Descripcion12
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Ficha.Cte.Descripcion11]
Carpeta=Ficha
Clave=Cte.Descripcion11
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=N
[Ficha.Cte.NIPCDI]
Carpeta=Ficha
Clave=Cte.NIPCDI
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Ficha.Cte.Fecha1]
Carpeta=Ficha
Clave=Cte.Fecha1
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Ficha.Cte.Fecha2]
Carpeta=Ficha
Clave=Cte.Fecha2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Ficha.Cte.MismaDireccion]
Carpeta=Ficha
Clave=Cte.MismaDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
[Ficha.Cte.Ocupacion]
Carpeta=Ficha
Clave=Cte.Ocupacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=31
ColorFondo=Blanco

[Ficha.Cte.DireccionOtroSocio]
Carpeta=Ficha
Clave=Cte.DireccionOtroSocio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=67
ColorFondo=Blanco

EspacioPrevio=N
[Ficha.Cte.Direccion]
Carpeta=Ficha
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=85
ColorFondo=Blanco

[Ficha.Cte.DireccionNumero]
Carpeta=Ficha
Clave=Cte.DireccionNumero
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco

[Ficha.Cte.DireccionNumeroInt]
Carpeta=Ficha
Clave=Cte.DireccionNumeroInt
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=10
ColorFondo=Blanco

[Ficha.Cte.EntreCalles]
Carpeta=Ficha
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=69
ColorFondo=Blanco

[Ficha.Cte.Plano]
Carpeta=Ficha
Clave=Cte.Plano
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Estado]
Carpeta=Ficha
Clave=Cte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.Cte.Pais]
Carpeta=Ficha
Clave=Cte.Pais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

[Ficha.Cte.eMail1]
Carpeta=Ficha
Clave=Cte.eMail1
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=33
ColorFondo=Blanco

[Ficha.Cte.Telefonos]
Carpeta=Ficha
Clave=Cte.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Ficha.Cte.OtrosTelefonos]
Carpeta=Ficha
Clave=Cte.OtrosTelefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.Cte.OtrasDirecciones]
Carpeta=Ficha
Clave=Cte.OtrasDirecciones
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=64
ColorFondo=Blanco

[Ficha.Cte.NumeroPasaporte]
Carpeta=Ficha
Clave=Cte.NumeroPasaporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

EspacioPrevio=S
[Ficha.Cte.InstitucionEnSuPais]
Carpeta=Ficha
Clave=Cte.InstitucionEnSuPais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Ficha.Cte.DireccionEnSuPais]
Carpeta=Ficha
Clave=Cte.DireccionEnSuPais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco

[Ficha.Cte.DireccionUltimoEmpleo]
Carpeta=Ficha
Clave=Cte.DireccionUltimoEmpleo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=45
ColorFondo=Blanco

[Ficha.Cte.Descripcion19]
Carpeta=Ficha
Clave=Cte.Descripcion19
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=44
ColorFondo=Blanco



























[Ficha.CDINombreSocio]
Carpeta=Ficha
Clave=CDINombreSocio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=55
ColorFondo=$00D7FFFF





































































[Ficha.Cte.PersonalTelefonos]
Carpeta=Ficha
Clave=Cte.PersonalTelefonos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=23
ColorFondo=Blanco

[Ficha.Cte.PersonalTelefonoMovil]
Carpeta=Ficha
Clave=Cte.PersonalTelefonoMovil
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=23
ColorFondo=Blanco

































[ReglaNeg.Cte.Nombre]
Carpeta=ReglaNeg
Clave=Cte.Nombre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=70


ColorFondo=Blanco
Pegado=N

[ReglaNeg.CDICteCat.Tipo0]
Carpeta=ReglaNeg
Clave=CDICteCat.Tipo0
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Tipo]
Carpeta=ReglaNeg
Clave=CDICteCat.Tipo
Editar=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Categoria0]
Carpeta=ReglaNeg
Clave=CDICteCat.Categoria0
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Categoria]
Carpeta=ReglaNeg
Clave=CDICteCat.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.SubCategoria]
Carpeta=ReglaNeg
Clave=CDICteCat.SubCategoria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Aporta]
Carpeta=ReglaNeg
Clave=CDICteCat.Aporta
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Clase]
Carpeta=ReglaNeg
Clave=CDICteCat.Clase
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Sede]
Carpeta=ReglaNeg
Clave=CDICteCat.Sede
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Actividad]
Carpeta=ReglaNeg
Clave=CDICteCat.Actividad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.CargoCDI]
Carpeta=ReglaNeg
Clave=CDICteCat.CargoCDI
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.Cte.Estatus]
Carpeta=ReglaNeg
Clave=Cte.Estatus
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.Cte.Descripcion13]
Carpeta=ReglaNeg
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco



Pegado=N

[ReglaNeg.Cte.Descripcion15]
Carpeta=ReglaNeg
Clave=Cte.Descripcion15
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=45
ColorFondo=Blanco

Pegado=N
[ReglaNeg.Cte.Descripcion19]
Carpeta=ReglaNeg
Clave=Cte.Descripcion19
Editar=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco


Pegado=N
LineaNueva=N
[ReglaNeg.Cte.CDIFacturarA]
Carpeta=ReglaNeg
Clave=Cte.CDIFacturarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


Pegado=N
[ReglaNeg.CDICteCat.CDIFormaPago]
Carpeta=ReglaNeg
Clave=CDICteCat.CDIFormaPago
Editar=S
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N

[ReglaNeg.CDICteCat.CDISubsidio]
Carpeta=ReglaNeg
Clave=CDICteCat.CDISubsidio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
Tamano=13
[ReglaNeg.CDICteCat.Descuento]
Carpeta=ReglaNeg
Clave=CDICteCat.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco





Pegado=N
Tamano=10
[ReglaNeg.CDICteCat.Membresia]
Carpeta=ReglaNeg
Clave=CDICteCat.Membresia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
Tamano=10
[ReglaNeg.CcdiCuota]
Carpeta=ReglaNeg
Clave=CcdiCuota
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
Tamano=13
[ReglaNeg.FechaVigencia]
Carpeta=ReglaNeg
Clave=FechaVigencia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
Tamano=13
[ReglaNeg.Cte.CDICargosRecurrentes]
Carpeta=ReglaNeg
Clave=Cte.CDICargosRecurrentes
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[ReglaNeg.Cte.CreditoEspecial]
Carpeta=ReglaNeg
Clave=Cte.CreditoEspecial
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[ReglaNeg.CDICteCat.Formato]
Carpeta=ReglaNeg
Clave=CDICteCat.Formato
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

[ReglaNeg.CDICteCat.Situacion]
Carpeta=ReglaNeg
Clave=CDICteCat.Situacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

Pegado=N
[ReglaNeg.CDICteCat.Recomendado]
Carpeta=ReglaNeg
Clave=CDICteCat.Recomendado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

Pegado=N
[ReglaNeg.Edad]
Carpeta=ReglaNeg
Clave=Edad
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Pegado=N
Tamano=13
[ReglaNeg.CDICteCat.SitCxc]
Carpeta=ReglaNeg
Clave=CDICteCat.SitCxc
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

[ReglaNeg.Cte.Agente]
Carpeta=ReglaNeg
Clave=Cte.Agente
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=13
ColorFondo=Blanco

[ReglaNeg.CDICteCat.AgenteEspecifico]
Carpeta=ReglaNeg
Clave=CDICteCat.AgenteEspecifico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco







































EspacioPrevio=S







[CDiCargRec.Columnas]
Cliente=64
Articulo=86
FechaInicio=76
FechaFin=80
Cantidad=50
EsCuota=50
Ubicacion=472
casillero=64
Id=33
Membresia=64
Articulo0=124
MembresiaAnt=72
ClienteAnt=64
Estatus=94
Socio=64
PrecioSocio=72
Descripcion1=229
PrecioLista=73
Automatico=90





[DatosMedicos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Medicos
Clave=DatosMedicos
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=13
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

[DatosMedicos.Cte.Cliente]
Carpeta=DatosMedicos
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.CDINombreSocio]
Carpeta=DatosMedicos
Clave=CDINombreSocio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=75
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedEstatura]
Carpeta=DatosMedicos
Clave=Cte.CDIMedEstatura
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=12
[DatosMedicos.Cte.CDIMEdPeso]
Carpeta=DatosMedicos
Clave=Cte.CDIMEdPeso
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=12
[DatosMedicos.Cte.CDIMedTipoSangre]
Carpeta=DatosMedicos
Clave=Cte.CDIMedTipoSangre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedDonador]
Carpeta=DatosMedicos
Clave=Cte.CDIMedDonador
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedEnfermo]
Carpeta=DatosMedicos
Clave=Cte.CDIMedEnfermo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedEnfermedad]
Carpeta=DatosMedicos
Clave=Cte.CDIMedEnfermedad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedAlergia]
Carpeta=DatosMedicos
Clave=Cte.CDIMedAlergia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedAlergias]
Carpeta=DatosMedicos
Clave=Cte.CDIMedAlergias
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedMedicamento]
Carpeta=DatosMedicos
Clave=Cte.CDIMedMedicamento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedMedicamentos]
Carpeta=DatosMedicos
Clave=Cte.CDIMedMedicamentos
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedAvisar]
Carpeta=DatosMedicos
Clave=Cte.CDIMedAvisar
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=44
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedTelefono]
Carpeta=DatosMedicos
Clave=Cte.CDIMedTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedCelular]
Carpeta=DatosMedicos
Clave=Cte.CDIMedCelular
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedNombreMedico]
Carpeta=DatosMedicos
Clave=Cte.CDIMedNombreMedico
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=44
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedTeleMedico]
Carpeta=DatosMedicos
Clave=Cte.CDIMedTeleMedico
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedCapacidades]
Carpeta=DatosMedicos
Clave=Cte.CDIMedCapacidades
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=28
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedCuidados]
Carpeta=DatosMedicos
Clave=Cte.CDIMedCuidados
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=28
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedNoTarjeton]
Carpeta=DatosMedicos
Clave=Cte.CDIMedNoTarjeton
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=12
ColorFondo=Blanco

[DatosMedicos.Cte.CDIMedVigencia]
Carpeta=DatosMedicos
Clave=Cte.CDIMedVigencia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco





















Tamano=12









[DatosMedicos.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=CDINombreSocio
CDINombreSocio=Cte.CDIMedEstatura
Cte.CDIMedEstatura=Cte.CDIMEdPeso
Cte.CDIMEdPeso=Cte.CDIMedTipoSangre
Cte.CDIMedTipoSangre=Cte.CDIMedDonador
Cte.CDIMedDonador=Cte.CDIMedEnfermo
Cte.CDIMedEnfermo=Cte.CDIMedAlergia
Cte.CDIMedAlergia=Cte.CDIMedAvisar
Cte.CDIMedAvisar=Cte.CDIMedTelefono
Cte.CDIMedTelefono=Cte.CDIMedCelular
Cte.CDIMedCelular=Cte.CDIMedNombreMedico
Cte.CDIMedNombreMedico=Cte.CDIMedTeleMedico
Cte.CDIMedTeleMedico=Cte.CDIMedCapacidades
Cte.CDIMedCapacidades=Cte.CDIMedCuidados
Cte.CDIMedCuidados=Cte.CDIMedNoTarjeton
Cte.CDIMedNoTarjeton=Cte.CDIMedVigencia
Cte.CDIMedVigencia=Cte.CDIMedMedicamento
Cte.CDIMedMedicamento=Cte.CDIMedEnfermedad
Cte.CDIMedEnfermedad=Cte.CDIMedAlergias
Cte.CDIMedAlergias=Cte.CDIMedMedicamentos
Cte.CDIMedMedicamentos=(Fin)




[Transporte]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Transporte
Clave=Transporte
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
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

[Transporte.Cte.CDITransServicio]
Carpeta=Transporte
Clave=Cte.CDITransServicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Transporte.Cte.CDITransHoraAscenso]
Carpeta=Transporte
Clave=Cte.CDITransHoraAscenso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Transporte.Cte.CDITransMismaDir]
Carpeta=Transporte
Clave=Cte.CDITransMismaDir
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Transporte.Cte.CDITransDirOtroSocio]
Carpeta=Transporte
Clave=Cte.CDITransDirOtroSocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Transporte.Cte.CDITransDireccion]
Carpeta=Transporte
Clave=Cte.CDITransDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransNumero]
Carpeta=Transporte
Clave=Cte.CDITransNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransNumeroInt]
Carpeta=Transporte
Clave=Cte.CDITransNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransEntreCalles]
Carpeta=Transporte
Clave=Cte.CDITransEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransPlano]
Carpeta=Transporte
Clave=Cte.CDITransPlano
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Transporte.Cte.CDITransDelegacion]
Carpeta=Transporte
Clave=Cte.CDITransDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransColonia]
Carpeta=Transporte
Clave=Cte.CDITransColonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransCodigoPostal]
Carpeta=Transporte
Clave=Cte.CDITransCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Transporte.Cte.CDITransPoblacion]
Carpeta=Transporte
Clave=Cte.CDITransPoblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransEstado]
Carpeta=Transporte
Clave=Cte.CDITransEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransNombreResp]
Carpeta=Transporte
Clave=Cte.CDITransNombreResp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransTelefono]
Carpeta=Transporte
Clave=Cte.CDITransTelefono
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Transporte.Cte.CDITransLLevarDom]
Carpeta=Transporte
Clave=Cte.CDITransLLevarDom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Transporte.Cte.CDITransHoraSalida]
Carpeta=Transporte
Clave=Cte.CDITransHoraSalida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Transporte.Cte.CDITransMismaDir2]
Carpeta=Transporte
Clave=Cte.CDITransMismaDir2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Transporte.Cte.CDITransDirOtroSocio2]
Carpeta=Transporte
Clave=Cte.CDITransDirOtroSocio2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Transporte.Cte.CDITransDireccion2]
Carpeta=Transporte
Clave=Cte.CDITransDireccion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransNumero2]
Carpeta=Transporte
Clave=Cte.CDITransNumero2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransNumeroInt2]
Carpeta=Transporte
Clave=Cte.CDITransNumeroInt2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Transporte.Cte.CDITransEntreCalles2]
Carpeta=Transporte
Clave=Cte.CDITransEntreCalles2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransPlano2]
Carpeta=Transporte
Clave=Cte.CDITransPlano2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Transporte.Cte.CDITransDelegacion2]
Carpeta=Transporte
Clave=Cte.CDITransDelegacion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransColonia2]
Carpeta=Transporte
Clave=Cte.CDITransColonia2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransCodigoPostal2]
Carpeta=Transporte
Clave=Cte.CDITransCodigoPostal2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Transporte.Cte.CDITransPoblacion2]
Carpeta=Transporte
Clave=Cte.CDITransPoblacion2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransEstado2]
Carpeta=Transporte
Clave=Cte.CDITransEstado2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Transporte.Cte.CDITransNombreResp2]
Carpeta=Transporte
Clave=Cte.CDITransNombreResp2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Transporte.Cte.CDITransTelefono2]
Carpeta=Transporte
Clave=Cte.CDITransTelefono2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco







[Transporte.ListaEnCaptura]
(Inicio)=Cte.CDITransServicio
Cte.CDITransServicio=Cte.CDITransHoraAscenso
Cte.CDITransHoraAscenso=Cte.CDITransMismaDir
Cte.CDITransMismaDir=Cte.CDITransDirOtroSocio
Cte.CDITransDirOtroSocio=Cte.CDITransDireccion
Cte.CDITransDireccion=Cte.CDITransNumero
Cte.CDITransNumero=Cte.CDITransNumeroInt
Cte.CDITransNumeroInt=Cte.CDITransEntreCalles
Cte.CDITransEntreCalles=Cte.CDITransPlano
Cte.CDITransPlano=Cte.CDITransDelegacion
Cte.CDITransDelegacion=Cte.CDITransColonia
Cte.CDITransColonia=Cte.CDITransCodigoPostal
Cte.CDITransCodigoPostal=Cte.CDITransPoblacion
Cte.CDITransPoblacion=Cte.CDITransEstado
Cte.CDITransEstado=Cte.CDITransNombreResp
Cte.CDITransNombreResp=Cte.CDITransTelefono
Cte.CDITransTelefono=Cte.CDITransLLevarDom
Cte.CDITransLLevarDom=Cte.CDITransHoraSalida
Cte.CDITransHoraSalida=Cte.CDITransMismaDir2
Cte.CDITransMismaDir2=Cte.CDITransDirOtroSocio2
Cte.CDITransDirOtroSocio2=Cte.CDITransDireccion2
Cte.CDITransDireccion2=Cte.CDITransNumero2
Cte.CDITransNumero2=Cte.CDITransNumeroInt2
Cte.CDITransNumeroInt2=Cte.CDITransEntreCalles2
Cte.CDITransEntreCalles2=Cte.CDITransPlano2
Cte.CDITransPlano2=Cte.CDITransDelegacion2
Cte.CDITransDelegacion2=Cte.CDITransColonia2
Cte.CDITransColonia2=Cte.CDITransCodigoPostal2
Cte.CDITransCodigoPostal2=Cte.CDITransPoblacion2
Cte.CDITransPoblacion2=Cte.CDITransEstado2
Cte.CDITransEstado2=Cte.CDITransNombreResp2
Cte.CDITransNombreResp2=Cte.CDITransTelefono2
Cte.CDITransTelefono2=(Fin)


[Acciones.cerrar]
Nombre=cerrar
Boton=23
NombreDesplegar=cerrar
EnBarraHerramientas=S
TipoAccion=ventana
ClaveAccion=Cerrar
Activo=S
Visible=S










[CDiCargRec.ListaEnCaptura]
(Inicio)=CDIArtCargosRecurrentes.Articulo
CDIArtCargosRecurrentes.Articulo=Descripcion1
Descripcion1=PrecioLista
PrecioLista=CDIArtCargosRecurrentes.Cantidad
CDIArtCargosRecurrentes.Cantidad=CDIArtCargosRecurrentes.FechaInicio
CDIArtCargosRecurrentes.FechaInicio=CDIArtCargosRecurrentes.FechaFin
CDIArtCargosRecurrentes.FechaFin=CDIArtCargosRecurrentes.casillero
CDIArtCargosRecurrentes.casillero=CDIArtCargosRecurrentes.Ubicacion
CDIArtCargosRecurrentes.Ubicacion=Automatico
Automatico=(Fin)








[ReglaNeg.Cte.Titular]
Carpeta=ReglaNeg
Clave=Cte.Titular
Editar=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






















[ReglaNeg.ListaEnCaptura]
(Inicio)=CDICteCat.Socio
CDICteCat.Socio=Cte.Nombre
Cte.Nombre=Cte.Titular
Cte.Titular=CDICteCat.Membresia
CDICteCat.Membresia=CDICteCat.Tipo0
CDICteCat.Tipo0=CDICteCat.Tipo
CDICteCat.Tipo=CDICteCat.Categoria0
CDICteCat.Categoria0=CDICteCat.Categoria
CDICteCat.Categoria=CDICteCat.SubCategoria
CDICteCat.SubCategoria=CDICteCat.Aporta
CDICteCat.Aporta=CDICteCat.Clase
CDICteCat.Clase=CDICteCat.Sede
CDICteCat.Sede=CDICteCat.Actividad
CDICteCat.Actividad=CDICteCat.CargoCDI
CDICteCat.CargoCDI=Cte.Estatus
Cte.Estatus=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=Cte.Descripcion19
Cte.Descripcion19=Cte.CDIFacturarA
Cte.CDIFacturarA=CDICteCat.CDIFormaPago
CDICteCat.CDIFormaPago=CcdiCuota
CcdiCuota=CDICteCat.CDISubsidio
CDICteCat.CDISubsidio=CDICteCat.Descuento
CDICteCat.Descuento=FechaVigencia
FechaVigencia=CDICteCat.Formato
CDICteCat.Formato=CDICteCat.Situacion
CDICteCat.Situacion=CDICteCat.Recomendado
CDICteCat.Recomendado=Edad
Edad=CDICteCat.SitCxc
CDICteCat.SitCxc=Cte.Agente
Cte.Agente=CDICteCat.AgenteEspecifico
CDICteCat.AgenteEspecifico=Cte.CDICargosRecurrentes
Cte.CDICargosRecurrentes=Cte.CreditoEspecial
Cte.CreditoEspecial=(Fin)
































[Ficha.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Socio
Cte.Socio=CDINombreSocio
CDINombreSocio=Cte.Membresia
Cte.Membresia=Cte.Parentesco
Cte.Parentesco=Cte.Sexo
Cte.Sexo=Cte.EstadoCivil
Cte.EstadoCivil=Cte.Grupo
Cte.Grupo=Cte.Familia
Cte.Familia=Cte.NIPCDI
Cte.NIPCDI=Cte.FechaNacimiento
Cte.FechaNacimiento=Edad
Edad=Cte.Descripcion11
Cte.Descripcion11=Cte.Descripcion12
Cte.Descripcion12=Cte.PersonalPais
Cte.PersonalPais=Cte.Nacionalidad
Cte.Nacionalidad=Cte.Ocupacion
Cte.Ocupacion=Cte.Alta
Cte.Alta=Cte.Fecha1
Cte.Fecha1=Cte.Fecha2
Cte.Fecha2=Cte.MismaDireccion
Cte.MismaDireccion=Cte.DireccionOtroSocio
Cte.DireccionOtroSocio=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=Cte.Plano
Cte.Plano=Cte.Estado
Cte.Estado=Cte.Pais
Cte.Pais=Cte.eMail1
Cte.eMail1=Cte.Telefonos
Cte.Telefonos=Cte.PersonalTelefonos
Cte.PersonalTelefonos=Cte.PersonalTelefonoMovil
Cte.PersonalTelefonoMovil=Cte.OtrosTelefonos
Cte.OtrosTelefonos=Cte.OtrasDirecciones
Cte.OtrasDirecciones=Cte.NumeroPasaporte
Cte.NumeroPasaporte=Cte.InstitucionEnSuPais
Cte.InstitucionEnSuPais=Cte.DireccionEnSuPais
Cte.DireccionEnSuPais=Cte.DireccionUltimoEmpleo
Cte.DireccionUltimoEmpleo=Cte.Descripcion19
Cte.Descripcion19=(Fin)















[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=ReglaNeg
ReglaNeg=CDiCargRec
CDiCargRec=DatosMedicos
DatosMedicos=Transporte
Transporte=(Fin)
