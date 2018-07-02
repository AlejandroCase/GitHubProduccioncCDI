[Forma]
Clave=EmpresaCfgCE
Nombre=Configuración - Control Escolar
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
ListaCarpetas=EmpresaCfgCE
CarpetaPrincipal=EmpresaCfgCE
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
Comentarios=Info.Empresa
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
PosicionInicialIzquierda=483
PosicionInicialArriba=373
PosicionInicialAlturaCliente=179
PosicionInicialAncho=313
[EmpresaCfgCE]
Estilo=Ficha
Clave=EmpresaCfgCE
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=EmpresaCfgCE
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
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S
FiltroGeneral=EmpresaCfgCE.Empresa = <T>{Info.Empresa}<T>
[EmpresaCfgCE.EmpresaCfgCE.ArticuloInscripcion]
Carpeta=EmpresaCfgCE
Clave=EmpresaCfgCE.ArticuloInscripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[EmpresaCfgCE.EmpresaCfgCE.ArticuloMateria]
Carpeta=EmpresaCfgCE
Clave=EmpresaCfgCE.ArticuloMateria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
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
[EmpresaCfgCE.EmpresaCfgCE.MovVenta]
Carpeta=EmpresaCfgCE
Clave=EmpresaCfgCE.MovVenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
[EmpresaCfgCE.EmpresaCfgCE.EstatusVenta]
Carpeta=EmpresaCfgCE
Clave=EmpresaCfgCE.EstatusVenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Excluir]
Nombre=Excluir
Boton=107
NombreDesplegar=Excluir Venta Inscripción
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=HHCEInscripcionVentaExcluir
Activo=S
Visible=S



EspacioPrevio=S







[EmpresaCfgCE.ListaEnCaptura]
(Inicio)=EmpresaCfgCE.ArticuloInscripcion
EmpresaCfgCE.ArticuloInscripcion=EmpresaCfgCE.ArticuloMateria
EmpresaCfgCE.ArticuloMateria=EmpresaCfgCE.HHArticuloSEP
EmpresaCfgCE.HHArticuloSEP=EmpresaCfgCE.MovVenta
EmpresaCfgCE.MovVenta=EmpresaCfgCE.EstatusVenta
EmpresaCfgCE.EstatusVenta=(Fin)

[EmpresaCfgCE.EmpresaCfgCE.HHArticuloSEP]
Carpeta=EmpresaCfgCE
Clave=EmpresaCfgCE.HHArticuloSEP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco








[Acciones.HHCECfgCambio]
Nombre=HHCECfgCambio
Boton=103
NombreDesplegar=Cfg Mov Cambio/Pospuesto
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=HHCECfgCambio
Activo=S
Visible=S



Antes=S




GuardarAntes=S
AntesExpresiones=Asigna(Info.Empresa,EmpresaCfgCE:EmpresaCfgCE.Empresa )
DespuesGuardar=S












[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Excluir
Excluir=HHCECfgCambio
HHCECfgCambio=(Fin)
