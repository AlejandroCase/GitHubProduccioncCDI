
[Forma]
Clave=CDIGraficaAsisteHora
Icono=0
Modulos=(Todos)
Nombre=Grafica de Asistencia x Hora

ListaCarpetas=CDIGraficaAsisteHora
CarpetaPrincipal=CDIGraficaAsisteHora
PosicionInicialIzquierda=53
PosicionInicialArriba=141
PosicionInicialAlturaCliente=408
PosicionInicialAncho=1258
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=Cerrar
BarraHerramientas=S
[CDIRptAsistenciaDiaria.Grafica.S1]
Estilo=Circulo
Tipo=Puntos
TipoMarca=Valor
Campo=H13
CampoEtiqueta=horaregistro
Clave=S1
ColorDefinido=Rojo
Color=Automático


[CDIRptAsistenciaDiaria.Grafica.s2]
Estilo=Sólido
Tipo=Líneas
TipoMarca=Valor
Campo=H16
CampoEtiqueta=horaregistro
Clave=s2
ColorDefinido=Rojo
Color=Automático



































[CDIRptAsistenciaDiaria.ListaSeries]
(Inicio)=S1
S1=s2
s2=(Fin)

[CDIGraficaAsisteHora]
Estilo=Gráfica
Clave=CDIGraficaAsisteHora
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIGraficaAsisteHora
Fuente={Tahoma, 8, Negro, []}
ListaSeries=(Lista)

Grafica3DPor=5
GraficaAxisLeft=S
GraficaAxisBottom=S
GraficaMarco=S
GraficaParedes=S
GraficaLeyenda=S
GraficaLeyendaExterior=S
GraficaEscalaAuto=S
GraficaLeyendaPos=Derecha
GraficaColorFondo=Plata
GraficaTipoDegradado=Arriba Abajo
GraficaFondo=Fijo
CarpetaVisible=S



[CDIGraficaAsisteHora.Grafica.6:00]
Estilo=Rectangulo
Tipo=Puntos
Campo=H6
CampoEtiqueta=Hora
Clave=6:00
ColorDefinido=Negro

Color=Automático

[CDIGraficaAsisteHora.Grafica.7:00]
Estilo=Rectangulo
Tipo=Puntos
Campo=H7
CampoEtiqueta=Hora
Clave=7:00
ColorDefinido=Negro
Color=Automático

[CDIGraficaAsisteHora.Grafica.13:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Etiqueta
Campo=H13
CampoEtiqueta=Hora
Clave=13:00
ColorDefinido=Rojo
Color=Automático


[CDIGraficaAsisteHora.Grafica.8:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H8
CampoEtiqueta=Hora
Clave=8:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.9:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H9
CampoEtiqueta=Hora
Clave=9:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.10:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H10
CampoEtiqueta=Hora
Clave=10:00
ColorDefinido=Rojo
Color=Automático




[CDIGraficaAsisteHora.Grafica.11:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H11
CampoEtiqueta=Hora
Clave=11:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.12:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H12
CampoEtiqueta=Hora
Clave=12:00
ColorDefinido=Rojo
Color=Automático








[CDIGraficaAsisteHora.Grafica.14:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Etiqueta
Campo=H14
CampoEtiqueta=Hora
Clave=14:00
ColorDefinido=Rojo
Color=Automático




[CDIGraficaAsisteHora.Grafica.15:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H15
CampoEtiqueta=Hora
Clave=15:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.16:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H16
CampoEtiqueta=Hora
Clave=16:00
ColorDefinido=Rojo
Color=Automático






[CDIGraficaAsisteHora.Grafica.17:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H17
CampoEtiqueta=Hora
Clave=17:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.18:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H18
CampoEtiqueta=Hora
Clave=18:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.19:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H19
CampoEtiqueta=Hora
Clave=19:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.20:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H20
CampoEtiqueta=Hora
Clave=20:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.21:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H21
CampoEtiqueta=Hora
Clave=21:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.22:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H22
CampoEtiqueta=Hora
Clave=22:00
ColorDefinido=Rojo
Color=Automático

[CDIGraficaAsisteHora.Grafica.23:00]
Estilo=Rectangulo
Tipo=Puntos
TipoMarca=Valor
Campo=H23
CampoEtiqueta=Hora
Clave=23:00
ColorDefinido=Rojo
Color=Automático










[Acciones.Cerrar]
Nombre=Cerrar
Boton=36
NombreEnBoton=S
NombreDesplegar=&Cerrar
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Visible=S
EnBarraHerramientas=S

[CDIGraficaAsisteHora.ListaSeries]
(Inicio)=6:00
6:00=7:00
7:00=8:00
8:00=9:00
9:00=10:00
10:00=11:00
11:00=12:00
12:00=13:00
13:00=14:00
14:00=15:00
15:00=16:00
16:00=17:00
17:00=18:00
18:00=19:00
19:00=20:00
20:00=21:00
21:00=22:00
22:00=23:00
23:00=(Fin)
