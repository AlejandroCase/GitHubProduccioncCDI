
[Forma]
Clave=CDIPlanesBAjar
Icono=0
Modulos=(Todos)
Nombre=<T>Generar Archivo<T>

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=510
PosicionInicialArriba=290
PosicionInicialAlturaCliente=86
PosicionInicialAncho=232
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
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
ListaEnCaptura=Info.CDIDirectorio
CarpetaVisible=S


[Lista.Columnas]
Moneda=144
TipoCambio=69


[Acciones.Procesar]
Nombre=Procesar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Procesar
EnBarraHerramientas=S
Activo=S
Visible=S

Multiple=S
ListaAccionesMultiples=(Lista)
[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S












[Acciones.Procesar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S






[Acciones.Procesar.VariablesAsignar]
Nombre=VariablesAsignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Procesar.Procesa]
Nombre=Procesa
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S




Expresion=ProcesarSQL(<T>xpcdibajaplanesarchivo :tEmpresa,  :tDirectorio<T>, Empresa, Info.CDIDirectorio)
[(Variables).ListaEnCaptura]
(Inicio)=Info.CDIBanco
Info.CDIBanco=Info.Moneda
Info.Moneda=Info.CDIDirectorio
Info.CDIDirectorio=(Fin)

[(Variables).Info.CDIDirectorio]
Carpeta=(Variables)
Clave=Info.CDIDirectorio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
























[Acciones.Procesar.ListaAccionesMultiples]
(Inicio)=VariablesAsignar
VariablesAsignar=Procesa
Procesa=(Fin)



[Forma.ListaAcciones]
(Inicio)=Procesar
Procesar=Cancelar
Cancelar=(Fin)
