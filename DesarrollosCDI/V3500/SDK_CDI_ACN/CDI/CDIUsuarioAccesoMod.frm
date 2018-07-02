
[Forma]
Clave=CDIUsuarioAccesoMod
Icono=48
Modulos=(Todos)
Nombre=Acceso Pestaña Modulos
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S


ListaCarpetas=(Lista)
CarpetaPrincipal=Clientes
PosicionInicialIzquierda=437
PosicionInicialArriba=227
PosicionInicialAlturaCliente=319
PosicionInicialAncho=406
Totalizadores=S
Comentarios=Info.Descripcion
ListaAcciones=Guardar
[Usuario.ListaEnCaptura]
(Inicio)=Usuario.ClDatosGenerales
Usuario.ClDatosGenerales=Usuario.ClDatosPersonales
Usuario.ClDatosPersonales=Usuario.ClFiscal
Usuario.ClFiscal=Usuario.ClSeguro
Usuario.ClSeguro=Usuario.ClDatosVentas
Usuario.ClDatosVentas=Usuario.ClReglaNegocio
Usuario.ClReglaNegocio=Usuario.ClUsoServicio
Usuario.ClUsoServicio=Usuario.ClPerfiles
Usuario.ClPerfiles=Usuario.ClFord
Usuario.ClFord=Usuario.ClCRM
Usuario.ClCRM=Usuario.ClInternet
Usuario.ClInternet=Usuario.ClOtros
Usuario.ClOtros=Usuario.ClComentarios
Usuario.ClComentarios=Usuario.ClCaracteristicas
Usuario.ClCaracteristicas=Usuario.ClSituacionesArea
Usuario.ClSituacionesArea=Usuario.ClEcuador
Usuario.ClEcuador=(Fin)

















[Clientes]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Clientes
Clave=Clientes
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Usuario
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=Usuario.Usuario = <T>{Info.Usuario}<T>
[Clientes.Usuario.ClDatosGenerales]
Carpeta=Clientes
Clave=Usuario.ClDatosGenerales
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClDatosPersonales]
Carpeta=Clientes
Clave=Usuario.ClDatosPersonales
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClFiscal]
Carpeta=Clientes
Clave=Usuario.ClFiscal
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClSeguro]
Carpeta=Clientes
Clave=Usuario.ClSeguro
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClDatosVentas]
Carpeta=Clientes
Clave=Usuario.ClDatosVentas
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClReglaNegocio]
Carpeta=Clientes
Clave=Usuario.ClReglaNegocio
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClUsoServicio]
Carpeta=Clientes
Clave=Usuario.ClUsoServicio
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClPerfiles]
Carpeta=Clientes
Clave=Usuario.ClPerfiles
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClFord]
Carpeta=Clientes
Clave=Usuario.ClFord
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClCRM]
Carpeta=Clientes
Clave=Usuario.ClCRM
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClInternet]
Carpeta=Clientes
Clave=Usuario.ClInternet
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClOtros]
Carpeta=Clientes
Clave=Usuario.ClOtros
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClComentarios]
Carpeta=Clientes
Clave=Usuario.ClComentarios
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClCaracteristicas]
Carpeta=Clientes
Clave=Usuario.ClCaracteristicas
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClSituacionesArea]
Carpeta=Clientes
Clave=Usuario.ClSituacionesArea
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Clientes.Usuario.ClEcuador]
Carpeta=Clientes
Clave=Usuario.ClEcuador
Editar=S
ValidaNombre=N
3D=S
ColorFondo=Blanco





Tamano=25





[Proveedores]
Estilo=Ficha
Pestana=S
Clave=Proveedores
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Usuario
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Proveedores

FiltroGeneral=Usuario.Usuario = <T>{Info.Usuario}<T>
[Proveedores.Usuario.PrDatosGenerales]
Carpeta=Proveedores
Clave=Usuario.PrDatosGenerales
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Proveedores.Usuario.PrReglaNegocio]
Carpeta=Proveedores
Clave=Usuario.PrReglaNegocio
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Proveedores.Usuario.PrComprasPagos]
Carpeta=Proveedores
Clave=Usuario.PrComprasPagos
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Proveedores.Usuario.PrFiscal]
Carpeta=Proveedores
Clave=Usuario.PrFiscal
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Proveedores.Usuario.PrOtrosDatos]
Carpeta=Proveedores
Clave=Usuario.PrOtrosDatos
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Proveedores.Usuario.PrCaracteristicas]
Carpeta=Proveedores
Clave=Usuario.PrCaracteristicas
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Proveedores.Usuario.PrSituacionesArea]
Carpeta=Proveedores
Clave=Usuario.PrSituacionesArea
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Proveedores.Usuario.PrEcuador]
Carpeta=Proveedores
Clave=Usuario.PrEcuador
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco




[Personal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Personal
Clave=Personal
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Usuario
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

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=Usuario.Usuario = <T>{Info.Usuario}<T>
[Personal.Usuario.PeDatosGenerales]
Carpeta=Personal
Clave=Usuario.PeDatosGenerales
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PeBeneficiarios]
Carpeta=Personal
Clave=Usuario.PeBeneficiarios
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PeRecursosHumanos]
Carpeta=Personal
Clave=Usuario.PeRecursosHumanos
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PeAspiraciones]
Carpeta=Personal
Clave=Usuario.PeAspiraciones
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PeReglaNegocio]
Carpeta=Personal
Clave=Usuario.PeReglaNegocio
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PeComisionesEspeciales]
Carpeta=Personal
Clave=Usuario.PeComisionesEspeciales
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PeOtrosDatos]
Carpeta=Personal
Clave=Usuario.PeOtrosDatos
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PePerfiles]
Carpeta=Personal
Clave=Usuario.PePerfiles
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PeCaracteristicas]
Carpeta=Personal
Clave=Usuario.PeCaracteristicas
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Usuario.PeSituacionesArea]
Carpeta=Personal
Clave=Usuario.PeSituacionesArea
Editar=S
3D=S
Tamano=25
ColorFondo=Blanco



[Socios.Usuario.SoDatosGenerales]
Carpeta=Socios
Clave=Usuario.SoDatosGenerales
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco








ValidaNombre=N



[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y Cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
























[Socios]
Estilo=Ficha
Pestana=S
Clave=Socios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Usuario
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
PestanaOtroNombre=S
PestanaNombre=Socios
PermiteEditar=S
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
ListaEnCaptura=(Lista)


[Socios.Usuario.SoEconomicos]
Carpeta=Socios
Clave=Usuario.SoEconomicos
Editar=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Socios.Usuario.SoDatosMedicos]
Carpeta=Socios
Clave=Usuario.SoDatosMedicos
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Socios.Usuario.SoPreferencias]
Carpeta=Socios
Clave=Usuario.SoPreferencias
Editar=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Socios.Usuario.SoTransporte]
Carpeta=Socios
Clave=Usuario.SoTransporte
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Socios.Usuario.SoDatosBancarios]
Carpeta=Socios
Clave=Usuario.SoDatosBancarios
Editar=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Socios.Usuario.SoDatosAcademicos]
Carpeta=Socios
Clave=Usuario.SoDatosAcademicos
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Socios.Usuario.SoEstudioSocioeconomico]
Carpeta=Socios
Clave=Usuario.SoEstudioSocioeconomico
Editar=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco

[Socios.Usuario.SoReglaNegocio]
Carpeta=Socios
Clave=Usuario.SoReglaNegocio
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=25
ColorFondo=Blanco






[Clientes.ListaEnCaptura]
(Inicio)=Usuario.ClDatosGenerales
Usuario.ClDatosGenerales=Usuario.ClDatosPersonales
Usuario.ClDatosPersonales=Usuario.ClFiscal
Usuario.ClFiscal=Usuario.ClSeguro
Usuario.ClSeguro=Usuario.ClDatosVentas
Usuario.ClDatosVentas=Usuario.ClReglaNegocio
Usuario.ClReglaNegocio=Usuario.ClUsoServicio
Usuario.ClUsoServicio=Usuario.ClPerfiles
Usuario.ClPerfiles=Usuario.ClFord
Usuario.ClFord=Usuario.ClCRM
Usuario.ClCRM=Usuario.ClInternet
Usuario.ClInternet=Usuario.ClOtros
Usuario.ClOtros=Usuario.ClComentarios
Usuario.ClComentarios=Usuario.ClCaracteristicas
Usuario.ClCaracteristicas=Usuario.ClSituacionesArea
Usuario.ClSituacionesArea=Usuario.ClEcuador
Usuario.ClEcuador=Usuario.ClRolesAsignados
Usuario.ClRolesAsignados=(Fin)

[Clientes.Usuario.ClRolesAsignados]
Carpeta=Clientes
Clave=Usuario.ClRolesAsignados
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco

[Proveedores.ListaEnCaptura]
(Inicio)=Usuario.PrDatosGenerales
Usuario.PrDatosGenerales=Usuario.PrReglaNegocio
Usuario.PrReglaNegocio=Usuario.PrComprasPagos
Usuario.PrComprasPagos=Usuario.PrFiscal
Usuario.PrFiscal=Usuario.PrOtrosDatos
Usuario.PrOtrosDatos=Usuario.PrCaracteristicas
Usuario.PrCaracteristicas=Usuario.PrSituacionesArea
Usuario.PrSituacionesArea=Usuario.PrEcuador
Usuario.PrEcuador=Usuario.PrRolesAsignados
Usuario.PrRolesAsignados=(Fin)

[Proveedores.Usuario.PrRolesAsignados]
Carpeta=Proveedores
Clave=Usuario.PrRolesAsignados
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco


[Personal.Usuario.PeRolesAsignados]
Carpeta=Personal
Clave=Usuario.PeRolesAsignados
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=25
[Personal.ListaEnCaptura]
(Inicio)=Usuario.PeDatosGenerales
Usuario.PeDatosGenerales=Usuario.PeBeneficiarios
Usuario.PeBeneficiarios=Usuario.PeRecursosHumanos
Usuario.PeRecursosHumanos=Usuario.PeAspiraciones
Usuario.PeAspiraciones=Usuario.PeReglaNegocio
Usuario.PeReglaNegocio=Usuario.PeComisionesEspeciales
Usuario.PeComisionesEspeciales=Usuario.PeOtrosDatos
Usuario.PeOtrosDatos=Usuario.PePerfiles
Usuario.PePerfiles=Usuario.PeCaracteristicas
Usuario.PeCaracteristicas=Usuario.PeSituacionesArea
Usuario.PeSituacionesArea=Usuario.PeRolesAsignados
Usuario.PeRolesAsignados=(Fin)

[Socios.ListaEnCaptura]
(Inicio)=Usuario.SoDatosGenerales
Usuario.SoDatosGenerales=Usuario.SoEconomicos
Usuario.SoEconomicos=Usuario.SoDatosMedicos
Usuario.SoDatosMedicos=Usuario.SoPreferencias
Usuario.SoPreferencias=Usuario.SoTransporte
Usuario.SoTransporte=Usuario.SoDatosBancarios
Usuario.SoDatosBancarios=Usuario.SoDatosAcademicos
Usuario.SoDatosAcademicos=Usuario.SoEstudioSocioeconomico
Usuario.SoEstudioSocioeconomico=Usuario.SoReglaNegocio
Usuario.SoReglaNegocio=Usuario.SoRolesAsignados
Usuario.SoRolesAsignados=(Fin)

[Socios.Usuario.SoRolesAsignados]
Carpeta=Socios
Clave=Usuario.SoRolesAsignados
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco



[Forma.ListaCarpetas]
(Inicio)=Clientes
Clientes=Proveedores
Proveedores=Personal
Personal=Socios
Socios=(Fin)
