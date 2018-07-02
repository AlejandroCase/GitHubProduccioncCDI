
[Forma]
Clave=CDIAsistenciaDiaria
Icono=21
Modulos=(Todos)
Nombre=<T>Comparativo Asistencia Diaria  <T> + MesNombre( Info.Periodo )

ListaCarpetas=Grafica
CarpetaPrincipal=Grafica
PosicionInicialAlturaCliente=737
PosicionInicialAncho=1288
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
VentanaEscCerrar=S
VentanaEstadoInicial=Maximizado
PosicionInicialIzquierda=-4
PosicionInicialArriba=-4
[Grafica]
Estilo=Gráfica
Clave=Grafica
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CDIAsistenciaDiaria
Fuente={Tahoma, 8, Negro, []}
Grafica3DPor=3
GraficaLeyendaPos=Abajo
GraficaColorFondo=Blanco
GraficaTipoDegradado=Arriba Abajo
GraficaFondo=Fijo
CarpetaVisible=S

ListaSeries=(Lista)
Grafica3D=S
GraficaEnmarcada=S
GraficaLeyenda=S
GraficaAxisBottom=S
GraficaAxisLeft=S
GraficaParedes=S
GraficaEscalaAuto=S
GraficaLeyendaExterior=S
GraficaMarco=S
[Grafica.Grafica.S1]
Tipo=Líneas
TipoMarca=Valor Opcional
Clave=S1
ColorDefinido=Rojo
Color=Automático
Campo=RegistroDiario1
CampoEtiqueta=DiadlaSemanaLetra1
Estilo=Sólido

[Grafica.Grafica.S2]
Tipo=Líneas
TipoMarca=Valor
Campo=RegistroDiario2
Clave=S2
ColorDefinido=Rojo
Color=Automático
Estilo=Sólido
CampoEtiqueta=DiadlaSemanaLetra2




























































































[Grafica.Grafica.S3]
Estilo=Sólido
Tipo=Líneas
TipoMarca=Valor
Campo=RegistroDiario3
CampoEtiqueta=DiadlaSemanaLetra3
Clave=S3
ColorDefinido=Rojo
Color=Automático
















[Grafica.Grafica.S4]
Estilo=Sólido
Tipo=Líneas
TipoMarca=Valor
Campo=RegistroDiario4
CampoEtiqueta=DiadlaSemanaLetra4
Clave=S4
ColorDefinido=Rojo
Color=Automático


[Grafica.Grafica.S5]
Estilo=Sólido
Tipo=Líneas
TipoMarca=Valor
Campo=RegistroDiario5
CampoEtiqueta=DiadlaSemanaLetra5
Clave=S5
ColorDefinido=$004080FF
Color=Definible

[Grafica.Grafica.S6]
Estilo=Sólido
Tipo=Líneas
TipoMarca=Valor
Campo=RegistroDiario6
CampoEtiqueta=DiadlaSemanaLetra6
Clave=S6
ColorDefinido=Rosa
Color=Definible



























[Grafica.ListaSeries]
(Inicio)=S1
S1=S2
S2=S3
S3=S4
S4=S5
S5=S6
S6=(Fin)
