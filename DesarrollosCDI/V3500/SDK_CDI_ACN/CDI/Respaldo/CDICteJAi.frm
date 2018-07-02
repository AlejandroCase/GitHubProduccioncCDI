
[Forma]
Clave=CDICteJAi
Icono=0
Modulos=(Todos)
Nombre=Jai

ListaCarpetas=cdictejai
CarpetaPrincipal=cdictejai
[cdictejai]
Estilo=Hoja
Pestana=S
Clave=cdictejai
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Negro
CarpetaVisible=S


[(Carpeta Abrir).Cte.Cliente]
Carpeta=(Carpeta Abrir)
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[(Carpeta Abrir).Cte.CDISocio]
Carpeta=(Carpeta Abrir)
Clave=Cte.CDISocio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco


[(Carpeta Abrir).Cte.Tipo]
Carpeta=(Carpeta Abrir)
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Categoria]
Carpeta=(Carpeta Abrir)
Clave=Cte.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco


[(Carpeta Abrir).Cte.Descripcion13]
Carpeta=(Carpeta Abrir)
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Descripcion15]
Carpeta=(Carpeta Abrir)
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.CDISocio
Cte.CDISocio=Cte.Nombre
Cte.Nombre=Cte.Tipo
Cte.Tipo=Cte.Categoria
Cte.Categoria=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion15
Cte.Descripcion15=(Fin)
