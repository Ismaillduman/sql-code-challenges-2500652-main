-- Fuegen Sie die Bestellung einer Kundin in unsere Datenbank ein
-- und stellen Sie ihr die Gesamtkosten bereit

-- Bestellungsinformationen sind:
-- Für: Loretta Hundey, 6939 Elka Place, 
-- Im Einkaufskorb: 1 House Salad, 1 Mini Cheeseburgers, 1 Tropical Blue Smoothie,
-- Lieferdatum und Zeit: September 20, 2022, @2PM (14:00)

SELECT * FROM Kunden 
WHERE Kunden.Vorname='Loretta';

INSERT INTO Bestellungen(KundenID, BestellungsDatum)
VALUES('70','2023-12-18 17:30:00');



SELECT * FROM Bestellungen
Where KundenID='70'
ORDER BY BestellungsDatum DESC;  -- BestellungID 1002

INSERT INTO BestellungSpeise(BestellungsID, SpeiseID)
VALUES(1002,(SELECT SpeiseID FROM Speise WHERE Name='House Salad')),
(1002,(SELECT SpeiseID FROM Speise WHERE Name='Mini Cheeseburgers')),
(1002,(SELECT SpeiseID FROM Speise WHERE Name='Tropical Blue Smoothie'));

SELECT * FROM BestellungSpeise 
JOIN Bestellungen ON BestellungSpeise.BestellungsID= Bestellungen.BestellungsID
WHERE Bestellungen.BestellungsID='1002'
ORDER BY Bestellungen.BestellungsDatum DESC;

SELECT SUM (Speise.Preis)
FROM Speise
JOIN BestellungSpeise ON Speise.SpeiseID=BestellungSpeise.SpeiseID
Where BestellungSpeise.BestellungsID= 1002;
