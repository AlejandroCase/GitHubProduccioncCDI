
[Forma]
Clave=CDISubsidioXCateg
Icono=0
Modulos=(Todos)
Nombre=Subsidio por Categor�a

ListaCarpetas=CDISubsidioXCateg
CarpetaPrincipal=CDISubsidioXCateg
PosicionInicialAlturaCliente=368
PosicionInicialAncho=631
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
PosicionInicialIzquierda=367
PosicionInicialArriba=181
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=Guardar
ExpresionesAlMostrar=Asigna(Info.Filtro, <T>1=1<T>)
[CDISubsidioXCateg]
Estilo=Hoja
Clave=CDISubsidioXCateg
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDISubsidioXCateg
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Autom�tica
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
ListaEnCaptura=(Lista)


[CDISubsidioXCateg.CDISubsidioXCateg.Categoria]
Carpeta=CDISubsidioXCateg
Clave=CDISubsidioXCateg.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDISubsidioXCateg.CDISubsidioXCateg.Subsidio]
Carpeta=CDISubsidioXCateg
Clave=CDISubsidioXCateg.Subsidio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CDISubsidioXCateg.CDISocioSubsidio.Importe]
Carpeta=CDISubsidioXCateg
Clave=CDISocioSubsidio.Importe
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISubsidioXCateg.Columnas]
Categoria=195
Subsidio=143
Importe=102


NivelCuota=132
[Lista.Columnas]
Categoria=250

[CDISocioSubsidioLista.Columnas]
Subsidio=184

Importe=64
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


[CDISubsidioXCateg.NivelCuota]
Carpeta=CDISubsidioXCateg
Clave=NivelCuota
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDISubsidioXCateg.ListaEnCaptura]
(Inicio)=CDISubsidioXCateg.Categoria
CDISubsidioXCateg.Categoria=CDISubsidioXCateg.Subsidio
CDISubsidioXCateg.Subsidio=NivelCuota
NivelCuota=CDISocioSubsidio.Importe
CDISocioSubsidio.Importe=(Fin)
