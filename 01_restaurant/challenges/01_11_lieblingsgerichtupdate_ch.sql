-- Updaten Sie die Informationen in der Datenbank.

-- Tragen Sie Cleo Goldwaters Lieblingsgericht 
-- als "Quinoa Salmon Salad" ein.

SELECT * FROM Kunden
WHERE Kunden.Vorname='Cleo';

SELECT SpeiseID From Speise
Where Speise.Name='Quinoa Salmon Salad';

UPDATE Kunden SET LieblingsGericht=(SELECT SpeiseID From Speise
Where Speise.Name='Quinoa Salmon Salad');