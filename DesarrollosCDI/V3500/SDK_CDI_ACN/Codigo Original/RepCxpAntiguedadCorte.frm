[Forma]
Clave=RepCxpAntiguedadCorte
Nombre=Antigüedad de Saldos (por Corte)
Icono=0
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=803
PosicionInicialArriba=476
PosicionInicialAltura=238
PosicionInicialAncho=313
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
AccionesTamanoBoton=25x5
ListaAcciones=(Lista)
AccionesCentro=S
AccionesDivision=S
BarraHerramientas=S
VentanaEscCerrar=S
PosicionInicialAlturaCliente=211
ExpresionesAlMostrar=Asigna(Info.ProveedorD, SQL(<T>SELECT MIN(Proveedor) FROM Prov<T>))<BR>Asigna(Info.ProveedorA, SQL(<T>SELECT MAX(Proveedor) FROM Prov<T>))<BR>Asigna(Info.Desglosar, <T>Si<T>)<BR>Asigna(Info.FechaD, PrimerDiaAño(Hoy))<BR>Asigna(Info.FechaA, Hoy)<BR>Asigna(Info.Moneda, <T>(Todas)<T>)<BR>Asigna(Rep.Titulo, <T>Antigüedad de Saldos - Cuentas por Pagar<T>)

[(Variables)]
Estilo=Ficha
Clave=(Variables)
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Acciones.RepPan]
Nombre=RepPan
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraAcciones=S
Activo=S
Visible=S
ListaAccionesMultiples=Variables Asignar<BR>Preliminar
NombreEnBoton=S
EnBarraHerramientas=S

[Acciones.RepPan.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Imprimir.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=4
NombreDesplegar=&Imprimir
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=Variables Asignar<BR>Imprimir
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S
EspacioPrevio=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S

[Acciones.RepPan.Preliminar]
Nombre=Preliminar
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=CxpAntiguedadCorte
Activo=S
Visible=S

[Acciones.Imprimir.Imprimir]
Nombre=Imprimir
Boton=0
TipoAccion=Reportes Impresora
ClaveAccion=CxpAntiguedadCorte
Activo=S
Visible=S

[(Variables).Rep.Titulo]
Carpeta=(Variables)
Clave=Rep.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.ProveedorD]
Carpeta=(Variables)
Clave=Info.ProveedorD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.ProveedorA]
Carpeta=(Variables)
Clave=Info.ProveedorA
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.Desglosar]
Carpeta=(Variables)
Clave=Info.Desglosar
Editar=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S
EspacioPrevio=S

[(Variables).Info.Moneda]
Carpeta=(Variables)
Clave=Info.Moneda
Editar=S
3D=S
Tamano=11
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=S

[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=RepPan
RepPan=(Fin)

[(Variables).ListaEnCaptura]
(Inicio)=Info.ProveedorD
Info.ProveedorD=Info.ProveedorA
Info.ProveedorA=Info.Desglosar
Info.Desglosar=Info.Moneda
Info.Moneda=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Rep.Titulo
Rep.Titulo=(Fin)
