
[Forma]
Clave=vic_ContratoGobErog
Icono=4
Modulos=(Todos)
Nombre=Tipos de Erogación
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal

ListaCarpetas=Erogacion
CarpetaPrincipal=Erogacion
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionInicialIzquierda=397
PosicionInicialArriba=246
PosicionInicialAlturaCliente=337
PosicionInicialAncho=358
[Erogacion]
Estilo=Hoja
PestanaOtroNombre=S
PestanaNombre=Erogacion
Clave=Erogacion
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=vic_ContratoGobErog
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
[Erogacion.ListaEnCaptura]
(Inicio)=vic_ContratoGobErog.Clave
vic_ContratoGobErog.Clave=vic_ContratoGobErog.Descripcion
vic_ContratoGobErog.Descripcion=(Fin)

[Erogacion.vic_ContratoGobErog.Clave]
Carpeta=Erogacion
Clave=vic_ContratoGobErog.Clave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Erogacion.vic_ContratoGobErog.Descripcion]
Carpeta=Erogacion
Clave=vic_ContratoGobErog.Descripcion
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


[Erogacion.Columnas]
Clave=87
Descripcion=232







[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excel
Excel=(Fin)
