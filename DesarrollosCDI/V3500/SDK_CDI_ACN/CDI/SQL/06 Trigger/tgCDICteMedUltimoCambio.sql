SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

/*
EToral 15/Oct/2010
Trigger que actualiza campo CDIMedUltimoCambio cuando se modifican los campos de Datos Medicos del Cliente
*/

if exists (select * from sysobjects where id = object_id('dbo.tgCDICteMedUltimoCambio') and sysstat & 0xf = 8) drop trigger dbo.tgCDICteMedUltimoCambio
GO
CREATE TRIGGER tgCDICteMedUltimoCambio ON Cte
FOR INSERT, UPDATE
AS BEGIN
  DECLARE
  @Cliente               varchar(10),
  @CDIMedEstaturaN       float,
  @CDIMEdPesoN           float,
  @CDIMedTipoSangreN     varchar(50),
  @CDIMedDonadorN        varchar(2),
  @CDIMedEnfermoN        varchar(2),
  @CDIMedEnfermedadN     varchar(10),
  @CDIMedAlergiaN        varchar(2),
  @CDIMedAlergiasN       varchar(10),
  @CDIMedMedicamentoN    varchar(2),
  @CDIMedMedicamentosN   varchar(10),
  @CDIMedSolicitudesN    varchar(2),
  @CDIMedAvisarN         varchar(50),
  @CDIMedTelefonoN       varchar(50),
  @CDIMedCelularN        varchar(50),
  @CDIMedNombreMedicoN   varchar(60),
  @CDIMedTeleMedicoN     varchar(50),
  @CDIMedCapacidadesN    varchar(255),
  @CDIMedCuidadosN       varchar(255),
  @CDIMedRecomendaN      varchar(255),
  @CDIMedNoTarjetonN     varchar(100),
  @CDIMedVigenciaN       datetime,
  @CDIMedEstaturaA       float,
  @CDIMEdPesoA           float,
  @CDIMedTipoSangreA     varchar(50),
  @CDIMedDonadorA        varchar(2),
  @CDIMedEnfermoA        varchar(2),
  @CDIMedEnfermedadA     varchar(10),
  @CDIMedAlergiaA        varchar(2),
  @CDIMedAlergiasA       varchar(10),
  @CDIMedMedicamentoA    varchar(2),
  @CDIMedMedicamentosA   varchar(10),
  @CDIMedSolicitudesA    varchar(2),
  @CDIMedAvisarA         varchar(50),
  @CDIMedTelefonoA       varchar(50),
  @CDIMedCelularA        varchar(50),
  @CDIMedNombreMedicoA   varchar(60),
  @CDIMedTeleMedicoA     varchar(50),
  @CDIMedCapacidadesA    varchar(255),
  @CDIMedCuidadosA       varchar(255),
  @CDIMedRecomendaA      varchar(255),
  @CDIMedNoTarjetonA     varchar(100),
  @CDIMedVigenciaA       datetime,
  @Ahora                 datetime

  IF UPDATE(TieneMovimientos) OR UPDATE(CDIMedUltimoCambio) RETURN

  SELECT @Ahora = GETDATE()

  SELECT @Cliente = Cliente, 
         @CDIMedEstaturaN = CDIMedEstatura, @CDIMEdPesoN = CDIMEdPeso, @CDIMedTipoSangreN = CDIMedTipoSangre, @CDIMedDonadorN = CDIMedDonador,
         @CDIMedEnfermoN = CDIMedEnfermo, @CDIMedEnfermedadN = CDIMedEnfermedad, @CDIMedAlergiaN = CDIMedAlergia, @CDIMedAlergiasN = CDIMedAlergias,
         @CDIMedMedicamentoN = CDIMedMedicamento, @CDIMedMedicamentosN = CDIMedMedicamentos, @CDIMedSolicitudesN = CDIMedSolicitudes,
         @CDIMedAvisarN = CDIMedAvisar, @CDIMedTelefonoN = CDIMedTelefono, @CDIMedCelularN = CDIMedCelular, @CDIMedNombreMedicoN = CDIMedNombreMedico,
         @CDIMedTeleMedicoN = CDIMedTeleMedico, @CDIMedCapacidadesN = CDIMedCapacidades, @CDIMedCuidadosN = CDIMedCuidados,
         @CDIMedRecomendaN = CDIMedRecomenda, @CDIMedNoTarjetonN = CDIMedNoTarjeton, @CDIMedVigenciaN = CDIMedVigencia
    FROM Inserted

  SELECT @CDIMedEstaturaA = CDIMedEstatura, @CDIMEdPesoA = CDIMEdPeso, @CDIMedTipoSangreA = CDIMedTipoSangre, @CDIMedDonadorA = CDIMedDonador,
         @CDIMedEnfermoA = CDIMedEnfermo, @CDIMedEnfermedadA = CDIMedEnfermedad, @CDIMedAlergiaA = CDIMedAlergia, @CDIMedAlergiasA = CDIMedAlergias,
         @CDIMedMedicamentoA = CDIMedMedicamento, @CDIMedMedicamentosA = CDIMedMedicamentos, @CDIMedSolicitudesA = CDIMedSolicitudes,
         @CDIMedAvisarA = CDIMedAvisar, @CDIMedTelefonoA = CDIMedTelefono, @CDIMedCelularA = CDIMedCelular, @CDIMedNombreMedicoA = CDIMedNombreMedico,
         @CDIMedTeleMedicoA = CDIMedTeleMedico, @CDIMedCapacidadesA = CDIMedCapacidades, @CDIMedCuidadosA = CDIMedCuidados,
         @CDIMedRecomendaA = CDIMedRecomenda, @CDIMedNoTarjetonA = CDIMedNoTarjeton, @CDIMedVigenciaA = CDIMedVigencia
    FROM Deleted

  IF (NULLIF(RTRIM(@CDIMedEstaturaN), '')     IS NOT NULL AND @CDIMedEstaturaN <> @CDIMedEstaturaA) OR 
     (NULLIF(RTRIM(@CDIMEdPesoN), '')         IS NOT NULL AND @CDIMEdPesoN <> @CDIMEdPesoA) OR
     (NULLIF(RTRIM(@CDIMedTipoSangreN), '')   IS NOT NULL AND @CDIMedTipoSangreN <> @CDIMedTipoSangreA) OR
     (NULLIF(RTRIM(@CDIMedDonadorN), '')      IS NOT NULL AND @CDIMedDonadorN <> @CDIMedDonadorA) OR
     (NULLIF(RTRIM(@CDIMedEnfermoN), '')      IS NOT NULL AND @CDIMedEnfermoN <> @CDIMedEnfermoA) OR
     (NULLIF(RTRIM(@CDIMedEnfermedadN), '')   IS NOT NULL AND @CDIMedEnfermedadN <> @CDIMedEnfermedadA) OR
     (NULLIF(RTRIM(@CDIMedAlergiaN), '')      IS NOT NULL AND @CDIMedAlergiaN <> @CDIMedAlergiaA) OR
     (NULLIF(RTRIM(@CDIMedAlergiasN), '')     IS NOT NULL AND @CDIMedAlergiasN <> @CDIMedAlergiasA) OR
     (NULLIF(RTRIM(@CDIMedMedicamentoN), '')  IS NOT NULL AND @CDIMedMedicamentoN <> @CDIMedMedicamentoA) OR
     (NULLIF(RTRIM(@CDIMedMedicamentosN), '') IS NOT NULL AND @CDIMedMedicamentosN <> @CDIMedMedicamentosA) OR
     (NULLIF(RTRIM(@CDIMedSolicitudesN), '')  IS NOT NULL AND @CDIMedSolicitudesN <> @CDIMedSolicitudesA) OR
     (NULLIF(RTRIM(@CDIMedAvisarN), '')       IS NOT NULL AND @CDIMedAvisarN <> @CDIMedAvisarA) OR
     (NULLIF(RTRIM(@CDIMedTelefonoN), '')     IS NOT NULL AND @CDIMedTelefonoN <> @CDIMedTelefonoA) OR
     (NULLIF(RTRIM(@CDIMedCelularN), '')      IS NOT NULL AND @CDIMedCelularN <> @CDIMedCelularA) OR
     (NULLIF(RTRIM(@CDIMedNombreMedicoN), '') IS NOT NULL AND @CDIMedNombreMedicoN <> @CDIMedNombreMedicoA) OR
     (NULLIF(RTRIM(@CDIMedTeleMedicoN), '')   IS NOT NULL AND @CDIMedTeleMedicoN <> @CDIMedTeleMedicoA) OR
     (NULLIF(RTRIM(@CDIMedCapacidadesN), '')  IS NOT NULL AND @CDIMedCapacidadesN <> @CDIMedCapacidadesA) OR
     (NULLIF(RTRIM(@CDIMedCuidadosN), '')     IS NOT NULL AND @CDIMedCuidadosN <> @CDIMedCuidadosA) OR
     (NULLIF(RTRIM(@CDIMedRecomendaN), '')    IS NOT NULL AND @CDIMedRecomendaN <> @CDIMedRecomendaA) OR
     (NULLIF(RTRIM(@CDIMedNoTarjetonN), '')   IS NOT NULL AND @CDIMedNoTarjetonN <> @CDIMedNoTarjetonA) OR
     (NULLIF(RTRIM(@CDIMedVigenciaN), '')     IS NOT NULL AND @CDIMedVigenciaN <> @CDIMedVigenciaA)
    UPDATE Cte SET CDIMedUltimoCambio = @Ahora WHERE Cliente = @Cliente

  RETURN
END
GO