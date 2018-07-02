/* Configuracion MS SQL Server */
SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

GO
----------------------------------------------------------
---------------    Tabla de DIM            ---------------
----------------------------------------------------------
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='CDICfgDim') 
CREATE TABLE dbo.CDICfgDim --drop table CDICfgDim
(
	ID              int	NOT NULL   IDENTITY(1,1),
	Empresa         varchar(5)     collate database_default NULL,
	Columna         int	           NOT NULL,
	Titulo			Varchar(90)    collate database_default	null,
	Descripcion		Varchar(300)   collate database_default null,
	Tipo			Varchar (20)   collate database_default null,
	Obligatorio		bit            DEFAULT 0 null,
	Campo			Varchar(100)   collate database_default default '' null ,
	CONSTRAINT PkCDICfgDim PRIMARY KEY  CLUSTERED (ID)   
)
GO
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='CDICfgDimD') 
CREATE TABLE dbo.CDICfgDimD --drop table CDICfgDimD
(
     ID             int  NOT NULL,
	 Renglon		int  NOT NULL,
     NominaConcepto varchar(50) collate database_default  NULL,
     Concepto       varchar(50) collate database_default  NULL,
     CONSTRAINT PkCDICfgDimD PRIMARY KEY  CLUSTERED (ID,Renglon)  
)
GO
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='CDIPasoDIM')
CREATE TABLE dbo.CDIPasoDIM --drop table CDIPasoDIM
(
id int,
Estacion int null,
Personal Varchar(30) collate database_default  null,
Dim1 varchar(50)   collate database_default  null ,
Dim2 varchar(50)   collate database_default  null ,
Dim3 varchar(50)   collate database_default  null ,
Dim4 varchar(50)   collate database_default  null ,
Dim5 varchar(50)   collate database_default  null ,
Dim6 varchar(50)   collate database_default  null ,
Dim7 varchar(50)   collate database_default  null ,
Dim8 varchar(50)   collate database_default  null ,
Dim9 varchar(50)   collate database_default  null ,
Dim10 varchar(50)  collate database_default  null ,
Dim11 varchar(50)  collate database_default  null ,
Dim12 varchar(50)  collate database_default  null ,
Dim13 varchar(50)  collate database_default  null ,
Dim14 varchar(50)  collate database_default  null ,
Dim15 varchar(50)  collate database_default  null ,
Dim16 varchar(50)  collate database_default  null ,
Dim17 varchar(50)  collate database_default  null ,
Dim18 varchar(50)  collate database_default  null ,
Dim19 varchar(50)  collate database_default  null ,
Dim20 varchar(50)  collate database_default  null ,
Dim21 varchar(50)  collate database_default  null ,
Dim22 varchar(50)  collate database_default  null ,
Dim23 varchar(50)  collate database_default  null ,
Dim24 varchar(50)  collate database_default  null ,
Dim25 varchar(50)  collate database_default  null ,
Dim26 varchar(50)  collate database_default  null ,
Dim27 varchar(50)  collate database_default  null ,
Dim28 varchar(50)  collate database_default  null ,
Dim29 varchar(50)  collate database_default  null ,
Dim30 varchar(50)  collate database_default  null , 
Dim31 varchar(50)  collate database_default  null ,
Dim32 varchar(50)  collate database_default  null ,
Dim33 varchar(50)  collate database_default  null ,
Dim34 varchar(50)  collate database_default  null ,
Dim35 varchar(50)  collate database_default  null ,
Dim36 varchar(50)  collate database_default  null ,
Dim37 varchar(50)  collate database_default  null ,
Dim38 varchar(50)  collate database_default  null ,
Dim39 varchar(50)  collate database_default  null ,
Dim40 varchar(50)  collate database_default  null , 
Dim41 varchar(50)  collate database_default  null ,
Dim42 varchar(50)  collate database_default  null ,
Dim43 varchar(50)  collate database_default  null ,
Dim44 varchar(50)  collate database_default  null ,
Dim45 varchar(50)  collate database_default  null ,
Dim46 varchar(50)  collate database_default  null ,
Dim47 varchar(50)  collate database_default  null ,
Dim48 varchar(50)  collate database_default  null ,
Dim49 varchar(50)  collate database_default  null ,
Dim50 varchar(50)  collate database_default  null , 
Dim51 varchar(50)  collate database_default  null ,
Dim52 varchar(50)  collate database_default  null ,
Dim53 varchar(50)  collate database_default  null ,
Dim54 varchar(50)  collate database_default  null ,
Dim55 varchar(50)  collate database_default  null ,
Dim56 varchar(50)  collate database_default  null ,
Dim57 varchar(50)  collate database_default  null ,
Dim58 varchar(50)  collate database_default  null ,
Dim59 varchar(50)  collate database_default  null ,
Dim60 varchar(50)  collate database_default  null , 
Dim61 varchar(50)  collate database_default  null ,
Dim62 varchar(50)  collate database_default  null ,
Dim63 varchar(50)  collate database_default  null ,
Dim64 varchar(50)  collate database_default  null ,
Dim65 varchar(50)  collate database_default  null ,
Dim66 varchar(50)  collate database_default  null ,
Dim67 varchar(50)  collate database_default  null ,
Dim68 varchar(50)  collate database_default  null ,
Dim69 varchar(50)  collate database_default  null ,
Dim70 varchar(50)  collate database_default  null , 
Dim71 varchar(50)  collate database_default  null ,
Dim72 varchar(50)  collate database_default  null ,
Dim73 varchar(50)  collate database_default  null ,
Dim74 varchar(50)  collate database_default  null ,
Dim75 varchar(50)  collate database_default  null ,
Dim76 varchar(50)  collate database_default  null ,
Dim77 varchar(50)  collate database_default  null ,
Dim78 varchar(50)  collate database_default  null ,
Dim79 varchar(50)  collate database_default  null ,
Dim80 varchar(50)  collate database_default  null , 
Dim81 varchar(50)  collate database_default  null ,
Dim82 varchar(50)  collate database_default  null ,
Dim83 varchar(50)  collate database_default  null ,
Dim84 varchar(50)  collate database_default  null ,
Dim85 varchar(50)  collate database_default  null ,
Dim86 varchar(50)  collate database_default  null ,
Dim87 varchar(50)  collate database_default  null ,
Dim88 varchar(50)  collate database_default  null ,
Dim89 varchar(50)  collate database_default  null ,
Dim90 varchar(50)  collate database_default  null , 
Dim91 varchar(50)  collate database_default  null ,
Dim92 varchar(50)  collate database_default  null ,
Dim93 varchar(50)  collate database_default  null ,
Dim94 varchar(50)  collate database_default  null ,
Dim95 varchar(50)  collate database_default  null ,
Dim96 varchar(50)  collate database_default  null ,
Dim97 varchar(50)  collate database_default  null ,
Dim98 varchar(50)  collate database_default  null ,
Dim99 varchar(50)  collate database_default  null ,
Dim100 varchar(50) collate database_default  null , 
Dim101 varchar(50) collate database_default  null ,
Dim102 varchar(50) collate database_default  null ,
Dim103 varchar(50) collate database_default  null ,
Dim104 varchar(50) collate database_default  null ,
Dim105 varchar(50) collate database_default  null ,
Dim106 varchar(50) collate database_default  null ,
Dim107 varchar(50) collate database_default  null ,
Dim108 varchar(50) collate database_default  null ,
Dim109 varchar(50) collate database_default  null ,
Dim110 varchar(50) collate database_default  null , 
Dim111 varchar(50) collate database_default  null ,
Dim112 varchar(50) collate database_default  null ,
Dim113 varchar(50) collate database_default  null ,
Dim114 varchar(50) collate database_default  null ,
Dim115 varchar(50) collate database_default  null ,
Dim116 varchar(50) collate database_default  null ,
Dim117 varchar(50) collate database_default  null ,
Dim118 varchar(50) collate database_default  null ,
Dim119 varchar(50) collate database_default  null ,
Dim120 varchar(50) collate database_default  null , 
Dim121 varchar(50) collate database_default  null ,
Dim122 varchar(50) collate database_default  null ,
Dim123 varchar(50) collate database_default  null ,
Dim124 varchar(50) collate database_default  null ,
Dim125 varchar(50) collate database_default  null ,
Dim126 varchar(50) collate database_default  null ,
Dim127 varchar(50) collate database_default  null ,
Dim128 varchar(50) collate database_default  null ,
Dim129 varchar(50) collate database_default  null ,
Dim130 varchar(50) collate database_default  null , 
Dim131 varchar(50) collate database_default  null ,
Dim132 varchar(50) collate database_default  null ,
Dim133 varchar(50) collate database_default  null ,
Dim134 varchar(50) collate database_default  null ,
Dim135 varchar(50) collate database_default  null ,
Dim136 varchar(50) collate database_default  null ,
Dim137 varchar(50) collate database_default  null ,
Dim138 varchar(50) collate database_default  null ,
Dim139 varchar(50) collate database_default  null ,
Dim140 varchar(50) collate database_default  null
)
GO 
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='CDIPasoPipeDim') 
Create table dbo.CDIPasoPipeDim --drop table CDIPasoPipeDim
(
Estacion int,
Cadena01 text collate database_default null,
Cadena02 text collate database_default null
)
GO  
IF NOT EXISTS (SELECT * FROM Sys.Tables WHERE name='CDIListaConcepto') 
CREATE TABLE dbo.CDIListaConcepto --drop table CDIListaConcepto
(
id int IDENTITY (1,1),
NominaConcepto varchar(50) collate database_default null,
Concepto       varchar(50) collate database_default null,
Empresa        varchar(5)  collate database_default null
)
