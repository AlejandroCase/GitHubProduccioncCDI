[Forma]
Clave=VentaCobro
Nombre=Si(Info.VentaCobroDevolucion, <T>Devolución<T>,<T>Cobro<T>)+<T> - <T>+Afectar.Mov
Icono=0
Modulos=(Todos)
ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
PosicionInicialAltura=333
PosicionInicialAncho=469
PosicionInicialIzquierda=725
PosicionInicialArriba=407
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSeccion1=78
Comentarios=Si<BR>  no Info.Cerrado<BR>Entonces<BR>  Si<BR>    Vacio(VentaCobro:VentaCobro.ID)<BR>  Entonces<BR>    Asigna(VentaCobro:VentaCobro.ID, Info.ID)<BR>    Si<BR>      no Info.VentaCobroDevolucion<BR>    Entonces<BR>      Asigna(Temp.Monetario, SQL(<T>spSugerirVentaCobroEfectivo :nID<T>, Afectar.ID))<BR>      Si(Temp.Monetario<0, Asigna(Temp.Monetario, 0.0))<BR>      Si((Temp.Monetario>Info.Importe) y (Info.Importe>0), Asigna(Temp.Monetario, Info.Importe)) <BR>      Si<BR>        Temp.Monetario>0.0<BR>      Entonces<BR>        Si <BR>          Confirmacion(<T>Desea Utilizar <T>+MonetarioEnTexto(Temp.Monetario)+<T> del Saldo a Favor<T>, BotonSi, BotonNo) = BotonSi<BR>        Entonces<BR>          Si(Temp.Monetario>0, Asigna(VentaCobro:VentaCobro.DelEfectivo, Temp.Monetario))<BR>        Sino<BR>          Asigna(Temp.Monetario, 0.0)     <BR>        Fin<BR>      Fin<BR>    Sino<BR>      Asigna(Temp.Monetario, 0.0)<BR>    Fin<BR>    Asigna(VentaCobro:VentaCobro.Importe1, Info.Importe-Temp.Monetario+VentaCobro:VentaCobro.Redondeo)<BR>  Fin<BR>  Si(Vacio(Info.FormaPagoTipo), Asigna(VentaCobro:VentaCobro.FormaCobro1, Vacio(Usuario.DefFormaPago, Config.FormaCobroOmision)))<BR>  Asigna(VentaCobro:VentaCobro.CtaDinero, Usuario.DefCtaDinero)<BR>  Asigna(VentaCobro:VentaCobro.Cajero, Usuario.DefCajero)<BR>Fin<BR>Info.Moneda
Menus=S
PosicionInicialAlturaCliente=349
ExpresionesAlMostrar=Asigna(Info.FormaPagoTipo, SQL(<T>SELECT FormaPagoTipo FROM Venta WHERE ID=:nID<T>, Info.ID))
MenuPrincipal=(Lista)

[Documentos.VentaCobro.Mov1]
Carpeta=Documentos
Clave=VentaCobro.Mov1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20

[Documentos.VentaCobro.MovID1]
Carpeta=Documentos
Clave=VentaCobro.MovID1
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=10
Pegado=N

[Documentos.VentaCobro.MovImporte1]
Carpeta=Documentos
Clave=VentaCobro.MovImporte1
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20

[Documentos.VentaCobro.Mov2]
Carpeta=Documentos
Clave=VentaCobro.Mov2
Editar=S
LineaNueva=S
3D=S
Tamano=20

[Documentos.VentaCobro.MovID2]
Carpeta=Documentos
Clave=VentaCobro.MovID2
Editar=S
3D=S
Tamano=10

[Documentos.VentaCobro.MovImporte2]
Carpeta=Documentos
Clave=VentaCobro.MovImporte2
Editar=S
3D=S
Tamano=20

[Documentos.VentaCobro.Mov3]
Carpeta=Documentos
Clave=VentaCobro.Mov3
Editar=S
LineaNueva=S
3D=S
Tamano=20

[Documentos.VentaCobro.MovID3]
Carpeta=Documentos
Clave=VentaCobro.MovID3
Editar=S
3D=S
Tamano=10

[Documentos.VentaCobro.MovImporte3]
Carpeta=Documentos
Clave=VentaCobro.MovImporte3
Editar=S
3D=S
Tamano=20

[Documentos.VentaCobro.Mov4]
Carpeta=Documentos
Clave=VentaCobro.Mov4
Editar=S
LineaNueva=S
3D=S
Tamano=20

[Documentos.VentaCobro.MovID4]
Carpeta=Documentos
Clave=VentaCobro.MovID4
Editar=S
3D=S
Tamano=10

[Documentos.VentaCobro.MovImporte4]
Carpeta=Documentos
Clave=VentaCobro.MovImporte4
Editar=S
3D=S
Tamano=20

[Documentos.VentaCobro.Mov5]
Carpeta=Documentos
Clave=VentaCobro.Mov5
Editar=S
LineaNueva=S
3D=S
Tamano=20

[Documentos.VentaCobro.MovID5]
Carpeta=Documentos
Clave=VentaCobro.MovID5
Editar=S
3D=S
Tamano=10

[Documentos.VentaCobro.MovImporte5]
Carpeta=Documentos
Clave=VentaCobro.MovImporte5
Editar=S
3D=S
Tamano=20

[Acciones.Cancelar.Cancelar Cambios]
Nombre=Cancelar Cambios
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Cancelar Cambios
Activo=S
Visible=S

[Acciones.Cancelar.Cancelar]
Nombre=Cancelar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreDesplegar=<T>&Cancelar<T>
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=Cancelar Cambios<BR>Cancelar
Visible=S
NombreEnBoton=S
Menu=&Archivo
EnMenu=S
ActivoCondicion=(no Info.Cerrado) y (Vacio(VentaCobro:Venta.Estatus, EstatusSinAfectar) en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))

[Totales.Pendiente]
Carpeta=Totales
Clave=Pendiente
Editar=S
ValidaNombre=S
3D=S
Tamano=21
ColorFondo=Plata
ColorFuente=Rojo obscuro
Efectos=[Negritas]

[Totales.TotalLiquidado]
Carpeta=Totales
Clave=TotalLiquidado
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Totales.CambioPendiente]
Carpeta=Totales
Clave=CambioPendiente
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=$00808040
Efectos=[Negritas]

[Acciones.Afectar]
Nombre=Afectar
Boton=7
NombreDesplegar=<T>&Afectar<T>
EnBarraHerramientas=S
TipoAccion=Ventana
Visible=S
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F12
EnMenu=S
ClaveAccion=Cerrar
NombreEnBoton=S
EspacioPrevio=S
Multiple=S
ListaAccionesMultiples=Expresion<BR>Cerrar
ActivoCondicion=(no Info.Cerrado) y (Vacio(VentaCobro:Venta.Estatus, EstatusSinAfectar) en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)) y (no Usuario.BloquearCobroInmediato)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=Cerra&r
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Ficha]
Estilo=Ficha
PestanaNombre=Efectivo
Clave=Ficha
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=VentaCobro
Fuente={MS Sans Serif, 8, Negro, []}
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
FiltroPredefinido=S
FiltroAncho=30
FiltroEnOrden=S
FiltroTodoNombre=Todo
FiltroNullNombre=(sin clasificar)
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
CondicionEdicion=(no Info.Cerrado) y (Vacio(VentaCobro:Venta.Estatus, EstatusSinAfectar) en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))
FiltroGeneral=VentaCobro.ID = {Info.ID}

[Ficha.VentaCobro.DelEfectivo]
Carpeta=Ficha
Clave=VentaCobro.DelEfectivo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
EspacioPrevio=S
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Importe1]
Carpeta=Ficha
Clave=VentaCobro.Importe1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.FormaCobro1]
Carpeta=Ficha
Clave=VentaCobro.FormaCobro1
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Referencia1]
Carpeta=Ficha
Clave=VentaCobro.Referencia1
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Importe2]
Carpeta=Ficha
Clave=VentaCobro.Importe2
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.FormaCobro2]
Carpeta=Ficha
Clave=VentaCobro.FormaCobro2
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Referencia2]
Carpeta=Ficha
Clave=VentaCobro.Referencia2
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Importe3]
Carpeta=Ficha
Clave=VentaCobro.Importe3
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.FormaCobro3]
Carpeta=Ficha
Clave=VentaCobro.FormaCobro3
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Referencia3]
Carpeta=Ficha
Clave=VentaCobro.Referencia3
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Importe4]
Carpeta=Ficha
Clave=VentaCobro.Importe4
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.FormaCobro4]
Carpeta=Ficha
Clave=VentaCobro.FormaCobro4
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Referencia4]
Carpeta=Ficha
Clave=VentaCobro.Referencia4
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Importe5]
Carpeta=Ficha
Clave=VentaCobro.Importe5
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.FormaCobro5]
Carpeta=Ficha
Clave=VentaCobro.FormaCobro5
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Referencia5]
Carpeta=Ficha
Clave=VentaCobro.Referencia5
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Pendiente]
Carpeta=Ficha
Clave=Pendiente
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Rojo obscuro
Efectos=[Negritas]
LineaNueva=N
EspacioPrevio=N

[Ficha.CambioPendiente]
Carpeta=Ficha
Clave=CambioPendiente
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=$00808040
Efectos=[Negritas]

[Ficha.Total]
Carpeta=Ficha
Clave=Total
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]
EspacioPrevio=S
ColorFuente=Negro

[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Visible=S
ActivoCondicion=(no Info.Cerrado) y (Vacio(VentaCobro:Venta.Estatus, EstatusSinAfectar) en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))

[Acciones.Vales]
Nombre=Vales
Boton=96
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+L
NombreDesplegar=Va&les
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
Antes=S
Visible=S
NombreEnBoton=S
GuardarAntes=S
DespuesGuardar=S
ClaveAccion=Actualizar Forma
ActivoCondicion=(Info.Importe>0) y (no Info.VentaCobroDevolucion)
AntesExpresiones=Asigna(Info.Modulo, <T>VTAS<T>)<BR>Asigna(Info.Mov, Afectar.Mov)<BR>Asigna(Info.MovID, Afectar.MovID)<BR>Si(Info.Cerrado, Forma(<T>ValeSerieMovInfo<T>), Forma(<T>ValeSerieMov<T>))

[Ficha.VentaCobro.CtaDinero]
Carpeta=Ficha
Clave=VentaCobro.CtaDinero
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Cajero]
Carpeta=Ficha
Clave=VentaCobro.Cajero
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Condicion]
Carpeta=Ficha
Clave=VentaCobro.Condicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.VentaCobro.Vencimiento]
Carpeta=Ficha
Clave=VentaCobro.Vencimiento
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
Editar=S

[Acciones.Afectar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S
ConCondicion=S
EjecucionConError=S
Expresion=Asigna(VentaCobro:VentaCobro.Actualizado, Falso)<BR>GuardarCambios <BR><BR>Si<BR>  Empresa.CFD y SQL(<T>SELECT CFD FROM MovTipo WHERE Modulo=:tModulo AND Mov=:tMov<T>, Afectar.Modulo, Afectar.Mov)<BR>Entonces<BR>  EjecutarSQL(<T>spAfectar :tModulo, :nID, :tAccion<T>, Afectar.Modulo, Afectar.ID, <T>CONSECUTIVO<T>)<BR>  Si(no CFD.Generar(Afectar.Modulo, Afectar.ID), AbortarOperacion)<BR>  Asigna(Afectar.EnviarCFD, SQL(<T>SELECT EnviarAlAfectar FROM EmpresaCFD WHERE Empresa=:tEmpresa<T>, Empresa))<BR>Fin<BR><BR>Si(Usuario.AbrirCajon,Cajon.Abrir)<BR>Afectar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, <T>Todo<T>, <T><T>, <T>Venta<T>)<BR><BR>Si <BR>  Afectar.EnviarCFD<BR>Entonces<BR>  CFD.Enviar(Afectar.Modulo, Afectar.ID)<BR>Fin
EjecucionCondicion=SQL(<T>SELECT Estatus FROM Venta WHERE ID=<T>+Info.ID) en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador)
EjecucionMensaje=<T>El Movimiento Ya Fué Afectado por Otro Usuario<T>

[Acciones.Afectar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Tarjetas]
Nombre=Tarjetas
Boton=96
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=Tar&jetas
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Antes=S
Visible=S
GuardarAntes=S
DespuesGuardar=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+K
Activo=S
AntesExpresiones=Asigna(Info.Modulo, <T>VTAS<T>)<BR>Asigna(Info.Mov, Afectar.Mov)<BR>Asigna(Info.MovID, Afectar.MovID)<BR>Si(Info.Cerrado, Forma(<T>TarjetaSerieMovInfo<T>), Forma(<T>TarjetaSerieMov<T>))

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Afectar
Afectar=Cancelar
Cancelar=Cerrar
Cerrar=Vales
Vales=Tarjetas
Tarjetas=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=(Fin)

[Ficha.ListaEnCaptura]
(Inicio)=VentaCobro.Importe1
VentaCobro.Importe1=VentaCobro.FormaCobro1
VentaCobro.FormaCobro1=VentaCobro.Referencia1
VentaCobro.Referencia1=VentaCobro.Importe2
VentaCobro.Importe2=VentaCobro.FormaCobro2
VentaCobro.FormaCobro2=VentaCobro.Referencia2
VentaCobro.Referencia2=VentaCobro.Importe3
VentaCobro.Importe3=VentaCobro.FormaCobro3
VentaCobro.FormaCobro3=VentaCobro.Referencia3
VentaCobro.Referencia3=VentaCobro.Importe4
VentaCobro.Importe4=VentaCobro.FormaCobro4
VentaCobro.FormaCobro4=VentaCobro.Referencia4
VentaCobro.Referencia4=VentaCobro.Importe5
VentaCobro.Importe5=VentaCobro.FormaCobro5
VentaCobro.FormaCobro5=VentaCobro.Referencia5
VentaCobro.Referencia5=VentaCobro.DelEfectivo
VentaCobro.DelEfectivo=VentaCobro.CtaDinero
VentaCobro.CtaDinero=VentaCobro.Cajero
VentaCobro.Cajero=VentaCobro.Condicion
VentaCobro.Condicion=VentaCobro.Vencimiento
VentaCobro.Vencimiento=Total
Total=Pendiente
Pendiente=CambioPendiente
CambioPendiente=(Fin)
