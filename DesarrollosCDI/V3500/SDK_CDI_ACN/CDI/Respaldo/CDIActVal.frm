
[Forma]
Clave=CDIActVal
Icono=0
Modulos=(Todos)
Nombre=Si(info.numero=1,<T>Actualización<T>,<T>Validación<T>)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
VentanaEscCerrar=S

ListaCarpetas=(Lista)
CarpetaPrincipal=Actualiza
PosicionInicialIzquierda=433
PosicionInicialArriba=228
PosicionInicialAlturaCliente=273
PosicionInicialAncho=500
ExpresionesAlMostrar=Asigna(info.numero,1)<BR>Asigna(info.Cliente,<T>1288100<T>)
[Actualiza]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Actuales
Clave=Actualiza
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
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
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
FiltroGeneral=Cliente={<T>info.Cliente<T>}
[Actualiza.Cte.Nombre]
Carpeta=Actualiza
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Actualiza.Cte.Direccion]
Carpeta=Actualiza
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Actualiza.Cte.DireccionNumero]
Carpeta=Actualiza
Clave=Cte.DireccionNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nvbos]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Actualizar
Clave=Nvbos
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDICteActualiza
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
Filtros=S

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
[Nvbos.CDICteActualiza.Nombre]
Carpeta=Nvbos
Clave=CDICteActualiza.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Nvbos.CDICteActualiza.Direccion]
Carpeta=Nvbos
Clave=CDICteActualiza.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Nvbos.CDICteActualiza.DireccionNumero]
Carpeta=Nvbos
Clave=CDICteActualiza.DireccionNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nvbos.CDICteActualiza.DireccionNumeroInt]
Carpeta=Nvbos
Clave=CDICteActualiza.DireccionNumeroInt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Nvbos.CDICteActualiza.Delegacion]
Carpeta=Nvbos
Clave=CDICteActualiza.Delegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Nvbos.CDICteActualiza.Colonia]
Carpeta=Nvbos
Clave=CDICteActualiza.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Nvbos.CDICteActualiza.Poblacion]
Carpeta=Nvbos
Clave=CDICteActualiza.Poblacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Nvbos.CDICteActualiza.Estado]
Carpeta=Nvbos
Clave=CDICteActualiza.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Nvbos.CDICteActualiza.Pais]
Carpeta=Nvbos
Clave=CDICteActualiza.Pais
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco






[Actualiza.ListaEnCaptura]
(Inicio)=Cte.Nombre
Cte.Nombre=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=(Fin)

[Nvbos.ListaEnCaptura]
(Inicio)=CDICteActualiza.Nombre
CDICteActualiza.Nombre=CDICteActualiza.Direccion
CDICteActualiza.Direccion=CDICteActualiza.DireccionNumero
CDICteActualiza.DireccionNumero=CDICteActualiza.DireccionNumeroInt
CDICteActualiza.DireccionNumeroInt=CDICteActualiza.Delegacion
CDICteActualiza.Delegacion=CDICteActualiza.Colonia
CDICteActualiza.Colonia=CDICteActualiza.Poblacion
CDICteActualiza.Poblacion=CDICteActualiza.Estado
CDICteActualiza.Estado=CDICteActualiza.Pais
CDICteActualiza.Pais=(Fin)

[Forma.ListaCarpetas]
(Inicio)=Actualiza
Actualiza=Nvbos
Nvbos=(Fin)
