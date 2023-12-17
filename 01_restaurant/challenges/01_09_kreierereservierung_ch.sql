-- Erstellen Sie eine Reservierung für einen Kunden, 
-- dessen Daten eventuell schon in unserer Datenbank sind - oder auch nicht.

-- Die Reservierung ist für:
-- Sam McAdams (smac@kinetecoinc.com), 5 Personen
-- August 12, 2022 @ 6PM (18:00)

SELECT * FROM Kunden
WHERE Email= 'smac@kinetecoinc.com';

INSERT INTO Kunden ( Vorname, Nachname, Email, Telefon)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com', '555-555-5555');

Select * FROM Kunden
where Email='smac@kinetecoinc.com';

INSERT INTO Reservierung (KundenID, Datum,PartyGroesse)
VALUES ('107','2024-12-18 16:30:00', '5');

SELECT Kunden.Vorname, Kunden.Nachname, Kunden.Email, Reservierung.Datum, Reservierung.PartyGroesse  FROM Kunden
JOIN Reservierung ON Kunden.KundenID=Reservierung.KundenID
Where Email='smac@kinetecoinc.com' ;