[Forma]
Clave=CFDFlexSucursal1
Nombre=Sucursales
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
PosicionInicialIzquierda=273
PosicionInicialArriba=169
PosicionInicialAltura=300
PosicionInicialAncho=893
PosicionInicialAlturaCliente=329

PosicionCol1=242
[Lista]
Estilo=Hoja
Clave=Lista
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CFDFlexSucursal1
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
Nombre=160

Sucursal=49
[Empresa.Empresa.Nombre]
Carpeta=Empresa
Clave=Empresa.Nombre
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco





[CFDFlexEmpresaGral.ListaEnCaptura]
(Inicio)=CFDFlexEmpresaGral.eDoc
CFDFlexEmpresaGral.eDoc=CFDFlexEmpresaGral.CFDFlex
CFDFlexEmpresaGral.CFDFlex=CFDFlexEmpresaGral.CFDI
CFDFlexEmpresaGral.CFDI=(Fin)










































[CFDFlexSucursal1]
Estilo=Ficha
Clave=CFDFlexSucursal1
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A2
Vista=CFDFlexSucursal1
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

CarpetaVisible=S






[Lista.ListaEnCaptura]
(Inicio)=CFDFlexSucursal1.Sucursal
CFDFlexSucursal1.Sucursal=CFDFlexSucursal1.Nombre
CFDFlexSucursal1.Nombre=(Fin)

[Lista.CFDFlexSucursal1.Sucursal]
Carpeta=Lista
Clave=CFDFlexSucursal1.Sucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.CFDFlexSucursal1.Nombre]
Carpeta=Lista
Clave=CFDFlexSucursal1.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[CFDFlexSucursal1.CFDFlexSucursal1.CFDFlex]
Carpeta=CFDFlexSucursal1
Clave=CFDFlexSucursal1.CFDFlex
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CFDFlexSucursal1.CFDFlexSucursal1.noCertificado]
Carpeta=CFDFlexSucursal1
Clave=CFDFlexSucursal1.noCertificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CFDFlexSucursal1.CFDFlexSucursal1.Llave]
Carpeta=CFDFlexSucursal1
Clave=CFDFlexSucursal1.Llave
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco

[CFDFlexSucursal1.CFDFlexSucursal1.ContrasenaSello]
Carpeta=CFDFlexSucursal1
Clave=CFDFlexSucursal1.ContrasenaSello
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CFDFlexSucursal1.CFDFlexSucursal1.CertificadoBase64]
Carpeta=CFDFlexSucursal1
Clave=CFDFlexSucursal1.CertificadoBase64
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70x7
ColorFondo=Blanco

[CFDFlexSucursal1.CFDFlexSucursal1.RutaCertificado]
Carpeta=CFDFlexSucursal1
Clave=CFDFlexSucursal1.RutaCertificado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=70
ColorFondo=Blanco









[Acciones.Registrar]
Nombre=Registrar
Boton=83
NombreEnBoton=S
NombreDesplegar=&Registrar Certificado CFD
GuardarAntes=S
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Expresion
Activo=S



























Expresion=ProcesarSQL(<T>EXEC spCFDFlexRegistrarCertificadoXML :nEstacion, :tEmpresa, :tSucursal, :tTipo, 0<T>,EstacionTrabajo,Empresa, CFDFlexSucursal1:CFDFlexSucursal1.Sucursal, <T>Sucursal<T>)<BR>ActualizarForma
VisibleCondicion=(General.CFDFlex) y (CFDFlexSucursal1:CFDFlexSucursal1.CFDFlex)
[CFDFlexSucursal1.ListaEnCaptura]
(Inicio)=CFDFlexSucursal1.CFDFlex
CFDFlexSucursal1.CFDFlex=CFDFlexSucursal1.noCertificado
CFDFlexSucursal1.noCertificado=CFDFlexSucursal1.ContrasenaSello
CFDFlexSucursal1.ContrasenaSello=CFDFlexSucursal1.CertificadoBase64
CFDFlexSucursal1.CertificadoBase64=CFDFlexSucursal1.RutaCertificado
CFDFlexSucursal1.RutaCertificado=CFDFlexSucursal1.Llave
CFDFlexSucursal1.Llave=(Fin)









[Forma.ListaCarpetas]
(Inicio)=Lista
Lista=CFDFlexSucursal1
CFDFlexSucursal1=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Registrar
Registrar=(Fin)
