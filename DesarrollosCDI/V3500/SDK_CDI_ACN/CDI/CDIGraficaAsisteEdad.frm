
[Forma]
Clave=CDIGraficaAsisteEdad
Icono=0
BarraHerramientas=S
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Grafica de Asistencia Diaria x Edad
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaAcciones=Cerrar
ListaCarpetas=CDIGraficaAsisteEdad
CarpetaPrincipal=CDIGraficaAsisteEdad
PosicionInicialAlturaCliente=436
PosicionInicialAncho=1166
PosicionInicialIzquierda=103
PosicionInicialArriba=156
[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S

[CDIGraficaAsisteEdad]
Estilo=Gráfica
Clave=CDIGraficaAsisteEdad
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIGraficaAsisteEdad
Fuente={Tahoma, 8, Negro, []}
Grafica3DPor=15
GraficaAxisLeft=S
GraficaAxisBottom=S
GraficaMarco=S
GraficaParedes=S
GraficaEscalaAuto=S
GraficaLeyendaPos=Derecha
GraficaColorFondo=Plata
GraficaTipoDegradado=Arriba Abajo
GraficaFondo=Fijo
CarpetaVisible=S

ListaSeries=0
[CDIGraficaAsisteEdad.Grafica.0]
Tipo=Puntos
TipoMarca=Valor
Clave=0
ColorDefinido=Rojo
Color=Automático
Estilo=Rectangulo
Campo=Total
CampoEtiqueta=Edad

ConMarcas=S

[CDIGraficaAsisteEdad.ListaSeries]
(Inicio)=0
0=29
29=(Fin)
