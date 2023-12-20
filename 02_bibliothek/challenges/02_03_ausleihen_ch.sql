-- Leihen Sie die Bücher „The Picture of Dorian Gray“ 
--  und „Great Expectations“ an Jack Vaan aus. 
-- Das Ausleihdatum ist der 25. August 2022  
--  und die Ausleihfrist endet am 8. September.
SELECT BuchID From Buecher
Where Barcode= '2855934983';

SELECT BuchID FROM Buecher
WHERE Barcode='5314419343';

SELECT MitgliedsID FROM Mitglieder
WHERE Email='jvaan@wisdompets.com';


INSERT INTO Ausleihung (BuchID, MitgliedsID,AusleihDatum,Rueckgabefrist)
VALUES ((SELECT BuchID FROM Buecher
WHERE Barcode='5314419343'), (SELECT MitgliedsID FROM Mitglieder
WHERE Email='jvaan@wisdompets.com'), '2023-12-20','2024-01-05'
);

SELECT * FROM Ausleihung
JOIN Buecher ON Buecher.BuchID=Ausleihung.BuchID
WHERE Ausleihung.MitgliedsID= (SELECT MitgliedsID FROM Mitglieder
WHERE Email='jvaan@wisdompets.com')
ORDER BY AusleihDatum DESC;