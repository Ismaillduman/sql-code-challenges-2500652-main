-- Erstellen Sie eine Liste von Büchern, deren Ausleihfrist am Sndet. 
-- Diese Liste soll auch den Namen der ausleihenden Person, 
-- sowie deren Email-Adresse enthalten. 

SELECT Mitglieder.Vorname, Mitglieder.Email, Ausleihung.Rueckgabefrist, Buecher.Titel
FROM Ausleihung JOIN Mitglieder ON Ausleihung.MitgliedsID=Mitglieder.MitgliedsID
JOIN Buecher ON Buecher.BuchID=Ausleihung.BuchID
WHERE Ausleihung.Rueckgabefrist='2024-01-05'
AND Ausleihung.RueckgabeDatum IS NULL;


