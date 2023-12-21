-- Pflegen Sie die Rückgabe der folgenden Bücher in die Datenbank ein.
-- Nutzen Sie dafür die Barcodes.
-- Rückgabedatum ist der 5. Juli 2022.

-- Buch 1: 6435968624
-- Buch 2: 5677520613
-- Buch 3: 8730298424

UPDATE Ausleihung SET RueckgabeDatum ='2023-12-05'
WHERE BuchID=(SELECT BuchID FROM Buecher WHERE Barcode='6435968624');

UPDATE Ausleihung SET RueckgabeDatum ='2023-12-05'
WHERE BuchID=(SELECT BuchID FROM Buecher WHERE Barcode='5677520613');

UPDATE Ausleihung SET RueckgabeDatum ='2023-12-05'
WHERE BuchID=(SELECT BuchID FROM Buecher WHERE Barcode='8730298424');

SELECT Buecher.BuchID, Titel,RueckgabeDatum, Vorname FROM Ausleihung
JOIN Buecher ON Ausleihung.BuchID=Buecher.BuchID
JOIN Mitglieder ON Mitglieder.MitgliedsID=Ausleihung.MitgliedsID
WHERE RueckgabeDatum='2023-12-05';