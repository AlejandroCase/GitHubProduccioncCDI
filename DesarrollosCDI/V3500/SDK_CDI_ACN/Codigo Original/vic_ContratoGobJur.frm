
[Forma]
Clave=vic_ContratoGobJur
Icono=4
Modulos=(Todos)
Nombre=Acto Administrativo Jurídico

ListaCarpetas=ActoJuridico
CarpetaPrincipal=ActoJuridico
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
ListaAcciones=(Lista)
PosicionInicialIzquierda=360
PosicionInicialArriba=247
PosicionInicialAlturaCliente=335
PosicionInicialAncho=432
[ActoJuridico]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Acto Admin Juridico
Clave=ActoJuridico
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobJur
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
[ActoJuridico.ListaEnCaptura]
(Inicio)=vic_ContratoGobJur.Clave
vic_ContratoGobJur.Clave=vic_ContratoGobJur.Descripcion
vic_ContratoGobJur.Descripcion=(Fin)

[ActoJuridico.vic_ContratoGobJur.Clave]
Carpeta=ActoJuridico
Clave=vic_ContratoGobJur.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[ActoJuridico.vic_ContratoGobJur.Descripcion]
Carpeta=ActoJuridico
Clave=vic_ContratoGobJur.Descripcion
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
Visible=S

ActivoCondicion=Usuario.EnviarExcel



[ActoJuridico.Columnas]
Clave=99
Descripcion=294











[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=(Fin)
