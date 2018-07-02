[Forma]
Clave=CDIMovAutorizarInsc
Nombre=<T>Autorizar: <T> & Afectar.Mov & <T> <T> & Afectar.MovID
Icono=0
Modulos=(Todos)
ListaCarpetas=(Variables)
CarpetaPrincipal=(Variables)
PosicionInicialIzquierda=521
PosicionInicialArriba=306
PosicionInicialAlturaCliente=118
PosicionInicialAncho=323
VentanaTipoMarco=Diálogo
VentanaPosicionInicial=Centrado
AccionesTamanoBoton=15x5
ListaAcciones=(Lista)
VentanaEscCerrar=S
VentanaExclusiva=S
AccionesDivision=S
AccionesCentro=S
BarraHerramientas=S

VentanaEstadoInicial=Normal
ExpresionesAlMostrar=Asigna(Info.Usuario, Nulo)<BR>Asigna(Info.Contrasena, Nulo)<BR>Asigna(Info.CDIComentarios, Nulo)
[(Variables)]
Estilo=Ficha
Clave=(Variables)
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
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

[(Variables).Info.Usuario]
Carpeta=(Variables)
Clave=Info.Usuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Variables).Info.Contrasena]
Carpeta=(Variables)
Clave=Info.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.Aceptar.Variables Asignar]
Nombre=Variables Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Aceptar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Asigna(Temp.Reg, SQL(<T>SELECT u.Usuario, u.Contrasena FROM Usuario u, UsuarioD d WHERE u.Usuario=:tUsuario AND u.Usuario=d.Usuario AND d.Empresa=:tEmp<T>, Info.Usuario, Empresa))<BR>Si<BR>  Temp.Reg[1]=Info.Usuario<BR>Entonces<BR>  Si<BR>    SQL(<T>SELECT Estatus FROM Usuario WHERE Usuario=:tUsuario<T>, Info.Usuario)=EstatusAlta<BR>  Entonces<BR>    Si<BR>      (Temp.Reg[2] = Info.Contrasena) o (Temp.Reg[2] = MD5(Info.Contrasena, <T>p<T>))<BR>    Entonces<BR>     // ProcesarSQL(<T>EXEC xpCDIAutorizarMovInsc :tEmpresa, :nSucursal, :tModulo, :nID, :tMov, :tAccion, :tUsuario, :tComentarios<T>, Empresa, Sucursal, Info.Modulo, Info.ID, Info.Mov, <T>AUTORIZAR<T>, Info.Usuario, Info.CDIComentarios)<BR>      Asigna(Info.EstacionTrabajo,EstacionTrabajo)<BR>      ProcesarSql(<T>xpCDICalInsc1 :nM, :nE, :nB,:tU, :tO<T>,info.CDIMembresia,{EstacionTrabajo},1,Info.usuario, Info.CDIComentarios )<BR>    Sino<BR>      Error(<T>Contraseña Incorrecta<T>)<BR>    Fin<BR>  SiNo<BR>    Error(<T>Usuario Inactivo<T>)<BR>  Fin<BR>Sino<BR>  Error(<T>Usuario Incorrecto<T>)<BR>Fin
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreDesplegar=&Autorizar
Multiple=S
EnBarraAcciones=S
ListaAccionesMultiples=(Lista)
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S

[Acciones.Cancelar]
Nombre=Cancelar
Boton=36
NombreDesplegar=<T>&Cancelar<T>
EnBarraAcciones=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S
NombreEnBoton=S
EnBarraHerramientas=S

[Acciones.Aceptar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S







[(Variables).ListaEnCaptura]
(Inicio)=Info.Usuario
Info.Usuario=Info.Contrasena
Info.Contrasena=Info.CDIComentarios
Info.CDIComentarios=(Fin)

[(Variables).Info.CDIComentarios]
Carpeta=(Variables)
Clave=Info.CDIComentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Acciones.Rechazar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Rechazar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Asigna(Temp.Reg, SQL(<T>SELECT u.Usuario, u.Contrasena FROM Usuario u, UsuarioD d WHERE u.Usuario=:tUsuario AND u.Usuario=d.Usuario AND d.Empresa=:tEmp<T>, Info.Usuario, Empresa))<BR>Si<BR>  Temp.Reg[1]=Info.Usuario<BR>Entonces<BR>  Si<BR>    SQL(<T>SELECT Estatus FROM Usuario WHERE Usuario=:tUsuario<T>, Info.Usuario)=EstatusAlta<BR>  Entonces<BR>    Si<BR>      (Temp.Reg[2] = Info.Contrasena) o (Temp.Reg[2] = MD5(Info.Contrasena, <T>p<T>))<BR>    Entonces<BR>      ProcesarSQL(<T>EXEC xpCDIRechazarMov :tEmpresa, :nSucursal, :tModulo, :nID, :tMov, :tAccion, :tUsuario, :tComentarios<T>, Empresa, Sucursal, Info.Modulo, Info.ID, Info.Mov, <T>AUTORIZAR<T>, Info.Usuario, Info.CDIComentarios)<BR>    Sino<BR>      Error(<T>Contraseña Incorrecta<T>)<BR>    Fin<BR>  Sino<BR>    Error(<T>Usuario Inactivo<T>) <BR>  Fin<BR>Sino<BR>  Error(<T>Usuario Incorrecto<T>)<BR>Fin
[Acciones.Rechazar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S


[Acciones.Regresar.Asignar]
Nombre=Asignar
Boton=0
TipoAccion=Controles Captura
ClaveAccion=Variables Asignar
Activo=S
Visible=S

[Acciones.Regresar.Expresion]
Nombre=Expresion
Boton=0
TipoAccion=Expresion
Activo=S
Visible=S



Expresion=Asigna(Temp.Reg, SQL(<T>SELECT u.Usuario, u.Contrasena FROM Usuario u, UsuarioD d WHERE u.Usuario=:tUsuario AND u.Usuario=d.Usuario AND d.Empresa=:tEmp<T>, Info.Usuario, Empresa))<BR>Si<BR>  Temp.Reg[1]=Info.Usuario<BR>Entonces<BR>  Si<BR>    SQL(<T>SELECT Estatus FROM Usuario WHERE Usuario=:tUsuario<T>, Info.Usuario)=EstatusAlta<BR>  Entonces<BR>    Si<BR>      (Temp.Reg[2] = Info.Contrasena) o (Temp.Reg[2] = MD5(Info.Contrasena, <T>p<T>))<BR>    Entonces<BR>      Dialogo(<T>CDIMovRegresarFlujo<T>)<BR>    Sino<BR>      Error(<T>Contraseña Incorrecta<T>)<BR>    Fin<BR>  Sino<BR>    Error(<T>Usuario Inactivo<T>)<BR>  Fin<BR>Sino<BR>  Error(<T>Usuario Incorrecto<T>)<BR>Fin
[Acciones.Regresar.Aceptar]
Nombre=Aceptar
Boton=0
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S




[Acciones.Regresar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Expresion
Expresion=Aceptar
Aceptar=(Fin)








[Acciones.Rechazar.ListaAccionesMultiples]
(Inicio)=Asignar
Asignar=Expresion
Expresion=Aceptar
Aceptar=(Fin)




[Lista.Columnas]
0=99
1=375






[Acciones.Aceptar.ListaAccionesMultiples]
(Inicio)=Variables Asignar
Variables Asignar=Expresion
Expresion=Aceptar
Aceptar=(Fin)



[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
