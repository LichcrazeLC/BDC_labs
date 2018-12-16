use universitatea

DROP TRIGGER IF EXISTS Inregistrare_noua 
GO
CREATE TRIGGER Inregistrare_noua ON plan_studii.orarul
AFTER UPDATE
AS SET NOCOUNT ON
IF UPDATE(Auditoriu)
SELECT 'Disciplina ' + UPPER(plan_studii.discipline.Disciplina)+ 
		'Grupa: ' + grupe.Cod_Grupa +
		'Ziua: ' + CAST(inserted.Zi as VARCHAR(5)) + 
		'Ora ' + CAST(inserted.Ora as VARCHAR(5)) + 
		'Auditoriul nou: ' + CAST(inserted.Auditoriu as VARCHAR(5)) + CAST(inserted.Bloc as VARCHAR(5)) +
		'Auditoriul vechi: ' + CAST(deleted.Auditoriu as VARCHAR(5))
FROM inserted,deleted, plan_studii.discipline, grupe
WHERE deleted.Id_Disciplina = plan_studii.discipline.Id_Disciplina
AND inserted.Id_Grupa = grupe.Id_Grupa
GO

UPDATE plan_studii.orarul
SET Auditoriu = 200
WHERE Id_Grupa = 1 AND Id_Profesor = 117; 