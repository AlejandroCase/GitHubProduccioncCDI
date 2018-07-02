
[Funcion]
Clave=CDIfnSubMovTipo
Nombre=Clave MovTipo




Parametros=(Lista)

Expresion=sql(<T>select clave from movtipo where Modulo=:tMod and Mov=:tMov<T>,[Modulo],[Origen])
[Funcion.Parametros]
(Inicio)=Modulo
Modulo=Origen
Origen=(Fin)
