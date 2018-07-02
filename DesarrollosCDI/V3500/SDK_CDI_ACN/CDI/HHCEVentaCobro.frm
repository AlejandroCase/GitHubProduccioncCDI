
[Forma]
Clave=HHCEVentaCobro
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Cobro +<T> - <T>+Afectar.Mov
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEstadoInicial=Normal
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
Comentarios=Si<BR>  no Info.Cerrado<BR>Entonces<BR>  Si<BR>    Vacio(HHCEVentaCobro:HHCEVentaCobro.ID)<BR>  Entonces<BR>    Asigna(HHCEVentaCobro:HHCEVentaCobro.ID, Info.ID)<BR>    Si<BR>      no Info.VentaCobroDevolucion<BR>    Entonces<BR>      Asigna(Temp.Monetario, SQL(<T>spSugerirVentaCobroEfectivo :nID<T>, Afectar.ID))<BR>      Si(Temp.Monetario<0, Asigna(Temp.Monetario, 0.0))<BR>      Si((Temp.Monetario>Info.Importe) y (Info.Importe>0), Asigna(Temp.Monetario, Info.Importe))<BR>    Sino<BR>      Asigna(Temp.Monetario, 0.0)<BR>    Fin<BR>    Asigna(HHCEVentaCobro:HHCEVentaCobro.Importe1, Info.Importe-Temp.Monetario)<BR>  Fin<BR>  Si(Vacio(VentaCobro:VentaCobro.FormaCobro1), Asigna(VentaCobro:VentaCobro.FormaCobro1, Vacio(Usuario.DefFormaPago, Config.FormaCobroOmision)))<BR>  Asigna(HHCEVentaCobro:HHCEVentaCobro.CtaDinero, Usuario.DefCtaDinero)<BR>  Asigna(HHCEVentaCobro:HHCEVentaCobro.Cajero, Usuario.DefCajero)<BR>Fin<BR>Info.Moneda
PosicionInicialIzquierda=406
PosicionInicialArriba=319
PosicionInicialAlturaCliente=287
PosicionInicialAncho=468
ListaAcciones=(Lista)
[Lista]
Estilo=Ficha
Clave=Lista
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=HHCEVentaCobro
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
CarpetaVisible=S



Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General


ListaEnCaptura=(Lista)


FiltroGeneral=HHCEVentaCobro.ID = <T>{Info.ID}<T>
CondicionEdicion=(no Info.Cerrado) y (Vacio(HHCEVentaCobro:CE.Estatus, EstatusSinAfectar) en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))
[Lista.HHCEVentaCobro.Importe1]
Carpeta=Lista
Clave=HHCEVentaCobro.Importe1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Lista.HHCEVentaCobro.FormaCobro1]
Carpeta=Lista
Clave=HHCEVentaCobro.FormaCobro1
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Referencia1]
Carpeta=Lista
Clave=HHCEVentaCobro.Referencia1
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Importe2]
Carpeta=Lista
Clave=HHCEVentaCobro.Importe2
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=20
[Lista.HHCEVentaCobro.FormaCobro2]
Carpeta=Lista
Clave=HHCEVentaCobro.FormaCobro2
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Referencia2]
Carpeta=Lista
Clave=HHCEVentaCobro.Referencia2
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Importe3]
Carpeta=Lista
Clave=HHCEVentaCobro.Importe3
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=20
[Lista.HHCEVentaCobro.FormaCobro3]
Carpeta=Lista
Clave=HHCEVentaCobro.FormaCobro3
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Referencia3]
Carpeta=Lista
Clave=HHCEVentaCobro.Referencia3
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Importe4]
Carpeta=Lista
Clave=HHCEVentaCobro.Importe4
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=20
[Lista.HHCEVentaCobro.FormaCobro4]
Carpeta=Lista
Clave=HHCEVentaCobro.FormaCobro4
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Referencia4]
Carpeta=Lista
Clave=HHCEVentaCobro.Referencia4
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Importe5]
Carpeta=Lista
Clave=HHCEVentaCobro.Importe5
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=20
[Lista.HHCEVentaCobro.FormaCobro5]
Carpeta=Lista
Clave=HHCEVentaCobro.FormaCobro5
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Referencia5]
Carpeta=Lista
Clave=HHCEVentaCobro.Referencia5
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco

















[Lista.HHCEVentaCobro.CtaDinero]
Carpeta=Lista
Clave=HHCEVentaCobro.CtaDinero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[Lista.HHCEVentaCobro.Cajero]
Carpeta=Lista
Clave=HHCEVentaCobro.Cajero
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco








[Lista.Total]
Carpeta=Lista
Clave=Total
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Lista.Pendiente]
Carpeta=Lista
Clave=Pendiente
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Rojo obscuro
Efectos=[Negritas]




Editar=S
[Lista.CambioPendiente]
Carpeta=Lista
Clave=CambioPendiente
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Verde
Efectos=[Negritas]








[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Visible=S




ActivoCondicion=(no Info.Cerrado) y (Vacio(HHCEVentaCobro:CE.Estatus, EstatusSinAfectar) en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))
[Acciones.Afectar]
Nombre=Afectar
Boton=7
NombreEnBoton=S
NombreDesplegar=<T>&Afectar<T>
Multiple=S
EnBarraHerramientas=S
Visible=S















ListaAccionesMultiples=(Lista)


ActivoCondicion=(no Info.Cerrado) y (Vacio(HHCEVentaCobro:CE.Estatus, EstatusSinAfectar) en (EstatusSinAfectar, EstatusPorConfirmar, EstatusBorrador))
[Acciones.Afectar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S



ConCondicion=S
EjecucionConError=S











Expresion=Asigna(HHCEVentaCobro:HHCEVentaCobro.Actualizado, Falso)<BR>Asigna(HHCEVentaCobro:HHCEVentaCobro.Cambio, HHCEVentaCobro:CambioPendiente)<BR>GuardarCambios<BR><BR>Si(Usuario.AbrirCajon, Cajon.Abrir)<BR>Afectar(Afectar.Modulo, Afectar.ID, Afectar.Mov, Afectar.MovID, Afectar.Base, <T><T>, <T>CE<T>)
EjecucionCondicion=SQL(<T>SELECT Estatus FROM CE WHERE ID=<T>+Info.ID) en (EstatusSinAfectar)
EjecucionMensaje=<T>El Movimiento Ya Fué Afectado por Otro Usuario<T>
[Acciones.Afectar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=(Fin)

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
Multiple=S
EnBarraHerramientas=S
Visible=S




ListaAccionesMultiples=(Lista)
ActivoCondicion=(no Info.Cerrado) y (Vacio(HHCEVentaCobro:CE.Estatus, EstatusSinAfectar) en (EstatusSinAfectar))

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

[Acciones.Cancelar.ListaAccionesMultiples]
(Inicio)=Cancelar Cambios
Cancelar Cambios=Cancelar
Cancelar=(Fin)







[Acciones.Afectar.ListaAccionesMultiples]
(Inicio)=Expresion
Expresion=Cerrar
Cerrar=(Fin)


[Lista.ListaEnCaptura]
(Inicio)=HHCEVentaCobro.Importe1
HHCEVentaCobro.Importe1=HHCEVentaCobro.FormaCobro1
HHCEVentaCobro.FormaCobro1=HHCEVentaCobro.Referencia1
HHCEVentaCobro.Referencia1=HHCEVentaCobro.Importe2
HHCEVentaCobro.Importe2=HHCEVentaCobro.FormaCobro2
HHCEVentaCobro.FormaCobro2=HHCEVentaCobro.Referencia2
HHCEVentaCobro.Referencia2=HHCEVentaCobro.Importe3
HHCEVentaCobro.Importe3=HHCEVentaCobro.FormaCobro3
HHCEVentaCobro.FormaCobro3=HHCEVentaCobro.Referencia3
HHCEVentaCobro.Referencia3=HHCEVentaCobro.Importe4
HHCEVentaCobro.Importe4=HHCEVentaCobro.FormaCobro4
HHCEVentaCobro.FormaCobro4=HHCEVentaCobro.Referencia4
HHCEVentaCobro.Referencia4=HHCEVentaCobro.Importe5
HHCEVentaCobro.Importe5=HHCEVentaCobro.FormaCobro5
HHCEVentaCobro.FormaCobro5=HHCEVentaCobro.Referencia5
HHCEVentaCobro.Referencia5=HHCEVentaCobro.CtaDinero
HHCEVentaCobro.CtaDinero=HHCEVentaCobro.Cajero
HHCEVentaCobro.Cajero=Total
Total=Pendiente
Pendiente=CambioPendiente
CambioPendiente=(Fin)

[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Afectar
Afectar=Cancelar
Cancelar=(Fin)
