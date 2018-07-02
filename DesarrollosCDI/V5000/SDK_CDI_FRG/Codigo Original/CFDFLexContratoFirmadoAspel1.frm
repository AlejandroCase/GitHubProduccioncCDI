
[Forma]
Clave=CFDFLexContratoFirmadoAspel1
Icono=0
Modulos=(Todos)
Nombre=Contrato Timbrado Aspel

ListaCarpetas=Ficha
CarpetaPrincipal=Ficha
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Aceptar
Comentarios=Lista(Info.Empresa)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=414
PosicionInicialArriba=172
PosicionInicialAlturaCliente=488
PosicionInicialAncho=772
[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCFDFlex1
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
CarpetaVisible=S
AlinearTodaCarpeta=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General

ListaEnCaptura=EmpresaCFDFlex1.ContatoFirmadoAspel
FiltroGeneral=EmpresaCFDFlex1.Empresa = <T>{Info.Empresa}<T>
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[Ficha.ListaEnCaptura]
(Inicio)=eDocXSDDocumento.XSD
eDocXSDDocumento.XSD=CFDFLexContratoCFDISinFirma.Contrato
CFDFLexContratoCFDISinFirma.Contrato=(Fin)

























































































[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Registrar
Registrar=(Fin)

[Ficha.EmpresaCFDFlex1.ContatoFirmadoAspel]
Carpeta=Ficha
Clave=EmpresaCFDFlex1.ContatoFirmadoAspel
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ConScroll=S
SinRecapitular=S
Tamano=100x15
ColorFondo=Blanco
