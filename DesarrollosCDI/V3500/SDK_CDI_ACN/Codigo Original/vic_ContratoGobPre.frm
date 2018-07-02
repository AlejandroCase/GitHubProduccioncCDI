
[Forma]
Clave=vic_ContratoGobPre
Icono=4
Modulos=(Todos)
Nombre=Esquema de Precios
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=EsquemaPrecios
CarpetaPrincipal=EsquemaPrecios
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=354
PosicionInicialArriba=278
PosicionInicialAlturaCliente=273
PosicionInicialAncho=444
[EsquemaPrecios]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Esquema de Precios
Clave=EsquemaPrecios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobPre
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
[EsquemaPrecios.ListaEnCaptura]
(Inicio)=vic_ContratoGobPre.Clave
vic_ContratoGobPre.Clave=vic_ContratoGobPre.Descripcion
vic_ContratoGobPre.Descripcion=(Fin)

[EsquemaPrecios.vic_ContratoGobPre.Clave]
Carpeta=EsquemaPrecios
Clave=vic_ContratoGobPre.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[EsquemaPrecios.vic_ContratoGobPre.Descripcion]
Carpeta=EsquemaPrecios
Clave=vic_ContratoGobPre.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=80
ColorFondo=Blanco
ColorFuente=Negro

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

[Acciones.Excel]
Nombre=Excel
Boton=67
NombreDesplegar=Excel
EnBarraHerramientas=S
EspacioPrevio=S
Carpeta=(Carpeta principal)
TipoAccion=Controles Captura
ClaveAccion=Enviar/Recibir Excel
ActivoCondicion=Usuario.EnviarExcel
Visible=S


[EsquemaPrecios.Columnas]
Clave=68
Descripcion=300





[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=(Fin)
