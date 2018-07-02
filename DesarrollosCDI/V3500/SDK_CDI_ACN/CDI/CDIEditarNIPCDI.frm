
[Forma]
Clave=CDIEditarNIPCDI
Icono=25
Modulos=(Todos)
Nombre=EDITAR NIPCDI

ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEstadoInicial=Normal
PosicionInicialIzquierda=487
PosicionInicialArriba=499
PosicionInicialAlturaCliente=88
PosicionInicialAncho=459
ListaAcciones=(Lista)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=$00C8D0D4
CarpetaVisible=S
PermiteEditar=S
ListaEnCaptura=(Lista)

[(Variables).Info.CDINIP]
Carpeta=(Variables)
Clave=Info.CDINIP
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=$00C8D0D4
Efectos=[Negritas]


[(Variables).Info.CDIEditar]
Carpeta=(Variables)
Clave=Info.CDIEditar
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.CDIPorValor]
Carpeta=(Variables)
Clave=Info.CDIPorValor
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


[Acciones.Guardarycerrar]
Nombre=Guardarycerrar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
Multiple=S
EnBarraHerramientas=S
Activo=S
Visible=S

ListaAccionesMultiples=(Lista)
[Acciones.Salir]
Nombre=Salir
Boton=5
NombreEnBoton=S
NombreDesplegar=&Salir
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S






[Acciones.Guardarycerrar.Asigna]
Nombre=Asigna
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Guardarycerrar.Ejecuta]
Nombre=Ejecuta
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=EjecutarSQL(<T>EXEC spCDIEditarNIPCDI :tClave, :tNIPCDI, :tEditar, :tPorValor, :tTipo<T>, Info.Clave, Info.CDINIP, Info.CDIEditar, Info.CDIPorValor, Info.Forma)<BR>Si<BR> Info.Forma = <T>Personal<T><BR>Entonces<BR>  OtraForma( <T>Personal<T>, Forma.ActualizarForma )<BR>Sino<BR>  Si<BR>  Info.Forma = <T>Prov<T><BR>Entonces<BR>  OtraForma( <T>Prov<T>, Forma.ActualizarForma )<BR>Sino<BR>  Si<BR>  Info.Forma = <T>Cte<T><BR>Entonces<BR>   OtraForma( <T>Cte<T>, Forma.ActualizarForma )<BR>Sino<BR>Si<BR>  Info.Forma = <T>Socio<T><BR>Entonces<BR>   OtraForma( <T>CDISocios<T>, Forma.ActualizarForma )<BR>Sino<BR>  1<BR>Fin<BR>Fin<BR>Fin                                                                                                <BR>Fin
[Acciones.Guardarycerrar.Cerrar]
Nombre=Cerrar
Boton=0
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S


[(Variables).ListaEnCaptura]
(Inicio)=Info.CDINIP
Info.CDINIP=Info.CDIEditar
Info.CDIEditar=Info.CDIPorValor
Info.CDIPorValor=(Fin)






















[Acciones.Guardarycerrar.ListaAccionesMultiples]
(Inicio)=Asigna
Asigna=Ejecuta
Ejecuta=Cerrar
Cerrar=(Fin)



[Forma.ListaAcciones]
(Inicio)=Guardarycerrar
Guardarycerrar=Salir
Salir=(Fin)
