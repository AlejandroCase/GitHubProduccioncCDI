[Forma]
Clave=CFDFlexEmpresa1
Nombre=Empresas
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
CarpetaPrincipal=Lista
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
PosicionInicialIzquierda=514
PosicionInicialArriba=285
PosicionInicialAltura=300
PosicionInicialAncho=571
PosicionInicialAlturaCliente=292

PosicionCol1=390
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDFlexEmpresaGral1
Fuente={MS Sans Serif, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S


ListaEnCaptura=(Lista)
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

[Lista.Columnas]
NivelAcademico=292

Empresa=123
Nombre=233

[Empresa.Empresa.Nombre]
Carpeta=Empresa
Clave=Empresa.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco



[Acciones.EmpresaCFDFlex]
Nombre=EmpresaCFDFlex
Boton=126
NombreEnBoton=S
NombreDesplegar=CFD &Flexible
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=EmpresaCFDFlex1
Activo=S



Antes=S

















GuardarAntes=S
AntesExpresiones=Asigna(Info.Empresa, CFDFlexEmpresaGral1:CFDFlexEmpresaGral1.Empresa)<BR>Asigna(Info.Nombre, CFDFlexEmpresaGral1:Empresa.Nombre)
VisibleCondicion=CFDFlexEmpresaGral1.eDoc y CFDFlexEmpresaGral1.CFDFlex
[Acciones.EmpresaRegimenFiscales]
Nombre=EmpresaRegimenFiscales
Boton=47
NombreDesplegar=&Régimenes Fiscales
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=EmpresaRegimenFiscales1
Activo=S



NombreEnBoton=S








Antes=S





























GuardarAntes=S
AntesExpresiones=Asigna(Info.Empresa, CFDFlexEmpresaGral1:CFDFlexEmpresaGral1.Empresa)<BR>Asigna(Info.Nombre, CFDFlexEmpresaGral1:Empresa.Nombre)
VisibleCondicion=CFDFlexEmpresaGral1.eDoc y CFDFlexEmpresaGral1.CFDFlex
[CFDFlexEmpresaGral1]
Estilo=Ficha
Clave=CFDFlexEmpresaGral1
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CFDFlexEmpresaGral1
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
ListaEnCaptura=(Lista)


PermiteEditar=S
[CFDFlexEmpresaGral1.CFDFlexEmpresaGral1.eDoc]
Carpeta=CFDFlexEmpresaGral1
Clave=CFDFlexEmpresaGral1.eDoc
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=20
[CFDFlexEmpresaGral1.CFDFlexEmpresaGral1.CFDFlex]
Carpeta=CFDFlexEmpresaGral1
Clave=CFDFlexEmpresaGral1.CFDFlex
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco

Tamano=20
[CFDFlexEmpresaGral1.CFDFlexEmpresaGral1.CFDI]
Carpeta=CFDFlexEmpresaGral1
Clave=CFDFlexEmpresaGral1.CFDI
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco







Tamano=20
[Lista.ListaEnCaptura]
(Inicio)=CFDFlexEmpresaGral1.Empresa
CFDFlexEmpresaGral1.Empresa=Empresa.Nombre
Empresa.Nombre=(Fin)

[Lista.CFDFlexEmpresaGral1.Empresa]
Carpeta=Lista
Clave=CFDFlexEmpresaGral1.Empresa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=5
ColorFondo=Blanco

[Lista.Empresa.Nombre]
Carpeta=Lista
Clave=Empresa.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
















[CFDFlexEmpresaGral1.ListaEnCaptura]
(Inicio)=CFDFlexEmpresaGral1.eDoc
CFDFlexEmpresaGral1.eDoc=CFDFlexEmpresaGral1.CFDFlex
CFDFlexEmpresaGral1.CFDFlex=CFDFlexEmpresaGral1.CFDI
CFDFlexEmpresaGral1.CFDI=(Fin)











































[Acciones.CFDFlexSucursal]
Nombre=CFDFlexSucursal
Boton=16
NombreEnBoton=S
NombreDesplegar=&Sucursales
EnBarraHerramientas=S
TipoAccion=Formas
ClaveAccion=CFDFlexSucursal1
Activo=S











Antes=S
AntesExpresiones=Asigna(Info.Empresa, CFDFlexEmpresaGral1:CFDFlexEmpresaGral1.Empresa)<BR>Asigna(Info.Nombre, CFDFlexEmpresaGral1:Empresa.Nombre)
VisibleCondicion=CFDFlexEmpresaGral1.eDoc y CFDFlexEmpresaGral1.CFDFlex


















[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=CFDFlexEmpresaGral1
CFDFlexEmpresaGral1=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=EmpresaCFDFlex
EmpresaCFDFlex=EmpresaRegimenFiscales
EmpresaRegimenFiscales=CFDFlexSucursal
CFDFlexSucursal=(Fin)
