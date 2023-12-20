-- Finden Sie heraus wie viele Kopien von 
-- „Dracula“ im Moment verfügbar sind.

SELECT COUNT(Titel)
FROM Buecher
WHERE Titel='Dracula';

SELECT COUNT(Buecher.Titel)
FROM Ausleihung JOIN Buecher ON Buecher.BuchID=Ausleihung.BuchID
Where Buecher.Titel='Dracula'AND
Ausleihung.RueckgabeDatum is NULL;

SELECT (SELECT COUNT(Titel)
FROM Buecher
WHERE Titel='Dracula') - 
(SELECT COUNT(Buecher.Titel)
FROM Ausleihung JOIN Buecher ON Buecher.BuchID=Ausleihung.BuchID
Where Buecher.Titel='Dracula'AND
Ausleihung.RueckgabeDatum is NULL)
AS Verfügbarekopie;