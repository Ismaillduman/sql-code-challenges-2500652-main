-- Registrieren Sie einen Kunden 'atapley2j@kinetecoinc.com' 
-- für unsere Jubilaeumsfeier.
-- Der Kunde wird mit drei Freunden an der Feier teilnehmen.

INSERT INTO Jubilaeum (ID, AnzahlderKunden) 
VALUES ((SELECT KundenID FROM Kunden WHERE Email='atapley2j@kinetecoinc.com'),
4);

SELECT * FROM Jubilaeum;