[Forma]
Clave=RepCPReporte01
Nombre=info.titulo
Icono=23
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=331
PosicionInicialArriba=293
PosicionInicialAltura=131
PosicionInicialAncho=617
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
BarraAcciones=S
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
AccionesDivision=S
VentanaExclusiva=S
AccionesCentro=S
PosicionInicialAlturaCliente=169

VentanaEstadoInicial=Normal
EsMovimiento=S
TituloAuto=S
MovEspecificos=Todos
MovModulo=CP
ExpresionesAlMostrar=Si (info.Solucion <> <T>Fecha<T>) Entonces<BR>Asigna(info.FechaD,nulo)<BR>Asigna(info.FechaA,nulo)<BR>Fin
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={MS Sans Serif, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S
FichaEspacioEntreLineas=4
FichaEspacioNombres=65
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
ListaEnCaptura=(Lista)
PermiteEditar=S

FichaMarco=S
[(Variables).Info.FechaD]
Carpeta=(Variables)
Clave=Info.FechaD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Efectos=[Negritas]
[(Variables).Info.FechaA]
Carpeta=(Variables)
Clave=Info.FechaA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

Efectos=[Negritas]
[Acciones.Aceptar]
Nombre=Aceptar
Boton=0
NombreDesplegar=&Aceptar
EnBarraAcciones=S
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar / Ventana Aceptar
Activo=S
Visible=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=0
NombreDesplegar=Cancelar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S




Antes=S
AntesExpresiones=Asigna(info.FechaD,nulo)<BR>Asigna(info.FechaA,nulo)<BR>Asigna(info.Mov,nulo)<BR>Asigna(info.Proyecto,nulo)<BR>Asigna(info.ClavePresupuestal,nulo)<BR>Asigna(info.Mov,nulo)<BR>Asigna(info.MovID,nulo)
[Lista.Columnas]
0=135
1=192






Categoria=250
Linea=234
Grupo=231
Familia=263
Articulo=131
Descripcion1=244
2=-2
Moneda=144
TipoCambio=69
Mov=124

[heExamenNivel.Columnas]
Nivel=304














[(Variables).Info.Proyecto]
Carpeta=(Variables)
Clave=Info.Proyecto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.ClavePresupuestal]
Carpeta=(Variables)
Clave=Info.ClavePresupuestal
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

















[(Variables).Info.Desglosar]
Carpeta=(Variables)
Clave=Info.Desglosar
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco







[(Variables).Info.Mov]
Carpeta=(Variables)
Clave=Info.Mov
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.MovID]
Carpeta=(Variables)
Clave=Info.MovID
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco










[(Variables).ListaEnCaptura]
(Inicio)=Info.Proyecto
Info.Proyecto=Info.ClavePresupuestal
Info.ClavePresupuestal=Info.Desglosar
Info.Desglosar=Info.FechaD
Info.FechaD=Info.FechaA
Info.FechaA=Info.Mov
Info.Mov=Info.MovID
Info.MovID=(Fin)





[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
