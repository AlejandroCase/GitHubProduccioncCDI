
[Forma]
Clave=CDIEmpresaCfg
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Configuración Especial CDI
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Lista
PosicionInicialIzquierda=333
PosicionInicialArriba=332
PosicionInicialAlturaCliente=325
PosicionInicialAncho=614
PosicionCol1=143
ListaAcciones=(Lista)
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIEmpresaCfg
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=CDIEmpresaCfg.Empresa

[Lista.CDIEmpresaCfg.Empresa]
Carpeta=Lista
Clave=CDIEmpresaCfg.Empresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Detalle]
Estilo=Ficha
Clave=Detalle
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIEmpresaCfg
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Empresa

[Detalle.CDIEmpresaCfg.Empresa]
Carpeta=Detalle
Clave=CDIEmpresaCfg.Empresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Empresa.Nombre]
Carpeta=Detalle
Clave=Empresa.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Detalle.CDIEmpresaCfg.CEArtCoberturaMedica]
Carpeta=Detalle
Clave=CDIEmpresaCfg.CEArtCoberturaMedica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Detalle.Art.Descripcion1]
Carpeta=Detalle
Clave=Art.Descripcion1
Editar=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]




[Lista.Columnas]
Empresa=110







Nombre=371
Articulo=131
Descripcion1=244





0=91
1=267
[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


GuardarAntes=S
[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
NombreEnBoton=S
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=Detalle
TipoAccion=Controles Captura
ClaveAccion=Registro Agregar
Activo=S
Visible=S



[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
NombreEnBoton=S
NombreDesplegar=E&liminar
EnBarraHerramientas=S
ConfirmarAntes=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Registro Eliminar
Activo=S
Visible=S









[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador 2 (Registros)
Activo=S
Visible=S





EspacioPrevio=S


























[ControlPresupuestal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Control Presupuestal
Clave=ControlPresupuestal
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIEmpresaCfg
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

PermiteEditar=S
[ControlPresupuestal.CDIEmpresaCfg.AplicaComprometido]
Carpeta=ControlPresupuestal
Clave=CDIEmpresaCfg.AplicaComprometido
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco










[ModuloSocios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Modulo Socios
Clave=ModuloSocios
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CDIEmpresaCfg
Fuente={Tahoma, 8, Negro, []}
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
PermiteEditar=S
[ModuloSocios.CDIEmpresaCfg.CDIMovRenovacion]
Carpeta=ModuloSocios
Clave=CDIEmpresaCfg.CDIMovRenovacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco



[ModuloSocios.Columnas]
CDIMovRenovacion=132
















[ModuloSocios.CDIEmpresaCfg.CDIPeriodoReingreso]
Carpeta=ModuloSocios
Clave=CDIEmpresaCfg.CDIPeriodoReingreso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco














[ModuloSocios.CDIEmpresaCfg.CDIMovReingreso]
Carpeta=ModuloSocios
Clave=CDIEmpresaCfg.CDIMovReingreso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco






[ControlPresupuestal.CDIEmpresaCfg.CDIMovSimulacion]
Carpeta=ControlPresupuestal
Clave=CDIEmpresaCfg.CDIMovSimulacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[ControlPresupuestal.CDIEmpresaCfg.CDIUsuarioSimulacion]
Carpeta=ControlPresupuestal
Clave=CDIEmpresaCfg.CDIUsuarioSimulacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[ControlPresupuestal.CDIEmpresaCfg.CDISucursalSimulacion]
Carpeta=ControlPresupuestal
Clave=CDIEmpresaCfg.CDISucursalSimulacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco























[ControlPresupuestal.ListaEnCaptura]
(Inicio)=CDIEmpresaCfg.AplicaComprometido
CDIEmpresaCfg.AplicaComprometido=CDIEmpresaCfg.CDIMovSimulacion
CDIEmpresaCfg.CDIMovSimulacion=CDIEmpresaCfg.CDIUsuarioSimulacion
CDIEmpresaCfg.CDIUsuarioSimulacion=CDIEmpresaCfg.CDISucursalSimulacion
CDIEmpresaCfg.CDISucursalSimulacion=CDIEmpresaCfg.CDIMovTraspMes13
CDIEmpresaCfg.CDIMovTraspMes13=(Fin)

[ControlPresupuestal.CDIEmpresaCfg.CDIMovTraspMes13]
Carpeta=ControlPresupuestal
Clave=CDIEmpresaCfg.CDIMovTraspMes13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco








[Detalle.CDIEmpresaCfg.CDICorreoCargosAutom]
Carpeta=Detalle
Clave=CDIEmpresaCfg.CDICorreoCargosAutom
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=61
ColorFondo=Blanco


















[Detalle.ListaEnCaptura]
(Inicio)=CDIEmpresaCfg.Empresa
CDIEmpresaCfg.Empresa=Empresa.Nombre
Empresa.Nombre=CDIEmpresaCfg.CEArtCoberturaMedica
CDIEmpresaCfg.CEArtCoberturaMedica=Art.Descripcion1
Art.Descripcion1=CDIEmpresaCfg.CDICorreoCargosAutom
CDIEmpresaCfg.CDICorreoCargosAutom=(Fin)









[ModuloSocios.ListaEnCaptura]
(Inicio)=CDIEmpresaCfg.CDIMovRenovacion
CDIEmpresaCfg.CDIMovRenovacion=CDIEmpresaCfg.CDIMovReingreso
CDIEmpresaCfg.CDIMovReingreso=CDIEmpresaCfg.CDIPeriodoReingreso
CDIEmpresaCfg.CDIPeriodoReingreso=CDIEmpresaCfg.CDIDiaCargoAnual
CDIEmpresaCfg.CDIDiaCargoAnual=(Fin)

[ModuloSocios.CDIEmpresaCfg.CDIDiaCargoAnual]
Carpeta=ModuloSocios
Clave=CDIEmpresaCfg.CDIDiaCargoAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=Detalle
Detalle=ControlPresupuestal
ControlPresupuestal=ModuloSocios
ModuloSocios=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Nuevo
Nuevo=Eliminar
Eliminar=Navegador
Navegador=(Fin)
