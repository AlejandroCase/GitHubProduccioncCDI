
[Forma]
Clave=CDIInfoCP
Icono=23
Modulos=(Todos)
Nombre=Información Presupuestal

ListaCarpetas=(Lista)
CarpetaPrincipal=CDICPCalNeto
PosicionInicialAlturaCliente=481
PosicionInicialAncho=1085
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=140
PosicionInicialArriba=124
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionCol1=406
ListaAcciones=Cerrar

[Ficha.Proy.Proyecto]
Carpeta=Ficha
Clave=Proy.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro


Efectos=[Negritas]
[Ficha.Proy.Rama]
Carpeta=Ficha
Clave=Proy.Rama
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.Descripcion]
Carpeta=Ficha
Clave=Proy.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.Observaciones]
Carpeta=Ficha
Clave=Proy.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.Categoria]
Carpeta=Ficha
Clave=Proy.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.ContactoTipo]
Carpeta=Ficha
Clave=Proy.ContactoTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Contacto]
Carpeta=Ficha
Clave=Contacto
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.ContactoNombre]
Carpeta=Ficha
Clave=ContactoNombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.FechaInicio]
Carpeta=Ficha
Clave=Proy.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.FechaInicioReal]
Carpeta=Ficha
Clave=Proy.FechaInicioReal
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.FechaFin]
Carpeta=Ficha
Clave=Proy.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.FechaFinReal]
Carpeta=Ficha
Clave=Proy.FechaFinReal
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.Tipo]
Carpeta=Ficha
Clave=Proy.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro

Efectos=[Negritas]
[Ficha.Proy.Estatus]
Carpeta=Ficha
Clave=Proy.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Plata
ColorFuente=Negro









Efectos=[Negritas]











[CPNeto.Columnas]
ClavePresupuestal=132
Presupuesto=64
Comprometido=73
Comprometido2=79
Devengado=64
Devengado2=65
Ejercido=64
EjercidoPagado=78
Sobrante=64
Disponible=64







0=155
1=77
2=94
3=-2
4=-2
5=-2
6=73
7=92
8=105
9=101
10=97




11=-2


[CPCalNeto.Columnas]
0=157
1=52
2=79
3=79




4=71
5=68
6=68
7=70
8=70
9=72
10=-2
11=70
12=68
13=70
14=-2
[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S










[CpCalNetoMensual.Columnas]
0=212
1=65
2=132
3=118
4=132
5=120
6=-2
7=129
8=92
9=81
10=164


















11=-2


[Acciones.CPMovMensula.Asignacion]
Nombre=Asignacion
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.CPMovMensula.AsignarVar]
Nombre=AsignarVar
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Asigna( Info.ABC,     CDICPCalNetoMensual:ClavePresupuestal )<BR>Asigna( Info.Periodo, CDICPCalNetoMensual:Periodo )

[Acciones.CPMovMensula.Forma]
Nombre=Forma
Boton=0
TipoAccion=Formas
ClaveAccion=CPMovMensual
Activo=S
Visible=S







[Ficha.ListaEnCaptura]
(Inicio)=Proy.Proyecto
Proy.Proyecto=Proy.Rama
Proy.Rama=Proy.Descripcion
Proy.Descripcion=Proy.Observaciones
Proy.Observaciones=Proy.Categoria
Proy.Categoria=Proy.ContactoTipo
Proy.ContactoTipo=Contacto
Contacto=ContactoNombre
ContactoNombre=Proy.FechaInicio
Proy.FechaInicio=Proy.FechaInicioReal
Proy.FechaInicioReal=Proy.FechaFin
Proy.FechaFin=Proy.FechaFinReal
Proy.FechaFinReal=Proy.Tipo
Proy.Tipo=Proy.Estatus
Proy.Estatus=(Fin)



[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=&Excel
EnMenu=S
Carpeta=CPNeto
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S




[Acciones.Excel2]
Nombre=Excel2
Boton=0
NombreDesplegar=Excel
EnMenu=S
Carpeta=CDICPCalNeto
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S





[Acciones.Excel3]
Nombre=Excel3
Boton=0
NombreDesplegar=Excel
EnMenu=S
Carpeta=CDICPCalNetoMensual
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S






[Acciones.Excel4]
Nombre=Excel4
Boton=0
NombreDesplegar=Excel
EnMenu=S
Carpeta=CPCalDisponible
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S





[Disponible.ListaEnCaptura]
(Inicio)=Mes
Mes=Presupuesto
Presupuesto=Ejercicio
Ejercicio=(Fin)



[CPCalDisponible.Mes]
Carpeta=CPCalDisponible
Clave=Mes
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[CPCalDisponible.Presupuesto]
Carpeta=CPCalDisponible
Clave=Presupuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[CPCalDisponible.Ejercicio]
Carpeta=CPCalDisponible
Clave=Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro


[CPCalDisponible.Columnas]
0=125
1=76
2=118
3=115











[Acciones.Excel5]
Nombre=Excel5
Boton=0
NombreDesplegar=Excel
EnMenu=S
Carpeta=CDICPCalReservado
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S



[CPCalReservado.Columnas]
0=156
1=109
2=105
3=137







[CPCalDisponible.ListaEnCaptura]
(Inicio)=Ejercicio
Ejercicio=Mes
Mes=Presupuesto
Presupuesto=(Fin)




























[CPNeto.ListaEnCaptura]
(Inicio)=Presupuesto
Presupuesto=Comprometido
Comprometido=Comprometido2
Comprometido2=Devengado
Devengado=Devengado2
Devengado2=Ejercido
Ejercido=EjercidoPagado
EjercidoPagado=RemanenteDisponible
RemanenteDisponible=Sobrante
Sobrante=ReservadoNeto
ReservadoNeto=Disponible
Disponible=(Fin)




[CPEjercicioPeriodoNeto.Presupuesto]
Carpeta=CPEjercicioPeriodoNeto
Clave=Presupuesto
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.Comprometido]
Carpeta=CPEjercicioPeriodoNeto
Clave=Comprometido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.Comprometido2]
Carpeta=CPEjercicioPeriodoNeto
Clave=Comprometido2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.Devengado]
Carpeta=CPEjercicioPeriodoNeto
Clave=Devengado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.Devengado2]
Carpeta=CPEjercicioPeriodoNeto
Clave=Devengado2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.Ejercido]
Carpeta=CPEjercicioPeriodoNeto
Clave=Ejercido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.EjercidoPagado]
Carpeta=CPEjercicioPeriodoNeto
Clave=EjercidoPagado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.RemanenteDisponible]
Carpeta=CPEjercicioPeriodoNeto
Clave=RemanenteDisponible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.Sobrante]
Carpeta=CPEjercicioPeriodoNeto
Clave=Sobrante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.ReservadoNeto]
Carpeta=CPEjercicioPeriodoNeto
Clave=ReservadoNeto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CPEjercicioPeriodoNeto.Disponible]
Carpeta=CPEjercicioPeriodoNeto
Clave=Disponible
Editar=S
Totalizador=1
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CPEjercicioPeriodoNeto.Columnas]
0=-2
1=-2
2=-2
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
11=-2








[Acciones.AbrirMostrar]
Nombre=AbrirMostrar
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=CPEjercicioPeriodoNeto
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Acciones.AbrirMostrar2]
Nombre=AbrirMostrar2
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=CDICPCalNeto
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Acciones.AbrirMostrar3]
Nombre=AbrirMostrar3
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=CDICPCalNetoMensual
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[Acciones.AbrirMostrar5]
Nombre=AbrirMostrar5
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
Carpeta=CDICPCalReservado
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S



[CPEjercicioPeriodoNeto.ListaEnCaptura]
(Inicio)=Presupuesto
Presupuesto=Comprometido
Comprometido=Comprometido2
Comprometido2=Devengado
Devengado=Devengado2
Devengado2=Ejercido
Ejercido=EjercidoPagado
EjercidoPagado=RemanenteDisponible
RemanenteDisponible=Sobrante
Sobrante=ReservadoNeto
ReservadoNeto=Disponible
Disponible=(Fin)

[CPEjercicioPeriodoNeto.ListaAcciones]
(Inicio)=Excel
Excel=AbrirMostrar
AbrirMostrar=(Fin)












[CPCalNeto.ListaEnCaptura]
(Inicio)=Ejercicio
Ejercicio=Enero
Enero=Febrero
Febrero=Marzo
Marzo=Abril
Abril=Mayo
Mayo=Junio
Junio=Julio
Julio=Agosto
Agosto=Septiembre
Septiembre=Octubre
Octubre=Noviembre
Noviembre=Diciembre
Diciembre=(Fin)

[CPCalNeto.ListaAcciones]
(Inicio)=Excel2
Excel2=AbrirMostrar2
AbrirMostrar2=(Fin)









[Acciones.CpMovMensualRF.AsignaVar]
Nombre=AsignaVar
Boton=0
Activo=S
Visible=S

TipoAccion=Expresion
Expresion=Asigna( Info.ABC, CPCalReservado:ClavePresupuestal )<BR> Asigna( Info.Periodo, CPCalReservado:Periodo )
[Acciones.CpMovMensualRF.Asignacion]
Nombre=Asignacion
Boton=0
Activo=S
Visible=S

TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
[Acciones.CpMovMensualRF.Forma]
Nombre=Forma
Boton=0
Activo=S
Visible=S













TipoAccion=Formas
ClaveAccion=CpMovMensualRF




[Acciones.CpMovMensualRF.ListaAccionesMultiples]
(Inicio)=AsignaVar
AsignaVar=Asignacion
Asignacion=Forma
Forma=(Fin)

[CPCalReservado.ListaEnCaptura]
(Inicio)=Ejercicio
Ejercicio=Mes
Mes=Presupuesto
Presupuesto=(Fin)

[CPCalReservado.ListaAcciones]
(Inicio)=CpMovMensualRF
CpMovMensualRF=Excel5
Excel5=AbrirMostrar5
AbrirMostrar5=(Fin)








































[CDICPCalNeto]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Calendarización Mensual
Clave=CDICPCalNeto
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPCalNeto
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaAcciones=(Lista)

CarpetaVisible=S


ListaEnCaptura=(Lista)

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaOrdenarColumnas=S
HojaVistaOmision=Automática
[CpCalNetoMensual.ListaEnCaptura]
(Inicio)=Mes
Mes=Presupuesto
Presupuesto=Ejercido
Ejercido=EjercidoPagado
EjercidoPagado=Reservado
Reservado=AcumuladoMesAnt
AcumuladoMesAnt=Disponible
Disponible=(Fin)

[CpCalNetoMensual.ListaAcciones]
(Inicio)=CPMovMensula
CPMovMensula=Excel3
Excel3=AbrirMostrar3
AbrirMostrar3=(Fin)

[CDICPCalNetoMensual]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Disponible Mensual
Clave=CDICPCalNetoMensual
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPCalNetoMensual
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaAcciones=(Lista)

CarpetaVisible=S
ListaEnCaptura=(Lista)

HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaOrdenarColumnas=S
HojaVistaOmision=Automática
[CDICPCalReservado]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Reservado
Clave=CDICPCalReservado
MenuLocal=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICPCalReservado
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaAcciones=(Lista)

CarpetaVisible=S

ListaEnCaptura=(Lista)
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaAjustarColumnas=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaTitulosEnBold=S
HojaOrdenarColumnas=S
HojaVistaOmision=Automática
[CDICPCalNeto.Ejercicio]
Carpeta=CDICPCalNeto
Clave=Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Enero]
Carpeta=CDICPCalNeto
Clave=Enero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Febrero]
Carpeta=CDICPCalNeto
Clave=Febrero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Marzo]
Carpeta=CDICPCalNeto
Clave=Marzo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Abril]
Carpeta=CDICPCalNeto
Clave=Abril
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Mayo]
Carpeta=CDICPCalNeto
Clave=Mayo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Junio]
Carpeta=CDICPCalNeto
Clave=Junio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Julio]
Carpeta=CDICPCalNeto
Clave=Julio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Agosto]
Carpeta=CDICPCalNeto
Clave=Agosto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Septiembre]
Carpeta=CDICPCalNeto
Clave=Septiembre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Octubre]
Carpeta=CDICPCalNeto
Clave=Octubre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Noviembre]
Carpeta=CDICPCalNeto
Clave=Noviembre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNeto.Diciembre]
Carpeta=CDICPCalNeto
Clave=Diciembre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICPCalNetoMensual.Periodo]
Carpeta=CDICPCalNetoMensual
Clave=Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNetoMensual.Presupuesto]
Carpeta=CDICPCalNetoMensual
Clave=Presupuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICPCalNeto.Columnas]
0=-2
1=61
2=78
3=74
4=74
5=75
6=84
7=73
8=78
9=78
10=77
11=74
12=74
13=81

Ejercicio=52
Enero=71
Febrero=76
Marzo=68
Abril=71
Mayo=64
Junio=64
Julio=71
Agosto=71
Septiembre=91
Octubre=74
Noviembre=75
Diciembre=95
ClavePresupuestal=116
Descripcion=244
[CDICPCalNetoMensual.Columnas]
0=111
1=-2
2=119
3=109
4=106
5=113
6=140
7=107

ClavePresupuestal=158
Periodo=82
Presupuesto=130
Ejercido=111
EjercidoPagado=121
Reservado=87
AcumuladoMesAnt=143
Disponible=115
Comprometido2=95
Comprometido=88
Devengado=68
Descripcion=241
DisponibleMensual=112
Sobrante=137
EjercidoNeto=87
DisponibleNeto=112
[CDICPCalReservado.Columnas]
0=121

1=91
2=92
3=138




ClavePresupuestal=354
Ejercicio=64
Periodo=64
Presupuesto=118
Descripción=244
[CDICPCalReservado.Ejercicio]
Carpeta=CDICPCalReservado
Clave=Ejercicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalReservado.Periodo]
Carpeta=CDICPCalReservado
Clave=Periodo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalReservado.Presupuesto]
Carpeta=CDICPCalReservado
Clave=Presupuesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco




[Acciones.CPMovMensula.ListaAccionesMultiples]
(Inicio)=AsignarVar
AsignarVar=Asignacion
Asignacion=Forma
Forma=(Fin)















[CDICPCalNeto.ClavePresupuestal]
Carpeta=CDICPCalNeto
Clave=ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
Efectos=[Negritas]




[CDICPCalNetoMensual.ClavePresupuestal]
Carpeta=CDICPCalNetoMensual
Clave=ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
Efectos=[Negritas]




[CDICPCalReservado.ClavePresupuestal]
Carpeta=CDICPCalReservado
Clave=ClavePresupuestal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Plata
Efectos=[Negritas]







[CDICPCalNetoMensual.Descripcion]
Carpeta=CDICPCalNetoMensual
Clave=Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco




[CDICPCalNeto.ListaEnCaptura]
(Inicio)=ClavePresupuestal
ClavePresupuestal=Descripcion
Descripcion=Ejercicio
Ejercicio=Enero
Enero=Febrero
Febrero=Marzo
Marzo=Abril
Abril=Mayo
Mayo=Junio
Junio=Julio
Julio=Agosto
Agosto=Septiembre
Septiembre=Octubre
Octubre=Noviembre
Noviembre=Diciembre
Diciembre=(Fin)

[CDICPCalNeto.ListaAcciones]
(Inicio)=Excel2
Excel2=AbrirMostrar2
AbrirMostrar2=(Fin)

[CDICPCalNeto.Descripcion]
Carpeta=CDICPCalNeto
Clave=Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco

[CDICPCalReservado.ListaEnCaptura]
(Inicio)=ClavePresupuestal
ClavePresupuestal=Descripción
Descripción=Ejercicio
Ejercicio=Periodo
Periodo=Presupuesto
Presupuesto=(Fin)

[CDICPCalReservado.ListaAcciones]
(Inicio)=Excel5
Excel5=AbrirMostrar5
AbrirMostrar5=(Fin)

[CDICPCalReservado.Descripción]
Carpeta=CDICPCalReservado
Clave=Descripción
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=40
ColorFondo=Blanco










[CDICPCalNetoMensual.EjercidoNeto]
Carpeta=CDICPCalNetoMensual
Clave=EjercidoNeto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDICPCalNetoMensual.DisponibleNeto]
Carpeta=CDICPCalNetoMensual
Clave=DisponibleNeto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco













[CDICPCalNetoMensual.Sobrante]
Carpeta=CDICPCalNetoMensual
Clave=Sobrante
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


[CDICPCalNetoMensual.ListaEnCaptura]
(Inicio)=ClavePresupuestal
ClavePresupuestal=Descripcion
Descripcion=Periodo
Periodo=Presupuesto
Presupuesto=EjercidoNeto
EjercidoNeto=DisponibleNeto
DisponibleNeto=Sobrante
Sobrante=(Fin)

[CDICPCalNetoMensual.ListaAcciones]
(Inicio)=Excel3
Excel3=AbrirMostrar3
AbrirMostrar3=(Fin)

[Forma.ListaCarpetas]
(Inicio)=CDICPCalNeto
CDICPCalNeto=CDICPCalNetoMensual
CDICPCalNetoMensual=CDICPCalReservado
CDICPCalReservado=(Fin)
