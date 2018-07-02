
[Forma]
Clave=CDIJornadaNva
Icono=0
CarpetaPrincipal=CDIJornadaNva
Modulos=(Todos)
Nombre=Jornada

ListaCarpetas=(Lista)
PosicionInicialAlturaCliente=430
PosicionInicialAncho=693
PosicionInicialIzquierda=264
PosicionInicialArriba=155
AccionesTamanoBoton=15x5
AccionesDerecha=S
BarraHerramientas=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
AutoGuardar=S
VentanaEscCerrar=S
ExpresionesAlMostrar=asigna(info.usuario,usuario)
[CDIJornadaNva]
Estilo=Hoja
Pestana=S
Clave=CDIJornadaNva
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIJornadaNva
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

PermiteEditar=S
PestanaOtroNombre=S
PestanaNombre=Lista
GuardarPorRegistro=S
GuardarAlSalir=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIJornadaNva.Usuario=<T>{Info.Usuario}<T>
[CDIJornadaNva.CDIJornadaNva.Jornada]
Carpeta=CDIJornadaNva
Clave=CDIJornadaNva.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIJornadaNva.CDIJornadaNva.Tipo]
Carpeta=CDIJornadaNva
Clave=CDIJornadaNva.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDIJornadaNva.CDIJornadaNva.HorasPromedio]
Carpeta=CDIJornadaNva
Clave=CDIJornadaNva.HorasPromedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIJornadaNva.CDIJornadaNva.FactorAusentismo]
Carpeta=CDIJornadaNva
Clave=CDIJornadaNva.FactorAusentismo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIJornadaNva.CDIJornadaNva.TipoJornada]
Carpeta=CDIJornadaNva
Clave=CDIJornadaNva.TipoJornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=2
ColorFondo=Blanco

[CDIJornadaNva.Columnas]
Jornada=230
Tipo=124
HorasPromedio=88
FactorAusentismo=108
TipoJornada=69


[CDIDetalle]
Estilo=Ficha
Pestana=S
Clave=CDIDetalle
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIJornadaNva
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

PermiteEditar=S
PestanaOtroNombre=S
PestanaNombre=Detalle
GuardarPorRegistro=S
GuardarAlSalir=S
Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIJornadaNva:CDIJornadaNva.Jornada=<T>{Info.Jornada}<T> y CDIJornadaNva:CDIJornadaNva.Usuario=<T>{Info.Usuario}<T>
[CDIDetalle.CDIJornadaNva.Jornada]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Jornada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

Efectos=[Negritas]
[CDIDetalle.CDIJornadaNva.Tipo]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Tipo
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=31
ColorFondo=Blanco

Efectos=[Negritas]
[CDIDetalle.CDIJornadaNva.Domingo]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Domingo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=9
[CDIDetalle.CDIJornadaNva.Lunes]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Lunes
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco

Pegado=N
Tamano=9
[CDIDetalle.CDIJornadaNva.Martes]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Martes
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=9
[CDIDetalle.CDIJornadaNva.Miercoles]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Miercoles
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=9
[CDIDetalle.CDIJornadaNva.Jueves]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Jueves
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=9
[CDIDetalle.CDIJornadaNva.Viernes]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Viernes
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=9
[CDIDetalle.CDIJornadaNva.Sabado]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.Sabado
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco






















Tamano=9


[CDIDetalle.CDIJornadaNva.HorasPromedio]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.HorasPromedio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.HorasSemana]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.HorasSemana
Editar=N
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.HorasComida]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.HorasComida
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.FactorAusentismo]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.FactorAusentismo
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco





[CDIDetalle.CDIJornadaNva.DescansoRompeRutina]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.DescansoRompeRutina
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=30
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.DescansaFestivos]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.DescansaFestivos
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.FestivoRompeRutina]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.FestivoRompeRutina
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.JornadaReducida]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.JornadaReducida
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=S
Tamano=15
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.EsRotativa]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.EsRotativa
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.EsNocturna]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.EsNocturna
Editar=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.ToleranciaEntrada]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.ToleranciaEntrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[CDIDetalle.CDIJornadaNva.ToleranciaSalida]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.ToleranciaSalida
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco



[CDIDetalle.CDIJornadaNva.TipoJornada]
Carpeta=CDIDetalle
Clave=CDIJornadaNva.TipoJornada
Editar=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

































[CDIJornadaNva2.CDIJornadaNva2.Dia]
Carpeta=CDIJornadaNva2
Clave=CDIJornadaNva2.Dia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIJornadaNva2.CDIJornadaNva2.Entrada]
Carpeta=CDIJornadaNva2
Clave=CDIJornadaNva2.Entrada
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[CDIJornadaNva2.CDIJornadaNva2.Salida]
Carpeta=CDIJornadaNva2
Clave=CDIJornadaNva2.Salida
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco


[CDIJornadaNva2.Columnas]
Jornada=124
Dia=64
Entrada=95
Salida=96








[ListaTipoJornadaSAT.Columnas]
Clave=31
Descripcion=304







[CDIJornadaNva2.CDIJornadaNva2.Jornada]
Carpeta=CDIJornadaNva2
Clave=CDIJornadaNva2.Jornada
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Editar=S





[CDIJornadaNva2.ListaEnCaptura]
(Inicio)=CDIJornadaNva2.Jornada
CDIJornadaNva2.Jornada=CDIJornadaNva2.Dia
CDIJornadaNva2.Dia=CDIJornadaNva2.Entrada
CDIJornadaNva2.Entrada=CDIJornadaNva2.Salida
CDIJornadaNva2.Salida=(Fin)














[Acciones.RutinaDiaria]
Nombre=RutinaDiaria
Boton=76
NombreDesplegar=&Rutina Diaria
EnBarraHerramientas=S
Visible=S



NombreEnBoton=S
TipoAccion=formas
ClaveAccion=CDIJornadaNva2
ConCondicion=S
Antes=S





















GuardarConfirmar=S
EjecucionConError=S





























EspacioPrevio=S
ActivoCondicion=CDIJornadaNva:CDIJornadaNva.Tipo=<T>Control Asistencia<T>
EjecucionCondicion=ConDatos(CDIJornadaNva:CDIJornadaNva.Jornada)
AntesExpresiones=asigna(Info.jornada,CDIJornadaNva:CDIJornadaNva.Jornada)
[Acciones.Limpiar]
Nombre=Limpiar
Boton=1
NombreEnBoton=S
NombreDesplegar=&Limpiar Jornada
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S
Visible=S































DocNuevo=S

























Expresion=EjecutarSQL( <T>exec CDIEliminarJornadaTemporal<T> )
[CDIJornadaNva.ListaEnCaptura]
(Inicio)=CDIJornadaNva.Jornada
CDIJornadaNva.Jornada=CDIJornadaNva.Tipo
CDIJornadaNva.Tipo=CDIJornadaNva.HorasPromedio
CDIJornadaNva.HorasPromedio=CDIJornadaNva.FactorAusentismo
CDIJornadaNva.FactorAusentismo=CDIJornadaNva.TipoJornada
CDIJornadaNva.TipoJornada=(Fin)













[CDIDetalle.ListaEnCaptura]
(Inicio)=CDIJornadaNva.Jornada
CDIJornadaNva.Jornada=CDIJornadaNva.Tipo
CDIJornadaNva.Tipo=CDIJornadaNva.HorasPromedio
CDIJornadaNva.HorasPromedio=CDIJornadaNva.HorasSemana
CDIJornadaNva.HorasSemana=CDIJornadaNva.HorasComida
CDIJornadaNva.HorasComida=CDIJornadaNva.FactorAusentismo
CDIJornadaNva.FactorAusentismo=CDIJornadaNva.Domingo
CDIJornadaNva.Domingo=CDIJornadaNva.Lunes
CDIJornadaNva.Lunes=CDIJornadaNva.Martes
CDIJornadaNva.Martes=CDIJornadaNva.Miercoles
CDIJornadaNva.Miercoles=CDIJornadaNva.Jueves
CDIJornadaNva.Jueves=CDIJornadaNva.Viernes
CDIJornadaNva.Viernes=CDIJornadaNva.Sabado
CDIJornadaNva.Sabado=CDIJornadaNva.DescansoRompeRutina
CDIJornadaNva.DescansoRompeRutina=CDIJornadaNva.DescansaFestivos
CDIJornadaNva.DescansaFestivos=CDIJornadaNva.FestivoRompeRutina
CDIJornadaNva.FestivoRompeRutina=CDIJornadaNva.JornadaReducida
CDIJornadaNva.JornadaReducida=CDIJornadaNva.EsRotativa
CDIJornadaNva.EsRotativa=CDIJornadaNva.EsNocturna
CDIJornadaNva.EsNocturna=CDIJornadaNva.ToleranciaEntrada
CDIJornadaNva.ToleranciaEntrada=CDIJornadaNva.ToleranciaSalida
CDIJornadaNva.ToleranciaSalida=CDIJornadaNva.TipoJornada
CDIJornadaNva.TipoJornada=(Fin)

















































[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S



GuardarAntes=S
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S























































































[Acciones.Guardar.Guardar]
Nombre=Guardar
Boton=0
TipoAccion=controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S


[Acciones.Guardar.ListaAccionesMultiples]
(Inicio)=expre
expre=Guardar
Guardar=(Fin)







































[Forma.ListaCarpetas]
(Inicio)=CDIJornadaNva
CDIJornadaNva=CDIDetalle
CDIDetalle=(Fin)

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Guardar
Guardar=RutinaDiaria
RutinaDiaria=Limpiar
Limpiar=(Fin)
