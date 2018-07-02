[Forma]
Clave=RepNominaTabular
Nombre=<T>N�mina Tabular<T>
Icono=0
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
VentanaTipoMarco=Di�logo
VentanaPosicionInicial=Centrado
PosicionInicialIzquierda=318
PosicionInicialArriba=268
PosicionInicialAltura=225
PosicionInicialAncho=388
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
Comentarios=Info.Mov+<T> <T>+Info.MovID
ListaAcciones=(Lista)
VentanaExclusiva=S
VentanaEscCerrar=S
ExpresionesAlMostrar=Asigna(Temp.Reg, SQL(<T>spVerUltimaNomina<T>))<BR>Asigna(Info.ID,    Temp.Reg[1])<BR>Asigna(Info.Mov,   Temp.Reg[2])<BR>Asigna(Info.MovID, Temp.Reg[3])<BR>Asigna(Rep.Titulo, <T>N�mina Tabular<T>)<BR>Asigna(Rep.PersonaEspecifica, Nulo)<BR>Asigna(Info.Departamento, <T>(Todos)<T>)<BR>Asigna(Info.Puesto, <T>(Todos)<T>)<BR>Asigna(Info.PersonalCat, <T>(Todos)<T>)<BR>Asigna(Info.PersonalGrupo, <T>(Todos)<T>)
PosicionInicialAlturaCliente=198

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
CarpetaVisible=S
ListaEnCaptura=(Lista)

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[Acciones.Nomina]
Nombre=Nomina
Boton=50
NombreEnBoton=S
NombreDesplegar=N�mina
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Forma
Activo=S
ConCondicion=S
Visible=S
EspacioPrevio=S
EjecucionCondicion=Forma(<T>EspecificarMovNomina<T>)

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
NombreEnBoton=S
NombreDesplegar=&Imprimir
Multiple=S
EnBarraHerramientas=S
EspacioPrevio=S
ListaAccionesMultiples=Variables Asignar<BR>NominaTabular
Activo=S
Visible=S

[Acciones.Preliminar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=6
NombreDesplegar=&Preliminar
Multiple=S
EnBarraHerramientas=S
ListaAccionesMultiples=Variables Asignar<BR>NominaTabular
Activo=S
Visible=S
NombreEnBoton=S

[Acciones.Preliminar.NominaTabular]
Nombre=NominaTabular
Boton=0
TipoAccion=Reportes Pantalla
ClaveAccion=NominaTabular
Activo=S
Visible=S

[Acciones.Imprimir.NominaTabular]
Nombre=NominaTabular
Boton=0
TipoAccion=Reportes Impresora
ClaveAccion=NominaTabular
Activo=S
Visible=S

[(Variables).Rep.Titulo]
Carpeta=(Variables)
Clave=Rep.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=41
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.Departamento]
Carpeta=(Variables)
Clave=Info.Departamento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.Puesto]
Carpeta=(Variables)
Clave=Info.Puesto
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.PersonalCat]
Carpeta=(Variables)
Clave=Info.PersonalCat
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Info.PersonalGrupo]
Carpeta=(Variables)
Clave=Info.PersonalGrupo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[(Variables).Rep.PersonaEspecifica]
Carpeta=(Variables)
Clave=Rep.PersonaEspecifica
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Forma.ListaAcciones]
(Inicio)=Cerrar
Cerrar=Imprimir
Imprimir=Preliminar
Preliminar=Nomina
Nomina=(Fin)

[(Variables).ListaEnCaptura]
(Inicio)=Rep.PersonaEspecifica
Rep.PersonaEspecifica=Info.Departamento
Info.Departamento=Info.Puesto
Info.Puesto=Info.PersonalCat
Info.PersonalCat=Info.PersonalGrupo
Info.PersonalGrupo=Rep.Titulo
Rep.Titulo=(Fin)
