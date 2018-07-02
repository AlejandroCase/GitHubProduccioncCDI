[Forma]
Clave=MovProy
Nombre=Generar Movimiento
Icono=0
Modulos=(Todos)
ListaCarpetas=Lista
CarpetaPrincipal=Lista
PosicionInicialIzquierda=798
PosicionInicialArriba=420
PosicionInicialAlturaCliente=323
PosicionInicialAncho=324
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Info.Proveedor
ExpresionesAlCerrar=Asigna(Filtro.Cliente, Nulo)<BR>Asigna(Filtro.Mov, Nulo)

[Lista]
Estilo=Hoja
Clave=Lista
Zona=A1
Vista=MovProy
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
OtroOrden=S
ListaOrden=MovProy.Orden<TAB>(Acendente)
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaMantenerSeleccion=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
ListaEnCaptura=MovProy.Nombre

[Lista.Columnas]
0=363
Nombre=287

[Acciones.Generar]
Nombre=Generar
Boton=23
NombreEnBoton=S
NombreDesplegar=<T>&Generar<T>
EnBarraHerramientas=S
TipoAccion=Expresion
Activo=S
Visible=S
ConCondicion=S
Expresion=Caso MovProy:MovProy.Tipo<BR>  Es <T>Modulo<T>        <BR>    Entonces <BR>      Asigna(Filtro.Proyecto, Info.Proyecto)<BR>      Asigna(Filtro.Actividad, Info.Actividad)<BR>      Asigna(Filtro.Mov, MovProy:MovProy.Mov)<BR>      Caso MovProy:MovProy.Modulo<BR>        Es <T>VTAS<T> Entonces<BR>                    Forma(<T>Venta<T>)<BR>        Es <T>COMS<T> Entonces<BR>                    Forma(<T>Compra<T>)<BR>        Es <T>GAS<T> Entonces<BR>                    Forma(<T>Gasto<T>)<BR>        Es <T>ST<T>   Entonces<BR>                    Asigna(Info.SubModuloST, Vacio(MovProy:MovProy.SubModulo, MovProy:MovProy.SubModulo))<BR>                    Asigna(Info.STNombre, SQL(<T>SELECT Nombre FROM SubModulo WHERE Modulo=:tModulo AND SubModulo=:tSubModulo<T>, MovProy:MovProy.Modulo, Info.SubModuloST))<BR>                    Forma(<T>Soporte<T>)<BR>        Es <T>CXP<T>  Entonces<BR>                    Forma(<T>Cxp<T>)<BR>        Es <T>CXC<T>  Entonces<BR>                    Forma(<T>Cxc<T>)<BR>      Fin<BR>Fin
EjecucionCondicion=ConDatos(MovProy:MovProy.Nombre) y ConDatos(MovProy:MovProy.Tipo)

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=<T>&Cancelar<T>
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Lista.MovProy.Nombre]
Carpeta=Lista
Clave=MovProy.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Generar
Generar=Cancelar
Cancelar=(Fin)
