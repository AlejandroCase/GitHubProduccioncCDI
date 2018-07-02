
[Forma]
Clave=CDICEMateriaGrupoSugerido
Icono=0
Modulos=(Todos)
Nombre=Sugerido

ListaCarpetas=Lista
CarpetaPrincipal=Lista
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
VentanaExclusiva=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
ExpresionesAlMostrar=EjecutarSQL(<T>spCDICEMateriaGrupoSugerir :nEstacion, :tEmpresa, :nSuc<T>, Estaciontrabajo, Empresa, Sucursal)
PosicionInicialIzquierda=217
PosicionInicialArriba=228
PosicionInicialAlturaCliente=470
PosicionInicialAncho=846
ListaAcciones=(Lista)
[Lista]
Estilo=Iconos
Clave=Lista
Filtros=S
BusquedaRapidaControles=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICEMateriaGrupoSugerido
Fuente={Tahoma, 8, Negro, []}
IconosCampo=Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosSubTitulo=<T>Nombre<T>
ElementosPorPaginaEsp=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroGrupo1=Cte.Socio
FiltroValida1=Cte.Socio
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por Grupos)
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
CarpetaVisible=S

PestanaOtroNombre=S
PestanaNombre=cursos
IconosNombre=CDICEMateriaGrupoSugerido:NombreCte
FiltroGeneral=CDICEMateriaGrupoSugerido.Estacion = {EstacionTrabajo}
[Lista.CDICEMateriaGrupoSugerido.Grupo]
Carpeta=Lista
Clave=CDICEMateriaGrupoSugerido.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Lista.CDICEMateriaGrupoSugerido.Horario]
Carpeta=Lista
Clave=CDICEMateriaGrupoSugerido.Horario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Lista.CDICEMateriaGrupoSugerido.Disponible]
Carpeta=Lista
Clave=CDICEMateriaGrupoSugerido.Disponible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Lista.Columnas]
0=147
1=99
2=76
3=83



4=152

5=-2
6=-2
[Lista.CDICEMateriaGrupoSugerido.Programa]
Carpeta=Lista
Clave=CDICEMateriaGrupoSugerido.Programa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco


[Acciones.Aplicar]
Nombre=Aplicar
Boton=92
NombreEnBoton=S
NombreDesplegar=A&plicar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S
Antes=S

EspacioPrevio=S
AntesExpresiones=EjecutarSQL(<T>spCDICEMateriaGrupoSugeridoSeleccion :nEstacion, :nID, :tCliente<T>, EstacionTrabajo, CDICEMateriaGrupoSugerido:CDICEMateriaGrupoSugerido.ID, CDICEMateriaGrupoSugerido:CDICEMateriaGrupoSugerido.Cliente)
[Acciones.Borrar]
Nombre=Borrar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Borrar
EnBarraHerramientas=S
TipoAccion=Controles Captura
ClaveAccion=Actualizar Vista
Activo=S
Visible=S












Antes=S
AntesExpresiones=EjecutarSQL(<T>spCDICEMateriaGrupoSugeridoSeleccion :nEstacion, :nID, :tCliente, 1<T>, EstacionTrabajo, CDICEMateriaGrupoSugerido:CDICEMateriaGrupoSugerido.ID, CDICEMateriaGrupoSugerido:CDICEMateriaGrupoSugerido.Cliente)
[Acciones.Seleccionar]
Nombre=Seleccionar
Boton=23
NombreEnBoton=S
NombreDesplegar=&Seleccionar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
























Antes=S
AntesExpresiones=EjecutarSQL(<T>spCDICEMateriaGrupoSugeridoProcesar :nEstacion<T>, EstacionTrabajo)




[Lista.CDICEMateriaGrupoSugerido.Precio]
Carpeta=Lista
Clave=CDICEMateriaGrupoSugerido.Precio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






















[Lista.CEMateria.Descripcion]
Carpeta=Lista
Clave=CEMateria.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco










[Lista.ListaEnCaptura]
(Inicio)=CEMateria.Descripcion
CEMateria.Descripcion=CDICEMateriaGrupoSugerido.Programa
CDICEMateriaGrupoSugerido.Programa=CDICEMateriaGrupoSugerido.Grupo
CDICEMateriaGrupoSugerido.Grupo=CDICEMateriaGrupoSugerido.Horario
CDICEMateriaGrupoSugerido.Horario=CDICEMateriaGrupoSugerido.Precio
CDICEMateriaGrupoSugerido.Precio=CDICEMateriaGrupoSugerido.Disponible
CDICEMateriaGrupoSugerido.Disponible=(Fin)





[Forma.ListaAcciones]
(Inicio)=Seleccionar
Seleccionar=Aplicar
Aplicar=Borrar
Borrar=(Fin)
