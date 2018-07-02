[Forma]
Clave=Version
Nombre=Configuración - Base Datos
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=289
PosicionInicialArriba=152
PosicionInicialAlturaCliente=461
PosicionInicialAncho=701
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado

[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Version
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
PestanaNombre=Generales

[Ficha.Version.RedondeoMonetarios]
Carpeta=Ficha
Clave=Version.RedondeoMonetarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=5
Pegado=N

[Ficha.Version.Peru]
Carpeta=Ficha
Clave=Version.Peru
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30
EspacioPrevio=S

[Ficha.Version.NomLimiteInferior2]
Carpeta=Ficha
Clave=Version.NomLimiteInferior2
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30

[Ficha.Version.OutlookEstatusNuevo]
Carpeta=Ficha
Clave=Version.OutlookEstatusNuevo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=40
EspacioPrevio=S

[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
ConCondicion=S
EjecucionCondicion=Si(Vacio(Version:Version.Base), Error(<T>Falta Especificar el Nombre de la Base<T>) AbortarOperacion)<BR>Si(Version:Version.Sincro y Version:Version.ModuloCentral, Error(<T>El Módulo Central Sustituye a la Sincronizacion<T>) AbortarOperacion)
Antes=S
AntesExpresiones=EjecutarSQL(<T>spCfgModuloCentralReplica<T>)
DespuesGuardar=S

[Ficha.Version.NombreCorreoEnLote]
Carpeta=Ficha
Clave=Version.NombreCorreoEnLote
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Contrasena]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Contraseña
Clave=Contrasena
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Version
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

[Contrasena.Version.ContrasenaTamanoMinimo]
Carpeta=Contrasena
Clave=Version.ContrasenaTamanoMinimo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco
ColorFuente=Negro

[Contrasena.Version.ContrasenaRequiereAlfa]
Carpeta=Contrasena
Clave=Version.ContrasenaRequiereAlfa
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Contrasena.Version.ContrasenaRequiereNumeros]
Carpeta=Contrasena
Clave=Version.ContrasenaRequiereNumeros
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Outlook]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Outlook
Clave=Outlook
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Version
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

[Outlook.Version.OutlookMensajes]
Carpeta=Outlook
Clave=Version.OutlookMensajes
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Outlook.Version.OutlookCitas]
Carpeta=Outlook
Clave=Version.OutlookCitas
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20
EspacioPrevio=S

[Outlook.Version.OutlookTareas]
Carpeta=Outlook
Clave=Version.OutlookTareas
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20
EspacioPrevio=S

[Outlook.Version.OutlookTareasSincronizar]
Carpeta=Outlook
Clave=Version.OutlookTareasSincronizar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Version.SituacionFinalAlRegresar]
Carpeta=Ficha
Clave=Version.SituacionFinalAlRegresar
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30

[Outlook.Version.OutlookActividadesSincronizar]
Carpeta=Outlook
Clave=Version.OutlookActividadesSincronizar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Ficha.Version.ModuloCentral]
Carpeta=Ficha
Clave=Version.ModuloCentral
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[ModuloCentral]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Módulo Central
Clave=ModuloCentral
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Version
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
CondicionVisible=Version:Version.ModuloCentral

[ModuloCentral.Version.ModuloCentralURL]
Carpeta=ModuloCentral
Clave=Version.ModuloCentralURL
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=51
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[BaseDatos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Base Datos
Clave=BaseDatos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Version
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
ListaEnCaptura=Version.Base
CarpetaVisible=S

[BaseDatos.Version.Base]
Carpeta=BaseDatos
Clave=Version.Base
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[ModuloCentral.Version.Desconectar]
Carpeta=ModuloCentral
Clave=Version.Desconectar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ModuloCentral.Version.Reconectar]
Carpeta=ModuloCentral
Clave=Version.Reconectar
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ModuloCentral.Version.EstaDesconectado]
Carpeta=ModuloCentral
Clave=Version.EstaDesconectado
Editar=S
LineaNueva=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ModuloCentral.Version.FechaDesconexion]
Carpeta=ModuloCentral
Clave=Version.FechaDesconexion
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro
EspacioPrevio=S

[ModuloCentral.Version.ReconexionFrecuencia]
Carpeta=ModuloCentral
Clave=Version.ReconexionFrecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ModuloCentral.Version.ReconexionUltimoIntento]
Carpeta=ModuloCentral
Clave=Version.ReconexionUltimoIntento
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
ColorFuente=Negro

[ModuloCentral.Version.ConservarColaProcesada]
Carpeta=ModuloCentral
Clave=Version.ConservarColaProcesada
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=N

[Acciones.CacheCola]
Nombre=CacheCola
Boton=45
NombreEnBoton=S
NombreDesplegar=&Colas / Caché
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CfgModuloCentralAccion
Visible=S
ActivoCondicion=Version:Version.ModuloCentral

[ModuloCentral.Version.TamanoLoteProcesarCola]
Carpeta=ModuloCentral
Clave=Version.TamanoLoteProcesarCola
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

[ModuloCentral.Version.Replica]
Carpeta=ModuloCentral
Clave=Version.Replica
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Replica]
Nombre=Replica
Boton=45
NombreEnBoton=S
NombreDesplegar=&Replica
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CfgModuloCentralReplica
ActivoCondicion=Version:Version.ModuloCentral y Version:Version.Replica
Visible=S

[ModuloCentral.Version.TamanoLoteProcesarReplica]
Carpeta=ModuloCentral
Clave=Version.TamanoLoteProcesarReplica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[ModuloCentral.Version.ConservarReplicaProcesada]
Carpeta=ModuloCentral
Clave=Version.ConservarReplicaProcesada
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Version.SincroSSB]
Carpeta=Ficha
Clave=Version.SincroSSB
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[SincroSSB]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Sincronización (Service Broker)
Clave=SincroSSB
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Version
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
PermiteEditar=S
CondicionVisible=Version:Version.SincroSSB

[SincroSSB.Version.SincroSBBOkConservar]
Carpeta=SincroSSB
Clave=Version.SincroSBBOkConservar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[SincroSSB.Version.SincroSSBModoManual]
Carpeta=SincroSSB
Clave=Version.SincroSSBModoManual
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[SincroSSB.Version.SincroContabilidadMatriz]
Carpeta=SincroSSB
Clave=Version.SincroContabilidadMatriz
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Acciones.ActivarSSB]
Nombre=ActivarSSB
Boton=7
NombreEnBoton=S
NombreDesplegar=&Activar Sincro SSB
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S
GuardarAntes=S
RefrescarDespues=S
Expresion=Si(no Version:Version.SincroSSBMismaInstancia, Archivo.Eliminar(Directorio.Verificar(Version:Version.RutaCertificados, Verdadero)+<T>\CertificadoSSB_<T>+Version:Version.Sucursal))<BR>VerComentario( <T>Script para Activar SSB<T>, SQLEnLista(<T>spSincroSSB_Activar<T>))
ActivoCondicion=no Version:Version.SincroSSB

[Acciones.Certificados]
Nombre=Certificados
Boton=69
NombreEnBoton=S
NombreDesplegar=Actualizar &Certificados
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S
EspacioPrevio=S
Expresion=VerComentario( <T>Script para Activar Certificados<T>, SQLEnLista(<T>spSincroSSB_ActualizarCertificados<T>))
ActivoCondicion=Version:Version.SincroSSB y (no Version:Version.SincroSSBMismaInstancia)

[Ficha.Version.PuertoSSB]
Carpeta=Ficha
Clave=Version.PuertoSSB
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=10

[Ficha.Version.RutaCertificados]
Carpeta=Ficha
Clave=Version.RutaCertificados
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Version.SincroSSBMismaInstancia]
Carpeta=Ficha
Clave=Version.SincroSSBMismaInstancia
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Acciones.Respaldo]
Nombre=Respaldo
Boton=94
NombreEnBoton=S
NombreDesplegar=Solicitar &Respaldo
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S
Expresion=ProcesarSQL(<T>spSincroSSB_SolicitarRespaldo<T>)
ActivoCondicion=Version:Version.SincroSSB y (no Version:Version.SincroSSBMismaInstancia) y (Version:Version.Sucursal>0)

[SincroSSB.Version.SincroSSBRecibirRespaldoMatriz]
Carpeta=SincroSSB
Clave=Version.SincroSSBRecibirRespaldoMatriz
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[SincroSSB.Version.TRCL]
Carpeta=SincroSSB
Clave=Version.TRCL
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Version.IPDinamica]
Carpeta=Ficha
Clave=Version.IPDinamica
Editar=S
LineaNueva=S
3D=S
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[IPDinamica]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=IP Dinámica
Clave=IPDinamica
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Version
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
CondicionVisible=Version:Version.IPDinamica y (Version:Version.Sucursal>0)

[IPDinamica.Version.IPDinamicaURL]
Carpeta=IPDinamica
Clave=Version.IPDinamicaURL
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[IPDinamica.Version.IPDinamicaPrefijo]
Carpeta=IPDinamica
Clave=Version.IPDinamicaPrefijo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[IPDinamica.Version.IPDinamicaSufijo]
Carpeta=IPDinamica
Clave=Version.IPDinamicaSufijo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Version.RegHist]
Carpeta=Ficha
Clave=Version.RegHist
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=N
Tamano=40
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CfgRegHist]
Nombre=CfgRegHist
Boton=53
NombreDesplegar=Reg. &Hist
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CfgRegHist
Visible=S
EspacioPrevio=S
ActivoCondicion=Version:Version.RegHist

[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=BaseDatos
BaseDatos=Contrasena
Contrasena=Outlook
Outlook=ModuloCentral
ModuloCentral=SincroSSB
SincroSSB=IPDinamica
IPDinamica=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=CacheCola
CacheCola=Replica
Replica=ActivarSSB
ActivarSSB=Certificados
Certificados=Respaldo
Respaldo=CfgRegHist
CfgRegHist=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=Version.RedondeoMonetarios
Version.RedondeoMonetarios=Version.Peru
Version.Peru=Version.NomLimiteInferior2
Version.NomLimiteInferior2=Version.SituacionFinalAlRegresar
Version.SituacionFinalAlRegresar=Version.RegHist
Version.RegHist=Version.OutlookEstatusNuevo
Version.OutlookEstatusNuevo=Version.NombreCorreoEnLote
Version.NombreCorreoEnLote=Version.SincroSSBMismaInstancia
Version.SincroSSBMismaInstancia=Version.RutaCertificados
Version.RutaCertificados=Version.PuertoSSB
Version.PuertoSSB=Version.SincroSSB
Version.SincroSSB=Version.IPDinamica
Version.IPDinamica=Version.ModuloCentral
Version.ModuloCentral=(Fin)

[Contrasena.ListaEnCaptura]
(Inicio)=Version.ContrasenaTamanoMinimo
Version.ContrasenaTamanoMinimo=Version.ContrasenaRequiereAlfa
Version.ContrasenaRequiereAlfa=Version.ContrasenaRequiereNumeros
Version.ContrasenaRequiereNumeros=(Fin)

[Outlook.ListaEnCaptura]
(Inicio)=Version.OutlookMensajes
Version.OutlookMensajes=Version.OutlookCitas
Version.OutlookCitas=Version.OutlookTareas
Version.OutlookTareas=Version.OutlookTareasSincronizar
Version.OutlookTareasSincronizar=Version.OutlookActividadesSincronizar
Version.OutlookActividadesSincronizar=(Fin)

[ModuloCentral.ListaEnCaptura]
(Inicio)=Version.ModuloCentralURL
Version.ModuloCentralURL=Version.Desconectar
Version.Desconectar=Version.Reconectar
Version.Reconectar=Version.EstaDesconectado
Version.EstaDesconectado=Version.FechaDesconexion
Version.FechaDesconexion=Version.ReconexionUltimoIntento
Version.ReconexionUltimoIntento=Version.ReconexionFrecuencia
Version.ReconexionFrecuencia=Version.TamanoLoteProcesarCola
Version.TamanoLoteProcesarCola=Version.ConservarColaProcesada
Version.ConservarColaProcesada=Version.Replica
Version.Replica=Version.TamanoLoteProcesarReplica
Version.TamanoLoteProcesarReplica=Version.ConservarReplicaProcesada
Version.ConservarReplicaProcesada=(Fin)

[SincroSSB.ListaEnCaptura]
(Inicio)=Version.SincroSBBOkConservar
Version.SincroSBBOkConservar=Version.SincroSSBModoManual
Version.SincroSSBModoManual=Version.SincroContabilidadMatriz
Version.SincroContabilidadMatriz=Version.SincroSSBRecibirRespaldoMatriz
Version.SincroSSBRecibirRespaldoMatriz=Version.TRCL
Version.TRCL=(Fin)

[IPDinamica.ListaEnCaptura]
(Inicio)=Version.IPDinamicaURL
Version.IPDinamicaURL=Version.IPDinamicaPrefijo
Version.IPDinamicaPrefijo=Version.IPDinamicaSufijo
Version.IPDinamicaSufijo=(Fin)
