
[Forma]
Clave=CDIPresupuestoAnoSig
Icono=35
Modulos=(Todos)
Nombre=Asistente Presupuesto Año Siguiente
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Normal

ListaCarpetas=Detalle
CarpetaPrincipal=Detalle
PosicionInicialIzquierda=327
PosicionInicialArriba=273
PosicionInicialAlturaCliente=227
PosicionInicialAncho=625
ListaAcciones=(Lista)
BarraHerramientas=S
[Detalle]
Estilo=Ficha
Clave=Detalle
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPresupuestoAnoSig
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
Filtros=S
PermiteEditar=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=CDIPresupuestoAnoSig.Empresa = <T>{Empresa}<T>
[Detalle.CDIPresupuestoAnoSig.Ejercicio]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.Ejercicio
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

Efectos=[Negritas]
Pegado=N
[Detalle.CDIPresupuestoAnoSig.Proyecto]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.Proyecto
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

Pegado=N
LineaNueva=S
[Detalle.CDIPresupuestoAnoSig.Moderado]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.Moderado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


[Detalle.CDIPresupuestoAnoSig.Optimista]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.Optimista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Detalle.CDIPresupuestoAnoSig.PorcentajeANivel]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.PorcentajeANivel
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

LineaNueva=S
[Detalle.CDIPresupuestoAnoSig.Pesimista]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.Pesimista
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Detalle.CDIPresupuestoAnoSig.InflacionAnual]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.InflacionAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Detalle.CDIPresupuestoAnoSig.Metodo]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.Metodo
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco


LineaNueva=N
Pegado=N
[Lista.Columnas]
0=135
1=192
UEN=44
Nombre=269


[Detalle.CDIPresupuestoAnoSig.Mov]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.Mov
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco







Efectos=[Negritas]

Pegado=N
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Aceptar
GuardarAntes=S
EnBarraHerramientas=S
Activo=S
Visible=S

TipoAccion=Expresion
Expresion=Asigna( Info.Numero,  0 )<BR>Asigna( Info.ID,  0 )<BR>Asigna( Info.Mensaje, <T><T>)<BR><BR>Asigna( Info.Numero,  SQL( <T>EXEC spCDIPresupuestoAnoSiguiente :tEmp1, :nSuc1, :tUsu1, :nEst<T>,  Empresa,  Sucursal,  Usuario,  EstacionTrabajo ))<BR><BR>Si<BR>  Info.Numero = 0<BR>Entonces<BR>  Asigna( Info.ID,       SQL( <T>SELECT MAX(ID) FROM CP WHERE Empresa =:tEmp1 AND Mov =:tMov1 AND Sucursal =:nSuc1 AND Usuario =:tUsu1 AND Proyecto =:tProy1<T> , Empresa, CDIPresupuestoAnoSig:CDIPresupuestoAnoSig.Mov, Sucursal,  Usuario, CDIPresupuestoAnoSig:CDIPresupuestoAnoSig.Proyecto))<BR>  Asigna( Info.Mensaje,  SQL( <T>SELECT MovID   FROM CP WHERE Empresa =:tEmp1 AND ID  =:nID1<T> , Empresa, Info.ID))<BR>  Informacion(<T>Se Genero Movimiento <T> + CDIPresupuestoAnoSig:CDIPresupuestoAnoSig.Mov + <T>  <T> +  Info.Mensaje + <T>  Correctamente...<T>)<BR>  Si<BR>    ConDatos( Info.Mensaje )<BR>  Entonces<BR>    EjecutarSQL( <T>EXEC spCDIPresupuestoAnoSigDelete :tEmp1<T>,  Empresa)<BR>  Fin<BR>Sino<BR>  Asigna( Info.Mensaje,  SQL( <T>SELECT Descripcion FROM MensajeLista WHERE Mensaje =:nMensaje1<T> , Info.Numero) )<BR>  Precaucion( Info.Mensaje )<BR>Fin<BR><BR>ActualizarVista
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S





















[Detalle.CDIPresupuestoAnoSig.FechaEmision]
Carpeta=Detalle
Clave=CDIPresupuestoAnoSig.FechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco












[Detalle.ListaEnCaptura]
(Inicio)=CDIPresupuestoAnoSig.FechaEmision
CDIPresupuestoAnoSig.FechaEmision=CDIPresupuestoAnoSig.Ejercicio
CDIPresupuestoAnoSig.Ejercicio=CDIPresupuestoAnoSig.Proyecto
CDIPresupuestoAnoSig.Proyecto=CDIPresupuestoAnoSig.Mov
CDIPresupuestoAnoSig.Mov=CDIPresupuestoAnoSig.PorcentajeANivel
CDIPresupuestoAnoSig.PorcentajeANivel=CDIPresupuestoAnoSig.Metodo
CDIPresupuestoAnoSig.Metodo=CDIPresupuestoAnoSig.Moderado
CDIPresupuestoAnoSig.Moderado=CDIPresupuestoAnoSig.Optimista
CDIPresupuestoAnoSig.Optimista=CDIPresupuestoAnoSig.Pesimista
CDIPresupuestoAnoSig.Pesimista=CDIPresupuestoAnoSig.InflacionAnual
CDIPresupuestoAnoSig.InflacionAnual=(Fin)





























































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
