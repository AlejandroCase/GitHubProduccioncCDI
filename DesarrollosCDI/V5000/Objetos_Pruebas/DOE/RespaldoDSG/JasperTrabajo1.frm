[Forma]
Clave=JasperTrabajo1
Nombre=Trabajo Jasper Intelisis Service
Icono=0
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialAlturaCliente=291
PosicionInicialAncho=559
PosicionColumna1=47
PosicionInicialIzquierda=829
PosicionInicialArriba=392
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
PosicionCol1=262

VentanaEstadoInicial=Normal
PosicionSec1=110
[Ficha]
Estilo=Ficha
Clave=Ficha
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=JasperTrabajo1
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
PestanaOtroNombre=S








Pestana=S
PestanaNombre=Datos Generales
[Lista.Columnas]
Cubo=110
Nombre=371

Descripcion=604
Trabajo=229
Empresa=71
0=99
1=375
[Acciones.Aceptar]
Nombre=Aceptar
Boton=3
NombreEnBoton=S
NombreDesplegar=&Guardar y cerrar
GuardarAntes=S
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S



[Remoto.Cubo.ServidorRemoto]
Carpeta=Remoto
Clave=Cubo.ServidorRemoto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Remoto.Cubo.BaseDatosRemoto]
Carpeta=Remoto
Clave=Cubo.BaseDatosRemoto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Remoto.Cubo.CuboRemoto]
Carpeta=Remoto
Clave=Cubo.CuboRemoto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco






[Remoto.ListaEnCaptura]
(Inicio)=Cubo.ServidorRemoto
Cubo.ServidorRemoto=Cubo.BaseDatosRemoto
Cubo.BaseDatosRemoto=Cubo.CuboRemoto
Cubo.CuboRemoto=(Fin)






[Lista.JasperTrabajo1.Nombre]
Carpeta=Lista
Clave=JasperTrabajo1.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco



[Ficha.JasperTrabajo1.Trabajo]
Carpeta=Ficha
Clave=JasperTrabajo1.Trabajo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco

[Ficha.JasperTrabajo1.Nombre]
Carpeta=Ficha
Clave=JasperTrabajo1.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco

[Ficha.JasperTrabajo1.Descripcion]
Carpeta=Ficha
Clave=JasperTrabajo1.Descripcion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=57
ColorFondo=Blanco

[Ficha.JasperTrabajo1.UltimaActualizacion]
Carpeta=Ficha
Clave=JasperTrabajo1.UltimaActualizacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=57
ColorFondo=$00F0F0F0


[Ficha.JasperTrabajo1.Activo]
Carpeta=Ficha
Clave=JasperTrabajo1.Activo
Editar=S
3D=S
Tamano=24
ColorFondo=Blanco

LineaNueva=S


[Ficha.JasperTrabajo1.Frecuencia]
Carpeta=Ficha
Clave=JasperTrabajo1.Frecuencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
EspacioPrevio=S



[Ficha.JasperTrabajo1.Usuario]
Carpeta=Ficha
Clave=JasperTrabajo1.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

EspacioPrevio=S
[Ficha.JasperTrabajo1.Contrasena]
Carpeta=Ficha
Clave=JasperTrabajo1.Contrasena
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco




[Lista.JasperTrabajo1.Trabajo]
Carpeta=Lista
Clave=JasperTrabajo1.Trabajo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco














[Detalle.JasperTrabajoD.StoreProcedure]
Carpeta=Detalle
Clave=JasperTrabajoD.StoreProcedure
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[Detalle.JasperTrabajoD.Orden]
Carpeta=Detalle
Clave=JasperTrabajoD.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco



[Detalle.Columnas]
Trabajo=124
StoreProcedure=273
Orden=64





[Lista.ListaEnCaptura]
(Inicio)=JasperTrabajo1.Trabajo
JasperTrabajo1.Trabajo=JasperTrabajo1.Nombre
JasperTrabajo1.Nombre=(Fin)







[Detalle.ListaEnCaptura]
(Inicio)=JasperTrabajoD.StoreProcedure
JasperTrabajoD.StoreProcedure=JasperTrabajoD.Orden
JasperTrabajoD.Orden=(Fin)























[Acciones.Trabajo]
Nombre=Trabajo
Boton=7
NombreEnBoton=S
NombreDesplegar=Generar Trabajo
EnBarraHerramientas=S
TipoAccion=Expresion
Visible=S







EspacioPrevio=S
GuardarAntes=S
Activo=S
Expresion=ProcesarSQL(<T>EXEC spCrearJobsJasperTrabajo :Trabajo, :BaseDatos, :Usuario<T>, JasperTrabajo1:JasperTrabajo1.Trabajo, BaseDatos, Usuario)<BR>ActualizarVista
[Diaria]
Estilo=Ficha
Pestana=S
Clave=Diaria
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=JasperTrabajo1
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
PestanaOtroNombre=S
PestanaNombre=Diaria

PermiteEditar=S

CondicionVisible=JasperTrabajo1:JasperTrabajo1.Frecuencia=<T>Diaria<T>
[Semanal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Semanal
Clave=Semanal
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=JasperTrabajo1
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









CondicionVisible=JasperTrabajo1:JasperTrabajo1.Frecuencia=<T>Semanal<T>
[Mensual]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Mensual
Clave=Mensual
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=JasperTrabajo1
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





CondicionVisible=JasperTrabajo1:JasperTrabajo1.Frecuencia=<T>Mensual<T>
[Mensual2]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Mensual 2
Clave=Mensual2
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=JasperTrabajo1
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






CondicionVisible=JasperTrabajo1:JasperTrabajo1.Frecuencia=<T>Mensual 2<T>
[Diaria.JasperTrabajo1.Valor]
Carpeta=Diaria
Clave=JasperTrabajo1.Valor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Diaria.JasperTrabajo1.HoraInicial]
Carpeta=Diaria
Clave=JasperTrabajo1.HoraInicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

EspacioPrevio=S
[Diaria.JasperTrabajo1.HoraFinal]
Carpeta=Diaria
Clave=JasperTrabajo1.HoraFinal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[Diaria.JasperTrabajo1.ValorD]
Carpeta=Diaria
Clave=JasperTrabajo1.ValorD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
Tamano=7
[Diaria.JasperTrabajo1.FrecuenciaD]
Carpeta=Diaria
Clave=JasperTrabajo1.FrecuenciaD
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=14
ColorFondo=Blanco


[Semanal.JasperTrabajo1.Recurrencia]
Carpeta=Semanal
Clave=JasperTrabajo1.Recurrencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=7
[Semanal.JasperTrabajo1.HoraInicial]
Carpeta=Semanal
Clave=JasperTrabajo1.HoraInicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

EspacioPrevio=S
[Semanal.JasperTrabajo1.HoraFinal]
Carpeta=Semanal
Clave=JasperTrabajo1.HoraFinal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=6
ColorFondo=Blanco

[Semanal.JasperTrabajo1.Domingo]
Carpeta=Semanal
Clave=JasperTrabajo1.Domingo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=N
[Semanal.JasperTrabajo1.Lunes]
Carpeta=Semanal
Clave=JasperTrabajo1.Lunes
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
[Semanal.JasperTrabajo1.Martes]
Carpeta=Semanal
Clave=JasperTrabajo1.Martes
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Semanal.JasperTrabajo1.Miercoles]
Carpeta=Semanal
Clave=JasperTrabajo1.Miercoles
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Semanal.JasperTrabajo1.Jueves]
Carpeta=Semanal
Clave=JasperTrabajo1.Jueves
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Semanal.JasperTrabajo1.Viernes]
Carpeta=Semanal
Clave=JasperTrabajo1.Viernes
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Semanal.JasperTrabajo1.Sabado]
Carpeta=Semanal
Clave=JasperTrabajo1.Sabado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

[Semanal.JasperTrabajo1.ValorD]
Carpeta=Semanal
Clave=JasperTrabajo1.ValorD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
Tamano=7
[Semanal.JasperTrabajo1.FrecuenciaD]
Carpeta=Semanal
Clave=JasperTrabajo1.FrecuenciaD
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco


[Mensual.JasperTrabajo1.Valor]
Carpeta=Mensual
Clave=JasperTrabajo1.Valor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=7
[Mensual.JasperTrabajo1.Recurrencia]
Carpeta=Mensual
Clave=JasperTrabajo1.Recurrencia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=7
[Mensual.JasperTrabajo1.HoraInicial]
Carpeta=Mensual
Clave=JasperTrabajo1.HoraInicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

EspacioPrevio=S
[Mensual.JasperTrabajo1.HoraFinal]
Carpeta=Mensual
Clave=JasperTrabajo1.HoraFinal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=7
ColorFondo=Blanco

[Mensual.JasperTrabajo1.ValorD]
Carpeta=Mensual
Clave=JasperTrabajo1.ValorD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
Tamano=7
[Mensual.JasperTrabajo1.FrecuenciaD]
Carpeta=Mensual
Clave=JasperTrabajo1.FrecuenciaD
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=22
ColorFondo=Blanco


[Mensual2.JasperTrabajo1.Tipo]
Carpeta=Mensual2
Clave=JasperTrabajo1.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Mensual2.JasperTrabajo1.Dia]
Carpeta=Mensual2
Clave=JasperTrabajo1.Dia
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=18
ColorFondo=Blanco

[Mensual2.JasperTrabajo1.HoraInicial]
Carpeta=Mensual2
Clave=JasperTrabajo1.HoraInicial
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

EspacioPrevio=S
[Mensual2.JasperTrabajo1.HoraFinal]
Carpeta=Mensual2
Clave=JasperTrabajo1.HoraFinal
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=9
ColorFondo=Blanco

[Mensual2.JasperTrabajo1.ValorD]
Carpeta=Mensual2
Clave=JasperTrabajo1.ValorD
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

EspacioPrevio=S
Tamano=10
[Mensual2.JasperTrabajo1.FrecuenciaD]
Carpeta=Mensual2
Clave=JasperTrabajo1.FrecuenciaD
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=18
ColorFondo=Blanco







[Ficha.ListaEnCaptura]
(Inicio)=JasperTrabajo1.Trabajo
JasperTrabajo1.Trabajo=JasperTrabajo1.Nombre
JasperTrabajo1.Nombre=JasperTrabajo1.Descripcion
JasperTrabajo1.Descripcion=JasperTrabajo1.UltimaActualizacion
JasperTrabajo1.UltimaActualizacion=JasperTrabajo1.Activo
JasperTrabajo1.Activo=JasperTrabajo1.Frecuencia
JasperTrabajo1.Frecuencia=JasperTrabajo1.Usuario
JasperTrabajo1.Usuario=JasperTrabajo1.Contrasena
JasperTrabajo1.Contrasena=(Fin)





[Diaria.ListaEnCaptura]
(Inicio)=JasperTrabajo1.Valor
JasperTrabajo1.Valor=JasperTrabajo1.HoraInicial
JasperTrabajo1.HoraInicial=JasperTrabajo1.HoraFinal
JasperTrabajo1.HoraFinal=JasperTrabajo1.ValorD
JasperTrabajo1.ValorD=JasperTrabajo1.FrecuenciaD
JasperTrabajo1.FrecuenciaD=(Fin)











[Semanal.ListaEnCaptura]
(Inicio)=JasperTrabajo1.Recurrencia
JasperTrabajo1.Recurrencia=JasperTrabajo1.HoraInicial
JasperTrabajo1.HoraInicial=JasperTrabajo1.HoraFinal
JasperTrabajo1.HoraFinal=JasperTrabajo1.Lunes
JasperTrabajo1.Lunes=JasperTrabajo1.Martes
JasperTrabajo1.Martes=JasperTrabajo1.Miercoles
JasperTrabajo1.Miercoles=JasperTrabajo1.Jueves
JasperTrabajo1.Jueves=JasperTrabajo1.Viernes
JasperTrabajo1.Viernes=JasperTrabajo1.Sabado
JasperTrabajo1.Sabado=JasperTrabajo1.Domingo
JasperTrabajo1.Domingo=JasperTrabajo1.ValorD
JasperTrabajo1.ValorD=JasperTrabajo1.FrecuenciaD
JasperTrabajo1.FrecuenciaD=(Fin)















[Mensual.ListaEnCaptura]
(Inicio)=JasperTrabajo1.Valor
JasperTrabajo1.Valor=JasperTrabajo1.Recurrencia
JasperTrabajo1.Recurrencia=JasperTrabajo1.HoraInicial
JasperTrabajo1.HoraInicial=JasperTrabajo1.HoraFinal
JasperTrabajo1.HoraFinal=JasperTrabajo1.ValorD
JasperTrabajo1.ValorD=JasperTrabajo1.FrecuenciaD
JasperTrabajo1.FrecuenciaD=(Fin)





































[Mensual2.ListaEnCaptura]
(Inicio)=JasperTrabajo1.Tipo
JasperTrabajo1.Tipo=JasperTrabajo1.Dia
JasperTrabajo1.Dia=JasperTrabajo1.HoraInicial
JasperTrabajo1.HoraInicial=JasperTrabajo1.HoraFinal
JasperTrabajo1.HoraFinal=JasperTrabajo1.ValorD
JasperTrabajo1.ValorD=JasperTrabajo1.FrecuenciaD
JasperTrabajo1.FrecuenciaD=(Fin)

































[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Diaria
Diaria=Semanal
Semanal=Mensual
Mensual=Mensual2
Mensual2=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Trabajo
Trabajo=(Fin)
