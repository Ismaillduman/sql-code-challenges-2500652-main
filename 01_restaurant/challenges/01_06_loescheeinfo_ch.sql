-- Entfernen Sie eine ungueltige Reservierung aus der Datenbank.

-- Ein Kunde namens Norby hat uns informiert, dass er seine Reservierung
-- für Freitag stornieren moechte. Heute ist der 24.Juli 2022.
SELECT ReservierungsID FROM Reservierung JOIN Kunden ON Reservierung.KundenID=Kunden.KundenID
WHERE Kunden.Vorname='Norby'
AND Reservierung.Datum > '2022-05-23';

DELETE FROM Reservierung
WHERE ReservierungsID=(SELECT ReservierungsID FROM Reservierung JOIN Kunden ON Reservierung.KundenID=Kunden.KundenID
WHERE Kunden.Vorname='Norby'
AND Reservierung.Datum > '2022-05-23');

SELECT * FROM Reservierung 
WHERE ReservierungsID=(SELECT ReservierungsID FROM Reservierung JOIN Kunden ON Reservierung.KundenID=Kunden.KundenID
WHERE Kunden.Vorname='Norby'
AND Reservierung.Datum > '2022-05-23');