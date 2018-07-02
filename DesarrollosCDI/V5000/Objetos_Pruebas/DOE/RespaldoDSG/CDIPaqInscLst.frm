
[Forma]
Clave=CDIPaqInscLst
Icono=0
Modulos=(Todos)
Nombre=Lista Paquetes

ListaCarpetas=CDIPaqInscLst
CarpetaPrincipal=CDIPaqInscLst
PosicionInicialAlturaCliente=273
PosicionInicialAncho=1244
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Seleccionar/Aceptar
[CDIPaqInscLst]
Estilo=Hoja
Clave=CDIPaqInscLst
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIPaqInsc
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
CarpetaVisible=S
ListaEnCaptura=(Lista)


[CDIPaqInscLst.CDIPaqInsc.PaqueteNo]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.PaqueteNo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Programa]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.FechaInicio]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.FechaInicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.FechaFin]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.FechaFin
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Coordinacion]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Coordinacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Ceplan]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Ceplan
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Descripcion]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Grupo]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Espacio]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Profesor]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Profesor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Horario]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Cupo]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Cupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.CDIEdadMinima]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.CDIEdadMinima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.CDIEdadMaxima]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.CDIEdadMaxima
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[CDIPaqInscLst.CDIPaqInsc.Sexo]
Carpeta=CDIPaqInscLst
Clave=CDIPaqInsc.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[CDIPaqInscLst.Columnas]
PaqueteNo=64
Programa=69
FechaInicio=63
FechaFin=69
Coordinacion=114
Ceplan=64
Descripcion=123
Grupo=107
Espacio=64
Profesor=64
Horario=124
Cupo=37
CDIEdadMinima=78
CDIEdadMaxima=82
Sexo=50




[Acciones.Seleccionar/Aceptar]
Nombre=Seleccionar/Aceptar
Boton=23
NombreDesplegar=Seleccionar/Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Seleccionar
Activo=S
Visible=S

[CDIPaqInscLst.ListaEnCaptura]
(Inicio)=CDIPaqInsc.PaqueteNo
CDIPaqInsc.PaqueteNo=CDIPaqInsc.Programa
CDIPaqInsc.Programa=CDIPaqInsc.FechaInicio
CDIPaqInsc.FechaInicio=CDIPaqInsc.FechaFin
CDIPaqInsc.FechaFin=CDIPaqInsc.Coordinacion
CDIPaqInsc.Coordinacion=CDIPaqInsc.Ceplan
CDIPaqInsc.Ceplan=CDIPaqInsc.Descripcion
CDIPaqInsc.Descripcion=CDIPaqInsc.Grupo
CDIPaqInsc.Grupo=CDIPaqInsc.Espacio
CDIPaqInsc.Espacio=CDIPaqInsc.Profesor
CDIPaqInsc.Profesor=CDIPaqInsc.Horario
CDIPaqInsc.Horario=CDIPaqInsc.Cupo
CDIPaqInsc.Cupo=CDIPaqInsc.CDIEdadMinima
CDIPaqInsc.CDIEdadMinima=CDIPaqInsc.CDIEdadMaxima
CDIPaqInsc.CDIEdadMaxima=CDIPaqInsc.Sexo
CDIPaqInsc.Sexo=(Fin)
