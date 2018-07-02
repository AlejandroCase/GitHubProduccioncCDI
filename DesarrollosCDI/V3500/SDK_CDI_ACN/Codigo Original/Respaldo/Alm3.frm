
[Forma]
Clave=Alm3
Icono=0
Modulos=(Todos)

ListaCarpetas=(Lista)
CarpetaPrincipal=Codigo
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=246
PosicionInicialArriba=72
PosicionInicialAlturaCliente=594
PosicionInicialAncho=940
PosicionSec1=66
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaEstadoInicial=Normal
PosicionCol2=574
PosicionSec2=462
PosicionCol3=573
PosicionCol1=574
MenuTouchScreen=S
Menus=S

Nombre=<T>Punto de Venta SDK (Prototipo)<T>
ExpresionesAlMostrar=Asigna(Ver.Ticket,<BR><T>    Empresa de Prueba, S.A. de C.V.<T>+NuevaLinea+<BR><T>       Direccion 123<T>+NuevaLinea+<BR><T>     Colonia Roma Sur<T>+NuevaLinea+<BR><T>            Mexico, D.F.<T>+NuevaLinea+<BR><T><T>+NuevaLinea+<BR><T>--------------------------------------<T>+NuevaLinea+<BR><T>Articulo    Cantidad    Importe<T>+NuevaLinea+<BR><T>--------------------------------------<T>+NuevaLinea+<BR><T>A1        1        100.00<T>+NuevaLinea+<BR><T>A2        2        200.00<T>+NuevaLinea+<BR><T>A3        4        400.00<T>)
[Lista.Alm.Almacen]
Carpeta=Lista
Clave=Alm.Almacen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.Alm.Nombre]
Carpeta=Lista
Clave=Alm.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[Lista.Columnas]
Almacen=76
Nombre=186








Sucursal=64
Nombre_1=304
[Acciones.Actualizar]
Nombre=Actualizar
Boton=82
NombreDesplegar=&Actualizar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S




























NombreEnBoton=S
EnBarraAcciones=S
EnMenu=S
[Acciones.Send]
Nombre=Send
Boton=7
NombreEnBoton=S
NombreDesplegar=&Send
TipoAccion=Expresion
Activo=S
Visible=S






















GuardarAntes=S
EnBarraAcciones=S
Expresion=Si<BR>  ConDatos(Info.Codigo)<BR>Entonces          <BR>  EjecutarSQL(<T>spSendCodigo :tCodigo<T>, Info.Codigo)<BR>  Asigna(Info.Codigo, Nulo)<BR>  Forma.ActualizarVista(<T>Lista<T>)<BR>  Inc(Temp.Num)  <BR> Asigna(Ver.Ticket, Ver.Ticket+<T>Linea: <T>+Temp.Num+NuevaLinea)<BR>Asigna(Ver.Imagen, <T>C:\Intelisis\Dibujos\Imagenes\Logo.bmp<T>)<BR>CampoAsignaVariable(Alm:Alm.Nombre, Ver.Lista)<BR>Asigna(Ver.Totales, <T>SubTotal:                     $15,000.00<T>+NuevaLinea+<BR><T>IVA:                           $5,000.00<T>)<BR>Asigna(Ver.Aviso, <T>Este es un aviso especial !!!<T>)<BR>Asigna(Ver.Memo, <T>Descripcion Artículo 4<T>)<BR>Fin
[Acciones.Send.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Expresion
Expresion=(Fin)

































































































































































[(Variables).ListaEnCaptura]
(Inicio)=Info.Codigo
Info.Codigo=Ver.Lista
Ver.Lista=(Fin)






[Ticket]
Estilo=Ficha
Clave=Ticket
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=(Variables)
Fuente={Fixedsys, 9, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Ver.Ticket
CarpetaVisible=S
AlinearTodaCarpeta=S

ConFuenteEspecial=S

[Foto]
Estilo=Ficha
Clave=Foto
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B2
Vista=(Variables)
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
ListaEnCaptura=Ver.Imagen
CarpetaVisible=S

AlinearTodaCarpeta=S
[Foto.Ver.Imagen]
Carpeta=Foto
Clave=Ver.Imagen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=200x200







ColorFondo=Blanco


[Codigo]
Estilo=Ficha
Clave=Codigo
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 14, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Info.Codigo
CampoAccionAlEnter=Send
CarpetaVisible=S

ConFuenteEspecial=S
[Codigo.Info.Codigo]
Carpeta=Codigo
Clave=Info.Codigo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
AccionAlEnter=Send
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro











[Totales]
Estilo=Ficha
Clave=Totales
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=(Variables)
Fuente={Fixedsys, 9, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Lima
CampoColorFondo=Negro
ListaEnCaptura=Ver.Totales
CarpetaVisible=S
AlinearTodaCarpeta=S

ConFuenteEspecial=S
[Totales.Ver.Totales]
Carpeta=Totales
Clave=Ver.Totales
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Negro














ColorFuente=Lima














ValidaNombre=S
[Totales.]
Carpeta=Totales
ColorFondo=Negro
ColorFuente=Lima











































































[Aviso]
Estilo=Ficha
Clave=Aviso
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C1
Vista=(Variables)
Fuente={Tahoma, 12, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Rojo obscuro
CampoColorFondo=Blanco
ListaEnCaptura=Ver.Aviso
CarpetaVisible=S
AlinearTodaCarpeta=S

PermiteEditar=S
ConFuenteEspecial=S
[Aviso.Ver.Aviso]
Carpeta=Aviso
Clave=Ver.Aviso
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Rojo obscuro
Efectos=[Negritas]

















































[Descripcion]
Estilo=Ficha
Clave=Descripcion
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=C2
Vista=(Variables)
ConFuenteEspecial=S
Fuente={Tahoma, 12, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Ver.Memo
CarpetaVisible=S
AlinearTodaCarpeta=S





[Alm.ListaEnCaptura]
(Inicio)=Alm.Almacen
Alm.Almacen=Alm.Nombre
Alm.Nombre=(Fin)




[Lista.ListaEnCaptura]
(Inicio)=Alm.Almacen
Alm.Almacen=Alm.Nombre
Alm.Nombre=(Fin)











































[Descripcion.Ver.Memo]
Carpeta=Descripcion
Clave=Ver.Memo
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco















[Ticket.Ver.Ticket]
Carpeta=Ticket
Clave=Ver.Ticket
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco













[Forma.ListaCarpetas]
(Inicio)=Codigo
Codigo=Totales
Totales=Ticket
Ticket=Foto
Foto=Aviso
Aviso=Descripcion
Descripcion=(Fin)

[Forma.ListaAcciones]
(Inicio)=Actualizar
Actualizar=Send
Send=(Fin)
