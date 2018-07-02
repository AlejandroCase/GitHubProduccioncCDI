;08
[Forma]
Clave=SDKExamen
Icono=0
Modulos=(Todos)
Nombre=SDKExamen

ListaCarpetas=SDKExamen
CarpetaPrincipal=SDKExamen
PosicionInicialAlturaCliente=233
PosicionInicialAncho=792
PosicionInicialIzquierda=179
PosicionInicialArriba=149
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
BarraHerramientas=S
[SDKExamen]
Estilo=Ficha
Clave=SDKExamen
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=SDKExamen
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S
FichaEspacioEntreLineas=12
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata





[SDKExamen.Columnas]
Proveedor=64
Nombre=184
Sucursal=64
Nombre_1=304




[FormaExtraValor.Columnas]
VerCampo=278
VerValor=303

[SituacionCta.Columnas]
0=188
1=148
2=-2
3=-2
4=-2

[(Carpeta Abrir).Columnas]
0=114
1=362




[SDKExamen.SDKExamen.Proveedor]
Carpeta=SDKExamen
Clave=SDKExamen.Proveedor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[Lista.Columnas]
0=116
1=266


[SDKExamen.Prov.Nombre]
Carpeta=SDKExamen
Clave=Prov.Nombre
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]




[SDKExamen.SDKExamen.Sucursal]
Carpeta=SDKExamen
Clave=SDKExamen.Sucursal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[SDKExamen.Sucursal.Nombre]
Carpeta=SDKExamen
Clave=Sucursal.Nombre
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]

[SDKExamen.SDKExamen.Porcentaje]
Carpeta=SDKExamen
Clave=SDKExamen.Porcentaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco


















[Acciones.Guardar]
Nombre=Guardar
Boton=3
NombreDesplegar=&Guarda
GuardarAntes=S
EnBarraAcciones=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=Aceptar
Activo=S
Visible=S
EnBarraHerramientas=S

[Acciones.Cerrar]
Nombre=Cerrar
Boton=23
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=ventana
ClaveAccion=cerrar
Activo=S
Visible=S




[SDKExamen.ListaEnCaptura]
(Inicio)=SDKExamen.Proveedor
SDKExamen.Proveedor=Prov.Nombre
Prov.Nombre=SDKExamen.Sucursal
SDKExamen.Sucursal=Sucursal.Nombre
Sucursal.Nombre=SDKExamen.Porcentaje
SDKExamen.Porcentaje=(Fin)













































[Forma.ListaAcciones]
(Inicio)=Guardar
Guardar=Cerrar
Cerrar=(Fin)
