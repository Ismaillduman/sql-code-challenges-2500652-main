-- Erstellen Sie eine Liste von Mitgliedern,  
-- die am seltensten Bücher ausgeliehen haben. 

SELECT COUNT(Ausleihung.AusleihID) as AnzahlAusleihung, Mitglieder.Email,Mitglieder.Vorname FROM Ausleihung
JOIN Mitglieder ON Mitglieder.MitgliedsID=Ausleihung.MitgliedsID
GROUP BY Ausleihung.MitgliedsID
ORDER BY AnzahlAusleihung ASC
Limit 15;